;Imports of cl_console:
	extern CL_GetScreenDimensions
	extern playerKeys
	extern Field_Clear
	extern clientUIActives
	extern cls
	extern R_AddCmdDrawStretchPic
	extern Q_stricmp
	extern Q_strncpyz
	extern Cvar_RegisterVec4
	extern sprintf
	extern Cvar_RegisterFloat
	extern Cvar_RegisterInt
	extern Cvar_RegisterVec3
	extern colorWhite
	extern Con_IsChannelVisible
	extern clients
	extern floorf
	extern R_AddCmdDrawText
	extern Cvar_GetVariantString
	extern R_NormalizedTextScale
	extern ScrPlace_ApplyRect
	extern SEH_DecodeLetter
	extern cgMedia
	extern R_AddCmdDrawConsoleTextPulseFX
	extern UI_GetFontHandle
	extern R_AddCmdDrawConsoleText
	extern R_AddCmdDrawConsoleTextSubtitle
	extern R_TextHeight
	extern R_ConsoleTextWidth
	extern SND_PlayLocalSoundAliasByName
	extern scrPlaceView
	extern memcpy
	extern com_developer
	extern R_TextLineWrapPosition
	extern SEH_ReadCharFromString
	extern cmd_args
	extern Q_stricmpn
	extern Com_StripExtension
	extern R_TextWidth
	extern qsort
	extern g_consoleField
	extern __maskrune
	extern Cvar_FindVar
	extern Cvar_HasLatchedValue
	extern Cvar_DisplayableValue
	extern Cvar_DisplayableResetValue
	extern Cvar_DomainToString_GetLines
	extern Cvar_DisplayableLatchedValue
	extern Cmd_GetAutoCompleteFileList
	extern FS_FreeFileList
	extern Key_IsCatcherActive
	extern SEH_SafeTranslateString
	extern va
	extern CL_DrawText
	extern Field_Draw
	extern com_dedicated
	extern cl_noprint
	extern Sys_EnterCriticalSection
	extern Sys_LeaveCriticalSection
	extern Com_Printf
	extern CL_ShouldDisplayHud
	extern scrPlaceFull
	extern ScrPlace_ApplyX
	extern ScrPlace_ApplyY
	extern Sys_IsMainThread
	extern Cmd_TokenizeString
	extern Cmd_EndTokenizedString
	extern Cvar_ForEachName
	extern I_stristr
	extern strncpy
	extern strcpy
	extern SEH_PrintStrlen
	extern Field_DrawTextOverride
	extern getBuildNumber
	extern SCR_DrawSmallStringExt
	extern ceilf
	extern CL_LookupColor
	extern Cmd_ForEach
	extern tolower
	extern ColorIndex
	extern Com_sprintf
	extern cg_paused
	extern Cvar_RegisterBool
	extern historyEditLines
	extern Cmd_AddCommand

;Exports of cl_console:
	global con
	global con_outputWindowColor
	global con_versionColor
	global con_outputSliderColor
	global con_outputBarColor
	global con_inputDvarMatchColor
	global con_inputHintBoxColor
	global con_inputBoxColor
	global conDrawInputGlob
	global con_inputCommandMatchColor
	global con_inputDvarValueColor
	global con_inputDvarInfoColor
	global con_inputDvarDescriptionColor
	global con_inputDvarInactiveValueColor
	global con_miniconlines
	global con_minicontime
	global con_errormessagetime
	global con_gameMsgWindowNSplitscreenScale
	global con_gameMsgWindowNSplitscreenScale_BaseDesc
	global con_gameMsgWindowNSplitscreenScale_BaseName
	global con_gameMsgWindowNFadeOutTime
	global con_gameMsgWindowNFadeOutTime_BaseDesc
	global con_gameMsgWindowNFadeOutTime_BaseName
	global con_gameMsgWindowNFadeInTime
	global con_gameMsgWindowNFadeInTime_BaseDesc
	global con_gameMsgWindowNFadeInTime_BaseName
	global con_gameMsgWindowNScrollTime
	global con_gameMsgWindowNScrollTime_BaseDesc
	global con_gameMsgWindowNScrollTime_BaseName
	global con_gameMsgWindowNLineCount
	global defaultGameMessageWindowLineCounts
	global con_gameMsgWindowNLineCount_BaseDesc
	global con_gameMsgWindowNLineCount_BaseName
	global con_gameMsgWindowNMsgTime
	global defaultGameMessageTimes
	global con_gameMsgWindowNMsgTime_BaseDesc
	global con_gameMsgWindowNMsgTime_BaseName
	global pb_screen_buf
	global _ZZ8Con_InitvE15Con_Clear_f_VAR
	global _ZZ8Con_InitvE22Con_ChatModeTeam_f_VAR
	global _ZZ8Con_InitvE24Con_ChatModePublic_f_VAR
	global Con_ChatModePublic_f
	global Con_ChatModeTeam_f
	global Con_Clear_f
	global ConDraw_Box
	global ConDrawInput_CompareStrings
	global ConDrawInput_IncrMatchCounter
	global Con_OneTimeInit
	global Con_UpdateNotifyMessageWindow
	global ConDrawInput_DvarMatch
	global _ZZ24Con_DrawMessageLineOnHUDiPK15ScreenPlacementiiiiiP6Font_sPK13MessageWindowiPfifiE12MY_GLOWCOLOR
	global Con_DrawMessageLineOnHUD
	global Con_DrawMessageWindowNewToOld
	global Con_DrawMessageWindowOldToNew
	global Con_UpdateMessageWindowLine
	global Con_UpdateNotifyLine
	global _ZZ23CL_ConsolePrint_AddLineiiPKciiciE9callDepth
	global CL_ConsolePrint_AddLine
	global ConDrawInput_AutoCompleteArg
	global ConDrawInput_DetailedDvarMatch
	global ConDrawInput_DetailedCmdMatch
	global ConDrawInput_CmdMatch
	global Con_Bottom
	global Con_PageUp
	global Con_DrawSay
	global Con_IsActive
	global Con_PageDown
	global Con_Shutdown
	global PbMsgToScreen
	global Con_DrawErrors
	global Con_TimeJumped
	global Con_TimeNudged
	global CL_ConsolePrint
	global Con_CheckResize
	global Con_ClearNotify
	global Con_DrawConsole
	global Con_IsDvarCommand
	global Con_ToggleConsole
	global Con_TokenizeInput
	global Con_DrawMiniConsole
	global CL_DeathMessagePrint
	global Con_InitClientAssets
	global CL_ConsoleFixPosition
	global Con_CycleAutoComplete
	global Con_InitMessageBuffer
	global Con_CancelAutoComplete
	global Con_IsAutoCompleteMatch
	global Con_ToggleConsoleOutput
	global CL_PlayTextFXPulseSounds
	global Con_AnySpaceAfterCommand
	global Con_AutoCompleteFromList
	global Con_CommitToAutoComplete
	global Con_ShutdownClientAssets
	global Con_DrawGameMessageWindow
	global Con_HasTooManyMatchesToShow
	global Con_AllowAutoCompleteCycling
	global Con_IsValidGameMessageWindow
	global Con_IsGameMessageWindowActive
	global Con_Top
	global Con_Init
	global Con_Close
	global con_gameMsgWindowNFadeInTime_Descs
	global con_gameMsgWindowNFadeInTime_Names
	global con_gameMsgWindowNFadeOutTime_Descs
	global con_gameMsgWindowNFadeOutTime_Names
	global con_gameMsgWindowNLineCount_Descs
	global con_gameMsgWindowNLineCount_Names
	global con_gameMsgWindowNMsgTime_Descs
	global con_gameMsgWindowNMsgTime_Names
	global con_gameMsgWindowNScrollTime_Descs
	global con_gameMsgWindowNScrollTime_Names
	global con_gameMsgWindowNSplitscreenScale_Descs
	global con_gameMsgWindowNSplitscreenScale_Names
	global con_ignoreMatchPrefixOnly
	global con_inputMaxMatchesShown
	global con_matchPrefixOnly
	global con_restricted
	global con_typewriterColorBase
	global con_typewriterColorGlowCheckpoint
	global con_typewriterColorGlowCompleted
	global con_typewriterColorGlowFailed
	global con_typewriterColorGlowUpdated
	global con_typewriterDecayDuration
	global con_typewriterDecayStartTime
	global con_typewriterPrintSpeed
	global g_console_char_height
	global g_console_field_width


SECTION .text


;Con_ChatModePublic_f()
Con_ChatModePublic_f:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	lea eax, [ebp-0x14]
	mov [esp+0x8], eax
	lea eax, [ebp-0x10]
	mov [esp+0x4], eax
	lea eax, [ebp-0xc]
	mov [esp], eax
	call CL_GetScreenDimensions
	mov ebx, playerKeys
	mov dword [ebx+0x118], 0x0
	mov [esp], ebx
	call Field_Clear
	mov dword [ebx+0xc], 0x24c
	mov dword [ebx+0x14], 0x0
	cmp dword [ebp-0x10], 0x300
	jle Con_ChatModePublic_f_10
	mov dword [ebx+0x10], 0x41200000
	mov eax, clientUIActives
	xor dword [eax+0x4], 0x20
	add esp, 0x24
	pop ebx
	pop ebp
	ret
Con_ChatModePublic_f_10:
	mov dword [ebx+0x10], 0x41800000
	mov eax, clientUIActives
	xor dword [eax+0x4], 0x20
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	nop


;Con_ChatModeTeam_f()
Con_ChatModeTeam_f:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	lea eax, [ebp-0x14]
	mov [esp+0x8], eax
	lea eax, [ebp-0x10]
	mov [esp+0x4], eax
	lea eax, [ebp-0xc]
	mov [esp], eax
	call CL_GetScreenDimensions
	mov ebx, playerKeys
	mov dword [ebx+0x118], 0x1
	mov [esp], ebx
	call Field_Clear
	mov dword [ebx+0xc], 0x21f
	mov dword [ebx+0x14], 0x0
	cmp dword [ebp-0x10], 0x300
	jle Con_ChatModeTeam_f_10
	mov dword [ebx+0x10], 0x41200000
	mov eax, clientUIActives
	xor dword [eax+0x4], 0x20
	add esp, 0x24
	pop ebx
	pop ebp
	ret
Con_ChatModeTeam_f_10:
	mov dword [ebx+0x10], 0x41800000
	mov eax, clientUIActives
	xor dword [eax+0x4], 0x20
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	nop


;Con_Clear_f()
Con_Clear_f:
	push ebp
	mov ebp, esp
	mov dword [con+0x28], 0x0
	mov dword [con+0x34], 0x0
	mov dword [con+0x2c], 0x0
	mov dword [con+0x30], 0x0
	mov dword [con+0x10238], 0x0
	mov dword [con+0x1023c], 0x0
	pop ebp
	ret
	nop


;ConDraw_Box(float, float, float, float, float const*)
ConDraw_Box:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	movss [ebp-0x2c], xmm0
	movss [ebp-0x30], xmm1
	movss [ebp-0x34], xmm2
	movss [ebp-0x38], xmm3
	mov esi, eax
	mov edi, cls
	mov eax, [edi+0x2dbff0]
	mov [esp+0x24], eax
	mov [esp+0x20], esi
	xor ebx, ebx
	mov [esp+0x1c], ebx
	mov [esp+0x18], ebx
	mov [esp+0x14], ebx
	mov [esp+0x10], ebx
	movss [esp+0xc], xmm3
	movss [esp+0x8], xmm2
	movss [esp+0x4], xmm1
	movss xmm0, dword [ebp-0x2c]
	movss [esp], xmm0
	call R_AddCmdDrawStretchPic
	movss xmm0, dword [_float_0_50000000]
	movss xmm1, dword [esi]
	mulss xmm1, xmm0
	movss [ebp-0x28], xmm1
	movss xmm1, dword [esi+0x4]
	mulss xmm1, xmm0
	movss [ebp-0x24], xmm1
	mulss xmm0, [esi+0x8]
	movss [ebp-0x20], xmm0
	mov eax, [esi+0xc]
	mov [ebp-0x1c], eax
	mov eax, [edi+0x2dbff0]
	mov [esp+0x24], eax
	lea esi, [ebp-0x28]
	mov [esp+0x20], esi
	mov [esp+0x1c], ebx
	mov [esp+0x18], ebx
	mov [esp+0x14], ebx
	mov [esp+0x10], ebx
	movss xmm0, dword [ebp-0x38]
	movss [esp+0xc], xmm0
	mov dword [esp+0x8], 0x40000000
	movss xmm0, dword [ebp-0x30]
	movss [esp+0x4], xmm0
	movss xmm0, dword [ebp-0x2c]
	movss [esp], xmm0
	call R_AddCmdDrawStretchPic
	mov eax, [edi+0x2dbff0]
	mov [esp+0x24], eax
	mov [esp+0x20], esi
	mov [esp+0x1c], ebx
	mov [esp+0x18], ebx
	mov [esp+0x14], ebx
	mov [esp+0x10], ebx
	movss xmm0, dword [ebp-0x38]
	movss [esp+0xc], xmm0
	mov dword [esp+0x8], 0x40000000
	movss xmm0, dword [ebp-0x30]
	movss [esp+0x4], xmm0
	movss xmm0, dword [ebp-0x2c]
	addss xmm0, [ebp-0x34]
	subss xmm0, [_float_2_00000000]
	movss [esp], xmm0
	call R_AddCmdDrawStretchPic
	mov eax, [edi+0x2dbff0]
	mov [esp+0x24], eax
	mov [esp+0x20], esi
	mov [esp+0x1c], ebx
	mov [esp+0x18], ebx
	mov [esp+0x14], ebx
	mov [esp+0x10], ebx
	mov dword [esp+0xc], 0x40000000
	movss xmm0, dword [ebp-0x34]
	movss [esp+0x8], xmm0
	movss xmm0, dword [ebp-0x30]
	movss [esp+0x4], xmm0
	movss xmm0, dword [ebp-0x2c]
	movss [esp], xmm0
	call R_AddCmdDrawStretchPic
	mov eax, [edi+0x2dbff0]
	mov [esp+0x24], eax
	mov [esp+0x20], esi
	mov [esp+0x1c], ebx
	mov [esp+0x18], ebx
	mov [esp+0x14], ebx
	mov [esp+0x10], ebx
	mov dword [esp+0xc], 0x40000000
	movss xmm0, dword [ebp-0x34]
	movss [esp+0x8], xmm0
	movss xmm0, dword [ebp-0x30]
	addss xmm0, [ebp-0x38]
	movss [ebp-0x30], xmm0
	subss xmm0, [_float_2_00000000]
	movss [esp+0x4], xmm0
	movss xmm0, dword [ebp-0x2c]
	movss [esp], xmm0
	call R_AddCmdDrawStretchPic
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;ConDrawInput_CompareStrings(void const*, void const*)
ConDrawInput_CompareStrings:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0xc]
	mov eax, [eax]
	mov [ebp+0xc], eax
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov [ebp+0x8], eax
	pop ebp
	jmp Q_stricmp
	nop


;ConDrawInput_IncrMatchCounter(char const*)
ConDrawInput_IncrMatchCounter:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, [conDrawInputGlob+0x4c]
	mov [esp+0x8], eax
	mov eax, [conDrawInputGlob+0x48]
	mov [esp+0x4], eax
	mov [esp], ebx
	call Con_IsAutoCompleteMatch
	test al, al
	jz ConDrawInput_IncrMatchCounter_10
	mov eax, [conDrawInputGlob+0x44]
	cmp eax, [conDrawInputGlob+0x40]
	jz ConDrawInput_IncrMatchCounter_20
ConDrawInput_IncrMatchCounter_30:
	add eax, 0x1
	mov [conDrawInputGlob+0x44], eax
	mov edx, 0x1
	mov eax, [conDrawInputGlob+0x4c]
	cmp byte [ebx+eax], 0x0
	movzx eax, byte [conDrawInputGlob+0x50]
	cmovnz edx, eax
	mov [conDrawInputGlob+0x50], dl
ConDrawInput_IncrMatchCounter_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
ConDrawInput_IncrMatchCounter_20:
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], ebx
	mov dword [esp], conDrawInputGlob
	call Q_strncpyz
	mov eax, [conDrawInputGlob+0x44]
	jmp ConDrawInput_IncrMatchCounter_30


;Con_OneTimeInit()
Con_OneTimeInit:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov dword [esp+0x20], _cstring_color_of_the_con
	mov dword [esp+0x1c], 0x1
	mov ebx, 0x3f800000
	mov [esp+0x18], ebx
	xor edi, edi
	mov [esp+0x14], edi
	mov [esp+0x10], ebx
	mov dword [esp+0xc], 0x3e4ccccd
	mov dword [esp+0x8], 0x3e800000
	mov dword [esp+0x4], 0x3e800000
	mov dword [esp], _cstring_con_inputboxcolo
	call Cvar_RegisterVec4
	mov [con_inputBoxColor], eax
	mov dword [esp+0x20], _cstring_color_of_the_con1
	mov dword [esp+0x1c], 0x1
	mov [esp+0x18], ebx
	mov [esp+0x14], edi
	mov [esp+0x10], ebx
	mov dword [esp+0xc], 0x3eb33333
	mov eax, 0x3ecccccd
	mov [esp+0x8], eax
	mov [esp+0x4], eax
	mov dword [esp], _cstring_con_inputhintbox
	call Cvar_RegisterVec4
	mov [con_inputHintBoxColor], eax
	mov dword [esp+0x20], _cstring_color_of_the_con2
	mov dword [esp+0x1c], 0x1
	mov [esp+0x18], ebx
	mov [esp+0x14], edi
	mov esi, 0x3f19999a
	mov [esp+0x10], esi
	mov dword [esp+0xc], 0x3f733333
	mov [esp+0x8], ebx
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_con_outputbarcol
	call Cvar_RegisterVec4
	mov [con_outputBarColor], eax
	mov dword [esp+0x20], _cstring_color_of_the_con3
	mov dword [esp+0x1c], 0x1
	mov [esp+0x18], ebx
	mov [esp+0x14], edi
	mov [esp+0x10], esi
	mov dword [esp+0xc], 0x3dcccccd
	mov eax, 0x3e19999a
	mov [esp+0x8], eax
	mov [esp+0x4], eax
	mov dword [esp], _cstring_con_outputslider
	call Cvar_RegisterVec4
	mov [con_outputSliderColor], eax
	mov dword [esp+0x20], _cstring_color_of_the_con4
	mov dword [esp+0x1c], 0x1
	mov [esp+0x18], ebx
	mov [esp+0x14], edi
	mov dword [esp+0x10], 0x3f400000
	mov dword [esp+0xc], 0x3e99999a
	mov dword [esp+0x8], 0x3eb33333
	mov dword [esp+0x4], 0x3eb33333
	mov dword [esp], _cstring_con_outputwindow
	call Cvar_RegisterVec4
	mov [con_outputWindowColor], eax
	xor esi, esi
	xor edi, edi
	mov dword [ebp-0x1c], con_gameMsgWindowNSplitscreenScale_Descs
	mov dword [ebp-0x20], con_gameMsgWindowNSplitscreenScale_Names
	mov dword [ebp-0x24], con_gameMsgWindowNFadeOutTime_Descs
	mov dword [ebp-0x28], con_gameMsgWindowNFadeOutTime_Names
	mov dword [ebp-0x2c], con_gameMsgWindowNFadeInTime_Descs
	mov dword [ebp-0x30], con_gameMsgWindowNScrollTime_Descs
	mov dword [ebp-0x34], 0x0
	mov dword [ebp-0x38], con_gameMsgWindowNLineCount_Descs
	mov dword [ebp-0x3c], con_gameMsgWindowNLineCount_Names
	mov dword [ebp-0x40], con_gameMsgWindowNMsgTime_Descs
	mov dword [ebp-0x44], con_gameMsgWindowNMsgTime_Names
Con_OneTimeInit_30:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_con_gamemsgwindo
	mov eax, [ebp-0x44]
	mov [esp], eax
	call sprintf
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_on_screen_time_f
	mov edx, [ebp-0x40]
	mov [esp], edx
	call sprintf
	mov eax, [ebp-0x40]
	mov [esp+0x14], eax
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x7f7fffff
	mov dword [esp+0x8], 0x0
	mov eax, [edi+defaultGameMessageTimes]
	mov [esp+0x4], eax
	mov edx, [ebp-0x44]
	mov [esp], edx
	call Cvar_RegisterFloat
	mov [edi+con_gameMsgWindowNMsgTime], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_con_gamemsgwindo1
	mov eax, [ebp-0x3c]
	mov [esp], eax
	call sprintf
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_maximum_number_o
	mov edx, [ebp-0x38]
	mov [esp], edx
	call sprintf
	mov eax, [ebp-0x38]
	mov [esp+0x14], eax
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x9
	mov dword [esp+0x8], 0x1
	mov eax, [edi+defaultGameMessageWindowLineCounts]
	mov [esp+0x4], eax
	mov edx, [ebp-0x3c]
	mov [esp], edx
	call Cvar_RegisterInt
	mov [edi+con_gameMsgWindowNLineCount], eax
	mov ebx, [ebp-0x34]
	add ebx, con_gameMsgWindowNScrollTime_Names
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_con_gamemsgwindo2
	mov [esp], ebx
	call sprintf
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_time_to_scroll_m
	mov eax, [ebp-0x30]
	mov [esp], eax
	call sprintf
	mov edx, [ebp-0x30]
	mov [esp+0x14], edx
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x7f7fffff
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x3e800000
	mov [esp], ebx
	call Cvar_RegisterFloat
	mov [edi+con_gameMsgWindowNScrollTime], eax
	mov ebx, [ebp-0x34]
	add ebx, con_gameMsgWindowNFadeInTime_Names
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_con_gamemsgwindo3
	mov [esp], ebx
	call sprintf
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_time_to_fade_in_
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call sprintf
	cmp esi, 0x2
	jz Con_OneTimeInit_10
	mov eax, 0x3e800000
Con_OneTimeInit_50:
	mov edx, [ebp-0x2c]
	mov [esp+0x14], edx
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x7f7fffff
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], eax
	mov [esp], ebx
	call Cvar_RegisterFloat
	mov [edi+con_gameMsgWindowNFadeInTime], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_con_gamemsgwindo4
	mov eax, [ebp-0x28]
	mov [esp], eax
	call sprintf
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_time_to_fade_out
	mov edx, [ebp-0x24]
	mov [esp], edx
	call sprintf
	cmp esi, 0x1
	jz Con_OneTimeInit_20
	mov eax, 0x3f000000
Con_OneTimeInit_40:
	mov edx, [ebp-0x24]
	mov [esp+0x14], edx
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x7f7fffff
	mov dword [esp+0x8], 0x3c23d70a
	mov [esp+0x4], eax
	mov eax, [ebp-0x28]
	mov [esp], eax
	call Cvar_RegisterFloat
	mov [edi+con_gameMsgWindowNFadeOutTime], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_con_gamemsgwindo5
	mov edx, [ebp-0x20]
	mov [esp], edx
	call sprintf
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_scaling_of_game_
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call sprintf
	mov edx, [ebp-0x1c]
	mov [esp+0x14], edx
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x7f7fffff
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x3fc00000
	mov eax, [ebp-0x20]
	mov [esp], eax
	call Cvar_RegisterFloat
	mov [edi+con_gameMsgWindowNSplitscreenScale], eax
	add esi, 0x1
	add dword [ebp-0x44], 0x1a
	add dword [ebp-0x40], 0x45
	add dword [ebp-0x3c], 0x1c
	add dword [ebp-0x38], 0x49
	add dword [ebp-0x34], 0x1d
	add dword [ebp-0x30], 0x54
	add dword [ebp-0x2c], 0x36
	add dword [ebp-0x28], 0x1e
	add dword [ebp-0x24], 0x37
	add dword [ebp-0x20], 0x23
	add dword [ebp-0x1c], 0x30
	add edi, 0x4
	cmp esi, 0x4
	jnz Con_OneTimeInit_30
	mov dword [esp+0x14], _cstring_onscreen_time_fo
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x7f7fffff
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x41000000
	mov dword [esp], _cstring_con_errormessage
	call Cvar_RegisterFloat
	mov [con_errormessagetime], eax
	mov dword [esp+0x14], _cstring_onscreen_time_fo1
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x7f7fffff
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x40800000
	mov dword [esp], _cstring_con_minicontime
	call Cvar_RegisterFloat
	mov [con_minicontime], eax
	mov dword [esp+0x14], _cstring_number_of_lines_
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x64
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x5
	mov dword [esp], _cstring_con_miniconlines
	call Cvar_RegisterInt
	mov [con_miniconlines], eax
	mov dword [esp+0x14], _cstring_time_in_millisec
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x7fffffff
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x32
	mov dword [esp], _cstring_con_typewriterpr
	call Cvar_RegisterInt
	mov [con_typewriterPrintSpeed], eax
	mov dword [esp+0x14], _cstring_time_in_millisec1
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x7fffffff
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1770
	mov dword [esp], _cstring_con_typewriterde
	call Cvar_RegisterInt
	mov [con_typewriterDecayStartTime], eax
	mov dword [esp+0x14], _cstring_time_in_millisec2
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x7fffffff
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x2bc
	mov dword [esp], _cstring_con_typewriterde1
	call Cvar_RegisterInt
	mov [con_typewriterDecayDuration], eax
	mov dword [esp+0x1c], _cstring_base_color_of_ty
	mov dword [esp+0x18], 0x1000
	mov ebx, 0x3f800000
	mov [esp+0x14], ebx
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], ebx
	mov [esp+0x8], ebx
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_con_typewriterco
	call Cvar_RegisterVec3
	mov [con_typewriterColorBase], eax
	mov dword [esp+0x20], _cstring_color_of_typewri
	mov dword [esp+0x1c], 0x1
	mov [esp+0x18], ebx
	mov dword [esp+0x14], 0x0
	mov [esp+0x10], ebx
	mov dword [esp+0xc], 0x3e3851ec
	mov esi, 0x3f19999a
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_con_typewriterco1
	call Cvar_RegisterVec4
	mov [con_typewriterColorGlowUpdated], eax
	mov dword [esp+0x20], _cstring_color_of_typewri
	mov dword [esp+0x1c], 0x1
	mov [esp+0x18], ebx
	mov dword [esp+0x14], 0x0
	mov [esp+0x10], ebx
	mov edi, 0x3f4ccccd
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x3e99999a
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_con_typewriterco2
	call Cvar_RegisterVec4
	mov [con_typewriterColorGlowCompleted], eax
	mov dword [esp+0x20], _cstring_color_of_typewri
	mov dword [esp+0x1c], 0x1
	mov [esp+0x18], ebx
	mov dword [esp+0x14], 0x0
	mov [esp+0x10], ebx
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], edi
	mov dword [esp], _cstring_con_typewriterco3
	call Cvar_RegisterVec4
	mov [con_typewriterColorGlowFailed], eax
	mov dword [esp+0x20], _cstring_color_of_typewri
	mov dword [esp+0x1c], 0x1
	mov [esp+0x18], ebx
	mov dword [esp+0x14], 0x0
	mov [esp+0x10], ebx
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0x3f000000
	mov [esp+0x4], esi
	mov dword [esp], _cstring_con_typewriterco4
	call Cvar_RegisterVec4
	mov [con_typewriterColorGlowCheckpoint], eax
	mov dword [con+0x4], con+0x38
	mov dword [con+0x8], con+0x6038
	mov dword [con+0xc], con+0x8038
	mov dword [con+0x28], 0x0
	mov dword [con+0x10], 0x8000
	mov dword [con+0x2c], 0x0
	mov dword [con+0x30], 0x0
	mov dword [con+0x34], 0x0
	mov dword [con+0x14], 0x400
	mov dword [con+0x18], 0x0
	mov dword [con+0x1c], 0x0
	mov dword [con+0x20], 0x1
	mov dword [con+0x24], 0x1
	call Con_InitMessageBuffer
	mov edx, colorWhite
	mov eax, [edx]
	mov [con+0x14abc], eax
	mov eax, [edx+0x4]
	mov [con+0x14ac0], eax
	mov eax, [edx+0x8]
	mov [con+0x14ac4], eax
	mov eax, [edx+0xc]
	mov [con+0x14ac8], eax
	call Con_CheckResize
	mov dword [con], 0x1
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Con_OneTimeInit_20:
	mov eax, 0x3c23d70a
	jmp Con_OneTimeInit_40
Con_OneTimeInit_10:
	mov eax, 0x3f400000
	jmp Con_OneTimeInit_50
	nop


;Con_UpdateNotifyMessageWindow(int, int, int, int, print_msg_dest_t)
Con_UpdateNotifyMessageWindow:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, eax
	mov ebx, ecx
	mov edi, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], edi
	call Con_IsChannelVisible
	test al, al
	jz Con_UpdateNotifyMessageWindow_10
	test ebx, ebx
	jz Con_UpdateNotifyMessageWindow_20
Con_UpdateNotifyMessageWindow_140:
	test ebx, ebx
	js Con_UpdateNotifyMessageWindow_30
Con_UpdateNotifyMessageWindow_100:
	cmp edi, 0x1
	jz Con_UpdateNotifyMessageWindow_40
