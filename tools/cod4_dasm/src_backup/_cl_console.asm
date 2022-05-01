;Imports of cl_console:
	extern _Z22CL_GetScreenDimensionsPiS_Pf
	extern playerKeys
	extern _Z11Field_ClearP7field_t
	extern clientUIActives
	extern cls
	extern _Z22R_AddCmdDrawStretchPicffffffffPKfP8Material
	extern _Z9I_stricmpPKcS0_
	extern _Z10I_strncpyzPcPKci
	extern _Z17Dvar_RegisterVec4PKcfffffftS0_
	extern sprintf
	extern _Z18Dvar_RegisterFloatPKcffftS0_
	extern _Z16Dvar_RegisterIntPKciiitS0_
	extern _Z17Dvar_RegisterVec3PKcffffftS0_
	extern colorWhite
	extern _Z20Con_IsChannelVisible16print_msg_dest_tii
	extern clients
	extern floorf
	extern _Z16R_AddCmdDrawTextPKciP6Font_sfffffPKfi
	extern _Z21Dvar_GetVariantStringPKc
	extern _Z21R_NormalizedTextScaleP6Font_sf
	extern _Z18ScrPlace_ApplyRectPK15ScreenPlacementPfS2_S2_S2_ii
	extern _Z16SEH_DecodeLetterjjPiS_
	extern cgMedia
	extern _Z30R_AddCmdDrawConsoleTextPulseFXPKciiiP6Font_sffffPKfiS4_iiiiP8MaterialS6_
	extern _Z16UI_GetFontHandlePK15ScreenPlacementif
	extern _Z23R_AddCmdDrawConsoleTextPKciiiP6Font_sffffPKfi
	extern _Z31R_AddCmdDrawConsoleTextSubtitlePKciiiP6Font_sffffPKfiS4_
	extern _Z12R_TextHeightP6Font_s
	extern _Z18R_ConsoleTextWidthPKciiiP6Font_s
	extern _Z29SND_PlayLocalSoundAliasByNameiPKc18snd_alias_system_t
	extern scrPlaceView
	extern memcpy
	extern com_developer
	extern _Z22R_TextLineWrapPositionPKciiP6Font_sf
	extern _Z22SEH_ReadCharFromStringPPKcPi
	extern cmd_args
	extern _Z10I_strnicmpPKcS0_i
	extern _Z18Com_StripExtensionPKcPc
	extern _Z11R_TextWidthPKciP6Font_s
	extern qsort
	extern g_consoleField
	extern __maskrune
	extern _Z12Dvar_FindVarPKc
	extern _Z20Dvar_HasLatchedValuePK6dvar_s
	extern _Z21Dvar_DisplayableValuePK6dvar_s
	extern _Z26Dvar_DisplayableResetValuePK6dvar_s
	extern _Z28Dvar_DomainToString_GetLinesh10DvarLimitsPciPi
	extern _Z28Dvar_DisplayableLatchedValuePK6dvar_s
	extern _Z27Cmd_GetAutoCompleteFileListPKcPii
	extern FS_FreeFileList
	extern _Z19Key_IsCatcherActiveii
	extern _Z23SEH_SafeTranslateStringPKc
	extern _Z2vaPKcz
	extern _Z11CL_DrawTextPK15ScreenPlacementPKciP6Font_sffiiffPKfi
	extern _Z10Field_DrawiP7field_tiiii
	extern com_dedicated
	extern cl_noprint
	extern _Z24Sys_EnterCriticalSection15CriticalSection
	extern _Z24Sys_LeaveCriticalSection15CriticalSection
	extern _Z10Com_PrintfiPKcz
	extern _Z19CL_ShouldDisplayHudi
	extern scrPlaceFull
	extern _Z15ScrPlace_ApplyXPK15ScreenPlacementfi
	extern _Z15ScrPlace_ApplyYPK15ScreenPlacementfi
	extern _Z16Sys_IsMainThreadv
	extern _Z18Cmd_TokenizeStringPKc
	extern _Z22Cmd_EndTokenizedStringv
	extern _Z16Dvar_ForEachNamePFvPKcE
	extern _Z9I_stristrPKcS0_
	extern strncpy
	extern strcpy
	extern _Z15SEH_PrintStrlenPKc
	extern _Z22Field_DrawTextOverrideiPK7field_tiiiiPKcii
	extern getBuildNumber
	extern _Z22SCR_DrawSmallStringExtiiPKcPKf
	extern ceilf
	extern _Z14CL_LookupColorihPf
	extern _Z11Cmd_ForEachPFvPKcE
	extern tolower
	extern _Z10ColorIndexh
	extern _Z11Com_sprintfPciPKcz
	extern cg_paused
	extern _Z17Dvar_RegisterBoolPKchtS0_
	extern historyEditLines
	extern _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s

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
	global _Z20Con_ChatModePublic_fv
	global _Z18Con_ChatModeTeam_fv
	global _Z11Con_Clear_fv
	global _Z11ConDraw_BoxffffPKf
	global _Z27ConDrawInput_CompareStringsPKvS0_
	global _Z29ConDrawInput_IncrMatchCounterPKc
	global _Z15Con_OneTimeInitv
	global _Z29Con_UpdateNotifyMessageWindowiiii16print_msg_dest_t
	global _Z22ConDrawInput_DvarMatchPKc
	global _ZZ24Con_DrawMessageLineOnHUDiPK15ScreenPlacementiiiiiP6Font_sPK13MessageWindowiPfifiE12MY_GLOWCOLOR
	global _Z24Con_DrawMessageLineOnHUDiPK15ScreenPlacementiiiiiP6Font_sPK13MessageWindowiPfifi
	global _Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi
	global _Z29Con_DrawMessageWindowOldToNewiP13MessageWindowiiiiihP6Font_sPfifi
	global _Z27Con_UpdateMessageWindowLineiP13MessageWindowii
	global _Z20Con_UpdateNotifyLineiihi
	global _ZZ23CL_ConsolePrint_AddLineiiPKciiciE9callDepth
	global _Z23CL_ConsolePrint_AddLineiiPKciici
	global _Z28ConDrawInput_AutoCompleteArgPPKci
	global _Z30ConDrawInput_DetailedDvarMatchPKc
	global _Z29ConDrawInput_DetailedCmdMatchPKc
	global _Z21ConDrawInput_CmdMatchPKc
	global _Z10Con_Bottomv
	global _Z10Con_PageUpv
	global _Z11Con_DrawSayiii
	global _Z12Con_IsActivei
	global _Z12Con_PageDownv
	global _Z12Con_Shutdownv
	global _Z13PbMsgToScreenPcS_
	global _Z14Con_DrawErrorsiiif
	global _Z14Con_TimeJumpedii
	global _Z14Con_TimeNudgedii
	global _Z15CL_ConsolePrintiiPKciii
	global _Z15Con_CheckResizev
	global _Z15Con_ClearNotifyi
	global _Z15Con_DrawConsolei
	global _Z17Con_IsDvarCommandPKc
	global _Z17Con_ToggleConsolev
	global _Z17Con_TokenizeInputv
	global _Z19Con_DrawMiniConsoleiiif
	global _Z20CL_DeathMessagePrintiPKccS0_cP8Materialffh
	global _Z20Con_InitClientAssetsv
	global _Z21CL_ConsoleFixPositionv
	global _Z21Con_CycleAutoCompletei
	global _Z21Con_InitMessageBufferv
	global _Z22Con_CancelAutoCompletev
	global _Z23Con_IsAutoCompleteMatchPKcS0_i
	global _Z23Con_ToggleConsoleOutputv
	global _Z24CL_PlayTextFXPulseSoundsiiiiiiPi
	global _Z24Con_AnySpaceAfterCommandv
	global _Z24Con_AutoCompleteFromListPPKcjS0_Pcj
	global _Z24Con_CommitToAutoCompletev
	global _Z24Con_ShutdownClientAssetsv
	global _Z25Con_DrawGameMessageWindowiiiiiiP6Font_sfPfii13msgwnd_mode_t
	global _Z27Con_HasTooManyMatchesToShowv
	global _Z28Con_AllowAutoCompleteCyclingh
	global _Z28Con_IsValidGameMessageWindowi
	global _Z29Con_IsGameMessageWindowActiveii
	global _Z7Con_Topv
	global _Z8Con_Initv
	global _Z9Con_Closei
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
_Z20Con_ChatModePublic_fv:
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
	call _Z22CL_GetScreenDimensionsPiS_Pf
	mov ebx, playerKeys
	mov dword [ebx+0x118], 0x0
	mov [esp], ebx
	call _Z11Field_ClearP7field_t
	mov dword [ebx+0xc], 0x24c
	mov dword [ebx+0x14], 0x0
	cmp dword [ebp-0x10], 0x300
	jle _Z20Con_ChatModePublic_fv_10
	mov dword [ebx+0x10], 0x41200000
	mov eax, clientUIActives
	xor dword [eax+0x4], 0x20
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_Z20Con_ChatModePublic_fv_10:
	mov dword [ebx+0x10], 0x41800000
	mov eax, clientUIActives
	xor dword [eax+0x4], 0x20
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	nop


;Con_ChatModeTeam_f()
_Z18Con_ChatModeTeam_fv:
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
	call _Z22CL_GetScreenDimensionsPiS_Pf
	mov ebx, playerKeys
	mov dword [ebx+0x118], 0x1
	mov [esp], ebx
	call _Z11Field_ClearP7field_t
	mov dword [ebx+0xc], 0x21f
	mov dword [ebx+0x14], 0x0
	cmp dword [ebp-0x10], 0x300
	jle _Z18Con_ChatModeTeam_fv_10
	mov dword [ebx+0x10], 0x41200000
	mov eax, clientUIActives
	xor dword [eax+0x4], 0x20
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_Z18Con_ChatModeTeam_fv_10:
	mov dword [ebx+0x10], 0x41800000
	mov eax, clientUIActives
	xor dword [eax+0x4], 0x20
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	nop


;Con_Clear_f()
_Z11Con_Clear_fv:
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
_Z11ConDraw_BoxffffPKf:
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
	call _Z22R_AddCmdDrawStretchPicffffffffPKfP8Material
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
	call _Z22R_AddCmdDrawStretchPicffffffffPKfP8Material
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
	call _Z22R_AddCmdDrawStretchPicffffffffPKfP8Material
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
	call _Z22R_AddCmdDrawStretchPicffffffffPKfP8Material
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
	call _Z22R_AddCmdDrawStretchPicffffffffPKfP8Material
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;ConDrawInput_CompareStrings(void const*, void const*)
_Z27ConDrawInput_CompareStringsPKvS0_:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0xc]
	mov eax, [eax]
	mov [ebp+0xc], eax
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov [ebp+0x8], eax
	pop ebp
	jmp _Z9I_stricmpPKcS0_
	nop


;ConDrawInput_IncrMatchCounter(char const*)
_Z29ConDrawInput_IncrMatchCounterPKc:
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
	call _Z23Con_IsAutoCompleteMatchPKcS0_i
	test al, al
	jz _Z29ConDrawInput_IncrMatchCounterPKc_10
	mov eax, [conDrawInputGlob+0x44]
	cmp eax, [conDrawInputGlob+0x40]
	jz _Z29ConDrawInput_IncrMatchCounterPKc_20
_Z29ConDrawInput_IncrMatchCounterPKc_30:
	add eax, 0x1
	mov [conDrawInputGlob+0x44], eax
	mov edx, 0x1
	mov eax, [conDrawInputGlob+0x4c]
	cmp byte [ebx+eax], 0x0
	movzx eax, byte [conDrawInputGlob+0x50]
	cmovnz edx, eax
	mov [conDrawInputGlob+0x50], dl
_Z29ConDrawInput_IncrMatchCounterPKc_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z29ConDrawInput_IncrMatchCounterPKc_20:
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], ebx
	mov dword [esp], conDrawInputGlob
	call _Z10I_strncpyzPcPKci
	mov eax, [conDrawInputGlob+0x44]
	jmp _Z29ConDrawInput_IncrMatchCounterPKc_30


;Con_OneTimeInit()
_Z15Con_OneTimeInitv:
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
	call _Z17Dvar_RegisterVec4PKcfffffftS0_
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
	call _Z17Dvar_RegisterVec4PKcfffffftS0_
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
	call _Z17Dvar_RegisterVec4PKcfffffftS0_
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
	call _Z17Dvar_RegisterVec4PKcfffffftS0_
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
	call _Z17Dvar_RegisterVec4PKcfffffftS0_
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
_Z15Con_OneTimeInitv_30:
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
	call _Z18Dvar_RegisterFloatPKcffftS0_
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
	call _Z16Dvar_RegisterIntPKciiitS0_
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
	call _Z18Dvar_RegisterFloatPKcffftS0_
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
	jz _Z15Con_OneTimeInitv_10
	mov eax, 0x3e800000
_Z15Con_OneTimeInitv_50:
	mov edx, [ebp-0x2c]
	mov [esp+0x14], edx
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x7f7fffff
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z18Dvar_RegisterFloatPKcffftS0_
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
	jz _Z15Con_OneTimeInitv_20
	mov eax, 0x3f000000
_Z15Con_OneTimeInitv_40:
	mov edx, [ebp-0x24]
	mov [esp+0x14], edx
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x7f7fffff
	mov dword [esp+0x8], 0x3c23d70a
	mov [esp+0x4], eax
	mov eax, [ebp-0x28]
	mov [esp], eax
	call _Z18Dvar_RegisterFloatPKcffftS0_
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
	call _Z18Dvar_RegisterFloatPKcffftS0_
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
	jnz _Z15Con_OneTimeInitv_30
	mov dword [esp+0x14], _cstring_onscreen_time_fo
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x7f7fffff
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x41000000
	mov dword [esp], _cstring_con_errormessage
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [con_errormessagetime], eax
	mov dword [esp+0x14], _cstring_onscreen_time_fo1
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x7f7fffff
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x40800000
	mov dword [esp], _cstring_con_minicontime
	call _Z18Dvar_RegisterFloatPKcffftS0_
	mov [con_minicontime], eax
	mov dword [esp+0x14], _cstring_number_of_lines_
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x64
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x5
	mov dword [esp], _cstring_con_miniconlines
	call _Z16Dvar_RegisterIntPKciiitS0_
	mov [con_miniconlines], eax
	mov dword [esp+0x14], _cstring_time_in_millisec
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x7fffffff
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x32
	mov dword [esp], _cstring_con_typewriterpr
	call _Z16Dvar_RegisterIntPKciiitS0_
	mov [con_typewriterPrintSpeed], eax
	mov dword [esp+0x14], _cstring_time_in_millisec1
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x7fffffff
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1770
	mov dword [esp], _cstring_con_typewriterde
	call _Z16Dvar_RegisterIntPKciiitS0_
	mov [con_typewriterDecayStartTime], eax
	mov dword [esp+0x14], _cstring_time_in_millisec2
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x7fffffff
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x2bc
	mov dword [esp], _cstring_con_typewriterde1
	call _Z16Dvar_RegisterIntPKciiitS0_
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
	call _Z17Dvar_RegisterVec3PKcffffftS0_
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
	call _Z17Dvar_RegisterVec4PKcfffffftS0_
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
	call _Z17Dvar_RegisterVec4PKcfffffftS0_
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
	call _Z17Dvar_RegisterVec4PKcfffffftS0_
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
	call _Z17Dvar_RegisterVec4PKcfffffftS0_
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
	call _Z21Con_InitMessageBufferv
	mov edx, colorWhite
	mov eax, [edx]
	mov [con+0x14abc], eax
	mov eax, [edx+0x4]
	mov [con+0x14ac0], eax
	mov eax, [edx+0x8]
	mov [con+0x14ac4], eax
	mov eax, [edx+0xc]
	mov [con+0x14ac8], eax
	call _Z15Con_CheckResizev
	mov dword [con], 0x1
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15Con_OneTimeInitv_20:
	mov eax, 0x3c23d70a
	jmp _Z15Con_OneTimeInitv_40
_Z15Con_OneTimeInitv_10:
	mov eax, 0x3f400000
	jmp _Z15Con_OneTimeInitv_50
	nop


;Con_UpdateNotifyMessageWindow(int, int, int, int, print_msg_dest_t)
_Z29Con_UpdateNotifyMessageWindowiiii16print_msg_dest_t:
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
	call _Z20Con_IsChannelVisible16print_msg_dest_tii
	test al, al
	jz _Z29Con_UpdateNotifyMessageWindowiiii16print_msg_dest_t_10
	test ebx, ebx
	jz _Z29Con_UpdateNotifyMessageWindowiiii16print_msg_dest_t_20
_Z29Con_UpdateNotifyMessageWindowiiii16print_msg_dest_t_140:
	test ebx, ebx
	js _Z29Con_UpdateNotifyMessageWindowiiii16print_msg_dest_t_30
_Z29Con_UpdateNotifyMessageWindowiiii16print_msg_dest_t_100:
	cmp edi, 0x1
	jz _Z29Con_UpdateNotifyMessageWindowiiii16print_msg_dest_t_40
_Z29Con_UpdateNotifyMessageWindowiiii16print_msg_dest_t_110:
	cmp edi, 0x2
	jz _Z29Con_UpdateNotifyMessageWindowiiii16print_msg_dest_t_50
	test edi, edi
	jz _Z29Con_UpdateNotifyMessageWindowiiii16print_msg_dest_t_60
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
	jg _Z29Con_UpdateNotifyMessageWindowiiii16print_msg_dest_t_70
_Z29Con_UpdateNotifyMessageWindowiiii16print_msg_dest_t_120:
	mov eax, clients
	mov eax, [eax+0x2fa0]
	mov [edx], eax
	add ebx, [edx]
	mov [edx+0x4], ebx
_Z29Con_UpdateNotifyMessageWindowiiii16print_msg_dest_t_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z29Con_UpdateNotifyMessageWindowiiii16print_msg_dest_t_20:
	cmp edi, 0x1
	jz _Z29Con_UpdateNotifyMessageWindowiiii16print_msg_dest_t_80
	cmp edi, 0x2
	jz _Z29Con_UpdateNotifyMessageWindowiiii16print_msg_dest_t_90
	mov eax, [edi*4+con_gameMsgWindowNLineCount+0x4]
	movss xmm0, dword [_float_1000_00000000]
	mulss xmm0, [eax+0xc]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x24]
	cvttss2si ebx, [ebp-0x24]
	test ebx, ebx
	jns _Z29Con_UpdateNotifyMessageWindowiiii16print_msg_dest_t_100
_Z29Con_UpdateNotifyMessageWindowiiii16print_msg_dest_t_30:
	xor ebx, ebx
	cmp edi, 0x1
	jnz _Z29Con_UpdateNotifyMessageWindowiiii16print_msg_dest_t_110
_Z29Con_UpdateNotifyMessageWindowiiii16print_msg_dest_t_40:
	lea eax, [esi+esi*8]
	shl eax, 0x5
	add eax, esi
	lea eax, [esi+eax*4]
	lea eax, [esi+eax*2]
	lea ecx, [eax*8+con+0x13934]
_Z29Con_UpdateNotifyMessageWindowiiii16print_msg_dest_t_130:
	mov eax, [ecx+0x30]
	add eax, 0x1
	cdq
	idiv dword [ecx+0x10]
	mov [ecx+0x30], edx
	mov eax, [ecx+0x4]
	lea edx, [eax+edx*8]
	test esi, esi
	jle _Z29Con_UpdateNotifyMessageWindowiiii16print_msg_dest_t_120
_Z29Con_UpdateNotifyMessageWindowiiii16print_msg_dest_t_70:
	mov dword [edx], 0x0
	add ebx, [edx]
	mov [edx+0x4], ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z29Con_UpdateNotifyMessageWindowiiii16print_msg_dest_t_60:
	mov ecx, con+0x4
	jmp _Z29Con_UpdateNotifyMessageWindowiiii16print_msg_dest_t_130
_Z29Con_UpdateNotifyMessageWindowiiii16print_msg_dest_t_90:
	movss xmm0, dword [_float_1000_00000000]
	mov eax, [con_errormessagetime]
	mulss xmm0, [eax+0xc]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x20]
	cvttss2si ebx, [ebp-0x20]
	jmp _Z29Con_UpdateNotifyMessageWindowiiii16print_msg_dest_t_140
_Z29Con_UpdateNotifyMessageWindowiiii16print_msg_dest_t_50:
	lea eax, [esi+esi*8]
	shl eax, 0x5
	add eax, esi
	lea eax, [esi+eax*4]
	lea eax, [esi+eax*2]
	lea ecx, [eax*8+con+0x149e8]
	jmp _Z29Con_UpdateNotifyMessageWindowiiii16print_msg_dest_t_130
_Z29Con_UpdateNotifyMessageWindowiiii16print_msg_dest_t_80:
	movss xmm0, dword [_float_1000_00000000]
	mov eax, [con_minicontime]
	mulss xmm0, [eax+0xc]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x1c]
	cvttss2si ebx, [ebp-0x1c]
	jmp _Z29Con_UpdateNotifyMessageWindowiiii16print_msg_dest_t_140


;ConDrawInput_DvarMatch(char const*)
_Z22ConDrawInput_DvarMatchPKc:
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
	call _Z23Con_IsAutoCompleteMatchPKcS0_i
	test al, al
	jz _Z22ConDrawInput_DvarMatchPKc_10
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
	call _Z16R_AddCmdDrawTextPKciP6Font_sfffffPKfi
	movss xmm0, dword [_float_300_00000000]
	addss xmm0, [conDrawInputGlob+0x54]
	movss [conDrawInputGlob+0x54], xmm0
	mov [esp], edi
	call _Z21Dvar_GetVariantStringPKc
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
	call _Z16R_AddCmdDrawTextPKciP6Font_sfffffPKfi
	movss xmm0, dword [conDrawInputGlob+0x58]
	addss xmm0, [conDrawInputGlob+0x60]
	movss [conDrawInputGlob+0x58], xmm0
	mov eax, [conDrawInputGlob+0x5c]
	mov [conDrawInputGlob+0x54], eax
_Z22ConDrawInput_DvarMatchPKc_10:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Con_DrawMessageLineOnHUD(int, ScreenPlacement const*, int, int, int, int, int, Font_s*, MessageWindow const*, int, float*, int, float, int)
_Z24Con_DrawMessageLineOnHUDiPK15ScreenPlacementiiiiiP6Font_sPK13MessageWindowiPfifi:
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
	jl _Z24Con_DrawMessageLineOnHUDiPK15ScreenPlacementiiiiiP6Font_sPK13MessageWindowiPfifi_10
	test byte [edi+0x14], 0x1
	jnz _Z24Con_DrawMessageLineOnHUDiPK15ScreenPlacementiiiiiP6Font_sPK13MessageWindowiPfifi_20
	mov eax, [ebp+0x24]
_Z24Con_DrawMessageLineOnHUDiPK15ScreenPlacementiiiiiP6Font_sPK13MessageWindowiPfifi_150:
	cvtsi2ss xmm0, dword [ebp+0x18]
	divss xmm0, dword [_float_48_00000000]
	mulss xmm0, [ebp+0x38]
	movss [esp+0x4], xmm0
	mov [esp], eax
	call _Z21R_NormalizedTextScaleP6Font_sf
	fst dword [ebp-0x1c]
	fstp dword [ebp-0x20]
	mov eax, [ebp+0x3c]
	and eax, 0x3
	cmp eax, 0x1
	jz _Z24Con_DrawMessageLineOnHUDiPK15ScreenPlacementiiiiiP6Font_sPK13MessageWindowiPfifi_30
	cmp eax, 0x2
	jz _Z24Con_DrawMessageLineOnHUDiPK15ScreenPlacementiiiiiP6Font_sPK13MessageWindowiPfifi_40
_Z24Con_DrawMessageLineOnHUDiPK15ScreenPlacementiiiiiP6Font_sPK13MessageWindowiPfifi_200:
	mov eax, [ebp+0x3c]
	and eax, 0xc
	cmp eax, 0x4
	jz _Z24Con_DrawMessageLineOnHUDiPK15ScreenPlacementiiiiiP6Font_sPK13MessageWindowiPfifi_50
	cmp eax, 0x8
	jz _Z24Con_DrawMessageLineOnHUDiPK15ScreenPlacementiiiiiP6Font_sPK13MessageWindowiPfifi_60
_Z24Con_DrawMessageLineOnHUDiPK15ScreenPlacementiiiiiP6Font_sPK13MessageWindowiPfifi_190:
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
	call _Z18ScrPlace_ApplyRectPK15ScreenPlacementPfS2_S2_S2_ii
	mov eax, [edi+0x14]
	test al, 0x1
	jz _Z24Con_DrawMessageLineOnHUDiPK15ScreenPlacementiiiiiP6Font_sPK13MessageWindowiPfifi_70
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
	jz _Z24Con_DrawMessageLineOnHUDiPK15ScreenPlacementiiiiiP6Font_sPK13MessageWindowiPfifi_80
	mov edx, [con_typewriterColorGlowCheckpoint]
	add edx, 0xc
	mov [ebp-0x58], edx
_Z24Con_DrawMessageLineOnHUDiPK15ScreenPlacementiiiiiP6Font_sPK13MessageWindowiPfifi_180:
	mov dword [ebp-0x50], 0x0
	xor esi, esi
_Z24Con_DrawMessageLineOnHUDiPK15ScreenPlacementiiiiiP6Font_sPK13MessageWindowiPfifi_100:
	cmp esi, [edi+0x8]
	jge _Z24Con_DrawMessageLineOnHUDiPK15ScreenPlacementiiiiiP6Font_sPK13MessageWindowiPfifi_90
_Z24Con_DrawMessageLineOnHUDiPK15ScreenPlacementiiiiiP6Font_sPK13MessageWindowiPfifi_110:
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
	call _Z16SEH_DecodeLetterjjPiS_
	add esi, [ebp-0x2c]
	add dword [ebp-0x50], 0x1
	cmp eax, 0x5e
	jnz _Z24Con_DrawMessageLineOnHUDiPK15ScreenPlacementiiiiiP6Font_sPK13MessageWindowiPfifi_100
	mov eax, esi
	add eax, [edi+0x4]
	mov ecx, [ebp+0x28]
	mov edx, [ecx+0xc]
	sub edx, 0x1
	and eax, edx
	mov edx, [ecx+0x8]
	movzx edx, byte [edx+eax]
	cmp dl, 0x5e
	jz _Z24Con_DrawMessageLineOnHUDiPK15ScreenPlacementiiiiiP6Font_sPK13MessageWindowiPfifi_100
	cmp dl, 0x2f
	jle _Z24Con_DrawMessageLineOnHUDiPK15ScreenPlacementiiiiiP6Font_sPK13MessageWindowiPfifi_100
	lea eax, [esi+0x1]
	cmp dl, 0x39
	cmovle esi, eax
	cmp esi, [edi+0x8]
	jl _Z24Con_DrawMessageLineOnHUDiPK15ScreenPlacementiiiiiP6Font_sPK13MessageWindowiPfifi_110
_Z24Con_DrawMessageLineOnHUDiPK15ScreenPlacementiiiiiP6Font_sPK13MessageWindowiPfifi_90:
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
	js _Z24Con_DrawMessageLineOnHUDiPK15ScreenPlacementiiiiiP6Font_sPK13MessageWindowiPfifi_120
	cmp ebx, eax
	jge _Z24Con_DrawMessageLineOnHUDiPK15ScreenPlacementiiiiiP6Font_sPK13MessageWindowiPfifi_130
	cmp ebx, esi
	jg _Z24Con_DrawMessageLineOnHUDiPK15ScreenPlacementiiiiiP6Font_sPK13MessageWindowiPfifi_140
_Z24Con_DrawMessageLineOnHUDiPK15ScreenPlacementiiiiiP6Font_sPK13MessageWindowiPfifi_120:
	mov ecx, [ebp-0x5c]
_Z24Con_DrawMessageLineOnHUDiPK15ScreenPlacementiiiiiP6Font_sPK13MessageWindowiPfifi_210:
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
	call _Z30R_AddCmdDrawConsoleTextPulseFXPKciiiP6Font_sffffPKfiS4_iiiiP8MaterialS6_
_Z24Con_DrawMessageLineOnHUDiPK15ScreenPlacementiiiiiP6Font_sPK13MessageWindowiPfifi_10:
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24Con_DrawMessageLineOnHUDiPK15ScreenPlacementiiiiiP6Font_sPK13MessageWindowiPfifi_20:
	mov dword [esp+0x8], 0x3f800000
	mov dword [esp+0x4], 0x6
	mov dword [esp], 0x0
	call _Z16UI_GetFontHandlePK15ScreenPlacementif
	mov [ebp+0x24], eax
	jmp _Z24Con_DrawMessageLineOnHUDiPK15ScreenPlacementiiiiiP6Font_sPK13MessageWindowiPfifi_150
_Z24Con_DrawMessageLineOnHUDiPK15ScreenPlacementiiiiiP6Font_sPK13MessageWindowiPfifi_70:
	test al, 0x20
	jnz _Z24Con_DrawMessageLineOnHUDiPK15ScreenPlacementiiiiiP6Font_sPK13MessageWindowiPfifi_160
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
	call _Z23R_AddCmdDrawConsoleTextPKciiiP6Font_sffffPKfi
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24Con_DrawMessageLineOnHUDiPK15ScreenPlacementiiiiiP6Font_sPK13MessageWindowiPfifi_160:
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
	call _Z31R_AddCmdDrawConsoleTextSubtitlePKciiiP6Font_sffffPKfiS4_
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24Con_DrawMessageLineOnHUDiPK15ScreenPlacementiiiiiP6Font_sPK13MessageWindowiPfifi_80:
	test al, 0x4
	jz _Z24Con_DrawMessageLineOnHUDiPK15ScreenPlacementiiiiiP6Font_sPK13MessageWindowiPfifi_170
	mov ecx, [con_typewriterColorGlowCompleted]
	add ecx, 0xc
	mov [ebp-0x58], ecx
	jmp _Z24Con_DrawMessageLineOnHUDiPK15ScreenPlacementiiiiiP6Font_sPK13MessageWindowiPfifi_180
_Z24Con_DrawMessageLineOnHUDiPK15ScreenPlacementiiiiiP6Font_sPK13MessageWindowiPfifi_50:
	mov eax, [ebp+0x24]
	mov [esp], eax
	call _Z12R_TextHeightP6Font_s
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0x20]
	cvttss2si eax, xmm0
	add esi, eax
	jmp _Z24Con_DrawMessageLineOnHUDiPK15ScreenPlacementiiiiiP6Font_sPK13MessageWindowiPfifi_190
_Z24Con_DrawMessageLineOnHUDiPK15ScreenPlacementiiiiiP6Font_sPK13MessageWindowiPfifi_30:
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
	call _Z18R_ConsoleTextWidthPKciiiP6Font_s
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0x1c]
	mulss xmm0, [_float_0_50000000]
	cvttss2si eax, xmm0
	sub ebx, eax
	jmp _Z24Con_DrawMessageLineOnHUDiPK15ScreenPlacementiiiiiP6Font_sPK13MessageWindowiPfifi_200
_Z24Con_DrawMessageLineOnHUDiPK15ScreenPlacementiiiiiP6Font_sPK13MessageWindowiPfifi_60:
	mov ecx, [ebp+0x24]
	mov [esp], ecx
	call _Z12R_TextHeightP6Font_s
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0x20]
	mulss xmm0, [_float_0_50000000]
	cvttss2si eax, xmm0
	add esi, eax
	jmp _Z24Con_DrawMessageLineOnHUDiPK15ScreenPlacementiiiiiP6Font_sPK13MessageWindowiPfifi_190
_Z24Con_DrawMessageLineOnHUDiPK15ScreenPlacementiiiiiP6Font_sPK13MessageWindowiPfifi_40:
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
	call _Z18R_ConsoleTextWidthPKciiiP6Font_s
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0x1c]
	cvttss2si eax, xmm0
	sub ebx, eax
	jmp _Z24Con_DrawMessageLineOnHUDiPK15ScreenPlacementiiiiiP6Font_sPK13MessageWindowiPfifi_200
_Z24Con_DrawMessageLineOnHUDiPK15ScreenPlacementiiiiiP6Font_sPK13MessageWindowiPfifi_130:
	cmp eax, ecx
	jge _Z24Con_DrawMessageLineOnHUDiPK15ScreenPlacementiiiiiP6Font_sPK13MessageWindowiPfifi_120
	cdq
	idiv dword [ebp-0x54]
	imul eax, [ebp-0x54]
	cmp esi, eax
	jge _Z24Con_DrawMessageLineOnHUDiPK15ScreenPlacementiiiiiP6Font_sPK13MessageWindowiPfifi_120
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_ui_pulse_text_ty
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z29SND_PlayLocalSoundAliasByNameiPKc18snd_alias_system_t
	mov ecx, [ebp-0x4c]
	mov [edi+0x10], ecx
	mov eax, [con_typewriterDecayStartTime]
	mov [ebp-0x5c], eax
	mov edx, [con_typewriterPrintSpeed]
	mov [ebp-0x60], edx
	mov ecx, eax
	jmp _Z24Con_DrawMessageLineOnHUDiPK15ScreenPlacementiiiiiP6Font_sPK13MessageWindowiPfifi_210
_Z24Con_DrawMessageLineOnHUDiPK15ScreenPlacementiiiiiP6Font_sPK13MessageWindowiPfifi_170:
	test al, 0x8
	jnz _Z24Con_DrawMessageLineOnHUDiPK15ScreenPlacementiiiiiP6Font_sPK13MessageWindowiPfifi_220
	mov edx, [con_typewriterColorGlowUpdated]
	add edx, 0xc
	mov [ebp-0x58], edx
	jmp _Z24Con_DrawMessageLineOnHUDiPK15ScreenPlacementiiiiiP6Font_sPK13MessageWindowiPfifi_180
_Z24Con_DrawMessageLineOnHUDiPK15ScreenPlacementiiiiiP6Font_sPK13MessageWindowiPfifi_220:
	mov eax, [con_typewriterColorGlowFailed]
	add eax, 0xc
	mov [ebp-0x58], eax
	jmp _Z24Con_DrawMessageLineOnHUDiPK15ScreenPlacementiiiiiP6Font_sPK13MessageWindowiPfifi_180
_Z24Con_DrawMessageLineOnHUDiPK15ScreenPlacementiiiiiP6Font_sPK13MessageWindowiPfifi_140:
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_ui_pulse_text_de
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z29SND_PlayLocalSoundAliasByNameiPKc18snd_alias_system_t
	mov edx, [ebp-0x4c]
	mov [edi+0x10], edx
	mov ecx, [con_typewriterDecayStartTime]
	mov [ebp-0x5c], ecx
	mov eax, [con_typewriterPrintSpeed]
	mov [ebp-0x60], eax
	jmp _Z24Con_DrawMessageLineOnHUDiPK15ScreenPlacementiiiiiP6Font_sPK13MessageWindowiPfifi_210
	nop


;Con_DrawMessageWindowNewToOld(int, MessageWindow*, int, int, int, int, int, unsigned char, Font_s*, float*, int, float, int)
_Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi:
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
	jz _Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi_10
_Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi_180:
	mov esi, [ebx+0x2c]
	mov [ebp-0x40], esi
	test esi, esi
	jz _Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi_20
_Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi_40:
	mov ecx, [ebx+0x28]
	mov edx, [ebx]
	lea eax, [ecx+ecx*2]
	mov edx, [edx+eax*8]
	mov eax, [ebx+0x4]
	mov edi, [ebp-0x44]
	cmp edi, [eax+edx*8+0x4]
	js _Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi_20
	lea eax, [esi-0x1]
	mov [ebx+0x2c], eax
	add ecx, 0x1
	mov [ebx+0x28], ecx
	cmp ecx, [ebx+0x10]
	jz _Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi_30
	mov esi, eax
	mov [ebp-0x40], esi
	test esi, esi
	jnz _Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi_40
_Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi_20:
	mov eax, [ebp+0x8]
	sub eax, [ebp+0xc]
	cmp byte [ebp-0x55], 0x0
	cmovnz eax, [ebp+0x8]
	mov [ebp+0x8], eax
	mov ecx, [ebp-0x40]
	test ecx, ecx
	jle _Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi_50
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
	jmp _Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi_60
_Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi_80:
	mulss xmm3, [ebp-0x60]
	addss xmm3, [_float_0_50000000]
	movss [esp], xmm3
	call floorf
	fstp dword [ebp-0x68]
	cvttss2si eax, [ebp-0x68]
	sub [ebp+0x8], eax
_Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi_70:
	add edi, 0x1
	cmp [ebp-0x40], edi
	jz _Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi_50
_Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi_90:
	mov ecx, [ebp-0x38]
_Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi_60:
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
	jge _Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi_70
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
	jz _Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi_80
	mulss xmm3, [ebp-0x60]
	addss xmm3, [_float_0_50000000]
	movss [esp], xmm3
	call floorf
	fstp dword [ebp-0x64]
	cvttss2si eax, [ebp-0x64]
	add [ebp+0x8], eax
	add edi, 0x1
	cmp [ebp-0x40], edi
	jnz _Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi_90
_Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi_50:
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
	js _Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi_100
	mov edi, eax
	mov eax, [ebp-0x50]
	shl eax, 0x6
	mov ecx, [ebp-0x50]
	lea eax, [eax+ecx*4]
	mov esi, scrPlaceView
	add eax, esi
	mov [ebp-0x6c], eax
	jmp _Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi_110
_Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi_130:
	mov edx, [ebp+0xc]
	add [ebp+0x8], edx
	mov edx, [eax+0x4]
	cmp [ebp-0x44], edx
	js _Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi_120
_Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi_140:
	sub edi, 0x1
	cmp edi, 0xffffffff
	jz _Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi_100
_Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi_110:
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
	jz _Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi_130
	mov ecx, [ebp+0xc]
	sub [ebp+0x8], ecx
	mov edx, [eax+0x4]
	cmp [ebp-0x44], edx
	jns _Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi_140
_Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi_120:
	mov ecx, [ebp+0x20]
	movss xmm3, dword [ecx+0xc]
	mov ecx, edx
	sub ecx, [ebp-0x44]
	mov edx, [ebx+0x20]
	cmp ecx, edx
	jl _Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi_150
	movss xmm2, dword [_float_1_00000000]
_Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi_200:
	mov ecx, [ebx+0x1c]
	mov edx, [ebx+0x18]
	cmp ecx, edx
	jge _Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi_160
	mov eax, [eax]
	mov [ebp-0x2c], eax
	mov eax, [ebp-0x44]
	sub eax, [ebp-0x2c]
	cmp edx, eax
	jg _Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi_170
_Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi_190:
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
_Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi_220:
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
	call _Z24Con_DrawMessageLineOnHUDiPK15ScreenPlacementiiiiiP6Font_sPK13MessageWindowiPfifi
	sub edi, 0x1
	cmp edi, 0xffffffff
	jnz _Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi_110
_Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi_100:
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi_30:
	mov dword [ebx+0x28], 0x0
	jmp _Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi_180
_Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi_160:
	test ecx, ecx
	jz _Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi_190
	mov edx, [ebp-0x44]
	sub edx, [eax]
	cmp edx, ecx
	jge _Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi_190
	cvtsi2ss xmm0, edx
	cvtsi2ss xmm1, ecx
	divss xmm0, xmm1
	mulss xmm2, xmm0
	jmp _Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi_190
_Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi_150:
	cvtsi2ss xmm2, ecx
	cvtsi2ss xmm0, edx
	divss xmm2, xmm0
	jmp _Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi_200
_Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi_170:
	sub edx, ecx
	cmp eax, edx
	jle _Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi_210
	mov eax, [ebp-0x2c]
	add eax, edx
	mov edx, [ebp-0x44]
	sub edx, eax
	cvtsi2ss xmm0, edx
	cvtsi2ss xmm1, ecx
	divss xmm0, xmm1
	mulss xmm2, xmm0
	jmp _Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi_190
_Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi_210:
	pxor xmm2, xmm2
	jmp _Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi_220
_Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi_10:
	mov eax, [con+0x30]
_Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi_260:
	mov [ebp-0x40], eax
	test eax, eax
	jz _Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi_230
	mov ecx, [con+0x2c]
	lea edx, [ecx+ecx*2]
	mov eax, [con+0x4]
	mov edx, [eax+edx*8]
	mov eax, [con+0x8]
	mov esi, [ebp-0x44]
	cmp esi, [eax+edx*8+0x4]
	js _Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi_240
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
	jge _Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi_250
	mov eax, esi
	cmp edx, esi
	cmovg edx, esi
	mov [con+0x1023c], edx
	jmp _Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi_260
_Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi_230:
	xor esi, esi
	jmp _Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi_20
_Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi_250:
	mov eax, esi
	jmp _Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi_260
_Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi_240:
	mov esi, [con+0x30]
	jmp _Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi_20


;Con_DrawMessageWindowOldToNew(int, MessageWindow*, int, int, int, int, int, unsigned char, Font_s*, float*, int, float, int)
_Z29Con_DrawMessageWindowOldToNewiP13MessageWindowiiiiihP6Font_sPfifi:
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
	jz _Z29Con_DrawMessageWindowOldToNewiP13MessageWindowiiiiihP6Font_sPfifi_10
_Z29Con_DrawMessageWindowOldToNewiP13MessageWindowiiiiihP6Font_sPfifi_140:
	mov ebx, [esi+0x2c]
	test ebx, ebx
	jz _Z29Con_DrawMessageWindowOldToNewiP13MessageWindowiiiiihP6Font_sPfifi_20
_Z29Con_DrawMessageWindowOldToNewiP13MessageWindowiiiiihP6Font_sPfifi_40:
	mov ecx, [esi+0x28]
	mov edx, [esi]
	lea eax, [ecx+ecx*2]
	mov edx, [edx+eax*8]
	mov eax, [esi+0x4]
	cmp edi, [eax+edx*8+0x4]
	js _Z29Con_DrawMessageWindowOldToNewiP13MessageWindowiiiiihP6Font_sPfifi_20
	lea eax, [ebx-0x1]
	mov [esi+0x2c], eax
	add ecx, 0x1
	mov [esi+0x28], ecx
	cmp ecx, [esi+0x10]
	jz _Z29Con_DrawMessageWindowOldToNewiP13MessageWindowiiiiihP6Font_sPfifi_30
	mov ebx, eax
	test ebx, ebx
	jnz _Z29Con_DrawMessageWindowOldToNewiP13MessageWindowiiiiihP6Font_sPfifi_40
_Z29Con_DrawMessageWindowOldToNewiP13MessageWindowiiiiihP6Font_sPfifi_20:
	cmp byte [ebp-0x3d], 0x0
	jnz _Z29Con_DrawMessageWindowOldToNewiP13MessageWindowiiiiihP6Font_sPfifi_50
	mov ecx, [ebp+0x8]
	mov [ebp-0x34], ecx
_Z29Con_DrawMessageWindowOldToNewiP13MessageWindowiiiiihP6Font_sPfifi_170:
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
	jle _Z29Con_DrawMessageWindowOldToNewiP13MessageWindowiiiiihP6Font_sPfifi_60
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
_Z29Con_DrawMessageWindowOldToNewiP13MessageWindowiiiiihP6Font_sPfifi_130:
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
	jg _Z29Con_DrawMessageWindowOldToNewiP13MessageWindowiiiiihP6Font_sPfifi_70
	mov edx, [esi+0x18]
	mov eax, ebx
	sub eax, edx
	cmp edi, eax
	jle _Z29Con_DrawMessageWindowOldToNewiP13MessageWindowiiiiihP6Font_sPfifi_80
	mov ecx, edi
	sub ecx, eax
	test ecx, ecx
	jle _Z29Con_DrawMessageWindowOldToNewiP13MessageWindowiiiiihP6Font_sPfifi_80
	cmp byte [ebp-0x3d], 0x0
	jnz _Z29Con_DrawMessageWindowOldToNewiP13MessageWindowiiiiihP6Font_sPfifi_90
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
_Z29Con_DrawMessageWindowOldToNewiP13MessageWindowiiiiihP6Font_sPfifi_80:
	mov eax, [ebp+0x20]
	movss xmm3, dword [eax+0xc]
	mov edx, ebx
	sub edx, edi
	mov eax, [esi+0x20]
	cmp edx, eax
	jl _Z29Con_DrawMessageWindowOldToNewiP13MessageWindowiiiiihP6Font_sPfifi_100
	movss xmm2, dword [_float_1_00000000]