Con_UpdateNotifyMessageWindow_110:
	cmp edi, 0x2
	jz Con_UpdateNotifyMessageWindow_50
	test edi, edi
	jz Con_UpdateNotifyMessageWindow_60
	lea edx, [edi+edi*2]
	lea edx, [edi+edx*4]
	lea eax, [esi+esi*8]
	shl eax, 0x5
	add eax, esi
	lea eax, [esi+eax*4]
	lea eax, [esi+eax*2]
	shl eax, 0x3
	lea ecx, [eax+edx*4+con+0x121c8]
	mov eax, [ecx+0x30]
	add eax, 0x1
	cdq
	idiv dword [ecx+0x10]
	mov [ecx+0x30], edx
	mov eax, [ecx+0x4]
	lea edx, [eax+edx*8]
	test esi, esi
	jg Con_UpdateNotifyMessageWindow_70
Con_UpdateNotifyMessageWindow_120:
	mov eax, clients
	mov eax, [eax+0x2fa0]
	mov [edx], eax
	add ebx, [edx]
	mov [edx+0x4], ebx
Con_UpdateNotifyMessageWindow_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Con_UpdateNotifyMessageWindow_20:
	cmp edi, 0x1
	jz Con_UpdateNotifyMessageWindow_80
	cmp edi, 0x2
	jz Con_UpdateNotifyMessageWindow_90
	mov eax, [edi*4+con_gameMsgWindowNLineCount+0x4]
	movss xmm0, dword [_float_1000_00000000]
	mulss xmm0, [eax+0xc]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x24]
	cvttss2si ebx, [ebp-0x24]
	test ebx, ebx
	jns Con_UpdateNotifyMessageWindow_100
Con_UpdateNotifyMessageWindow_30:
	xor ebx, ebx
	cmp edi, 0x1
	jnz Con_UpdateNotifyMessageWindow_110
Con_UpdateNotifyMessageWindow_40:
	lea eax, [esi+esi*8]
	shl eax, 0x5
	add eax, esi
	lea eax, [esi+eax*4]
	lea eax, [esi+eax*2]
	lea ecx, [eax*8+con+0x13934]
Con_UpdateNotifyMessageWindow_130:
	mov eax, [ecx+0x30]
	add eax, 0x1
	cdq
	idiv dword [ecx+0x10]
	mov [ecx+0x30], edx
	mov eax, [ecx+0x4]
	lea edx, [eax+edx*8]
	test esi, esi
	jle Con_UpdateNotifyMessageWindow_120
Con_UpdateNotifyMessageWindow_70:
	mov dword [edx], 0x0
	add ebx, [edx]
	mov [edx+0x4], ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Con_UpdateNotifyMessageWindow_60:
	mov ecx, con+0x4
	jmp Con_UpdateNotifyMessageWindow_130
Con_UpdateNotifyMessageWindow_90:
	movss xmm0, dword [_float_1000_00000000]
	mov eax, [con_errormessagetime]
	mulss xmm0, [eax+0xc]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x20]
	cvttss2si ebx, [ebp-0x20]
	jmp Con_UpdateNotifyMessageWindow_140
Con_UpdateNotifyMessageWindow_50:
	lea eax, [esi+esi*8]
	shl eax, 0x5
	add eax, esi
	lea eax, [esi+eax*4]
	lea eax, [esi+eax*2]
	lea ecx, [eax*8+con+0x149e8]
	jmp Con_UpdateNotifyMessageWindow_130
Con_UpdateNotifyMessageWindow_80:
	movss xmm0, dword [_float_1000_00000000]
	mov eax, [con_minicontime]
	mulss xmm0, [eax+0xc]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x1c]
	cvttss2si ebx, [ebp-0x1c]
	jmp Con_UpdateNotifyMessageWindow_140


;ConDrawInput_DvarMatch(char const*)
ConDrawInput_DvarMatch:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edi, [ebp+0x8]
	mov eax, [conDrawInputGlob+0x4c]
	mov [esp+0x8], eax
	mov eax, [conDrawInputGlob+0x48]
	mov [esp+0x4], eax
	mov [esp], edi
	call Con_IsAutoCompleteMatch
	test al, al
	jz ConDrawInput_DvarMatch_10
	mov dword [esp+0x24], 0x0
	mov dword [esp+0x20], con_inputDvarMatchColor
	mov dword [esp+0x1c], 0x0
	mov ebx, 0x3f800000
	mov [esp+0x18], ebx
	mov [esp+0x14], ebx
	movss xmm0, dword [conDrawInputGlob+0x58]
	addss xmm0, [conDrawInputGlob+0x60]
	movss [esp+0x10], xmm0
	mov eax, [conDrawInputGlob+0x54]
	mov [esp+0xc], eax
	mov esi, cls
	mov eax, [esi+0x2dbff8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x18
	mov [esp], edi
	call R_AddCmdDrawText
	movss xmm0, dword [_float_300_00000000]
	addss xmm0, [conDrawInputGlob+0x54]
	movss [conDrawInputGlob+0x54], xmm0
	mov [esp], edi
	call Cvar_GetVariantString
	mov dword [esp+0x24], 0x0
	mov dword [esp+0x20], con_inputDvarValueColor
	mov dword [esp+0x1c], 0x0
	mov [esp+0x18], ebx
	mov [esp+0x14], ebx
	movss xmm0, dword [conDrawInputGlob+0x58]
	addss xmm0, [conDrawInputGlob+0x60]
	movss [esp+0x10], xmm0
	mov edx, [conDrawInputGlob+0x54]
	mov [esp+0xc], edx
	mov edx, [esi+0x2dbff8]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x28
	mov [esp], eax
	call R_AddCmdDrawText
	movss xmm0, dword [conDrawInputGlob+0x58]
	addss xmm0, [conDrawInputGlob+0x60]
	movss [conDrawInputGlob+0x58], xmm0
	mov eax, [conDrawInputGlob+0x5c]
	mov [conDrawInputGlob+0x54], eax
ConDrawInput_DvarMatch_10:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Con_DrawMessageLineOnHUD(int, ScreenPlacement const*, int, int, int, int, int, Font_s*, MessageWindow const*, int, float*, int, float, int)
Con_DrawMessageLineOnHUD:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xac
	mov ebx, [ebp+0x10]
	mov esi, [ebp+0x14]
	mov edx, [ebp+0x2c]
	lea edx, [edx+edx*2]
	mov ecx, [ebp+0x28]
	mov eax, [ecx]
	lea edi, [eax+edx*8]
	mov eax, clients
	mov eax, [eax+0x2fa0]
	cmp eax, [edi+0xc]
	jl Con_DrawMessageLineOnHUD_10
	test byte [edi+0x14], 0x1
	jnz Con_DrawMessageLineOnHUD_20
	mov eax, [ebp+0x24]
Con_DrawMessageLineOnHUD_150:
	cvtsi2ss xmm0, dword [ebp+0x18]
	divss xmm0, dword [_float_48_00000000]
	mulss xmm0, [ebp+0x38]
	movss [esp+0x4], xmm0
	mov [esp], eax
	call R_NormalizedTextScale
	fst dword [ebp-0x1c]
	fstp dword [ebp-0x20]
	mov eax, [ebp+0x3c]
	and eax, 0x3
	cmp eax, 0x1
	jz Con_DrawMessageLineOnHUD_30
	cmp eax, 0x2
	jz Con_DrawMessageLineOnHUD_40
Con_DrawMessageLineOnHUD_200:
	mov eax, [ebp+0x3c]
	and eax, 0xc
	cmp eax, 0x4
	jz Con_DrawMessageLineOnHUD_50
	cmp eax, 0x8
	jz Con_DrawMessageLineOnHUD_60
Con_DrawMessageLineOnHUD_190:
	cvtsi2ss xmm0, ebx
	movss [ebp-0x24], xmm0
	cvtsi2ss xmm0, esi
	movss [ebp-0x28], xmm0
	mov edx, [ebp+0x20]
	mov [esp+0x18], edx
	mov ecx, [ebp+0x1c]
	mov [esp+0x14], ecx
	lea eax, [ebp-0x20]
	mov [esp+0x10], eax
	lea eax, [ebp-0x1c]
	mov [esp+0xc], eax
	lea eax, [ebp-0x28]
	mov [esp+0x8], eax
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call ScrPlace_ApplyRect
	mov eax, [edi+0x14]
	test al, 0x1
	jz Con_DrawMessageLineOnHUD_70
	mov edx, [con_typewriterColorBase]
	mov eax, [edx+0xc]
	mov [ebp-0x3c], eax
	mov eax, [edx+0x10]
	mov [ebp-0x38], eax
	mov eax, [edx+0x14]
	mov [ebp-0x34], eax
	mov dword [ebp-0x30], 0x3f800000
	mov eax, [edi+0x14]
	test al, 0x10
	jz Con_DrawMessageLineOnHUD_80
	mov edx, [con_typewriterColorGlowCheckpoint]
	add edx, 0xc
	mov [ebp-0x58], edx
Con_DrawMessageLineOnHUD_180:
	mov dword [ebp-0x50], 0x0
	xor esi, esi
Con_DrawMessageLineOnHUD_100:
	cmp esi, [edi+0x8]
	jge Con_DrawMessageLineOnHUD_90
Con_DrawMessageLineOnHUD_110:
	mov ecx, [ebp+0x28]
	mov ebx, [ecx+0x8]
	mov edx, esi
	add edx, [edi+0x4]
	mov ecx, [ecx+0xc]
	sub ecx, 0x1
	mov dword [esp+0xc], 0x0
	lea eax, [ebp-0x2c]
	mov [esp+0x8], eax
	lea eax, [edx+0x1]
	and eax, ecx
	movsx eax, byte [ebx+eax]
	mov [esp+0x4], eax
	and edx, ecx
	movsx eax, byte [ebx+edx]
	mov [esp], eax
	call SEH_DecodeLetter
	add esi, [ebp-0x2c]
	add dword [ebp-0x50], 0x1
	cmp eax, 0x5e
	jnz Con_DrawMessageLineOnHUD_100
	mov eax, esi
	add eax, [edi+0x4]
	mov ecx, [ebp+0x28]
	mov edx, [ecx+0xc]
	sub edx, 0x1
	and eax, edx
	mov edx, [ecx+0x8]
	movzx edx, byte [edx+eax]
	cmp dl, 0x5e
	jz Con_DrawMessageLineOnHUD_100
	cmp dl, 0x2f
	jle Con_DrawMessageLineOnHUD_100
	lea eax, [esi+0x1]
	cmp dl, 0x39
	cmovle esi, eax
	cmp esi, [edi+0x8]
	jl Con_DrawMessageLineOnHUD_110
Con_DrawMessageLineOnHUD_90:
	mov eax, [con_typewriterDecayStartTime]
	mov [ebp-0x5c], eax
	mov ebx, [eax+0xc]
	mov edx, [con_typewriterPrintSpeed]
	mov [ebp-0x60], edx
	mov ecx, [edx+0xc]
	mov [ebp-0x54], ecx
	mov edx, [edi+0xc]
	mov eax, clients
	mov eax, [eax+0x2fa0]
	mov [ebp-0x4c], eax
	mov esi, [edi+0x10]
	sub esi, edx
	imul ecx, [ebp-0x50]
	cmp ebx, ecx
	cmovl ebx, ecx
	sub eax, edx
	js Con_DrawMessageLineOnHUD_120
	cmp ebx, eax
	jge Con_DrawMessageLineOnHUD_130
	cmp ebx, esi
	jg Con_DrawMessageLineOnHUD_140
Con_DrawMessageLineOnHUD_120:
	mov ecx, [ebp-0x5c]
Con_DrawMessageLineOnHUD_210:
	mov edx, cgMedia
	mov eax, [edx+0x27a4]
	mov [esp+0x44], eax
	mov eax, [edx+0x27a0]
	mov [esp+0x40], eax
	mov eax, [con_typewriterDecayDuration]
	mov eax, [eax+0xc]
	mov [esp+0x3c], eax
	mov eax, [ecx+0xc]
	mov [esp+0x38], eax
	mov edx, [ebp-0x60]
	mov eax, [edx+0xc]
	mov [esp+0x34], eax
	mov eax, [edi+0xc]
	mov [esp+0x30], eax
	mov ecx, [ebp-0x58]
	mov [esp+0x2c], ecx
	mov eax, [ebp+0x34]
	mov [esp+0x28], eax
	lea eax, [ebp-0x3c]
	mov [esp+0x24], eax
	mov eax, [ebp-0x20]
	mov [esp+0x20], eax
	mov eax, [ebp-0x1c]
	mov [esp+0x1c], eax
	mov eax, [ebp-0x28]
	mov [esp+0x18], eax
	mov eax, [ebp-0x24]
	mov [esp+0x14], eax
	mov edx, [ebp+0x24]
	mov [esp+0x10], edx
	mov eax, [edi+0x8]
	mov [esp+0xc], eax
	mov eax, [edi+0x4]
	mov [esp+0x8], eax
	mov ecx, [ebp+0x28]
	mov eax, [ecx+0xc]
	mov [esp+0x4], eax
	mov eax, [ecx+0x8]
	mov [esp], eax
	call R_AddCmdDrawConsoleTextPulseFX
Con_DrawMessageLineOnHUD_10:
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Con_DrawMessageLineOnHUD_20:
	mov dword [esp+0x8], 0x3f800000
	mov dword [esp+0x4], 0x6
	mov dword [esp], 0x0
	call UI_GetFontHandle
	mov [ebp+0x24], eax
	jmp Con_DrawMessageLineOnHUD_150
Con_DrawMessageLineOnHUD_70:
	test al, 0x20
	jnz Con_DrawMessageLineOnHUD_160
	mov ecx, [ebp+0x34]
	mov [esp+0x28], ecx
	mov eax, [ebp+0x30]
	mov [esp+0x24], eax
	mov eax, [ebp-0x20]
	mov [esp+0x20], eax
	mov eax, [ebp-0x1c]
	mov [esp+0x1c], eax
	mov eax, [ebp-0x28]
	mov [esp+0x18], eax
	mov eax, [ebp-0x24]
	mov [esp+0x14], eax
	mov edx, [ebp+0x24]
	mov [esp+0x10], edx
	mov eax, [edi+0x8]
	mov [esp+0xc], eax
	mov eax, [edi+0x4]
	mov [esp+0x8], eax
	mov ecx, [ebp+0x28]
	mov eax, [ecx+0xc]
	mov [esp+0x4], eax
	mov eax, [ecx+0x8]
	mov [esp], eax
	call R_AddCmdDrawConsoleText
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Con_DrawMessageLineOnHUD_160:
	mov dword [esp+0x2c], _ZZ24Con_DrawMessageLineOnHUDiPK15ScreenPlacementiiiiiP6Font_sPK13MessageWindowiPfifiE12MY_GLOWCOLOR
	mov eax, [ebp+0x34]
	mov [esp+0x28], eax
	mov edx, [ebp+0x30]
	mov [esp+0x24], edx
	mov eax, [ebp-0x20]
	mov [esp+0x20], eax
	mov eax, [ebp-0x1c]
	mov [esp+0x1c], eax
	mov eax, [ebp-0x28]
	mov [esp+0x18], eax
	mov eax, [ebp-0x24]
	mov [esp+0x14], eax
	mov ecx, [ebp+0x24]
	mov [esp+0x10], ecx
	mov eax, [edi+0x8]
	mov [esp+0xc], eax
	mov eax, [edi+0x4]
	mov [esp+0x8], eax
	mov edx, [ebp+0x28]
	mov eax, [edx+0xc]
	mov [esp+0x4], eax
	mov eax, [edx+0x8]
	mov [esp], eax
	call R_AddCmdDrawConsoleTextSubtitle
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Con_DrawMessageLineOnHUD_80:
	test al, 0x4
	jz Con_DrawMessageLineOnHUD_170
	mov ecx, [con_typewriterColorGlowCompleted]
	add ecx, 0xc
	mov [ebp-0x58], ecx
	jmp Con_DrawMessageLineOnHUD_180
Con_DrawMessageLineOnHUD_50:
	mov eax, [ebp+0x24]
	mov [esp], eax
	call R_TextHeight
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0x20]
	cvttss2si eax, xmm0
	add esi, eax
	jmp Con_DrawMessageLineOnHUD_190
Con_DrawMessageLineOnHUD_30:
	mov edx, [ebp+0x24]
	mov [esp+0x10], edx
	mov eax, [edi+0x8]
	mov [esp+0xc], eax
	mov eax, [edi+0x4]
	mov [esp+0x8], eax
	mov ecx, [ebp+0x28]
	mov eax, [ecx+0xc]
	mov [esp+0x4], eax
	mov eax, [ecx+0x8]
	mov [esp], eax
	call R_ConsoleTextWidth
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0x1c]
	mulss xmm0, [_float_0_50000000]
	cvttss2si eax, xmm0
	sub ebx, eax
	jmp Con_DrawMessageLineOnHUD_200
Con_DrawMessageLineOnHUD_60:
	mov ecx, [ebp+0x24]
	mov [esp], ecx
	call R_TextHeight
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0x20]
	mulss xmm0, [_float_0_50000000]
	cvttss2si eax, xmm0
	add esi, eax
	jmp Con_DrawMessageLineOnHUD_190
Con_DrawMessageLineOnHUD_40:
	mov eax, [ebp+0x24]
	mov [esp+0x10], eax
	mov eax, [edi+0x8]
	mov [esp+0xc], eax
	mov eax, [edi+0x4]
	mov [esp+0x8], eax
	mov edx, [ebp+0x28]
	mov eax, [edx+0xc]
	mov [esp+0x4], eax
	mov eax, [edx+0x8]
	mov [esp], eax
	call R_ConsoleTextWidth
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0x1c]
	cvttss2si eax, xmm0
	sub ebx, eax
	jmp Con_DrawMessageLineOnHUD_200
Con_DrawMessageLineOnHUD_130:
	cmp eax, ecx
	jge Con_DrawMessageLineOnHUD_120
	cdq
	idiv dword [ebp-0x54]
	imul eax, [ebp-0x54]
	cmp esi, eax
	jge Con_DrawMessageLineOnHUD_120
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_ui_pulse_text_ty
	mov edx, [ebp+0x8]
	mov [esp], edx
	call SND_PlayLocalSoundAliasByName
	mov ecx, [ebp-0x4c]
	mov [edi+0x10], ecx
	mov eax, [con_typewriterDecayStartTime]
	mov [ebp-0x5c], eax
	mov edx, [con_typewriterPrintSpeed]
	mov [ebp-0x60], edx
	mov ecx, eax
	jmp Con_DrawMessageLineOnHUD_210
Con_DrawMessageLineOnHUD_170:
	test al, 0x8
	jnz Con_DrawMessageLineOnHUD_220
	mov edx, [con_typewriterColorGlowUpdated]
	add edx, 0xc
	mov [ebp-0x58], edx
	jmp Con_DrawMessageLineOnHUD_180
Con_DrawMessageLineOnHUD_220:
	mov eax, [con_typewriterColorGlowFailed]
	add eax, 0xc
	mov [ebp-0x58], eax
	jmp Con_DrawMessageLineOnHUD_180
Con_DrawMessageLineOnHUD_140:
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_ui_pulse_text_de
	mov eax, [ebp+0x8]
	mov [esp], eax
	call SND_PlayLocalSoundAliasByName
	mov edx, [ebp-0x4c]
	mov [edi+0x10], edx
	mov ecx, [con_typewriterDecayStartTime]
	mov [ebp-0x5c], ecx
	mov eax, [con_typewriterPrintSpeed]
	mov [ebp-0x60], eax
	jmp Con_DrawMessageLineOnHUD_210
	nop


;Con_DrawMessageWindowNewToOld(int, MessageWindow*, int, int, int, int, int, unsigned char, Font_s*, float*, int, float, int)
Con_DrawMessageWindowNewToOld:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xac
	mov [ebp-0x50], eax
	mov ebx, edx
	mov [ebp-0x54], ecx
	movss [ebp-0x5c], xmm0
	movzx eax, byte [ebp+0x18]
	mov [ebp-0x55], al
	mov eax, clients
	mov eax, [eax+0x2fa0]
	mov [ebp-0x44], eax
	cmp edx, con+0x4
	jz Con_DrawMessageWindowNewToOld_10
Con_DrawMessageWindowNewToOld_180:
	mov esi, [ebx+0x2c]
	mov [ebp-0x40], esi
	test esi, esi
	jz Con_DrawMessageWindowNewToOld_20
Con_DrawMessageWindowNewToOld_40:
	mov ecx, [ebx+0x28]
	mov edx, [ebx]
	lea eax, [ecx+ecx*2]
	mov edx, [edx+eax*8]
	mov eax, [ebx+0x4]
	mov edi, [ebp-0x44]
	cmp edi, [eax+edx*8+0x4]
	js Con_DrawMessageWindowNewToOld_20
	lea eax, [esi-0x1]
	mov [ebx+0x2c], eax
	add ecx, 0x1
	mov [ebx+0x28], ecx
	cmp ecx, [ebx+0x10]
	jz Con_DrawMessageWindowNewToOld_30
	mov esi, eax
	mov [ebp-0x40], esi
	test esi, esi
	jnz Con_DrawMessageWindowNewToOld_40
Con_DrawMessageWindowNewToOld_20:
	mov eax, [ebp+0x8]
	sub eax, [ebp+0xc]
	cmp byte [ebp-0x55], 0x0
	cmovnz eax, [ebp+0x8]
	mov [ebp+0x8], eax
	mov ecx, [ebp-0x40]
	test ecx, ecx
	jle Con_DrawMessageWindowNewToOld_50
	mov edi, [ebx+0x28]
	mov [ebp-0x30], edi
	mov eax, [ebx+0x10]
	mov [ebp-0x34], eax
	mov edx, [ebx]
	mov [ebp-0x38], edx
	mov ecx, [ebx+0x4]
	mov [ebp-0x3c], ecx
	mov edi, [ebx+0x18]
	mov [ebp-0x4c], edi
	cvtsi2ss xmm0, edi
	movss [ebp-0x48], xmm0
	xor edi, edi
	cvtsi2ss xmm1, dword [ebp+0xc]
	movss [ebp-0x60], xmm1
	mov ecx, edx
	jmp Con_DrawMessageWindowNewToOld_60
Con_DrawMessageWindowNewToOld_80:
	mulss xmm3, [ebp-0x60]
	addss xmm3, [_float_0_50000000]
	movss [esp], xmm3
	call floorf
	fstp dword [ebp-0x68]
	cvttss2si eax, [ebp-0x68]
	sub [ebp+0x8], eax
Con_DrawMessageWindowNewToOld_70:
	add edi, 0x1
	cmp [ebp-0x40], edi
	jz Con_DrawMessageWindowNewToOld_50
Con_DrawMessageWindowNewToOld_90:
	mov ecx, [ebp-0x38]
Con_DrawMessageWindowNewToOld_60:
	mov eax, [ebp-0x30]
	add eax, edi
	cdq
	idiv dword [ebp-0x34]
	lea edx, [edx+edx*2]
	mov eax, [ecx+edx*8]
	mov ecx, [ebp-0x44]
	mov edx, [ebp-0x3c]
	sub ecx, [edx+eax*8]
	cmp ecx, [ebp-0x4c]
	jge Con_DrawMessageWindowNewToOld_70
	cvtsi2ss xmm0, ecx
	divss xmm0, dword [ebp-0x48]
	movss xmm1, dword [_float_1_00000000]
	subss xmm1, xmm0
	movaps xmm0, xmm1
	subss xmm0, [_float_1_00000000]
	pxor xmm2, xmm2
	cmpss xmm2, xmm0, 0x6
	movaps xmm0, xmm2
	movaps xmm2, xmm1
	andps xmm2, xmm0
	movaps xmm3, xmm0
	movss xmm4, dword [_float_1_00000000]
	andnps xmm3, xmm4
	orps xmm3, xmm2
	pxor xmm0, xmm0
	subss xmm0, xmm1
	pxor xmm1, xmm1
	cmpss xmm1, xmm0, 0x6
	andps xmm3, xmm1
	pxor xmm2, xmm2
	orps xmm3, xmm2
	cmp byte [ebp-0x55], 0x0
	jz Con_DrawMessageWindowNewToOld_80
	mulss xmm3, [ebp-0x60]
	addss xmm3, [_float_0_50000000]
	movss [esp], xmm3
	call floorf
	fstp dword [ebp-0x64]
	cvttss2si eax, [ebp-0x64]
	add [ebp+0x8], eax
	add edi, 0x1
	cmp [ebp-0x40], edi
	jnz Con_DrawMessageWindowNewToOld_90
Con_DrawMessageWindowNewToOld_50:
	mov edx, [ebp+0x20]
	mov eax, [edx]
	mov [ebp-0x28], eax
	mov eax, [edx+0x4]
	mov [ebp-0x24], eax
	mov eax, [edx+0x8]
	mov [ebp-0x20], eax
	mov eax, [edx+0xc]
	mov [ebp-0x1c], eax
	mov eax, esi
	sub eax, 0x1
	js Con_DrawMessageWindowNewToOld_100
	mov edi, eax
	mov eax, [ebp-0x50]
	shl eax, 0x6
	mov ecx, [ebp-0x50]
	lea eax, [eax+ecx*4]
	mov esi, scrPlaceView
	add eax, esi
	mov [ebp-0x6c], eax
	jmp Con_DrawMessageWindowNewToOld_110
Con_DrawMessageWindowNewToOld_130:
	mov edx, [ebp+0xc]
	add [ebp+0x8], edx
	mov edx, [eax+0x4]
	cmp [ebp-0x44], edx
	js Con_DrawMessageWindowNewToOld_120
Con_DrawMessageWindowNewToOld_140:
	sub edi, 0x1
	cmp edi, 0xffffffff
	jz Con_DrawMessageWindowNewToOld_100
Con_DrawMessageWindowNewToOld_110:
	mov eax, edi
	add eax, [ebx+0x28]
	cdq
	idiv dword [ebx+0x10]
	mov esi, edx
	mov edx, [ebx]
	lea eax, [esi+esi*2]
	mov edx, [edx+eax*8]
	mov eax, [ebx+0x4]
	lea eax, [eax+edx*8]
	cmp byte [ebp-0x55], 0x0
	jz Con_DrawMessageWindowNewToOld_130
	mov ecx, [ebp+0xc]
	sub [ebp+0x8], ecx
	mov edx, [eax+0x4]
	cmp [ebp-0x44], edx
	jns Con_DrawMessageWindowNewToOld_140
Con_DrawMessageWindowNewToOld_120:
	mov ecx, [ebp+0x20]
	movss xmm3, dword [ecx+0xc]
	mov ecx, edx
	sub ecx, [ebp-0x44]
	mov edx, [ebx+0x20]
	cmp ecx, edx
	jl Con_DrawMessageWindowNewToOld_150
	movss xmm2, dword [_float_1_00000000]
Con_DrawMessageWindowNewToOld_200:
	mov ecx, [ebx+0x1c]
	mov edx, [ebx+0x18]
	cmp ecx, edx
	jge Con_DrawMessageWindowNewToOld_160
	mov eax, [eax]
	mov [ebp-0x2c], eax
	mov eax, [ebp-0x44]
	sub eax, [ebp-0x2c]
	cmp edx, eax
	jg Con_DrawMessageWindowNewToOld_170
Con_DrawMessageWindowNewToOld_190:
	pxor xmm0, xmm0
	subss xmm0, xmm2
	pxor xmm1, xmm1
	cmpss xmm1, xmm0, 0x6
	movaps xmm0, xmm1
	movaps xmm1, xmm2
	andps xmm1, xmm0
	movaps xmm2, xmm0
	pxor xmm4, xmm4
	andnps xmm2, xmm4
	orps xmm2, xmm1
Con_DrawMessageWindowNewToOld_220:
	mulss xmm2, xmm3
	movss [ebp-0x1c], xmm2
	mov eax, [ebp+0x28]
	mov [esp+0x34], eax
	movss xmm0, dword [ebp-0x5c]
	movss [esp+0x30], xmm0
	mov eax, [ebp+0x24]
	mov [esp+0x2c], eax
	lea eax, [ebp-0x28]
	mov [esp+0x28], eax
	mov [esp+0x24], esi
	mov [esp+0x20], ebx
	mov edx, [ebp+0x1c]
	mov [esp+0x1c], edx
	mov ecx, [ebp+0x14]
	mov [esp+0x18], ecx
	mov esi, [ebp+0x10]
	mov [esp+0x14], esi
	mov eax, [ebp+0xc]
	mov [esp+0x10], eax
	mov edx, [ebp+0x8]
	mov [esp+0xc], edx
	mov ecx, [ebp-0x54]
	mov [esp+0x8], ecx
	mov esi, [ebp-0x6c]
	mov [esp+0x4], esi
	mov eax, [ebp-0x50]
	mov [esp], eax
	call Con_DrawMessageLineOnHUD
	sub edi, 0x1
	cmp edi, 0xffffffff
	jnz Con_DrawMessageWindowNewToOld_110
Con_DrawMessageWindowNewToOld_100:
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Con_DrawMessageWindowNewToOld_30:
	mov dword [ebx+0x28], 0x0
	jmp Con_DrawMessageWindowNewToOld_180
Con_DrawMessageWindowNewToOld_160:
	test ecx, ecx
	jz Con_DrawMessageWindowNewToOld_190
	mov edx, [ebp-0x44]
	sub edx, [eax]
	cmp edx, ecx
	jge Con_DrawMessageWindowNewToOld_190
	cvtsi2ss xmm0, edx
	cvtsi2ss xmm1, ecx
	divss xmm0, xmm1
	mulss xmm2, xmm0
	jmp Con_DrawMessageWindowNewToOld_190
Con_DrawMessageWindowNewToOld_150:
	cvtsi2ss xmm2, ecx
	cvtsi2ss xmm0, edx
	divss xmm2, xmm0
	jmp Con_DrawMessageWindowNewToOld_200
Con_DrawMessageWindowNewToOld_170:
	sub edx, ecx
	cmp eax, edx
	jle Con_DrawMessageWindowNewToOld_210
	mov eax, [ebp-0x2c]
	add eax, edx
	mov edx, [ebp-0x44]
	sub edx, eax
	cvtsi2ss xmm0, edx
	cvtsi2ss xmm1, ecx
	divss xmm0, xmm1
	mulss xmm2, xmm0
	jmp Con_DrawMessageWindowNewToOld_190
Con_DrawMessageWindowNewToOld_210:
	pxor xmm2, xmm2
	jmp Con_DrawMessageWindowNewToOld_220
Con_DrawMessageWindowNewToOld_10:
	mov eax, [con+0x30]
Con_DrawMessageWindowNewToOld_260:
	mov [ebp-0x40], eax
	test eax, eax
	jz Con_DrawMessageWindowNewToOld_230
	mov ecx, [con+0x2c]
	lea edx, [ecx+ecx*2]
	mov eax, [con+0x4]
	mov edx, [eax+edx*8]
	mov eax, [con+0x8]
	mov esi, [ebp-0x44]
	cmp esi, [eax+edx*8+0x4]
	js Con_DrawMessageWindowNewToOld_240
	mov esi, [ebp-0x40]
	sub esi, 0x1
	mov [con+0x30], esi
	lea eax, [ecx+0x1]
	xor edx, edx
	cmp eax, [con+0x14]
	cmovnz edx, eax
	mov [con+0x2c], edx
	mov eax, [con+0x1023c]
	sub eax, 0x1
	mov [con+0x1023c], eax
	mov edx, [con+0x1024c]
	cmp eax, edx
	jge Con_DrawMessageWindowNewToOld_250
	mov eax, esi
	cmp edx, esi
	cmovg edx, esi
	mov [con+0x1023c], edx
	jmp Con_DrawMessageWindowNewToOld_260
Con_DrawMessageWindowNewToOld_230:
	xor esi, esi
	jmp Con_DrawMessageWindowNewToOld_20
Con_DrawMessageWindowNewToOld_250:
	mov eax, esi
	jmp Con_DrawMessageWindowNewToOld_260
Con_DrawMessageWindowNewToOld_240:
	mov esi, [con+0x30]
	jmp Con_DrawMessageWindowNewToOld_20


;Con_DrawMessageWindowOldToNew(int, MessageWindow*, int, int, int, int, int, unsigned char, Font_s*, float*, int, float, int)
Con_DrawMessageWindowOldToNew:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	mov [ebp-0x38], eax
	mov esi, edx
	mov [ebp-0x3c], ecx
	movss [ebp-0x44], xmm0
	movzx eax, byte [ebp+0x18]
	mov [ebp-0x3d], al
	mov edx, clients
	mov [ebp-0x5c], edx
	mov edi, [edx+0x2fa0]
	cmp esi, con+0x4
	jz Con_DrawMessageWindowOldToNew_10
Con_DrawMessageWindowOldToNew_140:
	mov ebx, [esi+0x2c]
	test ebx, ebx
	jz Con_DrawMessageWindowOldToNew_20
Con_DrawMessageWindowOldToNew_40:
	mov ecx, [esi+0x28]
	mov edx, [esi]
	lea eax, [ecx+ecx*2]
	mov edx, [edx+eax*8]
	mov eax, [esi+0x4]
	cmp edi, [eax+edx*8+0x4]
	js Con_DrawMessageWindowOldToNew_20
	lea eax, [ebx-0x1]
	mov [esi+0x2c], eax
	add ecx, 0x1
	mov [esi+0x28], ecx
	cmp ecx, [esi+0x10]
	jz Con_DrawMessageWindowOldToNew_30
	mov ebx, eax
	test ebx, ebx
	jnz Con_DrawMessageWindowOldToNew_40
Con_DrawMessageWindowOldToNew_20:
	cmp byte [ebp-0x3d], 0x0
	jnz Con_DrawMessageWindowOldToNew_50
	mov ecx, [ebp+0x8]
	mov [ebp-0x34], ecx
Con_DrawMessageWindowOldToNew_170:
	mov edx, [ebp+0x20]
	mov eax, [edx]
	mov [ebp-0x28], eax
	mov eax, [edx+0x4]
	mov [ebp-0x24], eax
	mov eax, [edx+0x8]
	mov [ebp-0x20], eax
	mov eax, [edx+0xc]
	mov [ebp-0x1c], eax
	mov ebx, [esi+0x2c]
	test ebx, ebx
	jle Con_DrawMessageWindowOldToNew_60
	mov dword [ebp-0x30], 0x0
	cvtsi2ss xmm0, dword [ebp+0xc]
	movss [ebp-0x4c], xmm0
	mov eax, [ebp-0x38]
	shl eax, 0x6
	mov edx, [ebp-0x38]
	lea eax, [eax+edx*4]
	mov ecx, scrPlaceView
	add eax, ecx
	mov [ebp-0x58], eax
Con_DrawMessageWindowOldToNew_130:
	mov eax, [ebp-0x30]
	add eax, [esi+0x28]
	cdq
	idiv dword [esi+0x10]
	mov [ebp-0x48], edx
	mov edx, [esi]
	mov ecx, [ebp-0x48]
	lea eax, [ecx+ecx*2]
	mov edx, [edx+eax*8]
	mov eax, [esi+0x4]
	lea edx, [eax+edx*8]
	mov [ebp-0x2c], edx
	mov eax, [ebp-0x5c]
	mov edi, [eax+0x2fa0]
	mov ebx, [edx+0x4]
	cmp edi, ebx
	jg Con_DrawMessageWindowOldToNew_70
	mov edx, [esi+0x18]
	mov eax, ebx
	sub eax, edx
	cmp edi, eax
	jle Con_DrawMessageWindowOldToNew_80
	mov ecx, edi
	sub ecx, eax
	test ecx, ecx
	jle Con_DrawMessageWindowOldToNew_80
	cmp byte [ebp-0x3d], 0x0
	jnz Con_DrawMessageWindowOldToNew_90
	cvtsi2ss xmm0, ecx
	cvtsi2ss xmm1, edx
	divss xmm0, xmm1
	mulss xmm0, [ebp-0x4c]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x54]
	cvttss2si eax, [ebp-0x54]
	sub [ebp-0x34], eax
Con_DrawMessageWindowOldToNew_80:
	mov eax, [ebp+0x20]
	movss xmm3, dword [eax+0xc]
	mov edx, ebx
	sub edx, edi
	mov eax, [esi+0x20]
	cmp edx, eax
	jl Con_DrawMessageWindowOldToNew_100
	movss xmm2, dword [_float_1_00000000]
Con_DrawMessageWindowOldToNew_150:
	mov eax, [esi+0x1c]
	test eax, eax
	jz Con_DrawMessageWindowOldToNew_110
	mov edx, edi
	mov ecx, [ebp-0x2c]
	sub edx, [ecx]
	cmp eax, edx
	jle Con_DrawMessageWindowOldToNew_110
	cvtsi2ss xmm0, edx
	cvtsi2ss xmm1, eax
	divss xmm0, xmm1
	mulss xmm2, xmm0
Con_DrawMessageWindowOldToNew_110:
	pxor xmm0, xmm0
	subss xmm0, xmm2
	pxor xmm1, xmm1
	cmpss xmm1, xmm0, 0x6
	movaps xmm0, xmm1
	andps xmm2, xmm1
	pxor xmm1, xmm1
	andnps xmm0, xmm1
	orps xmm0, xmm2
	mulss xmm0, xmm3
	movss [ebp-0x1c], xmm0
	mov eax, [ebp+0x28]
	mov [esp+0x34], eax
	movss xmm0, dword [ebp-0x44]
	movss [esp+0x30], xmm0
	mov eax, [ebp+0x24]
	mov [esp+0x2c], eax
	lea eax, [ebp-0x28]
	mov [esp+0x28], eax
	mov edx, [ebp-0x48]
	mov [esp+0x24], edx
	mov [esp+0x20], esi
	mov ecx, [ebp+0x1c]
	mov [esp+0x1c], ecx
	mov eax, [ebp+0x14]
	mov [esp+0x18], eax
	mov edx, [ebp+0x10]
	mov [esp+0x14], edx
	mov ecx, [ebp+0xc]
	mov [esp+0x10], ecx
	mov eax, [ebp-0x34]
	mov [esp+0xc], eax
	mov edx, [ebp-0x3c]
	mov [esp+0x8], edx
	mov ecx, [ebp-0x58]
	mov [esp+0x4], ecx
	mov eax, [ebp-0x38]
	mov [esp], eax
	call Con_DrawMessageLineOnHUD
	cmp byte [ebp-0x3d], 0x0
	jz Con_DrawMessageWindowOldToNew_120
	mov edx, [ebp+0xc]
	sub [ebp-0x34], edx
Con_DrawMessageWindowOldToNew_70:
	add dword [ebp-0x30], 0x1
	mov eax, [ebp-0x30]
	cmp eax, [esi+0x2c]
	jge Con_DrawMessageWindowOldToNew_60
Con_DrawMessageWindowOldToNew_160:
	mov edx, clients
	mov [ebp-0x5c], edx
	jmp Con_DrawMessageWindowOldToNew_130
Con_DrawMessageWindowOldToNew_30:
	mov dword [esi+0x28], 0x0
	jmp Con_DrawMessageWindowOldToNew_140
Con_DrawMessageWindowOldToNew_100:
	cvtsi2ss xmm2, edx
	cvtsi2ss xmm0, eax
	divss xmm2, xmm0
	jmp Con_DrawMessageWindowOldToNew_150
Con_DrawMessageWindowOldToNew_120:
	mov ecx, [ebp+0xc]
	add [ebp-0x34], ecx
	add dword [ebp-0x30], 0x1
	mov eax, [ebp-0x30]
	cmp eax, [esi+0x2c]
	jl Con_DrawMessageWindowOldToNew_160
Con_DrawMessageWindowOldToNew_60:
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Con_DrawMessageWindowOldToNew_50:
	mov eax, [ebp+0x8]
	sub eax, [ebp+0xc]
	mov [ebp-0x34], eax
	jmp Con_DrawMessageWindowOldToNew_170
Con_DrawMessageWindowOldToNew_90:
	cvtsi2ss xmm0, ecx
	cvtsi2ss xmm1, edx
	divss xmm0, xmm1
	mulss xmm0, [ebp-0x4c]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x50]
	cvttss2si eax, [ebp-0x50]
	add [ebp-0x34], eax
	jmp Con_DrawMessageWindowOldToNew_80
Con_DrawMessageWindowOldToNew_10:
	mov ebx, [con+0x30]
Con_DrawMessageWindowOldToNew_180:
	test ebx, ebx
	jz Con_DrawMessageWindowOldToNew_20
	mov ecx, [con+0x2c]
	lea edx, [ecx+ecx*2]
	mov eax, [con+0x4]
	mov edx, [eax+edx*8]
	mov eax, [con+0x8]
	cmp edi, [eax+edx*8+0x4]
	js Con_DrawMessageWindowOldToNew_20
	sub ebx, 0x1
	mov [con+0x30], ebx
	lea eax, [ecx+0x1]
	xor edx, edx
	cmp eax, [con+0x14]
	cmovnz edx, eax
	mov [con+0x2c], edx
	mov eax, [con+0x1023c]
	sub eax, 0x1
	mov [con+0x1023c], eax
	mov edx, [con+0x1024c]
	cmp eax, edx
	jge Con_DrawMessageWindowOldToNew_180
	cmp edx, ebx
	cmovg edx, ebx
	mov [con+0x1023c], edx
	jmp Con_DrawMessageWindowOldToNew_180


;Con_UpdateMessageWindowLine(int, MessageWindow*, int, int)
Con_UpdateMessageWindowLine:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	mov esi, edx
	mov [ebp-0x60], ecx
	mov ecx, [ebp+0x8]
	test eax, eax
	jle Con_UpdateMessageWindowLine_10
	mov dword [ebp-0x58], 0x0
Con_UpdateMessageWindowLine_280:
	mov eax, [esi+0x28]
	add eax, [esi+0x2c]
	cdq
	idiv dword [esi+0x10]
	lea edx, [edx+edx*2]
	mov eax, [esi]
	lea edx, [eax+edx*8]
	mov [ebp-0x54], edx
	mov eax, [esi+0x30]
	mov [edx], eax
	mov dword [edx+0xc], 0x0
	mov dword [edx+0x10], 0x0
	mov [edx+0x14], ecx
	and cl, 0x1
	jnz Con_UpdateMessageWindowLine_20
	mov dword [ebp-0x48], 0x0
	mov edx, [ebp-0x48]
Con_UpdateMessageWindowLine_180:
	mov eax, [ebp-0x54]
	mov [eax+0xc], edx
	test edx, edx
	jz Con_UpdateMessageWindowLine_30
	mov edx, [eax]
	mov eax, [esi+0x4]
	lea edx, [eax+edx*8]
	mov [ebp-0x5c], edx
	mov ebx, [ebp-0x54]
	test byte [ebx+0x14], 0x1
	jz Con_UpdateMessageWindowLine_40
	mov dword [ebp-0x34], 0x0
	xor edi, edi
Con_UpdateMessageWindowLine_60:
	mov ebx, [ebp-0x54]
	cmp edi, [ebx+0x8]
	jge Con_UpdateMessageWindowLine_50
Con_UpdateMessageWindowLine_70:
	mov eax, ebx
	mov ebx, [esi+0x8]
	mov edx, edi
	add edx, [eax+0x4]
	mov ecx, [esi+0xc]
	sub ecx, 0x1
	mov dword [esp+0xc], 0x0
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	lea eax, [edx+0x1]
	and eax, ecx
	movsx eax, byte [ebx+eax]
	mov [esp+0x4], eax
	and edx, ecx
	movsx eax, byte [ebx+edx]
	mov [esp], eax
	call SEH_DecodeLetter
	add edi, [ebp-0x1c]
	add dword [ebp-0x34], 0x1
	cmp eax, 0x5e
	jnz Con_UpdateMessageWindowLine_60
	mov eax, edi
	mov edx, [ebp-0x54]
	add eax, [edx+0x4]
	mov edx, [esi+0xc]
	sub edx, 0x1
	and eax, edx
	mov edx, [esi+0x8]
	movzx edx, byte [edx+eax]
	cmp dl, 0x5e
	jz Con_UpdateMessageWindowLine_60
	cmp dl, 0x2f
	jle Con_UpdateMessageWindowLine_60
	lea eax, [edi+0x1]
	cmp dl, 0x39
	cmovle edi, eax
	mov ebx, [ebp-0x54]
	cmp edi, [ebx+0x8]
	jl Con_UpdateMessageWindowLine_70
Con_UpdateMessageWindowLine_50:
	mov eax, [con_typewriterPrintSpeed]
	mov edx, [ebp-0x34]
	imul edx, [eax+0xc]
	mov eax, [con_typewriterDecayStartTime]
	mov eax, [eax+0xc]
	cmp edx, eax
	cmovl edx, eax
	mov eax, [con_typewriterDecayDuration]
	add edx, [eax+0xc]
	mov eax, [ebp-0x48]
	add eax, edx
	mov edi, [ebp-0x5c]
	mov [edi+0x4], eax
Con_UpdateMessageWindowLine_30:
	cmp esi, con+0x4
	jz Con_UpdateMessageWindowLine_80
	mov eax, [esi+0xc]
	mov [ebp-0x68], eax
	mov ebx, [esi+0x24]
Con_UpdateMessageWindowLine_160:
	mov edx, [con+0x10238]
	mov [ebp-0x2c], edx
	mov edi, edx
	add edi, 0x1
	mov eax, [esi+0x2c]
	mov [ebp-0x30], eax
	test eax, eax
	jnz Con_UpdateMessageWindowLine_90
Con_UpdateMessageWindowLine_150:
	mov edi, [ebp-0x68]
Con_UpdateMessageWindowLine_400:
	sub edi, ebx
	cmp edi, [ebp-0x2c]
	jb Con_UpdateMessageWindowLine_100
	add ebx, [esi+0x8]
	mov eax, [ebp-0x2c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], con+0x10038
	mov [esp], ebx
	call memcpy
Con_UpdateMessageWindowLine_190:
	mov eax, [esi+0x24]
	mov edx, [ebp-0x54]
	mov [edx+0x4], eax
	mov eax, [con+0x10238]
	mov [edx+0x8], eax
	mov ebx, [esi+0x24]
	add ebx, [con+0x10238]
	mov eax, [esi+0xc]
	sub eax, 0x1
	and ebx, eax
	mov [esi+0x24], ebx
	mov eax, [esi+0x8]
	mov byte [eax+ebx], 0xa
	mov eax, [esi+0x24]
	add eax, 0x1
	mov edx, [esi+0xc]
	sub edx, 0x1
	and eax, edx
	mov [esi+0x24], eax
	mov edi, [ebp-0x60]
	test edi, edi
	jz Con_UpdateMessageWindowLine_110
	mov edx, [esi+0x2c]
	cmp edx, [esi+0x10]
	jz Con_UpdateMessageWindowLine_120
Con_UpdateMessageWindowLine_310:
	add edx, 0x1
	mov [esi+0x2c], edx
	mov ecx, [esi+0x10]
	mov eax, ecx
	sub eax, [esi+0x14]
	sub edx, eax
	mov eax, edx
	test edx, edx
	jle Con_UpdateMessageWindowLine_110
	add eax, [esi+0x28]
	sub eax, 0x1
	cdq
	idiv ecx
	mov eax, [esi]
	lea edx, [edx+edx*2]
	mov edx, [eax+edx*8]
	mov eax, [esi+0x4]
	lea ecx, [eax+edx*8]
	mov edx, [esi+0x20]
	mov eax, [ecx+0x4]
	sub eax, edx
	cmp [ebp-0x58], eax
	jge Con_UpdateMessageWindowLine_110
	mov eax, [ebp-0x58]
	add eax, edx
	mov [ecx+0x4], eax
Con_UpdateMessageWindowLine_110:
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Con_UpdateMessageWindowLine_90:
	mov eax, [esi+0x28]
	lea eax, [eax+eax*2]
	mov edx, [esi]
	lea ecx, [edx+eax*8]
	lea edx, [edi+ebx]
	mov eax, [ebp-0x68]
	sub eax, 0x1
	and edx, eax
	cmp ebx, edx
	jg Con_UpdateMessageWindowLine_130
	mov eax, [ecx+0x4]
	cmp ebx, eax
	jg Con_UpdateMessageWindowLine_140
	cmp edx, eax
	jle Con_UpdateMessageWindowLine_140
Con_UpdateMessageWindowLine_200:
	mov eax, 0x1
Con_UpdateMessageWindowLine_210:
	test al, al
	jz Con_UpdateMessageWindowLine_150
	mov eax, [ebp-0x30]
	sub eax, 0x1
	mov [esi+0x2c], eax
	mov eax, [esi+0x28]
	add eax, 0x1
	mov [esi+0x28], eax
	cmp eax, [esi+0x10]
	jnz Con_UpdateMessageWindowLine_160
	mov dword [esi+0x28], 0x0
	jmp Con_UpdateMessageWindowLine_160
Con_UpdateMessageWindowLine_20:
	mov eax, clients
	mov eax, [eax+0x2fa0]
	mov [ebp-0x4c], eax
	mov eax, [esi+0x2c]
	test eax, eax
	jnz Con_UpdateMessageWindowLine_170
Con_UpdateMessageWindowLine_220:
	mov edi, [ebp-0x4c]
	add edi, 0xfa
	mov [ebp-0x48], edi
	mov edx, edi
	jmp Con_UpdateMessageWindowLine_180
Con_UpdateMessageWindowLine_100:
	add ebx, [esi+0x8]
	mov [esp+0x8], edi
	mov dword [esp+0x4], con+0x10038
	mov [esp], ebx
	call memcpy
	mov eax, [esi+0x8]
	mov edx, [con+0x10238]
	sub edx, edi
	lea ecx, [edi+con+0x10038]
	mov [esp+0x8], edx
	mov [esp+0x4], ecx
	mov [esp], eax
	call memcpy
	jmp Con_UpdateMessageWindowLine_190
Con_UpdateMessageWindowLine_130:
	mov eax, [ecx+0x4]
	cmp ebx, eax
	jle Con_UpdateMessageWindowLine_200
	cmp edx, eax
	jg Con_UpdateMessageWindowLine_200
Con_UpdateMessageWindowLine_140:
	xor eax, eax
	jmp Con_UpdateMessageWindowLine_210
Con_UpdateMessageWindowLine_170:
	sub eax, 0x1
	mov [ebp-0x40], eax
	js Con_UpdateMessageWindowLine_220
	mov ecx, eax
	add ecx, [esi+0x28]
	mov ebx, [esi+0x10]
	mov [ebp-0x7c], ebx
	mov eax, ecx
	cdq
	idiv ebx
	mov ebx, [esi]
	mov [ebp-0x44], ebx
	lea eax, [edx+edx*2]
	test byte [ebx+eax*8+0x14], 0x1
	jnz Con_UpdateMessageWindowLine_230
	sub ecx, 0x1
	xor ebx, ebx
Con_UpdateMessageWindowLine_240:
	cmp [ebp-0x40], ebx
	jz Con_UpdateMessageWindowLine_220
	mov eax, ecx
	cdq
	idiv dword [ebp-0x7c]
	add ebx, 0x1
	sub ecx, 0x1
	lea edi, [edx+edx*2]
	mov [ebp-0x6c], edi
	mov eax, [ebp-0x44]
	test byte [eax+edi*8+0x14], 0x1
	jz Con_UpdateMessageWindowLine_240
Con_UpdateMessageWindowLine_230:
	cmp edx, 0xffffffff
	jz Con_UpdateMessageWindowLine_220
	lea eax, [edx+edx*2]
	mov edx, [ebp-0x44]
	lea eax, [edx+eax*8]
	mov [ebp-0x38], eax
	mov ebx, [eax+0xc]
	mov [ebp-0x50], ebx
	test byte [eax+0x14], 0x1
	jz Con_UpdateMessageWindowLine_250
	mov dword [ebp-0x3c], 0x0
	xor edi, edi
Con_UpdateMessageWindowLine_270:
	mov ebx, [ebp-0x38]
	cmp edi, [ebx+0x8]
	jge Con_UpdateMessageWindowLine_260
	mov eax, ebx
	mov ebx, [esi+0x8]
	mov edx, edi
	add edx, [eax+0x4]
	mov ecx, [esi+0xc]
	sub ecx, 0x1
	mov dword [esp+0xc], 0x0
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	lea eax, [edx+0x1]
	and eax, ecx
	movsx eax, byte [ebx+eax]
	mov [esp+0x4], eax
	and edx, ecx
	movsx eax, byte [ebx+edx]
	mov [esp], eax
	call SEH_DecodeLetter
	add edi, [ebp-0x1c]
	add dword [ebp-0x3c], 0x1
	cmp eax, 0x5e
	jnz Con_UpdateMessageWindowLine_270
	mov eax, edi
	mov edx, [ebp-0x38]
	add eax, [edx+0x4]
	mov edx, [esi+0xc]
	sub edx, 0x1
	and eax, edx
	mov edx, [esi+0x8]
	movzx edx, byte [edx+eax]
	cmp dl, 0x5e
	jz Con_UpdateMessageWindowLine_270
	cmp dl, 0x2f
	jle Con_UpdateMessageWindowLine_270
	lea eax, [edi+0x1]
	cmp dl, 0x39
	cmovle edi, eax
	jmp Con_UpdateMessageWindowLine_270
Con_UpdateMessageWindowLine_40:
	xor edx, edx
	mov eax, [ebp-0x48]
	add eax, edx
	mov edi, [ebp-0x5c]
	mov [edi+0x4], eax
	jmp Con_UpdateMessageWindowLine_30
Con_UpdateMessageWindowLine_10:
	mov eax, clients
	mov eax, [eax+0x2fa0]
	mov [ebp-0x58], eax
	jmp Con_UpdateMessageWindowLine_280
Con_UpdateMessageWindowLine_120:
	sub edx, 0x1
	mov [esi+0x2c], edx
	mov eax, [esi+0x28]
	add eax, 0x1
	mov [esi+0x28], eax
	cmp eax, [esi+0x10]
	jz Con_UpdateMessageWindowLine_290
Con_UpdateMessageWindowLine_330:
	cmp esi, con+0x4
	jz Con_UpdateMessageWindowLine_300
	mov edx, [esi+0x2c]
	jmp Con_UpdateMessageWindowLine_310
Con_UpdateMessageWindowLine_260:
	mov eax, [con_typewriterPrintSpeed]
	mov eax, [eax+0xc]
	imul eax, [ebp-0x3c]
Con_UpdateMessageWindowLine_320:
	mov edi, [ebp-0x50]
	lea eax, [eax+edi+0x96]
	mov [ebp-0x48], eax
	sub eax, [ebp-0x4c]
	mov edx, [ebp-0x4c]
	add edx, 0xfa
	cmp eax, 0xf9
	cmovg edx, [ebp-0x48]
	mov [ebp-0x48], edx
	jmp Con_UpdateMessageWindowLine_180
Con_UpdateMessageWindowLine_250:
	xor eax, eax
	jmp Con_UpdateMessageWindowLine_320
Con_UpdateMessageWindowLine_290:
	mov dword [esi+0x28], 0x0
	jmp Con_UpdateMessageWindowLine_330
Con_UpdateMessageWindowLine_300:
	mov eax, [con+0x1023c]
	sub eax, 0x1
	mov [con+0x1023c], eax
	mov edx, [con+0x1024c]
	cmp eax, edx
	jge Con_UpdateMessageWindowLine_340
	mov eax, [con+0x30]
	cmp edx, eax
	cmovg edx, eax
	mov [con+0x1023c], edx
	mov edx, eax
	jmp Con_UpdateMessageWindowLine_310
Con_UpdateMessageWindowLine_340:
	mov edx, [con+0x30]
	jmp Con_UpdateMessageWindowLine_310
Con_UpdateMessageWindowLine_80:
	mov edx, [con+0x10238]
	mov [ebp-0x64], edx
	mov edi, [con+0x30]
Con_UpdateMessageWindowLine_390:
	mov ebx, [ebp-0x64]
	mov [ebp-0x2c], ebx
	mov ecx, ebx
	add ecx, 0x1
	test edi, edi
	jz Con_UpdateMessageWindowLine_350
	mov eax, [con+0x2c]
	lea eax, [eax+eax*2]
	mov edx, [con+0x4]
	lea ebx, [edx+eax*8]
	mov edx, [con+0x28]
	add ecx, edx
	mov eax, [con+0x10]
	sub eax, 0x1
	and ecx, eax
	cmp edx, ecx
	jg Con_UpdateMessageWindowLine_360
	mov eax, [ebx+0x4]
	cmp edx, eax
	jle Con_UpdateMessageWindowLine_370
Con_UpdateMessageWindowLine_420:
	xor eax, eax
Con_UpdateMessageWindowLine_430:
	test al, al
	jz Con_UpdateMessageWindowLine_350
	lea ecx, [edi-0x1]
	mov [con+0x30], ecx
	mov eax, [con+0x2c]
	add eax, 0x1
	xor edx, edx
	cmp eax, [con+0x14]
	cmovnz edx, eax
	mov [con+0x2c], edx
	mov eax, [con+0x1023c]
	sub eax, 0x1
	mov [con+0x1023c], eax
	mov edx, [con+0x1024c]
	cmp eax, edx
	jge Con_UpdateMessageWindowLine_380
	mov edi, ecx
	cmp edx, ecx
	cmovg edx, ecx
	mov [con+0x1023c], edx
	jmp Con_UpdateMessageWindowLine_390
Con_UpdateMessageWindowLine_350:
	mov edi, [con+0x10]
	mov [ebp-0x68], edi
	mov ebx, [con+0x28]
	jmp Con_UpdateMessageWindowLine_400
Con_UpdateMessageWindowLine_380:
	mov edi, ecx
	jmp Con_UpdateMessageWindowLine_390
Con_UpdateMessageWindowLine_360:
	mov eax, [ebx+0x4]
	cmp edx, eax
	jle Con_UpdateMessageWindowLine_410
Con_UpdateMessageWindowLine_370:
	cmp ecx, eax
	jle Con_UpdateMessageWindowLine_420
Con_UpdateMessageWindowLine_410:
	mov eax, 0x1
	jmp Con_UpdateMessageWindowLine_430


;Con_UpdateNotifyLine(int, int, unsigned char, int)
Con_UpdateNotifyLine:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edi, eax
	mov [ebp-0x20], edx
	mov eax, [ebp+0x8]
	mov [ebp-0x24], eax
	mov [ebp-0x19], cl
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x0
	call Con_IsChannelVisible
	test al, al
	jnz Con_UpdateNotifyLine_10
Con_UpdateNotifyLine_120:
	mov eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov edx, [ebp-0x20]
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call Con_IsChannelVisible
	test al, al
	jnz Con_UpdateNotifyLine_20
Con_UpdateNotifyLine_110:
	mov ebx, 0x3
	movzx edx, byte [ebp-0x19]
	mov [ebp-0x30], edx
	lea eax, [edi+edi*8]
	shl eax, 0x5
	add eax, edi
	lea eax, [edi+eax*4]
	lea eax, [edi+eax*2]
	shl eax, 0x3
	lea edx, [eax+con+0x13930]
	mov [ebp-0x28], edx
	lea edx, [eax+con+0x149e0]
	mov [ebp-0x2c], edx
	lea esi, [eax+con+0x12260]