_Z29Con_DrawMessageWindowOldToNewiP13MessageWindowiiiiihP6Font_sPfifi_150:
	mov eax, [esi+0x1c]
	test eax, eax
	jz _Z29Con_DrawMessageWindowOldToNewiP13MessageWindowiiiiihP6Font_sPfifi_110
	mov edx, edi
	mov ecx, [ebp-0x2c]
	sub edx, [ecx]
	cmp eax, edx
	jle _Z29Con_DrawMessageWindowOldToNewiP13MessageWindowiiiiihP6Font_sPfifi_110
	cvtsi2ss xmm0, edx
	cvtsi2ss xmm1, eax
	divss xmm0, xmm1
	mulss xmm2, xmm0
_Z29Con_DrawMessageWindowOldToNewiP13MessageWindowiiiiihP6Font_sPfifi_110:
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
	call _Z24Con_DrawMessageLineOnHUDiPK15ScreenPlacementiiiiiP6Font_sPK13MessageWindowiPfifi
	cmp byte [ebp-0x3d], 0x0
	jz _Z29Con_DrawMessageWindowOldToNewiP13MessageWindowiiiiihP6Font_sPfifi_120
	mov edx, [ebp+0xc]
	sub [ebp-0x34], edx
_Z29Con_DrawMessageWindowOldToNewiP13MessageWindowiiiiihP6Font_sPfifi_70:
	add dword [ebp-0x30], 0x1
	mov eax, [ebp-0x30]
	cmp eax, [esi+0x2c]
	jge _Z29Con_DrawMessageWindowOldToNewiP13MessageWindowiiiiihP6Font_sPfifi_60
_Z29Con_DrawMessageWindowOldToNewiP13MessageWindowiiiiihP6Font_sPfifi_160:
	mov edx, clients
	mov [ebp-0x5c], edx
	jmp _Z29Con_DrawMessageWindowOldToNewiP13MessageWindowiiiiihP6Font_sPfifi_130
_Z29Con_DrawMessageWindowOldToNewiP13MessageWindowiiiiihP6Font_sPfifi_30:
	mov dword [esi+0x28], 0x0
	jmp _Z29Con_DrawMessageWindowOldToNewiP13MessageWindowiiiiihP6Font_sPfifi_140
_Z29Con_DrawMessageWindowOldToNewiP13MessageWindowiiiiihP6Font_sPfifi_100:
	cvtsi2ss xmm2, edx
	cvtsi2ss xmm0, eax
	divss xmm2, xmm0
	jmp _Z29Con_DrawMessageWindowOldToNewiP13MessageWindowiiiiihP6Font_sPfifi_150
_Z29Con_DrawMessageWindowOldToNewiP13MessageWindowiiiiihP6Font_sPfifi_120:
	mov ecx, [ebp+0xc]
	add [ebp-0x34], ecx
	add dword [ebp-0x30], 0x1
	mov eax, [ebp-0x30]
	cmp eax, [esi+0x2c]
	jl _Z29Con_DrawMessageWindowOldToNewiP13MessageWindowiiiiihP6Font_sPfifi_160
_Z29Con_DrawMessageWindowOldToNewiP13MessageWindowiiiiihP6Font_sPfifi_60:
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z29Con_DrawMessageWindowOldToNewiP13MessageWindowiiiiihP6Font_sPfifi_50:
	mov eax, [ebp+0x8]
	sub eax, [ebp+0xc]
	mov [ebp-0x34], eax
	jmp _Z29Con_DrawMessageWindowOldToNewiP13MessageWindowiiiiihP6Font_sPfifi_170
_Z29Con_DrawMessageWindowOldToNewiP13MessageWindowiiiiihP6Font_sPfifi_90:
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
	jmp _Z29Con_DrawMessageWindowOldToNewiP13MessageWindowiiiiihP6Font_sPfifi_80
_Z29Con_DrawMessageWindowOldToNewiP13MessageWindowiiiiihP6Font_sPfifi_10:
	mov ebx, [con+0x30]
_Z29Con_DrawMessageWindowOldToNewiP13MessageWindowiiiiihP6Font_sPfifi_180:
	test ebx, ebx
	jz _Z29Con_DrawMessageWindowOldToNewiP13MessageWindowiiiiihP6Font_sPfifi_20
	mov ecx, [con+0x2c]
	lea edx, [ecx+ecx*2]
	mov eax, [con+0x4]
	mov edx, [eax+edx*8]
	mov eax, [con+0x8]
	cmp edi, [eax+edx*8+0x4]
	js _Z29Con_DrawMessageWindowOldToNewiP13MessageWindowiiiiihP6Font_sPfifi_20
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
	jge _Z29Con_DrawMessageWindowOldToNewiP13MessageWindowiiiiihP6Font_sPfifi_180
	cmp edx, ebx
	cmovg edx, ebx
	mov [con+0x1023c], edx
	jmp _Z29Con_DrawMessageWindowOldToNewiP13MessageWindowiiiiihP6Font_sPfifi_180


;Con_UpdateMessageWindowLine(int, MessageWindow*, int, int)
_Z27Con_UpdateMessageWindowLineiP13MessageWindowii:
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
	jle _Z27Con_UpdateMessageWindowLineiP13MessageWindowii_10
	mov dword [ebp-0x58], 0x0
_Z27Con_UpdateMessageWindowLineiP13MessageWindowii_280:
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
	jnz _Z27Con_UpdateMessageWindowLineiP13MessageWindowii_20
	mov dword [ebp-0x48], 0x0
	mov edx, [ebp-0x48]
_Z27Con_UpdateMessageWindowLineiP13MessageWindowii_180:
	mov eax, [ebp-0x54]
	mov [eax+0xc], edx
	test edx, edx
	jz _Z27Con_UpdateMessageWindowLineiP13MessageWindowii_30
	mov edx, [eax]
	mov eax, [esi+0x4]
	lea edx, [eax+edx*8]
	mov [ebp-0x5c], edx
	mov ebx, [ebp-0x54]
	test byte [ebx+0x14], 0x1
	jz _Z27Con_UpdateMessageWindowLineiP13MessageWindowii_40
	mov dword [ebp-0x34], 0x0
	xor edi, edi
_Z27Con_UpdateMessageWindowLineiP13MessageWindowii_60:
	mov ebx, [ebp-0x54]
	cmp edi, [ebx+0x8]
	jge _Z27Con_UpdateMessageWindowLineiP13MessageWindowii_50
_Z27Con_UpdateMessageWindowLineiP13MessageWindowii_70:
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
	call _Z16SEH_DecodeLetterjjPiS_
	add edi, [ebp-0x1c]
	add dword [ebp-0x34], 0x1
	cmp eax, 0x5e
	jnz _Z27Con_UpdateMessageWindowLineiP13MessageWindowii_60
	mov eax, edi
	mov edx, [ebp-0x54]
	add eax, [edx+0x4]
	mov edx, [esi+0xc]
	sub edx, 0x1
	and eax, edx
	mov edx, [esi+0x8]
	movzx edx, byte [edx+eax]
	cmp dl, 0x5e
	jz _Z27Con_UpdateMessageWindowLineiP13MessageWindowii_60
	cmp dl, 0x2f
	jle _Z27Con_UpdateMessageWindowLineiP13MessageWindowii_60
	lea eax, [edi+0x1]
	cmp dl, 0x39
	cmovle edi, eax
	mov ebx, [ebp-0x54]
	cmp edi, [ebx+0x8]
	jl _Z27Con_UpdateMessageWindowLineiP13MessageWindowii_70
_Z27Con_UpdateMessageWindowLineiP13MessageWindowii_50:
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
_Z27Con_UpdateMessageWindowLineiP13MessageWindowii_30:
	cmp esi, con+0x4
	jz _Z27Con_UpdateMessageWindowLineiP13MessageWindowii_80
	mov eax, [esi+0xc]
	mov [ebp-0x68], eax
	mov ebx, [esi+0x24]
_Z27Con_UpdateMessageWindowLineiP13MessageWindowii_160:
	mov edx, [con+0x10238]
	mov [ebp-0x2c], edx
	mov edi, edx
	add edi, 0x1
	mov eax, [esi+0x2c]
	mov [ebp-0x30], eax
	test eax, eax
	jnz _Z27Con_UpdateMessageWindowLineiP13MessageWindowii_90
_Z27Con_UpdateMessageWindowLineiP13MessageWindowii_150:
	mov edi, [ebp-0x68]
_Z27Con_UpdateMessageWindowLineiP13MessageWindowii_400:
	sub edi, ebx
	cmp edi, [ebp-0x2c]
	jb _Z27Con_UpdateMessageWindowLineiP13MessageWindowii_100
	add ebx, [esi+0x8]
	mov eax, [ebp-0x2c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], con+0x10038
	mov [esp], ebx
	call memcpy
_Z27Con_UpdateMessageWindowLineiP13MessageWindowii_190:
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
	jz _Z27Con_UpdateMessageWindowLineiP13MessageWindowii_110
	mov edx, [esi+0x2c]
	cmp edx, [esi+0x10]
	jz _Z27Con_UpdateMessageWindowLineiP13MessageWindowii_120
_Z27Con_UpdateMessageWindowLineiP13MessageWindowii_310:
	add edx, 0x1
	mov [esi+0x2c], edx
	mov ecx, [esi+0x10]
	mov eax, ecx
	sub eax, [esi+0x14]
	sub edx, eax
	mov eax, edx
	test edx, edx
	jle _Z27Con_UpdateMessageWindowLineiP13MessageWindowii_110
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
	jge _Z27Con_UpdateMessageWindowLineiP13MessageWindowii_110
	mov eax, [ebp-0x58]
	add eax, edx
	mov [ecx+0x4], eax
_Z27Con_UpdateMessageWindowLineiP13MessageWindowii_110:
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z27Con_UpdateMessageWindowLineiP13MessageWindowii_90:
	mov eax, [esi+0x28]
	lea eax, [eax+eax*2]
	mov edx, [esi]
	lea ecx, [edx+eax*8]
	lea edx, [edi+ebx]
	mov eax, [ebp-0x68]
	sub eax, 0x1
	and edx, eax
	cmp ebx, edx
	jg _Z27Con_UpdateMessageWindowLineiP13MessageWindowii_130
	mov eax, [ecx+0x4]
	cmp ebx, eax
	jg _Z27Con_UpdateMessageWindowLineiP13MessageWindowii_140
	cmp edx, eax
	jle _Z27Con_UpdateMessageWindowLineiP13MessageWindowii_140
_Z27Con_UpdateMessageWindowLineiP13MessageWindowii_200:
	mov eax, 0x1
_Z27Con_UpdateMessageWindowLineiP13MessageWindowii_210:
	test al, al
	jz _Z27Con_UpdateMessageWindowLineiP13MessageWindowii_150
	mov eax, [ebp-0x30]
	sub eax, 0x1
	mov [esi+0x2c], eax
	mov eax, [esi+0x28]
	add eax, 0x1
	mov [esi+0x28], eax
	cmp eax, [esi+0x10]
	jnz _Z27Con_UpdateMessageWindowLineiP13MessageWindowii_160
	mov dword [esi+0x28], 0x0
	jmp _Z27Con_UpdateMessageWindowLineiP13MessageWindowii_160
_Z27Con_UpdateMessageWindowLineiP13MessageWindowii_20:
	mov eax, clients
	mov eax, [eax+0x2fa0]
	mov [ebp-0x4c], eax
	mov eax, [esi+0x2c]
	test eax, eax
	jnz _Z27Con_UpdateMessageWindowLineiP13MessageWindowii_170
_Z27Con_UpdateMessageWindowLineiP13MessageWindowii_220:
	mov edi, [ebp-0x4c]
	add edi, 0xfa
	mov [ebp-0x48], edi
	mov edx, edi
	jmp _Z27Con_UpdateMessageWindowLineiP13MessageWindowii_180
_Z27Con_UpdateMessageWindowLineiP13MessageWindowii_100:
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
	jmp _Z27Con_UpdateMessageWindowLineiP13MessageWindowii_190
_Z27Con_UpdateMessageWindowLineiP13MessageWindowii_130:
	mov eax, [ecx+0x4]
	cmp ebx, eax
	jle _Z27Con_UpdateMessageWindowLineiP13MessageWindowii_200
	cmp edx, eax
	jg _Z27Con_UpdateMessageWindowLineiP13MessageWindowii_200
_Z27Con_UpdateMessageWindowLineiP13MessageWindowii_140:
	xor eax, eax
	jmp _Z27Con_UpdateMessageWindowLineiP13MessageWindowii_210
_Z27Con_UpdateMessageWindowLineiP13MessageWindowii_170:
	sub eax, 0x1
	mov [ebp-0x40], eax
	js _Z27Con_UpdateMessageWindowLineiP13MessageWindowii_220
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
	jnz _Z27Con_UpdateMessageWindowLineiP13MessageWindowii_230
	sub ecx, 0x1
	xor ebx, ebx
_Z27Con_UpdateMessageWindowLineiP13MessageWindowii_240:
	cmp [ebp-0x40], ebx
	jz _Z27Con_UpdateMessageWindowLineiP13MessageWindowii_220
	mov eax, ecx
	cdq
	idiv dword [ebp-0x7c]
	add ebx, 0x1
	sub ecx, 0x1
	lea edi, [edx+edx*2]
	mov [ebp-0x6c], edi
	mov eax, [ebp-0x44]
	test byte [eax+edi*8+0x14], 0x1
	jz _Z27Con_UpdateMessageWindowLineiP13MessageWindowii_240
_Z27Con_UpdateMessageWindowLineiP13MessageWindowii_230:
	cmp edx, 0xffffffff
	jz _Z27Con_UpdateMessageWindowLineiP13MessageWindowii_220
	lea eax, [edx+edx*2]
	mov edx, [ebp-0x44]
	lea eax, [edx+eax*8]
	mov [ebp-0x38], eax
	mov ebx, [eax+0xc]
	mov [ebp-0x50], ebx
	test byte [eax+0x14], 0x1
	jz _Z27Con_UpdateMessageWindowLineiP13MessageWindowii_250
	mov dword [ebp-0x3c], 0x0
	xor edi, edi
_Z27Con_UpdateMessageWindowLineiP13MessageWindowii_270:
	mov ebx, [ebp-0x38]
	cmp edi, [ebx+0x8]
	jge _Z27Con_UpdateMessageWindowLineiP13MessageWindowii_260
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
	call _Z16SEH_DecodeLetterjjPiS_
	add edi, [ebp-0x1c]
	add dword [ebp-0x3c], 0x1
	cmp eax, 0x5e
	jnz _Z27Con_UpdateMessageWindowLineiP13MessageWindowii_270
	mov eax, edi
	mov edx, [ebp-0x38]
	add eax, [edx+0x4]
	mov edx, [esi+0xc]
	sub edx, 0x1
	and eax, edx
	mov edx, [esi+0x8]
	movzx edx, byte [edx+eax]
	cmp dl, 0x5e
	jz _Z27Con_UpdateMessageWindowLineiP13MessageWindowii_270
	cmp dl, 0x2f
	jle _Z27Con_UpdateMessageWindowLineiP13MessageWindowii_270
	lea eax, [edi+0x1]
	cmp dl, 0x39
	cmovle edi, eax
	jmp _Z27Con_UpdateMessageWindowLineiP13MessageWindowii_270
_Z27Con_UpdateMessageWindowLineiP13MessageWindowii_40:
	xor edx, edx
	mov eax, [ebp-0x48]
	add eax, edx
	mov edi, [ebp-0x5c]
	mov [edi+0x4], eax
	jmp _Z27Con_UpdateMessageWindowLineiP13MessageWindowii_30
_Z27Con_UpdateMessageWindowLineiP13MessageWindowii_10:
	mov eax, clients
	mov eax, [eax+0x2fa0]
	mov [ebp-0x58], eax
	jmp _Z27Con_UpdateMessageWindowLineiP13MessageWindowii_280
_Z27Con_UpdateMessageWindowLineiP13MessageWindowii_120:
	sub edx, 0x1
	mov [esi+0x2c], edx
	mov eax, [esi+0x28]
	add eax, 0x1
	mov [esi+0x28], eax
	cmp eax, [esi+0x10]
	jz _Z27Con_UpdateMessageWindowLineiP13MessageWindowii_290
_Z27Con_UpdateMessageWindowLineiP13MessageWindowii_330:
	cmp esi, con+0x4
	jz _Z27Con_UpdateMessageWindowLineiP13MessageWindowii_300
	mov edx, [esi+0x2c]
	jmp _Z27Con_UpdateMessageWindowLineiP13MessageWindowii_310
_Z27Con_UpdateMessageWindowLineiP13MessageWindowii_260:
	mov eax, [con_typewriterPrintSpeed]
	mov eax, [eax+0xc]
	imul eax, [ebp-0x3c]
_Z27Con_UpdateMessageWindowLineiP13MessageWindowii_320:
	mov edi, [ebp-0x50]
	lea eax, [eax+edi+0x96]
	mov [ebp-0x48], eax
	sub eax, [ebp-0x4c]
	mov edx, [ebp-0x4c]
	add edx, 0xfa
	cmp eax, 0xf9
	cmovg edx, [ebp-0x48]
	mov [ebp-0x48], edx
	jmp _Z27Con_UpdateMessageWindowLineiP13MessageWindowii_180
_Z27Con_UpdateMessageWindowLineiP13MessageWindowii_250:
	xor eax, eax
	jmp _Z27Con_UpdateMessageWindowLineiP13MessageWindowii_320
_Z27Con_UpdateMessageWindowLineiP13MessageWindowii_290:
	mov dword [esi+0x28], 0x0
	jmp _Z27Con_UpdateMessageWindowLineiP13MessageWindowii_330
_Z27Con_UpdateMessageWindowLineiP13MessageWindowii_300:
	mov eax, [con+0x1023c]
	sub eax, 0x1
	mov [con+0x1023c], eax
	mov edx, [con+0x1024c]
	cmp eax, edx
	jge _Z27Con_UpdateMessageWindowLineiP13MessageWindowii_340
	mov eax, [con+0x30]
	cmp edx, eax
	cmovg edx, eax
	mov [con+0x1023c], edx
	mov edx, eax
	jmp _Z27Con_UpdateMessageWindowLineiP13MessageWindowii_310
_Z27Con_UpdateMessageWindowLineiP13MessageWindowii_340:
	mov edx, [con+0x30]
	jmp _Z27Con_UpdateMessageWindowLineiP13MessageWindowii_310
_Z27Con_UpdateMessageWindowLineiP13MessageWindowii_80:
	mov edx, [con+0x10238]
	mov [ebp-0x64], edx
	mov edi, [con+0x30]
_Z27Con_UpdateMessageWindowLineiP13MessageWindowii_390:
	mov ebx, [ebp-0x64]
	mov [ebp-0x2c], ebx
	mov ecx, ebx
	add ecx, 0x1
	test edi, edi
	jz _Z27Con_UpdateMessageWindowLineiP13MessageWindowii_350
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
	jg _Z27Con_UpdateMessageWindowLineiP13MessageWindowii_360
	mov eax, [ebx+0x4]
	cmp edx, eax
	jle _Z27Con_UpdateMessageWindowLineiP13MessageWindowii_370
_Z27Con_UpdateMessageWindowLineiP13MessageWindowii_420:
	xor eax, eax
_Z27Con_UpdateMessageWindowLineiP13MessageWindowii_430:
	test al, al
	jz _Z27Con_UpdateMessageWindowLineiP13MessageWindowii_350
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
	jge _Z27Con_UpdateMessageWindowLineiP13MessageWindowii_380
	mov edi, ecx
	cmp edx, ecx
	cmovg edx, ecx
	mov [con+0x1023c], edx
	jmp _Z27Con_UpdateMessageWindowLineiP13MessageWindowii_390
_Z27Con_UpdateMessageWindowLineiP13MessageWindowii_350:
	mov edi, [con+0x10]
	mov [ebp-0x68], edi
	mov ebx, [con+0x28]
	jmp _Z27Con_UpdateMessageWindowLineiP13MessageWindowii_400
_Z27Con_UpdateMessageWindowLineiP13MessageWindowii_380:
	mov edi, ecx
	jmp _Z27Con_UpdateMessageWindowLineiP13MessageWindowii_390
_Z27Con_UpdateMessageWindowLineiP13MessageWindowii_360:
	mov eax, [ebx+0x4]
	cmp edx, eax
	jle _Z27Con_UpdateMessageWindowLineiP13MessageWindowii_410
_Z27Con_UpdateMessageWindowLineiP13MessageWindowii_370:
	cmp ecx, eax
	jle _Z27Con_UpdateMessageWindowLineiP13MessageWindowii_420
_Z27Con_UpdateMessageWindowLineiP13MessageWindowii_410:
	mov eax, 0x1
	jmp _Z27Con_UpdateMessageWindowLineiP13MessageWindowii_430


;Con_UpdateNotifyLine(int, int, unsigned char, int)
_Z20Con_UpdateNotifyLineiihi:
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
	call _Z20Con_IsChannelVisible16print_msg_dest_tii
	test al, al
	jnz _Z20Con_UpdateNotifyLineiihi_10