Con_UpdateNotifyLine_70:
	mov eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov edx, [ebp-0x20]
	mov [esp+0x4], edx
	mov [esp], ebx
	call Con_IsChannelVisible
	test al, al
	jz Con_UpdateNotifyLine_30
	cmp ebx, 0x1
	jz Con_UpdateNotifyLine_40
	cmp ebx, 0x2
	jz Con_UpdateNotifyLine_50
	test ebx, ebx
	jnz Con_UpdateNotifyLine_60
	mov edx, con+0x4
Con_UpdateNotifyLine_90:
	mov eax, [ebp-0x24]
	mov [esp], eax
	mov ecx, [ebp-0x30]
	mov eax, edi
	call Con_UpdateMessageWindowLine
Con_UpdateNotifyLine_30:
	add ebx, 0x1
	add esi, 0x34
	cmp ebx, 0x7
	jnz Con_UpdateNotifyLine_70
	mov eax, com_developer
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jnz Con_UpdateNotifyLine_80
Con_UpdateNotifyLine_100:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Con_UpdateNotifyLine_40:
	mov edx, [ebp-0x28]
	add edx, 0x4
	jmp Con_UpdateNotifyLine_90
Con_UpdateNotifyLine_60:
	lea edx, [esi+0x4]
	jmp Con_UpdateNotifyLine_90
Con_UpdateNotifyLine_80:
	mov edx, [ebp-0x24]
	mov [esp+0x8], edx
	mov eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call Con_IsChannelVisible
	test al, al
	jz Con_UpdateNotifyLine_100
	movzx ecx, byte [ebp-0x19]
	lea edx, [edi+edi*8]
	shl edx, 0x5
	add edx, edi
	lea edx, [edi+edx*4]
	lea edx, [edi+edx*2]
	lea edx, [edx*8+con+0x149e8]
	mov eax, [ebp-0x24]
	mov [ebp+0x8], eax
	mov eax, edi
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Con_UpdateMessageWindowLine
Con_UpdateNotifyLine_50:
	mov edx, [ebp-0x2c]
	add edx, 0x8
	jmp Con_UpdateNotifyLine_90
Con_UpdateNotifyLine_20:
	movzx ecx, byte [ebp-0x19]
	lea edx, [edi+edi*8]
	shl edx, 0x5
	add edx, edi
	lea edx, [edi+edx*4]
	lea edx, [edi+edx*2]
	lea edx, [edx*8+con+0x13934]
	mov eax, [ebp-0x24]
	mov [esp], eax
	mov eax, edi
	call Con_UpdateMessageWindowLine
	jmp Con_UpdateNotifyLine_110
Con_UpdateNotifyLine_10:
	movzx ecx, byte [ebp-0x19]
	mov edx, [ebp-0x24]
	mov [esp], edx
	mov edx, con+0x4
	mov eax, edi
	call Con_UpdateMessageWindowLine
	jmp Con_UpdateNotifyLine_120
	nop


;CL_ConsolePrint_AddLine(int, int, char const*, int, int, char, int)
CL_ConsolePrint_AddLine:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov esi, [ebp+0x14]
	movzx eax, byte [ebp+0x1c]
	mov [ebp-0x32], al
	mov edx, [_ZZ23CL_ConsolePrint_AddLineiiPKciiciE9callDepth]
	test edx, edx
	jz CL_ConsolePrint_AddLine_10
	movsx eax, al
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_ConsolePrint_AddLine_10:
	mov dword [_ZZ23CL_ConsolePrint_AddLineiiPKciiciE9callDepth], 0x1
	mov dword [esp+0x4], 0x1
	mov edx, [ebp+0x20]
	mov [esp], edx
	mov ecx, esi
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	call Con_UpdateNotifyMessageWindow
	mov ebx, 0x3
CL_ConsolePrint_AddLine_20:
	mov [esp+0x4], ebx
	mov ecx, [ebp+0x20]
	mov [esp], ecx
	mov ecx, esi
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	call Con_UpdateNotifyMessageWindow
	add ebx, 0x1
	cmp ebx, 0x7
	jnz CL_ConsolePrint_AddLine_20
	mov eax, com_developer
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jnz CL_ConsolePrint_AddLine_30
CL_ConsolePrint_AddLine_290:
	mov edx, [con+0x10240]
	cmp [ebp+0xc], edx
	jz CL_ConsolePrint_AddLine_40
	mov eax, [con+0x10238]
	test eax, eax
	jnz CL_ConsolePrint_AddLine_50
CL_ConsolePrint_AddLine_40:
	mov eax, [ebp+0xc]
	sub eax, 0x2
	cmp eax, 0x2
	setbe byte [ebp-0x31]
	cmp byte [ebp-0x31], 0x0
	jz CL_ConsolePrint_AddLine_60
	xor eax, eax
	cmp dword [ebp+0xc], 0x3
	setz al
	shl eax, 0x2
	mov ebx, 0x3e800000
	mov [esp+0x8], ebx
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	shl eax, 0x6
	mov edx, [ebp+0x8]
	lea eax, [eax+edx*4]
	add eax, scrPlaceView
	mov [esp], eax
	call UI_GetFontHandle
	mov [ebp-0x30], eax
	mov [esp+0x4], ebx
	mov [esp], eax
	call R_NormalizedTextScale
	fstp dword [ebp-0x2c]
	movss xmm0, dword [ebp-0x2c]
CL_ConsolePrint_AddLine_230:
	mov eax, [ebp+0x18]
	test eax, eax
	mov eax, [ebp+0x18]
	cmovz eax, [con+0x10250]
	mov [ebp+0x18], eax
	movss [esp+0x10], xmm0
	mov eax, [ebp-0x30]
	mov [esp+0xc], eax
	mov edx, [ebp+0x18]
	mov [esp+0x8], edx
	mov eax, 0x200
	sub eax, [con+0x10238]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x10]
	mov [esp], ecx
	call R_TextLineWrapPosition
	mov esi, eax
	xor ebx, ebx
	cmp byte [eax], 0x0
	cmovz esi, ebx
	cmp esi, [ebp+0x10]
	jz CL_ConsolePrint_AddLine_70
CL_ConsolePrint_AddLine_300:
	mov ecx, [ebp+0x10]
	mov [ebp-0x1c], ecx
	xor edi, edi
	mov eax, ecx
	cmp byte [eax], 0x0
	jz CL_ConsolePrint_AddLine_80
CL_ConsolePrint_AddLine_140:
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call SEH_ReadCharFromString
	mov ebx, eax
	cmp eax, 0xa
	jz CL_ConsolePrint_AddLine_90
	cmp eax, 0x5e
	jz CL_ConsolePrint_AddLine_100
	cmp eax, 0x20
	jz CL_ConsolePrint_AddLine_110
	cmp eax, 0xff
	jle CL_ConsolePrint_AddLine_120
	mov eax, [con+0x10238]
	mov ecx, con+0x10030
	mov edx, ebx
	sar edx, 0x8
	mov [eax+ecx+0x8], dl
	add eax, 0x1
	mov [con+0x10238], eax
	and ebx, 0xff
CL_ConsolePrint_AddLine_250:
	mov [eax+ecx+0x8], bl
	add eax, 0x1
	mov [con+0x10238], eax
	xor edi, edi
CL_ConsolePrint_AddLine_260:
	cmp esi, [ebp-0x1c]
	jz CL_ConsolePrint_AddLine_130
	mov eax, [ebp-0x1c]
CL_ConsolePrint_AddLine_220:
	cmp byte [eax], 0x0
	jnz CL_ConsolePrint_AddLine_140
CL_ConsolePrint_AddLine_80:
	mov eax, [con+0x10238]
	test eax, eax
	jz CL_ConsolePrint_AddLine_150
	cmp byte [ebp-0x31], 0x0
	jz CL_ConsolePrint_AddLine_160
	mov eax, [ebp+0x20]
	mov [esp], eax
	mov ecx, 0x1
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	call Con_UpdateNotifyLine
	mov dword [con+0x10238], 0x0
	mov edx, [con+0x30]
	lea eax, [edx-0x1]
	cmp [con+0x1023c], eax
	jz CL_ConsolePrint_AddLine_170
CL_ConsolePrint_AddLine_150:
	mov ecx, [ebp+0xc]
	mov [con+0x10240], ecx
	sub dword [_ZZ23CL_ConsolePrint_AddLineiiPKciiciE9callDepth], 0x1
	movsx eax, byte [ebp-0x32]
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_ConsolePrint_AddLine_130:
	mov eax, [ebp+0x20]
	mov [esp], eax
	mov ecx, 0x1
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	call Con_UpdateNotifyLine
	mov dword [con+0x10238], 0x0
	mov eax, [con+0x30]
	lea edx, [eax-0x1]
	cmp [con+0x1023c], edx
	cmovnz eax, [con+0x1023c]
	mov [con+0x1023c], eax
	cmp ebx, 0xa
	jz CL_ConsolePrint_AddLine_180
	cmp byte [ebp-0x32], 0x37
	jz CL_ConsolePrint_AddLine_190
	mov byte [con+0x10038], 0x5e
	movzx edx, byte [ebp-0x32]
	mov [con+0x10039], dl
	mov dword [con+0x10238], 0x2
CL_ConsolePrint_AddLine_190:
	mov edi, 0x1
CL_ConsolePrint_AddLine_180:
	mov edx, 0x200
	sub edx, [con+0x10238]
	mov eax, [ebp-0x1c]
	test edi, edi
	jz CL_ConsolePrint_AddLine_200
	cmp byte [eax], 0x20
	jz CL_ConsolePrint_AddLine_210
CL_ConsolePrint_AddLine_200:
	movss xmm0, dword [ebp-0x2c]
	movss [esp+0x10], xmm0
	mov ecx, [ebp-0x30]
	mov [esp+0xc], ecx
	mov ecx, [ebp+0x18]
	mov [esp+0x8], ecx
	mov [esp+0x4], edx
	mov [esp], eax
	call R_TextLineWrapPosition
	mov esi, eax
	cmp byte [eax], 0x0
	mov eax, 0x0
	cmovz esi, eax
	mov eax, [ebp-0x1c]
	jmp CL_ConsolePrint_AddLine_220
CL_ConsolePrint_AddLine_60:
	mov eax, cls
	mov eax, [eax+0x2dbff8]
	mov [ebp-0x30], eax
	movss xmm0, dword [_float_1_00000000]
	movss [ebp-0x2c], xmm0
	jmp CL_ConsolePrint_AddLine_230
CL_ConsolePrint_AddLine_50:
	mov ecx, [ebp+0x20]
	mov [esp], ecx
	mov ecx, 0x1
	mov eax, [ebp+0x8]
	call Con_UpdateNotifyLine
	mov dword [con+0x10238], 0x0
	mov eax, [con+0x30]
	lea edx, [eax-0x1]
	cmp [con+0x1023c], edx
	cmovnz eax, [con+0x1023c]
	mov [con+0x1023c], eax
	jmp CL_ConsolePrint_AddLine_40
CL_ConsolePrint_AddLine_270:
	movzx edx, byte [0x0]
CL_ConsolePrint_AddLine_280:
	lea eax, [edx-0x1]
	cmp al, 0x1
	jbe CL_ConsolePrint_AddLine_240
CL_ConsolePrint_AddLine_120:
	mov ecx, con+0x10030
	mov eax, [con+0x10238]
	jmp CL_ConsolePrint_AddLine_250
CL_ConsolePrint_AddLine_90:
	test esi, esi
	jnz CL_ConsolePrint_AddLine_260
	mov esi, [ebp-0x1c]
	jmp CL_ConsolePrint_AddLine_260
CL_ConsolePrint_AddLine_100:
	mov edi, [ebp-0x1c]
	test edi, edi
	jz CL_ConsolePrint_AddLine_270
	movzx edx, byte [edi]
	cmp dl, 0x5e
	jz CL_ConsolePrint_AddLine_280
	cmp dl, 0x2f
	jle CL_ConsolePrint_AddLine_280
	cmp dl, 0x39
	jg CL_ConsolePrint_AddLine_280
	mov eax, [con+0x10238]
	mov ecx, con+0x10030
	mov byte [eax+ecx+0x8], 0x5e
	mov [eax+ecx+0x9], dl
	add eax, 0x2
	mov [con+0x10238], eax
	lea eax, [edi+0x1]
	mov [ebp-0x1c], eax
	mov [ebp-0x32], dl
	xor edi, edi
	jmp CL_ConsolePrint_AddLine_260
CL_ConsolePrint_AddLine_110:
	test edi, edi
	jnz CL_ConsolePrint_AddLine_260
	mov ecx, con+0x10030
	mov eax, [con+0x10238]
	jmp CL_ConsolePrint_AddLine_250
CL_ConsolePrint_AddLine_30:
	mov dword [esp+0x4], 0x2
	mov eax, [ebp+0x20]
	mov [esp], eax
	mov ecx, esi
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	call Con_UpdateNotifyMessageWindow
	jmp CL_ConsolePrint_AddLine_290
CL_ConsolePrint_AddLine_160:
	mov edx, [ebp+0x20]
	mov [esp], edx
	xor ecx, ecx
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	call Con_UpdateNotifyLine
	jmp CL_ConsolePrint_AddLine_150
CL_ConsolePrint_AddLine_70:
	mov eax, [con+0x10238]
	test eax, eax
	jz CL_ConsolePrint_AddLine_300
	mov eax, [ebp+0x20]
	mov [esp], eax
	mov ecx, 0x1
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	call Con_UpdateNotifyLine
	mov dword [con+0x10238], 0x0
	mov eax, [con+0x30]
	lea edx, [eax-0x1]
	cmp [con+0x1023c], edx
	cmovnz eax, [con+0x1023c]
	mov [con+0x1023c], eax
	movss xmm0, dword [ebp-0x2c]
	movss [esp+0x10], xmm0
	mov eax, [ebp-0x30]
	mov [esp+0xc], eax
	mov edx, [ebp+0x18]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x200
	mov [esp], esi
	call R_TextLineWrapPosition
	mov esi, eax
	cmp byte [eax], 0x0
	cmovz esi, ebx
	jmp CL_ConsolePrint_AddLine_300
CL_ConsolePrint_AddLine_210:
	add eax, 0x1
	cmp byte [eax], 0x20
	jnz CL_ConsolePrint_AddLine_200
	add eax, 0x1
	cmp byte [eax], 0x20
	jz CL_ConsolePrint_AddLine_210
	jmp CL_ConsolePrint_AddLine_200
CL_ConsolePrint_AddLine_240:
	mov edx, [con+0x10238]
	mov byte [edx+con+0x10038], 0x5e
	lea eax, [edx+0x1]
	mov [con+0x10238], eax
	lea ecx, [edx+con+0x10031]
	lea ebx, [ecx+0x8]
	mov eax, [edi]
	mov [ecx+0x8], eax
	movzx eax, word [edi+0x4]
	mov [ebx+0x4], ax
	movzx eax, byte [edi+0x6]
	mov [ebx+0x6], al
	add edx, 0x8
	mov [con+0x10238], edx
	lea eax, [edi+0x7]
	mov [ebp-0x1c], eax
	xor edi, edi
	mov ebx, 0x5e
	jmp CL_ConsolePrint_AddLine_260
CL_ConsolePrint_AddLine_170:
	mov [con+0x1023c], edx
	jmp CL_ConsolePrint_AddLine_150
	nop


;ConDrawInput_AutoCompleteArg(char const**, int)
ConDrawInput_AutoCompleteArg:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4ec
	mov ebx, eax
	mov [ebp-0x478], edx
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x1
	jle ConDrawInput_AutoCompleteArg_10
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
	mov [ebp-0x460], eax
	mov edi, eax
ConDrawInput_AutoCompleteArg_190:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [ebp-0x474], ecx
	jz ConDrawInput_AutoCompleteArg_20
	mov edi, [ebp-0x478]
	test edi, edi
	jg ConDrawInput_AutoCompleteArg_30
ConDrawInput_AutoCompleteArg_20:
	add esp, 0x4ec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ConDrawInput_AutoCompleteArg_30:
	mov dword [ebp-0x468], 0x0
	xor esi, esi
	mov dword [ebp-0x464], 0x0
	mov dword [ebp-0x45c], 0x0
ConDrawInput_AutoCompleteArg_50:
	mov eax, [ebp-0x474]
	mov [esp+0x8], eax
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov edx, [ebp-0x460]
	mov [esp], edx
	call Q_stricmpn
	test eax, eax
	jnz ConDrawInput_AutoCompleteArg_40
	cmp dword [ebp-0x464], 0x10
	jz ConDrawInput_AutoCompleteArg_20
	mov edx, [ebx]
	cld
	mov ecx, 0xffffffff
	mov edi, edx
	repne scasb
	not ecx
	mov edi, [ebp-0x468]
	lea ecx, [ecx+edi-0x1]
	cmp ecx, 0x3ff
	ja ConDrawInput_AutoCompleteArg_20
	lea eax, [ebp+edi-0x458]
	mov ecx, [ebp-0x464]
	mov [ebp+ecx*4-0x58], eax
	mov [esp+0x4], eax
	mov [esp], edx
	call Com_StripExtension
	mov edi, [ebp-0x464]
	mov edx, [ebp+edi*4-0x58]
	cld
	mov ecx, 0xffffffff
	mov edi, edx
	xor eax, eax
	repne scasb
	not ecx
	add [ebp-0x468], ecx
	mov eax, cls
	mov eax, [eax+0x2dbff8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], edx
	call R_TextWidth
	cmp [ebp-0x45c], eax
	cmovge eax, [ebp-0x45c]
	mov [ebp-0x45c], eax
	add dword [ebp-0x464], 0x1
ConDrawInput_AutoCompleteArg_40:
	add esi, 0x1
	add ebx, 0x4
	cmp [ebp-0x478], esi
	jnz ConDrawInput_AutoCompleteArg_50
	mov esi, [ebp-0x464]
	test esi, esi
	jz ConDrawInput_AutoCompleteArg_20
	mov dword [esp+0xc], ConDrawInput_CompareStrings
	mov dword [esp+0x8], 0x4
	mov eax, [ebp-0x464]
	mov [esp+0x4], eax
	lea eax, [ebp-0x58]
	mov [esp], eax
	call qsort
	movss xmm0, dword [conDrawInputGlob+0x5c]
	movss [ebp-0x470], xmm0
	mov eax, cls
	mov eax, [eax+0x2dbff8]
	mov [ebp-0x46c], eax
	mov ebx, g_consoleField
	mov esi, [0xd5cc084]
	jmp ConDrawInput_AutoCompleteArg_60
ConDrawInput_AutoCompleteArg_80:
	mov eax, [esi+eax*4+0x34]
	shr eax, 0xe
	and eax, 0x1
	test eax, eax
	jz ConDrawInput_AutoCompleteArg_70
ConDrawInput_AutoCompleteArg_90:
	add ebx, 0x1
ConDrawInput_AutoCompleteArg_60:
	movsx eax, byte [ebx+0x18]
	test eax, 0xffffff80
	jz ConDrawInput_AutoCompleteArg_80
	mov dword [esp+0x4], 0x4000
	mov [esp], eax
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	test eax, eax
	jnz ConDrawInput_AutoCompleteArg_90
ConDrawInput_AutoCompleteArg_70:
	mov eax, g_consoleField
	sub ebx, eax
	lea edx, [ebx+0x10]
	mov [ebp-0x480], edx
	lea edi, [edx+eax+0x8]
	mov esi, [0xd5cc084]
	jmp ConDrawInput_AutoCompleteArg_100
ConDrawInput_AutoCompleteArg_120:
	mov eax, [esi+eax*4+0x34]
	shr eax, 0xe
	and eax, 0x1
	test eax, eax
	jnz ConDrawInput_AutoCompleteArg_110
ConDrawInput_AutoCompleteArg_130:
	add edi, 0x1
ConDrawInput_AutoCompleteArg_100:
	movsx eax, byte [edi]
	test eax, 0xffffff80
	jz ConDrawInput_AutoCompleteArg_120
	mov dword [esp+0x4], 0x4000
	mov [esp], eax
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	test eax, eax
	jz ConDrawInput_AutoCompleteArg_130
ConDrawInput_AutoCompleteArg_110:
	mov edx, g_consoleField
	mov ecx, [ebp-0x480]
	lea eax, [ecx+edx+0x8]
	sub ebx, eax
	add ebx, edi
	lea edi, [ebx+0x10]
	mov [ebp-0x47c], edi
	lea edi, [edi+edx+0x8]
	mov esi, [0xd5cc084]
	jmp ConDrawInput_AutoCompleteArg_140
ConDrawInput_AutoCompleteArg_160:
	mov eax, [esi+eax*4+0x34]
	shr eax, 0xe
	and eax, 0x1
	test eax, eax
	jz ConDrawInput_AutoCompleteArg_150
ConDrawInput_AutoCompleteArg_170:
	add edi, 0x1
ConDrawInput_AutoCompleteArg_140:
	movsx eax, byte [edi]
	test eax, 0xffffff80
	jz ConDrawInput_AutoCompleteArg_160
	mov dword [esp+0x4], 0x4000
	mov [esp], eax
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	test eax, eax
	jnz ConDrawInput_AutoCompleteArg_170
ConDrawInput_AutoCompleteArg_150:
	mov edx, [ebp-0x46c]
	mov [esp+0x8], edx
	mov edx, g_consoleField
	mov ecx, [ebp-0x47c]
	lea eax, [ecx+edx+0x8]
	sub ebx, eax
	lea eax, [ebx+edi]
	mov [esp+0x4], eax
	add edx, 0x18
	mov [esp], edx
	call R_TextWidth
	cvtsi2ss xmm4, eax
	addss xmm4, [ebp-0x470]
	movss xmm6, dword [_float_6_00000000]
	subss xmm4, xmm6
	movss xmm3, dword [conDrawInputGlob+0x60]
	movaps xmm5, xmm3
	addss xmm5, [con+0x10258]
	addss xmm5, xmm6
	mov eax, [con_inputHintBoxColor]
	add eax, 0xc
	cvtsi2ss xmm0, dword [ebp-0x464]
	mulss xmm3, xmm0
	movss xmm0, dword [_float_12_00000000]
	cvtsi2ss xmm2, dword [ebp-0x45c]
	addss xmm3, xmm0
	addss xmm2, xmm0
	movaps xmm1, xmm5
	movaps xmm0, xmm4
	movss [ebp-0x498], xmm4
	movss [ebp-0x4a8], xmm5
	movss [ebp-0x4b8], xmm6
	call ConDraw_Box
	movss xmm4, dword [ebp-0x498]
	movss xmm6, dword [ebp-0x4b8]
	addss xmm4, xmm6
	movss [conDrawInputGlob+0x54], xmm4
	movaps xmm0, xmm6
	movss xmm5, dword [ebp-0x4a8]
	addss xmm0, xmm5
	movss [conDrawInputGlob+0x58], xmm0
	movss [conDrawInputGlob+0x5c], xmm4
	mov ebx, [ebp-0x464]
	test ebx, ebx
	jle ConDrawInput_AutoCompleteArg_20
	xor ebx, ebx
	mov esi, cls
	mov eax, [conDrawInputGlob+0x54]