_Z20Con_UpdateNotifyLineiihi_120:
	mov eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov edx, [ebp-0x20]
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call _Z20Con_IsChannelVisible16print_msg_dest_tii
	test al, al
	jnz _Z20Con_UpdateNotifyLineiihi_20
_Z20Con_UpdateNotifyLineiihi_110:
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
_Z20Con_UpdateNotifyLineiihi_70:
	mov eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov edx, [ebp-0x20]
	mov [esp+0x4], edx
	mov [esp], ebx
	call _Z20Con_IsChannelVisible16print_msg_dest_tii
	test al, al
	jz _Z20Con_UpdateNotifyLineiihi_30
	cmp ebx, 0x1
	jz _Z20Con_UpdateNotifyLineiihi_40
	cmp ebx, 0x2
	jz _Z20Con_UpdateNotifyLineiihi_50
	test ebx, ebx
	jnz _Z20Con_UpdateNotifyLineiihi_60
	mov edx, con+0x4
_Z20Con_UpdateNotifyLineiihi_90:
	mov eax, [ebp-0x24]
	mov [esp], eax
	mov ecx, [ebp-0x30]
	mov eax, edi
	call _Z27Con_UpdateMessageWindowLineiP13MessageWindowii
_Z20Con_UpdateNotifyLineiihi_30:
	add ebx, 0x1
	add esi, 0x34
	cmp ebx, 0x7
	jnz _Z20Con_UpdateNotifyLineiihi_70
	mov eax, com_developer
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jnz _Z20Con_UpdateNotifyLineiihi_80
_Z20Con_UpdateNotifyLineiihi_100:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20Con_UpdateNotifyLineiihi_40:
	mov edx, [ebp-0x28]
	add edx, 0x4
	jmp _Z20Con_UpdateNotifyLineiihi_90
_Z20Con_UpdateNotifyLineiihi_60:
	lea edx, [esi+0x4]
	jmp _Z20Con_UpdateNotifyLineiihi_90
_Z20Con_UpdateNotifyLineiihi_80:
	mov edx, [ebp-0x24]
	mov [esp+0x8], edx
	mov eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call _Z20Con_IsChannelVisible16print_msg_dest_tii
	test al, al
	jz _Z20Con_UpdateNotifyLineiihi_100
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
	jmp _Z27Con_UpdateMessageWindowLineiP13MessageWindowii
_Z20Con_UpdateNotifyLineiihi_50:
	mov edx, [ebp-0x2c]
	add edx, 0x8
	jmp _Z20Con_UpdateNotifyLineiihi_90
_Z20Con_UpdateNotifyLineiihi_20:
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
	call _Z27Con_UpdateMessageWindowLineiP13MessageWindowii
	jmp _Z20Con_UpdateNotifyLineiihi_110
_Z20Con_UpdateNotifyLineiihi_10:
	movzx ecx, byte [ebp-0x19]
	mov edx, [ebp-0x24]
	mov [esp], edx
	mov edx, con+0x4
	mov eax, edi
	call _Z27Con_UpdateMessageWindowLineiP13MessageWindowii
	jmp _Z20Con_UpdateNotifyLineiihi_120
	nop


;CL_ConsolePrint_AddLine(int, int, char const*, int, int, char, int)
_Z23CL_ConsolePrint_AddLineiiPKciici:
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
	jz _Z23CL_ConsolePrint_AddLineiiPKciici_10
	movsx eax, al
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23CL_ConsolePrint_AddLineiiPKciici_10:
	mov dword [_ZZ23CL_ConsolePrint_AddLineiiPKciiciE9callDepth], 0x1
	mov dword [esp+0x4], 0x1
	mov edx, [ebp+0x20]
	mov [esp], edx
	mov ecx, esi
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	call _Z29Con_UpdateNotifyMessageWindowiiii16print_msg_dest_t
	mov ebx, 0x3
_Z23CL_ConsolePrint_AddLineiiPKciici_20:
	mov [esp+0x4], ebx
	mov ecx, [ebp+0x20]
	mov [esp], ecx
	mov ecx, esi
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	call _Z29Con_UpdateNotifyMessageWindowiiii16print_msg_dest_t
	add ebx, 0x1
	cmp ebx, 0x7
	jnz _Z23CL_ConsolePrint_AddLineiiPKciici_20
	mov eax, com_developer
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jnz _Z23CL_ConsolePrint_AddLineiiPKciici_30
_Z23CL_ConsolePrint_AddLineiiPKciici_290:
	mov edx, [con+0x10240]
	cmp [ebp+0xc], edx
	jz _Z23CL_ConsolePrint_AddLineiiPKciici_40
	mov eax, [con+0x10238]
	test eax, eax
	jnz _Z23CL_ConsolePrint_AddLineiiPKciici_50
_Z23CL_ConsolePrint_AddLineiiPKciici_40:
	mov eax, [ebp+0xc]
	sub eax, 0x2
	cmp eax, 0x2
	setbe byte [ebp-0x31]
	cmp byte [ebp-0x31], 0x0
	jz _Z23CL_ConsolePrint_AddLineiiPKciici_60
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
	call _Z16UI_GetFontHandlePK15ScreenPlacementif
	mov [ebp-0x30], eax
	mov [esp+0x4], ebx
	mov [esp], eax
	call _Z21R_NormalizedTextScaleP6Font_sf
	fstp dword [ebp-0x2c]
	movss xmm0, dword [ebp-0x2c]
_Z23CL_ConsolePrint_AddLineiiPKciici_230:
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
	call _Z22R_TextLineWrapPositionPKciiP6Font_sf
	mov esi, eax
	xor ebx, ebx
	cmp byte [eax], 0x0
	cmovz esi, ebx
	cmp esi, [ebp+0x10]
	jz _Z23CL_ConsolePrint_AddLineiiPKciici_70
_Z23CL_ConsolePrint_AddLineiiPKciici_300:
	mov ecx, [ebp+0x10]
	mov [ebp-0x1c], ecx
	xor edi, edi
	mov eax, ecx
	cmp byte [eax], 0x0
	jz _Z23CL_ConsolePrint_AddLineiiPKciici_80
_Z23CL_ConsolePrint_AddLineiiPKciici_140:
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call _Z22SEH_ReadCharFromStringPPKcPi
	mov ebx, eax
	cmp eax, 0xa
	jz _Z23CL_ConsolePrint_AddLineiiPKciici_90
	cmp eax, 0x5e
	jz _Z23CL_ConsolePrint_AddLineiiPKciici_100
	cmp eax, 0x20
	jz _Z23CL_ConsolePrint_AddLineiiPKciici_110
	cmp eax, 0xff
	jle _Z23CL_ConsolePrint_AddLineiiPKciici_120
	mov eax, [con+0x10238]
	mov ecx, con+0x10030
	mov edx, ebx
	sar edx, 0x8
	mov [eax+ecx+0x8], dl
	add eax, 0x1
	mov [con+0x10238], eax
	and ebx, 0xff
_Z23CL_ConsolePrint_AddLineiiPKciici_250:
	mov [eax+ecx+0x8], bl
	add eax, 0x1
	mov [con+0x10238], eax
	xor edi, edi
_Z23CL_ConsolePrint_AddLineiiPKciici_260:
	cmp esi, [ebp-0x1c]
	jz _Z23CL_ConsolePrint_AddLineiiPKciici_130
	mov eax, [ebp-0x1c]
_Z23CL_ConsolePrint_AddLineiiPKciici_220:
	cmp byte [eax], 0x0
	jnz _Z23CL_ConsolePrint_AddLineiiPKciici_140
_Z23CL_ConsolePrint_AddLineiiPKciici_80:
	mov eax, [con+0x10238]
	test eax, eax
	jz _Z23CL_ConsolePrint_AddLineiiPKciici_150
	cmp byte [ebp-0x31], 0x0
	jz _Z23CL_ConsolePrint_AddLineiiPKciici_160
	mov eax, [ebp+0x20]
	mov [esp], eax
	mov ecx, 0x1
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	call _Z20Con_UpdateNotifyLineiihi
	mov dword [con+0x10238], 0x0
	mov edx, [con+0x30]
	lea eax, [edx-0x1]
	cmp [con+0x1023c], eax
	jz _Z23CL_ConsolePrint_AddLineiiPKciici_170
_Z23CL_ConsolePrint_AddLineiiPKciici_150:
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
_Z23CL_ConsolePrint_AddLineiiPKciici_130:
	mov eax, [ebp+0x20]
	mov [esp], eax
	mov ecx, 0x1
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	call _Z20Con_UpdateNotifyLineiihi
	mov dword [con+0x10238], 0x0
	mov eax, [con+0x30]
	lea edx, [eax-0x1]
	cmp [con+0x1023c], edx
	cmovnz eax, [con+0x1023c]
	mov [con+0x1023c], eax
	cmp ebx, 0xa
	jz _Z23CL_ConsolePrint_AddLineiiPKciici_180
	cmp byte [ebp-0x32], 0x37
	jz _Z23CL_ConsolePrint_AddLineiiPKciici_190
	mov byte [con+0x10038], 0x5e
	movzx edx, byte [ebp-0x32]
	mov [con+0x10039], dl
	mov dword [con+0x10238], 0x2
_Z23CL_ConsolePrint_AddLineiiPKciici_190:
	mov edi, 0x1
_Z23CL_ConsolePrint_AddLineiiPKciici_180:
	mov edx, 0x200
	sub edx, [con+0x10238]
	mov eax, [ebp-0x1c]
	test edi, edi
	jz _Z23CL_ConsolePrint_AddLineiiPKciici_200
	cmp byte [eax], 0x20
	jz _Z23CL_ConsolePrint_AddLineiiPKciici_210
_Z23CL_ConsolePrint_AddLineiiPKciici_200:
	movss xmm0, dword [ebp-0x2c]
	movss [esp+0x10], xmm0
	mov ecx, [ebp-0x30]
	mov [esp+0xc], ecx
	mov ecx, [ebp+0x18]
	mov [esp+0x8], ecx
	mov [esp+0x4], edx
	mov [esp], eax
	call _Z22R_TextLineWrapPositionPKciiP6Font_sf
	mov esi, eax
	cmp byte [eax], 0x0
	mov eax, 0x0
	cmovz esi, eax
	mov eax, [ebp-0x1c]
	jmp _Z23CL_ConsolePrint_AddLineiiPKciici_220
_Z23CL_ConsolePrint_AddLineiiPKciici_60:
	mov eax, cls
	mov eax, [eax+0x2dbff8]
	mov [ebp-0x30], eax
	movss xmm0, dword [_float_1_00000000]
	movss [ebp-0x2c], xmm0
	jmp _Z23CL_ConsolePrint_AddLineiiPKciici_230
_Z23CL_ConsolePrint_AddLineiiPKciici_50:
	mov ecx, [ebp+0x20]
	mov [esp], ecx
	mov ecx, 0x1
	mov eax, [ebp+0x8]
	call _Z20Con_UpdateNotifyLineiihi
	mov dword [con+0x10238], 0x0
	mov eax, [con+0x30]
	lea edx, [eax-0x1]
	cmp [con+0x1023c], edx
	cmovnz eax, [con+0x1023c]
	mov [con+0x1023c], eax
	jmp _Z23CL_ConsolePrint_AddLineiiPKciici_40
_Z23CL_ConsolePrint_AddLineiiPKciici_270:
	movzx edx, byte [0x0]
_Z23CL_ConsolePrint_AddLineiiPKciici_280:
	lea eax, [edx-0x1]
	cmp al, 0x1
	jbe _Z23CL_ConsolePrint_AddLineiiPKciici_240
_Z23CL_ConsolePrint_AddLineiiPKciici_120:
	mov ecx, con+0x10030
	mov eax, [con+0x10238]
	jmp _Z23CL_ConsolePrint_AddLineiiPKciici_250
_Z23CL_ConsolePrint_AddLineiiPKciici_90:
	test esi, esi
	jnz _Z23CL_ConsolePrint_AddLineiiPKciici_260
	mov esi, [ebp-0x1c]
	jmp _Z23CL_ConsolePrint_AddLineiiPKciici_260
_Z23CL_ConsolePrint_AddLineiiPKciici_100:
	mov edi, [ebp-0x1c]
	test edi, edi
	jz _Z23CL_ConsolePrint_AddLineiiPKciici_270
	movzx edx, byte [edi]
	cmp dl, 0x5e
	jz _Z23CL_ConsolePrint_AddLineiiPKciici_280
	cmp dl, 0x2f
	jle _Z23CL_ConsolePrint_AddLineiiPKciici_280
	cmp dl, 0x39
	jg _Z23CL_ConsolePrint_AddLineiiPKciici_280
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
	jmp _Z23CL_ConsolePrint_AddLineiiPKciici_260
_Z23CL_ConsolePrint_AddLineiiPKciici_110:
	test edi, edi
	jnz _Z23CL_ConsolePrint_AddLineiiPKciici_260
	mov ecx, con+0x10030
	mov eax, [con+0x10238]
	jmp _Z23CL_ConsolePrint_AddLineiiPKciici_250
_Z23CL_ConsolePrint_AddLineiiPKciici_30:
	mov dword [esp+0x4], 0x2
	mov eax, [ebp+0x20]
	mov [esp], eax
	mov ecx, esi
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	call _Z29Con_UpdateNotifyMessageWindowiiii16print_msg_dest_t
	jmp _Z23CL_ConsolePrint_AddLineiiPKciici_290
_Z23CL_ConsolePrint_AddLineiiPKciici_160:
	mov edx, [ebp+0x20]
	mov [esp], edx
	xor ecx, ecx
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	call _Z20Con_UpdateNotifyLineiihi
	jmp _Z23CL_ConsolePrint_AddLineiiPKciici_150
_Z23CL_ConsolePrint_AddLineiiPKciici_70:
	mov eax, [con+0x10238]
	test eax, eax
	jz _Z23CL_ConsolePrint_AddLineiiPKciici_300
	mov eax, [ebp+0x20]
	mov [esp], eax
	mov ecx, 0x1
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	call _Z20Con_UpdateNotifyLineiihi
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
	call _Z22R_TextLineWrapPositionPKciiP6Font_sf
	mov esi, eax
	cmp byte [eax], 0x0
	cmovz esi, ebx
	jmp _Z23CL_ConsolePrint_AddLineiiPKciici_300
_Z23CL_ConsolePrint_AddLineiiPKciici_210:
	add eax, 0x1
	cmp byte [eax], 0x20
	jnz _Z23CL_ConsolePrint_AddLineiiPKciici_200
	add eax, 0x1
	cmp byte [eax], 0x20
	jz _Z23CL_ConsolePrint_AddLineiiPKciici_210
	jmp _Z23CL_ConsolePrint_AddLineiiPKciici_200
_Z23CL_ConsolePrint_AddLineiiPKciici_240:
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
	jmp _Z23CL_ConsolePrint_AddLineiiPKciici_260
_Z23CL_ConsolePrint_AddLineiiPKciici_170:
	mov [con+0x1023c], edx
	jmp _Z23CL_ConsolePrint_AddLineiiPKciici_150
	nop


;ConDrawInput_AutoCompleteArg(char const**, int)
_Z28ConDrawInput_AutoCompleteArgPPKci:
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
	jle _Z28ConDrawInput_AutoCompleteArgPPKci_10
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0x4]
	mov [ebp-0x460], eax
	mov edi, eax
_Z28ConDrawInput_AutoCompleteArgPPKci_190:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [ebp-0x474], ecx
	jz _Z28ConDrawInput_AutoCompleteArgPPKci_20
	mov edi, [ebp-0x478]
	test edi, edi
	jg _Z28ConDrawInput_AutoCompleteArgPPKci_30
_Z28ConDrawInput_AutoCompleteArgPPKci_20:
	add esp, 0x4ec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z28ConDrawInput_AutoCompleteArgPPKci_30:
	mov dword [ebp-0x468], 0x0
	xor esi, esi
	mov dword [ebp-0x464], 0x0
	mov dword [ebp-0x45c], 0x0
_Z28ConDrawInput_AutoCompleteArgPPKci_50:
	mov eax, [ebp-0x474]
	mov [esp+0x8], eax
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov edx, [ebp-0x460]
	mov [esp], edx
	call _Z10I_strnicmpPKcS0_i
	test eax, eax
	jnz _Z28ConDrawInput_AutoCompleteArgPPKci_40
	cmp dword [ebp-0x464], 0x10
	jz _Z28ConDrawInput_AutoCompleteArgPPKci_20
	mov edx, [ebx]
	cld
	mov ecx, 0xffffffff
	mov edi, edx
	repne scasb
	not ecx
	mov edi, [ebp-0x468]
	lea ecx, [ecx+edi-0x1]
	cmp ecx, 0x3ff
	ja _Z28ConDrawInput_AutoCompleteArgPPKci_20
	lea eax, [ebp+edi-0x458]
	mov ecx, [ebp-0x464]
	mov [ebp+ecx*4-0x58], eax
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z18Com_StripExtensionPKcPc
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
	call _Z11R_TextWidthPKciP6Font_s
	cmp [ebp-0x45c], eax
	cmovge eax, [ebp-0x45c]
	mov [ebp-0x45c], eax
	add dword [ebp-0x464], 0x1
_Z28ConDrawInput_AutoCompleteArgPPKci_40:
	add esi, 0x1
	add ebx, 0x4
	cmp [ebp-0x478], esi
	jnz _Z28ConDrawInput_AutoCompleteArgPPKci_50
	mov esi, [ebp-0x464]
	test esi, esi
	jz _Z28ConDrawInput_AutoCompleteArgPPKci_20
	mov dword [esp+0xc], _Z27ConDrawInput_CompareStringsPKvS0_
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
	jmp _Z28ConDrawInput_AutoCompleteArgPPKci_60
_Z28ConDrawInput_AutoCompleteArgPPKci_80:
	mov eax, [esi+eax*4+0x34]
	shr eax, 0xe
	and eax, 0x1
	test eax, eax
	jz _Z28ConDrawInput_AutoCompleteArgPPKci_70
_Z28ConDrawInput_AutoCompleteArgPPKci_90:
	add ebx, 0x1
_Z28ConDrawInput_AutoCompleteArgPPKci_60:
	movsx eax, byte [ebx+0x18]
	test eax, 0xffffff80
	jz _Z28ConDrawInput_AutoCompleteArgPPKci_80
	mov dword [esp+0x4], 0x4000
	mov [esp], eax
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	test eax, eax
	jnz _Z28ConDrawInput_AutoCompleteArgPPKci_90
_Z28ConDrawInput_AutoCompleteArgPPKci_70:
	mov eax, g_consoleField
	sub ebx, eax
	lea edx, [ebx+0x10]
	mov [ebp-0x480], edx
	lea edi, [edx+eax+0x8]
	mov esi, [0xd5cc084]
	jmp _Z28ConDrawInput_AutoCompleteArgPPKci_100
_Z28ConDrawInput_AutoCompleteArgPPKci_120:
	mov eax, [esi+eax*4+0x34]
	shr eax, 0xe
	and eax, 0x1
	test eax, eax
	jnz _Z28ConDrawInput_AutoCompleteArgPPKci_110
_Z28ConDrawInput_AutoCompleteArgPPKci_130:
	add edi, 0x1
_Z28ConDrawInput_AutoCompleteArgPPKci_100:
	movsx eax, byte [edi]
	test eax, 0xffffff80
	jz _Z28ConDrawInput_AutoCompleteArgPPKci_120
	mov dword [esp+0x4], 0x4000
	mov [esp], eax
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	test eax, eax
	jz _Z28ConDrawInput_AutoCompleteArgPPKci_130
_Z28ConDrawInput_AutoCompleteArgPPKci_110:
	mov edx, g_consoleField
	mov ecx, [ebp-0x480]
	lea eax, [ecx+edx+0x8]
	sub ebx, eax
	add ebx, edi
	lea edi, [ebx+0x10]
	mov [ebp-0x47c], edi
	lea edi, [edi+edx+0x8]
	mov esi, [0xd5cc084]
	jmp _Z28ConDrawInput_AutoCompleteArgPPKci_140
_Z28ConDrawInput_AutoCompleteArgPPKci_160:
	mov eax, [esi+eax*4+0x34]
	shr eax, 0xe
	and eax, 0x1
	test eax, eax
	jz _Z28ConDrawInput_AutoCompleteArgPPKci_150
_Z28ConDrawInput_AutoCompleteArgPPKci_170:
	add edi, 0x1
_Z28ConDrawInput_AutoCompleteArgPPKci_140:
	movsx eax, byte [edi]
	test eax, 0xffffff80
	jz _Z28ConDrawInput_AutoCompleteArgPPKci_160
	mov dword [esp+0x4], 0x4000
	mov [esp], eax
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	test eax, eax
	jnz _Z28ConDrawInput_AutoCompleteArgPPKci_170
_Z28ConDrawInput_AutoCompleteArgPPKci_150:
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
	call _Z11R_TextWidthPKciP6Font_s
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
	call _Z11ConDraw_BoxffffPKf
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
	jle _Z28ConDrawInput_AutoCompleteArgPPKci_20
	xor ebx, ebx
	mov esi, cls
	mov eax, [conDrawInputGlob+0x54]
_Z28ConDrawInput_AutoCompleteArgPPKci_180:
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
	call _Z16R_AddCmdDrawTextPKciP6Font_sfffffPKfi
	movss xmm0, dword [conDrawInputGlob+0x58]
	addss xmm0, [conDrawInputGlob+0x60]
	movss [conDrawInputGlob+0x58], xmm0
	mov eax, [conDrawInputGlob+0x5c]
	mov [conDrawInputGlob+0x54], eax
	add ebx, 0x1
	cmp ebx, [ebp-0x464]
	jnz _Z28ConDrawInput_AutoCompleteArgPPKci_180
	jmp _Z28ConDrawInput_AutoCompleteArgPPKci_20