ConDrawInput_AutoCompleteArg_180:
	mov dword [esp+0x24], 0x0
	mov dword [esp+0x20], con_inputDvarInfoColor
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x3f800000
	mov dword [esp+0x14], 0x3f800000
	addss xmm0, [conDrawInputGlob+0x60]
	movss [esp+0x10], xmm0
	mov [esp+0xc], eax
	mov eax, [esi+0x2dbff8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x7fffffff
	mov eax, [ebp+ebx*4-0x58]
	mov [esp], eax
	call R_AddCmdDrawText
	movss xmm0, dword [conDrawInputGlob+0x58]
	addss xmm0, [conDrawInputGlob+0x60]
	movss [conDrawInputGlob+0x58], xmm0
	mov eax, [conDrawInputGlob+0x5c]
	mov [conDrawInputGlob+0x54], eax
	add ebx, 0x1
	cmp ebx, [ebp-0x464]
	jnz ConDrawInput_AutoCompleteArg_180
	jmp ConDrawInput_AutoCompleteArg_20
ConDrawInput_AutoCompleteArg_10:
	mov dword [ebp-0x460], _cstring_null
	mov edi, [ebp-0x460]
	jmp ConDrawInput_AutoCompleteArg_190


;ConDrawInput_DetailedDvarMatch(char const*)
ConDrawInput_DetailedDvarMatch:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x45c
	mov edi, [ebp+0x8]
	mov eax, [conDrawInputGlob+0x4c]
	mov [esp+0x8], eax
	mov eax, [conDrawInputGlob+0x48]
	mov [esp+0x4], eax
	mov [esp], edi
	call Con_IsAutoCompleteMatch
	test al, al
	jz ConDrawInput_DetailedDvarMatch_10
	cmp byte [conDrawInputGlob+0x50], 0x0
	jz ConDrawInput_DetailedDvarMatch_20
	mov eax, [conDrawInputGlob+0x4c]
	cmp byte [edi+eax], 0x0
	jnz ConDrawInput_DetailedDvarMatch_10
ConDrawInput_DetailedDvarMatch_20:
	mov [esp], edi
	call Cvar_FindVar
	mov esi, eax
	mov [esp], eax
	call Cvar_HasLatchedValue
	mov [ebp-0x429], al
	test al, al
	jz ConDrawInput_DetailedDvarMatch_30
	movss xmm3, dword [_float_3_00000000]
ConDrawInput_DetailedDvarMatch_90:
	movss xmm0, dword [conDrawInputGlob+0x54]
	movss xmm4, dword [_float_6_00000000]
	subss xmm0, xmm4
	movss xmm1, dword [con+0x10254]
	mov eax, [con_inputHintBoxColor]
	add eax, 0xc
	mulss xmm3, [conDrawInputGlob+0x60]
	movss xmm2, dword [con+0x1025c]
	subss xmm2, xmm1
	movaps xmm5, xmm0
	subss xmm5, xmm1
	addss xmm3, [_float_12_00000000]
	subss xmm2, xmm5
	movss xmm1, dword [conDrawInputGlob+0x58]
	subss xmm1, xmm4
	call ConDraw_Box
	mov dword [esp+0x24], 0x0
	mov dword [esp+0x20], con_inputDvarMatchColor
	mov dword [esp+0x1c], 0x0
	mov ebx, 0x3f800000
	mov [esp+0x18], ebx
	mov [esp+0x14], ebx
	movss xmm0, dword [conDrawInputGlob+0x58]
	addss xmm0, [conDrawInputGlob+0x60]
	movss [esp+0x10], xmm0
	mov eax, [conDrawInputGlob+0x54]
	mov [esp+0xc], eax
	mov edx, cls
	mov eax, [edx+0x2dbff8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x18
	mov [esp], edi
	call R_AddCmdDrawText
	movss xmm0, dword [conDrawInputGlob+0x54]
	addss xmm0, [_float_300_00000000]
	movss [conDrawInputGlob+0x54], xmm0
	mov [esp], esi
	call Cvar_DisplayableValue
	mov dword [esp+0x24], 0x0
	mov dword [esp+0x20], con_inputDvarValueColor
	mov dword [esp+0x1c], 0x0
	mov [esp+0x18], ebx
	mov [esp+0x14], ebx
	movss xmm0, dword [conDrawInputGlob+0x58]
	addss xmm0, [conDrawInputGlob+0x60]
	movss [esp+0x10], xmm0
	mov edx, [conDrawInputGlob+0x54]
	mov [esp+0xc], edx
	mov ecx, cls
	mov edx, [ecx+0x2dbff8]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x28
	mov [esp], eax
	call R_AddCmdDrawText
	movss xmm0, dword [conDrawInputGlob+0x58]
	addss xmm0, [conDrawInputGlob+0x60]
	movss [conDrawInputGlob+0x58], xmm0
	mov eax, [conDrawInputGlob+0x5c]
	mov [conDrawInputGlob+0x54], eax
	cmp byte [ebp-0x429], 0x0
	jnz ConDrawInput_DetailedDvarMatch_40
ConDrawInput_DetailedDvarMatch_130:
	mov dword [esp+0x24], 0x0
	mov dword [esp+0x20], con_inputDvarInactiveValueColor
	mov dword [esp+0x1c], 0x0
	mov [esp+0x18], ebx
	mov [esp+0x14], ebx
	addss xmm0, [conDrawInputGlob+0x60]
	movss [esp+0x10], xmm0
	mov [esp+0xc], eax
	mov edx, cls
	mov eax, [edx+0x2dbff8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x7fffffff
	mov dword [esp], _cstring___default
	call R_AddCmdDrawText
	movss xmm0, dword [_float_300_00000000]
	addss xmm0, [conDrawInputGlob+0x54]
	movss [conDrawInputGlob+0x54], xmm0
	mov [esp], esi
	call Cvar_DisplayableResetValue
	mov dword [esp+0x24], 0x0
	mov dword [esp+0x20], con_inputDvarInactiveValueColor
	mov dword [esp+0x1c], 0x0
	mov [esp+0x18], ebx
	mov [esp+0x14], ebx
	movss xmm0, dword [conDrawInputGlob+0x58]
	addss xmm0, [conDrawInputGlob+0x60]
	movss [esp+0x10], xmm0
	mov edx, [conDrawInputGlob+0x54]
	mov [esp+0xc], edx
	mov ecx, cls
	mov edx, [ecx+0x2dbff8]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x28
	mov [esp], eax
	call R_AddCmdDrawText
	movss xmm0, dword [conDrawInputGlob+0x58]
	addss xmm0, [conDrawInputGlob+0x60]
	addss xmm0, [conDrawInputGlob+0x60]
	movss [conDrawInputGlob+0x58], xmm0
	mov eax, [conDrawInputGlob+0x5c]
	mov [conDrawInputGlob+0x54], eax
	mov edx, [esi+0x3c]
	mov ecx, [esi+0x40]
	lea eax, [ebp-0x1c]
	mov [esp+0x14], eax
	mov dword [esp+0x10], 0x400
	lea eax, [ebp-0x41c]
	mov [esp+0xc], eax
	mov [esp+0x4], edx
	mov [esp+0x8], ecx
	movzx eax, byte [esi+0xa]
	mov [esp], eax
	call Cvar_DomainToString_GetLines
	mov ebx, [esi+0x4]
	test ebx, ebx
	jz ConDrawInput_DetailedDvarMatch_50
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	sub ecx, 0x1
	test ecx, ecx
	jg ConDrawInput_DetailedDvarMatch_60
	mov edi, 0x1
ConDrawInput_DetailedDvarMatch_110:
	movss xmm0, dword [conDrawInputGlob+0x54]
	movss xmm4, dword [_float_6_00000000]
	subss xmm0, xmm4
	movss xmm1, dword [con+0x10254]
	mov eax, [con_inputHintBoxColor]
	add eax, 0xc
	mov edx, edi
	add edx, [ebp-0x1c]
	add edx, 0x1
	cvtsi2ss xmm3, edx
	mulss xmm3, [conDrawInputGlob+0x60]
	movss xmm2, dword [con+0x1025c]
	subss xmm2, xmm1
	movaps xmm5, xmm0
	subss xmm5, xmm1
	addss xmm3, [_float_12_00000000]
	subss xmm2, xmm5
	movss xmm1, dword [conDrawInputGlob+0x58]
	subss xmm1, xmm4
	call ConDraw_Box
	mov edx, [esi+0x4]
	test edx, edx
	jz ConDrawInput_DetailedDvarMatch_70
	mov dword [esp+0x24], 0x0
	mov dword [esp+0x20], con_inputDvarDescriptionColor
	mov dword [esp+0x1c], 0x0
	mov eax, 0x3f800000
	mov [esp+0x18], eax
	mov [esp+0x14], eax
	movss xmm0, dword [conDrawInputGlob+0x58]
	addss xmm0, [conDrawInputGlob+0x60]
	movss [esp+0x10], xmm0
	mov eax, [conDrawInputGlob+0x54]
	mov [esp+0xc], eax
	mov eax, cls
	mov eax, [eax+0x2dbff8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x7fffffff
	mov [esp], edx
	call R_AddCmdDrawText
	test edi, edi
	jle ConDrawInput_DetailedDvarMatch_70
	xor eax, eax
	movss xmm0, dword [conDrawInputGlob+0x58]
	mov edx, [conDrawInputGlob+0x5c]
ConDrawInput_DetailedDvarMatch_80:
	addss xmm0, [conDrawInputGlob+0x60]
	movss [conDrawInputGlob+0x58], xmm0
	mov [conDrawInputGlob+0x54], edx
	add eax, 0x1
	cmp edi, eax
	jnz ConDrawInput_DetailedDvarMatch_80
ConDrawInput_DetailedDvarMatch_120:
	mov dword [esp+0x24], 0x0
	mov dword [esp+0x20], con_inputDvarInfoColor
	mov dword [esp+0x1c], 0x0
	mov eax, 0x3f800000
	mov [esp+0x18], eax
	mov [esp+0x14], eax
	addss xmm0, [conDrawInputGlob+0x60]
	movss [esp+0x10], xmm0
	mov eax, [conDrawInputGlob+0x54]
	mov [esp+0xc], eax
	mov eax, cls
	mov eax, [eax+0x2dbff8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x7fffffff
	lea eax, [ebp-0x41c]
	mov [esp], eax
	call R_AddCmdDrawText
	movss xmm0, dword [conDrawInputGlob+0x58]
	addss xmm0, [conDrawInputGlob+0x60]
	movss [conDrawInputGlob+0x58], xmm0
	mov eax, [conDrawInputGlob+0x5c]
	mov [conDrawInputGlob+0x54], eax
	cmp byte [esi+0xa], 0x6
	jnz ConDrawInput_DetailedDvarMatch_10
	mov edx, cmd_args
	mov eax, [edx]
	cmp dword [edx+eax*4+0x44], 0x2
	jnz ConDrawInput_DetailedDvarMatch_10
	mov edx, [esi+0x3c]
	mov eax, [esi+0x40]
	call ConDrawInput_AutoCompleteArg
ConDrawInput_DetailedDvarMatch_10:
	add esp, 0x45c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ConDrawInput_DetailedDvarMatch_30:
	movss xmm3, dword [_float_2_00000000]
	jmp ConDrawInput_DetailedDvarMatch_90
ConDrawInput_DetailedDvarMatch_60:
	mov edi, 0x1
	xor edx, edx
ConDrawInput_DetailedDvarMatch_100:
	lea eax, [edi+0x1]
	cmp byte [edx+ebx], 0xa
	cmovz edi, eax
	add edx, 0x1
	cmp ecx, edx
	jnz ConDrawInput_DetailedDvarMatch_100
	jmp ConDrawInput_DetailedDvarMatch_110
ConDrawInput_DetailedDvarMatch_70:
	movss xmm0, dword [conDrawInputGlob+0x58]
	jmp ConDrawInput_DetailedDvarMatch_120
ConDrawInput_DetailedDvarMatch_50:
	xor edi, edi
	jmp ConDrawInput_DetailedDvarMatch_110
ConDrawInput_DetailedDvarMatch_40:
	mov dword [esp+0x24], 0x0
	mov dword [esp+0x20], con_inputDvarInactiveValueColor
	mov dword [esp+0x1c], 0x0
	mov [esp+0x18], ebx
	mov [esp+0x14], ebx
	addss xmm0, [conDrawInputGlob+0x60]
	movss [esp+0x10], xmm0
	mov [esp+0xc], eax
	mov edx, cls
	mov eax, [edx+0x2dbff8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x7fffffff
	mov dword [esp], _cstring___latched_value
	call R_AddCmdDrawText
	movss xmm0, dword [conDrawInputGlob+0x54]
	addss xmm0, [_float_300_00000000]
	movss [conDrawInputGlob+0x54], xmm0
	mov [esp], esi
	call Cvar_DisplayableLatchedValue
	mov dword [esp+0x24], 0x0
	mov dword [esp+0x20], con_inputDvarInactiveValueColor
	mov dword [esp+0x1c], 0x0
	mov [esp+0x18], ebx
	mov [esp+0x14], ebx
	movss xmm0, dword [conDrawInputGlob+0x58]
	addss xmm0, [conDrawInputGlob+0x60]
	movss [esp+0x10], xmm0
	mov edx, [conDrawInputGlob+0x54]
	mov [esp+0xc], edx
	mov ecx, cls
	mov edx, [ecx+0x2dbff8]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x28
	mov [esp], eax
	call R_AddCmdDrawText
	movss xmm0, dword [conDrawInputGlob+0x58]
	addss xmm0, [conDrawInputGlob+0x60]
	movss [conDrawInputGlob+0x58], xmm0
	mov eax, [conDrawInputGlob+0x5c]
	mov [conDrawInputGlob+0x54], eax
	jmp ConDrawInput_DetailedDvarMatch_130


;ConDrawInput_DetailedCmdMatch(char const*)
ConDrawInput_DetailedCmdMatch:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x44
	mov ebx, [ebp+0x8]
	mov eax, [conDrawInputGlob+0x4c]
	mov [esp+0x8], eax
	mov eax, [conDrawInputGlob+0x48]
	mov [esp+0x4], eax
	mov [esp], ebx
	call Con_IsAutoCompleteMatch
	test al, al
	jz ConDrawInput_DetailedCmdMatch_10
	cmp byte [conDrawInputGlob+0x50], 0x0
	jz ConDrawInput_DetailedCmdMatch_20
	mov eax, [conDrawInputGlob+0x4c]
	cmp byte [ebx+eax], 0x0
	jnz ConDrawInput_DetailedCmdMatch_10
ConDrawInput_DetailedCmdMatch_20:
	movss xmm0, dword [conDrawInputGlob+0x54]
	movss xmm5, dword [_float_6_00000000]
	subss xmm0, xmm5
	movss xmm1, dword [con+0x10254]
	mov eax, [con_inputHintBoxColor]
	add eax, 0xc
	movss xmm2, dword [con+0x1025c]
	subss xmm2, xmm1
	movaps xmm4, xmm0
	subss xmm4, xmm1
	movss xmm1, dword [_float_12_00000000]
	movss xmm3, dword [conDrawInputGlob+0x60]
	addss xmm3, xmm1
	subss xmm2, xmm4
	movss xmm1, dword [conDrawInputGlob+0x58]
	subss xmm1, xmm5
	call ConDraw_Box
	mov dword [esp+0x24], 0x0
	mov dword [esp+0x20], con_inputCommandMatchColor
	mov dword [esp+0x1c], 0x0
	mov eax, 0x3f800000
	mov [esp+0x18], eax
	mov [esp+0x14], eax
	movss xmm0, dword [conDrawInputGlob+0x58]
	addss xmm0, [conDrawInputGlob+0x60]
	movss [esp+0x10], xmm0
	mov eax, [conDrawInputGlob+0x54]
	mov [esp+0xc], eax
	mov eax, cls
	mov eax, [eax+0x2dbff8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x7fffffff
	mov [esp], ebx
	call R_AddCmdDrawText
	movss xmm0, dword [conDrawInputGlob+0x58]
	addss xmm0, [conDrawInputGlob+0x60]
	movss [conDrawInputGlob+0x58], xmm0
	mov eax, [conDrawInputGlob+0x5c]
	mov [conDrawInputGlob+0x54], eax
	mov edx, cmd_args
	mov eax, [edx]
	cmp dword [edx+eax*4+0x44], 0x2
	jz ConDrawInput_DetailedCmdMatch_30
ConDrawInput_DetailedCmdMatch_10:
	add esp, 0x44
	pop ebx
	pop ebp
	ret
ConDrawInput_DetailedCmdMatch_30:
	mov dword [esp+0x8], 0xa
	lea eax, [ebp-0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call Cmd_GetAutoCompleteFileList
	mov ebx, eax
	mov edx, [ebp-0xc]
	test edx, edx
	jz ConDrawInput_DetailedCmdMatch_10
	call ConDrawInput_AutoCompleteArg
	mov dword [esp+0x4], 0xa
	mov [esp], ebx
	call FS_FreeFileList
	jmp ConDrawInput_DetailedCmdMatch_10
	nop


;ConDrawInput_CmdMatch(char const*)
ConDrawInput_CmdMatch:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x34
	mov ebx, [ebp+0x8]
	mov eax, [conDrawInputGlob+0x4c]
	mov [esp+0x8], eax
	mov eax, [conDrawInputGlob+0x48]
	mov [esp+0x4], eax
	mov [esp], ebx
	call Con_IsAutoCompleteMatch
	test al, al
	jz ConDrawInput_CmdMatch_10
	mov dword [esp+0x24], 0x0
	mov dword [esp+0x20], con_inputCommandMatchColor
	mov dword [esp+0x1c], 0x0
	mov eax, 0x3f800000
	mov [esp+0x18], eax
	mov [esp+0x14], eax
	movss xmm0, dword [conDrawInputGlob+0x58]
	addss xmm0, [conDrawInputGlob+0x60]
	movss [esp+0x10], xmm0
	mov eax, [conDrawInputGlob+0x54]
	mov [esp+0xc], eax
	mov eax, cls
	mov eax, [eax+0x2dbff8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x7fffffff
	mov [esp], ebx
	call R_AddCmdDrawText
	movss xmm0, dword [conDrawInputGlob+0x58]
	addss xmm0, [conDrawInputGlob+0x60]
	movss [conDrawInputGlob+0x58], xmm0
	mov eax, [conDrawInputGlob+0x5c]
	mov [conDrawInputGlob+0x54], eax
ConDrawInput_CmdMatch_10:
	add esp, 0x34
	pop ebx
	pop ebp
	ret
	nop


;Con_Bottom()
Con_Bottom:
	push ebp
	mov ebp, esp
	mov eax, [con+0x30]
	mov [con+0x1023c], eax
	pop ebp
	ret
	nop


;Con_PageUp()
Con_PageUp:
	push ebp
	mov ebp, esp
	mov eax, [con+0x1023c]
	sub eax, 0x2
	mov [con+0x1023c], eax
	mov edx, [con+0x1024c]
	cmp eax, edx
	jge Con_PageUp_10
	mov eax, [con+0x30]
	cmp edx, eax
	cmovg edx, eax
	mov [con+0x1023c], edx
Con_PageUp_10:
	pop ebp
	ret


;Con_DrawSay(int, int, int)
Con_DrawSay:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov dword [esp+0x4], 0x20
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Key_IsCatcherActive
	test al, al
	jz Con_DrawSay_10
	mov edx, [ebp+0x8]
	lea eax, [edx+edx*2]
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*8]
	lea eax, [edx+eax*4]
	shl eax, 0x3
	add eax, playerKeys
	mov eax, [eax+0x118]
	test eax, eax
	jz Con_DrawSay_20
	mov dword [esp], _cstring_exe_sayteam
Con_DrawSay_30:
	call SEH_SafeTranslateString
	mov [esp+0x4], eax
	mov dword [esp], _cstring_s_
	call va
	mov [ebp-0x20], eax
	mov eax, [ebp+0x8]
	shl eax, 0x6
	mov edx, [ebp+0x8]
	lea edi, [eax+edx*4]
	add edi, scrPlaceView
	lea ebx, [edx+edx*2]
	lea ebx, [edx+ebx*4]
	lea ebx, [edx+ebx*8]
	lea ebx, [edx+ebx*4]
	mov eax, playerKeys
	lea ebx, [eax+ebx*8]
	movss xmm0, dword [ebx+0x10]
	divss xmm0, dword [_float_48_00000000]
	movss [esp+0x8], xmm0
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	movss [ebp-0x38], xmm0
	call UI_GetFontHandle
	mov esi, eax
	movss xmm0, dword [ebp-0x38]
	movss [esp+0x4], xmm0
	mov [esp], eax
	call R_NormalizedTextScale
	fstp dword [ebp-0x1c]
	mov [esp], esi
	call R_TextHeight
	mov dword [esp+0x2c], 0x3
	mov edx, colorWhite
	mov [esp+0x28], edx
	movss xmm0, dword [ebp-0x1c]
	movss [esp+0x24], xmm0
	movss [esp+0x20], xmm0
	mov dword [esp+0x1c], 0x1
	mov dword [esp+0x18], 0x1
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0x1c]
	cvttss2si eax, xmm0
	add eax, [ebp+0x10]
	cvtsi2ss xmm0, eax
	movss [esp+0x14], xmm0
	cvtsi2ss xmm0, dword [ebp+0xc]
	movss [esp+0x10], xmm0
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0x7fffffff
	mov eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov [esp], edi
	call CL_DrawText
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x0
	mov edx, [ebp-0x20]
	mov [esp], edx
	call R_TextWidth
	mov dword [esp+0x14], 0x1
	mov dword [esp+0x10], 0x1
	mov edx, [ebp+0x10]
	mov [esp+0xc], edx
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0x1c]
	cvttss2si eax, xmm0
	add eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Field_Draw
Con_DrawSay_10:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Con_DrawSay_20:
	mov dword [esp], _cstring_exe_say
	jmp Con_DrawSay_30
	nop


;Con_IsActive(int)
Con_IsActive:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], 0x1
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Key_IsCatcherActive
	test al, al
	setnz al
	movzx eax, al
	leave
	ret
	nop


;Con_PageDown()
Con_PageDown:
	push ebp
	mov ebp, esp
	mov eax, [con+0x1023c]
	add eax, 0x2
	mov edx, [con+0x30]
	cmp eax, edx
	cmovge eax, edx
	mov [con+0x1023c], eax
	pop ebp
	ret
	nop


;Con_Shutdown()
Con_Shutdown:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;PbMsgToScreen(char*, char*)
PbMsgToScreen:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov ecx, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov eax, com_dedicated
	mov eax, [eax]
	test eax, eax
	jz PbMsgToScreen_10
	mov eax, [eax+0xc]
	test eax, eax
	jnz PbMsgToScreen_20
PbMsgToScreen_10:
	mov [esp+0xc], edx
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_s_s
	mov dword [esp], pb_screen_buf
	call sprintf
	mov eax, cl_noprint
	mov eax, [eax]
	test eax, eax
	jz PbMsgToScreen_30
	cmp byte [eax+0xc], 0x0
	jnz PbMsgToScreen_30
	mov eax, [con]
	test eax, eax
	jz PbMsgToScreen_40
PbMsgToScreen_50:
	mov dword [esp], 0x0
	call Sys_EnterCriticalSection
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x37
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], pb_screen_buf
	mov dword [esp+0x4], 0x2
	mov dword [esp], 0x0
	call CL_ConsolePrint_AddLine
	mov dword [ebp+0x8], 0x0
	leave
	jmp Sys_LeaveCriticalSection
PbMsgToScreen_20:
	mov [esp+0xc], edx
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_s_s
	mov dword [esp], 0x10
	call Com_Printf
PbMsgToScreen_30:
	leave
	ret
PbMsgToScreen_40:
	call Con_OneTimeInit
	jmp PbMsgToScreen_50


;Con_DrawErrors(int, int, int, float)
Con_DrawErrors:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov esi, [ebp+0x8]
	mov ebx, 0x3f800000
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov eax, esi
	shl eax, 0x6
	lea eax, [eax+esi*4]
	add eax, scrPlaceView
	mov [esp], eax
	call UI_GetFontHandle
	mov edi, eax
	mov [ebp-0x28], ebx
	mov [ebp-0x24], ebx
	mov [ebp-0x20], ebx
	mov eax, [ebp+0x14]
	mov [ebp-0x1c], eax
	lea eax, [esi+esi*8]
	shl eax, 0x5
	add eax, esi
	lea eax, [esi+eax*4]
	lea eax, [esi+eax*2]
	lea ebx, [eax*8+con+0x149e8]
	mov eax, clients
	cmp dword [eax+0x28], 0x5
	jz Con_DrawErrors_10
	mov [esp], esi
	call CL_ShouldDisplayHud
	test al, al
	jz Con_DrawErrors_20
Con_DrawErrors_10:
	xor eax, eax
Con_DrawErrors_40:
	test eax, eax
	jnz Con_DrawErrors_30
	mov dword [esp+0x20], 0x4
	mov dword [esp+0x1c], 0x3
	lea eax, [ebp-0x28]
	mov [esp+0x18], eax
	mov [esp+0x14], edi
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0xc
	mov eax, [ebp+0x10]
	mov [esp], eax
	movss xmm0, dword [_float_1_00000000]
	mov ecx, [ebp+0xc]
	mov edx, ebx
	mov eax, esi
	call Con_DrawMessageWindowOldToNew
Con_DrawErrors_30:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Con_DrawErrors_20:
	mov eax, 0x1
	jmp Con_DrawErrors_40


;Con_TimeJumped(int, int)
Con_TimeJumped:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov esi, [ebp+0xc]
	mov eax, [con+0x30]
	test eax, eax
	jle Con_TimeJumped_10
	xor ecx, ecx
Con_TimeJumped_20:
	mov eax, ecx
	add eax, [con+0x2c]
	cdq
	idiv dword [con+0x14]
	lea edx, [edx+edx*2]
	mov eax, [con+0x4]
	mov edx, [eax+edx*8]
	mov eax, [con+0x8]
	lea edx, [eax+edx*8]
	mov eax, [edx+0x4]
	sub eax, [edx]
	mov [edx], esi
	lea eax, [esi+eax]
	mov [edx+0x4], eax
	add ecx, 0x1
	cmp ecx, [con+0x30]
	jl Con_TimeJumped_20
Con_TimeJumped_10:
	xor edi, edi
	mov edx, [ebp+0x8]
	lea eax, [edx+edx*8]
	shl eax, 0x5
	add eax, edx
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*2]
	lea ecx, [eax*8+con+0x12264]
Con_TimeJumped_50:
	mov eax, [ecx+0x2c]
	test eax, eax
	jle Con_TimeJumped_30
	xor ebx, ebx
Con_TimeJumped_40:
	mov eax, ebx
	add eax, [ecx+0x28]
	cdq
	idiv dword [ecx+0x10]
	mov eax, [ecx]
	lea edx, [edx+edx*2]
	mov edx, [eax+edx*8]
	mov eax, [ecx+0x4]
	lea edx, [eax+edx*8]
	mov eax, [edx+0x4]
	sub eax, [edx]
	mov [edx], esi
	lea eax, [esi+eax]
	mov [edx+0x4], eax
	add ebx, 0x1
	cmp [ecx+0x2c], ebx
	jg Con_TimeJumped_40
Con_TimeJumped_30:
	add edi, 0x1
	add ecx, 0x34
	cmp edi, 0x4
	jnz Con_TimeJumped_50
	mov edx, [ebp+0x8]
	lea eax, [edx+edx*8]
	shl eax, 0x5
	add eax, edx
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*2]
	lea ecx, [eax*8+con+0x13934]
	mov ebx, [ecx+0x2c]
	test ebx, ebx
	jle Con_TimeJumped_60
	xor ebx, ebx
Con_TimeJumped_70:
	mov eax, ebx
	add eax, [ecx+0x28]
	cdq
	idiv dword [ecx+0x10]
	mov eax, [ecx]
	lea edx, [edx+edx*2]
	mov edx, [eax+edx*8]
	mov eax, [ecx+0x4]
	lea edx, [eax+edx*8]
	mov eax, [edx+0x4]
	sub eax, [edx]
	mov [edx], esi
	lea eax, [esi+eax]
	mov [edx+0x4], eax
	add ebx, 0x1
	cmp ebx, [ecx+0x2c]
	jl Con_TimeJumped_70
	mov edx, [ebp+0x8]
Con_TimeJumped_60:
	lea eax, [edx+edx*8]
	shl eax, 0x5
	add eax, edx
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*2]
	lea ecx, [eax*8+con+0x149e8]
	mov eax, [ecx+0x2c]
	test eax, eax
	jle Con_TimeJumped_80
	xor ebx, ebx
Con_TimeJumped_90:
	mov eax, ebx
	add eax, [ecx+0x28]
	cdq
	idiv dword [ecx+0x10]
	mov eax, [ecx]
	lea edx, [edx+edx*2]
	mov edx, [eax+edx*8]
	mov eax, [ecx+0x4]
	lea edx, [eax+edx*8]
	mov eax, [edx+0x4]
	sub eax, [edx]
	mov [edx], esi
	lea eax, [esi+eax]
	mov [edx+0x4], eax
	add ebx, 0x1
	cmp ebx, [ecx+0x2c]
	jl Con_TimeJumped_90
Con_TimeJumped_80:
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Con_TimeNudged(int, int)
Con_TimeNudged:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x14
	mov eax, clients
	mov eax, [eax+0x2fa0]
	mov [ebp-0x10], eax
	mov edx, [con+0x30]
	test edx, edx
	jle Con_TimeNudged_10
	mov ecx, 0xffffffff
	xor esi, esi
	mov edi, eax
	add edi, 0x3e8
	jmp Con_TimeNudged_20
Con_TimeNudged_60:
	mov eax, [con+0x8]
	lea edx, [eax+ebx*8]
	mov ecx, [ebp+0xc]
	add ecx, [edx]
	mov [edx], ecx
	mov eax, [ebp+0xc]
	add eax, [edx+0x4]
	mov [edx+0x4], eax
	test ecx, ecx
	js Con_TimeNudged_30
Con_TimeNudged_90:
	cmp ecx, edi
	jle Con_TimeNudged_40
	mov eax, [edx+0x4]
	sub eax, ecx
	mov [edx], edi
	lea eax, [edi+eax]
	mov [edx+0x4], eax
Con_TimeNudged_40:
	add esi, 0x1
	cmp esi, [con+0x30]
	jge Con_TimeNudged_50
Con_TimeNudged_70:
	mov ecx, ebx
Con_TimeNudged_20:
	mov eax, esi
	add eax, [con+0x2c]
	cdq
	idiv dword [con+0x14]
	lea edx, [edx+edx*2]
	mov eax, [con+0x4]
	mov ebx, [eax+edx*8]
	cmp ecx, ebx
	jnz Con_TimeNudged_60
	mov ebx, ecx
	add esi, 0x1
	cmp esi, [con+0x30]
	jl Con_TimeNudged_70
Con_TimeNudged_50:
	mov ecx, [ebp-0x10]
	jmp Con_TimeNudged_80
Con_TimeNudged_30:
	sub eax, ecx
	mov [edx+0x4], eax
	xor ecx, ecx
	mov dword [edx], 0x0
	jmp Con_TimeNudged_90
Con_TimeNudged_10:
	mov ecx, eax
Con_TimeNudged_80:
	mov dword [ebp-0x14], 0x0
	mov edx, [ebp+0x8]
	lea eax, [edx+edx*8]
	shl eax, 0x5
	add eax, edx
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*2]
	lea ebx, [eax*8+con+0x12264]
	add ecx, 0x3e8
	mov [ebp-0x20], ecx
Con_TimeNudged_150:
	mov eax, [ebx+0x2c]
	test eax, eax
	jle Con_TimeNudged_100
	mov ecx, 0xffffffff
	xor edi, edi
Con_TimeNudged_140:
	mov eax, edi
	add eax, [ebx+0x28]
	cdq
	idiv dword [ebx+0x10]
	mov eax, [ebx]
	lea edx, [edx+edx*2]
	mov esi, [eax+edx*8]
	cmp ecx, esi
	jz Con_TimeNudged_110
	mov eax, [ebx+0x4]
	lea edx, [eax+esi*8]
	mov ecx, [ebp+0xc]
	add ecx, [edx]
	mov [edx], ecx
	mov eax, [ebp+0xc]
	add eax, [edx+0x4]
	mov [edx+0x4], eax
	test ecx, ecx
	js Con_TimeNudged_120
Con_TimeNudged_260:
	cmp ecx, [ebp-0x20]
	jle Con_TimeNudged_130
	mov eax, [edx+0x4]
	sub eax, ecx
	mov ecx, [ebp-0x20]
	mov [edx], ecx
	add eax, ecx
	mov [edx+0x4], eax
Con_TimeNudged_130:
	mov ecx, esi
Con_TimeNudged_110:
	add edi, 0x1
	cmp [ebx+0x2c], edi
	jg Con_TimeNudged_140
Con_TimeNudged_100:
	add dword [ebp-0x14], 0x1
	add ebx, 0x34
	cmp dword [ebp-0x14], 0x4
	jnz Con_TimeNudged_150
	mov edx, [ebp+0x8]
	lea eax, [edx+edx*8]
	shl eax, 0x5
	add eax, edx
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*2]
	lea ebx, [eax*8+con+0x13934]
	mov eax, [ebx+0x2c]
	test eax, eax
	jle Con_TimeNudged_160
	mov ecx, 0xffffffff
	xor edi, edi
	mov eax, [ebp-0x10]
	add eax, 0x3e8
	mov [ebp-0x1c], eax
Con_TimeNudged_200:
	mov eax, edi
	add eax, [ebx+0x28]
	cdq
	idiv dword [ebx+0x10]
	mov eax, [ebx]
	lea edx, [edx+edx*2]
	mov esi, [eax+edx*8]
	cmp ecx, esi
	jz Con_TimeNudged_170
	mov eax, [ebx+0x4]
	lea edx, [eax+esi*8]
	mov ecx, [ebp+0xc]
	add ecx, [edx]
	mov [edx], ecx
	mov eax, [ebp+0xc]
	add eax, [edx+0x4]
	mov [edx+0x4], eax
	test ecx, ecx
	js Con_TimeNudged_180
Con_TimeNudged_280:
	cmp ecx, [ebp-0x1c]
	jle Con_TimeNudged_190
	mov eax, [edx+0x4]
	sub eax, ecx
	mov ecx, [ebp-0x1c]
	mov [edx], ecx
	add eax, ecx
	mov [edx+0x4], eax
Con_TimeNudged_190:
	mov ecx, esi
Con_TimeNudged_170:
	add edi, 0x1
	cmp edi, [ebx+0x2c]
	jl Con_TimeNudged_200
	mov edx, [ebp+0x8]
Con_TimeNudged_160:
	lea eax, [edx+edx*8]
	shl eax, 0x5
	add eax, edx
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*2]
	lea ebx, [eax*8+con+0x149e8]
	mov eax, [ebx+0x2c]
	test eax, eax
	jle Con_TimeNudged_210
	mov ecx, 0xffffffff
	xor edi, edi
	mov eax, [ebp-0x10]
	add eax, 0x3e8
	mov [ebp-0x18], eax
Con_TimeNudged_250:
	mov eax, edi
	add eax, [ebx+0x28]
	cdq
	idiv dword [ebx+0x10]
	mov eax, [ebx]
	lea edx, [edx+edx*2]
	mov esi, [eax+edx*8]
	cmp ecx, esi
	jz Con_TimeNudged_220
	mov eax, [ebx+0x4]
	lea edx, [eax+esi*8]
	mov ecx, [ebp+0xc]
	add ecx, [edx]
	mov [edx], ecx
	mov eax, [ebp+0xc]
	add eax, [edx+0x4]
	mov [edx+0x4], eax
	test ecx, ecx
	js Con_TimeNudged_230