_Z28ConDrawInput_AutoCompleteArgPPKci_10:
	mov dword [ebp-0x460], _cstring_null
	mov edi, [ebp-0x460]
	jmp _Z28ConDrawInput_AutoCompleteArgPPKci_190


;ConDrawInput_DetailedDvarMatch(char const*)
_Z30ConDrawInput_DetailedDvarMatchPKc:
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
	call _Z23Con_IsAutoCompleteMatchPKcS0_i
	test al, al
	jz _Z30ConDrawInput_DetailedDvarMatchPKc_10
	cmp byte [conDrawInputGlob+0x50], 0x0
	jz _Z30ConDrawInput_DetailedDvarMatchPKc_20
	mov eax, [conDrawInputGlob+0x4c]
	cmp byte [edi+eax], 0x0
	jnz _Z30ConDrawInput_DetailedDvarMatchPKc_10
_Z30ConDrawInput_DetailedDvarMatchPKc_20:
	mov [esp], edi
	call _Z12Dvar_FindVarPKc
	mov esi, eax
	mov [esp], eax
	call _Z20Dvar_HasLatchedValuePK6dvar_s
	mov [ebp-0x429], al
	test al, al
	jz _Z30ConDrawInput_DetailedDvarMatchPKc_30
	movss xmm3, dword [_float_3_00000000]
_Z30ConDrawInput_DetailedDvarMatchPKc_90:
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
	call _Z11ConDraw_BoxffffPKf
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
	call _Z16R_AddCmdDrawTextPKciP6Font_sfffffPKfi
	movss xmm0, dword [conDrawInputGlob+0x54]
	addss xmm0, [_float_300_00000000]
	movss [conDrawInputGlob+0x54], xmm0
	mov [esp], esi
	call _Z21Dvar_DisplayableValuePK6dvar_s
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
	call _Z16R_AddCmdDrawTextPKciP6Font_sfffffPKfi
	movss xmm0, dword [conDrawInputGlob+0x58]
	addss xmm0, [conDrawInputGlob+0x60]
	movss [conDrawInputGlob+0x58], xmm0
	mov eax, [conDrawInputGlob+0x5c]
	mov [conDrawInputGlob+0x54], eax
	cmp byte [ebp-0x429], 0x0
	jnz _Z30ConDrawInput_DetailedDvarMatchPKc_40
_Z30ConDrawInput_DetailedDvarMatchPKc_130:
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
	call _Z16R_AddCmdDrawTextPKciP6Font_sfffffPKfi
	movss xmm0, dword [_float_300_00000000]
	addss xmm0, [conDrawInputGlob+0x54]
	movss [conDrawInputGlob+0x54], xmm0
	mov [esp], esi
	call _Z26Dvar_DisplayableResetValuePK6dvar_s
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
	call _Z16R_AddCmdDrawTextPKciP6Font_sfffffPKfi
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
	call _Z28Dvar_DomainToString_GetLinesh10DvarLimitsPciPi
	mov ebx, [esi+0x4]
	test ebx, ebx
	jz _Z30ConDrawInput_DetailedDvarMatchPKc_50
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	sub ecx, 0x1
	test ecx, ecx
	jg _Z30ConDrawInput_DetailedDvarMatchPKc_60
	mov edi, 0x1
_Z30ConDrawInput_DetailedDvarMatchPKc_110:
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
	call _Z11ConDraw_BoxffffPKf
	mov edx, [esi+0x4]
	test edx, edx
	jz _Z30ConDrawInput_DetailedDvarMatchPKc_70
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
	call _Z16R_AddCmdDrawTextPKciP6Font_sfffffPKfi
	test edi, edi
	jle _Z30ConDrawInput_DetailedDvarMatchPKc_70
	xor eax, eax
	movss xmm0, dword [conDrawInputGlob+0x58]
	mov edx, [conDrawInputGlob+0x5c]
_Z30ConDrawInput_DetailedDvarMatchPKc_80:
	addss xmm0, [conDrawInputGlob+0x60]
	movss [conDrawInputGlob+0x58], xmm0
	mov [conDrawInputGlob+0x54], edx
	add eax, 0x1
	cmp edi, eax
	jnz _Z30ConDrawInput_DetailedDvarMatchPKc_80
_Z30ConDrawInput_DetailedDvarMatchPKc_120:
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
	call _Z16R_AddCmdDrawTextPKciP6Font_sfffffPKfi
	movss xmm0, dword [conDrawInputGlob+0x58]
	addss xmm0, [conDrawInputGlob+0x60]
	movss [conDrawInputGlob+0x58], xmm0
	mov eax, [conDrawInputGlob+0x5c]
	mov [conDrawInputGlob+0x54], eax
	cmp byte [esi+0xa], 0x6
	jnz _Z30ConDrawInput_DetailedDvarMatchPKc_10
	mov edx, cmd_args
	mov eax, [edx]
	cmp dword [edx+eax*4+0x44], 0x2
	jnz _Z30ConDrawInput_DetailedDvarMatchPKc_10
	mov edx, [esi+0x3c]
	mov eax, [esi+0x40]
	call _Z28ConDrawInput_AutoCompleteArgPPKci
_Z30ConDrawInput_DetailedDvarMatchPKc_10:
	add esp, 0x45c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z30ConDrawInput_DetailedDvarMatchPKc_30:
	movss xmm3, dword [_float_2_00000000]
	jmp _Z30ConDrawInput_DetailedDvarMatchPKc_90
_Z30ConDrawInput_DetailedDvarMatchPKc_60:
	mov edi, 0x1
	xor edx, edx
_Z30ConDrawInput_DetailedDvarMatchPKc_100:
	lea eax, [edi+0x1]
	cmp byte [edx+ebx], 0xa
	cmovz edi, eax
	add edx, 0x1
	cmp ecx, edx
	jnz _Z30ConDrawInput_DetailedDvarMatchPKc_100
	jmp _Z30ConDrawInput_DetailedDvarMatchPKc_110
_Z30ConDrawInput_DetailedDvarMatchPKc_70:
	movss xmm0, dword [conDrawInputGlob+0x58]
	jmp _Z30ConDrawInput_DetailedDvarMatchPKc_120
_Z30ConDrawInput_DetailedDvarMatchPKc_50:
	xor edi, edi
	jmp _Z30ConDrawInput_DetailedDvarMatchPKc_110
_Z30ConDrawInput_DetailedDvarMatchPKc_40:
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
	call _Z16R_AddCmdDrawTextPKciP6Font_sfffffPKfi
	movss xmm0, dword [conDrawInputGlob+0x54]
	addss xmm0, [_float_300_00000000]
	movss [conDrawInputGlob+0x54], xmm0
	mov [esp], esi
	call _Z28Dvar_DisplayableLatchedValuePK6dvar_s
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
	call _Z16R_AddCmdDrawTextPKciP6Font_sfffffPKfi
	movss xmm0, dword [conDrawInputGlob+0x58]
	addss xmm0, [conDrawInputGlob+0x60]
	movss [conDrawInputGlob+0x58], xmm0
	mov eax, [conDrawInputGlob+0x5c]
	mov [conDrawInputGlob+0x54], eax
	jmp _Z30ConDrawInput_DetailedDvarMatchPKc_130


;ConDrawInput_DetailedCmdMatch(char const*)
_Z29ConDrawInput_DetailedCmdMatchPKc:
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
	call _Z23Con_IsAutoCompleteMatchPKcS0_i
	test al, al
	jz _Z29ConDrawInput_DetailedCmdMatchPKc_10
	cmp byte [conDrawInputGlob+0x50], 0x0
	jz _Z29ConDrawInput_DetailedCmdMatchPKc_20
	mov eax, [conDrawInputGlob+0x4c]
	cmp byte [ebx+eax], 0x0
	jnz _Z29ConDrawInput_DetailedCmdMatchPKc_10
_Z29ConDrawInput_DetailedCmdMatchPKc_20:
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
	call _Z11ConDraw_BoxffffPKf
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
	call _Z16R_AddCmdDrawTextPKciP6Font_sfffffPKfi
	movss xmm0, dword [conDrawInputGlob+0x58]
	addss xmm0, [conDrawInputGlob+0x60]
	movss [conDrawInputGlob+0x58], xmm0
	mov eax, [conDrawInputGlob+0x5c]
	mov [conDrawInputGlob+0x54], eax
	mov edx, cmd_args
	mov eax, [edx]
	cmp dword [edx+eax*4+0x44], 0x2
	jz _Z29ConDrawInput_DetailedCmdMatchPKc_30
_Z29ConDrawInput_DetailedCmdMatchPKc_10:
	add esp, 0x44
	pop ebx
	pop ebp
	ret
_Z29ConDrawInput_DetailedCmdMatchPKc_30:
	mov dword [esp+0x8], 0xa
	lea eax, [ebp-0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z27Cmd_GetAutoCompleteFileListPKcPii
	mov ebx, eax
	mov edx, [ebp-0xc]
	test edx, edx
	jz _Z29ConDrawInput_DetailedCmdMatchPKc_10
	call _Z28ConDrawInput_AutoCompleteArgPPKci
	mov dword [esp+0x4], 0xa
	mov [esp], ebx
	call FS_FreeFileList
	jmp _Z29ConDrawInput_DetailedCmdMatchPKc_10
	nop


;ConDrawInput_CmdMatch(char const*)
_Z21ConDrawInput_CmdMatchPKc:
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
	call _Z23Con_IsAutoCompleteMatchPKcS0_i
	test al, al
	jz _Z21ConDrawInput_CmdMatchPKc_10
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
	call _Z16R_AddCmdDrawTextPKciP6Font_sfffffPKfi
	movss xmm0, dword [conDrawInputGlob+0x58]
	addss xmm0, [conDrawInputGlob+0x60]
	movss [conDrawInputGlob+0x58], xmm0
	mov eax, [conDrawInputGlob+0x5c]
	mov [conDrawInputGlob+0x54], eax
_Z21ConDrawInput_CmdMatchPKc_10:
	add esp, 0x34
	pop ebx
	pop ebp
	ret
	nop


;Con_Bottom()
_Z10Con_Bottomv:
	push ebp
	mov ebp, esp
	mov eax, [con+0x30]
	mov [con+0x1023c], eax
	pop ebp
	ret
	nop


;Con_PageUp()
_Z10Con_PageUpv:
	push ebp
	mov ebp, esp
	mov eax, [con+0x1023c]
	sub eax, 0x2
	mov [con+0x1023c], eax
	mov edx, [con+0x1024c]
	cmp eax, edx
	jge _Z10Con_PageUpv_10
	mov eax, [con+0x30]
	cmp edx, eax
	cmovg edx, eax
	mov [con+0x1023c], edx
_Z10Con_PageUpv_10:
	pop ebp
	ret


;Con_DrawSay(int, int, int)
_Z11Con_DrawSayiii:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov dword [esp+0x4], 0x20
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z19Key_IsCatcherActiveii
	test al, al
	jz _Z11Con_DrawSayiii_10
	mov edx, [ebp+0x8]
	lea eax, [edx+edx*2]
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*8]
	lea eax, [edx+eax*4]
	shl eax, 0x3
	add eax, playerKeys
	mov eax, [eax+0x118]
	test eax, eax
	jz _Z11Con_DrawSayiii_20
	mov dword [esp], _cstring_exe_sayteam
_Z11Con_DrawSayiii_30:
	call _Z23SEH_SafeTranslateStringPKc
	mov [esp+0x4], eax
	mov dword [esp], _cstring_s_
	call _Z2vaPKcz
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
	call _Z16UI_GetFontHandlePK15ScreenPlacementif
	mov esi, eax
	movss xmm0, dword [ebp-0x38]
	movss [esp+0x4], xmm0
	mov [esp], eax
	call _Z21R_NormalizedTextScaleP6Font_sf
	fstp dword [ebp-0x1c]
	mov [esp], esi
	call _Z12R_TextHeightP6Font_s
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
	call _Z11CL_DrawTextPK15ScreenPlacementPKciP6Font_sffiiffPKfi
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x0
	mov edx, [ebp-0x20]
	mov [esp], edx
	call _Z11R_TextWidthPKciP6Font_s
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
	call _Z10Field_DrawiP7field_tiiii
_Z11Con_DrawSayiii_10:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11Con_DrawSayiii_20:
	mov dword [esp], _cstring_exe_say
	jmp _Z11Con_DrawSayiii_30
	nop


;Con_IsActive(int)
_Z12Con_IsActivei:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], 0x1
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z19Key_IsCatcherActiveii
	test al, al
	setnz al
	movzx eax, al
	leave
	ret
	nop


;Con_PageDown()
_Z12Con_PageDownv:
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
_Z12Con_Shutdownv:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;PbMsgToScreen(char*, char*)
_Z13PbMsgToScreenPcS_:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov ecx, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov eax, com_dedicated
	mov eax, [eax]
	test eax, eax
	jz _Z13PbMsgToScreenPcS__10
	mov eax, [eax+0xc]
	test eax, eax
	jnz _Z13PbMsgToScreenPcS__20
_Z13PbMsgToScreenPcS__10:
	mov [esp+0xc], edx
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_s_s
	mov dword [esp], pb_screen_buf
	call sprintf
	mov eax, cl_noprint
	mov eax, [eax]
	test eax, eax
	jz _Z13PbMsgToScreenPcS__30
	cmp byte [eax+0xc], 0x0
	jnz _Z13PbMsgToScreenPcS__30
	mov eax, [con]
	test eax, eax
	jz _Z13PbMsgToScreenPcS__40
_Z13PbMsgToScreenPcS__50:
	mov dword [esp], 0x0
	call _Z24Sys_EnterCriticalSection15CriticalSection
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x37
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], pb_screen_buf
	mov dword [esp+0x4], 0x2
	mov dword [esp], 0x0
	call _Z23CL_ConsolePrint_AddLineiiPKciici
	mov dword [ebp+0x8], 0x0
	leave
	jmp _Z24Sys_LeaveCriticalSection15CriticalSection
_Z13PbMsgToScreenPcS__20:
	mov [esp+0xc], edx
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_s_s
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
_Z13PbMsgToScreenPcS__30:
	leave
	ret
_Z13PbMsgToScreenPcS__40:
	call _Z15Con_OneTimeInitv
	jmp _Z13PbMsgToScreenPcS__50


;Con_DrawErrors(int, int, int, float)
_Z14Con_DrawErrorsiiif:
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
	call _Z16UI_GetFontHandlePK15ScreenPlacementif
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
	jz _Z14Con_DrawErrorsiiif_10
	mov [esp], esi
	call _Z19CL_ShouldDisplayHudi
	test al, al
	jz _Z14Con_DrawErrorsiiif_20
_Z14Con_DrawErrorsiiif_10:
	xor eax, eax
_Z14Con_DrawErrorsiiif_40:
	test eax, eax
	jnz _Z14Con_DrawErrorsiiif_30
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
	call _Z29Con_DrawMessageWindowOldToNewiP13MessageWindowiiiiihP6Font_sPfifi
_Z14Con_DrawErrorsiiif_30:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14Con_DrawErrorsiiif_20:
	mov eax, 0x1
	jmp _Z14Con_DrawErrorsiiif_40


;Con_TimeJumped(int, int)
_Z14Con_TimeJumpedii:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov esi, [ebp+0xc]
	mov eax, [con+0x30]
	test eax, eax
	jle _Z14Con_TimeJumpedii_10
	xor ecx, ecx
_Z14Con_TimeJumpedii_20:
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
	jl _Z14Con_TimeJumpedii_20
_Z14Con_TimeJumpedii_10:
	xor edi, edi
	mov edx, [ebp+0x8]
	lea eax, [edx+edx*8]
	shl eax, 0x5
	add eax, edx
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*2]
	lea ecx, [eax*8+con+0x12264]
_Z14Con_TimeJumpedii_50:
	mov eax, [ecx+0x2c]
	test eax, eax
	jle _Z14Con_TimeJumpedii_30
	xor ebx, ebx
_Z14Con_TimeJumpedii_40:
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
	jg _Z14Con_TimeJumpedii_40
_Z14Con_TimeJumpedii_30:
	add edi, 0x1
	add ecx, 0x34
	cmp edi, 0x4
	jnz _Z14Con_TimeJumpedii_50
	mov edx, [ebp+0x8]
	lea eax, [edx+edx*8]
	shl eax, 0x5
	add eax, edx
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*2]
	lea ecx, [eax*8+con+0x13934]
	mov ebx, [ecx+0x2c]
	test ebx, ebx
	jle _Z14Con_TimeJumpedii_60
	xor ebx, ebx
_Z14Con_TimeJumpedii_70:
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
	jl _Z14Con_TimeJumpedii_70
	mov edx, [ebp+0x8]
_Z14Con_TimeJumpedii_60:
	lea eax, [edx+edx*8]
	shl eax, 0x5
	add eax, edx
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*2]
	lea ecx, [eax*8+con+0x149e8]
	mov eax, [ecx+0x2c]
	test eax, eax
	jle _Z14Con_TimeJumpedii_80
	xor ebx, ebx
_Z14Con_TimeJumpedii_90:
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
	jl _Z14Con_TimeJumpedii_90
_Z14Con_TimeJumpedii_80:
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Con_TimeNudged(int, int)
_Z14Con_TimeNudgedii:
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
	jle _Z14Con_TimeNudgedii_10
	mov ecx, 0xffffffff
	xor esi, esi
	mov edi, eax
	add edi, 0x3e8
	jmp _Z14Con_TimeNudgedii_20
_Z14Con_TimeNudgedii_60:
	mov eax, [con+0x8]
	lea edx, [eax+ebx*8]
	mov ecx, [ebp+0xc]
	add ecx, [edx]
	mov [edx], ecx
	mov eax, [ebp+0xc]
	add eax, [edx+0x4]
	mov [edx+0x4], eax
	test ecx, ecx
	js _Z14Con_TimeNudgedii_30
_Z14Con_TimeNudgedii_90:
	cmp ecx, edi
	jle _Z14Con_TimeNudgedii_40
	mov eax, [edx+0x4]
	sub eax, ecx
	mov [edx], edi
	lea eax, [edi+eax]
	mov [edx+0x4], eax
_Z14Con_TimeNudgedii_40:
	add esi, 0x1
	cmp esi, [con+0x30]
	jge _Z14Con_TimeNudgedii_50
_Z14Con_TimeNudgedii_70:
	mov ecx, ebx
_Z14Con_TimeNudgedii_20:
	mov eax, esi
	add eax, [con+0x2c]
	cdq
	idiv dword [con+0x14]
	lea edx, [edx+edx*2]
	mov eax, [con+0x4]
	mov ebx, [eax+edx*8]
	cmp ecx, ebx
	jnz _Z14Con_TimeNudgedii_60
	mov ebx, ecx
	add esi, 0x1
	cmp esi, [con+0x30]
	jl _Z14Con_TimeNudgedii_70
_Z14Con_TimeNudgedii_50:
	mov ecx, [ebp-0x10]
	jmp _Z14Con_TimeNudgedii_80
_Z14Con_TimeNudgedii_30:
	sub eax, ecx
	mov [edx+0x4], eax
	xor ecx, ecx
	mov dword [edx], 0x0
	jmp _Z14Con_TimeNudgedii_90
_Z14Con_TimeNudgedii_10:
	mov ecx, eax
_Z14Con_TimeNudgedii_80:
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
_Z14Con_TimeNudgedii_150:
	mov eax, [ebx+0x2c]
	test eax, eax
	jle _Z14Con_TimeNudgedii_100
	mov ecx, 0xffffffff
	xor edi, edi
_Z14Con_TimeNudgedii_140:
	mov eax, edi
	add eax, [ebx+0x28]
	cdq
	idiv dword [ebx+0x10]
	mov eax, [ebx]
	lea edx, [edx+edx*2]
	mov esi, [eax+edx*8]
	cmp ecx, esi
	jz _Z14Con_TimeNudgedii_110
	mov eax, [ebx+0x4]
	lea edx, [eax+esi*8]
	mov ecx, [ebp+0xc]
	add ecx, [edx]
	mov [edx], ecx
	mov eax, [ebp+0xc]
	add eax, [edx+0x4]
	mov [edx+0x4], eax
	test ecx, ecx
	js _Z14Con_TimeNudgedii_120
_Z14Con_TimeNudgedii_260:
	cmp ecx, [ebp-0x20]
	jle _Z14Con_TimeNudgedii_130
	mov eax, [edx+0x4]
	sub eax, ecx
	mov ecx, [ebp-0x20]
	mov [edx], ecx
	add eax, ecx
	mov [edx+0x4], eax
_Z14Con_TimeNudgedii_130:
	mov ecx, esi
_Z14Con_TimeNudgedii_110:
	add edi, 0x1
	cmp [ebx+0x2c], edi
	jg _Z14Con_TimeNudgedii_140
_Z14Con_TimeNudgedii_100:
	add dword [ebp-0x14], 0x1
	add ebx, 0x34
	cmp dword [ebp-0x14], 0x4
	jnz _Z14Con_TimeNudgedii_150
	mov edx, [ebp+0x8]
	lea eax, [edx+edx*8]
	shl eax, 0x5
	add eax, edx
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*2]
	lea ebx, [eax*8+con+0x13934]
	mov eax, [ebx+0x2c]
	test eax, eax
	jle _Z14Con_TimeNudgedii_160
	mov ecx, 0xffffffff
	xor edi, edi
	mov eax, [ebp-0x10]
	add eax, 0x3e8
	mov [ebp-0x1c], eax
_Z14Con_TimeNudgedii_200:
	mov eax, edi
	add eax, [ebx+0x28]
	cdq
	idiv dword [ebx+0x10]
	mov eax, [ebx]
	lea edx, [edx+edx*2]
	mov esi, [eax+edx*8]
	cmp ecx, esi
	jz _Z14Con_TimeNudgedii_170
	mov eax, [ebx+0x4]
	lea edx, [eax+esi*8]
	mov ecx, [ebp+0xc]
	add ecx, [edx]
	mov [edx], ecx
	mov eax, [ebp+0xc]
	add eax, [edx+0x4]
	mov [edx+0x4], eax
	test ecx, ecx
	js _Z14Con_TimeNudgedii_180
_Z14Con_TimeNudgedii_280:
	cmp ecx, [ebp-0x1c]
	jle _Z14Con_TimeNudgedii_190
	mov eax, [edx+0x4]
	sub eax, ecx
	mov ecx, [ebp-0x1c]
	mov [edx], ecx
	add eax, ecx
	mov [edx+0x4], eax
_Z14Con_TimeNudgedii_190:
	mov ecx, esi
_Z14Con_TimeNudgedii_170:
	add edi, 0x1
	cmp edi, [ebx+0x2c]
	jl _Z14Con_TimeNudgedii_200
	mov edx, [ebp+0x8]
_Z14Con_TimeNudgedii_160:
	lea eax, [edx+edx*8]
	shl eax, 0x5
	add eax, edx
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*2]
	lea ebx, [eax*8+con+0x149e8]
	mov eax, [ebx+0x2c]
	test eax, eax
	jle _Z14Con_TimeNudgedii_210
	mov ecx, 0xffffffff
	xor edi, edi
	mov eax, [ebp-0x10]
	add eax, 0x3e8
	mov [ebp-0x18], eax
_Z14Con_TimeNudgedii_250:
	mov eax, edi
	add eax, [ebx+0x28]
	cdq
	idiv dword [ebx+0x10]
	mov eax, [ebx]
	lea edx, [edx+edx*2]
	mov esi, [eax+edx*8]
	cmp ecx, esi
	jz _Z14Con_TimeNudgedii_220
	mov eax, [ebx+0x4]
	lea edx, [eax+esi*8]
	mov ecx, [ebp+0xc]
	add ecx, [edx]
	mov [edx], ecx
	mov eax, [ebp+0xc]
	add eax, [edx+0x4]
	mov [edx+0x4], eax
	test ecx, ecx
	js _Z14Con_TimeNudgedii_230
_Z14Con_TimeNudgedii_270:
	cmp ecx, [ebp-0x18]
	jle _Z14Con_TimeNudgedii_240
	mov eax, [edx+0x4]
	sub eax, ecx
	mov ecx, [ebp-0x18]
	mov [edx], ecx
	add eax, ecx
	mov [edx+0x4], eax
_Z14Con_TimeNudgedii_240:
	mov ecx, esi
_Z14Con_TimeNudgedii_220:
	add edi, 0x1
	cmp [ebx+0x2c], edi
	jg _Z14Con_TimeNudgedii_250
_Z14Con_TimeNudgedii_210:
	add esp, 0x14
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14Con_TimeNudgedii_120:
	sub eax, ecx
	mov [edx+0x4], eax
	xor ecx, ecx
	mov dword [edx], 0x0
	jmp _Z14Con_TimeNudgedii_260
_Z14Con_TimeNudgedii_230:
	sub eax, ecx
	mov [edx+0x4], eax
	xor ecx, ecx
	mov dword [edx], 0x0
	jmp _Z14Con_TimeNudgedii_270
_Z14Con_TimeNudgedii_180:
	sub eax, ecx
	mov [edx+0x4], eax
	xor ecx, ecx
	mov dword [edx], 0x0
	jmp _Z14Con_TimeNudgedii_280


;CL_ConsolePrint(int, int, char const*, int, int, int)
_Z15CL_ConsolePrintiiPKciii:
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
	jz _Z15CL_ConsolePrintiiPKciii_10
	cmp byte [eax+0xc], 0x0
	jnz _Z15CL_ConsolePrintiiPKciii_10
	cmp esi, 0x6
	jz _Z15CL_ConsolePrintiiPKciii_10
	mov ecx, [con]
	test ecx, ecx
	jz _Z15CL_ConsolePrintiiPKciii_20
_Z15CL_ConsolePrintiiPKciii_30:
	mov dword [esp], 0x0
	call _Z24Sys_EnterCriticalSection15CriticalSection
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
	call _Z23CL_ConsolePrint_AddLineiiPKciici
	mov dword [ebp+0x8], 0x0
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z24Sys_LeaveCriticalSection15CriticalSection
_Z15CL_ConsolePrintiiPKciii_10:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15CL_ConsolePrintiiPKciii_20:
	call _Z15Con_OneTimeInitv
	jmp _Z15CL_ConsolePrintiiPKciii_30
	nop


;Con_CheckResize()
_Z15Con_CheckResizev:
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
	call _Z15ScrPlace_ApplyXPK15ScreenPlacementfi
	fstp dword [esp]
	call floorf
	fstp dword [con+0x10254]
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], esi
	mov [esp], ebx
	call _Z15ScrPlace_ApplyYPK15ScreenPlacementfi
	fstp dword [esp]
	call floorf
	fstp dword [con+0x10258]
	mov dword [esp+0x8], 0x3
	mov esi, 0xc0800000
	mov [esp+0x4], esi
	mov [esp], ebx
	call _Z15ScrPlace_ApplyXPK15ScreenPlacementfi
	fstp dword [esp]
	call floorf
	fstp dword [con+0x1025c]
	mov dword [esp+0x8], 0x3
	mov [esp+0x4], esi
	mov [esp], ebx
	call _Z15ScrPlace_ApplyYPK15ScreenPlacementfi
	fstp dword [esp]
	call floorf
	fstp dword [con+0x10260]
	mov eax, cls
	mov eax, [eax+0x2dbff8]
	test eax, eax
	jz _Z15Con_CheckResizev_10
	mov [esp], eax
	call _Z12R_TextHeightP6Font_s
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
_Z15Con_CheckResizev_10:
	mov dword [con+0x10248], 0x0
	mov dword [con+0x1024c], 0x0
	mov dword [con+0x10250], 0x0
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;Con_ClearNotify(int)
_Z15Con_ClearNotifyi:
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
_Z15Con_ClearNotifyi_10:
	mov dword [eax+0x24], 0x0
	mov dword [eax+0x30], 0x0
	mov dword [eax+0x28], 0x0
	mov dword [eax+0x2c], 0x0
	add ecx, 0x1
	add eax, 0x34
	cmp ecx, 0x4
	jnz _Z15Con_ClearNotifyi_10
	pop ebp
	ret
	add [eax], al


;Con_DrawConsole(int)
_Z15Con_DrawConsolei:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1bc
	call _Z15Con_CheckResizev
	mov dword [esp+0x4], 0x1
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z19Key_IsCatcherActiveii
	test al, al
	jnz _Z15Con_DrawConsolei_10
_Z15Con_DrawConsolei_40:
	add esp, 0x1bc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15Con_DrawConsolei_10:
	mov dword [esp], 0x0
	call _Z24Sys_EnterCriticalSection15CriticalSection
	mov ebx, [con+0x10238]
	test ebx, ebx
	jnz _Z15Con_DrawConsolei_20
_Z15Con_DrawConsolei_340:
	mov dword [esp], 0x0
	call _Z24Sys_LeaveCriticalSection15CriticalSection
	mov dword [esp+0x4], 0x1
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z19Key_IsCatcherActiveii
	xor edx, edx
	test al, al
	movzx eax, byte [con+0x10244]
	cmovnz edx, eax
	mov [con+0x10244], dl
	test dl, dl
	jnz _Z15Con_DrawConsolei_30