Con_TimeNudged_270:
	cmp ecx, [ebp-0x18]
	jle Con_TimeNudged_240
	mov eax, [edx+0x4]
	sub eax, ecx
	mov ecx, [ebp-0x18]
	mov [edx], ecx
	add eax, ecx
	mov [edx+0x4], eax
Con_TimeNudged_240:
	mov ecx, esi
Con_TimeNudged_220:
	add edi, 0x1
	cmp [ebx+0x2c], edi
	jg Con_TimeNudged_250
Con_TimeNudged_210:
	add esp, 0x14
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Con_TimeNudged_120:
	sub eax, ecx
	mov [edx+0x4], eax
	xor ecx, ecx
	mov dword [edx], 0x0
	jmp Con_TimeNudged_260
Con_TimeNudged_230:
	sub eax, ecx
	mov [edx+0x4], eax
	xor ecx, ecx
	mov dword [edx], 0x0
	jmp Con_TimeNudged_270
Con_TimeNudged_180:
	sub eax, ecx
	mov [edx+0x4], eax
	xor ecx, ecx
	mov dword [edx], 0x0
	jmp Con_TimeNudged_280


;CL_ConsolePrint(int, int, char const*, int, int, int)
CL_ConsolePrint:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov eax, [ebp+0x8]
	mov [ebp-0x1c], eax
	mov esi, [ebp+0xc]
	mov eax, [ebp+0x10]
	mov [ebp-0x20], eax
	mov eax, [ebp+0x14]
	mov [ebp-0x24], eax
	mov edi, [ebp+0x18]
	mov ebx, [ebp+0x1c]
	mov eax, cl_noprint
	mov eax, [eax]
	test eax, eax
	jz CL_ConsolePrint_10
	cmp byte [eax+0xc], 0x0
	jnz CL_ConsolePrint_10
	cmp esi, 0x6
	jz CL_ConsolePrint_10
	mov ecx, [con]
	test ecx, ecx
	jz CL_ConsolePrint_20
CL_ConsolePrint_30:
	mov dword [esp], 0x0
	call Sys_EnterCriticalSection
	mov [esp+0x18], ebx
	mov dword [esp+0x14], 0x37
	mov [esp+0x10], edi
	mov eax, [ebp-0x24]
	mov [esp+0xc], eax
	mov eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call CL_ConsolePrint_AddLine
	mov dword [ebp+0x8], 0x0
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Sys_LeaveCriticalSection
CL_ConsolePrint_10:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_ConsolePrint_20:
	call Con_OneTimeInit
	jmp CL_ConsolePrint_30
	nop


;Con_CheckResize()
Con_CheckResize:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov dword [esp+0x8], 0x1
	mov esi, 0x40800000
	mov [esp+0x4], esi
	mov ebx, scrPlaceFull
	mov [esp], ebx
	call ScrPlace_ApplyX
	fstp dword [esp]
	call floorf
	fstp dword [con+0x10254]
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], esi
	mov [esp], ebx
	call ScrPlace_ApplyY
	fstp dword [esp]
	call floorf
	fstp dword [con+0x10258]
	mov dword [esp+0x8], 0x3
	mov esi, 0xc0800000
	mov [esp+0x4], esi
	mov [esp], ebx
	call ScrPlace_ApplyX
	fstp dword [esp]
	call floorf
	fstp dword [con+0x1025c]
	mov dword [esp+0x8], 0x3
	mov [esp+0x4], esi
	mov [esp], ebx
	call ScrPlace_ApplyY
	fstp dword [esp]
	call floorf
	fstp dword [con+0x10260]
	mov eax, cls
	mov eax, [eax+0x2dbff8]
	test eax, eax
	jz Con_CheckResize_10
	mov [esp], eax
	call R_TextHeight
	mov ecx, eax
	mov [con+0x10248], eax
	movss xmm0, dword [con+0x10260]
	subss xmm0, [con+0x10258]
	lea edx, [eax+eax]
	cvtsi2ss xmm1, edx
	subss xmm0, xmm1
	subss xmm0, [_float_24_00000000]
	cvttss2si ebx, xmm0
	mov eax, ebx
	cdq
	idiv ecx
	mov [con+0x1024c], eax
	movss xmm0, dword [con+0x1025c]
	subss xmm0, [con+0x10254]
	subss xmm0, [_float_10_00000000]
	subss xmm0, [_float_18_00000000]
	cvttss2si eax, xmm0
	mov [con+0x10250], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Con_CheckResize_10:
	mov dword [con+0x10248], 0x0
	mov dword [con+0x1024c], 0x0
	mov dword [con+0x10250], 0x0
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;Con_ClearNotify(int)
Con_ClearNotify:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	xor ecx, ecx
	lea eax, [edx+edx*8]
	shl eax, 0x5
	add eax, edx
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*2]
	lea eax, [eax*8+con+0x12264]
Con_ClearNotify_10:
	mov dword [eax+0x24], 0x0
	mov dword [eax+0x30], 0x0
	mov dword [eax+0x28], 0x0
	mov dword [eax+0x2c], 0x0
	add ecx, 0x1
	add eax, 0x34
	cmp ecx, 0x4
	jnz Con_ClearNotify_10
	pop ebp
	ret
	add [eax], al


;Con_DrawConsole(int)
Con_DrawConsole:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1bc
	call Con_CheckResize
	mov dword [esp+0x4], 0x1
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Key_IsCatcherActive
	test al, al
	jnz Con_DrawConsole_10
Con_DrawConsole_40:
	add esp, 0x1bc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Con_DrawConsole_10:
	mov dword [esp], 0x0
	call Sys_EnterCriticalSection
	mov ebx, [con+0x10238]
	test ebx, ebx
	jnz Con_DrawConsole_20
Con_DrawConsole_340:
	mov dword [esp], 0x0
	call Sys_LeaveCriticalSection
	mov dword [esp+0x4], 0x1
	mov edx, [ebp+0x8]
	mov [esp], edx
	call Key_IsCatcherActive
	xor edx, edx
	test al, al
	movzx eax, byte [con+0x10244]
	cmovnz edx, eax
	mov [con+0x10244], dl
	test dl, dl
	jnz Con_DrawConsole_30
Con_DrawConsole_320:
	mov dword [esp+0x4], 0x1
	mov edi, [ebp+0x8]
	mov [esp], edi
	call Key_IsCatcherActive
	test al, al
	jz Con_DrawConsole_40
	call Sys_IsMainThread
	test al, al
	jz Con_DrawConsole_40
	mov dword [esp+0x8], _cstring_17
	mov dword [esp+0x4], _cstring_cod4_mp
	mov dword [esp], _cstring_s_s_
	call va
	mov esi, eax
	mov ebx, cls
	mov eax, [ebx+0x2dbff8]
	mov [esp], eax
	call R_TextHeight
	cvtsi2ss xmm3, eax
	movss [conDrawInputGlob+0x60], xmm3
	movss xmm1, dword [con+0x10254]
	movaps xmm0, xmm1
	addss xmm0, [_float_6_00000000]
	movss [conDrawInputGlob+0x54], xmm0
	movss xmm5, dword [con+0x10258]
	addss xmm5, [_float_6_00000000]
	movss [conDrawInputGlob+0x58], xmm5
	movss [conDrawInputGlob+0x5c], xmm0
	subss xmm0, [_float_6_00000000]
	mov eax, [con_inputBoxColor]
	add eax, 0xc
	movss xmm2, dword [con+0x1025c]
	subss xmm2, xmm1
	movaps xmm4, xmm0
	subss xmm4, xmm1
	addss xmm3, [_float_12_00000000]
	subss xmm2, xmm4
	movaps xmm1, xmm5
	subss xmm1, [_float_6_00000000]
	call ConDraw_Box
	mov dword [esp+0x24], 0x0
	mov dword [esp+0x20], con_versionColor
	mov dword [esp+0x1c], 0x0
	mov eax, 0x3f800000
	mov [esp+0x18], eax
	mov [esp+0x14], eax
	movss xmm0, dword [conDrawInputGlob+0x58]
	addss xmm0, [conDrawInputGlob+0x60]
	movss [esp+0x10], xmm0
	mov eax, [conDrawInputGlob+0x54]
	mov [esp+0xc], eax
	mov eax, [ebx+0x2dbff8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x7fffffff
	mov [esp], esi
	call R_AddCmdDrawText
	movss xmm6, dword [conDrawInputGlob+0x54]
	movss [ebp-0x138], xmm6
	mov eax, [ebx+0x2dbff8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call R_TextWidth
	cvtsi2ss xmm1, eax
	addss xmm1, [ebp-0x138]
	movss [conDrawInputGlob+0x54], xmm1
	movss [conDrawInputGlob+0x5c], xmm1
	mov edx, g_consoleField
	movss xmm0, dword [con+0x1025c]
	subss xmm0, [_float_6_00000000]
	subss xmm0, xmm1
	cvttss2si eax, xmm0
	mov [edx+0xc], eax
	add edx, 0x18
	mov [esp], edx
	call Cmd_TokenizeString
	mov eax, cmd_args
	mov edx, [eax]
	mov ecx, [eax+edx*4+0x44]
	test ecx, ecx
	jle Con_DrawConsole_50
	mov eax, [eax+edx*4+0x64]
	mov ebx, [eax]
Con_DrawConsole_440:
	movzx eax, byte [ebx]
	cmp al, 0x5c
	jz Con_DrawConsole_60
	cmp al, 0x2f
	jz Con_DrawConsole_60
	movsx edx, byte [ebx]
	test edx, 0xffffff80
	jnz Con_DrawConsole_70
Con_DrawConsole_90:
	mov eax, [0xd5cc084]
	mov eax, [eax+edx*4+0x34]
	shr eax, 0xe
	and eax, 0x1
	test eax, eax
	jz Con_DrawConsole_80
Con_DrawConsole_60:
	add ebx, 0x1
	movsx edx, byte [ebx]
	test edx, 0xffffff80
	jz Con_DrawConsole_90
Con_DrawConsole_70:
	mov dword [esp+0x4], 0x4000
	mov [esp], edx
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	test eax, eax
	jnz Con_DrawConsole_60
Con_DrawConsole_80:
	mov [conDrawInputGlob+0x48], ebx
	cld
	mov ecx, 0xffffffff
	mov edi, ebx
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [conDrawInputGlob+0x4c], ecx
	mov byte [conDrawInputGlob], 0x0
	test ecx, ecx
	jz Con_DrawConsole_100
	mov esi, cmd_args
	mov eax, [esi]
	cmp dword [esi+eax*4+0x44], 0x1
	jle Con_DrawConsole_110
	mov [esp], ebx
	call Con_IsDvarCommand
	test al, al
	jz Con_DrawConsole_110
	mov byte [ebp-0x139], 0x1
	mov byte [ebp-0x119], 0x1
	mov edx, [esi]
	cmp dword [esi+edx*4+0x44], 0x1
	jle Con_DrawConsole_120
	mov eax, [esi+edx*4+0x64]
	mov edx, [eax+0x4]
Con_DrawConsole_610:
	mov [conDrawInputGlob+0x48], edx
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, edx
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [conDrawInputGlob+0x4c], ecx
	test ecx, ecx
	jnz Con_DrawConsole_130
	mov byte [conDrawInputGlob+0x51], 0x0
	mov dword [esp+0x14], 0x5
	mov dword [esp+0x10], 0x5
	cvttss2si eax, [conDrawInputGlob+0x58]
	mov [esp+0xc], eax
	cvttss2si eax, [conDrawInputGlob+0x54]
	mov [esp+0x8], eax
	mov eax, g_consoleField
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call Field_Draw
	call Cmd_EndTokenizedString
	jmp Con_DrawConsole_40
Con_DrawConsole_110:
	mov byte [ebp-0x139], 0x0
	mov byte [ebp-0x119], 0x0
Con_DrawConsole_130:
	mov eax, [con_matchPrefixOnly]
	cmp byte [eax+0xc], 0x0
	jnz Con_DrawConsole_140
	mov byte [conDrawInputGlob+0x50], 0x0
	mov dword [conDrawInputGlob+0x44], 0x0
	mov byte [con_ignoreMatchPrefixOnly], 0x0
	mov dword [esp], ConDrawInput_IncrMatchCounter
	call Cvar_ForEachName
	cmp byte [ebp-0x139], 0x0
	jz Con_DrawConsole_150
	mov edx, [conDrawInputGlob+0x44]
	mov [ebp-0x158], edx
Con_DrawConsole_360:
	mov edi, [ebp-0x158]
	test edi, edi
	jz Con_DrawConsole_160
	mov edx, [ebp-0x158]
	cmp edx, [conDrawInputGlob+0x40]
	jle Con_DrawConsole_170
	cmp byte [conDrawInputGlob], 0x0
	jnz Con_DrawConsole_180
Con_DrawConsole_170:
	mov dword [conDrawInputGlob+0x40], 0xffffffff
Con_DrawConsole_180:
	mov esi, [conDrawInputGlob+0x40]
	test esi, esi
	js Con_DrawConsole_190
	mov ecx, [conDrawInputGlob+0x48]
	mov [ebp-0x128], ecx
	cmp byte [ebp-0x119], 0x0
	jnz Con_DrawConsole_200
	mov dword [ebp-0x134], 0x0
	xor edx, edx
Con_DrawConsole_450:
	mov eax, [con_matchPrefixOnly]
	cmp byte [eax+0xc], 0x0
	jz Con_DrawConsole_210
	lea eax, [ebp-0x118]
	add eax, edx
	mov [ebp-0x130], eax
	mov edx, [ebp-0x128]
	mov [esp+0x4], edx
	mov dword [esp], conDrawInputGlob
	call I_stristr
	test eax, eax
	jz Con_DrawConsole_220
	sub eax, conDrawInputGlob
	mov [ebp-0x190], eax
	mov [esp+0x8], eax
	mov dword [esp+0x4], conDrawInputGlob
	mov ecx, [ebp-0x130]
	mov [esp], ecx
	call strncpy
	mov eax, [ebp-0x130]
	add eax, [ebp-0x190]
	mov word [eax], 0x325e
	mov byte [eax+0x2], 0x0
	mov esi, [ebp-0x190]
	add esi, 0x2
	cld
	mov ecx, 0xffffffff
	mov edi, [ebp-0x128]
	xor eax, eax
	repne scasb
	mov ebx, ecx
	not ebx
	sub ebx, 0x1
	mov [esp+0x8], ebx
	mov eax, [ebp-0x190]
	add eax, conDrawInputGlob
	mov [esp+0x4], eax
	mov eax, [ebp-0x130]
	add eax, esi
	mov [esp], eax
	call strncpy
	add esi, ebx
	mov eax, [ebp-0x130]
	add eax, esi
	mov word [eax], 0x375e
	mov byte [eax+0x2], 0x0
	add esi, 0x2
	mov eax, [ebp-0x190]
	lea edi, [eax+ebx+conDrawInputGlob]
	mov [esp+0x4], edi
	mov eax, [ebp-0x130]
	add eax, esi
	mov [esp], eax
	call strcpy
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	repne scasb
	not ecx
	lea ecx, [ecx+esi-0x1]
	mov edx, [ebp-0x130]
	mov byte [edx+ecx], 0x20
	lea eax, [ecx+0x1]
	mov byte [edx+eax], 0x0
Con_DrawConsole_590:
	mov edi, [ebp-0x134]
	add edi, eax
Con_DrawConsole_430:
	cvttss2si esi, [conDrawInputGlob+0x54]
	cvttss2si ebx, [conDrawInputGlob+0x58]
	lea eax, [ebp-0x118]
	mov [esp], eax
	call SEH_PrintStrlen
	mov [esp+0x20], edi
	mov [esp+0x1c], eax
	lea edx, [ebp-0x118]
	mov [esp+0x18], edx
	mov dword [esp+0x14], 0x5
	mov dword [esp+0x10], 0x5
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov eax, g_consoleField
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call Field_DrawTextOverride
Con_DrawConsole_580:
	movss xmm5, dword [conDrawInputGlob+0x58]
	addss xmm5, [conDrawInputGlob+0x60]
	addss xmm5, [conDrawInputGlob+0x60]
	movss [conDrawInputGlob+0x58], xmm5
	mov eax, [conDrawInputGlob+0x5c]
	mov [conDrawInputGlob+0x54], eax
	mov eax, [ebp-0x158]
	cmp eax, [con_inputMaxMatchesShown]
	jg Con_DrawConsole_230
	cmp dword [ebp-0x158], 0x1
	jz Con_DrawConsole_240
	cmp byte [conDrawInputGlob+0x50], 0x0
	jz Con_DrawConsole_250
	mov ebx, g_consoleField
	mov esi, [0xd5cc084]
	jmp Con_DrawConsole_260
Con_DrawConsole_280:
	mov eax, [esi+eax*4+0x34]
	shr eax, 0xe
	and eax, 0x1
Con_DrawConsole_290:
	test eax, eax
	jz Con_DrawConsole_270
	add ebx, 0x1
Con_DrawConsole_260:
	movsx eax, byte [ebx+0x18]
	test eax, 0xffffff80
	jz Con_DrawConsole_280
	mov dword [esp+0x4], 0x4000
	mov [esp], eax
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	jmp Con_DrawConsole_290
Con_DrawConsole_30:
	movss xmm0, dword [con+0x10254]
	movss [ebp-0x154], xmm0
	movss xmm5, dword [con+0x10258]
	movss xmm1, dword [con+0x1025c]
	subss xmm1, xmm0
	movss [ebp-0x150], xmm1
	movss xmm4, dword [con+0x10260]
	subss xmm4, xmm5
	movss xmm0, dword [_float_32_00000000]
	addss xmm5, xmm0
	subss xmm4, xmm0
	mov eax, [con_outputWindowColor]
	add eax, 0xc
	movaps xmm3, xmm4
	movaps xmm2, xmm1
	movaps xmm1, xmm5
	movss xmm0, dword [ebp-0x154]
	movss [ebp-0x178], xmm4
	movss [ebp-0x188], xmm5
	call ConDraw_Box
	movss xmm0, dword [_float_6_00000000]
	movss xmm2, dword [ebp-0x154]
	addss xmm2, xmm0
	movss [ebp-0x140], xmm2
	movss xmm5, dword [ebp-0x188]
	addss xmm5, xmm0
	movss [ebp-0x144], xmm5
	movss xmm4, dword [ebp-0x178]
	subss xmm4, [_float_12_00000000]
	movss [ebp-0x14c], xmm4
	call getBuildNumber
	mov dword [esp+0x8], _cstring_macosxsi386
	mov [esp+0x4], eax
	mov dword [esp], _cstring_build_s_s
	call va
	mov dword [esp+0xc], con_versionColor
	mov [esp+0x8], eax
	movss xmm0, dword [ebp-0x14c]
	subss xmm0, [_float_16_00000000]
	addss xmm0, [ebp-0x144]
	cvttss2si eax, xmm0
	mov [esp+0x4], eax
	cvttss2si eax, [ebp-0x140]
	mov [esp], eax
	call SCR_DrawSmallStringExt
	movss xmm4, dword [ebp-0x150]
	subss xmm4, [_float_12_00000000]
	movss xmm6, dword [ebp-0x140]
	addss xmm6, xmm4
	subss xmm6, [_float_10_00000000]
	movss [ebp-0x148], xmm6
	mov eax, [con_outputBarColor]
	add eax, 0xc
	movss xmm3, dword [ebp-0x14c]
	movss xmm2, dword [_float_10_00000000]
	movss xmm1, dword [ebp-0x144]
	movaps xmm0, xmm6
	call ConDraw_Box
	mov eax, [con+0x30]
	mov edx, [con+0x1024c]
	cmp eax, edx
	jle Con_DrawConsole_300
	sub eax, edx
	cvtsi2ss xmm0, eax
	movss xmm3, dword [_float_1_00000000]
	movaps xmm5, xmm3
	divss xmm5, xmm0
	mov eax, [con+0x1023c]
	sub eax, edx
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm5
	movaps xmm2, xmm0
	subss xmm2, xmm3
	pxor xmm1, xmm1
	movaps xmm4, xmm1
	cmpss xmm4, xmm2, 0x6
	movaps xmm2, xmm0
	andps xmm2, xmm4
	andnps xmm4, xmm3
	orps xmm4, xmm2
	movaps xmm2, xmm1
	subss xmm2, xmm0
	movaps xmm6, xmm1
	cmpss xmm6, xmm2, 0x6
	andps xmm4, xmm6
	orps xmm4, xmm1
	cvtsi2ss xmm0, edx
	mulss xmm5, xmm0
	mulss xmm5, [ebp-0x14c]
	movss [esp], xmm5
	movss [ebp-0x168], xmm1
	movss [ebp-0x178], xmm4
	call ceilf
	fstp dword [ebp-0x18c]
	movss xmm3, dword [ebp-0x18c]
	movss xmm0, dword [_float_10_00000000]
	subss xmm0, xmm3
	movss xmm1, dword [ebp-0x168]
	cmpss xmm1, xmm0, 0x6
	movaps xmm0, xmm3
	andps xmm0, xmm1
	movaps xmm3, xmm1
	movss xmm2, dword [_float_10_00000000]
	andnps xmm3, xmm2
	orps xmm3, xmm0
	mov eax, [con_outputSliderColor]
	add eax, 0xc
	movss xmm6, dword [ebp-0x144]
	addss xmm6, [ebp-0x14c]
	subss xmm6, xmm3
	movss [ebp-0x14c], xmm6
	subss xmm6, [ebp-0x144]
	movss xmm4, dword [ebp-0x178]
	mulss xmm4, xmm6
	movss xmm1, dword [ebp-0x144]
	addss xmm1, xmm4
	movss xmm0, dword [ebp-0x148]
	call ConDraw_Box
Con_DrawConsole_380:
	lea eax, [ebp-0x118]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x37
	mov dword [esp], 0x0
	call CL_LookupColor
	mov esi, [con+0x1024c]
	mov eax, [con+0x1023c]
	mov edi, eax
	sub edi, esi
	js Con_DrawConsole_310
Con_DrawConsole_390:
	test esi, esi
	jle Con_DrawConsole_320
	xor ebx, ebx
Con_DrawConsole_330:
	mov eax, edi
	add eax, [con+0x2c]
	lea eax, [ebx+eax]
	cdq
	idiv dword [con+0x14]
	lea edx, [edx+edx*2]
	mov eax, [con+0x4]
	lea edx, [eax+edx*8]
	cvtsi2ss xmm0, dword [con+0x10248]
	addss xmm0, [ebp-0x144]
	movss [ebp-0x144], xmm0
	mov dword [esp+0x28], 0x0
	lea eax, [ebp-0x118]
	mov [esp+0x24], eax
	mov dword [esp+0x20], 0x3f800000
	mov dword [esp+0x1c], 0x3f800000
	movss [esp+0x18], xmm0
	movss xmm0, dword [ebp-0x140]
	movss [esp+0x14], xmm0
	mov ecx, cls
	mov eax, [ecx+0x2dbff8]
	mov [esp+0x10], eax
	mov eax, [edx+0x8]
	mov [esp+0xc], eax
	mov eax, [edx+0x4]
	mov [esp+0x8], eax
	mov eax, [con+0x10]
	mov [esp+0x4], eax
	mov eax, [con+0xc]
	mov [esp], eax
	call R_AddCmdDrawConsoleText
	add ebx, 0x1
	cmp esi, ebx
	jnz Con_DrawConsole_330
	jmp Con_DrawConsole_320
Con_DrawConsole_20:
	mov dword [esp], 0x0
	mov ecx, 0x1
	mov edx, [con+0x10240]
	mov eax, [ebp+0x8]
	call Con_UpdateNotifyLine
	mov dword [con+0x10238], 0x0
	mov eax, [con+0x30]
	lea edx, [eax-0x1]
	cmp [con+0x1023c], edx
	cmovnz eax, [con+0x1023c]
	mov [con+0x1023c], eax
	jmp Con_DrawConsole_340
Con_DrawConsole_140:
	mov byte [conDrawInputGlob+0x50], 0x0
	mov dword [conDrawInputGlob+0x44], 0x0
	mov byte [con_ignoreMatchPrefixOnly], 0x1
	mov dword [esp], ConDrawInput_IncrMatchCounter
	call Cvar_ForEachName
	cmp byte [ebp-0x139], 0x0
	jz Con_DrawConsole_350
Con_DrawConsole_460:
	mov edi, [conDrawInputGlob+0x44]
	mov [ebp-0x158], edi
	cmp edi, [con_inputMaxMatchesShown]
	jle Con_DrawConsole_360
	mov byte [conDrawInputGlob+0x50], 0x0
	mov dword [conDrawInputGlob+0x44], 0x0
	mov byte [con_ignoreMatchPrefixOnly], 0x0
	mov dword [esp], ConDrawInput_IncrMatchCounter
	call Cvar_ForEachName
	mov dword [esp], ConDrawInput_IncrMatchCounter
	call Cmd_ForEach
	mov eax, [conDrawInputGlob+0x44]
	test eax, eax
	jz Con_DrawConsole_370
Con_DrawConsole_470:
	mov ecx, [conDrawInputGlob+0x44]
	mov [ebp-0x158], ecx
	jmp Con_DrawConsole_360
Con_DrawConsole_100:
	mov byte [conDrawInputGlob+0x51], 0x0
Con_DrawConsole_160:
	mov dword [esp+0x14], 0x5
	mov dword [esp+0x10], 0x5
	cvttss2si eax, [conDrawInputGlob+0x58]
	mov [esp+0xc], eax
	cvttss2si eax, [conDrawInputGlob+0x54]
	mov [esp+0x8], eax
	mov eax, g_consoleField
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Field_Draw
	call Cmd_EndTokenizedString
	jmp Con_DrawConsole_40
Con_DrawConsole_300:
	mov eax, [con_outputSliderColor]
	add eax, 0xc
	movss xmm3, dword [ebp-0x14c]
	movss xmm2, dword [_float_10_00000000]
	movss xmm1, dword [ebp-0x144]
	movss xmm0, dword [ebp-0x148]
	call ConDraw_Box
	jmp Con_DrawConsole_380
Con_DrawConsole_310:
	mov eax, edi
	imul eax, [con+0x10248]
	cvtsi2ss xmm0, eax
	movss xmm1, dword [ebp-0x144]
	subss xmm1, xmm0
	movss [ebp-0x144], xmm1
	add esi, edi
	xor edi, edi
	jmp Con_DrawConsole_390
Con_DrawConsole_270:
	mov edx, g_consoleField
	mov ecx, ebx
	sub ecx, edx
	movzx eax, byte [ecx+edx+0x18]
	test al, al
	jnz Con_DrawConsole_400
Con_DrawConsole_490:
	movss xmm5, dword [conDrawInputGlob+0x58]
Con_DrawConsole_250:
	movss xmm0, dword [conDrawInputGlob+0x54]
	movss xmm4, dword [_float_6_00000000]
	subss xmm0, xmm4
	movss xmm1, dword [con+0x10254]
	mov eax, [con_inputHintBoxColor]
	add eax, 0xc
	cvtsi2ss xmm3, dword [ebp-0x158]
	mulss xmm3, [conDrawInputGlob+0x60]
	movss xmm2, dword [con+0x1025c]
	subss xmm2, xmm1
	movaps xmm6, xmm0
	subss xmm6, xmm1
	addss xmm3, [_float_12_00000000]
	subss xmm2, xmm6
	movaps xmm1, xmm5
	subss xmm1, xmm4
	call ConDraw_Box
	mov dword [esp], ConDrawInput_DvarMatch
	call Cvar_ForEachName
	cmp byte [ebp-0x139], 0x0
	jz Con_DrawConsole_410
Con_DrawConsole_520:
	call Cmd_EndTokenizedString
	jmp Con_DrawConsole_40
Con_DrawConsole_410:
	mov dword [esp], ConDrawInput_CmdMatch
	call Cmd_ForEach
	call Cmd_EndTokenizedString
	jmp Con_DrawConsole_40
Con_DrawConsole_210:
	lea edi, [ebp-0x118]
	add edi, edx
	mov [ebp-0x12c], edi
	mov edx, [ebp-0x128]
	movsx eax, byte [edx]
	mov [esp], eax
	call tolower
	mov [ebp-0x120], eax
	movzx eax, byte [conDrawInputGlob]
	test al, al
	jnz Con_DrawConsole_420
	xor eax, eax
	mov ecx, 0x2
	mov edx, 0x3
Con_DrawConsole_570:
	add eax, [ebp-0x12c]
	mov word [eax], 0x375e
	mov byte [eax+0x2], 0x0
	mov edi, [ebp-0x12c]
	mov byte [edi+ecx], 0x20
	mov byte [edi+edx], 0x0
	mov edi, [ebp-0x134]
	add edi, edx
	jmp Con_DrawConsole_430
Con_DrawConsole_50:
	mov ebx, _cstring_null
	jmp Con_DrawConsole_440
Con_DrawConsole_230:
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i_matches_too_ma
	call va
	mov ebx, eax
	movss xmm0, dword [conDrawInputGlob+0x54]
	movss xmm5, dword [_float_6_00000000]
	subss xmm0, xmm5
	movss xmm1, dword [con+0x10254]
	mov eax, [con_inputHintBoxColor]
	add eax, 0xc
	movss xmm2, dword [con+0x1025c]
	subss xmm2, xmm1
	movaps xmm4, xmm0
	subss xmm4, xmm1
	movss xmm1, dword [_float_12_00000000]
	movss xmm3, dword [conDrawInputGlob+0x60]
	addss xmm3, xmm1
	subss xmm2, xmm4
	movss xmm1, dword [conDrawInputGlob+0x58]
	subss xmm1, xmm5
	call ConDraw_Box
	mov dword [esp+0x24], 0x0
	mov dword [esp+0x20], con_inputDvarMatchColor
	mov dword [esp+0x1c], 0x0
	mov eax, 0x3f800000
	mov [esp+0x18], eax
	mov [esp+0x14], eax
	movss xmm0, dword [conDrawInputGlob+0x58]
	addss xmm0, [conDrawInputGlob+0x60]
	movss [esp+0x10], xmm0
	mov eax, [conDrawInputGlob+0x54]
	mov [esp+0xc], eax
	mov eax, cls
	mov eax, [eax+0x2dbff8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x7fffffff
	mov [esp], ebx
	call R_AddCmdDrawText
	call Cmd_EndTokenizedString
	jmp Con_DrawConsole_40
Con_DrawConsole_200:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_2s_
	lea edi, [ebp-0x118]
	mov [esp], edi
	call sprintf
	mov [ebp-0x134], eax
	mov edx, eax
	jmp Con_DrawConsole_450
Con_DrawConsole_350:
	mov dword [esp], ConDrawInput_IncrMatchCounter
	call Cmd_ForEach
	jmp Con_DrawConsole_460
Con_DrawConsole_150:
	mov dword [esp], ConDrawInput_IncrMatchCounter
	call Cmd_ForEach
	jmp Con_DrawConsole_470
Con_DrawConsole_400:
	lea ebx, [ecx+edx+0x18]
	jmp Con_DrawConsole_480
Con_DrawConsole_500:
	mov eax, [0xd5cc084]
	mov eax, [eax+edx*4+0x34]
	shr eax, 0xe
	and eax, 0x1
Con_DrawConsole_510:
	test eax, eax
	jnz Con_DrawConsole_240
	movzx eax, byte [ebx+0x1]
	add ebx, 0x1
	test al, al
	jz Con_DrawConsole_490
Con_DrawConsole_480:
	movsx edx, al
	test edx, 0xffffff80
	jz Con_DrawConsole_500
	mov dword [esp+0x4], 0x4000
	mov [esp], edx
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	jmp Con_DrawConsole_510
Con_DrawConsole_240:
	mov dword [esp], ConDrawInput_DetailedDvarMatch
	call Cvar_ForEachName
	cmp byte [ebp-0x139], 0x0
	jnz Con_DrawConsole_520
	mov dword [esp], ConDrawInput_DetailedCmdMatch
	call Cmd_ForEach
	call Cmd_EndTokenizedString
	jmp Con_DrawConsole_40
Con_DrawConsole_420:
	mov byte [ebp-0x11a], 0x0
	mov dword [ebp-0x124], 0x0
	mov edi, conDrawInputGlob
	xor esi, esi
	jmp Con_DrawConsole_530
Con_DrawConsole_560:
	cmp [ebp-0x11a], bl
	jz Con_DrawConsole_540
	mov edx, _cstring_2
	test bl, bl
	mov eax, _cstring_7
	cmovz edx, eax
	mov ecx, [ebp-0x12c]
	add ecx, esi
	movzx eax, word [edx]
	mov [ecx], ax
	movzx eax, byte [edx+0x2]
	mov [ecx+0x2], al
	add esi, 0x2
	mov [ebp-0x11a], bl
Con_DrawConsole_540:
	movzx eax, byte [edi]
	mov ecx, [ebp-0x12c]
	mov [ecx+esi], al
	add esi, 0x1
	add edi, 0x1
	movzx eax, byte [edi]
	test al, al
	jz Con_DrawConsole_550
Con_DrawConsole_530:
	movsx eax, al
	mov [esp], eax
	call tolower
	cmp [ebp-0x120], eax
	setz bl
	test bl, bl
	jz Con_DrawConsole_560
	add dword [ebp-0x124], 0x1
	mov ecx, [ebp-0x128]
	mov edx, [ebp-0x124]
	movsx eax, byte [ecx+edx]
	mov [esp], eax
	call tolower
	mov [ebp-0x120], eax
	jmp Con_DrawConsole_560
Con_DrawConsole_550:
	mov eax, esi
	lea ecx, [esi+0x2]
	lea edx, [esi+0x3]
	jmp Con_DrawConsole_570
Con_DrawConsole_190:
	mov dword [esp+0x14], 0x5
	mov dword [esp+0x10], 0x5
	cvttss2si eax, [conDrawInputGlob+0x58]
	mov [esp+0xc], eax
	cvttss2si eax, [conDrawInputGlob+0x54]
	mov [esp+0x8], eax
	mov eax, g_consoleField
	mov [esp+0x4], eax
	mov edi, [ebp+0x8]
	mov [esp], edi
	call Field_Draw
	jmp Con_DrawConsole_580
Con_DrawConsole_220:
	mov dword [esp+0x4], conDrawInputGlob
	mov ecx, [ebp-0x130]
	mov [esp], ecx
	call strcpy
	xor eax, eax
	jmp Con_DrawConsole_590
Con_DrawConsole_370:
	mov byte [conDrawInputGlob+0x50], 0x0
	mov dword [conDrawInputGlob+0x44], 0x0
	mov byte [con_ignoreMatchPrefixOnly], 0x1
	mov dword [esp], ConDrawInput_IncrMatchCounter
	call Cvar_ForEachName
	cmp byte [ebp-0x139], 0x0
	jz Con_DrawConsole_600
	mov edi, [conDrawInputGlob+0x44]
	mov [ebp-0x158], edi
	jmp Con_DrawConsole_360
Con_DrawConsole_600:
	mov dword [esp], ConDrawInput_IncrMatchCounter
	call Cmd_ForEach
	mov eax, [conDrawInputGlob+0x44]
	mov [ebp-0x158], eax
	jmp Con_DrawConsole_360
Con_DrawConsole_120:
	mov edx, _cstring_null
	jmp Con_DrawConsole_610
	nop


;Con_IsDvarCommand(char const*)
Con_IsDvarCommand:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov dword [esp+0x4], _cstring_set
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz Con_IsDvarCommand_10
Con_IsDvarCommand_20:
	mov eax, 0x1
Con_IsDvarCommand_30:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Con_IsDvarCommand_10:
	mov dword [esp+0x4], _cstring_seta
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jz Con_IsDvarCommand_20
	mov dword [esp+0x4], _cstring_sets
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jz Con_IsDvarCommand_20
	mov dword [esp+0x4], _cstring_reset
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jz Con_IsDvarCommand_20
	mov dword [esp+0x4], _cstring_toggle
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jz Con_IsDvarCommand_20
	mov dword [esp+0x4], _cstring_togglep
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jz Con_IsDvarCommand_20
	xor eax, eax
	jmp Con_IsDvarCommand_30
	nop


;Con_ToggleConsole()
Con_ToggleConsole:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, g_consoleField
	mov [esp], eax
	call Field_Clear
	mov eax, [conDrawInputGlob+0x40]
	test eax, eax
	js Con_ToggleConsole_10
	cmp byte [conDrawInputGlob], 0x0
	jnz Con_ToggleConsole_20
Con_ToggleConsole_10:
	xor eax, eax
Con_ToggleConsole_40:
	test eax, eax
	jz Con_ToggleConsole_30
	mov dword [conDrawInputGlob+0x40], 0xffffffff
	mov byte [conDrawInputGlob], 0x0
Con_ToggleConsole_30:
	mov edx, g_consoleField
	mov eax, [g_console_field_width]
	mov [edx+0xc], eax
	mov eax, [g_console_char_height]
	mov [edx+0x10], eax
	mov dword [edx+0x14], 0x1
	mov byte [con+0x10244], 0x0
	mov eax, clientUIActives
	xor dword [eax+0x4], 0x1
	leave
	ret
Con_ToggleConsole_20:
	mov eax, 0x1
	jmp Con_ToggleConsole_40


;Con_TokenizeInput()
Con_TokenizeInput:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, g_consoleField
	add eax, 0x18
	mov [esp], eax
	call Cmd_TokenizeString
	mov eax, cmd_args
	mov edx, [eax]
	mov ecx, [eax+edx*4+0x44]
	test ecx, ecx
	jle Con_TokenizeInput_10
	mov eax, [eax+edx*4+0x64]
	mov ebx, [eax]
Con_TokenizeInput_60:
	movzx eax, byte [ebx]
	cmp al, 0x5c
	jz Con_TokenizeInput_20
	cmp al, 0x2f
	jz Con_TokenizeInput_20
	movsx edx, byte [ebx]
	test edx, 0xffffff80
	jnz Con_TokenizeInput_30
Con_TokenizeInput_50:
	mov eax, [0xd5cc084]
	mov eax, [eax+edx*4+0x34]
	shr eax, 0xe
	and eax, 0x1
	test eax, eax
	jz Con_TokenizeInput_40
Con_TokenizeInput_20:
	add ebx, 0x1
	movsx edx, byte [ebx]
	test edx, 0xffffff80
	jz Con_TokenizeInput_50
Con_TokenizeInput_30:
	mov dword [esp+0x4], 0x4000
	mov [esp], edx
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	test eax, eax
	jnz Con_TokenizeInput_20
Con_TokenizeInput_40:
	mov eax, ebx
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Con_TokenizeInput_10:
	mov ebx, _cstring_null
	jmp Con_TokenizeInput_60


;Con_DrawMiniConsole(int, int, int, float)
Con_DrawMiniConsole:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov ebx, [ebp+0x8]
	mov esi, 0x3f800000
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x0
	mov eax, ebx
	shl eax, 0x6
	lea eax, [eax+ebx*4]
	add eax, scrPlaceView
	mov [esp], eax
	call UI_GetFontHandle
	mov edi, eax
	mov eax, [con_miniconlines]
	mov eax, [eax+0xc]
	cmp [con+0x13944], eax
	jz Con_DrawMiniConsole_10
	mov [con+0x13944], eax
	lea eax, [ebx+ebx*8]
	shl eax, 0x5
	add eax, ebx
	lea eax, [ebx+eax*4]
	lea eax, [ebx+eax*2]
	lea eax, [eax*8+con+0x13934]
	mov dword [eax+0x24], 0x0
	mov dword [eax+0x30], 0x0
	mov dword [eax+0x28], 0x0
	mov dword [eax+0x2c], 0x0
Con_DrawMiniConsole_10:
	mov [ebp-0x28], esi
	mov [ebp-0x24], esi
	mov [ebp-0x20], esi
	mov eax, [ebp+0x14]
	mov [ebp-0x1c], eax
	lea eax, [ebx+ebx*8]
	shl eax, 0x5
	add eax, ebx
	lea eax, [ebx+eax*4]
	lea eax, [ebx+eax*2]
	lea esi, [eax*8+con+0x13934]
	mov eax, clients
	cmp dword [eax+0x28], 0x5
	jz Con_DrawMiniConsole_20
	mov [esp], ebx
	call CL_ShouldDisplayHud
	test al, al
	jz Con_DrawMiniConsole_30
Con_DrawMiniConsole_20:
	xor eax, eax
Con_DrawMiniConsole_50:
	test eax, eax
	jnz Con_DrawMiniConsole_40
	mov dword [esp+0x20], 0x4
	mov dword [esp+0x1c], 0x3
	lea eax, [ebp-0x28]
	mov [esp+0x18], eax
	mov [esp+0x14], edi
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0xc
	mov eax, [ebp+0x10]
	mov [esp], eax
	movss xmm0, dword [_float_1_00000000]
	mov ecx, [ebp+0xc]
	mov edx, esi
	mov eax, ebx
	call Con_DrawMessageWindowOldToNew
Con_DrawMiniConsole_40:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Con_DrawMiniConsole_30:
	mov eax, 0x1
	jmp Con_DrawMiniConsole_50


;CL_DeathMessagePrint(int, char const*, char, char const*, char, Material*, float, float, unsigned char)
CL_DeathMessagePrint:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x43c
	mov ebx, [ebp+0xc]
	mov esi, [ebp+0x10]
	movzx eax, byte [ebp+0x18]
	mov [ebp-0x419], al
	movzx edi, byte [ebp+0x28]
	mov eax, cl_noprint
	mov eax, [eax]
	test eax, eax
	jz CL_DeathMessagePrint_10
	cmp byte [eax+0xc], 0x0
	jnz CL_DeathMessagePrint_20
CL_DeathMessagePrint_10:
	mov edx, [con]
	test edx, edx
	jz CL_DeathMessagePrint_30
CL_DeathMessagePrint_170:
	mov eax, [con+0x10238]
	test eax, eax
	jnz CL_DeathMessagePrint_40
CL_DeathMessagePrint_160:
	mov dword [esp], 0x37
	call ColorIndex
	cmp byte [ebx], 0x0
	jnz CL_DeathMessagePrint_50
	xor ecx, ecx
	mov edx, 0x1
	lea esi, [ebp-0x418]
CL_DeathMessagePrint_180:
	mov byte [ebp+ecx-0x418], 0x5e
	mov eax, edi
	cmp al, 0x1
	sbb eax, eax
	add al, 0x2
	mov [ebp+edx-0x418], al
	lea ebx, [edx+0x1]
	movss xmm0, dword [_float_32_00000000]
	mulss xmm0, [ebp+0x20]
	movss [ebp+0x20], xmm0
	movss xmm0, dword [_float_0_50000000]
	addss xmm0, [ebp+0x20]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x420]
	cvttss2si edx, [ebp-0x420]
	cmp edx, 0x7e
	jle CL_DeathMessagePrint_60
	mov eax, 0x7f
CL_DeathMessagePrint_150:
	add al, 0x10
	mov [ebp+ebx-0x418], al
	add ebx, 0x1
	movss xmm0, dword [_float_32_00000000]
	mulss xmm0, [ebp+0x24]
	movss [ebp+0x24], xmm0
	movss xmm0, dword [_float_0_50000000]
	addss xmm0, [ebp+0x24]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x424]
	cvttss2si edx, [ebp-0x424]
	cmp edx, 0x7e
	jle CL_DeathMessagePrint_70
	mov eax, 0x7f
CL_DeathMessagePrint_140:
	add al, 0x10
	mov [ebp+ebx-0x418], al
	mov eax, [ebp+0x1c]
	mov [ebx+ebp-0x417], eax
	mov byte [ebx+ebp-0x413], 0x20
	mov byte [ebx+ebp-0x412], 0x5e
	movzx eax, byte [ebp-0x419]
	mov [ebx+ebp-0x411], al
	add ebx, 0x8
	mov eax, [ebp+0x14]
	movzx ecx, byte [eax]
	test cl, cl
	jz CL_DeathMessagePrint_80
	mov edx, eax
	lea eax, [esi+ebx]
CL_DeathMessagePrint_90:
	mov [eax], cl
	movzx ecx, byte [edx+0x1]
	add edx, 0x1
	add eax, 0x1
	test cl, cl
	jnz CL_DeathMessagePrint_90
	mov ebx, eax
	sub ebx, esi
CL_DeathMessagePrint_80:
	mov byte [ebp+ebx-0x418], 0xa
	mov byte [ebp+ebx-0x417], 0x0
	mov ebx, [con+0x10250]
	mov eax, cl_noprint
	mov eax, [eax]
	test eax, eax
	jz CL_DeathMessagePrint_20
	cmp byte [eax+0xc], 0x0
	jnz CL_DeathMessagePrint_20
	mov eax, [con]
	test eax, eax
	jz CL_DeathMessagePrint_100
CL_DeathMessagePrint_190:
	mov dword [esp], 0x0
	call Sys_EnterCriticalSection
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x37
	mov [esp+0x10], ebx
	mov dword [esp+0xc], 0x0
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x5
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CL_ConsolePrint_AddLine
	mov dword [esp], 0x0
	call Sys_LeaveCriticalSection
CL_DeathMessagePrint_20:
	add esp, 0x43c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_DeathMessagePrint_50:
	mov byte [ebp-0x418], 0x5e
	mov eax, esi
	mov [ebp-0x417], al
	movzx eax, byte [ebx]
	test al, al
	jz CL_DeathMessagePrint_110
	mov edx, 0x2
	lea esi, [ebp-0x418]
CL_DeathMessagePrint_120:
	mov [edx+esi], al
	add edx, 0x1
	movzx eax, byte [ebx+edx-0x2]
	test al, al
	jnz CL_DeathMessagePrint_120
	mov eax, edx
	jmp CL_DeathMessagePrint_130
CL_DeathMessagePrint_70:
	mov eax, 0x10
	cmp edx, 0x10
	cmovg eax, edx
	jmp CL_DeathMessagePrint_140
CL_DeathMessagePrint_60:
	mov eax, 0x10
	cmp edx, 0x10
	cmovg eax, edx
	jmp CL_DeathMessagePrint_150
CL_DeathMessagePrint_40:
	mov dword [esp], 0x0
	mov ecx, 0x1
	mov edx, [con+0x10240]
	mov eax, [ebp+0x8]
	call Con_UpdateNotifyLine
	mov dword [con+0x10238], 0x0
	mov eax, [con+0x30]
	lea edx, [eax-0x1]
	cmp [con+0x1023c], edx
	cmovnz eax, [con+0x1023c]
	mov [con+0x1023c], eax
	jmp CL_DeathMessagePrint_160
CL_DeathMessagePrint_30:
	call Con_OneTimeInit
	jmp CL_DeathMessagePrint_170
CL_DeathMessagePrint_110:
	mov eax, 0x2
	lea esi, [ebp-0x418]
CL_DeathMessagePrint_130:
	mov byte [ebp+eax-0x418], 0x5e
	mov byte [eax+ebp-0x417], 0x37
	mov byte [eax+ebp-0x416], 0x20
	lea ecx, [eax+0x3]
	lea edx, [eax+0x4]
	jmp CL_DeathMessagePrint_180
CL_DeathMessagePrint_100:
	call Con_OneTimeInit
	jmp CL_DeathMessagePrint_190
	add [eax], al


;Con_InitClientAssets()
Con_InitClientAssets:
	push ebp
	mov ebp, esp
	pop ebp
	jmp Con_CheckResize
	nop


;CL_ConsoleFixPosition()
CL_ConsoleFixPosition:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov eax, cl_noprint
	mov eax, [eax]
	test eax, eax
	jz CL_ConsoleFixPosition_10
	cmp byte [eax+0xc], 0x0
	jnz CL_ConsoleFixPosition_10
	mov eax, [con]
	test eax, eax
	jz CL_ConsoleFixPosition_20
CL_ConsoleFixPosition_30:
	mov dword [esp], 0x0
	call Sys_EnterCriticalSection
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x37
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], _cstring_
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	call CL_ConsolePrint_AddLine
	mov dword [esp], 0x0
	call Sys_LeaveCriticalSection