_Z15Con_DrawConsolei_320:
	mov dword [esp+0x4], 0x1
	mov edi, [ebp+0x8]
	mov [esp], edi
	call _Z19Key_IsCatcherActiveii
	test al, al
	jz _Z15Con_DrawConsolei_40
	call _Z16Sys_IsMainThreadv
	test al, al
	jz _Z15Con_DrawConsolei_40
	mov dword [esp+0x8], _cstring_17
	mov dword [esp+0x4], _cstring_cod4_mp
	mov dword [esp], _cstring_s_s_
	call _Z2vaPKcz
	mov esi, eax
	mov ebx, cls
	mov eax, [ebx+0x2dbff8]
	mov [esp], eax
	call _Z12R_TextHeightP6Font_s
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
	call _Z11ConDraw_BoxffffPKf
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
	call _Z16R_AddCmdDrawTextPKciP6Font_sfffffPKfi
	movss xmm6, dword [conDrawInputGlob+0x54]
	movss [ebp-0x138], xmm6
	mov eax, [ebx+0x2dbff8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call _Z11R_TextWidthPKciP6Font_s
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
	call _Z18Cmd_TokenizeStringPKc
	mov eax, cmd_args
	mov edx, [eax]
	mov ecx, [eax+edx*4+0x44]
	test ecx, ecx
	jle _Z15Con_DrawConsolei_50
	mov eax, [eax+edx*4+0x64]
	mov ebx, [eax]
_Z15Con_DrawConsolei_440:
	movzx eax, byte [ebx]
	cmp al, 0x5c
	jz _Z15Con_DrawConsolei_60
	cmp al, 0x2f
	jz _Z15Con_DrawConsolei_60
	movsx edx, byte [ebx]
	test edx, 0xffffff80
	jnz _Z15Con_DrawConsolei_70
_Z15Con_DrawConsolei_90:
	mov eax, [0xd5cc084]
	mov eax, [eax+edx*4+0x34]
	shr eax, 0xe
	and eax, 0x1
	test eax, eax
	jz _Z15Con_DrawConsolei_80
_Z15Con_DrawConsolei_60:
	add ebx, 0x1
	movsx edx, byte [ebx]
	test edx, 0xffffff80
	jz _Z15Con_DrawConsolei_90
_Z15Con_DrawConsolei_70:
	mov dword [esp+0x4], 0x4000
	mov [esp], edx
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	test eax, eax
	jnz _Z15Con_DrawConsolei_60
_Z15Con_DrawConsolei_80:
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
	jz _Z15Con_DrawConsolei_100
	mov esi, cmd_args
	mov eax, [esi]
	cmp dword [esi+eax*4+0x44], 0x1
	jle _Z15Con_DrawConsolei_110
	mov [esp], ebx
	call _Z17Con_IsDvarCommandPKc
	test al, al
	jz _Z15Con_DrawConsolei_110
	mov byte [ebp-0x139], 0x1
	mov byte [ebp-0x119], 0x1
	mov edx, [esi]
	cmp dword [esi+edx*4+0x44], 0x1
	jle _Z15Con_DrawConsolei_120
	mov eax, [esi+edx*4+0x64]
	mov edx, [eax+0x4]
_Z15Con_DrawConsolei_610:
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
	jnz _Z15Con_DrawConsolei_130
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
	call _Z10Field_DrawiP7field_tiiii
	call _Z22Cmd_EndTokenizedStringv
	jmp _Z15Con_DrawConsolei_40
_Z15Con_DrawConsolei_110:
	mov byte [ebp-0x139], 0x0
	mov byte [ebp-0x119], 0x0
_Z15Con_DrawConsolei_130:
	mov eax, [con_matchPrefixOnly]
	cmp byte [eax+0xc], 0x0
	jnz _Z15Con_DrawConsolei_140
	mov byte [conDrawInputGlob+0x50], 0x0
	mov dword [conDrawInputGlob+0x44], 0x0
	mov byte [con_ignoreMatchPrefixOnly], 0x0
	mov dword [esp], _Z29ConDrawInput_IncrMatchCounterPKc
	call _Z16Dvar_ForEachNamePFvPKcE
	cmp byte [ebp-0x139], 0x0
	jz _Z15Con_DrawConsolei_150
	mov edx, [conDrawInputGlob+0x44]
	mov [ebp-0x158], edx
_Z15Con_DrawConsolei_360:
	mov edi, [ebp-0x158]
	test edi, edi
	jz _Z15Con_DrawConsolei_160
	mov edx, [ebp-0x158]
	cmp edx, [conDrawInputGlob+0x40]
	jle _Z15Con_DrawConsolei_170
	cmp byte [conDrawInputGlob], 0x0
	jnz _Z15Con_DrawConsolei_180
_Z15Con_DrawConsolei_170:
	mov dword [conDrawInputGlob+0x40], 0xffffffff
_Z15Con_DrawConsolei_180:
	mov esi, [conDrawInputGlob+0x40]
	test esi, esi
	js _Z15Con_DrawConsolei_190
	mov ecx, [conDrawInputGlob+0x48]
	mov [ebp-0x128], ecx
	cmp byte [ebp-0x119], 0x0
	jnz _Z15Con_DrawConsolei_200
	mov dword [ebp-0x134], 0x0
	xor edx, edx
_Z15Con_DrawConsolei_450:
	mov eax, [con_matchPrefixOnly]
	cmp byte [eax+0xc], 0x0
	jz _Z15Con_DrawConsolei_210
	lea eax, [ebp-0x118]
	add eax, edx
	mov [ebp-0x130], eax
	mov edx, [ebp-0x128]
	mov [esp+0x4], edx
	mov dword [esp], conDrawInputGlob
	call _Z9I_stristrPKcS0_
	test eax, eax
	jz _Z15Con_DrawConsolei_220
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
_Z15Con_DrawConsolei_590:
	mov edi, [ebp-0x134]
	add edi, eax
_Z15Con_DrawConsolei_430:
	cvttss2si esi, [conDrawInputGlob+0x54]
	cvttss2si ebx, [conDrawInputGlob+0x58]
	lea eax, [ebp-0x118]
	mov [esp], eax
	call _Z15SEH_PrintStrlenPKc
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
	call _Z22Field_DrawTextOverrideiPK7field_tiiiiPKcii
_Z15Con_DrawConsolei_580:
	movss xmm5, dword [conDrawInputGlob+0x58]
	addss xmm5, [conDrawInputGlob+0x60]
	addss xmm5, [conDrawInputGlob+0x60]
	movss [conDrawInputGlob+0x58], xmm5
	mov eax, [conDrawInputGlob+0x5c]
	mov [conDrawInputGlob+0x54], eax
	mov eax, [ebp-0x158]
	cmp eax, [con_inputMaxMatchesShown]
	jg _Z15Con_DrawConsolei_230
	cmp dword [ebp-0x158], 0x1
	jz _Z15Con_DrawConsolei_240
	cmp byte [conDrawInputGlob+0x50], 0x0
	jz _Z15Con_DrawConsolei_250
	mov ebx, g_consoleField
	mov esi, [0xd5cc084]
	jmp _Z15Con_DrawConsolei_260
_Z15Con_DrawConsolei_280:
	mov eax, [esi+eax*4+0x34]
	shr eax, 0xe
	and eax, 0x1
_Z15Con_DrawConsolei_290:
	test eax, eax
	jz _Z15Con_DrawConsolei_270
	add ebx, 0x1
_Z15Con_DrawConsolei_260:
	movsx eax, byte [ebx+0x18]
	test eax, 0xffffff80
	jz _Z15Con_DrawConsolei_280
	mov dword [esp+0x4], 0x4000
	mov [esp], eax
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	jmp _Z15Con_DrawConsolei_290
_Z15Con_DrawConsolei_30:
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
	call _Z11ConDraw_BoxffffPKf
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
	call _Z2vaPKcz
	mov dword [esp+0xc], con_versionColor
	mov [esp+0x8], eax
	movss xmm0, dword [ebp-0x14c]
	subss xmm0, [_float_16_00000000]
	addss xmm0, [ebp-0x144]
	cvttss2si eax, xmm0
	mov [esp+0x4], eax
	cvttss2si eax, [ebp-0x140]
	mov [esp], eax
	call _Z22SCR_DrawSmallStringExtiiPKcPKf
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
	call _Z11ConDraw_BoxffffPKf
	mov eax, [con+0x30]
	mov edx, [con+0x1024c]
	cmp eax, edx
	jle _Z15Con_DrawConsolei_300
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
	call _Z11ConDraw_BoxffffPKf
_Z15Con_DrawConsolei_380:
	lea eax, [ebp-0x118]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x37
	mov dword [esp], 0x0
	call _Z14CL_LookupColorihPf
	mov esi, [con+0x1024c]
	mov eax, [con+0x1023c]
	mov edi, eax
	sub edi, esi
	js _Z15Con_DrawConsolei_310
_Z15Con_DrawConsolei_390:
	test esi, esi
	jle _Z15Con_DrawConsolei_320
	xor ebx, ebx
_Z15Con_DrawConsolei_330:
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
	call _Z23R_AddCmdDrawConsoleTextPKciiiP6Font_sffffPKfi
	add ebx, 0x1
	cmp esi, ebx
	jnz _Z15Con_DrawConsolei_330
	jmp _Z15Con_DrawConsolei_320
_Z15Con_DrawConsolei_20:
	mov dword [esp], 0x0
	mov ecx, 0x1
	mov edx, [con+0x10240]
	mov eax, [ebp+0x8]
	call _Z20Con_UpdateNotifyLineiihi
	mov dword [con+0x10238], 0x0
	mov eax, [con+0x30]
	lea edx, [eax-0x1]
	cmp [con+0x1023c], edx
	cmovnz eax, [con+0x1023c]
	mov [con+0x1023c], eax
	jmp _Z15Con_DrawConsolei_340
_Z15Con_DrawConsolei_140:
	mov byte [conDrawInputGlob+0x50], 0x0
	mov dword [conDrawInputGlob+0x44], 0x0
	mov byte [con_ignoreMatchPrefixOnly], 0x1
	mov dword [esp], _Z29ConDrawInput_IncrMatchCounterPKc
	call _Z16Dvar_ForEachNamePFvPKcE
	cmp byte [ebp-0x139], 0x0
	jz _Z15Con_DrawConsolei_350
_Z15Con_DrawConsolei_460:
	mov edi, [conDrawInputGlob+0x44]
	mov [ebp-0x158], edi
	cmp edi, [con_inputMaxMatchesShown]
	jle _Z15Con_DrawConsolei_360
	mov byte [conDrawInputGlob+0x50], 0x0
	mov dword [conDrawInputGlob+0x44], 0x0
	mov byte [con_ignoreMatchPrefixOnly], 0x0
	mov dword [esp], _Z29ConDrawInput_IncrMatchCounterPKc
	call _Z16Dvar_ForEachNamePFvPKcE
	mov dword [esp], _Z29ConDrawInput_IncrMatchCounterPKc
	call _Z11Cmd_ForEachPFvPKcE
	mov eax, [conDrawInputGlob+0x44]
	test eax, eax
	jz _Z15Con_DrawConsolei_370
_Z15Con_DrawConsolei_470:
	mov ecx, [conDrawInputGlob+0x44]
	mov [ebp-0x158], ecx
	jmp _Z15Con_DrawConsolei_360
_Z15Con_DrawConsolei_100:
	mov byte [conDrawInputGlob+0x51], 0x0
_Z15Con_DrawConsolei_160:
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
	call _Z10Field_DrawiP7field_tiiii
	call _Z22Cmd_EndTokenizedStringv
	jmp _Z15Con_DrawConsolei_40
_Z15Con_DrawConsolei_300:
	mov eax, [con_outputSliderColor]
	add eax, 0xc
	movss xmm3, dword [ebp-0x14c]
	movss xmm2, dword [_float_10_00000000]
	movss xmm1, dword [ebp-0x144]
	movss xmm0, dword [ebp-0x148]
	call _Z11ConDraw_BoxffffPKf
	jmp _Z15Con_DrawConsolei_380
_Z15Con_DrawConsolei_310:
	mov eax, edi
	imul eax, [con+0x10248]
	cvtsi2ss xmm0, eax
	movss xmm1, dword [ebp-0x144]
	subss xmm1, xmm0
	movss [ebp-0x144], xmm1
	add esi, edi
	xor edi, edi
	jmp _Z15Con_DrawConsolei_390
_Z15Con_DrawConsolei_270:
	mov edx, g_consoleField
	mov ecx, ebx
	sub ecx, edx
	movzx eax, byte [ecx+edx+0x18]
	test al, al
	jnz _Z15Con_DrawConsolei_400
_Z15Con_DrawConsolei_490:
	movss xmm5, dword [conDrawInputGlob+0x58]
_Z15Con_DrawConsolei_250:
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
	call _Z11ConDraw_BoxffffPKf
	mov dword [esp], _Z22ConDrawInput_DvarMatchPKc
	call _Z16Dvar_ForEachNamePFvPKcE
	cmp byte [ebp-0x139], 0x0
	jz _Z15Con_DrawConsolei_410
_Z15Con_DrawConsolei_520:
	call _Z22Cmd_EndTokenizedStringv
	jmp _Z15Con_DrawConsolei_40
_Z15Con_DrawConsolei_410:
	mov dword [esp], _Z21ConDrawInput_CmdMatchPKc
	call _Z11Cmd_ForEachPFvPKcE
	call _Z22Cmd_EndTokenizedStringv
	jmp _Z15Con_DrawConsolei_40
_Z15Con_DrawConsolei_210:
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
	jnz _Z15Con_DrawConsolei_420
	xor eax, eax
	mov ecx, 0x2
	mov edx, 0x3
_Z15Con_DrawConsolei_570:
	add eax, [ebp-0x12c]
	mov word [eax], 0x375e
	mov byte [eax+0x2], 0x0
	mov edi, [ebp-0x12c]
	mov byte [edi+ecx], 0x20
	mov byte [edi+edx], 0x0
	mov edi, [ebp-0x134]
	add edi, edx
	jmp _Z15Con_DrawConsolei_430
_Z15Con_DrawConsolei_50:
	mov ebx, _cstring_null
	jmp _Z15Con_DrawConsolei_440
_Z15Con_DrawConsolei_230:
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i_matches_too_ma
	call _Z2vaPKcz
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
	call _Z11ConDraw_BoxffffPKf
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
	call _Z16R_AddCmdDrawTextPKciP6Font_sfffffPKfi
	call _Z22Cmd_EndTokenizedStringv
	jmp _Z15Con_DrawConsolei_40
_Z15Con_DrawConsolei_200:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_2s_
	lea edi, [ebp-0x118]
	mov [esp], edi
	call sprintf
	mov [ebp-0x134], eax
	mov edx, eax
	jmp _Z15Con_DrawConsolei_450
_Z15Con_DrawConsolei_350:
	mov dword [esp], _Z29ConDrawInput_IncrMatchCounterPKc
	call _Z11Cmd_ForEachPFvPKcE
	jmp _Z15Con_DrawConsolei_460
_Z15Con_DrawConsolei_150:
	mov dword [esp], _Z29ConDrawInput_IncrMatchCounterPKc
	call _Z11Cmd_ForEachPFvPKcE
	jmp _Z15Con_DrawConsolei_470
_Z15Con_DrawConsolei_400:
	lea ebx, [ecx+edx+0x18]
	jmp _Z15Con_DrawConsolei_480
_Z15Con_DrawConsolei_500:
	mov eax, [0xd5cc084]
	mov eax, [eax+edx*4+0x34]
	shr eax, 0xe
	and eax, 0x1
_Z15Con_DrawConsolei_510:
	test eax, eax
	jnz _Z15Con_DrawConsolei_240
	movzx eax, byte [ebx+0x1]
	add ebx, 0x1
	test al, al
	jz _Z15Con_DrawConsolei_490
_Z15Con_DrawConsolei_480:
	movsx edx, al
	test edx, 0xffffff80
	jz _Z15Con_DrawConsolei_500
	mov dword [esp+0x4], 0x4000
	mov [esp], edx
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	jmp _Z15Con_DrawConsolei_510
_Z15Con_DrawConsolei_240:
	mov dword [esp], _Z30ConDrawInput_DetailedDvarMatchPKc
	call _Z16Dvar_ForEachNamePFvPKcE
	cmp byte [ebp-0x139], 0x0
	jnz _Z15Con_DrawConsolei_520
	mov dword [esp], _Z29ConDrawInput_DetailedCmdMatchPKc
	call _Z11Cmd_ForEachPFvPKcE
	call _Z22Cmd_EndTokenizedStringv
	jmp _Z15Con_DrawConsolei_40
_Z15Con_DrawConsolei_420:
	mov byte [ebp-0x11a], 0x0
	mov dword [ebp-0x124], 0x0
	mov edi, conDrawInputGlob
	xor esi, esi
	jmp _Z15Con_DrawConsolei_530
_Z15Con_DrawConsolei_560:
	cmp [ebp-0x11a], bl
	jz _Z15Con_DrawConsolei_540
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
_Z15Con_DrawConsolei_540:
	movzx eax, byte [edi]
	mov ecx, [ebp-0x12c]
	mov [ecx+esi], al
	add esi, 0x1
	add edi, 0x1
	movzx eax, byte [edi]
	test al, al
	jz _Z15Con_DrawConsolei_550
_Z15Con_DrawConsolei_530:
	movsx eax, al
	mov [esp], eax
	call tolower
	cmp [ebp-0x120], eax
	setz bl
	test bl, bl
	jz _Z15Con_DrawConsolei_560
	add dword [ebp-0x124], 0x1
	mov ecx, [ebp-0x128]
	mov edx, [ebp-0x124]
	movsx eax, byte [ecx+edx]
	mov [esp], eax
	call tolower
	mov [ebp-0x120], eax
	jmp _Z15Con_DrawConsolei_560
_Z15Con_DrawConsolei_550:
	mov eax, esi
	lea ecx, [esi+0x2]
	lea edx, [esi+0x3]
	jmp _Z15Con_DrawConsolei_570
_Z15Con_DrawConsolei_190:
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
	call _Z10Field_DrawiP7field_tiiii
	jmp _Z15Con_DrawConsolei_580
_Z15Con_DrawConsolei_220:
	mov dword [esp+0x4], conDrawInputGlob
	mov ecx, [ebp-0x130]
	mov [esp], ecx
	call strcpy
	xor eax, eax
	jmp _Z15Con_DrawConsolei_590
_Z15Con_DrawConsolei_370:
	mov byte [conDrawInputGlob+0x50], 0x0
	mov dword [conDrawInputGlob+0x44], 0x0
	mov byte [con_ignoreMatchPrefixOnly], 0x1
	mov dword [esp], _Z29ConDrawInput_IncrMatchCounterPKc
	call _Z16Dvar_ForEachNamePFvPKcE
	cmp byte [ebp-0x139], 0x0
	jz _Z15Con_DrawConsolei_600
	mov edi, [conDrawInputGlob+0x44]
	mov [ebp-0x158], edi
	jmp _Z15Con_DrawConsolei_360
_Z15Con_DrawConsolei_600:
	mov dword [esp], _Z29ConDrawInput_IncrMatchCounterPKc
	call _Z11Cmd_ForEachPFvPKcE
	mov eax, [conDrawInputGlob+0x44]
	mov [ebp-0x158], eax
	jmp _Z15Con_DrawConsolei_360
_Z15Con_DrawConsolei_120:
	mov edx, _cstring_null
	jmp _Z15Con_DrawConsolei_610
	nop


;Con_IsDvarCommand(char const*)
_Z17Con_IsDvarCommandPKc:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov dword [esp+0x4], _cstring_set
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z17Con_IsDvarCommandPKc_10
_Z17Con_IsDvarCommandPKc_20:
	mov eax, 0x1
_Z17Con_IsDvarCommandPKc_30:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z17Con_IsDvarCommandPKc_10:
	mov dword [esp+0x4], _cstring_seta
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z17Con_IsDvarCommandPKc_20
	mov dword [esp+0x4], _cstring_sets
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z17Con_IsDvarCommandPKc_20
	mov dword [esp+0x4], _cstring_reset
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z17Con_IsDvarCommandPKc_20
	mov dword [esp+0x4], _cstring_toggle
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z17Con_IsDvarCommandPKc_20
	mov dword [esp+0x4], _cstring_togglep
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z17Con_IsDvarCommandPKc_20
	xor eax, eax
	jmp _Z17Con_IsDvarCommandPKc_30
	nop


;Con_ToggleConsole()
_Z17Con_ToggleConsolev:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, g_consoleField
	mov [esp], eax
	call _Z11Field_ClearP7field_t
	mov eax, [conDrawInputGlob+0x40]
	test eax, eax
	js _Z17Con_ToggleConsolev_10
	cmp byte [conDrawInputGlob], 0x0
	jnz _Z17Con_ToggleConsolev_20
_Z17Con_ToggleConsolev_10:
	xor eax, eax
_Z17Con_ToggleConsolev_40:
	test eax, eax
	jz _Z17Con_ToggleConsolev_30
	mov dword [conDrawInputGlob+0x40], 0xffffffff
	mov byte [conDrawInputGlob], 0x0
_Z17Con_ToggleConsolev_30:
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
_Z17Con_ToggleConsolev_20:
	mov eax, 0x1
	jmp _Z17Con_ToggleConsolev_40


;Con_TokenizeInput()
_Z17Con_TokenizeInputv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, g_consoleField
	add eax, 0x18
	mov [esp], eax
	call _Z18Cmd_TokenizeStringPKc
	mov eax, cmd_args
	mov edx, [eax]
	mov ecx, [eax+edx*4+0x44]
	test ecx, ecx
	jle _Z17Con_TokenizeInputv_10
	mov eax, [eax+edx*4+0x64]
	mov ebx, [eax]
_Z17Con_TokenizeInputv_60:
	movzx eax, byte [ebx]
	cmp al, 0x5c
	jz _Z17Con_TokenizeInputv_20
	cmp al, 0x2f
	jz _Z17Con_TokenizeInputv_20
	movsx edx, byte [ebx]
	test edx, 0xffffff80
	jnz _Z17Con_TokenizeInputv_30
_Z17Con_TokenizeInputv_50:
	mov eax, [0xd5cc084]
	mov eax, [eax+edx*4+0x34]
	shr eax, 0xe
	and eax, 0x1
	test eax, eax
	jz _Z17Con_TokenizeInputv_40
_Z17Con_TokenizeInputv_20:
	add ebx, 0x1
	movsx edx, byte [ebx]
	test edx, 0xffffff80
	jz _Z17Con_TokenizeInputv_50
_Z17Con_TokenizeInputv_30:
	mov dword [esp+0x4], 0x4000
	mov [esp], edx
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	test eax, eax
	jnz _Z17Con_TokenizeInputv_20
_Z17Con_TokenizeInputv_40:
	mov eax, ebx
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z17Con_TokenizeInputv_10:
	mov ebx, _cstring_null
	jmp _Z17Con_TokenizeInputv_60


;Con_DrawMiniConsole(int, int, int, float)
_Z19Con_DrawMiniConsoleiiif:
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
	call _Z16UI_GetFontHandlePK15ScreenPlacementif
	mov edi, eax
	mov eax, [con_miniconlines]
	mov eax, [eax+0xc]
	cmp [con+0x13944], eax
	jz _Z19Con_DrawMiniConsoleiiif_10
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
_Z19Con_DrawMiniConsoleiiif_10:
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
	jz _Z19Con_DrawMiniConsoleiiif_20
	mov [esp], ebx
	call _Z19CL_ShouldDisplayHudi
	test al, al
	jz _Z19Con_DrawMiniConsoleiiif_30
_Z19Con_DrawMiniConsoleiiif_20:
	xor eax, eax
_Z19Con_DrawMiniConsoleiiif_50:
	test eax, eax
	jnz _Z19Con_DrawMiniConsoleiiif_40
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
	call _Z29Con_DrawMessageWindowOldToNewiP13MessageWindowiiiiihP6Font_sPfifi
_Z19Con_DrawMiniConsoleiiif_40:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19Con_DrawMiniConsoleiiif_30:
	mov eax, 0x1
	jmp _Z19Con_DrawMiniConsoleiiif_50


;CL_DeathMessagePrint(int, char const*, char, char const*, char, Material*, float, float, unsigned char)
_Z20CL_DeathMessagePrintiPKccS0_cP8Materialffh:
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
	jz _Z20CL_DeathMessagePrintiPKccS0_cP8Materialffh_10
	cmp byte [eax+0xc], 0x0
	jnz _Z20CL_DeathMessagePrintiPKccS0_cP8Materialffh_20
_Z20CL_DeathMessagePrintiPKccS0_cP8Materialffh_10:
	mov edx, [con]
	test edx, edx
	jz _Z20CL_DeathMessagePrintiPKccS0_cP8Materialffh_30
_Z20CL_DeathMessagePrintiPKccS0_cP8Materialffh_170:
	mov eax, [con+0x10238]
	test eax, eax
	jnz _Z20CL_DeathMessagePrintiPKccS0_cP8Materialffh_40
_Z20CL_DeathMessagePrintiPKccS0_cP8Materialffh_160:
	mov dword [esp], 0x37
	call _Z10ColorIndexh
	cmp byte [ebx], 0x0
	jnz _Z20CL_DeathMessagePrintiPKccS0_cP8Materialffh_50
	xor ecx, ecx
	mov edx, 0x1
	lea esi, [ebp-0x418]
_Z20CL_DeathMessagePrintiPKccS0_cP8Materialffh_180:
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
	jle _Z20CL_DeathMessagePrintiPKccS0_cP8Materialffh_60
	mov eax, 0x7f
_Z20CL_DeathMessagePrintiPKccS0_cP8Materialffh_150:
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
	jle _Z20CL_DeathMessagePrintiPKccS0_cP8Materialffh_70
	mov eax, 0x7f
_Z20CL_DeathMessagePrintiPKccS0_cP8Materialffh_140:
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
	jz _Z20CL_DeathMessagePrintiPKccS0_cP8Materialffh_80
	mov edx, eax
	lea eax, [esi+ebx]
_Z20CL_DeathMessagePrintiPKccS0_cP8Materialffh_90:
	mov [eax], cl
	movzx ecx, byte [edx+0x1]
	add edx, 0x1
	add eax, 0x1
	test cl, cl
	jnz _Z20CL_DeathMessagePrintiPKccS0_cP8Materialffh_90
	mov ebx, eax
	sub ebx, esi
_Z20CL_DeathMessagePrintiPKccS0_cP8Materialffh_80:
	mov byte [ebp+ebx-0x418], 0xa
	mov byte [ebp+ebx-0x417], 0x0
	mov ebx, [con+0x10250]
	mov eax, cl_noprint
	mov eax, [eax]
	test eax, eax
	jz _Z20CL_DeathMessagePrintiPKccS0_cP8Materialffh_20
	cmp byte [eax+0xc], 0x0
	jnz _Z20CL_DeathMessagePrintiPKccS0_cP8Materialffh_20
	mov eax, [con]
	test eax, eax
	jz _Z20CL_DeathMessagePrintiPKccS0_cP8Materialffh_100
_Z20CL_DeathMessagePrintiPKccS0_cP8Materialffh_190:
	mov dword [esp], 0x0
	call _Z24Sys_EnterCriticalSection15CriticalSection
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x37
	mov [esp+0x10], ebx
	mov dword [esp+0xc], 0x0
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x5
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z23CL_ConsolePrint_AddLineiiPKciici
	mov dword [esp], 0x0
	call _Z24Sys_LeaveCriticalSection15CriticalSection
_Z20CL_DeathMessagePrintiPKccS0_cP8Materialffh_20:
	add esp, 0x43c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20CL_DeathMessagePrintiPKccS0_cP8Materialffh_50:
	mov byte [ebp-0x418], 0x5e
	mov eax, esi
	mov [ebp-0x417], al
	movzx eax, byte [ebx]
	test al, al
	jz _Z20CL_DeathMessagePrintiPKccS0_cP8Materialffh_110
	mov edx, 0x2
	lea esi, [ebp-0x418]
_Z20CL_DeathMessagePrintiPKccS0_cP8Materialffh_120:
	mov [edx+esi], al
	add edx, 0x1
	movzx eax, byte [ebx+edx-0x2]
	test al, al
	jnz _Z20CL_DeathMessagePrintiPKccS0_cP8Materialffh_120
	mov eax, edx
	jmp _Z20CL_DeathMessagePrintiPKccS0_cP8Materialffh_130
_Z20CL_DeathMessagePrintiPKccS0_cP8Materialffh_70:
	mov eax, 0x10
	cmp edx, 0x10
	cmovg eax, edx
	jmp _Z20CL_DeathMessagePrintiPKccS0_cP8Materialffh_140
_Z20CL_DeathMessagePrintiPKccS0_cP8Materialffh_60:
	mov eax, 0x10
	cmp edx, 0x10
	cmovg eax, edx
	jmp _Z20CL_DeathMessagePrintiPKccS0_cP8Materialffh_150
_Z20CL_DeathMessagePrintiPKccS0_cP8Materialffh_40:
	mov dword [esp], 0x0
	mov ecx, 0x1
	mov edx, [con+0x10240]
	mov eax, [ebp+0x8]
	call _Z20Con_UpdateNotifyLineiihi
	mov dword [con+0x10238], 0x0
	mov eax, [con+0x30]
	lea edx, [eax-0x1]
	cmp [con+0x1023c], edx
	cmovnz eax, [con+0x1023c]
	mov [con+0x1023c], eax
	jmp _Z20CL_DeathMessagePrintiPKccS0_cP8Materialffh_160
_Z20CL_DeathMessagePrintiPKccS0_cP8Materialffh_30:
	call _Z15Con_OneTimeInitv
	jmp _Z20CL_DeathMessagePrintiPKccS0_cP8Materialffh_170
_Z20CL_DeathMessagePrintiPKccS0_cP8Materialffh_110:
	mov eax, 0x2
	lea esi, [ebp-0x418]
_Z20CL_DeathMessagePrintiPKccS0_cP8Materialffh_130:
	mov byte [ebp+eax-0x418], 0x5e
	mov byte [eax+ebp-0x417], 0x37
	mov byte [eax+ebp-0x416], 0x20
	lea ecx, [eax+0x3]
	lea edx, [eax+0x4]
	jmp _Z20CL_DeathMessagePrintiPKccS0_cP8Materialffh_180
_Z20CL_DeathMessagePrintiPKccS0_cP8Materialffh_100:
	call _Z15Con_OneTimeInitv
	jmp _Z20CL_DeathMessagePrintiPKccS0_cP8Materialffh_190
	add [eax], al


;Con_InitClientAssets()
_Z20Con_InitClientAssetsv:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _Z15Con_CheckResizev
	nop


;CL_ConsoleFixPosition()
_Z21CL_ConsoleFixPositionv:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov eax, cl_noprint
	mov eax, [eax]
	test eax, eax
	jz _Z21CL_ConsoleFixPositionv_10
	cmp byte [eax+0xc], 0x0
	jnz _Z21CL_ConsoleFixPositionv_10
	mov eax, [con]
	test eax, eax
	jz _Z21CL_ConsoleFixPositionv_20
_Z21CL_ConsoleFixPositionv_30:
	mov dword [esp], 0x0
	call _Z24Sys_EnterCriticalSection15CriticalSection
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x37
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], _cstring_
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	call _Z23CL_ConsolePrint_AddLineiiPKciici
	mov dword [esp], 0x0
	call _Z24Sys_LeaveCriticalSection15CriticalSection
_Z21CL_ConsoleFixPositionv_10:
	mov eax, [con+0x30]
	sub eax, 0x1
	mov [con+0x1023c], eax
	leave
	ret
_Z21CL_ConsoleFixPositionv_20:
	call _Z15Con_OneTimeInitv
	jmp _Z21CL_ConsoleFixPositionv_30


;Con_CycleAutoComplete(int)
_Z21Con_CycleAutoCompletei:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	cmp byte [conDrawInputGlob+0x51], 0x0
	jz _Z21Con_CycleAutoCompletei_10
	mov eax, [conDrawInputGlob+0x44]
	cmp eax, 0x1
	jle _Z21Con_CycleAutoCompletei_10
	cmp eax, [con_inputMaxMatchesShown]
	jge _Z21Con_CycleAutoCompletei_10
	cmp byte [conDrawInputGlob+0x50], 0x0
	jz _Z21Con_CycleAutoCompletei_20
	mov ebx, g_consoleField
	mov esi, [0xd5cc084]
	jmp _Z21Con_CycleAutoCompletei_30
_Z21Con_CycleAutoCompletei_50:
	mov eax, [esi+eax*4+0x34]
	shr eax, 0xe
	and eax, 0x1
	test eax, eax
	jz _Z21Con_CycleAutoCompletei_40
_Z21Con_CycleAutoCompletei_60:
	add ebx, 0x1
_Z21Con_CycleAutoCompletei_30:
	movsx eax, byte [ebx+0x18]
	test eax, 0xffffff80
	jz _Z21Con_CycleAutoCompletei_50
	mov dword [esp+0x4], 0x4000
	mov [esp], eax
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	test eax, eax
	jnz _Z21Con_CycleAutoCompletei_60
_Z21Con_CycleAutoCompletei_40:
	mov edx, g_consoleField
	mov ecx, ebx
	sub ecx, edx
	movzx eax, byte [ecx+edx+0x18]
	test al, al
	jz _Z21Con_CycleAutoCompletei_20
	lea ebx, [ecx+edx+0x18]
	jmp _Z21Con_CycleAutoCompletei_70
_Z21Con_CycleAutoCompletei_80:
	mov eax, [0xd5cc084]
	mov eax, [eax+edx*4+0x34]
	shr eax, 0xe
	and eax, 0x1
_Z21Con_CycleAutoCompletei_90:
	test eax, eax
	jnz _Z21Con_CycleAutoCompletei_10
	movzx eax, byte [ebx+0x1]
	add ebx, 0x1
	test al, al
	jz _Z21Con_CycleAutoCompletei_20
_Z21Con_CycleAutoCompletei_70:
	movsx edx, al
	test edx, 0xffffff80
	jz _Z21Con_CycleAutoCompletei_80
	mov dword [esp+0x4], 0x4000
	mov [esp], edx
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	jmp _Z21Con_CycleAutoCompletei_90
_Z21Con_CycleAutoCompletei_10:
	xor eax, eax
_Z21Con_CycleAutoCompletei_120:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z21Con_CycleAutoCompletei_20:
	mov eax, [ebp+0x8]
	add eax, [conDrawInputGlob+0x40]
	mov [conDrawInputGlob+0x40], eax
	test eax, eax
	js _Z21Con_CycleAutoCompletei_100
	cmp eax, [conDrawInputGlob+0x44]
	jl _Z21Con_CycleAutoCompletei_110
	mov dword [conDrawInputGlob+0x40], 0x0
_Z21Con_CycleAutoCompletei_110:
	mov eax, 0x1
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z21Con_CycleAutoCompletei_100:
	mov eax, [conDrawInputGlob+0x44]
	sub eax, 0x1
	mov [conDrawInputGlob+0x40], eax
	mov eax, 0x1
	jmp _Z21Con_CycleAutoCompletei_120
	nop


;Con_InitMessageBuffer()
_Z21Con_InitMessageBufferv:
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
_Z21Con_InitMessageBufferv_10:
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
	jnz _Z21Con_InitMessageBufferv_10
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
_Z22Con_CancelAutoCompletev:
	push ebp
	mov ebp, esp
	mov eax, [conDrawInputGlob+0x40]
	test eax, eax
	js _Z22Con_CancelAutoCompletev_10
	cmp byte [conDrawInputGlob], 0x0
	jnz _Z22Con_CancelAutoCompletev_20
_Z22Con_CancelAutoCompletev_10:
	xor eax, eax
_Z22Con_CancelAutoCompletev_40:
	test eax, eax
	jz _Z22Con_CancelAutoCompletev_30
	mov dword [conDrawInputGlob+0x40], 0xffffffff
	mov byte [conDrawInputGlob], 0x0
	mov eax, 0x1
_Z22Con_CancelAutoCompletev_30:
	pop ebp
	ret
_Z22Con_CancelAutoCompletev_20:
	mov eax, 0x1
	jmp _Z22Con_CancelAutoCompletev_40