CL_ConsoleFixPosition_10:
	mov eax, [con+0x30]
	sub eax, 0x1
	mov [con+0x1023c], eax
	leave
	ret
CL_ConsoleFixPosition_20:
	call Con_OneTimeInit
	jmp CL_ConsoleFixPosition_30


;Con_CycleAutoComplete(int)
Con_CycleAutoComplete:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	cmp byte [conDrawInputGlob+0x51], 0x0
	jz Con_CycleAutoComplete_10
	mov eax, [conDrawInputGlob+0x44]
	cmp eax, 0x1
	jle Con_CycleAutoComplete_10
	cmp eax, [con_inputMaxMatchesShown]
	jge Con_CycleAutoComplete_10
	cmp byte [conDrawInputGlob+0x50], 0x0
	jz Con_CycleAutoComplete_20
	mov ebx, g_consoleField
	mov esi, [0xd5cc084]
	jmp Con_CycleAutoComplete_30
Con_CycleAutoComplete_50:
	mov eax, [esi+eax*4+0x34]
	shr eax, 0xe
	and eax, 0x1
	test eax, eax
	jz Con_CycleAutoComplete_40
Con_CycleAutoComplete_60:
	add ebx, 0x1
Con_CycleAutoComplete_30:
	movsx eax, byte [ebx+0x18]
	test eax, 0xffffff80
	jz Con_CycleAutoComplete_50
	mov dword [esp+0x4], 0x4000
	mov [esp], eax
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	test eax, eax
	jnz Con_CycleAutoComplete_60
Con_CycleAutoComplete_40:
	mov edx, g_consoleField
	mov ecx, ebx
	sub ecx, edx
	movzx eax, byte [ecx+edx+0x18]
	test al, al
	jz Con_CycleAutoComplete_20
	lea ebx, [ecx+edx+0x18]
	jmp Con_CycleAutoComplete_70
Con_CycleAutoComplete_80:
	mov eax, [0xd5cc084]
	mov eax, [eax+edx*4+0x34]
	shr eax, 0xe
	and eax, 0x1
Con_CycleAutoComplete_90:
	test eax, eax
	jnz Con_CycleAutoComplete_10
	movzx eax, byte [ebx+0x1]
	add ebx, 0x1
	test al, al
	jz Con_CycleAutoComplete_20
Con_CycleAutoComplete_70:
	movsx edx, al
	test edx, 0xffffff80
	jz Con_CycleAutoComplete_80
	mov dword [esp+0x4], 0x4000
	mov [esp], edx
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	jmp Con_CycleAutoComplete_90
Con_CycleAutoComplete_10:
	xor eax, eax
Con_CycleAutoComplete_120:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Con_CycleAutoComplete_20:
	mov eax, [ebp+0x8]
	add eax, [conDrawInputGlob+0x40]
	mov [conDrawInputGlob+0x40], eax
	test eax, eax
	js Con_CycleAutoComplete_100
	cmp eax, [conDrawInputGlob+0x44]
	jl Con_CycleAutoComplete_110
	mov dword [conDrawInputGlob+0x40], 0x0
Con_CycleAutoComplete_110:
	mov eax, 0x1
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Con_CycleAutoComplete_100:
	mov eax, [conDrawInputGlob+0x44]
	sub eax, 0x1
	mov [conDrawInputGlob+0x40], eax
	mov eax, 0x1
	jmp Con_CycleAutoComplete_120
	nop


;Con_InitMessageBuffer()
Con_InitMessageBuffer:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov dword [ebp-0x24], 0x0
	mov dword [ebp-0x1c], 0x0
	mov dword [ebp-0x34], con+0x10264
	mov dword [ebp-0x38], con+0x127b4
	mov dword [ebp-0x3c], con+0x12334
	mov edi, 0x2000
Con_InitMessageBuffer_10:
	mov edx, [ebp-0x1c]
	mov eax, [edx+con_gameMsgWindowNLineCount]
	mov eax, [eax+0xc]
	add eax, 0x3
	mov [ebp-0x20], eax
	mov eax, [edx+con_gameMsgWindowNScrollTime]
	movss xmm0, dword [eax+0xc]
	mulss xmm0, [_float_1000_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x28]
	cvttss2si esi, [ebp-0x28]
	mov edx, [ebp-0x1c]
	mov eax, [edx+con_gameMsgWindowNFadeInTime]
	movss xmm0, dword [eax+0xc]
	mulss xmm0, [_float_1000_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x2c]
	cvttss2si ebx, [ebp-0x2c]
	mov edx, [ebp-0x1c]
	mov eax, [edx+con_gameMsgWindowNFadeOutTime]
	movss xmm0, dword [eax+0xc]
	mulss xmm0, [_float_1000_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x30]
	cvttss2si eax, [ebp-0x30]
	mov edx, [ebp-0x3c]
	mov [edi+con+0x10264], edx
	mov edx, [ebp-0x38]
	mov [edi+con+0x10268], edx
	mov edx, [ebp-0x34]
	mov [edi+con+0x1026c], edx
	mov dword [edi+con+0x10288], 0x0
	mov dword [edi+con+0x10270], 0x800
	mov dword [edi+con+0x1028c], 0x0
	mov dword [edi+con+0x10290], 0x0
	mov dword [edi+con+0x10294], 0x0
	mov edx, [ebp-0x20]
	mov [edi+con+0x10274], edx
	mov dword [edi+con+0x10278], 0x3
	mov [edi+con+0x1027c], esi
	mov [edi+con+0x10280], ebx
	mov [edi+con+0x10284], eax
	add dword [ebp-0x24], 0x1
	add edi, 0x34
	add dword [ebp-0x3c], 0x120
	add dword [ebp-0x38], 0x60
	add dword [ebp-0x34], 0x800
	add dword [ebp-0x1c], 0x4
	cmp dword [ebp-0x24], 0x4
	jnz Con_InitMessageBuffer_10
	mov eax, [con_miniconlines]
	mov eax, [eax+0xc]
	mov dword [con+0x13934], con+0x13968
	mov dword [con+0x13938], con+0x142c8
	mov dword [con+0x1393c], con+0x12934
	mov dword [con+0x13958], 0x0
	mov dword [con+0x13940], 0x1000
	mov dword [con+0x1395c], 0x0
	mov dword [con+0x13960], 0x0
	mov dword [con+0x13964], 0x0
	mov [con+0x13944], eax
	mov dword [con+0x13948], 0x0
	mov dword [con+0x1394c], 0x0
	mov dword [con+0x13950], 0x0
	mov dword [con+0x13954], 0x1
	mov dword [con+0x149e8], con+0x14a1c
	mov dword [con+0x149ec], con+0x14a94
	mov dword [con+0x149f0], con+0x145e8
	mov dword [con+0x14a0c], 0x0
	mov dword [con+0x149f4], 0x400
	mov dword [con+0x14a10], 0x0
	mov dword [con+0x14a14], 0x0
	mov dword [con+0x14a18], 0x0
	mov dword [con+0x149f8], 0x5
	mov dword [con+0x149fc], 0x0
	mov dword [con+0x14a00], 0x0
	mov dword [con+0x14a04], 0x1
	mov dword [con+0x14a08], 0x1
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Con_CancelAutoComplete()
Con_CancelAutoComplete:
	push ebp
	mov ebp, esp
	mov eax, [conDrawInputGlob+0x40]
	test eax, eax
	js Con_CancelAutoComplete_10
	cmp byte [conDrawInputGlob], 0x0
	jnz Con_CancelAutoComplete_20
Con_CancelAutoComplete_10:
	xor eax, eax
Con_CancelAutoComplete_40:
	test eax, eax
	jz Con_CancelAutoComplete_30
	mov dword [conDrawInputGlob+0x40], 0xffffffff
	mov byte [conDrawInputGlob], 0x0
	mov eax, 0x1
Con_CancelAutoComplete_30:
	pop ebp
	ret
Con_CancelAutoComplete_20:
	mov eax, 0x1
	jmp Con_CancelAutoComplete_40


;Con_IsAutoCompleteMatch(char const*, char const*, int)
Con_IsAutoCompleteMatch:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [ebp+0x8]
	cmp byte [con_ignoreMatchPrefixOnly], 0x0
	jnz Con_IsAutoCompleteMatch_10
	mov eax, [con_matchPrefixOnly]
	cmp byte [eax+0xc], 0x0
	jnz Con_IsAutoCompleteMatch_20
Con_IsAutoCompleteMatch_10:
	mov edx, [ebp+0xc]
	movsx eax, byte [edx]
	mov [esp], eax
	call tolower
	mov esi, eax
	movzx eax, byte [ebx]
	test al, al
	jnz Con_IsAutoCompleteMatch_30
Con_IsAutoCompleteMatch_70:
	xor eax, eax
Con_IsAutoCompleteMatch_100:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Con_IsAutoCompleteMatch_30:
	xor edi, edi
	jmp Con_IsAutoCompleteMatch_40
Con_IsAutoCompleteMatch_80:
	mov eax, [con_matchPrefixOnly]
	cmp byte [eax+0xc], 0x0
	jz Con_IsAutoCompleteMatch_50
	test edi, edi
	jnz Con_IsAutoCompleteMatch_60
Con_IsAutoCompleteMatch_50:
	movzx eax, byte [ebx+0x1]
	add ebx, 0x1
	test al, al
	jz Con_IsAutoCompleteMatch_70
Con_IsAutoCompleteMatch_40:
	movsx eax, al
	mov [esp], eax
	call tolower
	cmp esi, eax
	jnz Con_IsAutoCompleteMatch_80
	add edi, 0x1
	cmp edi, [ebp+0x10]
	jz Con_IsAutoCompleteMatch_90
	mov edx, [ebp+0xc]
	movsx eax, byte [edx+edi]
	mov [esp], eax
	call tolower
	mov esi, eax
	jmp Con_IsAutoCompleteMatch_50
Con_IsAutoCompleteMatch_20:
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], ebx
	call Q_stricmpn
	test eax, eax
	setz al
	movzx eax, al
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Con_IsAutoCompleteMatch_60:
	mov edx, [ebp+0xc]
	movsx eax, byte [edx]
	mov [esp], eax
	call tolower
	mov esi, eax
	xor edi, edi
	jmp Con_IsAutoCompleteMatch_50
Con_IsAutoCompleteMatch_90:
	mov eax, 0x1
	jmp Con_IsAutoCompleteMatch_100
	nop


;Con_ToggleConsoleOutput()
Con_ToggleConsoleOutput:
	push ebp
	mov ebp, esp
	cmp byte [con+0x10244], 0x0
	setz byte [con+0x10244]
	pop ebp
	ret
	nop


;CL_PlayTextFXPulseSounds(int, int, int, int, int, int, int*)
CL_PlayTextFXPulseSounds:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0xc]
	mov eax, [ebp+0x14]
	mov esi, [ebp+0x18]
	mov edx, [ebp+0x1c]
	mov ecx, [ebp+0x20]
	mov ebx, [ecx]
	sub ebx, eax
	mov ecx, [ebp+0x10]
	imul ecx, esi
	cmp ecx, edx
	cmovg edx, ecx
	mov [ebp-0x1c], edx
	mov edx, edi
	sub edx, eax
	mov eax, edx
	js CL_PlayTextFXPulseSounds_10
	cmp [ebp-0x1c], edx
	jl CL_PlayTextFXPulseSounds_20
	cmp edx, ecx
	jge CL_PlayTextFXPulseSounds_10
	cdq
	idiv esi
	imul esi, eax
	cmp ebx, esi
	jl CL_PlayTextFXPulseSounds_30