;Con_IsAutoCompleteMatch(char const*, char const*, int)
_Z23Con_IsAutoCompleteMatchPKcS0_i:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [ebp+0x8]
	cmp byte [con_ignoreMatchPrefixOnly], 0x0
	jnz _Z23Con_IsAutoCompleteMatchPKcS0_i_10
	mov eax, [con_matchPrefixOnly]
	cmp byte [eax+0xc], 0x0
	jnz _Z23Con_IsAutoCompleteMatchPKcS0_i_20
_Z23Con_IsAutoCompleteMatchPKcS0_i_10:
	mov edx, [ebp+0xc]
	movsx eax, byte [edx]
	mov [esp], eax
	call tolower
	mov esi, eax
	movzx eax, byte [ebx]
	test al, al
	jnz _Z23Con_IsAutoCompleteMatchPKcS0_i_30
_Z23Con_IsAutoCompleteMatchPKcS0_i_70:
	xor eax, eax
_Z23Con_IsAutoCompleteMatchPKcS0_i_100:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23Con_IsAutoCompleteMatchPKcS0_i_30:
	xor edi, edi
	jmp _Z23Con_IsAutoCompleteMatchPKcS0_i_40
_Z23Con_IsAutoCompleteMatchPKcS0_i_80:
	mov eax, [con_matchPrefixOnly]
	cmp byte [eax+0xc], 0x0
	jz _Z23Con_IsAutoCompleteMatchPKcS0_i_50
	test edi, edi
	jnz _Z23Con_IsAutoCompleteMatchPKcS0_i_60
_Z23Con_IsAutoCompleteMatchPKcS0_i_50:
	movzx eax, byte [ebx+0x1]
	add ebx, 0x1
	test al, al
	jz _Z23Con_IsAutoCompleteMatchPKcS0_i_70
_Z23Con_IsAutoCompleteMatchPKcS0_i_40:
	movsx eax, al
	mov [esp], eax
	call tolower
	cmp esi, eax
	jnz _Z23Con_IsAutoCompleteMatchPKcS0_i_80
	add edi, 0x1
	cmp edi, [ebp+0x10]
	jz _Z23Con_IsAutoCompleteMatchPKcS0_i_90
	mov edx, [ebp+0xc]
	movsx eax, byte [edx+edi]
	mov [esp], eax
	call tolower
	mov esi, eax
	jmp _Z23Con_IsAutoCompleteMatchPKcS0_i_50
_Z23Con_IsAutoCompleteMatchPKcS0_i_20:
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], ebx
	call _Z10I_strnicmpPKcS0_i
	test eax, eax
	setz al
	movzx eax, al
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23Con_IsAutoCompleteMatchPKcS0_i_60:
	mov edx, [ebp+0xc]
	movsx eax, byte [edx]
	mov [esp], eax
	call tolower
	mov esi, eax
	xor edi, edi
	jmp _Z23Con_IsAutoCompleteMatchPKcS0_i_50
_Z23Con_IsAutoCompleteMatchPKcS0_i_90:
	mov eax, 0x1
	jmp _Z23Con_IsAutoCompleteMatchPKcS0_i_100
	nop


;Con_ToggleConsoleOutput()
_Z23Con_ToggleConsoleOutputv:
	push ebp
	mov ebp, esp
	cmp byte [con+0x10244], 0x0
	setz byte [con+0x10244]
	pop ebp
	ret
	nop


;CL_PlayTextFXPulseSounds(int, int, int, int, int, int, int*)
_Z24CL_PlayTextFXPulseSoundsiiiiiiPi:
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
	js _Z24CL_PlayTextFXPulseSoundsiiiiiiPi_10
	cmp [ebp-0x1c], edx
	jl _Z24CL_PlayTextFXPulseSoundsiiiiiiPi_20
	cmp edx, ecx
	jge _Z24CL_PlayTextFXPulseSoundsiiiiiiPi_10
	cdq
	idiv esi
	imul esi, eax
	cmp ebx, esi
	jl _Z24CL_PlayTextFXPulseSoundsiiiiiiPi_30
_Z24CL_PlayTextFXPulseSoundsiiiiiiPi_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24CL_PlayTextFXPulseSoundsiiiiiiPi_20:
	cmp [ebp-0x1c], ebx
	jle _Z24CL_PlayTextFXPulseSoundsiiiiiiPi_10
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_ui_pulse_text_de
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z29SND_PlayLocalSoundAliasByNameiPKc18snd_alias_system_t
	mov eax, [ebp+0x20]
	mov [eax], edi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24CL_PlayTextFXPulseSoundsiiiiiiPi_30:
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_ui_pulse_text_ty
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z29SND_PlayLocalSoundAliasByNameiPKc18snd_alias_system_t
	mov ecx, [ebp+0x20]
	mov [ecx], edi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Con_AnySpaceAfterCommand()
_Z24Con_AnySpaceAfterCommandv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, g_consoleField
	mov esi, [0xd5cc084]
	jmp _Z24Con_AnySpaceAfterCommandv_10
_Z24Con_AnySpaceAfterCommandv_30:
	mov eax, [esi+eax*4+0x34]
	shr eax, 0xe
	and eax, 0x1
	test eax, eax
	jz _Z24Con_AnySpaceAfterCommandv_20
_Z24Con_AnySpaceAfterCommandv_40:
	add ebx, 0x1
_Z24Con_AnySpaceAfterCommandv_10:
	movsx eax, byte [ebx+0x18]
	test eax, 0xffffff80
	jz _Z24Con_AnySpaceAfterCommandv_30
	mov dword [esp+0x4], 0x4000
	mov [esp], eax
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	test eax, eax
	jnz _Z24Con_AnySpaceAfterCommandv_40
_Z24Con_AnySpaceAfterCommandv_20:
	mov edx, g_consoleField
	mov ecx, ebx
	sub ecx, edx
	movzx eax, byte [ecx+edx+0x18]
	test al, al
	jz _Z24Con_AnySpaceAfterCommandv_50
	lea ebx, [ecx+edx+0x18]
	jmp _Z24Con_AnySpaceAfterCommandv_60
_Z24Con_AnySpaceAfterCommandv_80:
	mov eax, [0xd5cc084]
	mov eax, [eax+edx*4+0x34]
	shr eax, 0xe
	and eax, 0x1
	test eax, eax
	jnz _Z24Con_AnySpaceAfterCommandv_70
_Z24Con_AnySpaceAfterCommandv_90:
	movzx eax, byte [ebx+0x1]
	add ebx, 0x1
	test al, al
	jz _Z24Con_AnySpaceAfterCommandv_50
_Z24Con_AnySpaceAfterCommandv_60:
	movsx edx, al
	test edx, 0xffffff80
	jz _Z24Con_AnySpaceAfterCommandv_80
	mov dword [esp+0x4], 0x4000
	mov [esp], edx
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	test eax, eax
	jz _Z24Con_AnySpaceAfterCommandv_90
_Z24Con_AnySpaceAfterCommandv_70:
	mov eax, 0x1
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z24Con_AnySpaceAfterCommandv_50:
	xor eax, eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;Con_AutoCompleteFromList(char const**, unsigned int, char const*, char*, unsigned int)
_Z24Con_AutoCompleteFromListPPKcjS0_Pcj:
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
	jnz _Z24Con_AutoCompleteFromListPPKcjS0_Pcj_10
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24Con_AutoCompleteFromListPPKcjS0_Pcj_10:
	xor ebx, ebx
_Z24Con_AutoCompleteFromListPPKcjS0_Pcj_50:
	mov eax, [ebp+0x8]
	mov edi, [eax+ebx*4]
	mov [esp+0x8], esi
	mov [esp+0x4], edi
	mov eax, [ebp+0x10]
	mov [esp], eax
	call _Z10I_strnicmpPKcS0_i
	test eax, eax
	jnz _Z24Con_AutoCompleteFromListPPKcjS0_Pcj_20
	mov eax, [ebp+0x14]
	cmp byte [eax], 0x0
	jz _Z24Con_AutoCompleteFromListPPKcjS0_Pcj_30
	add eax, esi
	movzx edx, byte [eax]
	cmp dl, [edi+esi]
	jz _Z24Con_AutoCompleteFromListPPKcjS0_Pcj_40
_Z24Con_AutoCompleteFromListPPKcjS0_Pcj_60:
	mov byte [eax], 0x0
_Z24Con_AutoCompleteFromListPPKcjS0_Pcj_20:
	add ebx, 0x1
	cmp [ebp+0xc], ebx
	jnz _Z24Con_AutoCompleteFromListPPKcjS0_Pcj_50
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24Con_AutoCompleteFromListPPKcjS0_Pcj_40:
	test dl, dl
	jz _Z24Con_AutoCompleteFromListPPKcjS0_Pcj_60
	add eax, 0x1
	mov [ebp-0x1c], eax
	lea edx, [edi+esi]
	jmp _Z24Con_AutoCompleteFromListPPKcjS0_Pcj_70
_Z24Con_AutoCompleteFromListPPKcjS0_Pcj_80:
	mov eax, edi
_Z24Con_AutoCompleteFromListPPKcjS0_Pcj_70:
	movzx ecx, byte [eax]
	cmp cl, [edx+0x1]
	jnz _Z24Con_AutoCompleteFromListPPKcjS0_Pcj_60
	lea edi, [eax+0x1]
	mov [ebp-0x1c], edi
	add edx, 0x1
	test cl, cl
	jnz _Z24Con_AutoCompleteFromListPPKcjS0_Pcj_80
	jmp _Z24Con_AutoCompleteFromListPPKcjS0_Pcj_60
_Z24Con_AutoCompleteFromListPPKcjS0_Pcj_30:
	mov eax, [ebp+0x18]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov edi, [ebp+0x14]
	mov [esp], edi
	call _Z10I_strncpyzPcPKci
	jmp _Z24Con_AutoCompleteFromListPPKcjS0_Pcj_20


;Con_CommitToAutoComplete()
_Z24Con_CommitToAutoCompletev:
	push ebp
	mov ebp, esp
	push edi
	push ebx
	sub esp, 0x20
	mov ebx, [conDrawInputGlob+0x40]
	test ebx, ebx
	js _Z24Con_CommitToAutoCompletev_10
	cmp byte [conDrawInputGlob], 0x0
	jnz _Z24Con_CommitToAutoCompletev_20
_Z24Con_CommitToAutoCompletev_10:
	xor eax, eax
	test eax, eax
	jnz _Z24Con_CommitToAutoCompletev_30
_Z24Con_CommitToAutoCompletev_40:
	add esp, 0x20
	pop ebx
	pop edi
	pop ebp
	ret
_Z24Con_CommitToAutoCompletev_20:
	mov eax, 0x1
	test eax, eax
	jz _Z24Con_CommitToAutoCompletev_40
_Z24Con_CommitToAutoCompletev_30:
	mov eax, g_consoleField
	add eax, 0x18
	mov [esp], eax
	call _Z18Cmd_TokenizeStringPKc
	mov eax, cmd_args
	mov edx, [eax]
	mov ecx, [eax+edx*4+0x44]
	test ecx, ecx
	jle _Z24Con_CommitToAutoCompletev_50
	mov eax, [eax+edx*4+0x64]
	mov ebx, [eax]
_Z24Con_CommitToAutoCompletev_160:
	movzx eax, byte [ebx]
	cmp al, 0x5c
	jz _Z24Con_CommitToAutoCompletev_60
	cmp al, 0x2f
	jz _Z24Con_CommitToAutoCompletev_60
	movsx edx, byte [ebx]
	test edx, 0xffffff80
	jnz _Z24Con_CommitToAutoCompletev_70
_Z24Con_CommitToAutoCompletev_90:
	mov eax, [0xd5cc084]
	mov eax, [eax+edx*4+0x34]
	shr eax, 0xe
	and eax, 0x1
	test eax, eax
	jz _Z24Con_CommitToAutoCompletev_80
_Z24Con_CommitToAutoCompletev_60:
	add ebx, 0x1
	movsx edx, byte [ebx]
	test edx, 0xffffff80
	jz _Z24Con_CommitToAutoCompletev_90
_Z24Con_CommitToAutoCompletev_70:
	mov dword [esp+0x4], 0x4000
	mov [esp], edx
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	test eax, eax
	jnz _Z24Con_CommitToAutoCompletev_60
_Z24Con_CommitToAutoCompletev_80:
	mov [esp], ebx
	call _Z17Con_IsDvarCommandPKc
	test al, al
	jz _Z24Con_CommitToAutoCompletev_100
	mov dword [esp+0x10], conDrawInputGlob
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_s_s1
	mov dword [esp+0x4], 0x100
	mov eax, g_consoleField
	add eax, 0x18
	mov [esp], eax
	call _Z11Com_sprintfPciPKcz
_Z24Con_CommitToAutoCompletev_140:
	call _Z22Cmd_EndTokenizedStringv
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
	call _Z15SEH_PrintStrlenPKc
	mov [ebx+0x8], eax
	mov eax, [conDrawInputGlob+0x40]
	test eax, eax
	js _Z24Con_CommitToAutoCompletev_110
	cmp byte [conDrawInputGlob], 0x0
	jnz _Z24Con_CommitToAutoCompletev_120
_Z24Con_CommitToAutoCompletev_110:
	xor eax, eax
	test eax, eax
	jz _Z24Con_CommitToAutoCompletev_130
_Z24Con_CommitToAutoCompletev_150:
	mov dword [conDrawInputGlob+0x40], 0xffffffff
	mov byte [conDrawInputGlob], 0x0
	mov eax, 0x1
	add esp, 0x20
	pop ebx
	pop edi
	pop ebp
	ret
_Z24Con_CommitToAutoCompletev_100:
	mov dword [esp+0x4], conDrawInputGlob
	mov eax, g_consoleField
	add eax, 0x18
	mov [esp], eax
	call strcpy
	jmp _Z24Con_CommitToAutoCompletev_140
_Z24Con_CommitToAutoCompletev_120:
	mov eax, 0x1
	test eax, eax
	jnz _Z24Con_CommitToAutoCompletev_150
_Z24Con_CommitToAutoCompletev_130:
	mov al, 0x1
	add esp, 0x20
	pop ebx
	pop edi
	pop ebp
	ret
_Z24Con_CommitToAutoCompletev_50:
	mov ebx, _cstring_null
	jmp _Z24Con_CommitToAutoCompletev_160
	nop


;Con_ShutdownClientAssets()
_Z24Con_ShutdownClientAssetsv:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;Con_DrawGameMessageWindow(int, int, int, int, int, int, Font_s*, float, float*, int, int, msgwnd_mode_t)
_Z25Con_DrawGameMessageWindowiiiiiiP6Font_sfPfii13msgwnd_mode_t:
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
	jz _Z25Con_DrawGameMessageWindowiiiiiiP6Font_sfPfii13msgwnd_mode_t_10
_Z25Con_DrawGameMessageWindowiiiiiiP6Font_sfPfii13msgwnd_mode_t_40:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25Con_DrawGameMessageWindowiiiiiiP6Font_sfPfii13msgwnd_mode_t_10:
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
	jz _Z25Con_DrawGameMessageWindowiiiiiiP6Font_sfPfii13msgwnd_mode_t_20
	mov [esp], esi
	call _Z19CL_ShouldDisplayHudi
	test al, al
	jz _Z25Con_DrawGameMessageWindowiiiiiiP6Font_sfPfii13msgwnd_mode_t_30
_Z25Con_DrawGameMessageWindowiiiiiiP6Font_sfPfii13msgwnd_mode_t_20:
	xor eax, eax
_Z25Con_DrawGameMessageWindowiiiiiiP6Font_sfPfii13msgwnd_mode_t_70:
	test eax, eax
	jnz _Z25Con_DrawGameMessageWindowiiiiiiP6Font_sfPfii13msgwnd_mode_t_40
	cmp edi, 0x2
	jg _Z25Con_DrawGameMessageWindowiiiiiiP6Font_sfPfii13msgwnd_mode_t_50
	cmp edi, 0x1
	jl _Z25Con_DrawGameMessageWindowiiiiiiP6Font_sfPfii13msgwnd_mode_t_60
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
	jmp _Z29Con_DrawMessageWindowNewToOldiP13MessageWindowiiiiihP6Font_sPfifi
_Z25Con_DrawGameMessageWindowiiiiiiP6Font_sfPfii13msgwnd_mode_t_50:
	cmp edi, 0x3
	jnz _Z25Con_DrawGameMessageWindowiiiiiiP6Font_sfPfii13msgwnd_mode_t_40
_Z25Con_DrawGameMessageWindowiiiiiiP6Font_sfPfii13msgwnd_mode_t_80:
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
	jmp _Z29Con_DrawMessageWindowOldToNewiP13MessageWindowiiiiihP6Font_sPfifi
_Z25Con_DrawGameMessageWindowiiiiiiP6Font_sfPfii13msgwnd_mode_t_30:
	mov eax, 0x1
	jmp _Z25Con_DrawGameMessageWindowiiiiiiP6Font_sfPfii13msgwnd_mode_t_70
_Z25Con_DrawGameMessageWindowiiiiiiP6Font_sfPfii13msgwnd_mode_t_60:
	test edi, edi
	jz _Z25Con_DrawGameMessageWindowiiiiiiP6Font_sfPfii13msgwnd_mode_t_80
	jmp _Z25Con_DrawGameMessageWindowiiiiiiP6Font_sfPfii13msgwnd_mode_t_40
	nop


;Con_HasTooManyMatchesToShow()
_Z27Con_HasTooManyMatchesToShowv:
	push ebp
	mov ebp, esp
	mov eax, [conDrawInputGlob+0x44]
	cmp eax, [con_inputMaxMatchesShown]
	setg al
	movzx eax, al
	pop ebp
	ret


;Con_AllowAutoCompleteCycling(unsigned char)
_Z28Con_AllowAutoCompleteCyclingh:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov [conDrawInputGlob+0x51], al
	pop ebp
	ret
	nop
	add [eax], al


;Con_IsValidGameMessageWindow(int)
_Z28Con_IsValidGameMessageWindowi:
	push ebp
	mov ebp, esp
	xor eax, eax
	cmp dword [ebp+0x8], 0x3
	setbe al
	pop ebp
	ret


;Con_IsGameMessageWindowActive(int, int)
_Z29Con_IsGameMessageWindowActiveii:
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
_Z7Con_Topv:
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
_Z8Con_Initv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov dword [esp+0xc], _cstring_restrict_console
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_monkeytoy
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [con_restricted], eax
	mov dword [esp+0xc], _cstring_only_match_the_p
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_con_matchprefixo
	call _Z17Dvar_RegisterBoolPKchtS0_
	mov [con_matchPrefixOnly], eax
	mov ebx, g_consoleField
	mov [esp], ebx
	call _Z11Field_ClearP7field_t
	mov eax, [g_console_field_width]
	mov [ebx+0xc], eax
	mov eax, [g_console_char_height]
	mov [ebx+0x10], eax
	mov dword [ebx+0x14], 0x1
	xor esi, esi
	mov ebx, historyEditLines
	mov ecx, ebx
	jmp _Z8Con_Initv_10
_Z8Con_Initv_20:
	mov ecx, historyEditLines
_Z8Con_Initv_10:
	lea edx, [esi+esi*4]
	lea eax, [edx*8]
	sub eax, edx
	lea eax, [ecx+eax*8]
	mov [esp], eax
	call _Z11Field_ClearP7field_t
	mov eax, [g_console_field_width]
	mov [ebx+0xc], eax
	mov eax, [g_console_char_height]
	mov [ebx+0x10], eax
	mov dword [ebx+0x14], 0x1
	add esi, 0x1
	add ebx, 0x118
	cmp esi, 0x20
	jnz _Z8Con_Initv_20
	mov dword [conDrawInputGlob+0x40], 0xffffffff
	mov dword [esp+0x8], _ZZ8Con_InitvE24Con_ChatModePublic_f_VAR
	mov dword [esp+0x4], _Z20Con_ChatModePublic_fv
	mov dword [esp], _cstring_chatmodepublic
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ8Con_InitvE22Con_ChatModeTeam_f_VAR
	mov dword [esp+0x4], _Z18Con_ChatModeTeam_fv
	mov dword [esp], _cstring_chatmodeteam
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	mov dword [esp+0x8], _ZZ8Con_InitvE15Con_Clear_f_VAR
	mov dword [esp+0x4], _Z11Con_Clear_fv
	mov dword [esp], _cstring_clear
	call _Z22Cmd_AddCommandInternalPKcPFvvEP14cmd_function_s
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;Con_Close(int)
_Z9Con_Closei:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, clientUIActives
	cmp byte [eax+0x1], 0x0
	jnz _Z9Con_Closei_10
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z9Con_Closei_10:
	mov eax, g_consoleField
	mov [esp], eax
	call _Z11Field_ClearP7field_t
	mov eax, [conDrawInputGlob+0x40]
	test eax, eax
	js _Z9Con_Closei_20
	cmp byte [conDrawInputGlob], 0x0
	jnz _Z9Con_Closei_30
_Z9Con_Closei_20:
	xor eax, eax
_Z9Con_Closei_60:
	test eax, eax
	jz _Z9Con_Closei_40
	mov dword [conDrawInputGlob+0x40], 0xffffffff
	mov byte [conDrawInputGlob], 0x0
_Z9Con_Closei_40:
	xor ecx, ecx
	lea eax, [ebx+ebx*8]
	shl eax, 0x5
	add eax, ebx
	lea eax, [ebx+eax*4]
	lea eax, [ebx+eax*2]
	lea edx, [eax*8]
	lea eax, [edx+con+0x12264]
_Z9Con_Closei_50:
	mov dword [eax+0x24], 0x0
	mov dword [eax+0x30], 0x0
	mov dword [eax+0x28], 0x0
	mov dword [eax+0x2c], 0x0
	add ecx, 0x1
	add eax, 0x34
	cmp ecx, 0x4
	jnz _Z9Con_Closei_50
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
_Z9Con_Closei_30:
	mov eax, 0x1
	jmp _Z9Con_Closei_60


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