CL_PlayTextFXPulseSounds_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_PlayTextFXPulseSounds_20:
	cmp [ebp-0x1c], ebx
	jle CL_PlayTextFXPulseSounds_10
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_ui_pulse_text_de
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call SND_PlayLocalSoundAliasByName
	mov eax, [ebp+0x20]
	mov [eax], edi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CL_PlayTextFXPulseSounds_30:
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_ui_pulse_text_ty
	mov edx, [ebp+0x8]
	mov [esp], edx
	call SND_PlayLocalSoundAliasByName
	mov ecx, [ebp+0x20]
	mov [ecx], edi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Con_AnySpaceAfterCommand()
Con_AnySpaceAfterCommand:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, g_consoleField
	mov esi, [0xd5cc084]
	jmp Con_AnySpaceAfterCommand_10
Con_AnySpaceAfterCommand_30:
	mov eax, [esi+eax*4+0x34]
	shr eax, 0xe
	and eax, 0x1
	test eax, eax
	jz Con_AnySpaceAfterCommand_20
Con_AnySpaceAfterCommand_40:
	add ebx, 0x1
Con_AnySpaceAfterCommand_10:
	movsx eax, byte [ebx+0x18]
	test eax, 0xffffff80
	jz Con_AnySpaceAfterCommand_30
	mov dword [esp+0x4], 0x4000
	mov [esp], eax
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	test eax, eax
	jnz Con_AnySpaceAfterCommand_40
Con_AnySpaceAfterCommand_20:
	mov edx, g_consoleField
	mov ecx, ebx
	sub ecx, edx
	movzx eax, byte [ecx+edx+0x18]
	test al, al
	jz Con_AnySpaceAfterCommand_50
	lea ebx, [ecx+edx+0x18]
	jmp Con_AnySpaceAfterCommand_60
Con_AnySpaceAfterCommand_80:
	mov eax, [0xd5cc084]
	mov eax, [eax+edx*4+0x34]
	shr eax, 0xe
	and eax, 0x1
	test eax, eax
	jnz Con_AnySpaceAfterCommand_70
Con_AnySpaceAfterCommand_90:
	movzx eax, byte [ebx+0x1]
	add ebx, 0x1
	test al, al
	jz Con_AnySpaceAfterCommand_50
Con_AnySpaceAfterCommand_60:
	movsx edx, al
	test edx, 0xffffff80
	jz Con_AnySpaceAfterCommand_80
	mov dword [esp+0x4], 0x4000
	mov [esp], edx
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	test eax, eax
	jz Con_AnySpaceAfterCommand_90
Con_AnySpaceAfterCommand_70:
	mov eax, 0x1
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Con_AnySpaceAfterCommand_50:
	xor eax, eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;Con_AutoCompleteFromList(char const**, unsigned int, char const*, char*, unsigned int)
Con_AutoCompleteFromList:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, [ebp+0x10]
	repne scasb
	not ecx
	lea esi, [ecx-0x1]
	mov eax, [ebp+0x14]
	mov byte [eax], 0x0
	mov edx, [ebp+0xc]
	test edx, edx
	jnz Con_AutoCompleteFromList_10
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Con_AutoCompleteFromList_10:
	xor ebx, ebx
Con_AutoCompleteFromList_50:
	mov eax, [ebp+0x8]
	mov edi, [eax+ebx*4]
	mov [esp+0x8], esi
	mov [esp+0x4], edi
	mov eax, [ebp+0x10]
	mov [esp], eax
	call Q_stricmpn
	test eax, eax
	jnz Con_AutoCompleteFromList_20
	mov eax, [ebp+0x14]
	cmp byte [eax], 0x0
	jz Con_AutoCompleteFromList_30
	add eax, esi
	movzx edx, byte [eax]
	cmp dl, [edi+esi]
	jz Con_AutoCompleteFromList_40
Con_AutoCompleteFromList_60:
	mov byte [eax], 0x0
Con_AutoCompleteFromList_20:
	add ebx, 0x1
	cmp [ebp+0xc], ebx
	jnz Con_AutoCompleteFromList_50
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Con_AutoCompleteFromList_40:
	test dl, dl
	jz Con_AutoCompleteFromList_60
	add eax, 0x1
	mov [ebp-0x1c], eax
	lea edx, [edi+esi]
	jmp Con_AutoCompleteFromList_70
Con_AutoCompleteFromList_80:
	mov eax, edi
Con_AutoCompleteFromList_70:
	movzx ecx, byte [eax]
	cmp cl, [edx+0x1]
	jnz Con_AutoCompleteFromList_60
	lea edi, [eax+0x1]
	mov [ebp-0x1c], edi
	add edx, 0x1
	test cl, cl
	jnz Con_AutoCompleteFromList_80
	jmp Con_AutoCompleteFromList_60
Con_AutoCompleteFromList_30:
	mov eax, [ebp+0x18]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov edi, [ebp+0x14]
	mov [esp], edi
	call Q_strncpyz
	jmp Con_AutoCompleteFromList_20


;Con_CommitToAutoComplete()
Con_CommitToAutoComplete:
	push ebp
	mov ebp, esp
	push edi
	push ebx
	sub esp, 0x20
	mov ebx, [conDrawInputGlob+0x40]
	test ebx, ebx
	js Con_CommitToAutoComplete_10
	cmp byte [conDrawInputGlob], 0x0
	jnz Con_CommitToAutoComplete_20
Con_CommitToAutoComplete_10:
	xor eax, eax
	test eax, eax
	jnz Con_CommitToAutoComplete_30
Con_CommitToAutoComplete_40:
	add esp, 0x20
	pop ebx
	pop edi
	pop ebp
	ret
Con_CommitToAutoComplete_20:
	mov eax, 0x1
	test eax, eax
	jz Con_CommitToAutoComplete_40
Con_CommitToAutoComplete_30:
	mov eax, g_consoleField
	add eax, 0x18
	mov [esp], eax
	call Cmd_TokenizeString
	mov eax, cmd_args
	mov edx, [eax]
	mov ecx, [eax+edx*4+0x44]
	test ecx, ecx
	jle Con_CommitToAutoComplete_50
	mov eax, [eax+edx*4+0x64]
	mov ebx, [eax]
Con_CommitToAutoComplete_160:
	movzx eax, byte [ebx]
	cmp al, 0x5c
	jz Con_CommitToAutoComplete_60
	cmp al, 0x2f
	jz Con_CommitToAutoComplete_60
	movsx edx, byte [ebx]
	test edx, 0xffffff80
	jnz Con_CommitToAutoComplete_70
Con_CommitToAutoComplete_90:
	mov eax, [0xd5cc084]
	mov eax, [eax+edx*4+0x34]
	shr eax, 0xe
	and eax, 0x1
	test eax, eax
	jz Con_CommitToAutoComplete_80
Con_CommitToAutoComplete_60:
	add ebx, 0x1
	movsx edx, byte [ebx]
	test edx, 0xffffff80
	jz Con_CommitToAutoComplete_90
Con_CommitToAutoComplete_70:
	mov dword [esp+0x4], 0x4000
	mov [esp], edx
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	test eax, eax
	jnz Con_CommitToAutoComplete_60
Con_CommitToAutoComplete_80:
	mov [esp], ebx
	call Con_IsDvarCommand
	test al, al
	jz Con_CommitToAutoComplete_100
	mov dword [esp+0x10], conDrawInputGlob
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_s_s1
	mov dword [esp+0x4], 0x100
	mov eax, g_consoleField
	add eax, 0x18
	mov [esp], eax
	call Com_sprintf
Con_CommitToAutoComplete_140:
	call Cmd_EndTokenizedString
	mov edi, g_consoleField
	add edi, 0x18
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	repne scasb
	not ecx
	mov ebx, g_consoleField
	mov byte [ecx+ebx+0x17], 0x20
	mov [ebx], ecx
	mov byte [ecx+ebx+0x18], 0x0
	lea eax, [ebx+0x18]
	mov [esp], eax
	call SEH_PrintStrlen
	mov [ebx+0x8], eax
	mov eax, [conDrawInputGlob+0x40]
	test eax, eax
	js Con_CommitToAutoComplete_110
	cmp byte [conDrawInputGlob], 0x0
	jnz Con_CommitToAutoComplete_120
Con_CommitToAutoComplete_110:
	xor eax, eax
	test eax, eax
	jz Con_CommitToAutoComplete_130
Con_CommitToAutoComplete_150:
	mov dword [conDrawInputGlob+0x40], 0xffffffff
	mov byte [conDrawInputGlob], 0x0
	mov eax, 0x1
	add esp, 0x20
	pop ebx
	pop edi
	pop ebp
	ret
Con_CommitToAutoComplete_100:
	mov dword [esp+0x4], conDrawInputGlob
	mov eax, g_consoleField
	add eax, 0x18
	mov [esp], eax
	call strcpy
	jmp Con_CommitToAutoComplete_140
Con_CommitToAutoComplete_120:
	mov eax, 0x1
	test eax, eax
	jnz Con_CommitToAutoComplete_150
Con_CommitToAutoComplete_130:
	mov al, 0x1
	add esp, 0x20
	pop ebx
	pop edi
	pop ebp
	ret
Con_CommitToAutoComplete_50:
	mov ebx, _cstring_null
	jmp Con_CommitToAutoComplete_160
	nop


;Con_ShutdownClientAssets()
Con_ShutdownClientAssets:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;Con_DrawGameMessageWindow(int, int, int, int, int, int, Font_s*, float, float*, int, int, msgwnd_mode_t)
Con_DrawGameMessageWindow:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov eax, [ebp+0x10]
	mov [ebp-0x20], eax
	mov eax, [ebp+0x14]
	mov [ebp-0x24], eax
	mov eax, [ebp+0x18]
	mov [ebp-0x28], eax
	mov eax, [ebp+0x1c]
	mov [ebp-0x2c], eax
	mov eax, [ebp+0x20]
	mov [ebp-0x30], eax
	movss xmm0, dword [ebp+0x24]
	mov eax, [ebp+0x28]
	mov [ebp-0x34], eax
	mov eax, [ebp+0x2c]
	mov [ebp-0x38], eax
	mov eax, [ebp+0x30]
	mov [ebp-0x3c], eax
	mov edi, [ebp+0x34]
	mov eax, cg_paused
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz Con_DrawGameMessageWindow_10
Con_DrawGameMessageWindow_40:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Con_DrawGameMessageWindow_10:
	mulss xmm0, [_float_48_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x40]
	cvttss2si eax, [ebp-0x40]
	mov [ebp-0x1c], eax
	lea edx, [ebx+ebx*2]
	lea edx, [ebx+edx*4]
	lea eax, [esi+esi*8]
	shl eax, 0x5
	add eax, esi
	lea eax, [esi+eax*4]
	lea eax, [esi+eax*2]
	shl eax, 0x3
	lea ebx, [eax+edx*4+con+0x12264]
	mov eax, clients
	cmp dword [eax+0x28], 0x5
	jz Con_DrawGameMessageWindow_20
	mov [esp], esi
	call CL_ShouldDisplayHud
	test al, al
	jz Con_DrawGameMessageWindow_30
Con_DrawGameMessageWindow_20:
	xor eax, eax
Con_DrawGameMessageWindow_70:
	test eax, eax
	jnz Con_DrawGameMessageWindow_40
	cmp edi, 0x2
	jg Con_DrawGameMessageWindow_50
	cmp edi, 0x1
	jl Con_DrawGameMessageWindow_60
	mov eax, [ebp-0x3c]
	mov [ebp+0x28], eax
	mov eax, [ebp-0x38]
	mov [ebp+0x24], eax
	mov eax, [ebp-0x34]
	mov [ebp+0x20], eax
	mov eax, [ebp-0x30]
	mov [ebp+0x1c], eax
	setz al
	movzx eax, al
	mov [ebp+0x18], eax
	mov eax, [ebp-0x2c]
	mov [ebp+0x14], eax
	mov eax, [ebp-0x28]
	mov [ebp+0x10], eax
	mov eax, [ebp-0x1c]
	mov [ebp+0xc], eax
	mov eax, [ebp-0x24]
	mov [ebp+0x8], eax
	movss xmm0, dword [_float_1_00000000]
	mov ecx, [ebp-0x20]
	mov edx, ebx
	mov eax, esi
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Con_DrawMessageWindowNewToOld
Con_DrawGameMessageWindow_50:
	cmp edi, 0x3
	jnz Con_DrawGameMessageWindow_40
Con_DrawGameMessageWindow_80:
	mov eax, [ebp-0x3c]
	mov [ebp+0x28], eax
	mov eax, [ebp-0x38]
	mov [ebp+0x24], eax
	mov eax, [ebp-0x34]
	mov [ebp+0x20], eax
	mov eax, [ebp-0x30]
	mov [ebp+0x1c], eax
	xor eax, eax
	cmp edi, 0x3
	setz al
	mov [ebp+0x18], eax
	mov eax, [ebp-0x2c]
	mov [ebp+0x14], eax
	mov eax, [ebp-0x28]
	mov [ebp+0x10], eax
	mov eax, [ebp-0x1c]
	mov [ebp+0xc], eax
	mov eax, [ebp-0x24]
	mov [ebp+0x8], eax
	movss xmm0, dword [_float_1_00000000]
	mov ecx, [ebp-0x20]
	mov edx, ebx
	mov eax, esi
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Con_DrawMessageWindowOldToNew
Con_DrawGameMessageWindow_30:
	mov eax, 0x1
	jmp Con_DrawGameMessageWindow_70
Con_DrawGameMessageWindow_60:
	test edi, edi
	jz Con_DrawGameMessageWindow_80
	jmp Con_DrawGameMessageWindow_40
	nop


;Con_HasTooManyMatchesToShow()
Con_HasTooManyMatchesToShow:
	push ebp
	mov ebp, esp
	mov eax, [conDrawInputGlob+0x44]
	cmp eax, [con_inputMaxMatchesShown]
	setg al
	movzx eax, al
	pop ebp
	ret


;Con_AllowAutoCompleteCycling(unsigned char)
Con_AllowAutoCompleteCycling:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov [conDrawInputGlob+0x51], al
	pop ebp
	ret
	nop
	add [eax], al


;Con_IsValidGameMessageWindow(int)
Con_IsValidGameMessageWindow:
	push ebp
	mov ebp, esp
	xor eax, eax
	cmp dword [ebp+0x8], 0x3
	setbe al
	pop ebp
	ret


;Con_IsGameMessageWindowActive(int, int)
Con_IsGameMessageWindowActive:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov eax, [ebp+0xc]
	lea ecx, [eax+eax*2]
	lea ecx, [eax+ecx*4]
	lea eax, [edx+edx*8]
	shl eax, 0x5
	add eax, edx
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*2]
	shl eax, 0x3
	mov eax, [eax+ecx*4+con+0x12290]
	test eax, eax
	setg al
	movzx eax, al
	pop ebp
	ret
	nop


;Con_Top()
Con_Top:
	push ebp
	mov ebp, esp
	mov eax, [con+0x30]
	mov edx, [con+0x1024c]
	cmp eax, edx
	cmovge eax, edx
	mov [con+0x1023c], eax
	pop ebp
	ret


;Con_Init()
Con_Init:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov dword [esp+0xc], _cstring_restrict_console
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_monkeytoy
	call Cvar_RegisterBool
	mov [con_restricted], eax
	mov dword [esp+0xc], _cstring_only_match_the_p
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_con_matchprefixo
	call Cvar_RegisterBool
	mov [con_matchPrefixOnly], eax
	mov ebx, g_consoleField
	mov [esp], ebx
	call Field_Clear
	mov eax, [g_console_field_width]
	mov [ebx+0xc], eax
	mov eax, [g_console_char_height]
	mov [ebx+0x10], eax
	mov dword [ebx+0x14], 0x1
	xor esi, esi
	mov ebx, historyEditLines
	mov ecx, ebx
	jmp Con_Init_10
Con_Init_20:
	mov ecx, historyEditLines
Con_Init_10:
	lea edx, [esi+esi*4]
	lea eax, [edx*8]
	sub eax, edx
	lea eax, [ecx+eax*8]
	mov [esp], eax
	call Field_Clear
	mov eax, [g_console_field_width]
	mov [ebx+0xc], eax
	mov eax, [g_console_char_height]
	mov [ebx+0x10], eax
	mov dword [ebx+0x14], 0x1
	add esi, 0x1
	add ebx, 0x118
	cmp esi, 0x20
	jnz Con_Init_20
	mov dword [conDrawInputGlob+0x40], 0xffffffff
	mov dword [esp+0x8], _ZZ8Con_InitvE24Con_ChatModePublic_f_VAR
	mov dword [esp+0x4], Con_ChatModePublic_f
	mov dword [esp], _cstring_chatmodepublic
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ8Con_InitvE22Con_ChatModeTeam_f_VAR
	mov dword [esp+0x4], Con_ChatModeTeam_f
	mov dword [esp], _cstring_chatmodeteam
	call Cmd_AddCommand
	mov dword [esp+0x8], _ZZ8Con_InitvE15Con_Clear_f_VAR
	mov dword [esp+0x4], Con_Clear_f
	mov dword [esp], _cstring_clear
	call Cmd_AddCommand
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;Con_Close(int)
Con_Close:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, clientUIActives
	cmp byte [eax+0x1], 0x0
	jnz Con_Close_10
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Con_Close_10:
	mov eax, g_consoleField
	mov [esp], eax
	call Field_Clear
	mov eax, [conDrawInputGlob+0x40]
	test eax, eax
	js Con_Close_20
	cmp byte [conDrawInputGlob], 0x0
	jnz Con_Close_30
Con_Close_20:
	xor eax, eax
Con_Close_60:
	test eax, eax
	jz Con_Close_40
	mov dword [conDrawInputGlob+0x40], 0xffffffff
	mov byte [conDrawInputGlob], 0x0
Con_Close_40:
	xor ecx, ecx
	lea eax, [ebx+ebx*8]
	shl eax, 0x5
	add eax, ebx
	lea eax, [ebx+eax*4]
	lea eax, [ebx+eax*2]
	lea edx, [eax*8]
	lea eax, [edx+con+0x12264]
Con_Close_50:
	mov dword [eax+0x24], 0x0
	mov dword [eax+0x30], 0x0
	mov dword [eax+0x28], 0x0
	mov dword [eax+0x2c], 0x0
	add ecx, 0x1
	add eax, 0x34
	cmp ecx, 0x4
	jnz Con_Close_50
	lea eax, [edx+con+0x13934]
	mov dword [eax+0x24], 0x0
	mov dword [eax+0x30], 0x0
	mov dword [eax+0x28], 0x0
	mov dword [eax+0x2c], 0x0
	lea eax, [edx+con+0x149e8]
	mov dword [eax+0x24], 0x0
	mov dword [eax+0x30], 0x0
	mov dword [eax+0x28], 0x0
	mov dword [eax+0x2c], 0x0
	mov eax, clientUIActives
	and dword [eax+0x4], 0xfffffffe
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Con_Close_30:
	mov eax, 0x1
	jmp Con_Close_60


;Initialized global or static variables of cl_console:
SECTION .data
_ZZ24Con_DrawMessageLineOnHUDiPK15ScreenPlacementiiiiiP6Font_sPK13MessageWindowiPfifiE12MY_GLOWCOLOR: dd 0x0, 0x3e99999a, 0x0, 0x3f800000, 0x0
con_inputMaxMatchesShown: dd 0x18
g_console_char_height: dd 0x41800000
g_console_field_width: dd 0x26c


;Initialized constant data of cl_console:
SECTION .rdata
con_versionColor: dd 0x3f800000, 0x3f800000, 0x0, 0x3f800000
con_inputDvarMatchColor: dd 0x3f800000, 0x3f800000, 0x3f4ccccd, 0x3f800000
con_inputCommandMatchColor: dd 0x3f4ccccd, 0x3f4ccccd, 0x3f800000, 0x3f800000
con_inputDvarValueColor: dd 0x3f800000, 0x3f800000, 0x3f800000, 0x3f800000
con_inputDvarInfoColor: dd 0x3f4ccccd, 0x3f4ccccd, 0x3f800000, 0x3f800000
con_inputDvarDescriptionColor: dd 0x3f800000, 0x3f800000, 0x3f800000, 0x3f800000
con_inputDvarInactiveValueColor: dd 0x3f4ccccd, 0x3f4ccccd, 0x3f4ccccd, 0x3f800000
defaultGameMessageWindowLineCounts: dd 0x4, 0x5, 0x7, 0x5
defaultGameMessageTimes: dd 0x40a00000, 0x41000000, 0x40a00000, 0x40a00000, 0x0, 0x0, 0x0, 0x0


;Zero initialized global or static variables of cl_console:
SECTION .bss
con: resb 0x14acc
con_outputWindowColor: resb 0x4
con_outputSliderColor: resb 0x4
con_outputBarColor: resb 0x4
con_inputHintBoxColor: resb 0x4
con_inputBoxColor: resb 0x4
conDrawInputGlob: resb 0x64
con_miniconlines: resb 0x4
con_minicontime: resb 0x4
con_errormessagetime: resb 0x4
con_gameMsgWindowNSplitscreenScale: resb 0x10
con_gameMsgWindowNFadeOutTime: resb 0x10
con_gameMsgWindowNFadeInTime: resb 0x10
con_gameMsgWindowNScrollTime: resb 0x10
con_gameMsgWindowNLineCount: resb 0x10
con_gameMsgWindowNMsgTime: resb 0x20
pb_screen_buf: resb 0x10000
_ZZ8Con_InitvE15Con_Clear_f_VAR: resb 0x14
_ZZ8Con_InitvE22Con_ChatModeTeam_f_VAR: resb 0x14
_ZZ8Con_InitvE24Con_ChatModePublic_f_VAR: resb 0x14
_ZZ23CL_ConsolePrint_AddLineiiPKciiciE9callDepth: resb 0x4
con_gameMsgWindowNFadeInTime_Descs: resb 0xe0
con_gameMsgWindowNFadeInTime_Names: resb 0x80
con_gameMsgWindowNFadeOutTime_Descs: resb 0xe0
con_gameMsgWindowNFadeOutTime_Names: resb 0x80
con_gameMsgWindowNLineCount_Descs: resb 0x140
con_gameMsgWindowNLineCount_Names: resb 0x80
con_gameMsgWindowNMsgTime_Descs: resb 0x120
con_gameMsgWindowNMsgTime_Names: resb 0x80
con_gameMsgWindowNScrollTime_Descs: resb 0x160
con_gameMsgWindowNScrollTime_Names: resb 0x80
con_gameMsgWindowNSplitscreenScale_Descs: resb 0xc0
con_gameMsgWindowNSplitscreenScale_Names: resb 0xa0
con_ignoreMatchPrefixOnly: resb 0x4
con_matchPrefixOnly: resb 0x4
con_restricted: resb 0x4
con_typewriterColorBase: resb 0x4
con_typewriterColorGlowCheckpoint: resb 0x4
con_typewriterColorGlowCompleted: resb 0x4
con_typewriterColorGlowFailed: resb 0x4
con_typewriterColorGlowUpdated: resb 0x4
con_typewriterDecayDuration: resb 0x4
con_typewriterDecayStartTime: resb 0x4
con_typewriterPrintSpeed: resb 0x14


;All cstrings:
SECTION .rdata
_cstring_color_of_the_con:		db "Color of the console input box",0
_cstring_con_inputboxcolo:		db "con_inputBoxColor",0
_cstring_color_of_the_con1:		db "Color of the console input hint box",0
_cstring_con_inputhintbox:		db "con_inputHintBoxColor",0
_cstring_color_of_the_con2:		db "Color of the console output slider bar",0
_cstring_con_outputbarcol:		db "con_outputBarColor",0
_cstring_color_of_the_con3:		db "Color of the console slider",0
_cstring_con_outputslider:		db "con_outputSliderColor",0
_cstring_color_of_the_con4:		db "Color of the console output",0
_cstring_con_outputwindow:		db "con_outputWindowColor",0
_cstring_con_gamemsgwindo:		db "con_gameMsgWindow%dMsgTime",0
_cstring_on_screen_time_f:		db "On screen time for game messages in seconds in game message window %d",0
_cstring_con_gamemsgwindo1:		db "con_gameMsgWindow%dLineCount",0
_cstring_maximum_number_o:		db "Maximum number of lines of text visible at once in game message window %d",0
_cstring_con_gamemsgwindo2:		db "con_gameMsgWindow%dScrollTime",0
_cstring_time_to_scroll_m:		db "Time to scroll messages when the oldest message is removed in game message window %d",0
_cstring_con_gamemsgwindo3:		db "con_gameMsgWindow%dFadeInTime",0
_cstring_time_to_fade_in_:		db "Time to fade in new messages in game message window %d",0
_cstring_con_gamemsgwindo4:		db "con_gameMsgWindow%dFadeOutTime",0
_cstring_time_to_fade_out:		db "Time to fade out old messages in game message window %d",0
_cstring_con_gamemsgwindo5:		db "con_gameMsgWindow%dSplitscreenScale",0
_cstring_scaling_of_game_:		db "Scaling of game message window %d in splitscreen",0
_cstring_onscreen_time_fo:		db "Onscreen time for error messages in seconds",0
_cstring_con_errormessage:		db "con_errormessagetime",0
_cstring_onscreen_time_fo1:		db "Onscreen time for minicon messages in seconds",0
_cstring_con_minicontime:		db "con_minicontime",0
_cstring_number_of_lines_:		db "Number of lines in the minicon message window",0
_cstring_con_miniconlines:		db "con_miniconlines",0
_cstring_time_in_millisec:		db "Time (in milliseconds) to print each letter in the line.",0
_cstring_con_typewriterpr:		db "con_typewriterPrintSpeed",0
_cstring_time_in_millisec1:		db "Time (in milliseconds) to spend between the build and disolve phases.",0
_cstring_con_typewriterde:		db "con_typewriterDecayStartTime",0
_cstring_time_in_millisec2:		db "Time (in milliseconds) to spend disolving the line away.",0
_cstring_con_typewriterde1:		db "con_typewriterDecayDuration",0
_cstring_base_color_of_ty:		db "Base color of typewritten objective text.",0
_cstring_con_typewriterco:		db "con_typewriterColorBase",0
_cstring_color_of_typewri:		db "Color of typewritten objective text.",0
_cstring_con_typewriterco1:		db "con_typewriterColorGlowUpdated",0
_cstring_con_typewriterco2:		db "con_typewriterColorGlowCompleted",0
_cstring_con_typewriterco3:		db "con_typewriterColorGlowFailed",0
_cstring_con_typewriterco4:		db "con_typewriterColorGlowCheckpoint",0
_cstring_ui_pulse_text_ty:		db "ui_pulse_text_type",0
_cstring_ui_pulse_text_de:		db "ui_pulse_text_delete",0
_cstring_null:		db 0
_cstring___default:		db "  default",0
_cstring___latched_value:		db "  latched value",0
_cstring_exe_sayteam:		db "EXE_SAYTEAM",0
_cstring_s_:		db "%s: ",0
_cstring_exe_say:		db "EXE_SAY",0
_cstring_s_s:		db "%s: %s",0ah,0
_cstring_17:		db "1.7",0
_cstring_cod4_mp:		db "CoD4 MP",0
_cstring_s_s_:		db "%s: %s> ",0
_cstring_macosxsi386:		db "MacOSXS-i386",0
_cstring_build_s_s:		db "Build %s %s",0
_cstring_i_matches_too_ma:		db "%i matches (too many to show here, press shift+tilde to open full console)",0
_cstring_2s_:		db "^2%s ",0
_cstring_2:		db "^2",0
_cstring_7:		db "^7",0
_cstring_set:		db "set",0
_cstring_seta:		db "seta",0
_cstring_sets:		db "sets",0
_cstring_reset:		db "reset",0
_cstring_toggle:		db "toggle",0
_cstring_togglep:		db "togglep",0
_cstring_:		db 0ah,0
_cstring_s_s1:		db "%s %s",0
_cstring_restrict_console:		db "Restrict console access",0
_cstring_monkeytoy:		db "monkeytoy",0
_cstring_only_match_the_p:		db "Only match the prefix when listing matching Dvars",0
_cstring_con_matchprefixo:		db "con_matchPrefixOnly",0
_cstring_chatmodepublic:		db "chatmodepublic",0
_cstring_chatmodeteam:		db "chatmodeteam",0
_cstring_clear:		db "clear",0



;All constant floats and doubles:
SECTION .rdata
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_2_00000000:		dd 0x40000000	; 2
_float_1000_00000000:		dd 0x447a0000	; 1000
_float_300_00000000:		dd 0x43960000	; 300
_float_48_00000000:		dd 0x42400000	; 48
_float_1_00000000:		dd 0x3f800000	; 1
_float_6_00000000:		dd 0x40c00000	; 6
_float_12_00000000:		dd 0x41400000	; 12
_float_3_00000000:		dd 0x40400000	; 3
_float_24_00000000:		dd 0x41c00000	; 24
_float_10_00000000:		dd 0x41200000	; 10
_float_18_00000000:		dd 0x41900000	; 18
_float_32_00000000:		dd 0x42000000	; 32
_float_16_00000000:		dd 0x41800000	; 16

