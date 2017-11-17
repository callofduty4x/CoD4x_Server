;Imports of ui_main_mp:
	extern FS_FOpenFileByMode
	extern FS_Read
	extern FS_FCloseFile
	extern Com_PrintError
	extern DB_FindXAssetHeader
	extern CL_GetClientState
	extern CL_GetConfigString
	extern Info_ValueForKey
	extern atoi
	extern memset
	extern CL_GetClientName
	extern Q_strncpyz
	extern Q_CleanStr
	extern LAN_CompareServers
	extern Q_stricmp
	extern Menu_SetFeederSelection
	extern Cvar_VariableIntegerValue
	extern SEH_VerifyLanguageSelection
	extern Cvar_SetIntByName
	extern Cvar_SetBoolByName
	extern LAN_AddServer
	extern va
	extern Com_Printf
	extern Cvar_SetStringByName
	extern String_Parse
	extern Com_sprintf
	extern Com_Parse
	extern String_Alloc
	extern useFastFile
	extern FS_GetFileList
	extern Com_RealTime
	extern snprintf
	extern LAN_ResetPings
	extern LAN_GetServerCount
	extern LAN_MarkServerDirty
	extern Cvar_GetVariantString
	extern CL_ControllerIndexFromClientNum
	extern Cmd_ExecuteSingleCommand
	extern Cvar_VariableString
	extern LAN_WaitServerResponse
	extern qsort
	extern strcpy
	extern LAN_ServerIsDirty
	extern LAN_GetServerPing
	extern LAN_GetServerInfo
	extern Q_stricmpn
	extern LAN_ServerInfoValid
	extern LAN_GetServerStatus
	extern strchr
	extern __toupper
	extern LAN_GetServerAddressString
	extern legacyHacks
	extern colorBlack
	extern scrPlaceFull
	extern UI_FillRect
	extern colorGreen
	extern colorLtGrey
	extern R_NormalizedTextScale
	extern R_TextWidth
	extern Menu_Count
	extern Menu_PaintAll
	extern LAN_UpdateDirtyPings
	extern CL_AllLocalClientsDisconnected
	extern Menu_GetFocused
	extern clientUIActives
	extern scrPlaceView
	extern getBuildNumberAsInt
	extern colorMdGrey
	extern Cvar_VariableBooleanValue
	extern UI_DrawHandlePic
	extern Key_IsCatcherActive
	extern Key_RemoveCatcher
	extern Menus_CloseAll
	extern CL_DrawStretchPic
	extern ScrPlace_ApplyRect
	extern floorf
	extern CL_DrawTextPhysical
	extern Menus_AnyFullScreenVisible
	extern Menu_HandleKey
	extern Key_ClearStates
	extern UILocalVar_Shutdown
	extern Menus_FreeAllMemory
	extern LAN_SaveServersToCache
	extern CL_IsCgameInitialized
	extern sin
	extern LerpColor
	extern strstr
	extern cls
	extern sprintf
	extern CG_OwnerDraw
	extern SEH_LocalizeTextMessage
	extern Display_KeyBindPending
	extern sv_voice
	extern cl_voice
	extern IN_IsTalkKeyHeld
	extern Material_RegisterHandle
	extern CL_IsClientLocal
	extern CL_IsPlayerTalking
	extern Com_PrintWarning
	extern Cvar_SetInt
	extern Cvar_SetString
	extern R_TextHeight
	extern CL_ShowSystemCursor
	extern Display_MouseMove
	extern Cmd_ArgsBuffer
	extern Menus_CloseByName
	extern Q_strncat
	extern UI_LoadMenu
	extern UI_AddMenuList
	extern g_editingField
	extern Cvar_SetFromStringByNameFromSource
	extern Cbuf_AddText
	extern CLUI_GetCDKey
	extern UI_LoadArenas
	extern CL_CDKeyValidate
	extern CLUI_SetCDKey
	extern Menus_OpenByName
	extern Com_Error
	extern FS_ListFiles
	extern FS_FreeFileList
	extern com_playerProfile
	extern Com_NewPlayerProfile
	extern Com_DeletePlayerProfile
	extern Com_ChangePlayerProfile
	extern DB_SyncXAssets
	extern Cvar_FindVar
	extern Cvar_Reset
	extern LAN_GetServerPunkBuster
	extern Key_SetCatcher
	extern Int_Parse
	extern LAN_RemoveServer
	extern CLUI_SetPbClStatus
	extern Cvar_SetFloatByName
	extern CL_MutePlayer
	extern Com_SetRecommended
	extern CG_ScriptMainMenu
	extern SND_FadeAllSounds
	extern CL_SetDisplayHUDWithKeycatchUI
	extern CL_IsPlayerMuted
	extern Voice_GetVoiceLevel
	extern colorWhite
	extern Item_GetListBoxDef
	extern UI_LoadMenus
	extern UI_SetSystemCursorPos
	extern Menus_MenuIsInStack
	extern Window_SetDynamicFlags
	extern Menu_Paint
	extern Menus_FindByName
	extern Menus_Open
	extern R_AddCmdDrawTextSubtitle
	extern CL_DrawTextPhysicalWithEffects
	extern DB_GetLoadedFraction
	extern fs_gameDirVar
	extern CG_DrawInformation
	extern colorYellow
	extern Sys_Milliseconds
	extern R_AddCmdDrawQuadPic
	extern Item_ListBox_MaxScroll
	extern CL_DrawTextPhysicalWithCursor
	extern SEH_StringEd_GetString
	extern loc_warnings
	extern loc_warningsAsErrors
	extern Menu_IsVisible
	extern r_reflectionProbeGenerate
	extern cmd_args
	extern StringTable_GetAsset
	extern ms_srand
	extern ms_rand
	extern StringTable_GetColumnValueForRow
	extern Cvar_RegisterString
	extern Cvar_RegisterBool
	extern Cvar_RegisterInt
	extern Cvar_RegisterFloat
	extern Cvar_RegisterVec2
	extern Cvar_RegisterVec4
	extern String_Init
	extern Menu_Setup
	extern CL_GetScreenDimensions
	extern CL_RegisterFont
	extern LAN_LoadCachedServers
	extern Cvar_GetFloat
	extern UI_MapLoadInfo
	extern UI_LoadSoundAliases
	extern DB_ResetZoneSize
	extern CL_AllowPopup
	extern DB_FileExists

;Exports of ui_main_mp:
	global g_mapname
	global g_ingameMenusLoaded
	global serverFilters
	global ui_serverFilterType
	global MonthAbbrev
	global netSources
	global g_showLoadingScreenMenu
	global menuBuf2
	global GetMenuBuffer_LoadObj
	global GetMenuBuffer_FastFile
	global UI_BuildPlayerList
	global UI_ServersQsortCompare
	global UI_PlayerProfilesQsortCompare
	global UI_SelectCurrentMap
	global UI_VerifyLanguage
	global _ZZ22UI_SafeTranslateStringPKcE11errorString
	global UI_AddServerToFavoritesList
	global UI_GetOpenOrCloseMenuOnDvarArgs
	global UI_ReadableSize
	global _ZZ18UI_FeederSelectionifiE4info
	global UI_GetGameTypesList_FastFile
	global UI_GetGameTypesList_LoadObj
	global _ZZ11UI_KeyEventiiiE14bypassKeyClear
	global UI_StartServerRefresh
	global _ZZ25UI_BuildServerDisplayListP8uiInfo_siE8numclean
	global UI_BuildServerDisplayList
	global UI_GetServerStatusInfo
	global _ZZ17UI_FeederItemTextiP9itemDef_sfiiPP8MaterialE8lastTime
	global _ZZ17UI_FeederItemTextiP9itemDef_sfiiPP8MaterialE10lastColumn
	global _ZZ17UI_FeederItemTextiP9itemDef_sfiiPP8MaterialE10clientBuff
	global _ZZ17UI_FeederItemTextiP9itemDef_sfiiPP8MaterialE4info
	global _ZZ22UI_BuildFindPlayerListvE11numTimeOuts
	global _ZZ22UI_BuildFindPlayerListvE8numFound
	global UI_BuildFindPlayerList
	global UI_BuildServerStatus
	global _ZZ22UI_DisplayDownloadInfoPKcffP6Font_sfE8tleIndex
	global _ZZ22UI_DisplayDownloadInfoPKcffP6Font_sfE12tleEstimates
	global _ZZ22UI_DisplayDownloadInfoPKcffP6Font_sfE8xferText
	global _ZZ22UI_DisplayDownloadInfoPKcffP6Font_sfE7etaText
	global _ZZ22UI_DisplayDownloadInfoPKcffP6Font_sfE6dlText
	global UI_DisplayDownloadInfo
	global UI_Refresh
	global UI_CloseAll
	global UI_DrawRect
	global UI_DrawText
	global UI_KeyEvent
	global UI_Shutdown
	global UI_DrawSides
	global UI_OwnerDraw
	global UI_TextWidth
	global UI_MouseEvent
	global UI_TextHeight
	global UI_UpdateTime
	global UI_CloseMenu_f
	global UI_FeederCount
	global Load_ScriptMenu
	global UI_CheckExecKey
	global UI_IsFullscreen
	global UI_CloseAllMenus
	global UI_DrawTopBottom
	global UI_GetActiveMenu
	global UI_GetBlurRadius
	global UI_GetFontHandle
	global UI_RunMenuScript
	global UI_SetActiveMenu
	global UI_AnyMenuVisible
	global UI_DrawTextNoSnap
	global UI_FeederItemText
	global UI_OwnerDrawWidth
	global UI_CloseInGameMenu
	global UI_DrawRecordLevel
	global UI_FeederItemColor
	global UI_FeederItemImage
	global UI_FeederSelection
	global UI_LoadIngameMenus
	global UI_PopupScriptMenu
	global UI_CloseFocusedMenu
	global UI_DrawMapLevelshot
	global UI_DrawTextWithGlow
	global UI_OwnerDrawVisible
	global UI_DrawConnectScreen
	global UI_DrawHighlightRect
	global UI_FeederItemEnabled
	global UI_GetMapDisplayName
	global UI_OverrideCursorPos
	global UI_DrawTextWithCursor
	global UI_GetTalkerClientNum
	global UI_OwnerDrawHandleKey
	global UI_ReplaceConversions
	global UI_GetLocalVarsContext
	global UI_SafeTranslateString
	global UI_ShouldDrawCrosshair
	global UI_ClosePopupScriptMenu
	global UI_GetTopActiveMenuName
	global Menu_IsMenuOpenAndVisible
	global UI_GetGameTypeDisplayName
	global UI_AllowScriptMenuResponse
	global UI_ReplaceConversionString
	global CL_SelectStringTableEntryInDvar_f
	global UI_FilterStringForButtonAnimation
	global UI_GetMapDisplayNameFromPartialLoadNameMatch
	global UI_Init
	global UI_Pause
	global UI_Popup
	global UI_SetMap
	global ui_showEndOfGame
	global vehDriverViewHeightMax
	global vehDriverViewHeightMin
	global sharedUiInfo
	global uiscript_debug
	global ui_borderLowLightScale
	global ui_showList
	global ui_showMenuOnly
	global serverStatusDvars
	global uiInfoArray
	global ui_allow_classchange
	global ui_allow_teamchange
	global ui_bigFont
	global ui_browserFriendlyfire
	global ui_browserHardcore
	global ui_browserKillcam
	global ui_browserMod
	global ui_browserOldSchool
	global ui_browserShowDedicated
	global ui_browserShowEmpty
	global ui_browserShowFull
	global ui_browserShowPassword
	global ui_browserShowPunkBuster
	global ui_browserShowPure
	global ui_buildLocation
	global ui_buildSize
	global ui_cinematicsTimestamp
	global ui_connectScreenTextGlowColor
	global ui_currentMap
	global ui_currentNetMap
	global ui_customClassName
	global ui_customModeEditName
	global ui_customModeName
	global ui_dedicated
	global ui_drawCrosshair
	global ui_extraBigFont
	global ui_gametype
	global ui_hud_hardcore
	global ui_joinGameType
	global ui_netGameType
	global ui_netGameTypeName
	global ui_netSource
	global ui_playerProfileCount
	global ui_playerProfileNameNew
	global ui_playerProfileSelected
	global ui_serverStatusTimeOut
	global ui_smallFont
	global ui_uav_allies
	global ui_uav_axis
	global ui_uav_client


SECTION .text


;GetMenuBuffer_LoadObj(char const*)
GetMenuBuffer_LoadObj:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x30
	mov esi, [ebp+0x8]
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0xc]
	mov [esp+0x4], eax
	mov [esp], esi
	call FS_FOpenFileByMode
	mov ebx, eax
	mov eax, [ebp-0xc]
	test eax, eax
	jz GetMenuBuffer_LoadObj_10
	cmp ebx, 0x7fff
	jg GetMenuBuffer_LoadObj_20
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov dword [esp], menuBuf2
	call FS_Read
	mov byte [ebx+menuBuf2], 0x0
	mov eax, [ebp-0xc]
	mov [esp], eax
	call FS_FCloseFile
	mov eax, menuBuf2
GetMenuBuffer_LoadObj_30:
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
GetMenuBuffer_LoadObj_20:
	mov dword [esp+0x10], 0x8000
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_menu_file_too_la
	mov dword [esp], 0xd
	call Com_PrintError
	mov eax, [ebp-0xc]
	mov [esp], eax
	call FS_FCloseFile
	xor eax, eax
	jmp GetMenuBuffer_LoadObj_30
GetMenuBuffer_LoadObj_10:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_menu_file_not_fo
	mov dword [esp], 0xd
	call Com_PrintError
	xor eax, eax
	jmp GetMenuBuffer_LoadObj_30


;GetMenuBuffer_FastFile(char const*)
GetMenuBuffer_FastFile:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov [esp+0x4], ebx
	mov dword [esp], 0x1f
	call DB_FindXAssetHeader
	test eax, eax
	jz GetMenuBuffer_FastFile_10
	mov eax, [eax+0x8]
GetMenuBuffer_FastFile_20:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
GetMenuBuffer_FastFile_10:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_menu_file_not_fo
	mov dword [esp], 0xd
	call Com_PrintError
	xor eax, eax
	jmp GetMenuBuffer_FastFile_20
	nop


;UI_BuildPlayerList(int)
UI_BuildPlayerList:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x84c
	mov esi, eax
	lea eax, [ebp-0x848]
	mov [esp+0x4], eax
	mov [esp], esi
	call CL_GetClientState
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call CL_GetConfigString
	mov dword [esp+0x4], _cstring_sv_maxclients
	mov [esp], eax
	call Info_ValueForKey
	mov [esp], eax
	call atoi
	mov edi, eax
	mov dword [esp+0x8], 0x100
	mov dword [esp+0x4], 0xffffffff
	mov dword [esp], sharedUiInfo+0x104c
	call memset
	mov dword [sharedUiInfo+0x48], 0x0
	test edi, edi
	jg UI_BuildPlayerList_10
UI_BuildPlayerList_30:
	add esp, 0x84c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
UI_BuildPlayerList_10:
	xor ebx, ebx
	jmp UI_BuildPlayerList_20
UI_BuildPlayerList_40:
	add ebx, 0x1
	cmp edi, ebx
	jz UI_BuildPlayerList_30
UI_BuildPlayerList_20:
	mov dword [esp+0xc], 0x26
	lea eax, [ebp-0x3e]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], esi
	call CL_GetClientName
	test eax, eax
	jz UI_BuildPlayerList_40
	mov eax, [sharedUiInfo+0x48]
	mov [eax*4+sharedUiInfo+0x104c], ebx
	mov dword [esp+0x8], 0x20
	lea edx, [ebp-0x3e]
	mov [esp+0x4], edx
	shl eax, 0x5
	add eax, sharedUiInfo+0x4c
	mov [esp], eax
	call Q_strncpyz
	mov eax, [sharedUiInfo+0x48]
	shl eax, 0x5
	add eax, sharedUiInfo+0x4c
	mov [esp], eax
	call Q_CleanStr
	add dword [sharedUiInfo+0x48], 0x1
	jmp UI_BuildPlayerList_40


;UI_ServersQsortCompare(void const*, void const*)
UI_ServersQsortCompare:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov eax, [ebp+0xc]
	mov eax, [eax]
	mov [esp+0x10], eax
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov [esp+0xc], eax
	mov eax, [sharedUiInfo+0x72e8]
	mov [esp+0x8], eax
	mov eax, [sharedUiInfo+0x72e4]
	mov [esp+0x4], eax
	mov eax, [ui_netSource]
	mov eax, [eax+0xc]
	mov [esp], eax
	call LAN_CompareServers
	leave
	ret


;UI_PlayerProfilesQsortCompare(void const*, void const*)
UI_PlayerProfilesQsortCompare:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov edx, [eax]
	mov eax, [ebp+0xc]
	mov eax, [eax]
	cmp edx, eax
	jz UI_PlayerProfilesQsortCompare_10
	mov eax, [eax*4+uiInfoArray+0x1688]
	mov [esp+0x4], eax
	mov eax, [edx*4+uiInfoArray+0x1688]
	mov [esp], eax
	call Q_stricmp
	mov edx, eax
	neg eax
	mov ecx, [uiInfoArray+0x1788]
	test ecx, ecx
	cmovz edx, eax
	mov eax, edx
	leave
	ret
UI_PlayerProfilesQsortCompare_10:
	xor edx, edx
	mov eax, edx
	leave
	ret
	nop


;UI_SelectCurrentMap(int)
UI_SelectCurrentMap:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x87c
	mov ebx, eax
	lea eax, [ebp-0x860]
	mov [esp+0x4], eax
	mov [esp], ebx
	call CL_GetClientState
	cmp dword [ebp-0x860], 0x9
	jz UI_SelectCurrentMap_10
UI_SelectCurrentMap_20:
	add esp, 0x87c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
UI_SelectCurrentMap_10:
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call CL_GetConfigString
	cmp byte [eax], 0x0
	jz UI_SelectCurrentMap_20
	mov dword [esp+0x4], _cstring_mapname
	mov [esp], eax
	call Info_ValueForKey
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], eax
	lea eax, [ebp-0x58]
	mov [esp], eax
	call Q_strncpyz
	mov eax, [sharedUiInfo+0x1c58]
	test eax, eax
	jle UI_SelectCurrentMap_20
	xor esi, esi
	xor edi, edi
	mov ebx, sharedUiInfo
	jmp UI_SelectCurrentMap_30
UI_SelectCurrentMap_40:
	add esi, 0x1
	add ebx, 0xa0
	cmp esi, [sharedUiInfo+0x1c58]
	jge UI_SelectCurrentMap_20
UI_SelectCurrentMap_30:
	mov eax, [ebx+0x1cf8]
	test eax, eax
	jz UI_SelectCurrentMap_40
	mov eax, [ebx+0x1c5c]
	mov [esp+0x4], eax
	lea eax, [ebp-0x58]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz UI_SelectCurrentMap_50
	add edi, 0x1
	jmp UI_SelectCurrentMap_40
UI_SelectCurrentMap_50:
	mov dword [esp+0x10], _cstring_createserver_map
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], 0x0
	mov dword [esp], uiInfoArray
	call Menu_SetFeederSelection
	jmp UI_SelectCurrentMap_20


;UI_VerifyLanguage()
UI_VerifyLanguage:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov dword [esp], _cstring_loc_language
	call Cvar_VariableIntegerValue
	mov esi, eax
	mov dword [esp], _cstring_ui_language
	call Cvar_VariableIntegerValue
	mov ebx, eax
	mov [esp], eax
	call SEH_VerifyLanguageSelection
	cmp ebx, eax
	jz UI_VerifyLanguage_10
	mov [esp+0x4], eax
	mov dword [esp], _cstring_ui_language
	call Cvar_SetIntByName
UI_VerifyLanguage_10:
	cmp esi, ebx
	jz UI_VerifyLanguage_20
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_ui_languagechang
	call Cvar_SetBoolByName
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
UI_VerifyLanguage_20:
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_ui_languagechang
	call Cvar_SetBoolByName
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;UI_AddServerToFavoritesList(char const*, char const*)
UI_AddServerToFavoritesList:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, edx
	cmp byte [eax], 0x0
	jz UI_AddServerToFavoritesList_10
	cmp byte [edx], 0x0
	jz UI_AddServerToFavoritesList_20
	mov [esp+0x8], edx
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call LAN_AddServer
	test eax, eax
	jz UI_AddServerToFavoritesList_30
	cmp eax, 0xffffffff
	jz UI_AddServerToFavoritesList_40
	cmp eax, 0xfffffffe
	jz UI_AddServerToFavoritesList_50
	mov dword [esp], _cstring_exe_favoriteadde
	call UI_SafeTranslateString
	mov [esp+0x4], eax
	mov dword [esp], _cstring_s
	call va
	mov [esp+0x8], ebx
	mov [esp+0x4], eax
	mov dword [esp], 0xd
	call Com_Printf
	mov dword [esp+0x4], _cstring_exe_favoriteadde1
	mov dword [esp], _cstring_ui_favorite_mess
	call Cvar_SetStringByName
	add esp, 0x14
	pop ebx
	pop ebp
	ret
UI_AddServerToFavoritesList_20:
	mov dword [esp], _cstring_exe_favoriteaddr
	call UI_SafeTranslateString
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0xd
	call Com_Printf
	mov dword [esp+0x4], _cstring_exe_favoriteaddr1
	mov dword [esp], _cstring_ui_favorite_mess
	call Cvar_SetStringByName
UI_AddServerToFavoritesList_60:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
UI_AddServerToFavoritesList_10:
	mov dword [esp], _cstring_exe_favoritename
	call UI_SafeTranslateString
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0xd
	call Com_Printf
	mov dword [esp+0x4], _cstring_exe_favoritename1
	mov dword [esp], _cstring_ui_favorite_mess
	call Cvar_SetStringByName
	add esp, 0x14
	pop ebx
	pop ebp
	ret
UI_AddServerToFavoritesList_50:
	mov dword [esp], _cstring_exe_badserveradd
	call UI_SafeTranslateString
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0xd
	call Com_Printf
	mov dword [esp+0x4], _cstring_exe_badserveradd1
	mov dword [esp], _cstring_ui_favorite_mess
	call Cvar_SetStringByName
	jmp UI_AddServerToFavoritesList_60
UI_AddServerToFavoritesList_30:
	mov dword [esp], _cstring_exe_favoriteinli
	call UI_SafeTranslateString
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0xd
	call Com_Printf
	mov dword [esp+0x4], _cstring_exe_favoriteinli1
	mov dword [esp], _cstring_ui_favorite_mess
	call Cvar_SetStringByName
	add esp, 0x14
	pop ebx
	pop ebp
	ret
UI_AddServerToFavoritesList_40:
	mov dword [esp], _cstring_exe_favoritelist
	call UI_SafeTranslateString
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s
	mov dword [esp], 0xd
	call Com_Printf
	mov dword [esp+0x4], _cstring_exe_favoritelist1
	mov dword [esp], _cstring_ui_favorite_mess
	call Cvar_SetStringByName
	jmp UI_AddServerToFavoritesList_60


;UI_GetOpenOrCloseMenuOnDvarArgs(char const**, char const*, char*, int, char*, int, char*, int)
UI_GetOpenOrCloseMenuOnDvarArgs:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, eax
	mov esi, edx
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov [esp], ebx
	call String_Parse
	test eax, eax
	jnz UI_GetOpenOrCloseMenuOnDvarArgs_10
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_s_invalid_dvar_n
	mov dword [esp], 0xd
	call Com_Printf
	xor eax, eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
UI_GetOpenOrCloseMenuOnDvarArgs_10:
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call String_Parse
	test eax, eax
	jz UI_GetOpenOrCloseMenuOnDvarArgs_20
	mov eax, [ebp+0x18]
	mov [esp+0x8], eax
	mov eax, [ebp+0x14]
	mov [esp+0x4], eax
	mov [esp], ebx
	call String_Parse
	test eax, eax
	jz UI_GetOpenOrCloseMenuOnDvarArgs_30
	mov eax, 0x1
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
UI_GetOpenOrCloseMenuOnDvarArgs_20:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_s_invalid_test_v
	mov dword [esp], 0xd
	call Com_Printf
	xor eax, eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
UI_GetOpenOrCloseMenuOnDvarArgs_30:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_s_invalid_menu_n
	mov dword [esp], 0xd
	call Com_Printf
	xor eax, eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;UI_ReadableSize(char*, int, int)
UI_ReadableSize:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov [ebp-0x1c], eax
	mov esi, edx
	mov ebx, ecx
	cmp ecx, 0x40000000
	jg UI_ReadableSize_10
	cmp ecx, 0x100000
	jg UI_ReadableSize_20
	cmp ecx, 0x400
	jle UI_ReadableSize_30
	mov dword [esp], _cstring_exe_kilobyte
	call UI_SafeTranslateString
	mov [esp+0x10], eax
	sar ebx, 0xa
UI_ReadableSize_70:
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_d_s
	mov [esp+0x4], esi
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call Com_sprintf
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
UI_ReadableSize_20:
	mov eax, ecx
	sar eax, 0x14
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_d
	mov [esp+0x4], edx
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call Com_sprintf
	mov dword [esp], _cstring_exe_megabyte
	call UI_SafeTranslateString
	mov [esp+0x10], eax
	cld
	mov ecx, 0xffffffff
	xor edx, edx
	mov edi, [ebp-0x1c]
	mov eax, edx
	repne scasb
	not ecx
	lea edx, [ecx-0x1]
	and ebx, 0xfffff
	lea eax, [ebx+ebx*4]
	lea eax, [eax+eax*4]
	shl eax, 0x2
	js UI_ReadableSize_40
UI_ReadableSize_80:
	sar eax, 0x14
UI_ReadableSize_60:
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_02d_s
	sub esi, edx
	mov [esp+0x4], esi
	mov eax, [ebp-0x1c]
	add eax, edx
	mov [esp], eax
	call Com_sprintf
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
UI_ReadableSize_10:
	mov eax, ecx
	sar eax, 0x1e
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_d
	mov [esp+0x4], edx
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call Com_sprintf
	mov dword [esp], _cstring_exe_gigabyte
	call UI_SafeTranslateString
	mov [esp+0x10], eax
	cld
	mov ecx, 0xffffffff
	xor edx, edx
	mov edi, [ebp-0x1c]
	mov eax, edx
	repne scasb
	not ecx
	lea edx, [ecx-0x1]
	and ebx, 0x3fffffff
	lea eax, [ebx+ebx*4]
	lea eax, [eax+eax*4]
	shl eax, 0x2
	js UI_ReadableSize_50
	sar eax, 0x1e
	jmp UI_ReadableSize_60
UI_ReadableSize_30:
	mov dword [esp], _cstring_exe_bytes
	call UI_SafeTranslateString
	mov [esp+0x10], eax
	jmp UI_ReadableSize_70
UI_ReadableSize_50:
	add eax, 0x3fffffff
	sar eax, 0x1e
	jmp UI_ReadableSize_60
UI_ReadableSize_40:
	add eax, 0xfffff
	jmp UI_ReadableSize_80


;UI_GetGameTypesList_FastFile()
UI_GetGameTypesList_FastFile:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov dword [esp+0x4], _cstring_mapsmpgametypes_
	mov dword [esp], 0x1f
	call DB_FindXAssetHeader
	test eax, eax
	jz UI_GetGameTypesList_FastFile_10
	mov eax, [eax+0x8]
	mov [ebp-0x20], eax
	jmp UI_GetGameTypesList_FastFile_20
UI_GetGameTypesList_FastFile_40:
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call Com_Parse
	mov ebx, [sharedUiInfo+0x114c]
	mov [esp], eax
	call String_Alloc
	mov [ebx*8+sharedUiInfo+0x1154], eax
	mov eax, [sharedUiInfo+0x114c]
	mov edx, [eax*8+sharedUiInfo+0x1154]
	mov eax, [sharedUiInfo+0x1b54]
	mov [edi+eax*8+0xc], edx
UI_GetGameTypesList_FastFile_50:
	add dword [sharedUiInfo+0x114c], 0x1
	add dword [sharedUiInfo+0x1b54], 0x1
UI_GetGameTypesList_FastFile_20:
	lea eax, [ebp-0x20]
	mov [esp], eax
	call Com_Parse
	mov esi, eax
	mov eax, [ebp-0x20]
	test eax, eax
	jz UI_GetGameTypesList_FastFile_10
	mov ebx, [sharedUiInfo+0x114c]
	cmp ebx, 0x20
	jz UI_GetGameTypesList_FastFile_30
	cmp dword [sharedUiInfo+0x1b54], 0x20
	jz UI_GetGameTypesList_FastFile_30
	mov [esp], esi
	call String_Alloc
	mov [ebx*8+sharedUiInfo+0x1150], eax
	mov edi, sharedUiInfo+0x1b50
	mov eax, [sharedUiInfo+0x114c]
	mov edx, [eax*8+sharedUiInfo+0x1150]
	mov eax, [sharedUiInfo+0x1b54]
	mov [edi+eax*8+0x8], edx
	mov [esp+0x4], esi
	mov dword [esp], _cstring_mapsmpgametypess
	call va
	mov edx, useFastFile
	mov edx, [edx]
	mov ecx, GetMenuBuffer_FastFile
	cmp byte [edx+0xc], 0x0
	mov edx, GetMenuBuffer_LoadObj
	cmovz ecx, edx
	mov [esp], eax
	call ecx
	mov [ebp-0x1c], eax
	test eax, eax
	jnz UI_GetGameTypesList_FastFile_40
	mov edx, [sharedUiInfo+0x114c]
	mov eax, [edx*8+sharedUiInfo+0x1150]
	mov [edx*8+sharedUiInfo+0x1154], eax
	mov eax, [sharedUiInfo+0x114c]
	mov edx, [eax*8+sharedUiInfo+0x1154]
	mov eax, [sharedUiInfo+0x1b54]
	mov [edi+eax*8+0xc], edx
	jmp UI_GetGameTypesList_FastFile_50
UI_GetGameTypesList_FastFile_30:
	mov dword [esp+0x8], 0x1f
	mov dword [esp+0x4], _cstring_too_many_game_ty
	mov dword [esp], 0xd
	call Com_Printf
UI_GetGameTypesList_FastFile_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;UI_GetGameTypesList_LoadObj()
UI_GetGameTypesList_LoadObj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x104c
	mov dword [esp+0x10], 0x1000
	lea edi, [ebp-0x101c]
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_gsc
	mov dword [esp], _cstring_mapsmpgametypes
	call FS_GetFileList
	mov [ebp-0x1030], eax
	test eax, eax
	jg UI_GetGameTypesList_LoadObj_10
UI_GetGameTypesList_LoadObj_30:
	add esp, 0x104c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
UI_GetGameTypesList_LoadObj_10:
	mov esi, edi
	mov dword [ebp-0x102c], 0x0
	jmp UI_GetGameTypesList_LoadObj_20
UI_GetGameTypesList_LoadObj_40:
	lea esi, [esi+ebx+0x1]
UI_GetGameTypesList_LoadObj_80:
	add dword [ebp-0x102c], 0x1
	mov eax, [ebp-0x102c]
	cmp [ebp-0x1030], eax
	jz UI_GetGameTypesList_LoadObj_30
UI_GetGameTypesList_LoadObj_20:
	cld
	xor eax, eax
	mov ecx, 0xffffffff
	mov edi, esi
	repne scasb
	not ecx
	lea ebx, [ecx-0x1]
	cmp byte [esi], 0x5f
	jz UI_GetGameTypesList_LoadObj_40
	mov dword [esp+0x4], _cstring_gsc1
	lea eax, [esi+ebx]
	mov [ebp-0x1034], eax
	sub eax, 0x4
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz UI_GetGameTypesList_LoadObj_50
	mov byte [esi+ebx-0x4], 0x0
UI_GetGameTypesList_LoadObj_50:
	mov ebx, [sharedUiInfo+0x114c]
	cmp ebx, 0x20
	jz UI_GetGameTypesList_LoadObj_60
	cmp dword [sharedUiInfo+0x1b54], 0x20
	jz UI_GetGameTypesList_LoadObj_60
	mov [esp], esi
	call String_Alloc
	mov [ebx*8+sharedUiInfo+0x1150], eax
	mov edi, sharedUiInfo+0x1b50
	mov eax, [sharedUiInfo+0x114c]
	mov edx, [eax*8+sharedUiInfo+0x1150]
	mov eax, [sharedUiInfo+0x1b54]
	mov [edi+eax*8+0x8], edx
	mov [esp+0x4], esi
	mov dword [esp], _cstring_mapsmpgametypess
	call va
	mov edx, useFastFile
	mov edx, [edx]
	mov ecx, GetMenuBuffer_FastFile
	cmp byte [edx+0xc], 0x0
	mov edx, GetMenuBuffer_LoadObj
	cmovz ecx, edx
	mov [esp], eax
	call ecx
	mov [ebp-0x1c], eax
	test eax, eax
	jz UI_GetGameTypesList_LoadObj_70
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call Com_Parse
	mov ebx, [sharedUiInfo+0x114c]
	mov [esp], eax
	call String_Alloc
	mov [ebx*8+sharedUiInfo+0x1154], eax
	mov eax, [sharedUiInfo+0x114c]
	mov edx, [eax*8+sharedUiInfo+0x1154]
	mov eax, [sharedUiInfo+0x1b54]
	mov [edi+eax*8+0xc], edx
UI_GetGameTypesList_LoadObj_90:
	add dword [sharedUiInfo+0x114c], 0x1
	add dword [sharedUiInfo+0x1b54], 0x1
	mov esi, [ebp-0x1034]
	add esi, 0x1
	jmp UI_GetGameTypesList_LoadObj_80
UI_GetGameTypesList_LoadObj_70:
	mov edx, [sharedUiInfo+0x114c]
	mov eax, [edx*8+sharedUiInfo+0x1150]
	mov [edx*8+sharedUiInfo+0x1154], eax
	mov eax, [sharedUiInfo+0x114c]
	mov edx, [eax*8+sharedUiInfo+0x1154]
	mov eax, [sharedUiInfo+0x1b54]
	mov [edi+eax*8+0xc], edx
	jmp UI_GetGameTypesList_LoadObj_90
UI_GetGameTypesList_LoadObj_60:
	mov dword [esp+0x8], 0x1f
	mov dword [esp+0x4], _cstring_too_many_game_ty
	mov dword [esp], 0xd
	call Com_Printf
	jmp UI_GetGameTypesList_LoadObj_30


;UI_StartServerRefresh(int, int)
UI_StartServerRefresh:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov [ebp-0x60], eax
	mov [ebp-0x64], edx
	lea eax, [ebp-0x54]
	mov [esp], eax
	call Com_RealTime
	mov eax, [ui_netSource]
	mov eax, [eax+0xc]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_ui_lastserverref
	mov dword [esp+0x4], 0x18
	lea eax, [ebp-0x30]
	mov [esp], eax
	call snprintf
	mov ebx, [ebp-0x50]
	mov esi, [ebp-0x4c]
	mov edi, [ebp-0x40]
	add edi, 0x76c
	mov edx, [ebp-0x48]
	mov [ebp-0x5c], edx
	mov eax, [ebp-0x44]
	mov eax, [eax*4+MonthAbbrev]
	mov [esp], eax
	call UI_SafeTranslateString
	mov [esp+0x14], ebx
	mov [esp+0x10], esi
	mov [esp+0xc], edi
	mov edx, [ebp-0x5c]
	mov [esp+0x8], edx
	mov [esp+0x4], eax
	mov dword [esp], _cstring_s_i_i___i02i
	call va
	mov [esp+0x4], eax
	lea eax, [ebp-0x30]
	mov [esp], eax
	call Cvar_SetStringByName
	mov eax, [ebp-0x64]
	test eax, eax
	jnz UI_StartServerRefresh_10
	mov eax, [ui_netSource]
	mov eax, [eax+0xc]
	mov [esp], eax
	call LAN_ResetPings
	mov dword [sharedUiInfo+0x72f0], 0x1
	mov eax, [uiInfoArray+0x8]
	add eax, 0x3e8
	mov [sharedUiInfo+0x72dc], eax
UI_StartServerRefresh_30:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
UI_StartServerRefresh_10:
	mov dword [sharedUiInfo+0x72f0], 0x1
	mov eax, [uiInfoArray+0x8]
	add eax, 0x3e8
	mov [sharedUiInfo+0x1ab84], eax
	mov dword [sharedUiInfo+0x1ab78], 0x0
	mov dword [sharedUiInfo+0x1ab80], 0x0
	mov eax, [ui_netSource]
	mov eax, [eax+0xc]
	mov [esp], eax
	call LAN_GetServerCount
	mov [sharedUiInfo+0x1ab7c], eax
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0xffffffff
	mov eax, [ui_netSource]
	mov eax, [eax+0xc]
	mov [esp], eax
	call LAN_MarkServerDirty
	mov eax, [ui_netSource]
	mov eax, [eax+0xc]
	mov [esp], eax
	call LAN_ResetPings
	mov edx, [ui_netSource]
	mov eax, [edx+0xc]
	test eax, eax
	jz UI_StartServerRefresh_20
	mov eax, [uiInfoArray+0x8]
	add eax, 0x1388
	mov [sharedUiInfo+0x72dc], eax
	cmp dword [edx+0xc], 0x1
	jnz UI_StartServerRefresh_30
	mov dword [esp], _cstring_debug_protocol
	call Cvar_GetVariantString
	cmp byte [eax], 0x0
	jz UI_StartServerRefresh_40
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_globalservers_d_
UI_StartServerRefresh_50:
	call va
	mov ebx, eax
	mov edx, [ebp-0x60]
	mov [esp], edx
	call CL_ControllerIndexFromClientNum
	mov [esp+0x8], ebx
	mov [esp+0x4], eax
	mov eax, [ebp-0x60]
	mov [esp], eax
	call Cmd_ExecuteSingleCommand
	jmp UI_StartServerRefresh_30
UI_StartServerRefresh_20:
	mov edx, [ebp-0x60]
	mov [esp], edx
	call CL_ControllerIndexFromClientNum
	mov dword [esp+0x8], _cstring_localservers
	mov [esp+0x4], eax
	mov eax, [ebp-0x60]
	mov [esp], eax
	call Cmd_ExecuteSingleCommand
	mov eax, [uiInfoArray+0x8]
	add eax, 0x3e8
	mov [sharedUiInfo+0x72dc], eax
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
UI_StartServerRefresh_40:
	mov dword [esp+0x8], 0x6
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_globalservers_d_1
	jmp UI_StartServerRefresh_50


;UI_BuildServerDisplayList(uiInfo_s*, int)
UI_BuildServerDisplayList:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x43c
	mov ebx, [ebp+0xc]
	test ebx, ebx
	jnz UI_BuildServerDisplayList_10
	mov edx, [ebp+0x8]
	mov eax, [edx+0x8]
	cmp eax, [sharedUiInfo+0x1ab84]
	jle UI_BuildServerDisplayList_20
UI_BuildServerDisplayList_110:
	xor ebx, ebx
UI_BuildServerDisplayList_100:
	mov dword [esp], _cstring_cl_motdstring
	call Cvar_VariableString
	mov dword [esp+0x8], 0x400
	mov [esp+0x4], eax
	mov dword [esp], sharedUiInfo+0x1aba4
	call Q_strncpyz
	xor esi, esi
	cld
	mov ecx, 0xffffffff
	mov edi, sharedUiInfo+0x1aba4
	mov eax, esi
	repne scasb
	not ecx
	mov eax, ecx
	sub eax, 0x1
	jz UI_BuildServerDisplayList_30
UI_BuildServerDisplayList_120:
	cmp eax, [sharedUiInfo+0x1ab8c]
	jz UI_BuildServerDisplayList_40
	mov [sharedUiInfo+0x1ab8c], eax
	mov dword [sharedUiInfo+0x1ab90], 0xffffffff
UI_BuildServerDisplayList_40:
	test ebx, ebx
	jnz UI_BuildServerDisplayList_50
UI_BuildServerDisplayList_140:
	mov eax, [ui_netSource]
	mov eax, [eax+0xc]
	mov [esp], eax
	call LAN_GetServerCount
	mov [ebp-0x424], eax
	mov eax, [ui_netSource]
	mov eax, [eax+0xc]
	mov [esp], eax
	call LAN_WaitServerResponse
	test eax, eax
	jnz UI_BuildServerDisplayList_60
	mov edx, [ui_netSource]
	mov eax, [edx+0xc]
	test eax, eax
	jnz UI_BuildServerDisplayList_70
	mov eax, [ebp-0x424]
	test eax, eax
	jz UI_BuildServerDisplayList_80
UI_BuildServerDisplayList_70:
	mov dword [esp+0xc], UI_ServersQsortCompare
	mov dword [esp+0x8], 0x4
	mov eax, [sharedUiInfo+0x1ab78]
	mov [esp+0x4], eax
	mov dword [esp], sharedUiInfo+0x72f8
	call qsort
	mov eax, [ebp-0x424]
	test eax, eax
	jg UI_BuildServerDisplayList_90
UI_BuildServerDisplayList_160:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x8]
	mov [sharedUiInfo+0x72dc], eax
UI_BuildServerDisplayList_20:
	add esp, 0x43c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
UI_BuildServerDisplayList_10:
	cmp ebx, 0x2
	jnz UI_BuildServerDisplayList_100
	jmp UI_BuildServerDisplayList_110
UI_BuildServerDisplayList_60:
	mov edx, [ui_netSource]
UI_BuildServerDisplayList_80:
	mov dword [sharedUiInfo+0x1ab78], 0x0
	mov dword [sharedUiInfo+0x1ab80], 0x0
	mov eax, [edx+0xc]
	mov [esp], eax
	call LAN_GetServerCount
	mov [sharedUiInfo+0x1ab7c], eax
	mov edx, [ebp+0x8]
	mov eax, [edx+0x8]
	add eax, 0x1f4
	mov [sharedUiInfo+0x1ab84], eax
	add esp, 0x43c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
UI_BuildServerDisplayList_30:
	mov dword [esp], _cstring_exe_cod_multipla
	call UI_SafeTranslateString
	mov dword [esp+0x8], _cstring_17
	mov [esp+0x4], eax
	mov dword [esp], _cstring_s__s
	call va
	mov [esp+0x4], eax
	mov dword [esp], sharedUiInfo+0x1aba4
	call strcpy
	cld
	mov ecx, 0xffffffff
	mov edi, sharedUiInfo+0x1aba4
	mov eax, esi
	repne scasb
	not ecx
	lea eax, [ecx-0x1]
	jmp UI_BuildServerDisplayList_120
UI_BuildServerDisplayList_50:
	mov dword [_ZZ25UI_BuildServerDisplayListP8uiInfo_siE8numclean], 0x0
	mov dword [sharedUiInfo+0x1ab78], 0x0
	mov dword [sharedUiInfo+0x1ab80], 0x0
	mov eax, [ui_netSource]
	mov eax, [eax+0xc]
	mov [esp], eax
	call LAN_GetServerCount
	mov [sharedUiInfo+0x1ab7c], eax
	mov eax, [sharedUiInfo+0x72f4]
	test eax, eax
	js UI_BuildServerDisplayList_130
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x2
	mov dword [esp+0x4], 0x0
	mov edx, [ebp+0x8]
	mov [esp], edx
	call Menu_SetFeederSelection
UI_BuildServerDisplayList_130:
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0xffffffff
	mov eax, [ui_netSource]
	mov eax, [eax+0xc]
	mov [esp], eax
	call LAN_MarkServerDirty
	jmp UI_BuildServerDisplayList_140
UI_BuildServerDisplayList_90:
	mov dword [ebp-0x428], 0x0
	mov eax, [ebp-0x428]
	jmp UI_BuildServerDisplayList_150
UI_BuildServerDisplayList_170:
	add dword [ebp-0x428], 0x1
	mov edx, [ebp-0x428]
	cmp [ebp-0x424], edx
	jz UI_BuildServerDisplayList_160
	mov eax, edx
UI_BuildServerDisplayList_150:
	mov [esp+0x4], eax
	mov eax, [ui_netSource]
	mov eax, [eax+0xc]
	mov [esp], eax
	call LAN_ServerIsDirty
	test eax, eax
	jz UI_BuildServerDisplayList_170
	mov edx, [ebp-0x428]
	mov [esp+0x4], edx
	mov eax, [ui_netSource]
	mov eax, [eax+0xc]
	mov [esp], eax
	call LAN_GetServerPing
	mov [ebp-0x420], eax
	test eax, eax
	jle UI_BuildServerDisplayList_180
	mov edx, [ui_netSource]
UI_BuildServerDisplayList_470:
	mov dword [esp+0xc], 0x400
	lea eax, [ebp-0x418]
	mov [esp+0x8], eax
	mov eax, [ebp-0x428]
	mov [esp+0x4], eax
	mov eax, [edx+0xc]
	mov [esp], eax
	call LAN_GetServerInfo
	mov dword [esp+0x4], _cstring_clients
	lea edx, [ebp-0x418]
	mov [esp], edx
	call Info_ValueForKey
	mov [esp], eax
	call atoi
	mov ebx, eax
	add [sharedUiInfo+0x1ab80], eax
	mov dword [esp+0x4], _cstring_addr
	lea eax, [ebp-0x418]
	mov [esp], eax
	call Info_ValueForKey
	mov dword [esp+0x8], 0xf
	mov dword [esp+0x4], _cstring_000000000000
	mov [esp], eax
	call Q_stricmpn
	test eax, eax
	jz UI_BuildServerDisplayList_190
	mov eax, [ebp-0x420]
	test eax, eax
	jle UI_BuildServerDisplayList_200
UI_BuildServerDisplayList_500:
	mov eax, [ui_browserShowEmpty]
	cmp byte [eax+0xc], 0x0
	jnz UI_BuildServerDisplayList_210
	test ebx, ebx
	jz UI_BuildServerDisplayList_220
UI_BuildServerDisplayList_210:
	mov eax, [ui_browserShowFull]
	cmp byte [eax+0xc], 0x0
	jz UI_BuildServerDisplayList_230
UI_BuildServerDisplayList_510:
	mov eax, [ui_browserShowPassword]
	mov eax, [eax+0xc]
	test eax, eax
	js UI_BuildServerDisplayList_240
	mov dword [esp+0x4], _cstring_pswrd
	lea edx, [ebp-0x418]
	mov [esp], edx
	call Info_ValueForKey
	mov [esp], eax
	call atoi
	mov edx, [ui_browserShowPassword]
	cmp eax, [edx+0xc]
	jz UI_BuildServerDisplayList_240
UI_BuildServerDisplayList_220:
	mov dword [esp+0x8], 0x0
	mov eax, [ebp-0x428]
	mov [esp+0x4], eax
	mov eax, [ui_netSource]
	mov eax, [eax+0xc]
	mov [esp], eax
	call LAN_MarkServerDirty
	jmp UI_BuildServerDisplayList_170
UI_BuildServerDisplayList_240:
	mov eax, [ui_browserShowPure]
	cmp byte [eax+0xc], 0x0
	jnz UI_BuildServerDisplayList_250
UI_BuildServerDisplayList_480:
	mov eax, [ui_browserShowDedicated]
	cmp byte [eax+0xc], 0x0
	jnz UI_BuildServerDisplayList_260
UI_BuildServerDisplayList_490:
	mov eax, [ui_browserMod]
	mov eax, [eax+0xc]
	test eax, eax
	js UI_BuildServerDisplayList_270
	mov dword [esp+0x4], _cstring_mod
	lea edx, [ebp-0x418]
	mov [esp], edx
	call Info_ValueForKey
	mov [esp], eax
	call atoi
	mov edx, [ui_browserMod]
	cmp eax, [edx+0xc]
	jnz UI_BuildServerDisplayList_220
UI_BuildServerDisplayList_270:
	mov eax, [ui_browserFriendlyfire]
	mov edi, [eax+0xc]
	test edi, edi
	js UI_BuildServerDisplayList_280
	mov dword [esp+0x4], _cstring_ff
	lea edx, [ebp-0x418]
	mov [esp], edx
	call Info_ValueForKey
	mov [esp], eax
	call atoi
	mov edx, [ui_browserFriendlyfire]
	cmp eax, [edx+0xc]
	jnz UI_BuildServerDisplayList_220
UI_BuildServerDisplayList_280:
	mov eax, [ui_browserKillcam]
	mov esi, [eax+0xc]
	test esi, esi
	js UI_BuildServerDisplayList_290
	mov dword [esp+0x4], _cstring_kc
	lea edx, [ebp-0x418]
	mov [esp], edx
	call Info_ValueForKey
	mov [esp], eax
	call atoi
	mov edx, [ui_browserKillcam]
	cmp eax, [edx+0xc]
	jnz UI_BuildServerDisplayList_220
UI_BuildServerDisplayList_290:
	mov eax, [ui_browserHardcore]
	mov ebx, [eax+0xc]
	test ebx, ebx
	js UI_BuildServerDisplayList_300
	mov dword [esp+0x4], _cstring_hc
	lea edx, [ebp-0x418]
	mov [esp], edx
	call Info_ValueForKey
	mov [esp], eax
	call atoi
	mov edx, [ui_browserHardcore]
	cmp eax, [edx+0xc]
	jnz UI_BuildServerDisplayList_220
UI_BuildServerDisplayList_300:
	mov eax, [ui_browserOldSchool]
	mov ecx, [eax+0xc]
	test ecx, ecx
	js UI_BuildServerDisplayList_310
	mov dword [esp+0x4], _cstring_od
	lea edx, [ebp-0x418]
	mov [esp], edx
	call Info_ValueForKey
	mov [esp], eax
	call atoi
	mov edx, [ui_browserOldSchool]
	cmp eax, [edx+0xc]
	jnz UI_BuildServerDisplayList_220
UI_BuildServerDisplayList_310:
	mov eax, [ui_browserShowPunkBuster]
	mov edx, [eax+0xc]
	test edx, edx
	js UI_BuildServerDisplayList_320
	mov dword [esp+0x4], _cstring_pb
	lea edx, [ebp-0x418]
	mov [esp], edx
	call Info_ValueForKey
	mov [esp], eax
	call atoi
	mov edx, [ui_browserShowPunkBuster]
	cmp eax, [edx+0xc]
	jnz UI_BuildServerDisplayList_220
UI_BuildServerDisplayList_320:
	mov eax, [ui_joinGameType]
	mov edx, [eax+0xc]
	mov eax, [edx*8+sharedUiInfo+0x1b5c]
	cmp byte [eax], 0x0
	jnz UI_BuildServerDisplayList_330
UI_BuildServerDisplayList_600:
	mov eax, [ui_serverFilterType]
	test eax, eax
	jle UI_BuildServerDisplayList_340
	mov ebx, [eax*8+serverFilters+0x4]
	mov dword [esp+0x4], _cstring_game
	lea edx, [ebp-0x418]
	mov [esp], edx
	call Info_ValueForKey
	mov [esp+0x4], ebx
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz UI_BuildServerDisplayList_220
UI_BuildServerDisplayList_340:
	mov edx, [ui_netSource]
	cmp dword [edx+0xc], 0x2
	jnz UI_BuildServerDisplayList_350
	mov ecx, [sharedUiInfo+0x1ab78]
	test ecx, ecx
	jle UI_BuildServerDisplayList_360
	mov eax, [ebp-0x428]
	cmp eax, [sharedUiInfo+0x72f8]
	jz UI_BuildServerDisplayList_370
	xor esi, esi
	mov ebx, sharedUiInfo
UI_BuildServerDisplayList_380:
	add esi, 0x1
	cmp ecx, esi
	jz UI_BuildServerDisplayList_360
	mov eax, [ebx+0x72fc]
	add ebx, 0x4
	cmp [ebp-0x428], eax
	jnz UI_BuildServerDisplayList_380
UI_BuildServerDisplayList_610:
	lea eax, [ecx-0x1]
	mov [sharedUiInfo+0x1ab78], eax
	cmp esi, eax
	jge UI_BuildServerDisplayList_390
	lea eax, [esi*4+0x72e4]
	lea ecx, [eax+sharedUiInfo+0x18]
	mov ebx, esi
	lea esi, [esi*4+sharedUiInfo+0x72f8]
	sub esi, ecx
UI_BuildServerDisplayList_400:
	add ebx, 0x1
	mov eax, [ecx]
	mov [esi+ecx], eax
	add ecx, 0x4
	cmp [sharedUiInfo+0x1ab78], ebx
	jg UI_BuildServerDisplayList_400
UI_BuildServerDisplayList_350:
	mov ecx, [sharedUiInfo+0x1ab78]
UI_BuildServerDisplayList_360:
	mov esi, ecx
	test ecx, ecx
	jle UI_BuildServerDisplayList_410
	mov dword [ebp-0x41c], 0x0
	jmp UI_BuildServerDisplayList_420
UI_BuildServerDisplayList_450:
	sub esi, ebx
	mov [ebp-0x41c], edi
UI_BuildServerDisplayList_460:
	test ebx, ebx
	jle UI_BuildServerDisplayList_430
	mov edx, [ui_netSource]
UI_BuildServerDisplayList_420:
	mov ebx, esi
	sar ebx, 1
	mov edi, [ebp-0x41c]
	add edi, ebx
	mov eax, [edi*4+sharedUiInfo+0x72f8]
	mov [esp+0x10], eax
	mov eax, [ebp-0x428]
	mov [esp+0xc], eax
	mov eax, [sharedUiInfo+0x72e8]
	mov [esp+0x8], eax
	mov eax, [sharedUiInfo+0x72e4]
	mov [esp+0x4], eax
	mov eax, [edx+0xc]
	mov [esp], eax
	call LAN_CompareServers
	mov edx, eax
	cmp eax, 0x0
	jz UI_BuildServerDisplayList_440
	jg UI_BuildServerDisplayList_450
	sub esi, ebx
	jmp UI_BuildServerDisplayList_460
UI_BuildServerDisplayList_180:
	mov edx, [ui_netSource]
	cmp dword [edx+0xc], 0x2
	jnz UI_BuildServerDisplayList_170
	jmp UI_BuildServerDisplayList_470
UI_BuildServerDisplayList_190:
	mov dword [esp+0x8], 0x0
	mov edx, [ebp-0x428]
	mov [esp+0x4], edx
	mov eax, [ui_netSource]
	mov eax, [eax+0xc]
	mov [esp], eax
	call LAN_MarkServerDirty
	jmp UI_BuildServerDisplayList_170
UI_BuildServerDisplayList_250:
	mov dword [esp+0x4], _cstring_pure
	lea edx, [ebp-0x418]
	mov [esp], edx
	call Info_ValueForKey
	mov [esp], eax
	call atoi
	test eax, eax
	jnz UI_BuildServerDisplayList_480
	jmp UI_BuildServerDisplayList_220
UI_BuildServerDisplayList_260:
	mov dword [esp+0x4], _cstring_hw
	lea edx, [ebp-0x418]
	mov [esp], edx
	call Info_ValueForKey
	mov [esp], eax
	call atoi
	sub eax, 0x1
	cmp eax, 0x2
	jbe UI_BuildServerDisplayList_490
	jmp UI_BuildServerDisplayList_220
UI_BuildServerDisplayList_200:
	mov edx, [ui_netSource]
	cmp dword [edx+0xc], 0x2
	jnz UI_BuildServerDisplayList_350
	mov edx, [ebp-0x428]
	mov [esp+0x4], edx
	mov dword [esp], 0x2
	call LAN_ServerInfoValid
	test al, al
	jz UI_BuildServerDisplayList_340
	jmp UI_BuildServerDisplayList_500
UI_BuildServerDisplayList_230:
	mov dword [esp+0x4], _cstring_sv_maxclients
	lea edx, [ebp-0x418]
	mov [esp], edx
	call Info_ValueForKey
	mov [esp], eax
	call atoi
	cmp ebx, eax
	jnz UI_BuildServerDisplayList_510
	jmp UI_BuildServerDisplayList_220
UI_BuildServerDisplayList_430:
	mov eax, [ebp-0x41c]
	add eax, 0x1
	sub edx, 0x1
	cmovl eax, [ebp-0x41c]
	mov [ebp-0x41c], eax
	test eax, eax
	js UI_BuildServerDisplayList_520
	mov ecx, [sharedUiInfo+0x1ab78]
UI_BuildServerDisplayList_560:
	cmp [ebp-0x41c], ecx
	jg UI_BuildServerDisplayList_520
	mov eax, [sharedUiInfo+0x72f4]
	cmp [ebp-0x41c], eax
	jg UI_BuildServerDisplayList_530
	test ecx, ecx
	jz UI_BuildServerDisplayList_530
	add eax, 0x1
	mov [sharedUiInfo+0x72f4], eax
UI_BuildServerDisplayList_530:
	lea ebx, [ecx+0x1]
	mov [sharedUiInfo+0x1ab78], ebx
	cmp [ebp-0x41c], ebx
	jge UI_BuildServerDisplayList_540
	lea eax, [ecx*4+0x72e0]
	lea edx, [eax+sharedUiInfo+0x18]
	mov ecx, ebx
	lea ebx, [ebx*4+sharedUiInfo+0x72f8]
	sub ebx, edx
UI_BuildServerDisplayList_550:
	sub ecx, 0x1
	mov eax, [edx]
	mov [ebx+edx], eax
	sub edx, 0x4
	cmp [ebp-0x41c], ecx
	jl UI_BuildServerDisplayList_550
UI_BuildServerDisplayList_540:
	mov edx, [ebp-0x428]
	mov eax, [ebp-0x41c]
	mov [eax*4+sharedUiInfo+0x72f8], edx
UI_BuildServerDisplayList_520:
	mov eax, [ebp-0x420]
	test eax, eax
	jle UI_BuildServerDisplayList_170
	mov dword [esp+0x8], 0x0
	mov eax, [ebp-0x428]
	mov [esp+0x4], eax
	mov eax, [ui_netSource]
	mov eax, [eax+0xc]
	mov [esp], eax
	call LAN_MarkServerDirty
	add dword [_ZZ25UI_BuildServerDisplayListP8uiInfo_siE8numclean], 0x1
	jmp UI_BuildServerDisplayList_170
UI_BuildServerDisplayList_410:
	mov dword [ebp-0x41c], 0x0
	jmp UI_BuildServerDisplayList_560
UI_BuildServerDisplayList_440:
	test edi, edi
	js UI_BuildServerDisplayList_520
	mov ecx, [sharedUiInfo+0x1ab78]
	cmp edi, ecx
	jg UI_BuildServerDisplayList_520
	mov eax, [sharedUiInfo+0x72f4]
	cmp edi, eax
	jg UI_BuildServerDisplayList_570
	test ecx, ecx
	jz UI_BuildServerDisplayList_570
	add eax, 0x1
	mov [sharedUiInfo+0x72f4], eax
UI_BuildServerDisplayList_570:
	lea ebx, [ecx+0x1]
	mov [sharedUiInfo+0x1ab78], ebx
	cmp edi, ebx
	jge UI_BuildServerDisplayList_580
	lea eax, [ecx*4+0x72e0]
	lea edx, [eax+sharedUiInfo+0x18]
	mov ecx, ebx
	lea ebx, [ebx*4+sharedUiInfo+0x72f8]
	sub ebx, edx
UI_BuildServerDisplayList_590:
	sub ecx, 0x1
	mov eax, [edx]
	mov [ebx+edx], eax
	sub edx, 0x4
	cmp edi, ecx
	jl UI_BuildServerDisplayList_590
UI_BuildServerDisplayList_580:
	mov eax, sharedUiInfo+0x72e0
	mov edx, [ebp-0x428]
	mov [eax+edi*4+0x18], edx
	jmp UI_BuildServerDisplayList_520
UI_BuildServerDisplayList_330:
	mov ebx, [edx*8+sharedUiInfo+0x1b58]
	mov dword [esp+0x4], _cstring_gametype
	lea edx, [ebp-0x418]
	mov [esp], edx
	call Info_ValueForKey
	mov [esp+0x4], ebx
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz UI_BuildServerDisplayList_600
	jmp UI_BuildServerDisplayList_220
UI_BuildServerDisplayList_390:
	mov ecx, eax
	jmp UI_BuildServerDisplayList_360
UI_BuildServerDisplayList_370:
	xor esi, esi
	jmp UI_BuildServerDisplayList_610


;UI_GetServerStatusInfo(char*, serverStatusInfo_t*)
UI_GetServerStatusInfo:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov ebx, eax
	mov [ebp-0x48], edx
	test edx, edx
	jz UI_GetServerStatusInfo_10
	mov dword [esp+0x8], 0xd04
	mov dword [esp+0x4], 0x0
	mov [esp], edx
	call memset
	mov edx, [ebp-0x48]
	add edx, 0x840
	mov [ebp-0x44], edx
	mov dword [esp+0x8], 0x400
	mov [esp+0x4], edx
	mov [esp], ebx
	call LAN_GetServerStatus
	test eax, eax
	jnz UI_GetServerStatusInfo_20
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
UI_GetServerStatusInfo_20:
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], ebx
	mov ecx, [ebp-0x48]
	mov [esp], ecx
	call Q_strncpyz
	mov ebx, [ebp-0x48]
	mov dword [ebx+0x40], _cstring_address
	mov dword [ebx+0x44], _cstring_null
	mov dword [ebx+0x48], _cstring_null
	mov [ebx+0x4c], ebx
	mov dword [ebx+0xd00], 0x1
	mov eax, [ebp-0x44]
	test eax, eax
	jz UI_GetServerStatusInfo_30
	cmp byte [ebx+0x840], 0x0
	jnz UI_GetServerStatusInfo_40
	mov ebx, 0x1
UI_GetServerStatusInfo_110:
	cmp ebx, 0x7c
	jg UI_GetServerStatusInfo_50
	mov eax, ebx
	shl eax, 0x4
	add eax, [ebp-0x48]
	mov dword [eax+0x40], _cstring_null
	mov dword [eax+0x44], _cstring_null
	mov dword [eax+0x48], _cstring_null
	mov dword [eax+0x4c], _cstring_null
	mov eax, ebx
	shl eax, 0x4
	mov edx, [ebp-0x48]
	lea eax, [eax+edx+0x10]
	mov dword [eax+0x40], _cstring_exe_sv_info_num
	mov dword [eax+0x44], _cstring_exe_sv_info_scor
	mov dword [eax+0x48], _cstring_exe_sv_info_ping
	mov dword [eax+0x4c], _cstring_exe_sv_info_name
	lea eax, [ebx+0x2]
	mov [edx+0xd00], eax
	mov eax, [ebp-0x44]
	test eax, eax
	jz UI_GetServerStatusInfo_50
	mov ecx, [ebp-0x44]
	movzx eax, byte [ecx]
	test al, al
	jz UI_GetServerStatusInfo_50
	mov dword [ebp-0x40], 0x0
	mov dword [ebp-0x3c], 0x0
	jmp UI_GetServerStatusInfo_60
UI_GetServerStatusInfo_70:
	mov ebx, [ebp-0x44]
	mov byte [ebx], 0x0
	add ebx, 0x1
	mov [ebp-0x44], ebx
	jz UI_GetServerStatusInfo_50
	mov eax, ebx
UI_GetServerStatusInfo_80:
	mov dword [esp+0x4], 0x20
	mov [esp], eax
	call strchr
	test eax, eax
	jz UI_GetServerStatusInfo_50
	mov byte [eax], 0x0
	add eax, 0x1
	mov [ebp-0x20], eax
	mov dword [esp+0x4], 0x20
	mov [esp], eax
	call strchr
	test eax, eax
	jz UI_GetServerStatusInfo_50
	mov byte [eax], 0x0
	add eax, 0x1
	mov [ebp-0x1c], eax
	mov edx, [ebp-0x3c]
	mov ecx, [ebp-0x48]
	lea edi, [edx+ecx+0xc40]
	mov ebx, [ebp-0x40]
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_d
	mov eax, 0xc0
	sub eax, edx
	mov [esp+0x4], eax
	mov [esp], edi
	call Com_sprintf
	mov eax, [ebp-0x48]
	mov ebx, [eax+0xd00]
	mov edx, ebx
	shl edx, 0x4
	add edx, eax
	mov [edx+0x40], edi
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	repne scasb
	not ecx
	add [ebp-0x3c], ecx
	mov ecx, [ebp-0x44]
	mov [edx+0x44], ecx
	mov eax, [ebp-0x20]
	mov [edx+0x48], eax
	mov ecx, [ebp-0x1c]
	mov [edx+0x4c], ecx
	add ebx, 0x1
	mov eax, [ebp-0x48]
	mov [eax+0xd00], ebx
	cmp ebx, 0x7f
	jg UI_GetServerStatusInfo_50
	mov dword [esp+0x4], 0x5c
	mov [esp], ecx
	call strchr
	test eax, eax
	jz UI_GetServerStatusInfo_50
	mov byte [eax], 0x0
	add dword [ebp-0x40], 0x1
	mov edx, eax
	add edx, 0x1
	mov [ebp-0x44], edx
	jz UI_GetServerStatusInfo_50
	movzx eax, byte [eax+0x1]
	test al, al
	jz UI_GetServerStatusInfo_50
UI_GetServerStatusInfo_60:
	cmp al, 0x5c
	jz UI_GetServerStatusInfo_70
	mov eax, [ebp-0x44]
	jmp UI_GetServerStatusInfo_80
UI_GetServerStatusInfo_40:
	mov dword [esp+0x4], 0x5c
	mov eax, [ebp-0x44]
	mov [esp], eax
	call strchr
	mov [ebp-0x44], eax
	test eax, eax
	jz UI_GetServerStatusInfo_90
	mov byte [eax], 0x0
	add eax, 0x1
	mov [ebp-0x44], eax
	cmp byte [eax], 0x5c
	jz UI_GetServerStatusInfo_100
	mov ecx, eax
	mov edx, [ebp-0x48]
	mov ebx, [edx+0xd00]
	mov eax, ebx
	shl eax, 0x4
	add eax, edx
	mov [eax+0x40], ecx
	mov dword [eax+0x44], _cstring_null
	mov dword [eax+0x48], _cstring_null
	mov dword [esp+0x4], 0x5c
	mov [esp], ecx
	call strchr
	mov [ebp-0x44], eax
	test eax, eax
	jz UI_GetServerStatusInfo_110
	mov byte [eax], 0x0
	add eax, 0x1
	mov [ebp-0x44], eax
	mov ebx, [ebp-0x48]
	mov edx, [ebx+0xd00]
	mov eax, edx
	shl eax, 0x4
	mov ecx, [ebp-0x44]
	mov [eax+ebx+0x4c], ecx
	lea eax, [edx+0x1]
	mov [ebx+0xd00], eax
	cmp eax, 0x7f
	jg UI_GetServerStatusInfo_120
	test ecx, ecx
	jz UI_GetServerStatusInfo_120
	cmp byte [ecx], 0x0
	jnz UI_GetServerStatusInfo_40
UI_GetServerStatusInfo_120:
	mov ebx, eax
	jmp UI_GetServerStatusInfo_110
UI_GetServerStatusInfo_50:
	mov eax, [serverStatusDvars]
	test eax, eax
	jz UI_GetServerStatusInfo_130
	mov dword [ebp-0x38], 0x0
	mov dword [ebp-0x24], serverStatusDvars+0xc
UI_GetServerStatusInfo_210:
	mov eax, [ebp-0x48]
	mov ebx, [eax+0xd00]
	test ebx, ebx
	jle UI_GetServerStatusInfo_140
	mov ebx, eax
	xor edi, edi
	jmp UI_GetServerStatusInfo_150
UI_GetServerStatusInfo_160:
	add edi, 0x1
	add ebx, 0x10
	mov ecx, [ebp-0x48]
	cmp [ecx+0xd00], edi
	jle UI_GetServerStatusInfo_140
UI_GetServerStatusInfo_150:
	mov eax, [ebx+0x44]
	test eax, eax
	jz UI_GetServerStatusInfo_160
	cmp byte [eax], 0x0
	jnz UI_GetServerStatusInfo_160
	mov eax, [ebx+0x40]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x24]
	mov eax, [ecx-0xc]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz UI_GetServerStatusInfo_160
	mov eax, [ebp-0x38]
	shl eax, 0x4
	mov edx, [ebp-0x48]
	lea esi, [eax+edx]
	mov edx, [esi+0x40]
	mov ecx, [esi+0x4c]
	mov eax, [ebx+0x40]
	mov [esi+0x40], eax
	mov eax, [ebx+0x4c]
	mov [esi+0x4c], eax
	mov [ebx+0x40], edx
	mov [ebx+0x4c], ecx
	mov ecx, [ebp-0x24]
	mov eax, [ecx-0x8]
	cmp byte [eax], 0x0
	jz UI_GetServerStatusInfo_170
	mov [esi+0x40], eax
	mov edx, [ebp-0x24]
	mov eax, [edx-0x4]
	cmp eax, 0x2
	jz UI_GetServerStatusInfo_180
UI_GetServerStatusInfo_230:
	cmp eax, 0x3
	jz UI_GetServerStatusInfo_190
	sub eax, 0x1
	jz UI_GetServerStatusInfo_200
	add dword [ebp-0x38], 0x1
UI_GetServerStatusInfo_220:
	add edi, 0x1
	add ebx, 0x10
	mov ecx, [ebp-0x48]
	cmp [ecx+0xd00], edi
	jg UI_GetServerStatusInfo_150
UI_GetServerStatusInfo_140:
	mov ebx, [ebp-0x24]
	mov eax, [ebx]
	add ebx, 0xc
	mov [ebp-0x24], ebx
	test eax, eax
	jnz UI_GetServerStatusInfo_210
UI_GetServerStatusInfo_130:
	mov eax, 0x1
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
UI_GetServerStatusInfo_200:
	mov eax, [esi+0x4c]
	mov [esp], eax
	call atoi
	mov edx, _cstring_exe_yes
	test eax, eax
	mov eax, _cstring_exe_no
	cmovz edx, eax
	mov [esi+0x4c], edx
	add dword [ebp-0x38], 0x1
	jmp UI_GetServerStatusInfo_220
UI_GetServerStatusInfo_170:
	mov edx, ecx
	mov eax, [edx-0x4]
	cmp eax, 0x2
	jnz UI_GetServerStatusInfo_230
UI_GetServerStatusInfo_180:
	mov esi, [esi+0x4c]
	mov [ebp-0x2c], esi
	mov eax, [sharedUiInfo+0x114c]
	test eax, eax
	jg UI_GetServerStatusInfo_240
UI_GetServerStatusInfo_250:
	mov edx, esi
UI_GetServerStatusInfo_280:
	mov eax, [ebp-0x38]
	shl eax, 0x4
	mov ecx, [ebp-0x48]
	mov [eax+ecx+0x4c], edx
	add dword [ebp-0x38], 0x1
	jmp UI_GetServerStatusInfo_220
UI_GetServerStatusInfo_190:
	mov esi, [esi+0x4c]
	mov [ebp-0x34], esi
	mov eax, [sharedUiInfo+0x1c58]
	test eax, eax
	jle UI_GetServerStatusInfo_250
	mov dword [ebp-0x30], 0x0
	mov esi, sharedUiInfo
UI_GetServerStatusInfo_270:
	mov eax, [esi+0x1c60]
	mov [esp+0x4], eax
	mov eax, [ebp-0x34]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz UI_GetServerStatusInfo_260
	add dword [ebp-0x30], 0x1
	add esi, 0xa0
	mov edx, [ebp-0x30]
	cmp edx, [sharedUiInfo+0x1c58]
	jl UI_GetServerStatusInfo_270
	mov edx, [ebp-0x34]
	jmp UI_GetServerStatusInfo_280
UI_GetServerStatusInfo_240:
	mov dword [ebp-0x28], 0x0
	mov esi, sharedUiInfo
UI_GetServerStatusInfo_300:
	mov eax, [esi+0x1150]
	mov [esp+0x4], eax
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz UI_GetServerStatusInfo_290
	add dword [ebp-0x28], 0x1
	add esi, 0x8
	mov edx, [ebp-0x28]
	cmp edx, [sharedUiInfo+0x114c]
	jl UI_GetServerStatusInfo_300
	mov edx, [ebp-0x2c]
	jmp UI_GetServerStatusInfo_280
UI_GetServerStatusInfo_10:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call LAN_GetServerStatus
	xor eax, eax
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
UI_GetServerStatusInfo_30:
	mov eax, [ebp-0x48]
	mov ebx, [eax+0xd00]
	jmp UI_GetServerStatusInfo_110
UI_GetServerStatusInfo_290:
	mov ecx, [ebp-0x28]
	mov eax, [ecx*8+sharedUiInfo+0x1154]
	mov [esp], eax
	call UI_SafeTranslateString
	mov [ebp-0x2c], eax
	mov edx, eax
	jmp UI_GetServerStatusInfo_280
UI_GetServerStatusInfo_260:
	mov ecx, [ebp-0x30]
	lea eax, [ecx+ecx*4]
	shl eax, 0x5
	mov eax, [eax+sharedUiInfo+0x1c5c]
	mov [esp], eax
	call UI_SafeTranslateString
	mov [ebp-0x34], eax
	mov edx, eax
	jmp UI_GetServerStatusInfo_280
UI_GetServerStatusInfo_90:
	mov edx, [ebp-0x48]
	mov ebx, [edx+0xd00]
	jmp UI_GetServerStatusInfo_110
UI_GetServerStatusInfo_100:
	mov ecx, [ebp-0x48]
	mov ebx, [ecx+0xd00]
	jmp UI_GetServerStatusInfo_110


;UI_BuildFindPlayerList()
UI_BuildFindPlayerList:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x118c
	mov eax, [uiInfoArray+0x24ac]
	test eax, eax
	jz UI_BuildFindPlayerList_10
	cmp eax, [uiInfoArray+0x8]
	jle UI_BuildFindPlayerList_20
UI_BuildFindPlayerList_10:
	add esp, 0x118c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
UI_BuildFindPlayerList_20:
	mov eax, [ui_netSource]
	mov eax, [eax+0xc]
	mov [esp], eax
	call LAN_GetServerCount
	cmp eax, [sharedUiInfo+0x1ab7c]
	jz UI_BuildFindPlayerList_30
	mov [sharedUiInfo+0x1ab7c], eax
	mov ebx, [sharedUiInfo+0x1ab78]
	test ebx, ebx
	jnz UI_BuildFindPlayerList_40
UI_BuildFindPlayerList_30:
	mov dword [ebp-0x1168], 0x0
	mov dword [ebp-0x1150], sharedUiInfo
	mov dword [ebp-0x116c], sharedUiInfo+0x1bd30
	mov dword [ebp-0x1170], sharedUiInfo+0x1bcf0
	mov dword [ebp-0x1174], sharedUiInfo+0x1bd30
	jmp UI_BuildFindPlayerList_50
UI_BuildFindPlayerList_100:
	xor edx, edx
	mov eax, [ebp-0x1170]
	call UI_GetServerStatusInfo
	mov eax, [ebp-0x114c]
	mov dword [eax], 0x0
	mov eax, [ui_netSource]
	mov eax, [eax+0xc]
	mov [esp], eax
	call LAN_GetServerCount
	cmp eax, [sharedUiInfo+0x1ab7c]
	jz UI_BuildFindPlayerList_60
	mov [sharedUiInfo+0x1ab7c], eax
	mov ebx, [sharedUiInfo+0x1ab78]
	test ebx, ebx
	jnz UI_BuildFindPlayerList_70
UI_BuildFindPlayerList_60:
	mov eax, [sharedUiInfo+0x1bcec]
	cmp eax, [sharedUiInfo+0x1ab78]
	jl UI_BuildFindPlayerList_80
UI_BuildFindPlayerList_240:
	add dword [ebp-0x1168], 0x1
	add dword [ebp-0x1174], 0x8c
	add dword [ebp-0x1170], 0x8c
	add dword [ebp-0x116c], 0x8c
	add dword [ebp-0x1150], 0x8c
	cmp dword [ebp-0x1168], 0x10
	jz UI_BuildFindPlayerList_90
UI_BuildFindPlayerList_50:
	mov eax, [ebp-0x1150]
	add eax, 0x1bd78
	mov [ebp-0x114c], eax
	mov edx, [ebp-0x1150]
	mov ecx, [edx+0x1bd78]
	test ecx, ecx
	jz UI_BuildFindPlayerList_100
	lea edx, [ebp-0x1140]
	mov eax, [ebp-0x1170]
	call UI_GetServerStatusInfo
	test eax, eax
	jz UI_BuildFindPlayerList_110
	mov eax, [_ZZ22UI_BuildFindPlayerListvE8numFound]
	add eax, 0x1
	mov [_ZZ22UI_BuildFindPlayerListvE8numFound], eax
	mov edx, [ebp-0x440]
	test edx, edx
	jle UI_BuildFindPlayerList_120
	mov dword [ebp-0x1164], 0x0
	lea eax, [ebp-0x1140]
	mov [ebp-0x1154], eax
	mov edx, eax
	jmp UI_BuildFindPlayerList_130
UI_BuildFindPlayerList_150:
	add dword [ebp-0x1164], 0x1
	add dword [ebp-0x1154], 0x10
	mov edx, [ebp-0x1164]
	cmp edx, [ebp-0x440]
	jge UI_BuildFindPlayerList_140
	mov edx, [ebp-0x1154]
UI_BuildFindPlayerList_130:
	mov eax, [edx+0x48]
	test eax, eax
	jz UI_BuildFindPlayerList_150
	cmp byte [eax], 0x0
	jz UI_BuildFindPlayerList_150
	mov dword [esp+0x8], 0x22
	mov eax, [edx+0x4c]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x3a]
	mov [esp], ebx
	call Q_strncpyz
	mov [esp], ebx
	call Q_CleanStr
	cmp byte [ebp-0x3a], 0x0
	jz UI_BuildFindPlayerList_150
	mov [ebp-0x1160], ebx
	jmp UI_BuildFindPlayerList_160
UI_BuildFindPlayerList_190:
	xor eax, eax
UI_BuildFindPlayerList_230:
	cmp byte [eax+uiInfoArray+0x18a5], 0x0
	jz UI_BuildFindPlayerList_170
UI_BuildFindPlayerList_210:
	add dword [ebp-0x1160], 0x1
	mov edx, [ebp-0x1160]
	cmp byte [edx], 0x0
	jz UI_BuildFindPlayerList_150
UI_BuildFindPlayerList_160:
	movzx eax, byte [uiInfoArray+0x18a5]
	test al, al
	jz UI_BuildFindPlayerList_180
	mov edx, [ebp-0x1160]
	cmp byte [edx], 0x0
	jz UI_BuildFindPlayerList_190
	mov esi, edx
	mov dword [ebp-0x1158], 0x0
	mov dword [ebp-0x115c], 0x0
	mov edi, uiInfoArray+0x18a5
	jmp UI_BuildFindPlayerList_200
UI_BuildFindPlayerList_220:
	add dword [ebp-0x1158], 0x1
	mov eax, [ebp-0x1158]
	mov [ebp-0x115c], eax
	movzx eax, byte [edi+0x1]
	test al, al
	jz UI_BuildFindPlayerList_170
	mov esi, [ebp-0x1160]
	add esi, [ebp-0x115c]
	add edi, 0x1
	cmp byte [esi], 0x0
	jz UI_BuildFindPlayerList_210
UI_BuildFindPlayerList_200:
	movsx eax, al
	mov [esp], eax
	call __toupper
	mov ebx, eax
	movsx eax, byte [esi]
	mov [esp], eax
	call __toupper
	cmp ebx, eax
	jz UI_BuildFindPlayerList_220
	mov eax, [ebp-0x115c]
	jmp UI_BuildFindPlayerList_230
UI_BuildFindPlayerList_140:
	mov eax, [_ZZ22UI_BuildFindPlayerListvE8numFound]
UI_BuildFindPlayerList_120:
	mov [esp+0x10], eax
	mov eax, [sharedUiInfo+0x1bcec]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_searching_dd
	mov dword [esp+0x4], 0x40
	mov eax, [uiInfoArray+0x24a8]
	shl eax, 0x6
	add eax, uiInfoArray+0x2065
	mov [esp], eax
	call Com_sprintf
	mov eax, [ebp-0x114c]
	mov dword [eax], 0x0
UI_BuildFindPlayerList_110:
	mov edx, [ebp-0x114c]
	mov esi, [edx]
	test esi, esi
	jz UI_BuildFindPlayerList_100
	mov eax, [uiInfoArray+0x8]
	mov edx, [ui_serverStatusTimeOut]
	sub eax, [edx+0xc]
	mov edx, [ebp-0x1150]
	cmp [edx+0x1bd70], eax
	jge UI_BuildFindPlayerList_240
	add dword [_ZZ22UI_BuildFindPlayerListvE11numTimeOuts], 0x1
	jmp UI_BuildFindPlayerList_100
UI_BuildFindPlayerList_80:
	mov eax, [uiInfoArray+0x8]
	mov edx, [ebp-0x1150]
	mov [edx+0x1bd70], eax
	mov dword [esp+0xc], 0x40
	mov eax, [ebp-0x1170]
	mov [esp+0x8], eax
	mov eax, [sharedUiInfo+0x1bcec]
	mov eax, [eax*4+sharedUiInfo+0x72f8]
	mov [esp+0x4], eax
	mov eax, [ui_netSource]
	mov eax, [eax+0xc]
	mov [esp], eax
	call LAN_GetServerAddressString
	mov dword [esp+0xc], 0x400
	lea edx, [ebp-0x43a]
	mov [esp+0x8], edx
	mov eax, [sharedUiInfo+0x1bcec]
	mov eax, [eax*4+sharedUiInfo+0x72f8]
	mov [esp+0x4], eax
	mov eax, [ui_netSource]
	mov eax, [eax+0xc]
	mov [esp], eax
	call LAN_GetServerInfo
	mov dword [esp+0x4], _cstring_hostname
	lea eax, [ebp-0x43a]
	mov [esp], eax
	call Info_ValueForKey
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], eax
	mov edx, [ebp-0x116c]
	mov [esp], edx
	call Q_strncpyz
	mov eax, [ebp-0x114c]
	mov dword [eax], 0x1
	mov edx, [sharedUiInfo+0x1bcec]
	add edx, 0x1
	mov [sharedUiInfo+0x1bcec], edx
	mov eax, [_ZZ22UI_BuildFindPlayerListvE8numFound]
	mov [esp+0x10], eax
	mov [esp+0xc], edx
	mov dword [esp+0x8], _cstring_searching_dd
	mov dword [esp+0x4], 0x40
	mov eax, [uiInfoArray+0x24a8]
	shl eax, 0x6
	add eax, uiInfoArray+0x2065
	mov [esp], eax
	call Com_sprintf
	jmp UI_BuildFindPlayerList_240
UI_BuildFindPlayerList_70:
	mov dword [sharedUiInfo+0x72f4], 0xffffffff
	mov dword [esp+0x4], 0x1
	mov dword [esp], uiInfoArray
	call UI_BuildServerDisplayList
	jmp UI_BuildFindPlayerList_60
UI_BuildFindPlayerList_90:
	mov eax, sharedUiInfo
	mov edx, sharedUiInfo+0x8c0
UI_BuildFindPlayerList_260:
	mov ecx, [eax+0x1bd78]
	test ecx, ecx
	jnz UI_BuildFindPlayerList_250
	add eax, 0x8c
	cmp edx, eax
	jnz UI_BuildFindPlayerList_260
	mov ecx, [uiInfoArray+0x24a8]
	test ecx, ecx
	jz UI_BuildFindPlayerList_270
	mov eax, _cstring_null
	cmp ecx, 0x2
	mov edx, _cstring_s1
	cmovnz eax, edx
	lea edx, [ecx-0x1]
	mov dword [esp+0x14], uiInfoArray+0x18a5
	mov [esp+0x10], eax
	mov [esp+0xc], edx
	mov dword [esp+0x8], _cstring_d_servers_found_
	mov dword [esp+0x4], 0x40
	shl edx, 0x6
	add edx, uiInfoArray+0x20a5
	mov [esp], edx
	call Com_sprintf
UI_BuildFindPlayerList_290:
	mov dword [uiInfoArray+0x24ac], 0x0
	add esp, 0x118c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
UI_BuildFindPlayerList_180:
	mov edi, [ebp-0x1160]
	test edi, edi
	jz UI_BuildFindPlayerList_150
UI_BuildFindPlayerList_170:
	mov eax, [uiInfoArray+0x24a8]
	cmp eax, 0xe
	jle UI_BuildFindPlayerList_280
	mov eax, [sharedUiInfo+0x1ab78]
	mov [sharedUiInfo+0x1bcec], eax
	jmp UI_BuildFindPlayerList_150
UI_BuildFindPlayerList_40:
	mov dword [sharedUiInfo+0x72f4], 0xffffffff
	mov dword [esp+0x4], 0x1
	mov dword [esp], uiInfoArray
	call UI_BuildServerDisplayList
	jmp UI_BuildFindPlayerList_30
UI_BuildFindPlayerList_280:
	mov dword [esp+0x8], 0x40
	mov edx, [ebp-0x1170]
	mov [esp+0x4], edx
	shl eax, 0x6
	add eax, uiInfoArray+0x1c65
	mov [esp], eax
	call Q_strncpyz
	mov dword [esp+0x8], 0x40
	mov eax, [ebp-0x1174]
	mov [esp+0x4], eax
	mov eax, [uiInfoArray+0x24a8]
	shl eax, 0x6
	add eax, uiInfoArray+0x2065
	mov [esp], eax
	call Q_strncpyz
	add dword [uiInfoArray+0x24a8], 0x1
	jmp UI_BuildFindPlayerList_150
UI_BuildFindPlayerList_250:
	mov eax, [uiInfoArray+0x8]
	add eax, 0x19
	mov [uiInfoArray+0x24ac], eax
	add esp, 0x118c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
UI_BuildFindPlayerList_270:
	mov dword [esp+0x8], _cstring_no_servers_found
	mov dword [esp+0x4], 0x40
	mov dword [esp], uiInfoArray+0x2065
	call Com_sprintf
	jmp UI_BuildFindPlayerList_290
	nop


;UI_BuildServerStatus(uiInfo_s*, int)
UI_BuildServerStatus:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, eax
	mov eax, [eax+0x24ac]
	test eax, eax
	jnz UI_BuildServerStatus_10
	test edx, edx
	jnz UI_BuildServerStatus_20
	mov eax, [sharedUiInfo+0x1bce8]
	test eax, eax
	jz UI_BuildServerStatus_10
	cmp eax, [ebx+0x8]
	jg UI_BuildServerStatus_10
UI_BuildServerStatus_60:
	mov eax, [ui_netSource]
	mov eax, [eax+0xc]
	mov [esp], eax
	call LAN_GetServerCount
	cmp eax, [sharedUiInfo+0x1ab7c]
	jz UI_BuildServerStatus_30
	mov [sharedUiInfo+0x1ab7c], eax
	mov eax, [sharedUiInfo+0x1ab78]
	test eax, eax
	jnz UI_BuildServerStatus_40
UI_BuildServerStatus_30:
	mov edx, [sharedUiInfo+0x72f4]
	test edx, edx
	js UI_BuildServerStatus_10
	mov eax, [sharedUiInfo+0x1ab78]
	cmp edx, eax
	jg UI_BuildServerStatus_10
	test eax, eax
	jnz UI_BuildServerStatus_50
UI_BuildServerStatus_10:
	add esp, 0x24
	pop ebx
	pop ebp
	ret
UI_BuildServerStatus_20:
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0xd
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call Menu_SetFeederSelection
	mov dword [sharedUiInfo+0x1bce4], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	call LAN_GetServerStatus
	jmp UI_BuildServerStatus_60
UI_BuildServerStatus_50:
	mov edx, sharedUiInfo+0x1afe4
	mov eax, sharedUiInfo+0x1afa4
	call UI_GetServerStatusInfo
	test eax, eax
	jnz UI_BuildServerStatus_70
	mov eax, [ebx+0x8]
	add eax, 0x1f4
	mov [sharedUiInfo+0x1bce8], eax
	jmp UI_BuildServerStatus_10
UI_BuildServerStatus_40:
	mov dword [sharedUiInfo+0x72f4], 0xffffffff
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	call UI_BuildServerDisplayList
	jmp UI_BuildServerStatus_30
UI_BuildServerStatus_70:
	mov dword [sharedUiInfo+0x1bce8], 0x0
	xor edx, edx
	mov eax, sharedUiInfo+0x1afa4
	call UI_GetServerStatusInfo
	jmp UI_BuildServerStatus_10
	nop


;UI_DisplayDownloadInfo(char const*, float, float, Font_s*, float)
UI_DisplayDownloadInfo:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x19c
	mov eax, legacyHacks
	mov edx, [eax]
	mov [ebp-0x150], edx
	mov ecx, [eax+0x4]
	mov [ebp-0x14c], ecx
	mov eax, [eax+0x8]
	mov [ebp-0x148], eax
	mov edx, colorBlack
	mov eax, [edx]
	mov [ebp-0x28], eax
	mov eax, [edx+0x4]
	mov [ebp-0x24], eax
	mov eax, [edx+0x8]
	mov [ebp-0x20], eax
	mov dword [ebp-0x1c], 0x3e4ccccd
	lea esi, [ebp-0x28]
	mov [esp+0x1c], esi
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x42aa0000
	mov dword [esp+0xc], 0x44200000
	movss xmm0, dword [ebp+0x10]
	addss xmm0, [_float_184_00000000]
	movss [esp+0x8], xmm0
	xor esi, esi
	mov [esp+0x4], esi
	mov edi, scrPlaceFull
	mov [esp], edi
	call UI_FillRect
	lea eax, [ebp-0x28]
	mov [esp+0x1c], eax
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x42a60000
	mov dword [esp+0xc], 0x44200000
	movss xmm0, dword [ebp+0x10]
	addss xmm0, [_float_185_00000000]
	movss [esp+0x8], xmm0
	mov [esp+0x4], esi
	mov [esp], edi
	call UI_FillRect
	lea edx, [ebp-0x28]
	mov [esp+0x1c], edx
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x42a20000
	mov dword [esp+0xc], 0x44200000
	movss xmm0, dword [ebp+0x10]
	addss xmm0, [_float_186_00000000]
	movss [esp+0x8], xmm0
	mov [esp+0x4], esi
	mov [esp], edi
	call UI_FillRect
	mov eax, [ebp-0x150]
	test eax, eax
	jle UI_DisplayDownloadInfo_10
	mov edx, colorGreen
	mov eax, [edx]
	mov [ebp-0x28], eax
	mov eax, [edx+0x4]
	mov [ebp-0x24], eax
	mov eax, [edx+0x8]
	mov [ebp-0x20], eax
	mov dword [ebp-0x1c], 0x3e19999a
	cvtsi2ss xmm0, dword [ebp-0x14c]
	cvtsi2ss xmm1, dword [ebp-0x150]
	divss xmm0, xmm1
	mulss xmm0, [_float_640_00000000]
	cvttss2si ebx, xmm0
	lea ecx, [ebp-0x28]
	mov [esp+0x1c], ecx
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x40a00000
	lea eax, [ebx+0x2]
	cvtsi2ss xmm0, eax
	movss [esp+0xc], xmm0
	movss xmm0, dword [ebp+0x10]
	addss xmm0, [_float_164_00000000]
	movss [esp+0x8], xmm0
	mov [esp+0x4], esi
	mov [esp], edi
	call UI_FillRect
	lea eax, [ebp-0x28]
	mov [esp+0x1c], eax
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x40400000
	lea eax, [ebx+0x1]
	cvtsi2ss xmm0, eax
	movss [esp+0xc], xmm0
	movss xmm0, dword [ebp+0x10]
	addss xmm0, [_float_165_00000000]
	movss [esp+0x8], xmm0
	mov [esp+0x4], esi
	mov [esp], edi
	call UI_FillRect
	lea edx, [ebp-0x28]
	mov [esp+0x1c], edx
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x3f800000
	cvtsi2ss xmm0, ebx
	movss [esp+0xc], xmm0
	movss xmm0, dword [ebp+0x10]
	addss xmm0, [_float_166_00000000]
	movss [esp+0x8], xmm0
	mov [esp+0x4], esi
	mov [esp], edi
	call UI_FillRect
UI_DisplayDownloadInfo_10:
	movss xmm0, dword [ebp+0x10]
	addss xmm0, [_float_210_00000000]
	movss [ebp-0x15c], xmm0
	mov dword [esp], _ZZ22UI_DisplayDownloadInfoPKcffP6Font_sfE6dlText
	call UI_SafeTranslateString
	mov dword [esp+0x28], 0x0
	mov esi, colorLtGrey
	mov [esp+0x24], esi
	movss xmm1, dword [ebp+0x18]
	movss [esp+0x20], xmm1
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x0
	movss xmm3, dword [ebp-0x15c]
	movss [esp+0x14], xmm3
	mov ebx, 0x41c00000
	mov [esp+0x10], ebx
	mov edx, [ebp+0x14]
	mov [esp+0xc], edx
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], eax
	mov [esp], edi
	call UI_DrawText
	movss xmm0, dword [ebp+0x10]
	addss xmm0, [_float_235_00000000]
	movss [ebp-0x158], xmm0
	mov dword [esp], _ZZ22UI_DisplayDownloadInfoPKcffP6Font_sfE7etaText
	call UI_SafeTranslateString
	mov dword [esp+0x28], 0x0
	mov [esp+0x24], esi
	movss xmm1, dword [ebp+0x18]
	movss [esp+0x20], xmm1
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x0
	movss xmm3, dword [ebp-0x158]
	movss [esp+0x14], xmm3
	mov [esp+0x10], ebx
	mov edx, [ebp+0x14]
	mov [esp+0xc], edx
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], eax
	mov [esp], edi
	call UI_DrawText
	movss xmm0, dword [ebp+0x10]
	addss xmm0, [_float_260_00000000]
	movss [ebp-0x154], xmm0
	mov dword [esp], _ZZ22UI_DisplayDownloadInfoPKcffP6Font_sfE8xferText
	call UI_SafeTranslateString
	mov dword [esp+0x28], 0x0
	mov [esp+0x24], esi
	movss xmm1, dword [ebp+0x18]
	movss [esp+0x20], xmm1
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x0
	movss xmm3, dword [ebp-0x154]
	movss [esp+0x14], xmm3
	mov [esp+0x10], ebx
	mov edx, [ebp+0x14]
	mov [esp+0xc], edx
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], eax
	mov [esp], edi
	call UI_DrawText
	movss xmm0, dword [ebp+0x18]
	movss [esp+0x4], xmm0
	mov eax, [ebp+0x14]
	mov [esp], eax
	call R_NormalizedTextScale
	fstp dword [ebp-0x140]
	mov edx, [ebp+0x14]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x0
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call R_TextWidth
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0x140]
	cvttss2si eax, xmm0
	cvtsi2ss xmm0, eax
	ucomiss xmm0, [_float_430_00000000]
	ja UI_DisplayDownloadInfo_20
	movss xmm2, dword [ebp+0x18]
UI_DisplayDownloadInfo_60:
	mov dword [esp+0x28], 0x0
	mov eax, colorLtGrey
	mov [esp+0x24], eax
	movss [esp+0x20], xmm2
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x0
	movss xmm0, dword [ebp-0x15c]
	movss [esp+0x14], xmm0
	mov dword [esp+0x10], 0x43480000
	mov eax, [ebp+0x14]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x7fffffff
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov eax, scrPlaceFull
	mov [esp], eax
	call UI_DrawText
	mov ecx, [ebp-0x14c]
	mov edx, 0x40
	lea eax, [ebp-0x68]
	call UI_ReadableSize
	mov ecx, [ebp-0x150]
	mov edx, 0x40
	lea eax, [ebp-0xa8]
	call UI_ReadableSize
	mov ebx, [ebp-0x150]
	test ebx, ebx
	jle UI_DisplayDownloadInfo_30
	cvtsi2ss xmm0, dword [ebp-0x14c]
	mulss xmm0, [_float_100_00000000]
	cvtsi2ss xmm1, dword [ebp-0x150]
	divss xmm0, xmm1
	cvttss2si ecx, xmm0
	mov [ebp-0x144], ecx
UI_DisplayDownloadInfo_140:
	cmp dword [ebp-0x14c], 0xfff
	jle UI_DisplayDownloadInfo_40
	mov ecx, [ebp-0x148]
	test ecx, ecx
	jnz UI_DisplayDownloadInfo_50
UI_DisplayDownloadInfo_40:
	mov dword [esp], _cstring_exe_estimating
	call UI_SafeTranslateString
	mov ebx, eax
	movss xmm0, dword [ebp+0x18]
	movss [esp+0x4], xmm0
	mov eax, [ebp+0x14]
	mov [esp], eax
	call R_NormalizedTextScale
	fstp dword [ebp-0x13c]
	mov edx, [ebp+0x14]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call R_TextWidth
	mov dword [esp+0x34], 0x0
	mov dword [esp+0x30], 0x0
	mov dword [esp+0x2c], 0x0
	mov dword [esp+0x28], 0x6
	mov esi, colorLtGrey
	mov [esp+0x24], esi
	movss xmm0, dword [ebp+0x18]
	movss [esp+0x20], xmm0
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x0
	movss xmm1, dword [ebp-0x158]
	movss [esp+0x14], xmm1
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0x13c]
	cvttss2si edx, xmm0
	mov eax, edx
	shr eax, 0x1f
	add eax, edx
	sar eax, 1
	cvtsi2ss xmm0, eax
	movss xmm3, dword [ebp+0xc]
	subss xmm3, xmm0
	movss [esp+0x10], xmm3
	mov eax, [ebp+0x14]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x7fffffff
	mov [esp+0x4], ebx
	mov edi, scrPlaceFull
	mov [esp], edi
	call UI_DrawTextWithGlow
	mov dword [esp], _cstring_exe_copied
	call UI_SafeTranslateString
	mov ebx, eax
	mov dword [esp], _cstring_exe_of
	call UI_SafeTranslateString
	mov edx, [ebp-0x144]
	mov [esp+0x14], edx
	mov [esp+0x10], ebx
	lea ecx, [ebp-0xa8]
	mov [esp+0xc], ecx
	mov [esp+0x8], eax
	lea eax, [ebp-0x68]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_s_s_s_s_d
	call va
	mov ebx, eax
	movss xmm0, dword [ebp+0x18]
	movss [esp+0x4], xmm0
	mov eax, [ebp+0x14]
	mov [esp], eax
	call R_NormalizedTextScale
	fstp dword [ebp-0x138]
	mov edx, [ebp+0x14]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call R_TextWidth
	mov dword [esp+0x34], 0x0
	mov dword [esp+0x30], 0x0
	mov dword [esp+0x2c], 0x0
	mov dword [esp+0x28], 0x6
	mov [esp+0x24], esi
	movss xmm0, dword [ebp+0x18]
	movss [esp+0x20], xmm0
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x0
	movss xmm1, dword [ebp+0x10]
	addss xmm1, [_float_340_00000000]
	movss [esp+0x14], xmm1
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0x138]
	cvttss2si edx, xmm0
	mov eax, edx
	shr eax, 0x1f
	add eax, edx
	sar eax, 1
	cvtsi2ss xmm0, eax
	movss xmm3, dword [ebp+0xc]
	subss xmm3, xmm0
	movss [esp+0x10], xmm3
	mov eax, [ebp+0x14]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x7fffffff
	mov [esp+0x4], ebx
	mov [esp], edi
	call UI_DrawTextWithGlow
UI_DisplayDownloadInfo_170:
	add esp, 0x19c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
UI_DisplayDownloadInfo_20:
	movss xmm2, dword [ebp+0x18]
	mulss xmm2, [_float_430_00000000]
	divss xmm2, xmm0
	movss xmm0, dword [_float_0_20000000]
	cmpss xmm0, xmm2, 0x1
	movaps xmm1, xmm2
	andps xmm1, xmm0
	movaps xmm2, xmm0
	movss xmm3, dword [_float_0_20000000]
	andnps xmm2, xmm3
	orps xmm2, xmm1
	jmp UI_DisplayDownloadInfo_60
UI_DisplayDownloadInfo_50:
	mov ecx, [uiInfoArray+0x8]
	sub ecx, [ebp-0x148]
	lea eax, [ecx+0x3e7]
	cmp eax, 0x7ce
	ja UI_DisplayDownloadInfo_70
	xor esi, esi
	mov ecx, esi
	mov edx, 0x40
	lea eax, [ebp-0xe8]
	call UI_ReadableSize
	mov edx, [ebp-0x150]
	test edx, edx
	jz UI_DisplayDownloadInfo_80
UI_DisplayDownloadInfo_150:
	test esi, esi
	jz UI_DisplayDownloadInfo_80
	mov eax, [ebp-0x150]
	cdq
	idiv esi
	mov ecx, eax
	mov ebx, [_ZZ22UI_DisplayDownloadInfoPKcffP6Font_sfE8tleIndex]
	sar dword [ebp-0x14c], 0xa
	mov eax, [ebp-0x14c]
	imul eax, ecx
	mov edx, [ebp-0x150]
	test edx, edx
	js UI_DisplayDownloadInfo_90
UI_DisplayDownloadInfo_210:
	sar edx, 0xa
	mov esi, edx
	cdq
	idiv esi
	sub ecx, eax
	mov [ebx*4+_ZZ22UI_DisplayDownloadInfoPKcffP6Font_sfE12tleEstimates], ecx
	lea edx, [ebx+0x1]
	xor eax, eax
	cmp edx, 0x50
	cmovl eax, edx
	mov [_ZZ22UI_DisplayDownloadInfoPKcffP6Font_sfE8tleIndex], eax
	xor ecx, ecx
	mov eax, _ZZ22UI_DisplayDownloadInfoPKcffP6Font_sfE12tleEstimates
	mov edx, _ZZ22UI_DisplayDownloadInfoPKcffP6Font_sfE8xferText
UI_DisplayDownloadInfo_100:
	add ecx, [eax]
	add eax, 0x4
	cmp edx, eax
	jnz UI_DisplayDownloadInfo_100
	mov eax, 0x66666667
	imul ecx
	mov esi, edx
	sar esi, 0x5
	mov eax, ecx
	sar eax, 0x1f
	sub esi, eax
	cmp esi, 0xe10
	jg UI_DisplayDownloadInfo_110
	cmp esi, 0x3c
	jle UI_DisplayDownloadInfo_120
	mov dword [esp], _cstring_exe_seconds
	call UI_SafeTranslateString
	mov ebx, eax
	mov dword [esp], _cstring_exe_minutes
	call UI_SafeTranslateString
	mov edi, eax
	mov [esp+0x18], ebx
	mov edx, 0x88888889
	mov eax, esi
	imul edx
	lea ebx, [edx+esi]
	sar ebx, 0x5
	mov eax, esi
	cdq
	sub ebx, edx
	lea edx, [ebx*4]
	mov ecx, ebx
	shl ecx, 0x6
	sub ecx, edx
	mov edx, esi
	sub edx, ecx
	mov [esp+0x14], edx
	mov [esp+0x10], edi
	mov [esp+0xc], ebx
UI_DisplayDownloadInfo_200:
	mov dword [esp+0x8], _cstring_d_s_d_s
	mov dword [esp+0x4], 0x40
	lea ebx, [ebp-0x128]
	mov [esp], ebx
	call Com_sprintf
UI_DisplayDownloadInfo_190:
	mov dword [esp+0x28], 0x3
	mov esi, colorLtGrey
	mov [esp+0x24], esi
	movss xmm0, dword [ebp+0x18]
	movss [esp+0x20], xmm0
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x0
	movss xmm1, dword [ebp-0x158]
	movss [esp+0x14], xmm1
	mov dword [esp+0x10], 0x43480000
	mov eax, [ebp+0x14]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x7fffffff
	mov [esp+0x4], ebx
	mov edi, scrPlaceFull
	mov [esp], edi
	call UI_DrawText
	mov dword [esp], _cstring_exe_copied
	call UI_SafeTranslateString
	mov ebx, eax
	mov dword [esp], _cstring_exe_of
	call UI_SafeTranslateString
	mov edx, [ebp-0x144]
	mov [esp+0x14], edx
	mov [esp+0x10], ebx
	lea ecx, [ebp-0xa8]
	mov [esp+0xc], ecx
	mov [esp+0x8], eax
	lea eax, [ebp-0x68]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_s_s_s_s_d
	call va
	mov ebx, eax
	movss xmm0, dword [ebp+0x18]
	movss [esp+0x4], xmm0
	mov eax, [ebp+0x14]
	mov [esp], eax
	call R_NormalizedTextScale
	fstp dword [ebp-0x134]
	mov edx, [ebp+0x14]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call R_TextWidth
	mov dword [esp+0x34], 0x0
	mov dword [esp+0x30], 0x0
	mov dword [esp+0x2c], 0x0
	mov dword [esp+0x28], 0x6
	mov [esp+0x24], esi
	movss xmm0, dword [ebp+0x18]
	movss [esp+0x20], xmm0
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x0
	movss xmm1, dword [ebp+0x10]
	addss xmm1, [_float_320_00000000]
	movss [esp+0x14], xmm1
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0x134]
	cvttss2si edx, xmm0
	mov eax, edx
	shr eax, 0x1f
	add eax, edx
	sar eax, 1
	cvtsi2ss xmm0, eax
	movss xmm3, dword [ebp+0xc]
	subss xmm3, xmm0
	movss [esp+0x10], xmm3
	mov eax, [ebp+0x14]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x7fffffff
	mov [esp+0x4], ebx
	mov [esp], edi
	call UI_DrawTextWithGlow
	jmp UI_DisplayDownloadInfo_130
UI_DisplayDownloadInfo_30:
	mov dword [ebp-0x144], 0x0
	jmp UI_DisplayDownloadInfo_140
UI_DisplayDownloadInfo_70:
	mov edx, 0x10624dd3
	mov eax, ecx
	imul edx
	sar edx, 0x6
	mov eax, ecx
	sar eax, 0x1f
	sub edx, eax
	mov eax, [ebp-0x14c]
	mov ecx, edx
	cdq
	idiv ecx
	mov esi, eax
	mov ecx, esi
	mov edx, 0x40
	lea eax, [ebp-0xe8]
	call UI_ReadableSize
	mov edx, [ebp-0x150]
	test edx, edx
	jnz UI_DisplayDownloadInfo_150
UI_DisplayDownloadInfo_80:
	mov dword [esp], _cstring_exe_estimating
	call UI_SafeTranslateString
	mov ebx, eax
	movss xmm0, dword [ebp+0x18]
	movss [esp+0x4], xmm0
	mov eax, [ebp+0x14]
	mov [esp], eax
	call R_NormalizedTextScale
	fstp dword [ebp-0x130]
	mov edx, [ebp+0x14]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call R_TextWidth
	mov dword [esp+0x34], 0x0
	mov dword [esp+0x30], 0x0
	mov dword [esp+0x2c], 0x0
	mov dword [esp+0x28], 0x6
	mov edx, colorLtGrey
	mov [esp+0x24], edx
	movss xmm0, dword [ebp+0x18]
	movss [esp+0x20], xmm0
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x0
	movss xmm1, dword [ebp-0x158]
	movss [esp+0x14], xmm1
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0x130]
	cvttss2si edx, xmm0
	mov eax, edx
	shr eax, 0x1f
	add eax, edx
	sar eax, 1
	cvtsi2ss xmm0, eax
	movss xmm3, dword [ebp+0xc]
	subss xmm3, xmm0
	movss [esp+0x10], xmm3
	mov eax, [ebp+0x14]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x7fffffff
	mov [esp+0x4], ebx
	mov eax, scrPlaceFull
	mov [esp], eax
	call UI_DrawTextWithGlow
	mov eax, [ebp-0x150]
	test eax, eax
	jz UI_DisplayDownloadInfo_160
	mov dword [esp], _cstring_exe_copied
	call UI_SafeTranslateString
	mov ebx, eax
	mov dword [esp], _cstring_exe_of
	call UI_SafeTranslateString
	mov edx, [ebp-0x144]
	mov [esp+0x14], edx
	mov [esp+0x10], ebx
	lea ecx, [ebp-0xa8]
	mov [esp+0xc], ecx
	mov [esp+0x8], eax
	lea eax, [ebp-0x68]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_s_s_s_s_d
	call va
	mov ebx, eax
UI_DisplayDownloadInfo_180:
	movss xmm0, dword [ebp+0x18]
	movss [esp+0x4], xmm0
	mov eax, [ebp+0x14]
	mov [esp], eax
	call R_NormalizedTextScale
	fstp dword [ebp-0x12c]
	mov edx, [ebp+0x14]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call R_TextWidth
	mov dword [esp+0x34], 0x0
	mov dword [esp+0x30], 0x0
	mov dword [esp+0x2c], 0x0
	mov dword [esp+0x28], 0x6
	mov edx, colorLtGrey
	mov [esp+0x24], edx
	movss xmm0, dword [ebp+0x18]
	movss [esp+0x20], xmm0
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x0
	movss xmm1, dword [ebp+0x10]
	addss xmm1, [_float_320_00000000]
	movss [esp+0x14], xmm1
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0x12c]
	cvttss2si edx, xmm0
	mov eax, edx
	shr eax, 0x1f
	add eax, edx
	sar eax, 1
	cvtsi2ss xmm0, eax
	movss xmm3, dword [ebp+0xc]
	subss xmm3, xmm0
	movss [esp+0x10], xmm3
	mov eax, [ebp+0x14]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x7fffffff
	mov [esp+0x4], ebx
	mov eax, scrPlaceFull
	mov [esp], eax
	call UI_DrawTextWithGlow
	test esi, esi
	jz UI_DisplayDownloadInfo_170
UI_DisplayDownloadInfo_130:
	mov dword [esp], _cstring_exe_seconds
	call UI_SafeTranslateString
	mov [esp+0x8], eax
	lea edx, [ebp-0xe8]
	mov [esp+0x4], edx
	mov dword [esp], _cstring_ss
	call va
	mov dword [esp+0x28], 0x3
	mov edx, colorLtGrey
	mov [esp+0x24], edx
	movss xmm0, dword [ebp+0x18]
	movss [esp+0x20], xmm0
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x0
	movss xmm1, dword [ebp-0x154]
	movss [esp+0x14], xmm1
	mov dword [esp+0x10], 0x43480000
	mov edx, [ebp+0x14]
	mov [esp+0xc], edx
	mov dword [esp+0x8], 0x7fffffff
	mov [esp+0x4], eax
	mov eax, scrPlaceFull
	mov [esp], eax
	call UI_DrawText
	add esp, 0x19c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
UI_DisplayDownloadInfo_160:
	mov dword [esp], _cstring_exe_copied
	call UI_SafeTranslateString
	mov [esp+0x8], eax
	lea edx, [ebp-0x68]
	mov [esp+0x4], edx
	mov dword [esp], _cstring_s_s
	call va
	mov ebx, eax
	jmp UI_DisplayDownloadInfo_180
UI_DisplayDownloadInfo_120:
	mov dword [esp], _cstring_exe_seconds
	call UI_SafeTranslateString
	mov [esp+0x10], eax
	mov [esp+0xc], esi
	mov dword [esp+0x8], _cstring_d_s
	mov dword [esp+0x4], 0x40
	lea ebx, [ebp-0x128]
	mov [esp], ebx
	call Com_sprintf
	jmp UI_DisplayDownloadInfo_190
UI_DisplayDownloadInfo_110:
	mov dword [esp], _cstring_exe_minutes
	call UI_SafeTranslateString
	mov ebx, eax
	mov dword [esp], _cstring_exe_hours
	call UI_SafeTranslateString
	mov [esp+0x10], eax
	mov [esp+0x18], ebx
	mov edx, 0x91a2b3c5
	mov eax, esi
	imul edx
	lea edi, [edx+esi]
	sar edi, 0xb
	mov eax, esi
	cdq
	sub edi, edx
	mov ecx, edi
	shl ecx, 0x4
	mov edx, edi
	shl edx, 0x8
	sub edx, ecx
	mov ecx, edx
	shl ecx, 0x4
	sub ecx, edx
	mov ebx, esi
	sub ebx, ecx
	mov edx, 0x88888889
	mov eax, ebx
	imul edx
	add edx, ebx
	sar edx, 0x5
	mov ecx, ebx
	sar ecx, 0x1f
	sub edx, ecx
	mov [esp+0x14], edx
	mov [esp+0xc], edi
	jmp UI_DisplayDownloadInfo_200
UI_DisplayDownloadInfo_90:
	add edx, 0x3ff
	jmp UI_DisplayDownloadInfo_210
	nop


;UI_Refresh(int)
UI_Refresh:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov dword [esp], uiInfoArray
	call Menu_Count
	test eax, eax
	jle UI_Refresh_10
	mov dword [esp], uiInfoArray
	call Menu_PaintAll
	mov edx, [sharedUiInfo+0x72f0]
	test edx, edx
	jz UI_Refresh_20
	mov eax, [ui_netSource]
	mov eax, [eax+0xc]
	cmp eax, 0x2
	jz UI_Refresh_30
	test eax, eax
	jz UI_Refresh_40
	mov [esp], eax
	call LAN_WaitServerResponse
	test eax, eax
	jnz UI_Refresh_50
UI_Refresh_30:
	xor ebx, ebx
UI_Refresh_160:
	mov eax, [uiInfoArray+0x8]
	cmp eax, [sharedUiInfo+0x72dc]
	jge UI_Refresh_60
	test ebx, ebx
	jnz UI_Refresh_20
UI_Refresh_60:
	mov eax, [ui_netSource]
	mov eax, [eax+0xc]
	mov [esp], eax
	call LAN_GetServerCount
	cmp eax, [sharedUiInfo+0x1ab7c]
	jz UI_Refresh_70
	mov [sharedUiInfo+0x1ab7c], eax
	mov eax, [sharedUiInfo+0x1ab78]
	test eax, eax
	jnz UI_Refresh_80
UI_Refresh_70:
	mov eax, [ui_netSource]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov eax, [uiInfoArray]
	mov [esp], eax
	call LAN_UpdateDirtyPings
	test eax, eax
	jz UI_Refresh_90
	mov eax, [uiInfoArray+0x8]
	add eax, 0x7d0
	mov [sharedUiInfo+0x72dc], eax
UI_Refresh_190:
	mov dword [esp+0x4], 0x0
	mov dword [esp], uiInfoArray
	call UI_BuildServerDisplayList
UI_Refresh_20:
	xor edx, edx
	mov eax, uiInfoArray
	call UI_BuildServerStatus
	call UI_BuildFindPlayerList
	call CL_AllLocalClientsDisconnected
	test al, al
	jnz UI_Refresh_100
UI_Refresh_130:
	mov eax, [uiInfoArray+0x18]
	test eax, eax
	jnz UI_Refresh_110
UI_Refresh_10:
	mov dword [esp], uiInfoArray
	call Menu_GetFocused
	test eax, eax
	jz UI_Refresh_120
UI_Refresh_170:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
UI_Refresh_100:
	mov eax, clientUIActives
	mov eax, [eax+0xc]
	test eax, eax
	jnz UI_Refresh_130
	mov eax, [ui_buildLocation]
	movss xmm0, dword [eax+0x10]
	movss [ebp-0x20], xmm0
	mov edi, [eax+0xc]
	mov eax, [ui_buildSize]
	movss xmm0, dword [eax+0xc]
	movss [ebp-0x1c], xmm0
	mov eax, [ebp+0x8]
	shl eax, 0x6
	mov edx, [ebp+0x8]
	lea ebx, [eax+edx*4]
	add ebx, scrPlaceView
	movaps xmm1, xmm0
	mulss xmm1, [ebx+0x4]
	mov eax, [ui_smallFont]
	movss xmm0, dword [eax+0xc]
	ucomiss xmm0, xmm1
	jb UI_Refresh_140
	mov esi, [sharedUiInfo+0x2c]
UI_Refresh_220:
	call getBuildNumberAsInt
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_17
	mov dword [esp], _cstring_si
	call va
	mov dword [esp+0x28], 0x0
	mov edx, colorMdGrey
	mov [esp+0x24], edx
	movss xmm0, dword [ebp-0x1c]
	movss [esp+0x20], xmm0
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x3
	movss xmm0, dword [ebp-0x20]
	movss [esp+0x14], xmm0
	mov [esp+0x10], edi
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], eax
	mov [esp], ebx
	call UI_DrawText
	mov eax, [uiInfoArray+0x18]
	test eax, eax
	jz UI_Refresh_10
UI_Refresh_110:
	mov dword [esp], _cstring_cl_bypassmousein
	call Cvar_VariableBooleanValue
	test al, al
	jnz UI_Refresh_150
	cmp dword [uiInfoArray+0x18a0], 0xa
	jz UI_Refresh_150
	xor eax, eax
UI_Refresh_180:
	test eax, eax
	jnz UI_Refresh_10
	mov eax, scrPlaceFull
	movss xmm0, dword [_float_32_00000000]
	movss xmm1, dword [eax]
	mulss xmm1, xmm0
	divss xmm1, dword [eax+0x8]
	mulss xmm0, [eax+0x4]
	divss xmm0, dword [eax+0xc]
	mov eax, [sharedUiInfo+0x24]
	mov [esp+0x20], eax
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x4
	mov dword [esp+0x14], 0x4
	movss [esp+0x10], xmm0
	movss [esp+0xc], xmm1
	movss xmm2, dword [_float__0_50000000]
	mulss xmm0, xmm2
	addss xmm0, [uiInfoArray+0x14]
	movss [esp+0x8], xmm0
	mulss xmm1, xmm2
	addss xmm1, [uiInfoArray+0x10]
	movss [esp+0x4], xmm1
	mov eax, [ebp+0x8]
	shl eax, 0x6
	mov edx, [ebp+0x8]
	lea eax, [eax+edx*4]
	add eax, scrPlaceView
	mov [esp], eax
	call UI_DrawHandlePic
	jmp UI_Refresh_10
UI_Refresh_40:
	mov dword [esp], 0x0
	call LAN_GetServerCount
	test eax, eax
	jnz UI_Refresh_30
UI_Refresh_50:
	mov ebx, 0x1
	jmp UI_Refresh_160
UI_Refresh_120:
	mov dword [esp+0x4], 0x10
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Key_IsCatcherActive
	test al, al
	jz UI_Refresh_170
	mov dword [esp+0x4], 0xffffffef
	mov edx, [ebp+0x8]
	mov [esp], edx
	call Key_RemoveCatcher
	jmp UI_Refresh_170
UI_Refresh_150:
	mov eax, 0x1
	jmp UI_Refresh_180
UI_Refresh_90:
	test ebx, ebx
	jnz UI_Refresh_190
	mov dword [esp+0x4], 0x2
	mov dword [esp], uiInfoArray
	call UI_BuildServerDisplayList
	mov eax, [sharedUiInfo+0x72f0]
	test eax, eax
	jz UI_Refresh_190
	mov dword [sharedUiInfo+0x72f0], 0x0
	mov eax, [sharedUiInfo+0x1ab80]
	mov [esp+0xc], eax
	mov eax, [sharedUiInfo+0x1ab78]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_d_servers_listed
	mov dword [esp], 0xd
	call Com_Printf
	mov eax, [ui_netSource]
	mov eax, [eax+0xc]
	mov [esp], eax
	call LAN_GetServerCount
	sub eax, [sharedUiInfo+0x1ab78]
	test eax, eax
	jle UI_Refresh_190
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_d_servers_not_li
	mov dword [esp], 0xd
	call Com_Printf
	jmp UI_Refresh_190
UI_Refresh_140:
	mov eax, [ui_extraBigFont]
	ucomiss xmm1, [eax+0xc]
	jae UI_Refresh_200
	mov eax, [ui_bigFont]
	ucomiss xmm1, [eax+0xc]
	jb UI_Refresh_210
	mov esi, [sharedUiInfo+0x28]
	jmp UI_Refresh_220
UI_Refresh_200:
	mov esi, [sharedUiInfo+0x3c]
	jmp UI_Refresh_220
UI_Refresh_80:
	mov dword [sharedUiInfo+0x72f4], 0xffffffff
	mov dword [esp+0x4], 0x1
	mov dword [esp], uiInfoArray
	call UI_BuildServerDisplayList
	jmp UI_Refresh_70
UI_Refresh_210:
	mov esi, [sharedUiInfo+0x38]
	jmp UI_Refresh_220


;UI_CloseAll(int)
UI_CloseAll:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp], uiInfoArray
	call Menus_CloseAll
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call UI_SetActiveMenu
	leave
	ret
	nop


;UI_DrawRect(ScreenPlacement const*, float, float, float, float, int, int, float, float const*)
UI_DrawRect:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov edi, [ebp+0x20]
	mov esi, [ebp+0x28]
	mov eax, [sharedUiInfo+0x20]
	mov [esp+0x30], eax
	mov [esp+0x2c], esi
	xor ebx, ebx
	mov [esp+0x28], ebx
	mov [esp+0x24], ebx
	mov [esp+0x20], ebx
	mov [esp+0x1c], ebx
	mov [esp+0x18], edi
	mov eax, [ebp+0x1c]
	mov [esp+0x14], eax
	movss xmm0, dword [ebp+0x24]
	movss [esp+0x10], xmm0
	movss xmm1, dword [ebp+0x14]
	movss [esp+0xc], xmm1
	movss xmm0, dword [ebp+0x10]
	movss [esp+0x8], xmm0
	movss xmm1, dword [ebp+0xc]
	movss [esp+0x4], xmm1
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CL_DrawStretchPic
	mov eax, [sharedUiInfo+0x20]
	mov [esp+0x30], eax
	mov [esp+0x2c], esi
	mov [esp+0x28], ebx
	mov [esp+0x24], ebx
	mov [esp+0x20], ebx
	mov [esp+0x1c], ebx
	mov [esp+0x18], edi
	mov eax, [ebp+0x1c]
	mov [esp+0x14], eax
	movss xmm0, dword [ebp+0x24]
	movss [esp+0x10], xmm0
	movss xmm1, dword [ebp+0x14]
	movss [esp+0xc], xmm1
	movss xmm0, dword [ebp+0x10]
	addss xmm0, [ebp+0x18]
	subss xmm0, [ebp+0x24]
	movss [esp+0x8], xmm0
	movss xmm0, dword [ebp+0xc]
	movss [esp+0x4], xmm0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CL_DrawStretchPic
	movss xmm0, dword [ebp+0x24]
	mulss xmm0, [_float__2_00000000]
	addss xmm0, [ebp+0x18]
	movss xmm1, dword [ebp+0x10]
	addss xmm1, [ebp+0x24]
	movss [ebp-0x1c], xmm1
	mov eax, [sharedUiInfo+0x20]
	mov [esp+0x30], eax
	mov [esp+0x2c], esi
	mov [esp+0x28], ebx
	mov [esp+0x24], ebx
	mov [esp+0x20], ebx
	mov [esp+0x1c], ebx
	mov [esp+0x18], edi
	mov eax, [ebp+0x1c]
	mov [esp+0x14], eax
	movss [esp+0x10], xmm0
	movss xmm1, dword [ebp+0x24]
	movss [esp+0xc], xmm1
	movss xmm1, dword [ebp-0x1c]
	movss [esp+0x8], xmm1
	movss xmm1, dword [ebp+0xc]
	movss [esp+0x4], xmm1
	mov eax, [ebp+0x8]
	mov [esp], eax
	movss [ebp-0x38], xmm0
	call CL_DrawStretchPic
	mov eax, [sharedUiInfo+0x20]
	mov [esp+0x30], eax
	mov [esp+0x2c], esi
	mov [esp+0x28], ebx
	mov [esp+0x24], ebx
	mov [esp+0x20], ebx
	mov [esp+0x1c], ebx
	mov [esp+0x18], edi
	mov eax, [ebp+0x1c]
	mov [esp+0x14], eax
	movss xmm0, dword [ebp-0x38]
	movss [esp+0x10], xmm0
	movss xmm0, dword [ebp+0x24]
	movss [esp+0xc], xmm0
	movss xmm1, dword [ebp-0x1c]
	movss [esp+0x8], xmm1
	movss xmm0, dword [ebp+0xc]
	addss xmm0, [ebp+0x14]
	movss [ebp+0xc], xmm0
	subss xmm0, [ebp+0x24]
	movss [esp+0x4], xmm0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CL_DrawStretchPic
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;UI_DrawText(ScreenPlacement const*, char const*, int, Font_s*, float, float, int, int, float, float const*, int)
UI_DrawText:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x54
	mov ebx, [ebp+0x14]
	mov eax, [ebp+0x28]
	mov [esp+0x4], eax
	mov [esp], ebx
	call R_NormalizedTextScale
	fst dword [ebp-0xc]
	fstp dword [ebp-0x10]
	mov eax, [ebp+0x24]
	mov [esp+0x18], eax
	mov eax, [ebp+0x20]
	mov [esp+0x14], eax
	lea eax, [ebp-0x10]
	mov [esp+0x10], eax
	lea eax, [ebp-0xc]
	mov [esp+0xc], eax
	lea eax, [ebp+0x1c]
	mov [esp+0x8], eax
	lea eax, [ebp+0x18]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call ScrPlace_ApplyRect
	movss xmm1, dword [_float_0_50000000]
	movss xmm0, dword [ebp+0x18]
	addss xmm0, xmm1
	movss [esp], xmm0
	movss [ebp-0x28], xmm1
	call floorf
	fstp dword [esp+0xc]
	movss xmm0, dword [esp+0xc]
	movss [ebp+0x18], xmm0
	movss xmm1, dword [ebp-0x28]
	addss xmm1, [ebp+0x1c]
	movss [esp], xmm1
	call floorf
	fst dword [ebp+0x1c]
	mov eax, [ebp+0x30]
	mov [esp+0x20], eax
	mov eax, [ebp+0x2c]
	mov [esp+0x1c], eax
	mov eax, [ebp-0x10]
	mov [esp+0x18], eax
	mov eax, [ebp-0xc]
	mov [esp+0x14], eax
	fstp dword [esp+0x10]
	mov [esp+0x8], ebx
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call CL_DrawTextPhysical
	add esp, 0x54
	pop ebx
	pop ebp
	ret


;UI_KeyEvent(int, int, int)
UI_KeyEvent:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0x8]
	mov [ebp-0x1c], eax
	mov esi, [ebp+0xc]
	mov edi, [ebp+0x10]
	mov dword [esp], uiInfoArray
	call Menu_Count
	test eax, eax
	jnz UI_KeyEvent_10
UI_KeyEvent_60:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
UI_KeyEvent_10:
	mov dword [esp], uiInfoArray
	call Menu_GetFocused
	mov ebx, eax
	test eax, eax
	jz UI_KeyEvent_20
	mov dword [esp], _cstring_cl_bypassmousein
	call Cvar_VariableBooleanValue
	test al, al
	jz UI_KeyEvent_30
UI_KeyEvent_80:
	mov edx, 0x1
	mov eax, 0x1
	test edx, edx
	cmovz eax, [_ZZ11UI_KeyEventiiiE14bypassKeyClear]
	mov [_ZZ11UI_KeyEventiiiE14bypassKeyClear], eax
	cmp esi, 0x1b
	jz UI_KeyEvent_40
UI_KeyEvent_90:
	mov dword [esp+0x4], 0x10
	mov eax, [uiInfoArray]
	mov [esp], eax
	call Key_IsCatcherActive
	test al, al
	jnz UI_KeyEvent_50
UI_KeyEvent_100:
	mov dword [esp], uiInfoArray
	call Menu_GetFocused
	test eax, eax
	jnz UI_KeyEvent_60
UI_KeyEvent_20:
	mov dword [esp+0x4], 0x10
	mov eax, [uiInfoArray]
	mov [esp], eax
	call Key_IsCatcherActive
	test al, al
	jz UI_KeyEvent_60
	mov dword [esp+0x4], 0xffffffef
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call Key_RemoveCatcher
	mov ecx, [_ZZ11UI_KeyEventiiiE14bypassKeyClear]
	test ecx, ecx
	jz UI_KeyEvent_70
UI_KeyEvent_110:
	mov dword [_ZZ11UI_KeyEventiiiE14bypassKeyClear], 0x0
	mov dword [ebp+0xc], 0x0
	mov dword [ebp+0x8], _cstring_cl_paused
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Cvar_SetIntByName
UI_KeyEvent_30:
	cmp dword [uiInfoArray+0x18a0], 0xa
	jz UI_KeyEvent_80
	xor edx, edx
	mov eax, 0x1
	test edx, edx
	cmovz eax, [_ZZ11UI_KeyEventiiiE14bypassKeyClear]
	mov [_ZZ11UI_KeyEventiiiE14bypassKeyClear], eax
	cmp esi, 0x1b
	jnz UI_KeyEvent_90
UI_KeyEvent_40:
	test edi, edi
	jz UI_KeyEvent_90
	mov dword [esp], uiInfoArray
	call Menus_AnyFullScreenVisible
	test eax, eax
	jnz UI_KeyEvent_90
	mov eax, [ebx+0xcc]
	test eax, eax
	jnz UI_KeyEvent_90
	mov dword [esp], uiInfoArray
	call Menus_CloseAll
	jmp UI_KeyEvent_90
UI_KeyEvent_50:
	mov [esp+0xc], edi
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	mov dword [esp], uiInfoArray
	call Menu_HandleKey
	jmp UI_KeyEvent_100
UI_KeyEvent_70:
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call Key_ClearStates
	jmp UI_KeyEvent_110


;UI_Shutdown(int)
UI_Shutdown:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp], uiInfoArray
	call Menus_CloseAll
	mov dword [sharedUiInfo+0x20], 0x0
	mov dword [esp], uiInfoArray+0xa78
	call UILocalVar_Shutdown
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz UI_Shutdown_10
	mov dword [esp], uiInfoArray
	call Menus_FreeAllMemory
UI_Shutdown_10:
	leave
	jmp LAN_SaveServersToCache
	nop


;UI_DrawSides(ScreenPlacement const*, float, float, float, float, int, int, float, float const*)
UI_DrawSides:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	movss xmm0, dword [ebp+0xc]
	mov edi, [ebp+0x20]
	mov esi, [ebp+0x28]
	mov eax, [sharedUiInfo+0x20]
	mov [esp+0x30], eax
	mov [esp+0x2c], esi
	xor ebx, ebx
	mov [esp+0x28], ebx
	mov [esp+0x24], ebx
	mov [esp+0x20], ebx
	mov [esp+0x1c], ebx
	mov [esp+0x18], edi
	mov eax, [ebp+0x1c]
	mov [esp+0x14], eax
	movss xmm1, dword [ebp+0x18]
	movss [esp+0x10], xmm1
	movss xmm1, dword [ebp+0x24]
	movss [esp+0xc], xmm1
	movss xmm1, dword [ebp+0x10]
	movss [esp+0x8], xmm1
	movss [esp+0x4], xmm0
	mov eax, [ebp+0x8]
	mov [esp], eax
	movss [ebp-0x28], xmm0
	call CL_DrawStretchPic
	mov eax, [sharedUiInfo+0x20]
	mov [esp+0x30], eax
	mov [esp+0x2c], esi
	mov [esp+0x28], ebx
	mov [esp+0x24], ebx
	mov [esp+0x20], ebx
	mov [esp+0x1c], ebx
	mov [esp+0x18], edi
	mov eax, [ebp+0x1c]
	mov [esp+0x14], eax
	movss xmm1, dword [ebp+0x18]
	movss [esp+0x10], xmm1
	movss xmm1, dword [ebp+0x24]
	movss [esp+0xc], xmm1
	movss xmm1, dword [ebp+0x10]
	movss [esp+0x8], xmm1
	movss xmm0, dword [ebp-0x28]
	addss xmm0, [ebp+0x14]
	subss xmm0, [ebp+0x24]
	movss [esp+0x4], xmm0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CL_DrawStretchPic
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;UI_OwnerDraw(int, float, float, float, float, int, int, float, float, int, int, int, float, Font_s*, float, float*, Material*, int, rectDef_s, int)
UI_OwnerDraw:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xb5c
	mov eax, [ebp+0x64]
	mov [ebp-0xacc], eax
	mov edx, [ebp+0x60]
	mov [ebp-0xad0], edx
	mov ebx, [ebp+0x5c]
	mov esi, [ebp+0x58]
	mov edi, [ebp+0x54]
	movss xmm0, dword [ebp+0x50]
	movss [ebp-0xad4], xmm0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CL_IsCgameInitialized
	test eax, eax
	jnz UI_OwnerDraw_10
UI_OwnerDraw_70:
	movss xmm0, dword [ebp+0xc]
	addss xmm0, [ebp+0x24]
	movss [ebp-0x60], xmm0
	movss xmm0, dword [ebp+0x10]
	addss xmm0, [ebp+0x28]
	movss [ebp-0x5c], xmm0
	movss xmm0, dword [ebp+0x14]
	movss [ebp-0x58], xmm0
	movss xmm0, dword [ebp+0x18]
	movss [ebp-0x54], xmm0
	mov eax, [ebp+0x1c]
	mov [ebp-0x50], eax
	mov edx, [ebp+0x20]
	mov [ebp-0x4c], edx
	mov eax, [ebp+0x2c]
	sub eax, 0xcd
	cmp eax, 0x41
	ja UI_OwnerDraw_20
	jmp dword [eax*4+UI_OwnerDraw_jumptab_0]
UI_OwnerDraw_290:
	mov edx, [sharedUiInfo+0x72f0]
	test edx, edx
	jz UI_OwnerDraw_30
	movss xmm0, dword [_float_0_80000001]
	mov edi, [ebp+0x44]
	movss xmm1, dword [edi]
	mulss xmm1, xmm0
	movss [ebp-0x30], xmm1
	movss xmm1, dword [edi+0x4]
	mulss xmm1, xmm0
	movss [ebp-0x2c], xmm1
	movss xmm1, dword [edi+0x8]
	mulss xmm1, xmm0
	movss [ebp-0x28], xmm1
	mulss xmm0, [edi+0xc]
	movss [ebp-0x24], xmm0
	mov ecx, [uiInfoArray+0x8]
	mov edx, 0x1b4e81b5
	mov eax, ecx
	imul edx
	sar edx, 0x3
	mov eax, ecx
	sar eax, 0x1f
	sub edx, eax
	cvtsi2ss xmm0, edx
	cvtss2sd xmm0, xmm0
	movsd [esp], xmm0
	call sin
	fstp qword [ebp-0xaf0]
	movsd xmm0, qword [ebp-0xaf0]
	movsd xmm1, qword [_double_0_50000000]
	mulsd xmm0, xmm1
	addsd xmm0, xmm1
	cvtsd2ss xmm0, xmm0
	movss [esp+0xc], xmm0
	lea edx, [ebp-0xc8]
	mov [esp+0x8], edx
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov [esp], edi
	call LerpColor
	mov eax, [ui_netSource]
	mov eax, [eax+0xc]
	mov [esp], eax
	call LAN_WaitServerResponse
	mov esi, eax
	test eax, eax
	jnz UI_OwnerDraw_40
	mov eax, [ui_netSource]
	mov eax, [eax+0xc]
	mov [esp], eax
	call LAN_GetServerCount
	mov edi, eax
	mov dword [esp], _cstring_exe_gettinginfof
	call UI_SafeTranslateString
	mov ebx, eax
	mov dword [esp+0x8], 0x400
	mov [esp+0x4], eax
	lea eax, [ebp-0xac8]
	mov [esp], eax
	call Q_strncpyz
	mov dword [esp+0x4], _cstring_1
	mov [esp], ebx
	call strstr
	test eax, eax
	jz UI_OwnerDraw_50
	sub eax, ebx
	mov byte [ebp+eax-0xac5], 0x2f
	mov byte [ebp+eax-0xac4], 0x26
	mov byte [ebp+eax-0xac3], 0x26
	mov byte [ebp+eax-0xac2], 0x32
	add eax, 0x7
	mov edx, 0x400
	sub edx, eax
	mov [esp+0x8], edx
	lea edx, [ebx+eax-0x4]
	mov [esp+0x4], edx
	lea edx, [ebp-0xac8]
	lea eax, [edx+eax]
	mov [esp], eax
	call Q_strncpyz
UI_OwnerDraw_50:
	mov eax, cls
	mov eax, [eax+0x4b4c]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edi
	cld
	mov ecx, 0xa
	lea edi, [ebp-0x88]
	mov eax, esi
	rep stosd
	mov dword [ebp-0x88], 0x2
	xor edi, edi
	lea esi, [ebp-0x2c8]
UI_OwnerDraw_60:
	lea ebx, [edi*4]
	mov eax, [ebp+ebx-0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_d
	mov [esp], esi
	call sprintf
	mov [ebp+ebx-0x84], esi
	add edi, 0x1
	add esi, 0x20
	cmp edi, 0x2
	jnz UI_OwnerDraw_60
	mov dword [esp+0xc], 0x400
	lea ebx, [ebp-0x6c8]
	mov [esp+0x8], ebx
	lea edx, [ebp-0x88]
	mov [esp+0x4], edx
	lea edi, [ebp-0xac8]
	mov [esp], edi
	call UI_ReplaceConversions
	mov [esp], ebx
	call va
	mov edx, eax
UI_OwnerDraw_230:
	mov eax, [ebp+0x4c]
	mov [esp+0x28], eax
	lea edi, [ebp-0xc8]
	mov [esp+0x24], edi
	movss xmm0, dword [ebp+0x40]
	movss [esp+0x20], xmm0
	mov eax, [ebp-0x4c]
	mov [esp+0x1c], eax
	mov eax, [ebp-0x50]
	mov [esp+0x18], eax
	mov eax, [ebp-0x5c]
	mov [esp+0x14], eax
	mov eax, [ebp-0x60]
	mov [esp+0x10], eax
	mov eax, [ebp+0x3c]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x7fffffff
	mov [esp+0x4], edx
	mov eax, [ebp+0x8]
	shl eax, 0x6
	mov edx, [ebp+0x8]
	lea eax, [eax+edx*4]
	add eax, scrPlaceView
	mov [esp], eax
	call UI_DrawText
UI_OwnerDraw_20:
	add esp, 0xb5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
UI_OwnerDraw_10:
	mov edx, [ebp-0xacc]
	mov [ebp-0x34], edx
	mov eax, [ebp-0xad0]
	mov [ebp-0x38], eax
	mov [ebp-0x3c], ebx
	mov [ebp-0x40], esi
	mov [ebp-0x44], edi
	movss xmm0, dword [ebp-0xad4]
	movss [ebp-0x48], xmm0
	mov eax, [ebp+0x68]
	mov [esp+0x60], eax
	mov edx, [ebp+0x4c]
	mov [esp+0x5c], edx
	mov edi, [ebp+0x48]
	mov [esp+0x58], edi
	mov eax, [ebp+0x44]
	mov [esp+0x54], eax
	movss xmm0, dword [ebp+0x40]
	movss [esp+0x50], xmm0
	mov eax, [ebp+0x3c]
	mov [esp+0x4c], eax
	movss xmm0, dword [ebp+0x38]
	movss [esp+0x48], xmm0
	mov eax, [ebp+0x34]
	mov [esp+0x44], eax
	mov edx, [ebp+0x30]
	mov [esp+0x40], edx
	mov edi, [ebp+0x2c]
	mov [esp+0x3c], edi
	movss xmm0, dword [ebp+0x28]
	movss [esp+0x38], xmm0
	movss xmm0, dword [ebp+0x24]
	movss [esp+0x34], xmm0
	mov eax, [ebp+0x20]
	mov [esp+0x30], eax
	mov edx, [ebp+0x1c]
	mov [esp+0x2c], edx
	movss xmm0, dword [ebp+0x18]
	movss [esp+0x28], xmm0
	movss xmm0, dword [ebp+0x14]
	movss [esp+0x24], xmm0
	movss xmm0, dword [ebp+0x10]
	movss [esp+0x20], xmm0
	movss xmm0, dword [ebp+0xc]
	movss [esp+0x1c], xmm0
	mov eax, [ebp-0x48]
	mov [esp+0x4], eax
	mov eax, [ebp-0x44]
	mov [esp+0x8], eax
	mov eax, [ebp-0x40]
	mov [esp+0xc], eax
	mov eax, [ebp-0x3c]
	mov [esp+0x10], eax
	mov eax, [ebp-0xad0]
	mov [esp+0x14], eax
	mov edx, [ebp-0xacc]
	mov [esp+0x18], edx
	mov edi, [ebp+0x8]
	mov [esp], edi
	call CG_OwnerDraw
	jmp UI_OwnerDraw_70
UI_OwnerDraw_250:
	mov eax, [ui_gametype]
	mov eax, [eax+0xc]
	mov eax, [eax*8+sharedUiInfo+0x1154]
	cmp byte [eax], 0x0
	mov edx, _cstring_exe_all
	cmovz eax, edx
	mov [esp], eax
	call UI_SafeTranslateString
	mov edi, [ebp+0x4c]
	mov [esp+0x28], edi
	mov edx, [ebp+0x44]
	mov [esp+0x24], edx
UI_OwnerDraw_80:
	movss xmm0, dword [ebp+0x40]
	movss [esp+0x20], xmm0
	mov edx, [ebp-0x4c]
	mov [esp+0x1c], edx
	mov edx, [ebp-0x50]
	mov [esp+0x18], edx
	mov edx, [ebp-0x5c]
	mov [esp+0x14], edx
	mov edx, [ebp-0x60]
	mov [esp+0x10], edx
UI_OwnerDraw_110:
	mov edx, [ebp+0x3c]
	mov [esp+0xc], edx
	mov dword [esp+0x8], 0x7fffffff
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	shl eax, 0x6
	mov edi, [ebp+0x8]
	lea eax, [eax+edi*4]
	add eax, scrPlaceView
	mov [esp], eax
	call UI_DrawText
	add esp, 0xb5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
UI_OwnerDraw_260:
	mov eax, [ui_netSource]
	mov eax, [eax+0xc]
	mov eax, [eax*4+netSources]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_exe_netsources
	call va
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_net_source
UI_OwnerDraw_90:
	mov [esp], eax
	call SEH_LocalizeTextMessage
	mov edx, [ebp+0x4c]
	mov [esp+0x28], edx
	mov edi, [ebp+0x44]
	mov [esp+0x24], edi
	jmp UI_OwnerDraw_80
UI_OwnerDraw_270:
	xor eax, eax
	cmp dword [ui_serverFilterType], 0x2
	cmovb eax, [ui_serverFilterType]
	mov [ui_serverFilterType], eax
	mov eax, [eax*8+serverFilters]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_exe_serverfilter
	call va
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_server_filter
	jmp UI_OwnerDraw_90
UI_OwnerDraw_280:
	mov edx, [ui_netGameType]
	mov eax, [edx+0xc]
	cmp eax, [sharedUiInfo+0x114c]
	jg UI_OwnerDraw_100
UI_OwnerDraw_210:
	mov eax, [eax*8+sharedUiInfo+0x1154]
UI_OwnerDraw_130:
	cmp byte [eax], 0x0
	mov edx, _cstring_exe_all
	cmovz eax, edx
	mov [esp], eax
	call UI_SafeTranslateString
	mov edx, [ebp+0x4c]
	mov [esp+0x28], edx
	mov edi, [ebp+0x44]
	mov [esp+0x24], edi
	jmp UI_OwnerDraw_80
UI_OwnerDraw_300:
	call Display_KeyBindPending
	mov edx, _cstring_exe_keywait
	test eax, eax
	mov eax, _cstring_exe_keychange
	cmovz edx, eax
	mov ebx, [ebp-0x4c]
	mov esi, [ebp-0x50]
	mov edi, [ebp-0x5c]
	movss xmm0, dword [ebp-0x60]
	movss [ebp-0xadc], xmm0
	mov [esp], edx
	call UI_SafeTranslateString
	mov edx, [ebp+0x4c]
	mov [esp+0x28], edx
	mov edx, [ebp+0x44]
	mov [esp+0x24], edx
	movss xmm0, dword [ebp+0x40]
	movss [esp+0x20], xmm0
	mov [esp+0x1c], ebx
	mov [esp+0x18], esi
	mov [esp+0x14], edi
	movss xmm0, dword [ebp-0xadc]
	movss [esp+0x10], xmm0
	jmp UI_OwnerDraw_110
UI_OwnerDraw_310:
	mov edx, [ui_joinGameType]
	mov eax, [edx+0xc]
	cmp eax, [sharedUiInfo+0x1b54]
	jg UI_OwnerDraw_120
UI_OwnerDraw_220:
	mov eax, [eax*8+sharedUiInfo+0x1b5c]
	jmp UI_OwnerDraw_130
UI_OwnerDraw_320:
	mov eax, [ui_currentNetMap]
	mov eax, [eax+0xc]
	test eax, eax
	js UI_OwnerDraw_140
	cmp eax, [sharedUiInfo+0x1c58]
	jge UI_OwnerDraw_140
UI_OwnerDraw_190:
	lea ebx, [eax+eax*4]
	shl ebx, 0x5
	mov ecx, [ebx+sharedUiInfo+0x1cf4]
	test ecx, ecx
	jz UI_OwnerDraw_150
UI_OwnerDraw_240:
	mov eax, [ebx+sharedUiInfo+0x1cf4]
	mov [esp+0x20], eax
	mov eax, [ebp+0x44]
	mov [esp+0x1c], eax
	mov eax, [ebp-0x4c]
	mov [esp+0x18], eax
	mov eax, [ebp-0x50]
	mov [esp+0x14], eax
	mov eax, [ebp-0x54]
	mov [esp+0x10], eax
	mov eax, [ebp-0x58]
	mov [esp+0xc], eax
	mov eax, [ebp-0x5c]
	mov [esp+0x8], eax
	mov eax, [ebp-0x60]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	shl eax, 0x6
	mov edx, [ebp+0x8]
	lea eax, [eax+edx*4]
	add eax, scrPlaceView
	mov [esp], eax
	call UI_DrawHandlePic
	jmp UI_OwnerDraw_20
UI_OwnerDraw_340:
	mov eax, sv_voice
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz UI_OwnerDraw_20
	mov eax, cl_voice
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz UI_OwnerDraw_20
	call IN_IsTalkKeyHeld
	test al, al
	jz UI_OwnerDraw_20
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_voice_on
	call Material_RegisterHandle
	mov [esp+0x20], eax
	mov edx, [ebp+0x44]
	mov [esp+0x1c], edx
	mov eax, [ebp-0x4c]
	mov [esp+0x18], eax
	mov eax, [ebp-0x50]
	mov [esp+0x14], eax
	mov eax, [ebp-0x54]
	mov [esp+0x10], eax
	mov eax, [ebp-0x58]
	mov [esp+0xc], eax
	mov eax, [ebp-0x5c]
	mov [esp+0x8], eax
	mov eax, [ebp-0x60]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	shl eax, 0x6
	mov edi, [ebp+0x8]
	lea eax, [eax+edi*4]
	add eax, scrPlaceView
	mov [esp], eax
	call UI_DrawHandlePic
	jmp UI_OwnerDraw_20
UI_OwnerDraw_350:
	mov edi, [ebp+0x2c]
	sub edi, 0x10b
	xor esi, esi
	xor ebx, ebx
	jmp UI_OwnerDraw_160
UI_OwnerDraw_170:
	add ebx, 0x1
	cmp ebx, 0x40
	jz UI_OwnerDraw_20
UI_OwnerDraw_160:
	mov [esp], ebx
	call CL_IsClientLocal
	test al, al
	jnz UI_OwnerDraw_170
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CL_IsPlayerTalking
	test al, al
	jz UI_OwnerDraw_170
	cmp edi, esi
	jz UI_OwnerDraw_180
	add esi, 0x1
	jmp UI_OwnerDraw_170
UI_OwnerDraw_330:
	lea eax, [ebp-0x60]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call UI_DrawRecordLevel
	jmp UI_OwnerDraw_20
UI_OwnerDraw_140:
	xor eax, eax
	jmp UI_OwnerDraw_190
UI_OwnerDraw_30:
	mov eax, [ui_netSource]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_ui_lastserverref
	call va
	mov [esp], eax
	call Cvar_GetVariantString
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], eax
	lea ebx, [ebp-0xc8]
	mov [esp], ebx
	call Q_strncpyz
	mov dword [esp], _cstring_exe_refreshtime
	call UI_SafeTranslateString
	mov esi, eax
	cld
	mov ecx, 0xa
	xor edx, edx
	lea edi, [ebp-0x88]
	mov eax, edx
	rep stosd
	mov dword [ebp-0x88], 0x1
	mov [ebp-0x84], ebx
	mov dword [esp+0xc], 0x400
	lea ebx, [ebp-0x6c8]
	mov [esp+0x8], ebx
	lea eax, [ebp-0x88]
	mov [esp+0x4], eax
	mov [esp], esi
	call UI_ReplaceConversions
	mov [esp], ebx
	call va
	mov edx, [ebp+0x4c]
	mov [esp+0x28], edx
	mov edi, [ebp+0x44]
	mov [esp+0x24], edi
	jmp UI_OwnerDraw_80
UI_OwnerDraw_180:
	test ebx, ebx
	js UI_OwnerDraw_20
	mov dword [esp+0xc], 0x26
	lea edx, [ebp-0xc8]
	mov [esp+0x8], edx
	mov [esp+0x4], ebx
	mov edi, [ebp+0x8]
	mov [esp], edi
	call CL_GetClientName
	test eax, eax
	jnz UI_OwnerDraw_200
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_unable_to_find_c
	mov dword [esp], 0xd
	call Com_PrintWarning
	jmp UI_OwnerDraw_20
UI_OwnerDraw_100:
	mov dword [esp+0x4], 0x0
	mov [esp], edx
	call Cvar_SetInt
	mov eax, [sharedUiInfo+0x1150]
	mov [esp+0x4], eax
	mov eax, [ui_netGameTypeName]
	mov [esp], eax
	call Cvar_SetString
	mov edx, [ui_netGameType]
	mov eax, [edx+0xc]
	jmp UI_OwnerDraw_210
UI_OwnerDraw_120:
	mov dword [esp+0x4], 0x0
	mov [esp], edx
	call Cvar_SetInt
	mov edx, [ui_joinGameType]
	mov eax, [edx+0xc]
	jmp UI_OwnerDraw_220
UI_OwnerDraw_40:
	mov dword [esp], _cstring_exe_waitingforma
	call UI_SafeTranslateString
	mov edx, eax
	jmp UI_OwnerDraw_230
UI_OwnerDraw_200:
	mov dword [esp+0x4], 0x7
	mov dword [esp], _cstring_voice_on
	call Material_RegisterHandle
	mov esi, eax
	movss xmm0, dword [ebp+0x40]
	movss [esp+0x4], xmm0
	mov eax, [ebp+0x3c]
	mov [esp], eax
	call R_NormalizedTextScale
	fstp dword [ebp-0xad8]
	mov edx, [ebp+0x3c]
	mov [esp], edx
	call R_TextHeight
	mov edi, eax
	mov eax, [ebp+0x8]
	shl eax, 0x6
	mov edx, [ebp+0x8]
	lea ebx, [eax+edx*4]
	add ebx, scrPlaceView
	mov [esp+0x20], esi
	mov eax, [ebp+0x44]
	mov [esp+0x1c], eax
	mov eax, [ebp-0x4c]
	mov [esp+0x18], eax
	mov eax, [ebp-0x50]
	mov [esp+0x14], eax
	mov eax, [ebp-0x54]
	mov [esp+0x10], eax
	mov eax, [ebp-0x58]
	mov [esp+0xc], eax
	mov eax, [ebp-0x5c]
	mov [esp+0x8], eax
	mov eax, [ebp-0x60]
	mov [esp+0x4], eax
	mov [esp], ebx
	call UI_DrawHandlePic
	cvtsi2ss xmm0, edi
	mulss xmm0, [ebp-0xad8]
	cvttss2si eax, xmm0
	cvtsi2ss xmm2, eax
	mov edx, [ebp+0x4c]
	mov [esp+0x28], edx
	mov edi, [ebp+0x44]
	mov [esp+0x24], edi
	movss xmm0, dword [ebp+0x40]
	movss [esp+0x20], xmm0
	mov eax, [ebp-0x4c]
	mov [esp+0x1c], eax
	mov eax, [ebp-0x50]
	mov [esp+0x18], eax
	movaps xmm1, xmm2
	addss xmm1, [ebp-0x5c]
	movss xmm0, dword [ebp-0x54]
	subss xmm0, xmm2
	mulss xmm0, [_float_0_50000000]
	addss xmm1, xmm0
	movss [esp+0x14], xmm1
	movss xmm0, dword [ebp-0x60]
	addss xmm0, [ebp-0x58]
	addss xmm0, [_float_2_00000000]
	movss [esp+0x10], xmm0
	mov eax, [ebp+0x3c]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x20
	lea edx, [ebp-0xc8]
	mov [esp+0x4], edx
	mov [esp], ebx
	call UI_DrawText
	jmp UI_OwnerDraw_20
UI_OwnerDraw_150:
	mov dword [esp+0x4], 0x3
	mov eax, [ebx+sharedUiInfo+0x1c64]
	mov [esp], eax
	call Material_RegisterHandle
	mov edx, sharedUiInfo+0x1ce0
	mov [ebx+edx+0x14], eax
	jmp UI_OwnerDraw_240
	
	
UI_OwnerDraw_jumptab_0:
	dd UI_OwnerDraw_250
	dd UI_OwnerDraw_20
	dd UI_OwnerDraw_20
	dd UI_OwnerDraw_20
	dd UI_OwnerDraw_20
	dd UI_OwnerDraw_20
	dd UI_OwnerDraw_20
	dd UI_OwnerDraw_20
	dd UI_OwnerDraw_20
	dd UI_OwnerDraw_20
	dd UI_OwnerDraw_20
	dd UI_OwnerDraw_20
	dd UI_OwnerDraw_20
	dd UI_OwnerDraw_20
	dd UI_OwnerDraw_20
	dd UI_OwnerDraw_260
	dd UI_OwnerDraw_20
	dd UI_OwnerDraw_270
	dd UI_OwnerDraw_20
	dd UI_OwnerDraw_20
	dd UI_OwnerDraw_20
	dd UI_OwnerDraw_20
	dd UI_OwnerDraw_20
	dd UI_OwnerDraw_20
	dd UI_OwnerDraw_20
	dd UI_OwnerDraw_20
	dd UI_OwnerDraw_20
	dd UI_OwnerDraw_20
	dd UI_OwnerDraw_20
	dd UI_OwnerDraw_20
	dd UI_OwnerDraw_20
	dd UI_OwnerDraw_20
	dd UI_OwnerDraw_20
	dd UI_OwnerDraw_20
	dd UI_OwnerDraw_20
	dd UI_OwnerDraw_20
	dd UI_OwnerDraw_20
	dd UI_OwnerDraw_20
	dd UI_OwnerDraw_20
	dd UI_OwnerDraw_20
	dd UI_OwnerDraw_280
	dd UI_OwnerDraw_20
	dd UI_OwnerDraw_290
	dd UI_OwnerDraw_20
	dd UI_OwnerDraw_20
	dd UI_OwnerDraw_300
	dd UI_OwnerDraw_20
	dd UI_OwnerDraw_20
	dd UI_OwnerDraw_310
	dd UI_OwnerDraw_320
	dd UI_OwnerDraw_20
	dd UI_OwnerDraw_20
	dd UI_OwnerDraw_20
	dd UI_OwnerDraw_20
	dd UI_OwnerDraw_20
	dd UI_OwnerDraw_20
	dd UI_OwnerDraw_20
	dd UI_OwnerDraw_20
	dd UI_OwnerDraw_20
	dd UI_OwnerDraw_20
	dd UI_OwnerDraw_330
	dd UI_OwnerDraw_340
	dd UI_OwnerDraw_350
	dd UI_OwnerDraw_350
	dd UI_OwnerDraw_350
	dd UI_OwnerDraw_350


;UI_TextWidth(char const*, int, Font_s*, float)
UI_TextWidth:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0x10]
	mov eax, [ebp+0x14]
	mov [esp+0x4], eax
	mov [esp], ebx
	call R_NormalizedTextScale
	fstp dword [ebp-0xc]
	mov [esp+0x8], ebx
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call R_TextWidth
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0xc]
	cvttss2si eax, xmm0
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	nop


;UI_MouseEvent(int, int, int)
UI_MouseEvent:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	cvtsi2ss xmm0, dword [ebp+0xc]
	mov eax, scrPlaceFull
	divss xmm0, dword [eax+0x8]
	movss [uiInfoArray+0x10], xmm0
	cvtsi2ss xmm1, dword [ebp+0x10]
	divss xmm1, dword [eax+0xc]
	movss [uiInfoArray+0x14], xmm1
	pxor xmm2, xmm2
	ucomiss xmm0, xmm2
	jb UI_MouseEvent_10
	ucomiss xmm0, [_float_640_00000000]
	jbe UI_MouseEvent_20
UI_MouseEvent_10:
	xor eax, eax
UI_MouseEvent_50:
	mov [uiInfoArray+0x18], eax
	test eax, eax
	setz al
	movzx eax, al
	mov [esp], eax
	call CL_ShowSystemCursor
	mov eax, [uiInfoArray+0x18]
	test eax, eax
	jnz UI_MouseEvent_30
UI_MouseEvent_40:
	leave
	ret
UI_MouseEvent_30:
	mov dword [esp], uiInfoArray
	call Menu_Count
	test eax, eax
	jle UI_MouseEvent_40
	mov dword [esp], uiInfoArray
	call Display_MouseMove
	leave
	ret
UI_MouseEvent_20:
	jp UI_MouseEvent_10
	ucomiss xmm1, xmm2
	jb UI_MouseEvent_10
	ucomiss xmm1, [_float_480_00000000]
	ja UI_MouseEvent_10
	jp UI_MouseEvent_10
	mov eax, 0x1
	jmp UI_MouseEvent_50


;UI_TextHeight(Font_s*, float)
UI_TextHeight:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call R_NormalizedTextScale
	fstp dword [ebp-0xc]
	mov [esp], ebx
	call R_TextHeight
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0xc]
	cvttss2si eax, xmm0
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	nop


;UI_UpdateTime(int, int)
UI_UpdateTime:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0xc]
	mov ecx, eax
	sub ecx, [uiInfoArray+0x8]
	mov [uiInfoArray+0xc], ecx
	mov [uiInfoArray+0x8], eax
	mov eax, [uiInfoArray+0x188c]
	mov edx, eax
	and edx, 0x80000003
	js UI_UpdateTime_10
UI_UpdateTime_60:
	mov [edx*4+uiInfoArray+0x1890], ecx
	add eax, 0x1
	mov [uiInfoArray+0x188c], eax
	cmp eax, 0x4
	jle UI_UpdateTime_20
	xor edx, edx
	mov eax, uiInfoArray
	mov ecx, uiInfoArray+0x10
UI_UpdateTime_30:
	add edx, [eax+0x1890]
	add eax, 0x4
	cmp ecx, eax
	jnz UI_UpdateTime_30
	test edx, edx
	jnz UI_UpdateTime_40
	mov eax, 0xfa0
UI_UpdateTime_50:
	cvtsi2ss xmm0, eax
	movss [uiInfoArray+0x28], xmm0
UI_UpdateTime_20:
	pop ebp
	ret
UI_UpdateTime_40:
	mov eax, 0xfa0
	mov ecx, edx
	cdq
	idiv ecx
	jmp UI_UpdateTime_50
UI_UpdateTime_10:
	sub edx, 0x1
	or edx, 0xfffffffc
	add edx, 0x1
	jmp UI_UpdateTime_60
	nop


;UI_CloseMenu_f()
UI_CloseMenu_f:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x54
	mov dword [esp+0x8], 0x40
	lea ebx, [ebp-0x48]
	mov [esp+0x4], ebx
	mov dword [esp], 0x1
	call Cmd_ArgsBuffer
	mov [esp+0x4], ebx
	mov dword [esp], uiInfoArray
	call Menus_CloseByName
	add esp, 0x54
	pop ebx
	pop ebp
	ret


;UI_FeederCount(int, float)
UI_FeederCount:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	movss xmm0, dword [ebp+0xc]
	ucomiss xmm0, [_float_4_00000000]
	jnz UI_FeederCount_10
	jp UI_FeederCount_10
	mov eax, [ui_netGameType]
	mov esi, [eax+0xc]
	mov eax, [sharedUiInfo+0x1c58]
	test eax, eax
	jle UI_FeederCount_20
	xor edi, edi
	xor ebx, ebx
	mov edx, sharedUiInfo
UI_FeederCount_40:
	mov dword [edx+0x1cf8], 0x0
	mov eax, [edx+0x1c70]
	mov ecx, esi
	sar eax, cl
	test al, 0x1
	jz UI_FeederCount_30
	add ebx, 0x1
	mov dword [edx+0x1cf8], 0x1
UI_FeederCount_30:
	add edi, 0x1
	add edx, 0xa0
	cmp [sharedUiInfo+0x1c58], edi
	jg UI_FeederCount_40
	mov eax, ebx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
UI_FeederCount_10:
	ucomiss xmm0, [_float_9_00000000]
	jnz UI_FeederCount_50
	jp UI_FeederCount_50
	mov ebx, [sharedUiInfo+0x6e84]
	mov eax, ebx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
UI_FeederCount_20:
	xor ebx, ebx
UI_FeederCount_80:
	mov eax, ebx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
UI_FeederCount_50:
	ucomiss xmm0, [_float_2_00000000]
	jz UI_FeederCount_60
UI_FeederCount_90:
	ucomiss xmm0, [_float_13_00000000]
	jnz UI_FeederCount_70
	jp UI_FeederCount_70
	mov ebx, [sharedUiInfo+0x1bce4]
	jmp UI_FeederCount_80
UI_FeederCount_60:
	jp UI_FeederCount_90
	mov eax, [ui_netSource]
	mov eax, [eax+0xc]
	mov [esp], eax
	call LAN_GetServerCount
	cmp eax, [sharedUiInfo+0x1ab7c]
	jz UI_FeederCount_100
	mov [sharedUiInfo+0x1ab7c], eax
	mov eax, [sharedUiInfo+0x1ab78]
	test eax, eax
	jnz UI_FeederCount_110
UI_FeederCount_100:
	mov ebx, [sharedUiInfo+0x1ab78]
	jmp UI_FeederCount_80
UI_FeederCount_70:
	ucomiss xmm0, [_float_7_00000000]
	jz UI_FeederCount_120
UI_FeederCount_170:
	ucomiss xmm0, [_float_39_00000000]
	jp UI_FeederCount_130
	jz UI_FeederCount_20
UI_FeederCount_130:
	ucomiss xmm0, [_float_20_00000000]
	jnz UI_FeederCount_140
	jnp UI_FeederCount_150
UI_FeederCount_140:
	ucomiss xmm0, [_float_24_00000000]
	jnz UI_FeederCount_160
	jp UI_FeederCount_160
	mov ebx, [uiInfoArray+0x1684]
	jmp UI_FeederCount_80
UI_FeederCount_120:
	jp UI_FeederCount_170
UI_FeederCount_150:
	mov eax, [uiInfoArray+0x8]
	cmp eax, [uiInfoArray+0x167c]
	jg UI_FeederCount_180
UI_FeederCount_190:
	mov ebx, [sharedUiInfo+0x48]
	jmp UI_FeederCount_80
UI_FeederCount_110:
	mov dword [sharedUiInfo+0x72f4], 0xffffffff
	mov dword [esp+0x4], 0x1
	mov dword [esp], uiInfoArray
	call UI_BuildServerDisplayList
	jmp UI_FeederCount_100
UI_FeederCount_180:
	add eax, 0xbb8
	mov [uiInfoArray+0x167c], eax
	mov eax, [ebp+0x8]
	call UI_BuildPlayerList
	jmp UI_FeederCount_190
UI_FeederCount_160:
	ucomiss xmm0, [_float_29_00000000]
	jnz UI_FeederCount_20
	jp UI_FeederCount_20
	mov ebx, [sharedUiInfo+0x1250]
	jmp UI_FeederCount_80
	nop


;Load_ScriptMenu(int, char const*, int)
Load_ScriptMenu:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x114
	lea ebx, [ebp-0x108]
	mov dword [ebp-0x108], 0x6d5f6975
	mov dword [ebp-0x104], 0x63732f70
	mov dword [ebp-0x100], 0x74706972
	mov dword [ebp-0xfc], 0x756e656d
	mov word [ebp-0xf8], 0x2f73
	mov byte [ebp-0xf6], 0x0
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x100
	mov [esp], ebx
	call Q_strncat
	mov dword [esp+0x8], _cstring_menu
	mov dword [esp+0x4], 0x100
	mov [esp], ebx
	call Q_strncat
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov [esp], ebx
	call UI_LoadMenu
	test eax, eax
	jz Load_ScriptMenu_10
	mov [esp+0x4], eax
	mov dword [esp], uiInfoArray
	call UI_AddMenuList
	mov eax, 0x1
Load_ScriptMenu_10:
	add esp, 0x114
	pop ebx
	pop ebp
	ret


;UI_CheckExecKey(int, int)
UI_CheckExecKey:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0xc]
	mov dword [esp], uiInfoArray
	call Menu_GetFocused
	mov edx, eax
	mov eax, g_editingField
	mov ecx, [eax]
	test ecx, ecx
	jnz UI_CheckExecKey_10
	cmp ebx, 0x100
	jg UI_CheckExecKey_20
	test edx, edx
	jz UI_CheckExecKey_20
	mov eax, [edx+0xd0]
	test eax, eax
	jnz UI_CheckExecKey_30
	jmp UI_CheckExecKey_20
UI_CheckExecKey_40:
	mov eax, [eax+0x8]
	test eax, eax
	jz UI_CheckExecKey_20
UI_CheckExecKey_30:
	cmp ebx, [eax]
	jnz UI_CheckExecKey_40
UI_CheckExecKey_10:
	mov eax, 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret
UI_CheckExecKey_20:
	xor eax, eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;UI_IsFullscreen(int)
UI_IsFullscreen:
	push ebp
	mov ebp, esp
	mov dword [ebp+0x8], uiInfoArray
	pop ebp
	jmp Menus_AnyFullScreenVisible


;UI_CloseAllMenus(int)
UI_CloseAllMenus:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp], uiInfoArray
	call Menus_CloseAll
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call UI_SetActiveMenu
	leave
	ret
	nop


;UI_DrawTopBottom(ScreenPlacement const*, float, float, float, float, int, int, float, float const*)
UI_DrawTopBottom:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	movss xmm0, dword [ebp+0x10]
	mov edi, [ebp+0x20]
	mov esi, [ebp+0x28]
	mov eax, [sharedUiInfo+0x20]
	mov [esp+0x30], eax
	mov [esp+0x2c], esi
	xor ebx, ebx
	mov [esp+0x28], ebx
	mov [esp+0x24], ebx
	mov [esp+0x20], ebx
	mov [esp+0x1c], ebx
	mov [esp+0x18], edi
	mov eax, [ebp+0x1c]
	mov [esp+0x14], eax
	movss xmm1, dword [ebp+0x24]
	movss [esp+0x10], xmm1
	movss xmm1, dword [ebp+0x14]
	movss [esp+0xc], xmm1
	movss [esp+0x8], xmm0
	movss xmm1, dword [ebp+0xc]
	movss [esp+0x4], xmm1
	mov eax, [ebp+0x8]
	mov [esp], eax
	movss [ebp-0x28], xmm0
	call CL_DrawStretchPic
	mov eax, [sharedUiInfo+0x20]
	mov [esp+0x30], eax
	mov [esp+0x2c], esi
	mov [esp+0x28], ebx
	mov [esp+0x24], ebx
	mov [esp+0x20], ebx
	mov [esp+0x1c], ebx
	mov [esp+0x18], edi
	mov eax, [ebp+0x1c]
	mov [esp+0x14], eax
	movss xmm1, dword [ebp+0x24]
	movss [esp+0x10], xmm1
	movss xmm1, dword [ebp+0x14]
	movss [esp+0xc], xmm1
	movss xmm0, dword [ebp-0x28]
	addss xmm0, [ebp+0x18]
	subss xmm0, [ebp+0x24]
	movss [esp+0x8], xmm0
	movss xmm0, dword [ebp+0xc]
	movss [esp+0x4], xmm0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CL_DrawStretchPic
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;UI_GetActiveMenu(int)
UI_GetActiveMenu:
	push ebp
	mov ebp, esp
	mov eax, [uiInfoArray+0x18a0]
	pop ebp
	ret


;UI_GetBlurRadius(int)
UI_GetBlurRadius:
	push ebp
	mov ebp, esp
	fld dword [uiInfoArray+0x2c]
	pop ebp
	ret
	nop


;UI_GetFontHandle(ScreenPlacement const*, int, float)
UI_GetFontHandle:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0xc]
	cmp eax, 0x2
	jz UI_GetFontHandle_10
	cmp eax, 0x3
	jz UI_GetFontHandle_20
	cmp eax, 0x5
	jz UI_GetFontHandle_30
	cmp eax, 0x6
	jz UI_GetFontHandle_40
	movss xmm1, dword [ebp+0x10]
	mov edx, [ebp+0x8]
	mulss xmm1, [edx+0x4]
	cmp eax, 0x4
	jz UI_GetFontHandle_50
	mov eax, [ui_smallFont]
	movss xmm0, dword [eax+0xc]
	ucomiss xmm0, xmm1
	jae UI_GetFontHandle_20
	mov eax, [ui_extraBigFont]
	ucomiss xmm1, [eax+0xc]
	jae UI_GetFontHandle_60
	mov eax, [ui_bigFont]
	ucomiss xmm1, [eax+0xc]
	jae UI_GetFontHandle_10
UI_GetFontHandle_80:
	mov eax, [sharedUiInfo+0x38]
	pop ebp
	ret
UI_GetFontHandle_50:
	mov eax, [ui_smallFont]
	movss xmm0, dword [eax+0xc]
	ucomiss xmm0, xmm1
	jb UI_GetFontHandle_70
UI_GetFontHandle_20:
	mov eax, [sharedUiInfo+0x2c]
	pop ebp
	ret
UI_GetFontHandle_10:
	mov eax, [sharedUiInfo+0x28]
	pop ebp
	ret
UI_GetFontHandle_30:
	mov eax, [sharedUiInfo+0x30]
	pop ebp
	ret
UI_GetFontHandle_40:
	mov eax, [sharedUiInfo+0x40]
	pop ebp
	ret
UI_GetFontHandle_60:
	mov eax, [sharedUiInfo+0x3c]
	pop ebp
	ret
UI_GetFontHandle_70:
	mov eax, [ui_bigFont]
	ucomiss xmm1, [eax+0xc]
	jb UI_GetFontHandle_80
	mov eax, [sharedUiInfo+0x34]
	pop ebp
	ret


;UI_RunMenuScript(int, char const**, char const*)
UI_RunMenuScript:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x10dc
	mov esi, [ebp+0xc]
	mov dword [esp+0x8], 0x400
	lea ebx, [ebp-0x49c]
	mov [esp+0x4], ebx
	mov [esp], esi
	call String_Parse
	test eax, eax
	jnz UI_RunMenuScript_10
UI_RunMenuScript_70:
	add esp, 0x10dc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
UI_RunMenuScript_10:
	mov dword [esp+0x4], _cstring_startserver
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz UI_RunMenuScript_20
	mov eax, [ui_dedicated]
	mov eax, [eax+0xc]
	test eax, eax
	jnz UI_RunMenuScript_30
	mov dword [esp], _cstring_sv_punkbuster
	call Cvar_VariableBooleanValue
	mov ebx, eax
	mov dword [esp], _cstring_cl_punkbuster
	call Cvar_VariableBooleanValue
	test bl, bl
	jz UI_RunMenuScript_30
	test al, al
	jz UI_RunMenuScript_40
UI_RunMenuScript_30:
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cg_thirdperson
	call Cvar_SetBoolByName
	mov eax, [ui_dedicated]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
	call va
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], eax
	mov dword [esp], _cstring_dedicated
	call Cvar_SetFromStringByNameFromSource
	mov eax, [ui_netGameType]
	mov eax, [eax+0xc]
	mov eax, [eax*8+sharedUiInfo+0x1150]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_g_gametype
	call Cvar_SetStringByName
	mov eax, [ui_currentNetMap]
	mov eax, [eax+0xc]
	lea eax, [eax+eax*4]
	shl eax, 0x5
	mov eax, [eax+sharedUiInfo+0x1c60]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_wait__wait__map_
	call va
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Cbuf_AddText
	add esp, 0x10dc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
UI_RunMenuScript_20:
	mov dword [esp+0x4], _cstring_getcdkey
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz UI_RunMenuScript_50
	mov dword [esp+0xc], 0x5
	lea esi, [ebp-0x89c]
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x11
	lea ebx, [ebp-0x109c]
	mov [esp], ebx
	call CLUI_GetCDKey
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_cdkey1
	call Cvar_SetStringByName
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_cdkey2
	call Cvar_SetStringByName
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_cdkey3
	call Cvar_SetStringByName
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_cdkey4
	call Cvar_SetStringByName
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_cdkey5
	call Cvar_SetStringByName
	cld
	mov ecx, 0xffffffff
	mov edi, ebx
	xor eax, eax
	repne scasb
	cmp ecx, 0xffffffee
	jz UI_RunMenuScript_60
UI_RunMenuScript_160:
	cld
	mov ecx, 0xffffffff
	mov edi, esi
	xor eax, eax
	repne scasb
	cmp ecx, 0xfffffffa
	jnz UI_RunMenuScript_70
	mov dword [esp+0x8], 0x5
	mov [esp+0x4], esi
	lea ebx, [ebp-0x9c]
	mov [esp], ebx
	call Q_strncpyz
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_cdkey5
	call Cvar_SetStringByName
	jmp UI_RunMenuScript_70
UI_RunMenuScript_50:
	mov dword [esp+0x4], _cstring_verifycdkey
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jz UI_RunMenuScript_80
	mov dword [esp+0x4], _cstring_loadarenas
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz UI_RunMenuScript_90
	call UI_LoadArenas
	mov dword [esp], _cstring_g_gametype
	call Cvar_VariableString
	mov edi, eax
	mov eax, [sharedUiInfo+0x114c]
	test eax, eax
	jg UI_RunMenuScript_100
UI_RunMenuScript_210:
	mov eax, [ui_netGameType]
	mov ebx, [eax+0xc]
	mov eax, [sharedUiInfo+0x1c58]
	test eax, eax
	jle UI_RunMenuScript_110
	xor esi, esi
	mov edx, sharedUiInfo
UI_RunMenuScript_130:
	mov dword [edx+0x1cf8], 0x0
	mov eax, [edx+0x1c70]
	mov ecx, ebx
	sar eax, cl
	test al, 0x1
	jz UI_RunMenuScript_120
	mov dword [edx+0x1cf8], 0x1
UI_RunMenuScript_120:
	add esi, 0x1
	add edx, 0xa0
	cmp [sharedUiInfo+0x1c58], esi
	jg UI_RunMenuScript_130
UI_RunMenuScript_110:
	mov dword [esp+0x10], _cstring_createserver_map
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], 0x0
	mov dword [esp], uiInfoArray
	call Menu_SetFeederSelection
	mov eax, [ebp+0x8]
	call UI_SelectCurrentMap
	jmp UI_RunMenuScript_70
UI_RunMenuScript_80:
	mov byte [ebp-0x89c], 0x0
	mov dword [esp], _cstring_cdkey1
	call Cvar_GetVariantString
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x400
	lea esi, [ebp-0x89c]
	mov [esp], esi
	call Q_strncat
	mov dword [esp], _cstring_cdkey2
	call Cvar_GetVariantString
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x400
	mov [esp], esi
	call Q_strncat
	mov dword [esp], _cstring_cdkey3
	call Cvar_GetVariantString
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x400
	mov [esp], esi
	call Q_strncat
	mov dword [esp], _cstring_cdkey4
	call Cvar_GetVariantString
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x400
	mov [esp], esi
	call Q_strncat
	mov byte [ebp-0x109c], 0x0
	mov dword [esp], _cstring_cdkey5
	call Cvar_GetVariantString
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x400
	lea ebx, [ebp-0x109c]
	mov [esp], ebx
	call Q_strncat
	mov [esp+0x4], ebx
	mov [esp], esi
	call CL_CDKeyValidate
	test eax, eax
	jz UI_RunMenuScript_140
	mov dword [esp], _cstring_exe_cdkeyvalid
	call UI_SafeTranslateString
	mov [esp+0x4], eax
	mov dword [esp], _cstring_ui_cdkeyvalid
	call Cvar_SetStringByName
	mov [esp+0x4], ebx
	mov [esp], esi
	call CLUI_SetCDKey
	jmp UI_RunMenuScript_70
UI_RunMenuScript_40:
	mov dword [esp+0x4], _cstring_startpb_popmenu
	mov dword [esp], uiInfoArray
	call Menus_OpenByName
	jmp UI_RunMenuScript_70
UI_RunMenuScript_140:
	mov dword [esp], _cstring_exe_cdkeyinvalid
	call UI_SafeTranslateString
	mov [esp+0x4], eax
	mov dword [esp], _cstring_ui_cdkeyvalid
	call Cvar_SetStringByName
	jmp UI_RunMenuScript_70
UI_RunMenuScript_90:
	mov dword [esp+0x4], _cstring_loadgameinfo
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz UI_RunMenuScript_150
	mov dword [sharedUiInfo+0x114c], 0x0
	mov dword [sharedUiInfo+0x1250], 0x0
	mov dword [sharedUiInfo+0x1b54], 0x0
	mov dword [esp], _cstring_all
	call String_Alloc
	mov [sharedUiInfo+0x1b58], eax
	mov eax, [sharedUiInfo+0x1b54]
	mov dword [eax*8+sharedUiInfo+0x1b5c], _cstring_null
	add dword [sharedUiInfo+0x1b54], 0x1
	mov eax, useFastFile
	mov edx, [eax]
	mov eax, UI_GetGameTypesList_FastFile
	cmp byte [edx+0xc], 0x0
	mov edx, UI_GetGameTypesList_LoadObj
	cmovz eax, edx
	call eax
	mov edi, [sharedUiInfo+0x114c]
	test edi, edi
	jnz UI_RunMenuScript_70
	mov dword [esp+0x4], _cstring_no_game_type_scr
	mov dword [esp], 0x1
	call Com_Error
	jmp UI_RunMenuScript_70
UI_RunMenuScript_60:
	mov dword [esp+0x8], 0x5
	mov [esp+0x4], ebx
	lea ebx, [ebp-0x9c]
	mov [esp], ebx
	call Q_strncpyz
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_cdkey1
	call Cvar_SetStringByName
	mov dword [esp+0x8], 0x5
	lea eax, [ebp-0x1098]
	mov [esp+0x4], eax
	mov [esp], ebx
	call Q_strncpyz
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_cdkey2
	call Cvar_SetStringByName
	mov dword [esp+0x8], 0x5
	lea eax, [ebp-0x1094]
	mov [esp+0x4], eax
	mov [esp], ebx
	call Q_strncpyz
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_cdkey3
	call Cvar_SetStringByName
	mov dword [esp+0x8], 0x5
	lea eax, [ebp-0x1090]
	mov [esp+0x4], eax
	mov [esp], ebx
	call Q_strncpyz
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_cdkey4
	call Cvar_SetStringByName
	jmp UI_RunMenuScript_160
UI_RunMenuScript_150:
	mov dword [esp+0x4], _cstring_loadmods
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz UI_RunMenuScript_170
	mov dword [sharedUiInfo+0x6e84], 0x0
	mov dword [sharedUiInfo+0x6e88], 0x0
	mov dword [esp+0x10], 0x800
	lea edi, [ebp-0x109c]
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_modlist
	call FS_GetFileList
	mov [ebp-0x10c0], eax
	test eax, eax
	jle UI_RunMenuScript_70
	mov [ebp-0x10bc], edi
	mov dword [ebp-0x10b8], 0x0
	mov esi, [sharedUiInfo+0x6e84]
	jmp UI_RunMenuScript_180
UI_RunMenuScript_190:
	mov edi, [ebp-0x10bc]
UI_RunMenuScript_180:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	repne scasb
	mov ebx, ecx
	not ebx
	mov edi, [ebp-0x10bc]
	add edi, ebx
	mov eax, [ebp-0x10bc]
	mov [esp], eax
	call String_Alloc
	mov [esi*8+sharedUiInfo+0x6c84], eax
	mov esi, [sharedUiInfo+0x6e84]
	mov [esp], edi
	call String_Alloc
	mov [esi*8+sharedUiInfo+0x6c88], eax
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	repne scasb
	not ecx
	lea ecx, [ecx+ebx-0x1]
	mov edx, [ebp-0x10bc]
	lea ecx, [edx+ecx+0x1]
	mov [ebp-0x10bc], ecx
	mov eax, [sharedUiInfo+0x6e84]
	add eax, 0x1
	mov esi, eax
	mov [sharedUiInfo+0x6e84], eax
	cmp eax, 0x3f
	jg UI_RunMenuScript_70
	add dword [ebp-0x10b8], 0x1
	mov ecx, [ebp-0x10b8]
	cmp [ebp-0x10c0], ecx
	jnz UI_RunMenuScript_190
	jmp UI_RunMenuScript_70
UI_RunMenuScript_100:
	xor esi, esi
	mov ebx, sharedUiInfo
	jmp UI_RunMenuScript_200
UI_RunMenuScript_220:
	add esi, 0x1
	add ebx, 0x8
	cmp [sharedUiInfo+0x114c], esi
	jle UI_RunMenuScript_210
UI_RunMenuScript_200:
	mov eax, [ebx+0x1150]
	mov [esp+0x4], eax
	mov [esp], edi
	call Q_stricmp
	test eax, eax
	jnz UI_RunMenuScript_220
	mov [esp+0x4], esi
	mov eax, [ui_netGameType]
	mov [esp], eax
	call Cvar_SetInt
	mov eax, [esi*8+sharedUiInfo+0x1150]
	mov [esp+0x4], eax
	mov eax, [ui_netGameTypeName]
	mov [esp], eax
	call Cvar_SetString
	jmp UI_RunMenuScript_210
UI_RunMenuScript_170:
	mov dword [esp+0x4], _cstring_votetypemap
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz UI_RunMenuScript_230
	mov eax, [ui_currentNetMap]
	mov eax, [eax+0xc]
	lea eax, [eax+eax*4]
	shl eax, 0x5
	mov eax, [eax+sharedUiInfo+0x1c60]
	mov [esp+0x8], eax
	mov eax, [ui_netGameType]
	mov eax, [eax+0xc]
	mov eax, [eax*8+sharedUiInfo+0x1150]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_callvote_typemap
	call va
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Cbuf_AddText
	jmp UI_RunMenuScript_70
UI_RunMenuScript_230:
	mov dword [esp+0x4], _cstring_votemap
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz UI_RunMenuScript_240
	mov eax, [ui_currentNetMap]
	mov eax, [eax+0xc]
	test eax, eax
	js UI_RunMenuScript_70
	cmp eax, [sharedUiInfo+0x1c58]
	jge UI_RunMenuScript_70
	lea eax, [eax+eax*4]
	shl eax, 0x5
	mov eax, [eax+sharedUiInfo+0x1c60]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_callvote_map_s
	call va
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call Cbuf_AddText
	jmp UI_RunMenuScript_70
UI_RunMenuScript_240:
	mov dword [esp+0x4], _cstring_votegame
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz UI_RunMenuScript_250
	mov eax, [ui_netGameType]
	mov eax, [eax+0xc]
	mov eax, [eax*8+sharedUiInfo+0x1150]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_callvote_g_gamet
	call va
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call Cbuf_AddText
	jmp UI_RunMenuScript_70
UI_RunMenuScript_250:
	mov dword [esp+0x4], _cstring_clearerror
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz UI_RunMenuScript_260
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_com_errormessage
	call Cvar_SetStringByName
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_com_isnotice
	call Cvar_SetBoolByName
	mov eax, clientUIActives
	mov esi, [eax+0xc]
	test esi, esi
	jle UI_RunMenuScript_70
	mov dword [esp+0x4], 0xffffffef
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Key_RemoveCatcher
	jmp UI_RunMenuScript_70
UI_RunMenuScript_260:
	mov dword [esp+0x4], _cstring_refreshservers
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz UI_RunMenuScript_270
	mov edx, 0x1
	mov eax, [ebp+0x8]
	call UI_StartServerRefresh
	mov dword [esp+0x4], 0x1
	mov dword [esp], uiInfoArray
	call UI_BuildServerDisplayList
	jmp UI_RunMenuScript_70
UI_RunMenuScript_270:
	mov dword [esp+0x4], _cstring_refreshfilter
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz UI_RunMenuScript_280
	xor edx, edx
	mov eax, [ebp+0x8]
	call UI_StartServerRefresh
	mov dword [esp+0x4], 0x1
	mov dword [esp], uiInfoArray
	call UI_BuildServerDisplayList
	jmp UI_RunMenuScript_70
UI_RunMenuScript_280:
	mov dword [esp+0x4], _cstring_addplayerprofile
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz UI_RunMenuScript_290
	mov dword [uiInfoArray+0x1684], 0x0
	mov dword [uiInfoArray+0x1788], 0x1
	mov dword [esp+0x10], 0x3
	lea eax, [ebp-0x1c]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_
	mov dword [esp], _cstring_profiles
	call FS_ListFiles
	mov edi, eax
	mov ebx, [ebp-0x1c]
	test ebx, ebx
	jg UI_RunMenuScript_300
UI_RunMenuScript_480:
	mov dword [esp+0x4], 0x3
	mov [esp], edi
	call FS_FreeFileList
	mov eax, [uiInfoArray+0x1684]
	cmp eax, 0x0
	jz UI_RunMenuScript_310
	jg UI_RunMenuScript_320
UI_RunMenuScript_460:
	mov dword [esp+0xc], UI_PlayerProfilesQsortCompare
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], uiInfoArray+0x178c
	call qsort
	mov esi, [uiInfoArray+0xa74]
	mov eax, esi
	sub eax, 0x1
	js UI_RunMenuScript_330
	lea ebx, [eax*4+uiInfoArray+0xa34]
	xor edi, edi
	jmp UI_RunMenuScript_340
UI_RunMenuScript_350:
	add edi, 0x1
	sub ebx, 0x4
	cmp edi, esi
	jz UI_RunMenuScript_330
UI_RunMenuScript_340:
	mov eax, [ebx]
	test byte [eax+0x50], 0x4
	jz UI_RunMenuScript_350
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x18
	mov [esp+0x4], eax
	mov dword [esp], uiInfoArray
	call Menu_SetFeederSelection
	jmp UI_RunMenuScript_350
UI_RunMenuScript_290:
	mov dword [esp+0x4], _cstring_sortplayerprofil
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz UI_RunMenuScript_360
	xor eax, eax
	cmp dword [uiInfoArray+0x1788], 0x0
	setz al
	mov [uiInfoArray+0x1788], eax
	mov eax, [uiInfoArray+0x1684]
	cmp eax, 0x0
	jz UI_RunMenuScript_70
	jg UI_RunMenuScript_370
UI_RunMenuScript_410:
	mov dword [esp+0xc], UI_PlayerProfilesQsortCompare
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], uiInfoArray+0x178c
	call qsort
	mov esi, [uiInfoArray+0xa74]
	mov eax, esi
	sub eax, 0x1
	js UI_RunMenuScript_70
	lea ebx, [eax*4+uiInfoArray+0xa34]
	xor edi, edi
	jmp UI_RunMenuScript_380
UI_RunMenuScript_390:
	add edi, 0x1
	sub ebx, 0x4
	cmp esi, edi
	jz UI_RunMenuScript_70
UI_RunMenuScript_380:
	mov eax, [ebx]
	test byte [eax+0x50], 0x4
	jz UI_RunMenuScript_390
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x18
	mov [esp+0x4], eax
	mov dword [esp], uiInfoArray
	call Menu_SetFeederSelection
	jmp UI_RunMenuScript_390
UI_RunMenuScript_370:
	xor edx, edx
	mov ecx, uiInfoArray
UI_RunMenuScript_400:
	mov [ecx+0x178c], edx
	add edx, 0x1
	add ecx, 0x4
	cmp eax, edx
	jg UI_RunMenuScript_400
	jmp UI_RunMenuScript_410
UI_RunMenuScript_360:
	mov dword [esp+0x4], _cstring_selectactiveplay
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz UI_RunMenuScript_420
	mov eax, com_playerProfile
	mov eax, [eax]
	mov esi, [eax+0xc]
	mov ecx, [uiInfoArray+0x1684]
	test ecx, ecx
	jle UI_RunMenuScript_70
	mov dword [ebp-0x10b4], 0x0
	mov ebx, uiInfoArray
UI_RunMenuScript_440:
	mov eax, [ebx+0x178c]
	mov eax, [eax*4+uiInfoArray+0x1688]
	mov [esp+0x4], eax
	mov [esp], esi
	call Q_stricmp
	test eax, eax
	jz UI_RunMenuScript_430
	add dword [ebp-0x10b4], 0x1
	add ebx, 0x4
	mov edx, [ebp-0x10b4]
	cmp [uiInfoArray+0x1684], edx
	jg UI_RunMenuScript_440
	jmp UI_RunMenuScript_70
UI_RunMenuScript_330:
	mov eax, [uiInfoArray+0x1684]
UI_RunMenuScript_310:
	mov [esp+0x4], eax
	mov eax, [ui_playerProfileCount]
	mov [esp], eax
	call Cvar_SetInt
	jmp UI_RunMenuScript_70
UI_RunMenuScript_320:
	xor edx, edx
	mov ecx, uiInfoArray
UI_RunMenuScript_450:
	mov [ecx+0x178c], edx
	add edx, 0x1
	add ecx, 0x4
	cmp eax, edx
	jg UI_RunMenuScript_450
	jmp UI_RunMenuScript_460
UI_RunMenuScript_300:
	xor esi, esi
UI_RunMenuScript_470:
	mov ebx, [uiInfoArray+0x1684]
	mov eax, [edi+esi*4]
	mov [esp], eax
	call String_Alloc
	mov [ebx*4+uiInfoArray+0x1688], eax
	add dword [uiInfoArray+0x1684], 0x1
	add esi, 0x1
	cmp [ebp-0x1c], esi
	jg UI_RunMenuScript_470
	jmp UI_RunMenuScript_480
UI_RunMenuScript_430:
	mov edx, [ebp-0x10b4]
	test edx, edx
	js UI_RunMenuScript_70
	mov ecx, [ebp-0x10b4]
	cmp [uiInfoArray+0x1684], ecx
	jle UI_RunMenuScript_70
	mov esi, [uiInfoArray+0xa74]
	mov eax, esi
	sub eax, 0x1
	js UI_RunMenuScript_70
	lea ebx, [eax*4+uiInfoArray+0xa34]
	xor edi, edi
UI_RunMenuScript_500:
	mov eax, [ebx]
	test byte [eax+0x50], 0x4
	jz UI_RunMenuScript_490
	mov dword [esp+0x10], 0x0
	mov edx, [ebp-0x10b4]
	mov [esp+0xc], edx
	mov dword [esp+0x8], 0x18
	mov [esp+0x4], eax
	mov dword [esp], uiInfoArray
	call Menu_SetFeederSelection
UI_RunMenuScript_490:
	add edi, 0x1
	sub ebx, 0x4
	cmp esi, edi
	jnz UI_RunMenuScript_500
	jmp UI_RunMenuScript_70
UI_RunMenuScript_420:
	mov dword [esp+0x4], _cstring_createplayerprof
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz UI_RunMenuScript_510
	mov eax, [ui_playerProfileNameNew]
	mov eax, [eax+0xc]
	cmp byte [eax], 0x0
	jz UI_RunMenuScript_70
	mov dword [esp+0x8], 0x20
	mov [esp+0x4], eax
	lea ecx, [ebp-0x89c]
	mov [esp], ecx
	call Q_strncpyz
	mov dword [esp+0x4], _cstring_null
	mov eax, [ui_playerProfileNameNew]
	mov [esp], eax
	call Cvar_SetString
	mov eax, [uiInfoArray+0x1684]
	cmp eax, 0x40
	jz UI_RunMenuScript_520
	test eax, eax
	jle UI_RunMenuScript_530
	xor esi, esi
	mov ebx, uiInfoArray
UI_RunMenuScript_550:
	mov eax, [ebx+0x1688]
	mov [esp+0x4], eax
	lea eax, [ebp-0x89c]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz UI_RunMenuScript_540
	add esi, 0x1
	add ebx, 0x4
	cmp [uiInfoArray+0x1684], esi
	jg UI_RunMenuScript_550
UI_RunMenuScript_530:
	lea edx, [ebp-0x89c]
	mov [esp], edx
	call Com_NewPlayerProfile
	test al, al
	jnz UI_RunMenuScript_560
	mov dword [esp+0x4], _cstring_profile_create_f
	mov dword [esp], uiInfoArray
	call Menus_OpenByName
	jmp UI_RunMenuScript_70
UI_RunMenuScript_510:
	mov dword [esp+0x4], _cstring_deleteplayerprof
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz UI_RunMenuScript_570
	mov eax, [uiInfoArray+0x1684]
	test eax, eax
	jz UI_RunMenuScript_70
	mov eax, [ui_playerProfileSelected]
	mov eax, [eax+0xc]
	mov [esp], eax
	call Com_DeletePlayerProfile
	test al, al
	jz UI_RunMenuScript_580
	mov eax, [ui_playerProfileSelected]
	mov esi, [eax+0xc]
	mov eax, [uiInfoArray+0x1684]
	test eax, eax
	jg UI_RunMenuScript_590
UI_RunMenuScript_690:
	mov dword [ebp-0x10ac], 0xffffffff
UI_RunMenuScript_670:
	mov edx, [ebp-0x10ac]
	mov ebx, [edx*4+uiInfoArray+0x178c]
	mov ecx, [uiInfoArray+0x1684]
	lea edx, [ecx-0x1]
	mov [uiInfoArray+0x1684], edx
	test edx, edx
	jz UI_RunMenuScript_600
	mov eax, [edx*4+uiInfoArray+0x1688]
	mov [ebx*4+uiInfoArray+0x1688], eax
	mov ebx, edx
	lea eax, [ecx-0x2]
	cmp [ebp-0x10ac], edx
	cmovnz eax, [ebp-0x10ac]
	mov [ebp-0x10ac], eax
	test edx, edx
	jg UI_RunMenuScript_610
UI_RunMenuScript_660:
	mov dword [esp+0xc], UI_PlayerProfilesQsortCompare
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], ebx
	mov dword [esp], uiInfoArray+0x178c
	call qsort
	mov esi, [uiInfoArray+0xa74]
	mov eax, esi
	sub eax, 0x1
	js UI_RunMenuScript_620
	lea ebx, [eax*4+uiInfoArray+0xa34]
	xor edi, edi
UI_RunMenuScript_640:
	mov eax, [ebx]
	test byte [eax+0x50], 0x4
	jz UI_RunMenuScript_630
	mov dword [esp+0x10], 0x0
	mov ecx, [ebp-0x10ac]
	mov [esp+0xc], ecx
	mov dword [esp+0x8], 0x18
	mov [esp+0x4], eax
	mov dword [esp], uiInfoArray
	call Menu_SetFeederSelection
UI_RunMenuScript_630:
	add edi, 0x1
	sub ebx, 0x4
	cmp edi, esi
	jnz UI_RunMenuScript_640
UI_RunMenuScript_620:
	mov eax, [uiInfoArray+0x1684]
	mov [esp+0x4], eax
	mov eax, [ui_playerProfileCount]
	mov [esp], eax
	call Cvar_SetInt
	jmp UI_RunMenuScript_70
UI_RunMenuScript_610:
	xor edx, edx
	mov ecx, uiInfoArray
	mov eax, [uiInfoArray+0x1684]
UI_RunMenuScript_650:
	mov [ecx+0x178c], edx
	add edx, 0x1
	mov ebx, eax
	add ecx, 0x4
	cmp edx, eax
	jl UI_RunMenuScript_650
	jmp UI_RunMenuScript_660
UI_RunMenuScript_600:
	mov dword [esp+0x4], _cstring_null
	mov eax, [ui_playerProfileSelected]
	mov [esp], eax
	call Cvar_SetString
	jmp UI_RunMenuScript_620
UI_RunMenuScript_590:
	mov dword [ebp-0x10ac], 0x0
	mov ebx, uiInfoArray
UI_RunMenuScript_680:
	mov eax, [ebx+0x178c]
	mov eax, [eax*4+uiInfoArray+0x1688]
	mov [esp+0x4], eax
	mov [esp], esi
	call Q_stricmp
	test eax, eax
	jz UI_RunMenuScript_670
	add dword [ebp-0x10ac], 0x1
	add ebx, 0x4
	mov eax, [ebp-0x10ac]
	cmp eax, [uiInfoArray+0x1684]
	jl UI_RunMenuScript_680
	jmp UI_RunMenuScript_690
UI_RunMenuScript_580:
	mov dword [esp+0x4], _cstring_profile_delete_f
	mov dword [esp], uiInfoArray
	call Menus_OpenByName
	jmp UI_RunMenuScript_70
UI_RunMenuScript_570:
	mov dword [esp+0x4], _cstring_loadplayerprofil
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz UI_RunMenuScript_700
	mov eax, [ui_playerProfileSelected]
	mov eax, [eax+0xc]
	cmp byte [eax], 0x0
	jz UI_RunMenuScript_70
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Com_ChangePlayerProfile
	jmp UI_RunMenuScript_70
UI_RunMenuScript_540:
	mov dword [esp+0x4], _cstring_profile_exists_p
	mov dword [esp], uiInfoArray
	call Menus_OpenByName
	jmp UI_RunMenuScript_70
UI_RunMenuScript_700:
	mov dword [esp+0x4], _cstring_runmod
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz UI_RunMenuScript_710
	mov eax, [sharedUiInfo+0x6e88]
	mov eax, [eax*8+sharedUiInfo+0x6c84]
	test eax, eax
	jz UI_RunMenuScript_70
	mov [esp+0x10], eax
	mov dword [esp+0xc], _cstring_mods
	mov dword [esp+0x8], _cstring_ss
	mov dword [esp+0x4], 0x104
	lea ebx, [ebp-0x109c]
	mov [esp], ebx
	call Com_sprintf
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz UI_RunMenuScript_720
	call DB_SyncXAssets
UI_RunMenuScript_720:
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_fs_game
	call Cvar_SetStringByName
	mov dword [esp+0x4], _cstring_vid_restart
	mov edx, [ebp+0x8]
	mov [esp], edx
	call Cbuf_AddText
	jmp UI_RunMenuScript_70
UI_RunMenuScript_710:
	mov dword [esp+0x4], _cstring_clearmods
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz UI_RunMenuScript_730
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz UI_RunMenuScript_740
	call DB_SyncXAssets
UI_RunMenuScript_740:
	mov dword [esp], _cstring_fs_game
	call Cvar_FindVar
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call Cvar_Reset
	mov dword [esp+0x4], _cstring_vid_restart
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call Cbuf_AddText
	jmp UI_RunMenuScript_70
UI_RunMenuScript_730:
	mov dword [esp+0x4], _cstring_closejoin
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz UI_RunMenuScript_750
	mov eax, [sharedUiInfo+0x72f0]
	test eax, eax
	jz UI_RunMenuScript_760
	mov dword [sharedUiInfo+0x72f0], 0x0
	mov eax, [sharedUiInfo+0x1ab80]
	mov [esp+0xc], eax
	mov eax, [sharedUiInfo+0x1ab78]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_d_servers_listed
	mov dword [esp], 0xd
	call Com_Printf
	mov eax, [ui_netSource]
	mov eax, [eax+0xc]
	mov [esp], eax
	call LAN_GetServerCount
	sub eax, [sharedUiInfo+0x1ab78]
	test eax, eax
	jle UI_RunMenuScript_770
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_d_servers_not_li
	mov dword [esp], 0xd
	call Com_Printf
UI_RunMenuScript_770:
	mov dword [sharedUiInfo+0x1ab84], 0x0
	mov dword [sharedUiInfo+0x1bce8], 0x0
	mov dword [uiInfoArray+0x24ac], 0x0
	mov dword [esp+0x4], 0x1
	mov dword [esp], uiInfoArray
	call UI_BuildServerDisplayList
	jmp UI_RunMenuScript_70
UI_RunMenuScript_760:
	mov dword [esp+0x4], _cstring_joinserver
	mov dword [esp], uiInfoArray
	call Menus_CloseByName
	mov dword [esp+0x4], _cstring_main
	mov dword [esp], uiInfoArray
	call Menus_OpenByName
	jmp UI_RunMenuScript_70
UI_RunMenuScript_750:
	mov dword [esp+0x4], _cstring_stoprefresh
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz UI_RunMenuScript_780
	mov eax, [sharedUiInfo+0x72f0]
	test eax, eax
	jnz UI_RunMenuScript_790
UI_RunMenuScript_920:
	mov dword [sharedUiInfo+0x1ab84], 0x0
	mov dword [sharedUiInfo+0x1bce8], 0x0
	mov dword [uiInfoArray+0x24ac], 0x0
	jmp UI_RunMenuScript_70
UI_RunMenuScript_520:
	mov dword [esp+0x4], _cstring_profile_create_t
	mov dword [esp], uiInfoArray
	call Menus_OpenByName
	jmp UI_RunMenuScript_70
UI_RunMenuScript_560:
	mov ebx, [uiInfoArray+0x1684]
	lea ecx, [ebp-0x89c]
	mov [esp], ecx
	call String_Alloc
	mov [ebx*4+uiInfoArray+0x1688], eax
	mov ebx, [uiInfoArray+0x1684]
	add ebx, 0x1
	mov [uiInfoArray+0x1684], ebx
	cmp ebx, 0x0
	jz UI_RunMenuScript_800
	jg UI_RunMenuScript_810
UI_RunMenuScript_880:
	mov dword [esp+0xc], UI_PlayerProfilesQsortCompare
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], ebx
	mov dword [esp], uiInfoArray+0x178c
	call qsort
	mov esi, [uiInfoArray+0xa74]
	mov eax, esi
	sub eax, 0x1
	js UI_RunMenuScript_800
	lea ebx, [eax*4+uiInfoArray+0xa34]
	xor edi, edi
UI_RunMenuScript_830:
	mov eax, [ebx]
	test byte [eax+0x50], 0x4
	jz UI_RunMenuScript_820
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x18
	mov [esp+0x4], eax
	mov dword [esp], uiInfoArray
	call Menu_SetFeederSelection
UI_RunMenuScript_820:
	add edi, 0x1
	sub ebx, 0x4
	cmp edi, esi
	jnz UI_RunMenuScript_830
UI_RunMenuScript_800:
	mov eax, [uiInfoArray+0x1684]
	mov [esp+0x4], eax
	mov eax, [ui_playerProfileCount]
	mov [esp], eax
	call Cvar_SetInt
	mov eax, [uiInfoArray+0x1684]
	test eax, eax
	jg UI_RunMenuScript_840
UI_RunMenuScript_910:
	mov dword [ebp-0x10b0], 0xffffffff
UI_RunMenuScript_890:
	mov esi, [uiInfoArray+0xa74]
	mov eax, esi
	sub eax, 0x1
	js UI_RunMenuScript_70
	lea ebx, [eax*4+uiInfoArray+0xa34]
	xor edi, edi
UI_RunMenuScript_860:
	mov eax, [ebx]
	test byte [eax+0x50], 0x4
	jz UI_RunMenuScript_850
	mov dword [esp+0x10], 0x0
	mov ecx, [ebp-0x10b0]
	mov [esp+0xc], ecx
	mov dword [esp+0x8], 0x18
	mov [esp+0x4], eax
	mov dword [esp], uiInfoArray
	call Menu_SetFeederSelection
UI_RunMenuScript_850:
	add edi, 0x1
	sub ebx, 0x4
	cmp edi, esi
	jnz UI_RunMenuScript_860
	jmp UI_RunMenuScript_70
UI_RunMenuScript_810:
	xor edx, edx
	mov ecx, uiInfoArray
	mov eax, [uiInfoArray+0x1684]
UI_RunMenuScript_870:
	mov [ecx+0x178c], edx
	add edx, 0x1
	mov ebx, eax
	add ecx, 0x4
	cmp eax, edx
	jg UI_RunMenuScript_870
	jmp UI_RunMenuScript_880
UI_RunMenuScript_840:
	mov dword [ebp-0x10b0], 0x0
	mov ebx, uiInfoArray
UI_RunMenuScript_900:
	mov eax, [ebx+0x178c]
	mov eax, [eax*4+uiInfoArray+0x1688]
	mov [esp+0x4], eax
	lea eax, [ebp-0x89c]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz UI_RunMenuScript_890
	add dword [ebp-0x10b0], 0x1
	add ebx, 0x4
	mov edx, [ebp-0x10b0]
	cmp [uiInfoArray+0x1684], edx
	jg UI_RunMenuScript_900
	jmp UI_RunMenuScript_910
UI_RunMenuScript_790:
	mov dword [sharedUiInfo+0x72f0], 0x0
	mov eax, [sharedUiInfo+0x1ab80]
	mov [esp+0xc], eax
	mov eax, [sharedUiInfo+0x1ab78]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_d_servers_listed
	mov dword [esp], 0xd
	call Com_Printf
	mov eax, [ui_netSource]
	mov eax, [eax+0xc]
	mov [esp], eax
	call LAN_GetServerCount
	sub eax, [sharedUiInfo+0x1ab78]
	test eax, eax
	jle UI_RunMenuScript_920
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_d_servers_not_li
	mov dword [esp], 0xd
	call Com_Printf
	jmp UI_RunMenuScript_920
UI_RunMenuScript_780:
	mov dword [esp+0x4], _cstring_serverstatus
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz UI_RunMenuScript_930
	mov eax, [ui_netSource]
	mov eax, [eax+0xc]
	mov [esp], eax
	call LAN_GetServerCount
	cmp eax, [sharedUiInfo+0x1ab7c]
	jz UI_RunMenuScript_940
	mov [sharedUiInfo+0x1ab7c], eax
	mov eax, [sharedUiInfo+0x1ab78]
	test eax, eax
	jz UI_RunMenuScript_940
	mov dword [sharedUiInfo+0x72f4], 0xffffffff
	mov dword [esp+0x4], 0x1
	mov dword [esp], uiInfoArray
	call UI_BuildServerDisplayList
UI_RunMenuScript_940:
	mov eax, [sharedUiInfo+0x72f4]
	test eax, eax
	js UI_RunMenuScript_70
	cmp eax, [sharedUiInfo+0x1ab78]
	jge UI_RunMenuScript_70
	mov dword [esp+0xc], 0x40
	mov dword [esp+0x8], sharedUiInfo+0x1afa4
	mov eax, [eax*4+sharedUiInfo+0x72f8]
	mov [esp+0x4], eax
	mov eax, [ui_netSource]
	mov eax, [eax+0xc]
	mov [esp], eax
	call LAN_GetServerAddressString
	mov edx, 0x1
	mov eax, uiInfoArray
	call UI_BuildServerStatus
	jmp UI_RunMenuScript_70
UI_RunMenuScript_930:
	mov dword [esp+0x4], _cstring_updatefilter
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz UI_RunMenuScript_950
	mov eax, [ui_netSource]
	mov edi, [eax+0xc]
	test edi, edi
	jnz UI_RunMenuScript_960
	mov edx, 0x1
	mov eax, [ebp+0x8]
	call UI_StartServerRefresh
UI_RunMenuScript_960:
	mov dword [esp+0x4], 0x1
	mov dword [esp], uiInfoArray
	call UI_BuildServerDisplayList
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x40000000
	mov eax, [ebp+0x8]
	mov [esp], eax
	call UI_FeederSelection
	jmp UI_RunMenuScript_70
UI_RunMenuScript_950:
	mov dword [esp+0x4], _cstring_joinserver1
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz UI_RunMenuScript_970
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cg_thirdperson
	call Cvar_SetBoolByName
	mov eax, [ui_netSource]
	mov eax, [eax+0xc]
	mov [esp], eax
	call LAN_GetServerCount
	cmp eax, [sharedUiInfo+0x1ab7c]
	jz UI_RunMenuScript_980
	mov [sharedUiInfo+0x1ab7c], eax
	mov esi, [sharedUiInfo+0x1ab78]
	test esi, esi
	jz UI_RunMenuScript_980
	mov dword [sharedUiInfo+0x72f4], 0xffffffff
	mov dword [esp+0x4], 0x1
	mov dword [esp], uiInfoArray
	call UI_BuildServerDisplayList
UI_RunMenuScript_980:
	mov eax, [sharedUiInfo+0x72f4]
	mov eax, [eax*4+sharedUiInfo+0x72f8]
	mov [esp+0x4], eax
	mov eax, [ui_netSource]
	mov eax, [eax+0xc]
	mov [esp], eax
	call LAN_GetServerPunkBuster
	sub eax, 0x1
	jz UI_RunMenuScript_990
UI_RunMenuScript_1010:
	mov eax, [sharedUiInfo+0x72f4]
	test eax, eax
	js UI_RunMenuScript_70
	cmp eax, [sharedUiInfo+0x1ab78]
	jge UI_RunMenuScript_70
	mov dword [esp+0xc], 0x400
	lea ebx, [ebp-0x109c]
	mov [esp+0x8], ebx
	mov eax, [eax*4+sharedUiInfo+0x72f8]
	mov [esp+0x4], eax
	mov eax, [ui_netSource]
	mov eax, [eax+0xc]
	mov [esp], eax
	call LAN_GetServerAddressString
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_connect_s
	call va
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call Cbuf_AddText
	jmp UI_RunMenuScript_70
UI_RunMenuScript_970:
	mov dword [esp+0x4], _cstring_quit
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz UI_RunMenuScript_1000
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CL_ControllerIndexFromClientNum
	mov dword [esp+0x8], _cstring_quit1
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Cmd_ExecuteSingleCommand
	jmp UI_RunMenuScript_70
UI_RunMenuScript_990:
	mov dword [esp], _cstring_cl_punkbuster
	call Cvar_VariableBooleanValue
	test al, al
	jnz UI_RunMenuScript_1010
	mov dword [esp+0x4], _cstring_joinpb_popmenu
	mov dword [esp], uiInfoArray
	call Menus_OpenByName
	jmp UI_RunMenuScript_70
UI_RunMenuScript_1000:
	mov dword [esp+0x4], _cstring_controls
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz UI_RunMenuScript_1020
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_cl_paused
	call Cvar_SetIntByName
	mov dword [esp+0x4], 0x10
	mov edx, [ebp+0x8]
	mov [esp], edx
	call Key_SetCatcher
	mov dword [esp], uiInfoArray
	call Menus_CloseAll
	mov dword [esp+0x4], _cstring_setup_menu2
	mov dword [esp], uiInfoArray
	call Menus_OpenByName
	jmp UI_RunMenuScript_70
UI_RunMenuScript_1020:
	mov dword [esp+0x4], _cstring_leave
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz UI_RunMenuScript_1030
	mov dword [esp+0x4], _cstring_disconnect
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call Cbuf_AddText
	mov dword [esp+0x4], 0x10
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Key_SetCatcher
	mov dword [esp], uiInfoArray
	call Menus_CloseAll
	mov dword [esp+0x4], _cstring_main
	mov dword [esp], uiInfoArray
	call Menus_OpenByName
	jmp UI_RunMenuScript_70
UI_RunMenuScript_1030:
	mov dword [esp+0x4], _cstring_serversort
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz UI_RunMenuScript_1040
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], esi
	call Int_Parse
	test eax, eax
	jz UI_RunMenuScript_70
	mov eax, [sharedUiInfo+0x72e4]
	cmp eax, [ebp-0x1c]
	jnz UI_RunMenuScript_1050
	xor eax, eax
	cmp dword [sharedUiInfo+0x72e8], 0x0
	setz al
	mov [sharedUiInfo+0x72e8], eax
UI_RunMenuScript_1050:
	mov eax, [ebp-0x1c]
	mov [sharedUiInfo+0x72e4], eax
	mov dword [esp+0xc], UI_ServersQsortCompare
	mov dword [esp+0x8], 0x4
	mov eax, [sharedUiInfo+0x1ab78]
	mov [esp+0x4], eax
	mov dword [esp], sharedUiInfo+0x72f8
	call qsort
	jmp UI_RunMenuScript_70
UI_RunMenuScript_1040:
	mov dword [esp+0x4], _cstring_closeingame
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz UI_RunMenuScript_1060
	mov dword [esp+0x4], 0xffffffef
	mov edx, [ebp+0x8]
	mov [esp], edx
	call Key_RemoveCatcher
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call Key_ClearStates
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cl_paused
	call Cvar_SetIntByName
	mov dword [esp], uiInfoArray
	call Menus_CloseAll
	jmp UI_RunMenuScript_70
UI_RunMenuScript_1060:
	mov dword [esp+0x4], _cstring_votekick
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz UI_RunMenuScript_1070
	mov eax, [uiInfoArray+0x1680]
	test eax, eax
	js UI_RunMenuScript_70
	cmp eax, [sharedUiInfo+0x48]
	jge UI_RunMenuScript_70
	shl eax, 0x5
	add eax, sharedUiInfo+0x4c
	mov [esp+0x4], eax
	mov dword [esp], _cstring_callvote_kick_s
	call va
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Cbuf_AddText
	jmp UI_RunMenuScript_70
UI_RunMenuScript_1070:
	mov dword [esp+0x4], _cstring_votetempban
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz UI_RunMenuScript_1080
	mov eax, [uiInfoArray+0x1680]
	test eax, eax
	js UI_RunMenuScript_70
	cmp eax, [sharedUiInfo+0x48]
	jge UI_RunMenuScript_70
	shl eax, 0x5
	add eax, sharedUiInfo+0x4c
	mov [esp+0x4], eax
	mov dword [esp], _cstring_callvote_tempban
	call va
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call Cbuf_AddText
	jmp UI_RunMenuScript_70
UI_RunMenuScript_1080:
	mov dword [esp+0x4], _cstring_addfavorite
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz UI_RunMenuScript_1090
	mov eax, [ui_netSource]
	cmp dword [eax+0xc], 0x2
	jz UI_RunMenuScript_70
	mov byte [ebp-0x89c], 0x0
	mov byte [ebp-0x9c], 0x0
	mov eax, [eax+0xc]
	mov [esp], eax
	call LAN_GetServerCount
	cmp eax, [sharedUiInfo+0x1ab7c]
	jz UI_RunMenuScript_1100
	mov [sharedUiInfo+0x1ab7c], eax
	mov ebx, [sharedUiInfo+0x1ab78]
	test ebx, ebx
	jz UI_RunMenuScript_1100
	mov dword [sharedUiInfo+0x72f4], 0xffffffff
	mov dword [esp+0x4], 0x1
	mov dword [esp], uiInfoArray
	call UI_BuildServerDisplayList
UI_RunMenuScript_1100:
	mov eax, [sharedUiInfo+0x72f4]
	test eax, eax
	js UI_RunMenuScript_1110
	cmp eax, [sharedUiInfo+0x1ab78]
	jge UI_RunMenuScript_1110
	mov dword [esp+0xc], 0x400
	lea ebx, [ebp-0x109c]
	mov [esp+0x8], ebx
	mov eax, [eax*4+sharedUiInfo+0x72f8]
	mov [esp+0x4], eax
	mov eax, [ui_netSource]
	mov eax, [eax+0xc]
	mov [esp], eax
	call LAN_GetServerInfo
	mov dword [esp+0x4], _cstring_hostname
	mov [esp], ebx
	call Info_ValueForKey
	mov dword [esp+0x8], 0x20
	mov [esp+0x4], eax
	lea ecx, [ebp-0x9c]
	mov [esp], ecx
	call Q_strncpyz
	mov dword [esp+0x4], _cstring_addr
	mov [esp], ebx
	call Info_ValueForKey
	mov dword [esp+0x8], 0x20
	mov [esp+0x4], eax
	lea eax, [ebp-0x89c]
	mov [esp], eax
	call Q_strncpyz
UI_RunMenuScript_1110:
	lea edx, [ebp-0x89c]
	lea eax, [ebp-0x9c]
	call UI_AddServerToFavoritesList
	jmp UI_RunMenuScript_70
UI_RunMenuScript_1090:
	mov dword [esp+0x4], _cstring_deletefavorite
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz UI_RunMenuScript_1120
	mov eax, [ui_netSource]
	cmp dword [eax+0xc], 0x2
	jnz UI_RunMenuScript_70
	mov eax, [sharedUiInfo+0x72f4]
	test eax, eax
	js UI_RunMenuScript_70
	cmp eax, [sharedUiInfo+0x1ab78]
	jge UI_RunMenuScript_70
	mov dword [esp], 0x2
	call LAN_GetServerCount
	cmp eax, [sharedUiInfo+0x1ab7c]
	jz UI_RunMenuScript_1130
	mov [sharedUiInfo+0x1ab7c], eax
	mov ecx, [sharedUiInfo+0x1ab78]
	test ecx, ecx
	jz UI_RunMenuScript_1130
	mov dword [sharedUiInfo+0x72f4], 0xffffffff
	mov dword [esp+0x4], 0x1
	mov dword [esp], uiInfoArray
	call UI_BuildServerDisplayList
UI_RunMenuScript_1130:
	mov dword [esp+0xc], 0x400
	lea ebx, [ebp-0x109c]
	mov [esp+0x8], ebx
	mov eax, [sharedUiInfo+0x72f4]
	mov eax, [eax*4+sharedUiInfo+0x72f8]
	mov [esp+0x4], eax
	mov eax, [ui_netSource]
	mov eax, [eax+0xc]
	mov [esp], eax
	call LAN_GetServerInfo
	mov byte [ebp-0x89c], 0x0
	mov dword [esp+0x4], _cstring_addr
	mov [esp], ebx
	call Info_ValueForKey
	mov dword [esp+0x8], 0x20
	mov [esp+0x4], eax
	lea ebx, [ebp-0x89c]
	mov [esp], ebx
	call Q_strncpyz
	cmp byte [ebp-0x89c], 0x0
	jz UI_RunMenuScript_70
	mov [esp+0x4], ebx
	mov dword [esp], 0x2
	call LAN_RemoveServer
	jmp UI_RunMenuScript_70
UI_RunMenuScript_1120:
	mov dword [esp+0x4], _cstring_createfavorite
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz UI_RunMenuScript_1140
	mov eax, [ui_netSource]
	cmp dword [eax+0xc], 0x2
	jnz UI_RunMenuScript_70
	mov byte [ebp-0x9c], 0x0
	mov byte [ebp-0x89c], 0x0
	mov dword [esp+0x8], 0x20
	mov dword [esp+0x4], _cstring_default
	lea ebx, [ebp-0x89c]
	mov [esp], ebx
	call Q_strncpyz
	mov dword [esp], _cstring_ui_favoriteaddre
	call Cvar_GetVariantString
	mov dword [esp+0x8], 0x20
	mov [esp+0x4], eax
	lea esi, [ebp-0x9c]
	mov [esp], esi
	call Q_strncpyz
	mov edx, esi
	mov eax, ebx
	call UI_AddServerToFavoritesList
	mov edx, 0x1
	mov eax, [ebp+0x8]
	call UI_StartServerRefresh
	jmp UI_RunMenuScript_70
UI_RunMenuScript_1140:
	mov dword [esp+0x4], _cstring_update
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz UI_RunMenuScript_1150
	mov dword [esp+0x8], 0x400
	lea ebx, [ebp-0x109c]
	mov [esp+0x4], ebx
	mov [esp], esi
	call String_Parse
	test eax, eax
	jz UI_RunMenuScript_70
	mov dword [esp+0x4], _cstring_ui_setname
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz UI_RunMenuScript_1160
	mov dword [esp], _cstring_ui_name
	call Cvar_GetVariantString
	mov [esp+0x4], eax
	mov dword [esp], _cstring_name
	call Cvar_SetStringByName
	jmp UI_RunMenuScript_70
UI_RunMenuScript_1150:
	mov dword [esp+0x4], _cstring_setpbclstatus
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz UI_RunMenuScript_1170
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], esi
	call Int_Parse
	test eax, eax
	jz UI_RunMenuScript_70
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call CLUI_SetPbClStatus
	jmp UI_RunMenuScript_70
UI_RunMenuScript_1160:
	mov dword [esp+0x4], _cstring_ui_getname
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz UI_RunMenuScript_1180
	mov dword [esp], _cstring_name
	call Cvar_GetVariantString
	mov [esp+0x4], eax
	mov dword [esp], _cstring_ui_name
	call Cvar_SetStringByName
	jmp UI_RunMenuScript_70
UI_RunMenuScript_1170:
	mov dword [esp+0x4], _cstring_startsingleplaye
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz UI_RunMenuScript_1190
	mov dword [esp+0x4], _cstring_startsingleplaye1
	mov edx, [ebp+0x8]
	mov [esp], edx
	call Cbuf_AddText
	jmp UI_RunMenuScript_70
UI_RunMenuScript_1180:
	mov dword [esp+0x4], _cstring_ui_setrate
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz UI_RunMenuScript_1200
	mov dword [esp], _cstring_rate
	call Cvar_VariableIntegerValue
	cmp eax, 0x1387
	jg UI_RunMenuScript_1210
	cmp eax, 0xf9f
	jle UI_RunMenuScript_1220
	mov dword [esp+0x4], 0xf
	mov dword [esp], _cstring_cl_maxpackets
	call Cvar_SetIntByName
	mov dword [esp+0x4], 0x2
	mov dword [esp], _cstring_cl_packetdup
	call Cvar_SetIntByName
	jmp UI_RunMenuScript_70
UI_RunMenuScript_1190:
	mov dword [esp+0x4], _cstring_getlanguage
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz UI_RunMenuScript_1230
	mov dword [esp], _cstring_loc_language
	call Cvar_VariableIntegerValue
	mov [esp+0x4], eax
	mov dword [esp], _cstring_ui_language
	call Cvar_SetIntByName
	call UI_VerifyLanguage
	jmp UI_RunMenuScript_70
UI_RunMenuScript_1220:
	mov dword [esp+0x4], 0xf
	mov dword [esp], _cstring_cl_maxpackets
	call Cvar_SetIntByName
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_cl_packetdup
	call Cvar_SetIntByName
	jmp UI_RunMenuScript_70
UI_RunMenuScript_1230:
	mov dword [esp+0x4], _cstring_verifylanguage
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz UI_RunMenuScript_1240
	call UI_VerifyLanguage
	jmp UI_RunMenuScript_70
UI_RunMenuScript_1210:
	mov dword [esp+0x4], 0x1e
	mov dword [esp], _cstring_cl_maxpackets
	call Cvar_SetIntByName
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_cl_packetdup
	call Cvar_SetIntByName
	jmp UI_RunMenuScript_70
UI_RunMenuScript_1200:
	mov dword [esp+0x4], _cstring_ui_mousepitch
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz UI_RunMenuScript_70
	mov [esp], ebx
	call Cvar_VariableBooleanValue
	test al, al
	jnz UI_RunMenuScript_1250
	mov dword [esp+0x4], 0x3cb43958
	mov dword [esp], _cstring_m_pitch
	call Cvar_SetFloatByName
	jmp UI_RunMenuScript_70
UI_RunMenuScript_1240:
	mov dword [esp+0x4], _cstring_updatelanguage
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz UI_RunMenuScript_1260
	mov dword [esp], _cstring_ui_language
	call Cvar_VariableIntegerValue
	mov [esp+0x4], eax
	mov dword [esp], _cstring_loc_language
	call Cvar_SetIntByName
	call UI_VerifyLanguage
	mov dword [esp+0x4], _cstring_vid_restart
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call Cbuf_AddText
	jmp UI_RunMenuScript_70
UI_RunMenuScript_1250:
	mov dword [esp+0x4], 0xbcb43958
	mov dword [esp], _cstring_m_pitch
	call Cvar_SetFloatByName
	jmp UI_RunMenuScript_70
UI_RunMenuScript_1260:
	mov dword [esp+0x4], _cstring_muteplayer
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz UI_RunMenuScript_1270
	mov eax, [uiInfoArray+0x1680]
	test eax, eax
	js UI_RunMenuScript_70
	cmp eax, [sharedUiInfo+0x48]
	jge UI_RunMenuScript_70
	mov eax, [eax*4+sharedUiInfo+0x104c]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CL_MutePlayer
	jmp UI_RunMenuScript_70
UI_RunMenuScript_1270:
	mov dword [esp+0x4], _cstring_openmenuondvar
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jz UI_RunMenuScript_1280
	mov dword [esp+0x4], _cstring_openmenuondvarno
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz UI_RunMenuScript_1290
UI_RunMenuScript_1280:
	lea edi, [ebp-0x9c]
	mov dword [esp+0x10], 0x80
	lea edx, [ebp-0x89c]
	mov [esp+0xc], edx
	mov dword [esp+0x8], 0x100
	lea ecx, [ebp-0x109c]
	mov [esp+0x4], ecx
	mov dword [esp], 0x80
	mov ecx, edi
	mov edx, ebx
	mov eax, esi
	call UI_GetOpenOrCloseMenuOnDvarArgs
	test al, al
	jz UI_RunMenuScript_70
	mov dword [esp+0x4], _cstring_openmenuondvar
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	setz al
	mov esi, eax
	mov [esp], edi
	call Cvar_FindVar
	test eax, eax
	jz UI_RunMenuScript_1300
	mov [esp], edi
	call Cvar_GetVariantString
	mov [esp+0x4], eax
	lea edx, [ebp-0x109c]
	mov [esp], edx
	call Q_stricmp
	test eax, eax
	setz al
	mov ecx, esi
	cmp cl, al
	jnz UI_RunMenuScript_70
	lea eax, [ebp-0x89c]
	mov [esp+0x4], eax
	mov dword [esp], uiInfoArray
	call Menus_OpenByName
	jmp UI_RunMenuScript_70
UI_RunMenuScript_1290:
	mov dword [esp+0x4], _cstring_closemenuondvar
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz UI_RunMenuScript_1310
UI_RunMenuScript_1330:
	lea edi, [ebp-0x89c]
	mov dword [esp+0x10], 0x80
	lea edx, [ebp-0x9c]
	mov [esp+0xc], edx
	mov dword [esp+0x8], 0x100
	lea ecx, [ebp-0x109c]
	mov [esp+0x4], ecx
	mov dword [esp], 0x80
	mov ecx, edi
	mov edx, ebx
	mov eax, esi
	call UI_GetOpenOrCloseMenuOnDvarArgs
	test al, al
	jz UI_RunMenuScript_70
	mov dword [esp+0x4], _cstring_closemenuondvar
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	setz al
	mov esi, eax
	mov [esp], edi
	call Cvar_FindVar
	test eax, eax
	jz UI_RunMenuScript_1320
	mov [esp], edi
	call Cvar_GetVariantString
	mov [esp+0x4], eax
	lea edx, [ebp-0x109c]
	mov [esp], edx
	call Q_stricmp
	test eax, eax
	setz al
	mov ecx, esi
	cmp cl, al
	jnz UI_RunMenuScript_70
	lea eax, [ebp-0x9c]
	mov [esp+0x4], eax
	mov dword [esp], uiInfoArray
	call Menus_CloseByName
	jmp UI_RunMenuScript_70
UI_RunMenuScript_1300:
	mov [esp+0xc], edi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_s_cannot_find_dv
	mov dword [esp], 0xd
	call Com_Printf
	jmp UI_RunMenuScript_70
UI_RunMenuScript_1320:
	mov [esp+0xc], edi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_s_cannot_find_dv
	mov dword [esp], 0xd
	call Com_Printf
	jmp UI_RunMenuScript_70
UI_RunMenuScript_1310:
	mov dword [esp+0x4], _cstring_closemenuondvarn
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jz UI_RunMenuScript_1330
	mov dword [esp+0x4], _cstring_setrecommended
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz UI_RunMenuScript_1340
	mov dword [esp+0x4], 0x1
	mov edx, [ebp+0x8]
	mov [esp], edx
	call Com_SetRecommended
	jmp UI_RunMenuScript_70
UI_RunMenuScript_1340:
	mov dword [esp+0x4], _cstring_clearloaderrorss
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz UI_RunMenuScript_1350
	mov dword [esp], uiInfoArray
	call Menus_CloseAll
	jmp UI_RunMenuScript_70
UI_RunMenuScript_1350:
	mov ecx, [ebp+0x10]
	mov [esp+0xc], ecx
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_unknown_ui_scrip
	mov dword [esp], 0xd
	call Com_Printf
	jmp UI_RunMenuScript_70


;UI_SetActiveMenu(int, int)
UI_SetActiveMenu:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0xc]
	mov dword [esp], uiInfoArray
	call Menu_Count
	test eax, eax
	jle UI_SetActiveMenu_10
	mov [uiInfoArray+0x18a0], ebx
	cmp ebx, 0xb
	jbe UI_SetActiveMenu_20
UI_SetActiveMenu_10:
	xor eax, eax
UI_SetActiveMenu_30:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
UI_SetActiveMenu_20:
	jmp dword [ebx*4+UI_SetActiveMenu_jumptab_0]
UI_SetActiveMenu_90:
	mov dword [esp+0x4], 0xffffffef
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Key_RemoveCatcher
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_cl_paused
	call Cvar_SetIntByName
	mov dword [esp], uiInfoArray
	call Menus_CloseAll
	mov eax, 0x1
	jmp UI_SetActiveMenu_30
UI_SetActiveMenu_170:
	mov dword [esp+0x4], 0x10
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Key_SetCatcher
	mov dword [esp], uiInfoArray
	call Menus_CloseAll
	mov dword [esp+0x4], _cstring_endofgame
UI_SetActiveMenu_70:
	mov dword [esp], uiInfoArray
	call Menus_OpenByName
	mov dword [esp], _cstring_com_errormessage
	call Cvar_VariableString
	cmp byte [eax], 0x0
	jnz UI_SetActiveMenu_40
UI_SetActiveMenu_50:
	mov eax, 0x1
	jmp UI_SetActiveMenu_30
UI_SetActiveMenu_130:
	mov dword [esp+0x4], 0x10
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Key_SetCatcher
	mov dword [esp+0x4], _cstring_badcd
	mov dword [esp], uiInfoArray
	call Menus_OpenByName
	mov eax, 0x1
	jmp UI_SetActiveMenu_30
UI_SetActiveMenu_120:
	mov dword [esp+0x4], 0x10
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Key_SetCatcher
	mov dword [esp+0x4], _cstring_needcd
	mov dword [esp], uiInfoArray
	call Menus_OpenByName
	mov eax, 0x1
	jmp UI_SetActiveMenu_30
UI_SetActiveMenu_110:
	mov dword [esp+0x4], 0x10
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Key_SetCatcher
	mov dword [esp], uiInfoArray
	call Menus_CloseAll
	mov eax, [uiInfoArray]
	mov [esp], eax
	call CG_ScriptMainMenu
	mov [esp+0x4], eax
	mov dword [esp], uiInfoArray
	call Menus_OpenByName
	test eax, eax
	jnz UI_SetActiveMenu_50
	mov dword [esp+0x4], _cstring_main
	mov dword [esp], uiInfoArray
	call Menus_OpenByName
	mov eax, 0x1
	jmp UI_SetActiveMenu_30
UI_SetActiveMenu_100:
	mov dword [esp+0x4], 0x10
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Key_SetCatcher
	mov dword [esp+0x4], _cstring_main
	mov dword [esp], uiInfoArray
	call Menus_OpenByName
	mov dword [esp], _cstring_com_errormessage
	call Cvar_VariableString
	cmp byte [eax], 0x0
	jnz UI_SetActiveMenu_60
UI_SetActiveMenu_80:
	mov dword [esp+0x4], 0x3e8
	mov dword [esp], 0x3f800000
	call SND_FadeAllSounds
	mov eax, 0x1
	jmp UI_SetActiveMenu_30
UI_SetActiveMenu_150:
	mov dword [esp+0x4], 0x10
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Key_SetCatcher
	mov dword [esp+0x4], 0x1
	mov eax, [uiInfoArray]
	mov [esp], eax
	call CL_SetDisplayHUDWithKeycatchUI
	mov dword [esp], uiInfoArray
	call Menus_CloseAll
	mov dword [esp+0x4], _cstring_quickmessage
	mov dword [esp], uiInfoArray
	call Menus_OpenByName
	mov eax, 0x1
	jmp UI_SetActiveMenu_30
UI_SetActiveMenu_160:
	mov dword [esp+0x4], 0x10
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Key_SetCatcher
	mov dword [esp], uiInfoArray
	call Menus_CloseAll
	mov dword [esp+0x4], _cstring_scoreboard
	jmp UI_SetActiveMenu_70
UI_SetActiveMenu_140:
	mov dword [esp], _cstring_com_errormessage
	call Cvar_VariableString
	mov dword [esp+0x4], 0x10
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Key_SetCatcher
	mov dword [esp], uiInfoArray
	call Menus_CloseAll
	mov dword [esp+0x4], _cstring_pregame_loaderro
	mov dword [esp], uiInfoArray
	call Menus_OpenByName
	mov eax, 0x1
	jmp UI_SetActiveMenu_30
UI_SetActiveMenu_40:
	mov dword [esp+0x4], _cstring_2
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz UI_SetActiveMenu_50
	mov dword [esp+0x4], _cstring_error_popmenu
	mov dword [esp], uiInfoArray
	call Menus_OpenByName
	mov eax, 0x1
	jmp UI_SetActiveMenu_30
UI_SetActiveMenu_60:
	mov dword [esp+0x4], _cstring_2
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz UI_SetActiveMenu_80
	mov dword [esp+0x4], _cstring_error_popmenu
	mov dword [esp], uiInfoArray
	call Menus_OpenByName
	jmp UI_SetActiveMenu_80
	
	
UI_SetActiveMenu_jumptab_0:
	dd UI_SetActiveMenu_90
	dd UI_SetActiveMenu_100
	dd UI_SetActiveMenu_110
	dd UI_SetActiveMenu_120
	dd UI_SetActiveMenu_130
	dd UI_SetActiveMenu_140
	dd UI_SetActiveMenu_10
	dd UI_SetActiveMenu_150
	dd UI_SetActiveMenu_10
	dd UI_SetActiveMenu_10
	dd UI_SetActiveMenu_160
	dd UI_SetActiveMenu_170


;UI_AnyMenuVisible(int)
UI_AnyMenuVisible:
	push ebp
	mov ebp, esp
	xor eax, eax
	cmp dword [uiInfoArray+0xa74], 0x0
	setnz al
	pop ebp
	ret
	nop


;UI_DrawTextNoSnap(ScreenPlacement const*, char const*, int, Font_s*, float, float, int, int, float, float const*, int)
UI_DrawTextNoSnap:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x44
	mov ebx, [ebp+0x14]
	mov eax, [ebp+0x28]
	mov [esp+0x4], eax
	mov [esp], ebx
	call R_NormalizedTextScale
	fst dword [ebp-0xc]
	fstp dword [ebp-0x10]
	mov eax, [ebp+0x24]
	mov [esp+0x18], eax
	mov eax, [ebp+0x20]
	mov [esp+0x14], eax
	lea eax, [ebp-0x10]
	mov [esp+0x10], eax
	lea eax, [ebp-0xc]
	mov [esp+0xc], eax
	lea eax, [ebp+0x1c]
	mov [esp+0x8], eax
	lea eax, [ebp+0x18]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call ScrPlace_ApplyRect
	mov eax, [ebp+0x30]
	mov [esp+0x20], eax
	mov eax, [ebp+0x2c]
	mov [esp+0x1c], eax
	mov eax, [ebp-0x10]
	mov [esp+0x18], eax
	mov eax, [ebp-0xc]
	mov [esp+0x14], eax
	mov eax, [ebp+0x1c]
	mov [esp+0x10], eax
	mov eax, [ebp+0x18]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call CL_DrawTextPhysical
	add esp, 0x44
	pop ebx
	pop ebp
	ret


;UI_FeederItemText(int, itemDef_s*, float, int, int, Material**)
UI_FeederItemText:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edx, [ebp+0x8]
	movss xmm0, dword [ebp+0x10]
	movss [ebp-0x1c], xmm0
	mov edi, [ebp+0x14]
	mov ebx, [ebp+0x18]
	mov esi, [ebp+0x1c]
	mov dword [esi], 0x0
	ucomiss xmm0, [_float_4_00000000]
	jp UI_FeederItemText_10
	jz UI_FeederItemText_20
UI_FeederItemText_10:
	ucomiss xmm0, [_float_2_00000000]
	jz UI_FeederItemText_30
UI_FeederItemText_130:
	movss xmm0, dword [ebp-0x1c]
	ucomiss xmm0, [_float_13_00000000]
	jz UI_FeederItemText_40
UI_FeederItemText_110:
	ucomiss xmm0, [_float_7_00000000]
	jnz UI_FeederItemText_50
	jp UI_FeederItemText_50
	test edi, edi
	js UI_FeederItemText_60
	cmp edi, [sharedUiInfo+0x48]
	jge UI_FeederItemText_60
UI_FeederItemText_210:
	shl edi, 0x5
	lea ebx, [edi+sharedUiInfo+0x4c]
	jmp UI_FeederItemText_70
UI_FeederItemText_20:
	mov esi, [sharedUiInfo+0x1c58]
	test esi, esi
	jle UI_FeederItemText_60
	xor ebx, ebx
	xor ecx, ecx
	mov edx, sharedUiInfo
	mov eax, sharedUiInfo+0x1c5c
UI_FeederItemText_100:
	cmp dword [edx+0x1cf8], 0x0
	jz UI_FeederItemText_80
	cmp ebx, edi
	jz UI_FeederItemText_90
	add ebx, 0x1
UI_FeederItemText_80:
	add ecx, 0x1
	add eax, 0xa0
	add edx, 0xa0
	cmp esi, ecx
	jnz UI_FeederItemText_100
UI_FeederItemText_60:
	mov ebx, _cstring_null
UI_FeederItemText_70:
	mov eax, ebx
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
UI_FeederItemText_40:
	jp UI_FeederItemText_110
	test edi, edi
	js UI_FeederItemText_60
	cmp edi, [sharedUiInfo+0x1bce4]
	jge UI_FeederItemText_60
	cmp ebx, 0x3
	ja UI_FeederItemText_60
	lea eax, [ebx+edi*4]
	mov ebx, [eax*4+sharedUiInfo+0x1b024]
	cmp byte [ebx], 0x40
	jnz UI_FeederItemText_70
	lea eax, [ebx+0x1]
	mov [ebp+0x8], eax
	jmp UI_FeederItemText_120
UI_FeederItemText_30:
	jp UI_FeederItemText_130
	mov eax, [ui_netSource]
	mov eax, [eax+0xc]
	mov [esp], eax
	call LAN_GetServerCount
	cmp eax, [sharedUiInfo+0x1ab7c]
	jz UI_FeederItemText_140
	mov [sharedUiInfo+0x1ab7c], eax
	mov ecx, [sharedUiInfo+0x1ab78]
	test ecx, ecx
	jnz UI_FeederItemText_150
UI_FeederItemText_140:
	test edi, edi
	js UI_FeederItemText_60
	cmp edi, [sharedUiInfo+0x1ab78]
	jge UI_FeederItemText_60
	cmp ebx, [_ZZ17UI_FeederItemTextiP9itemDef_sfiiPP8MaterialE10lastColumn]
	jz UI_FeederItemText_160
UI_FeederItemText_250:
	mov dword [esp+0xc], 0x400
	mov dword [esp+0x8], _ZZ17UI_FeederItemTextiP9itemDef_sfiiPP8MaterialE4info
	mov eax, [edi*4+sharedUiInfo+0x72f8]
	mov [esp+0x4], eax
	mov eax, [ui_netSource]
	mov eax, [eax+0xc]
	mov [esp], eax
	call LAN_GetServerInfo
	mov [_ZZ17UI_FeederItemTextiP9itemDef_sfiiPP8MaterialE10lastColumn], ebx
	mov eax, [uiInfoArray+0x8]
	mov [_ZZ17UI_FeederItemTextiP9itemDef_sfiiPP8MaterialE8lastTime], eax
UI_FeederItemText_240:
	mov dword [esp+0x4], _cstring_ping
	mov dword [esp], _ZZ17UI_FeederItemTextiP9itemDef_sfiiPP8MaterialE4info
	call Info_ValueForKey
	mov [esp], eax
	call atoi
	cmp ebx, 0xa
	jbe UI_FeederItemText_170
	movss xmm0, dword [ebp-0x1c]
UI_FeederItemText_200:
	ucomiss xmm0, [_float_24_00000000]
	jnz UI_FeederItemText_60
	jp UI_FeederItemText_60
	test edi, edi
	js UI_FeederItemText_60
	cmp edi, [uiInfoArray+0x1684]
	jge UI_FeederItemText_60
	mov eax, [edi*4+uiInfoArray+0x178c]
	mov ebx, [eax*4+uiInfoArray+0x1688]
	jmp UI_FeederItemText_70
UI_FeederItemText_50:
	ucomiss xmm0, [_float_9_00000000]
	jz UI_FeederItemText_180
UI_FeederItemText_220:
	ucomiss xmm0, [_float_39_00000000]
	jz UI_FeederItemText_190
UI_FeederItemText_350:
	ucomiss xmm0, [_float_20_00000000]
	jnz UI_FeederItemText_200
	jp UI_FeederItemText_200
	test edi, edi
	js UI_FeederItemText_60
	cmp edi, [sharedUiInfo+0x48]
	jge UI_FeederItemText_60
	sub ebx, 0x1
	jz UI_FeederItemText_210
	mov eax, [edi*4+sharedUiInfo+0x104c]
	mov [esp+0x4], eax
	mov [esp], edx
	call CL_IsPlayerMuted
	test al, al
	jz UI_FeederItemText_60
	mov dword [ebp+0x8], _cstring_mp_muted
UI_FeederItemText_120:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp UI_SafeTranslateString
UI_FeederItemText_170:
	jmp dword [ebx*4+UI_FeederItemText_jumptab_0]
UI_FeederItemText_180:
	jp UI_FeederItemText_220
	test edi, edi
	js UI_FeederItemText_60
	cmp edi, [sharedUiInfo+0x6e84]
	jge UI_FeederItemText_60
	mov ebx, [edi*8+sharedUiInfo+0x6c88]
	test ebx, ebx
	jz UI_FeederItemText_230
	cmp byte [ebx], 0x0
	jnz UI_FeederItemText_70
UI_FeederItemText_230:
	mov ebx, [edi*8+sharedUiInfo+0x6c84]
	jmp UI_FeederItemText_70
UI_FeederItemText_160:
	mov eax, [uiInfoArray+0x8]
	add eax, 0x1388
	cmp eax, [_ZZ17UI_FeederItemTextiP9itemDef_sfiiPP8MaterialE8lastTime]
	jge UI_FeederItemText_240
	jmp UI_FeederItemText_250
UI_FeederItemText_370:
	mov dword [esp+0x4], _cstring_pswrd
UI_FeederItemText_260:
	mov dword [esp], _ZZ17UI_FeederItemTextiP9itemDef_sfiiPP8MaterialE4info
	call Info_ValueForKey
	mov [esp], eax
	call atoi
	mov ebx, _cstring_x
	test eax, eax
	mov eax, _cstring_null
	cmovz ebx, eax
	jmp UI_FeederItemText_70
UI_FeederItemText_460:
	mov dword [esp+0x4], _cstring_pb
	jmp UI_FeederItemText_260
UI_FeederItemText_470:
	test eax, eax
	jle UI_FeederItemText_270
	mov dword [ebp+0xc], _cstring_ping
UI_FeederItemText_360:
	mov dword [ebp+0x8], _ZZ17UI_FeederItemTextiP9itemDef_sfiiPP8MaterialE4info
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Info_ValueForKey
UI_FeederItemText_380:
	mov dword [esp+0x4], _cstring_hw
	mov dword [esp], _ZZ17UI_FeederItemTextiP9itemDef_sfiiPP8MaterialE4info
	call Info_ValueForKey
	mov [esp], eax
	call atoi
	cmp eax, 0x9
	ja UI_FeederItemText_60
	mov eax, [eax*4+sharedUiInfo+0x6c5c]
	mov [esi], eax
	mov ebx, _cstring_null
	jmp UI_FeederItemText_70
UI_FeederItemText_420:
	mov dword [esp+0x4], _cstring_gametype
	mov dword [esp], _ZZ17UI_FeederItemTextiP9itemDef_sfiiPP8MaterialE4info
	call Info_ValueForKey
	test eax, eax
	jz UI_FeederItemText_280
	mov dword [esp+0x4], _cstring_gametype
	mov dword [esp], _ZZ17UI_FeederItemTextiP9itemDef_sfiiPP8MaterialE4info
	call Info_ValueForKey
	cmp byte [eax], 0x0
	jnz UI_FeederItemText_290
UI_FeederItemText_280:
	mov ebx, _cstring_3
	jmp UI_FeederItemText_70
UI_FeederItemText_430:
	mov dword [esp+0x4], _cstring_voice
	jmp UI_FeederItemText_260
UI_FeederItemText_400:
	mov dword [esp+0x4], _cstring_mapname
	mov dword [esp], _ZZ17UI_FeederItemTextiP9itemDef_sfiiPP8MaterialE4info
	call Info_ValueForKey
	mov ebx, eax
	mov edx, [sharedUiInfo+0x1c58]
	test edx, edx
	jle UI_FeederItemText_70
	xor edi, edi
	mov esi, sharedUiInfo
	mov dword [ebp-0x20], sharedUiInfo+0x1c5c
	jmp UI_FeederItemText_300
UI_FeederItemText_310:
	add edi, 0x1
	add dword [ebp-0x20], 0xa0
	add esi, 0xa0
	cmp [sharedUiInfo+0x1c58], edi
	jle UI_FeederItemText_70
UI_FeederItemText_300:
	mov eax, [esi+0x1c60]
	mov [esp+0x4], eax
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz UI_FeederItemText_310
	mov edx, [ebp-0x20]
	mov eax, [edx]
	mov [ebp+0x8], eax
	jmp UI_FeederItemText_120
UI_FeederItemText_410:
	mov dword [esp+0x4], _cstring_sv_maxclients
	mov dword [esp], _ZZ17UI_FeederItemTextiP9itemDef_sfiiPP8MaterialE4info
	call Info_ValueForKey
	mov ebx, eax
	mov dword [esp+0x4], _cstring_clients
	mov dword [esp], _ZZ17UI_FeederItemTextiP9itemDef_sfiiPP8MaterialE4info
	call Info_ValueForKey
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_s_s1
	mov dword [esp+0x4], 0x26
	mov dword [esp], _ZZ17UI_FeederItemTextiP9itemDef_sfiiPP8MaterialE10clientBuff
	call Com_sprintf
	mov ebx, _ZZ17UI_FeederItemTextiP9itemDef_sfiiPP8MaterialE10clientBuff
	jmp UI_FeederItemText_70
UI_FeederItemText_440:
	mov dword [esp+0x4], _cstring_pure
	jmp UI_FeederItemText_260
UI_FeederItemText_450:
	mov dword [esp+0x4], _cstring_mod
	mov dword [esp], _ZZ17UI_FeederItemTextiP9itemDef_sfiiPP8MaterialE4info
	call Info_ValueForKey
	mov [esp], eax
	call atoi
	mov ebx, _cstring_x
	test eax, eax
	mov eax, _cstring_null
	cmovnz ebx, eax
	jmp UI_FeederItemText_70
UI_FeederItemText_390:
	test eax, eax
	jle UI_FeederItemText_320
	mov dword [esp+0x4], _cstring_hostname
	mov dword [esp], _ZZ17UI_FeederItemTextiP9itemDef_sfiiPP8MaterialE4info
	call Info_ValueForKey
	mov dword [esp+0x8], 0x26
	mov [esp+0x4], eax
	mov dword [esp], _ZZ17UI_FeederItemTextiP9itemDef_sfiiPP8MaterialE10clientBuff
	call Q_strncpyz
	mov ebx, _ZZ17UI_FeederItemTextiP9itemDef_sfiiPP8MaterialE10clientBuff
	jmp UI_FeederItemText_70
UI_FeederItemText_290:
	mov dword [esp+0x4], _cstring_gametype
	mov dword [esp], _ZZ17UI_FeederItemTextiP9itemDef_sfiiPP8MaterialE4info
	call Info_ValueForKey
	mov ebx, eax
	mov eax, [sharedUiInfo+0x114c]
	test eax, eax
	jle UI_FeederItemText_70
	xor edi, edi
	mov esi, sharedUiInfo
	jmp UI_FeederItemText_330
UI_FeederItemText_340:
	add edi, 0x1
	add esi, 0x8
	cmp edi, [sharedUiInfo+0x114c]
	jge UI_FeederItemText_70
UI_FeederItemText_330:
	mov eax, [esi+0x1150]
	mov [esp+0x4], eax
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz UI_FeederItemText_340
	mov eax, [edi*8+sharedUiInfo+0x1154]
	mov [ebp+0x8], eax
	jmp UI_FeederItemText_120
UI_FeederItemText_90:
	mov eax, [eax]
	mov [ebp+0x8], eax
	jmp UI_FeederItemText_120
UI_FeederItemText_150:
	mov dword [sharedUiInfo+0x72f4], 0xffffffff
	mov dword [esp+0x4], 0x1
	mov dword [esp], uiInfoArray
	call UI_BuildServerDisplayList
	jmp UI_FeederItemText_140
UI_FeederItemText_190:
	jnp UI_FeederItemText_60
	jmp UI_FeederItemText_350
UI_FeederItemText_270:
	mov ebx, _cstring_4
	jmp UI_FeederItemText_70
UI_FeederItemText_320:
	mov dword [ebp+0xc], _cstring_addr
	jmp UI_FeederItemText_360
	
	
UI_FeederItemText_jumptab_0:
	dd UI_FeederItemText_370
	dd UI_FeederItemText_380
	dd UI_FeederItemText_390
	dd UI_FeederItemText_400
	dd UI_FeederItemText_410
	dd UI_FeederItemText_420
	dd UI_FeederItemText_430
	dd UI_FeederItemText_440
	dd UI_FeederItemText_450
	dd UI_FeederItemText_460
	dd UI_FeederItemText_470


;UI_OwnerDrawWidth(int, Font_s*, float)
UI_OwnerDrawWidth:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov eax, [ebp+0x8]
	sub eax, 0xcd
	cmp eax, 0x2d
	ja UI_OwnerDrawWidth_10
	jmp dword [eax*4+UI_OwnerDrawWidth_jumptab_0]
UI_OwnerDrawWidth_10:
	xor eax, eax
	add esp, 0x24
	pop ebx
	pop ebp
	ret
UI_OwnerDrawWidth_60:
	mov eax, [ui_gametype]
	mov eax, [eax+0xc]
	mov ebx, [eax*8+sharedUiInfo+0x1154]
UI_OwnerDrawWidth_30:
	test ebx, ebx
	jz UI_OwnerDrawWidth_10
	movss xmm0, dword [ebp+0x10]
	movss [esp+0x4], xmm0
	mov eax, [ebp+0xc]
	mov [esp], eax
	call R_NormalizedTextScale
	fstp dword [ebp-0xc]
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call R_TextWidth
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0xc]
	cvttss2si eax, xmm0
	add esp, 0x24
	pop ebx
	pop ebp
	ret
UI_OwnerDrawWidth_100:
	call Display_KeyBindPending
	test eax, eax
	jnz UI_OwnerDrawWidth_20
	mov dword [esp], _cstring_exe_keychange
	call UI_SafeTranslateString
	mov ebx, eax
	jmp UI_OwnerDrawWidth_30
UI_OwnerDrawWidth_90:
	mov eax, [ui_netSource]
	mov eax, [eax+0xc]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_ui_lastserverref
	call va
	mov [esp], eax
	call Cvar_GetVariantString
	mov ebx, eax
	jmp UI_OwnerDrawWidth_30
UI_OwnerDrawWidth_80:
	xor eax, eax
	cmp dword [ui_serverFilterType], 0x2
	cmovb eax, [ui_serverFilterType]
	mov [ui_serverFilterType], eax
	mov eax, [eax*8+serverFilters]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_exe_serverfilter
	call va
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_server_filter
	mov [esp], eax
	call SEH_LocalizeTextMessage
	mov ebx, eax
	jmp UI_OwnerDrawWidth_30
UI_OwnerDrawWidth_70:
	mov edx, [ui_netSource]
	mov eax, [edx+0xc]
	cmp eax, [sharedUiInfo+0x1b54]
	jg UI_OwnerDrawWidth_40
UI_OwnerDrawWidth_50:
	mov eax, [eax*4+netSources]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_exe_netsources
	call va
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_net_source
	mov [esp], eax
	call SEH_LocalizeTextMessage
	mov ebx, eax
	jmp UI_OwnerDrawWidth_30
UI_OwnerDrawWidth_20:
	mov dword [esp], _cstring_exe_keywait
	call UI_SafeTranslateString
	mov ebx, eax
	jmp UI_OwnerDrawWidth_30
UI_OwnerDrawWidth_40:
	mov dword [esp+0x4], 0x0
	mov [esp], edx
	call Cvar_SetInt
	mov edx, [ui_netSource]
	mov eax, [edx+0xc]
	jmp UI_OwnerDrawWidth_50
	nop
	
	
UI_OwnerDrawWidth_jumptab_0:
	dd UI_OwnerDrawWidth_60
	dd UI_OwnerDrawWidth_10
	dd UI_OwnerDrawWidth_10
	dd UI_OwnerDrawWidth_10
	dd UI_OwnerDrawWidth_10
	dd UI_OwnerDrawWidth_10
	dd UI_OwnerDrawWidth_10
	dd UI_OwnerDrawWidth_10
	dd UI_OwnerDrawWidth_10
	dd UI_OwnerDrawWidth_10
	dd UI_OwnerDrawWidth_10
	dd UI_OwnerDrawWidth_10
	dd UI_OwnerDrawWidth_10
	dd UI_OwnerDrawWidth_10
	dd UI_OwnerDrawWidth_10
	dd UI_OwnerDrawWidth_70
	dd UI_OwnerDrawWidth_10
	dd UI_OwnerDrawWidth_80
	dd UI_OwnerDrawWidth_10
	dd UI_OwnerDrawWidth_10
	dd UI_OwnerDrawWidth_10
	dd UI_OwnerDrawWidth_10
	dd UI_OwnerDrawWidth_10
	dd UI_OwnerDrawWidth_10
	dd UI_OwnerDrawWidth_10
	dd UI_OwnerDrawWidth_10
	dd UI_OwnerDrawWidth_10
	dd UI_OwnerDrawWidth_10
	dd UI_OwnerDrawWidth_10
	dd UI_OwnerDrawWidth_10
	dd UI_OwnerDrawWidth_10
	dd UI_OwnerDrawWidth_10
	dd UI_OwnerDrawWidth_10
	dd UI_OwnerDrawWidth_10
	dd UI_OwnerDrawWidth_10
	dd UI_OwnerDrawWidth_10
	dd UI_OwnerDrawWidth_10
	dd UI_OwnerDrawWidth_10
	dd UI_OwnerDrawWidth_10
	dd UI_OwnerDrawWidth_10
	dd UI_OwnerDrawWidth_10
	dd UI_OwnerDrawWidth_10
	dd UI_OwnerDrawWidth_90
	dd UI_OwnerDrawWidth_10
	dd UI_OwnerDrawWidth_10
	dd UI_OwnerDrawWidth_100


;UI_CloseInGameMenu(int)
UI_CloseInGameMenu:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov dword [esp], uiInfoArray
	call Menus_AnyFullScreenVisible
	test eax, eax
	jnz UI_CloseInGameMenu_10
	cmp dword [uiInfoArray+0x18a0], 0x2
	jz UI_CloseInGameMenu_20
UI_CloseInGameMenu_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
UI_CloseInGameMenu_20:
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp UI_CloseFocusedMenu


;UI_DrawRecordLevel(int, rectDef_s*)
UI_DrawRecordLevel:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov eax, edx
	shl eax, 0x6
	lea edi, [eax+edx*4]
	add edi, scrPlaceView
	call Voice_GetVoiceLevel
	fstp dword [ebp-0x1c]
	movss xmm0, dword [ebp-0x1c]
	pxor xmm2, xmm2
	ucomiss xmm0, xmm2
	jbe UI_DrawRecordLevel_10
	movaps xmm1, xmm0
	mulss xmm1, [esi+0x8]
	movss xmm3, dword [_float_4_00000000]
	subss xmm1, xmm3
	ucomiss xmm1, xmm2
	jbe UI_DrawRecordLevel_10
	mov eax, colorWhite
	mov [esp+0x1c], eax
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	movss xmm0, dword [esi+0xc]
	subss xmm0, xmm3
	movss [esp+0x10], xmm0
	movss [esp+0xc], xmm1
	movss xmm0, dword [_float_2_00000000]
	movss xmm1, dword [esi+0x4]
	addss xmm1, xmm0
	movss [esp+0x8], xmm1
	addss xmm0, [esi]
	movss [esp+0x4], xmm0
	mov [esp], edi
	call UI_FillRect
UI_DrawRecordLevel_10:
	mov ebx, colorWhite
	mov [esp+0x1c], ebx
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x3f800000
	mov eax, [esi+0x8]
	mov [esp+0xc], eax
	mov eax, [esi+0x4]
	mov [esp+0x8], eax
	mov eax, [esi]
	mov [esp+0x4], eax
	mov [esp], edi
	call UI_FillRect
	mov [esp+0x1c], ebx
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x3f800000
	mov eax, [esi+0x8]
	mov [esp+0xc], eax
	movss xmm0, dword [esi+0x4]
	addss xmm0, [esi+0xc]
	subss xmm0, [_float_1_00000000]
	movss [esp+0x8], xmm0
	mov eax, [esi]
	mov [esp+0x4], eax
	mov [esp], edi
	call UI_FillRect
	mov [esp+0x1c], ebx
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	movss xmm0, dword [esi+0xc]
	subss xmm0, [_float_2_00000000]
	movss [esp+0x10], xmm0
	mov dword [esp+0xc], 0x3f800000
	movss xmm0, dword [esi+0x4]
	addss xmm0, [_float_1_00000000]
	movss [esp+0x8], xmm0
	mov eax, [esi]
	mov [esp+0x4], eax
	mov [esp], edi
	call UI_FillRect
	mov [esp+0x1c], ebx
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	movss xmm0, dword [esi+0xc]
	subss xmm0, [_float_2_00000000]
	movss [esp+0x10], xmm0
	mov dword [esp+0xc], 0x3f800000
	movss xmm0, dword [esi+0x4]
	addss xmm0, [_float_1_00000000]
	movss [esp+0x8], xmm0
	movss xmm0, dword [esi]
	addss xmm0, [esi+0x8]
	subss xmm0, [_float_1_00000000]
	movss [esp+0x4], xmm0
	mov [esp], edi
	call UI_FillRect
	mov eax, 0x1
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;UI_FeederItemColor(int, itemDef_s*, float, int, int, float*)
UI_FeederItemColor:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0xc]
	mov esi, [ebp+0x1c]
	mov [esp], ebx
	call Item_GetListBoxDef
	lea edx, [ebx+0x58]
	mov eax, [ebx+0x58]
	mov [esi], eax
	mov eax, [edx+0x4]
	mov [esi+0x4], eax
	mov eax, [edx+0x8]
	mov [esi+0x8], eax
	mov eax, [edx+0xc]
	mov [esi+0xc], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;UI_FeederItemImage(float, int)
UI_FeederItemImage:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	movss xmm0, dword [ebp+0x8]
	ucomiss xmm0, [_float_4_00000000]
	jp UI_FeederItemImage_10
	jnz UI_FeederItemImage_10
	mov esi, [sharedUiInfo+0x1c58]
	test esi, esi
	jle UI_FeederItemImage_20
	xor ecx, ecx
	xor ebx, ebx
	mov edx, sharedUiInfo
	mov eax, sharedUiInfo+0x1c5c
UI_FeederItemImage_50:
	cmp dword [edx+0x1cf8], 0x0
	jz UI_FeederItemImage_30
	cmp ecx, [ebp+0xc]
	jz UI_FeederItemImage_40
	add ecx, 0x1
UI_FeederItemImage_30:
	add ebx, 0x1
	add eax, 0xa0
	add edx, 0xa0
	cmp esi, ebx
	jnz UI_FeederItemImage_50
UI_FeederItemImage_20:
	xor ebx, ebx
UI_FeederItemImage_80:
	cmp [sharedUiInfo+0x1c58], ebx
	jle UI_FeederItemImage_60
UI_FeederItemImage_90:
	lea ebx, [ebx+ebx*4]
	shl ebx, 0x5
	mov eax, [ebx+sharedUiInfo+0x1cf4]
	test eax, eax
	jz UI_FeederItemImage_70
UI_FeederItemImage_100:
	mov eax, [ebx+sharedUiInfo+0x1cf4]
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
UI_FeederItemImage_40:
	mov eax, [eax]
	mov [esp], eax
	call UI_SafeTranslateString
	test ebx, ebx
	jns UI_FeederItemImage_80
UI_FeederItemImage_60:
	xor ebx, ebx
	jmp UI_FeederItemImage_90
UI_FeederItemImage_10:
	xor eax, eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
UI_FeederItemImage_70:
	mov dword [esp+0x4], 0x3
	mov eax, [ebx+sharedUiInfo+0x1c64]
	mov [esp], eax
	call Material_RegisterHandle
	mov edx, sharedUiInfo+0x1ce0
	mov [ebx+edx+0x14], eax
	jmp UI_FeederItemImage_100


;UI_FeederSelection(int, float, int)
UI_FeederSelection:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	movss xmm0, dword [ebp+0xc]
	mov ecx, [ebp+0x10]
	ucomiss xmm0, [_float_4_00000000]
	jp UI_FeederSelection_10
	jz UI_FeederSelection_20
UI_FeederSelection_10:
	ucomiss xmm0, [_float_2_00000000]
	jnz UI_FeederSelection_30
	jp UI_FeederSelection_30
	cmp dword [sharedUiInfo+0x1ab78], 0x1
	mov eax, [sharedUiInfo+0x72f4]
	cmovge eax, ecx
	mov [sharedUiInfo+0x72f4], eax
	mov dword [esp+0xc], 0x400
	mov dword [esp+0x8], _ZZ18UI_FeederSelectionifiE4info
	mov eax, [ecx*4+sharedUiInfo+0x72f8]
	mov [esp+0x4], eax
	mov eax, [ui_netSource]
	mov eax, [eax+0xc]
	mov [esp], eax
	call LAN_GetServerInfo
UI_FeederSelection_100:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
UI_FeederSelection_20:
	mov esi, [sharedUiInfo+0x1c58]
	test esi, esi
	jle UI_FeederSelection_40
	xor edx, edx
	xor ebx, ebx
	mov eax, sharedUiInfo
UI_FeederSelection_70:
	cmp dword [eax+0x1cf8], 0x0
	jz UI_FeederSelection_50
	cmp edx, ecx
	jz UI_FeederSelection_60
	add edx, 0x1
UI_FeederSelection_50:
	add ebx, 0x1
	add eax, 0xa0
	cmp esi, ebx
	jnz UI_FeederSelection_70
UI_FeederSelection_40:
	xor ebx, ebx
UI_FeederSelection_160:
	mov [esp+0x4], ebx
	mov eax, [ui_currentMap]
	mov [esp], eax
	call Cvar_SetInt
	mov [ebp+0xc], ebx
	mov eax, [ui_currentNetMap]
	mov [ebp+0x8], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp Cvar_SetInt
UI_FeederSelection_30:
	ucomiss xmm0, [_float_7_00000000]
	jz UI_FeederSelection_80
UI_FeederSelection_140:
	ucomiss xmm0, [_float_39_00000000]
	jp UI_FeederSelection_90
	jz UI_FeederSelection_100
UI_FeederSelection_90:
	ucomiss xmm0, [_float_9_00000000]
	jz UI_FeederSelection_110
UI_FeederSelection_150:
	ucomiss xmm0, [_float_20_00000000]
	jnz UI_FeederSelection_120
	jnp UI_FeederSelection_130
UI_FeederSelection_120:
	ucomiss xmm0, [_float_24_00000000]
	jnz UI_FeederSelection_100
	jp UI_FeederSelection_100
	test ecx, ecx
	js UI_FeederSelection_100
	cmp ecx, [uiInfoArray+0x1684]
	jge UI_FeederSelection_100
	mov eax, [ecx*4+uiInfoArray+0x178c]
	mov eax, [eax*4+uiInfoArray+0x1688]
	mov [ebp+0xc], eax
	mov eax, [ui_playerProfileSelected]
	mov [ebp+0x8], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp Cvar_SetString
UI_FeederSelection_80:
	jp UI_FeederSelection_140
UI_FeederSelection_130:
	mov [uiInfoArray+0x1680], ecx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
UI_FeederSelection_110:
	jp UI_FeederSelection_150
	mov [sharedUiInfo+0x6e88], ecx
	jmp UI_FeederSelection_100
UI_FeederSelection_60:
	lea eax, [ebx+ebx*4]
	shl eax, 0x5
	mov eax, [eax+sharedUiInfo+0x1c5c]
	mov [esp], eax
	call UI_SafeTranslateString
	jmp UI_FeederSelection_160


;UI_LoadIngameMenus(int)
UI_LoadIngameMenus:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	cmp byte [eax+g_ingameMenusLoaded], 0x0
	jz UI_LoadIngameMenus_10
	leave
	ret
UI_LoadIngameMenus_10:
	mov byte [eax+g_ingameMenusLoaded], 0x1
	mov dword [esp+0x4], 0x3
	mov dword [esp], _cstring_ui_mpingametxt
	call UI_LoadMenus
	mov [esp+0x4], eax
	mov dword [esp], uiInfoArray
	call UI_AddMenuList
	leave
	ret
	nop


;UI_PopupScriptMenu(int, char const*, unsigned char)
UI_PopupScriptMenu:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	movzx ebx, byte [ebp+0x10]
	mov dword [esp], uiInfoArray
	call Menu_GetFocused
	test eax, eax
	jz UI_PopupScriptMenu_10
	mov edx, [uiInfoArray+0x18a0]
	cmp edx, 0x9
	jz UI_PopupScriptMenu_20
	cmp edx, 0xa
	jz UI_PopupScriptMenu_20
	xor eax, eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
UI_PopupScriptMenu_20:
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov eax, [eax]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz UI_PopupScriptMenu_30
UI_PopupScriptMenu_10:
	mov dword [uiInfoArray+0x18a0], 0x9
	test bl, bl
	jz UI_PopupScriptMenu_40
UI_PopupScriptMenu_50:
	mov dword [esp+0x4], 0x10
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Key_SetCatcher
	mov dword [esp], uiInfoArray
	call Menus_CloseAll
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov dword [esp], uiInfoArray
	call Menus_OpenByName
	mov eax, 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret
UI_PopupScriptMenu_40:
	mov edx, 0x441fc000
	mov [uiInfoArray+0x10], edx
	mov eax, 0x43ef8000
	mov [uiInfoArray+0x14], eax
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], uiInfoArray
	call UI_SetSystemCursorPos
	jmp UI_PopupScriptMenu_50
UI_PopupScriptMenu_30:
	mov al, 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;UI_CloseFocusedMenu(int)
UI_CloseFocusedMenu:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov dword [esp], uiInfoArray
	call Menu_Count
	test eax, eax
	jle UI_CloseFocusedMenu_10
	mov dword [esp], uiInfoArray
	call Menu_GetFocused
	test eax, eax
	jz UI_CloseFocusedMenu_20
	mov dword [esp], uiInfoArray
	call Menus_AnyFullScreenVisible
	test eax, eax
	jz UI_CloseFocusedMenu_30
UI_CloseFocusedMenu_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
UI_CloseFocusedMenu_30:
	mov dword [ebp+0x8], uiInfoArray
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Menus_CloseAll
UI_CloseFocusedMenu_20:
	mov dword [esp+0x4], 0x10
	mov [esp], ebx
	call Key_IsCatcherActive
	test al, al
	jz UI_CloseFocusedMenu_10
	mov dword [esp+0x4], 0xffffffef
	mov [esp], ebx
	call Key_RemoveCatcher
	jmp UI_CloseFocusedMenu_10
	nop


;UI_DrawMapLevelshot(int)
UI_DrawMapLevelshot:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov esi, [ebp+0x8]
	cmp byte [g_showLoadingScreenMenu], 0x0
	jz UI_DrawMapLevelshot_10
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz UI_DrawMapLevelshot_20
	mov dword [esp+0x4], _cstring_connect
	mov dword [esp], 0x15
	call DB_FindXAssetHeader
	mov ebx, eax
UI_DrawMapLevelshot_40:
	test ebx, ebx
	jz UI_DrawMapLevelshot_10
	mov [esp+0x4], ebx
	mov dword [esp], uiInfoArray
	call Menus_MenuIsInStack
	test eax, eax
	jz UI_DrawMapLevelshot_30
UI_DrawMapLevelshot_50:
	mov dword [uiInfoArray+0x2c], 0x0
	mov dword [esp+0x8], 0x4004
	mov [esp+0x4], ebx
	mov [esp], esi
	call Window_SetDynamicFlags
	mov [esp+0x4], ebx
	mov dword [esp], uiInfoArray
	call Menu_Paint
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
UI_DrawMapLevelshot_10:
	mov eax, colorBlack
	mov [esp+0x1c], eax
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x43f00000
	mov dword [esp+0xc], 0x44200000
	xor eax, eax
	mov [esp+0x8], eax
	mov [esp+0x4], eax
	mov eax, esi
	shl eax, 0x6
	lea eax, [eax+esi*4]
	add eax, scrPlaceView
	mov [esp], eax
	call UI_FillRect
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
UI_DrawMapLevelshot_20:
	mov dword [esp+0x4], _cstring_connect
	mov dword [esp], uiInfoArray
	call Menus_FindByName
	mov ebx, eax
	jmp UI_DrawMapLevelshot_40
UI_DrawMapLevelshot_30:
	mov [esp+0x4], ebx
	mov dword [esp], uiInfoArray
	call Menus_Open
	jmp UI_DrawMapLevelshot_50


;UI_DrawTextWithGlow(ScreenPlacement const*, char const*, int, Font_s*, float, float, int, int, float, float const*, int, float const*, unsigned char, unsigned char)
UI_DrawTextWithGlow:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov edi, [ebp+0x14]
	movzx ebx, byte [ebp+0x38]
	movzx esi, byte [ebp+0x3c]
	mov eax, [ebp+0x28]
	mov [esp+0x4], eax
	mov [esp], edi
	call R_NormalizedTextScale
	fst dword [ebp-0x1c]
	fstp dword [ebp-0x20]
	mov eax, [ebp+0x24]
	mov [esp+0x18], eax
	mov eax, [ebp+0x20]
	mov [esp+0x14], eax
	lea eax, [ebp-0x20]
	mov [esp+0x10], eax
	lea eax, [ebp-0x1c]
	mov [esp+0xc], eax
	lea eax, [ebp+0x1c]
	mov [esp+0x8], eax
	lea eax, [ebp+0x18]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call ScrPlace_ApplyRect
	movss xmm1, dword [_float_0_50000000]
	movss xmm0, dword [ebp+0x18]
	addss xmm0, xmm1
	movss [esp], xmm0
	movss [ebp-0x48], xmm1
	call floorf
	fstp dword [ebp-0x2c]
	movss xmm0, dword [ebp-0x2c]
	movss [ebp+0x18], xmm0
	movss xmm1, dword [ebp-0x48]
	addss xmm1, [ebp+0x1c]
	movss [esp], xmm1
	call floorf
	fst dword [ebp+0x1c]
	test bl, bl
	jz UI_DrawTextWithGlow_10
	mov edx, esi
	movzx eax, dl
	mov [esp+0x2c], eax
	mov eax, [ebp+0x34]
	mov [esp+0x28], eax
	mov edx, [ebp+0x30]
	mov [esp+0x24], edx
	mov eax, [ebp+0x2c]
	mov [esp+0x20], eax
	mov dword [esp+0x1c], 0x0
	mov eax, [ebp-0x20]
	mov [esp+0x18], eax
	mov eax, [ebp-0x1c]
	mov [esp+0x14], eax
	fstp dword [esp+0x10]
	movss xmm0, dword [ebp-0x2c]
	movss [esp+0xc], xmm0
	mov [esp+0x8], edi
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov edx, [ebp+0xc]
	mov [esp], edx
	call R_AddCmdDrawTextSubtitle
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
UI_DrawTextWithGlow_10:
	mov dword [esp+0x3c], 0x0
	mov dword [esp+0x38], 0x0
	mov dword [esp+0x34], 0x0
	mov dword [esp+0x30], 0x0
	mov dword [esp+0x2c], 0x0
	mov dword [esp+0x28], 0x0
	mov eax, [ebp+0x34]
	mov [esp+0x24], eax
	mov edx, [ebp+0x30]
	mov [esp+0x20], edx
	mov eax, [ebp+0x2c]
	mov [esp+0x1c], eax
	mov eax, [ebp-0x20]
	mov [esp+0x18], eax
	mov eax, [ebp-0x1c]
	mov [esp+0x14], eax
	fstp dword [esp+0x10]
	movss xmm0, dword [ebp-0x2c]
	movss [esp+0xc], xmm0
	mov [esp+0x8], edi
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov edx, [ebp+0xc]
	mov [esp], edx
	call CL_DrawTextPhysicalWithEffects
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;UI_OwnerDrawVisible(int)
UI_OwnerDrawVisible:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	test cl, 0x4
	jz UI_OwnerDrawVisible_10
	mov eax, [ui_netSource]
	cmp dword [eax+0xc], 0x2
	jz UI_OwnerDrawVisible_10
	xor edx, edx
	and ch, 0x10
	jnz UI_OwnerDrawVisible_20
UI_OwnerDrawVisible_30:
	mov eax, edx
	pop ebp
	ret
UI_OwnerDrawVisible_10:
	mov edx, 0x1
	and ch, 0x10
	jz UI_OwnerDrawVisible_30
UI_OwnerDrawVisible_20:
	mov eax, [ui_netSource]
	cmp dword [eax+0xc], 0x2
	mov eax, 0x0
	cmovz edx, eax
	mov eax, edx
	pop ebp
	ret


;UI_DrawConnectScreen(int)
UI_DrawConnectScreen:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xe0c
	mov ebx, [ebp+0x8]
	mov eax, cls
	mov eax, [eax+0x2dc6b4]
	test eax, eax
	jnz UI_DrawConnectScreen_10
	mov eax, legacyHacks
	cmp byte [eax+0xc], 0x0
	jz UI_DrawConnectScreen_20
UI_DrawConnectScreen_10:
	mov eax, [sharedUiInfo+0x40]
	mov [ebp-0xdd0], eax
	lea eax, [ebp-0xda4]
	mov [esp+0x4], eax
	mov [esp], ebx
	call CL_GetClientState
	mov eax, cls
	mov eax, [eax+0x2dc6b4]
	test eax, eax
	jz UI_DrawConnectScreen_30
	mov edx, legacyHacks
	cmp byte [edx+0xc], 0x0
	jnz UI_DrawConnectScreen_40
UI_DrawConnectScreen_30:
	cmp byte [g_mapname], 0x0
	jnz UI_DrawConnectScreen_50
	mov esi, 0x1
	cmp dword [ebp-0xda4], 0x4
	jle UI_DrawConnectScreen_60
UI_DrawConnectScreen_100:
	mov dword [esp+0x4], _cstring_localhost
	lea eax, [ebp-0xd9c]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	mov eax, 0x0
	cmovz esi, eax
	call DB_GetLoadedFraction
	fstp dword [ebp-0xdd4]
	mov edx, esi
	movss xmm0, dword [ebp-0xdd4]
	ucomiss xmm0, [_float_1_00000000]
	mov eax, 0x1
	cmovz esi, eax
	cmovp esi, edx
	mov eax, [ebp-0xda4]
	lea edx, [eax-0x3]
	cmp edx, 0x5
	ja UI_DrawConnectScreen_70
	jmp dword [edx*4+UI_DrawConnectScreen_jumptab_0]
UI_DrawConnectScreen_50:
	mov eax, [sharedUiInfo+0x114c]
	test eax, eax
	jg UI_DrawConnectScreen_80
UI_DrawConnectScreen_250:
	mov edi, g_gametype
UI_DrawConnectScreen_350:
	mov esi, [ui_connectScreenTextGlowColor]
	add esi, 0xc
	mov ebx, 0x3f000000
	mov [esp+0x4], ebx
	mov edx, [ebp-0xdd0]
	mov [esp], edx
	call R_NormalizedTextScale
	fstp dword [ebp-0xdc4]
	mov eax, [ebp-0xdd0]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call R_TextWidth
	mov dword [esp+0x34], 0x0
	mov dword [esp+0x30], 0x0
	mov [esp+0x2c], esi
	mov dword [esp+0x28], 0x6
	mov edx, colorWhite
	mov [esp+0x24], edx
	mov [esp+0x20], ebx
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x42b20000
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0xdc4]
	cvttss2si edx, xmm0
	mov eax, edx
	shr eax, 0x1f
	add eax, edx
	sar eax, 1
	cvtsi2ss xmm1, eax
	movss xmm0, dword [_float_320_00000000]
	subss xmm0, xmm1
	movss [esp+0x10], xmm0
	mov edx, [ebp-0xdd0]
	mov [esp+0xc], edx
	mov dword [esp+0x8], 0x7fffffff
	mov [esp+0x4], edi
	mov eax, scrPlaceFull
	mov [esp], eax
	call UI_DrawTextWithGlow
	mov edi, [ui_connectScreenTextGlowColor]
	add edi, 0xc
	mov eax, [sharedUiInfo+0x1c58]
	test eax, eax
	jg UI_DrawConnectScreen_90
UI_DrawConnectScreen_220:
	mov esi, g_mapname
UI_DrawConnectScreen_340:
	mov ebx, 0x3f000000
	mov [esp+0x4], ebx
	mov eax, [ebp-0xdd0]
	mov [esp], eax
	call R_NormalizedTextScale
	fstp dword [ebp-0xdc0]
	mov edx, [ebp-0xdd0]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call R_TextWidth
	mov dword [esp+0x34], 0x0
	mov dword [esp+0x30], 0x0
	mov [esp+0x2c], edi
	mov dword [esp+0x28], 0x6
	mov edx, colorWhite
	mov [esp+0x24], edx
	mov [esp+0x20], ebx
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x42ee0000
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0xdc0]
	cvttss2si edx, xmm0
	mov eax, edx
	shr eax, 0x1f
	add eax, edx
	sar eax, 1
	cvtsi2ss xmm1, eax
	movss xmm0, dword [_float_320_00000000]
	subss xmm0, xmm1
	movss [esp+0x10], xmm0
	mov edi, [ebp-0xdd0]
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x7fffffff
	mov [esp+0x4], esi
	mov eax, scrPlaceFull
	mov [esp], eax
	call UI_DrawTextWithGlow
	xor esi, esi
	cmp dword [ebp-0xda4], 0x4
	jg UI_DrawConnectScreen_100
UI_DrawConnectScreen_60:
	lea eax, [ebp-0x99c]
	mov [esp], eax
	call UI_SafeTranslateString
	mov [ebp-0xdac], eax
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, [ebp-0xdac]
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [ebp-0xdcc], ecx
	test ecx, ecx
	jle UI_DrawConnectScreen_100
	xor edx, edx
	movss xmm0, dword [_float_299_00000000]
	movss [ebp-0xdc8], xmm0
	xor edi, edi
	xor ebx, ebx
UI_DrawConnectScreen_140:
	mov ecx, [ebp-0xdac]
	add ecx, ebx
	movzx eax, byte [ecx]
	mov [ebp+edx-0x9c], al
	cmp edx, 0x28
	jle UI_DrawConnectScreen_110
	test ebx, ebx
	mov eax, 0x1
	cmovg edi, eax
UI_DrawConnectScreen_110:
	cmp edx, 0x39
	jg UI_DrawConnectScreen_120
	mov eax, [ebp-0xdcc]
	sub eax, 0x1
	cmp ebx, eax
	jz UI_DrawConnectScreen_120
	test edi, edi
	jz UI_DrawConnectScreen_130
	cmp byte [ecx], 0x20
	jz UI_DrawConnectScreen_120
UI_DrawConnectScreen_130:
	add edx, 0x1
UI_DrawConnectScreen_260:
	add ebx, 0x1
	cmp [ebp-0xdcc], ebx
	jnz UI_DrawConnectScreen_140
	jmp UI_DrawConnectScreen_100
UI_DrawConnectScreen_400:
	mov edx, legacyHacks
	cmp byte [edx+0xc], 0x0
	jz UI_DrawConnectScreen_150
UI_DrawConnectScreen_40:
	movss xmm1, dword [_float_0_50000000]
	mov eax, scrPlaceFull
	mulss xmm1, [eax+0x4]
	mov eax, [ui_smallFont]
	movss xmm0, dword [eax+0xc]
	ucomiss xmm0, xmm1
	jae UI_DrawConnectScreen_160
	mov eax, [ui_extraBigFont]
	ucomiss xmm1, [eax+0xc]
	jb UI_DrawConnectScreen_170
	mov eax, [sharedUiInfo+0x3c]
	jmp UI_DrawConnectScreen_180
UI_DrawConnectScreen_380:
	mov edx, esi
	test dl, dl
	jnz UI_DrawConnectScreen_190
UI_DrawConnectScreen_270:
	sub eax, 0x7
	cmp eax, 0x1
	ja UI_DrawConnectScreen_70
	mov eax, fs_gameDirVar
	mov eax, [eax]
	mov eax, [eax+0xc]
	cmp byte [eax], 0x0
	jz UI_DrawConnectScreen_70
	add eax, 0x5
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_mod_s
	mov dword [esp+0x4], 0x100
	lea ebx, [ebp-0x19c]
	mov [esp], ebx
	call Com_sprintf
	mov esi, 0x3f000000
	mov [esp+0x4], esi
	mov eax, [ebp-0xdd0]
	mov [esp], eax
	call R_NormalizedTextScale
	fstp dword [ebp-0xdb0]
	mov edx, [ebp-0xdd0]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call R_TextWidth
	mov dword [esp+0x34], 0x0
	mov dword [esp+0x30], 0x0
	mov dword [esp+0x2c], 0x0
	mov dword [esp+0x28], 0x6
	mov edx, colorWhite
	mov [esp+0x24], edx
	mov [esp+0x20], esi
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x432f0000
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0xdb0]
	cvttss2si edx, xmm0
	mov eax, edx
	shr eax, 0x1f
	add eax, edx
	sar eax, 1
	cvtsi2ss xmm1, eax
	movss xmm0, dword [_float_320_00000000]
	subss xmm0, xmm1
	movss [esp+0x10], xmm0
	mov edi, [ebp-0xdd0]
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x7fffffff
	mov [esp+0x4], ebx
	mov eax, scrPlaceFull
	mov [esp], eax
	call UI_DrawTextWithGlow
UI_DrawConnectScreen_70:
	add esp, 0xe0c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
UI_DrawConnectScreen_20:
	mov [esp], ebx
	call CG_DrawInformation
	jmp UI_DrawConnectScreen_10
UI_DrawConnectScreen_160:
	mov eax, [sharedUiInfo+0x2c]
UI_DrawConnectScreen_180:
	mov dword [esp+0x10], 0x3f000000
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x42b20000
	mov dword [esp+0x4], 0x43a00000
	lea eax, [edx+0xc]
	mov [esp], eax
	call UI_DisplayDownloadInfo
	add esp, 0xe0c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
UI_DrawConnectScreen_90:
	xor esi, esi
	mov ebx, sharedUiInfo
UI_DrawConnectScreen_210:
	mov eax, [ebx+0x1c60]
	mov [esp+0x4], eax
	mov dword [esp], g_mapname
	call Q_stricmp
	test eax, eax
	jz UI_DrawConnectScreen_200
	add esi, 0x1
	add ebx, 0xa0
	cmp esi, [sharedUiInfo+0x1c58]
	jl UI_DrawConnectScreen_210
	jmp UI_DrawConnectScreen_220
UI_DrawConnectScreen_80:
	xor esi, esi
	mov ebx, sharedUiInfo
UI_DrawConnectScreen_240:
	mov eax, [ebx+0x1150]
	mov [esp+0x4], eax
	mov dword [esp], g_gametype
	call Q_stricmp
	test eax, eax
	jz UI_DrawConnectScreen_230
	add esi, 0x1
	add ebx, 0x8
	cmp esi, [sharedUiInfo+0x114c]
	jl UI_DrawConnectScreen_240
	jmp UI_DrawConnectScreen_250
UI_DrawConnectScreen_120:
	mov byte [ebp+edx-0x9b], 0x0
	mov dword [esp+0x4], 0x3f000000
	mov eax, [ebp-0xdd0]
	mov [esp], eax
	call R_NormalizedTextScale
	fstp dword [ebp-0xdbc]
	mov edx, [ebp-0xdd0]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x0
	lea edi, [ebp-0x9c]
	mov [esp], edi
	call R_TextWidth
	mov dword [esp+0x34], 0x0
	mov dword [esp+0x30], 0x0
	mov dword [esp+0x2c], 0x0
	mov dword [esp+0x28], 0x6
	mov edx, colorYellow
	mov [esp+0x24], edx
	mov dword [esp+0x20], 0x3f000000
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x0
	movss xmm0, dword [ebp-0xdc8]
	movss [esp+0x14], xmm0
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0xdbc]
	cvttss2si edx, xmm0
	mov eax, edx
	shr eax, 0x1f
	add eax, edx
	sar eax, 1
	cvtsi2ss xmm1, eax
	movss xmm0, dword [_float_320_00000000]
	subss xmm0, xmm1
	movss [esp+0x10], xmm0
	mov eax, [ebp-0xdd0]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x7fffffff
	mov [esp+0x4], edi
	mov eax, scrPlaceFull
	mov [esp], eax
	call UI_DrawTextWithGlow
	movss xmm0, dword [ebp-0xdc8]
	addss xmm0, [_float_22_00000000]
	movss [ebp-0xdc8], xmm0
	xor edi, edi
	xor edx, edx
	jmp UI_DrawConnectScreen_260
UI_DrawConnectScreen_390:
	mov edx, esi
	test dl, dl
	jz UI_DrawConnectScreen_270
	mov dword [esp], _cstring_exe_awaitingchal
UI_DrawConnectScreen_360:
	call UI_SafeTranslateString
	mov esi, eax
	cld
	mov ecx, 0xa
	xor eax, eax
	lea edi, [ebp-0x60]
	rep stosd
	mov eax, [ebp-0xda0]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_d
	lea ebx, [ebp-0x38]
	mov [esp], ebx
	call sprintf
	mov dword [ebp-0x60], 0x1
	mov [ebp-0x5c], ebx
	mov dword [esp+0xc], 0x400
	lea ebx, [ebp-0x59c]
	mov [esp+0x8], ebx
	lea eax, [ebp-0x60]
	mov [esp+0x4], eax
	mov [esp], esi
	call UI_ReplaceConversions
	mov [esp], ebx
	call va
	mov edi, eax
	jmp UI_DrawConnectScreen_280
UI_DrawConnectScreen_420:
	mov edx, esi
	test dl, dl
	jz UI_DrawConnectScreen_270
	mov dword [esp], _cstring_exe_awaitinghost
	call UI_SafeTranslateString
	mov edi, eax
	jmp UI_DrawConnectScreen_280
UI_DrawConnectScreen_410:
	mov edx, esi
	test dl, dl
	jz UI_DrawConnectScreen_270
	mov dword [esp], _cstring_exe_uploadingsta
	call UI_SafeTranslateString
	mov edi, eax
	jmp UI_DrawConnectScreen_280
UI_DrawConnectScreen_170:
	mov eax, [ui_bigFont]
	ucomiss xmm1, [eax+0xc]
	jae UI_DrawConnectScreen_290
	mov eax, [sharedUiInfo+0x38]
	jmp UI_DrawConnectScreen_180
UI_DrawConnectScreen_150:
	mov edx, esi
	test dl, dl
	jz UI_DrawConnectScreen_270
	mov dword [esp], _cstring_exe_awaitinggame
	call UI_SafeTranslateString
	mov edi, eax
UI_DrawConnectScreen_280:
	test edi, edi
	jz UI_DrawConnectScreen_300
	call Sys_Milliseconds
	mov ecx, eax
	mov edx, 0x10624dd3
	imul edx
	sar edx, 0x5
	mov eax, ecx
	sar eax, 0x1f
	sub edx, eax
	and edx, 0x3
	cmp edx, 0x2
	jz UI_DrawConnectScreen_310
	cmp edx, 0x3
	jz UI_DrawConnectScreen_320
	sub edx, 0x1
	jz UI_DrawConnectScreen_330
	mov dword [ebp-0xdb8], _cstring____
UI_DrawConnectScreen_370:
	mov ebx, 0x3f000000
	mov [esp+0x4], ebx
	mov edx, [ebp-0xdd0]
	mov [esp], edx
	call R_NormalizedTextScale
	fstp dword [ebp-0xdb4]
	mov eax, [ebp-0xdd0]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call R_TextWidth
	mov esi, eax
	mov edx, [ebp-0xdb8]
	mov [esp+0x8], edx
	mov [esp+0x4], edi
	mov dword [esp], _cstring_ss1
	call va
	mov dword [esp+0x34], 0x0
	mov dword [esp+0x30], 0x0
	mov dword [esp+0x2c], 0x0
	mov dword [esp+0x28], 0x6
	mov edx, colorWhite
	mov [esp+0x24], edx
	mov [esp+0x20], ebx
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x43110000
	cvtsi2ss xmm0, esi
	mulss xmm0, [ebp-0xdb4]
	cvttss2si ecx, xmm0
	mov edx, ecx
	shr edx, 0x1f
	add edx, ecx
	sar edx, 1
	cvtsi2ss xmm1, edx
	movss xmm0, dword [_float_320_00000000]
	subss xmm0, xmm1
	movss [esp+0x10], xmm0
	mov edi, [ebp-0xdd0]
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x7fffffff
	mov [esp+0x4], eax
	mov eax, scrPlaceFull
	mov [esp], eax
	call UI_DrawTextWithGlow
	mov eax, [ebp-0xda4]
	jmp UI_DrawConnectScreen_270
UI_DrawConnectScreen_290:
	mov eax, [sharedUiInfo+0x28]
	jmp UI_DrawConnectScreen_180
UI_DrawConnectScreen_200:
	lea eax, [esi+esi*4]
	shl eax, 0x5
	mov eax, [eax+sharedUiInfo+0x1c5c]
	mov [esp], eax
	call UI_SafeTranslateString
	mov esi, eax
	jmp UI_DrawConnectScreen_340
UI_DrawConnectScreen_230:
	mov eax, [esi*8+sharedUiInfo+0x1154]
	mov [esp], eax
	call UI_SafeTranslateString
	mov edi, eax
	jmp UI_DrawConnectScreen_350
UI_DrawConnectScreen_300:
	mov eax, [ebp-0xda4]
	jmp UI_DrawConnectScreen_270
UI_DrawConnectScreen_190:
	mov dword [esp], _cstring_exe_awaitingconn
	jmp UI_DrawConnectScreen_360
UI_DrawConnectScreen_310:
	mov dword [ebp-0xdb8], _cstring__
	jmp UI_DrawConnectScreen_370
UI_DrawConnectScreen_320:
	mov dword [ebp-0xdb8], _cstring_4
	jmp UI_DrawConnectScreen_370
UI_DrawConnectScreen_330:
	mov dword [ebp-0xdb8], _cstring___
	jmp UI_DrawConnectScreen_370
	
	
UI_DrawConnectScreen_jumptab_0:
	dd UI_DrawConnectScreen_380
	dd UI_DrawConnectScreen_390
	dd UI_DrawConnectScreen_400
	dd UI_DrawConnectScreen_410
	dd UI_DrawConnectScreen_420
	dd UI_DrawConnectScreen_420


;UI_DrawHighlightRect(ScreenPlacement const*, float, float, float, float, int, int, float, float const*, float const*)
UI_DrawHighlightRect:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov edi, [ebp+0x1c]
	mov esi, [ebp+0x20]
	mov ebx, [ebp+0x24]
	mov [esp+0x18], esi
	mov [esp+0x14], edi
	lea eax, [ebp+0x18]
	mov [esp+0x10], eax
	lea eax, [ebp+0x14]
	mov [esp+0xc], eax
	lea eax, [ebp+0x10]
	mov [esp+0x8], eax
	lea eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call ScrPlace_ApplyRect
	xor eax, eax
	mov [ebp-0x1c], eax
	mov [ebp-0x20], eax
	mov [ebp-0x24], ebx
	mov [ebp-0x28], ebx
	mov [esp+0x18], esi
	mov [esp+0x14], edi
	lea eax, [ebp-0x28]
	mov [esp+0x10], eax
	lea eax, [ebp-0x24]
	mov [esp+0xc], eax
	lea eax, [ebp-0x20]
	mov [esp+0x8], eax
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call ScrPlace_ApplyRect
	movss xmm1, dword [ebp+0x10]
	movss xmm2, dword [ebp+0xc]
	movss [ebp-0x48], xmm2
	lea ebx, [ebp-0x48]
	movss [ebp-0x44], xmm1
	movaps xmm0, xmm2
	addss xmm0, [ebp+0x14]
	movss [ebp-0x40], xmm0
	movss [ebp-0x3c], xmm1
	addss xmm1, [ebp-0x28]
	movss xmm3, dword [ebp-0x24]
	subss xmm0, xmm3
	movss [ebp-0x38], xmm0
	movss [ebp-0x34], xmm1
	addss xmm2, xmm3
	movss [ebp-0x30], xmm2
	movss [ebp-0x2c], xmm1
	mov eax, [sharedUiInfo+0x20]
	mov [esp+0x8], eax
	mov eax, [ebp+0x28]
	mov [esp+0x4], eax
	mov [esp], ebx
	call R_AddCmdDrawQuadPic
	movss xmm1, dword [ebp+0x10]
	movss xmm2, dword [ebp+0xc]
	movss [ebp-0x48], xmm2
	movss [ebp-0x44], xmm1
	movss xmm4, dword [ebp-0x28]
	movaps xmm3, xmm2
	addss xmm3, [ebp-0x24]
	movss [ebp-0x40], xmm3
	movaps xmm0, xmm1
	addss xmm0, xmm4
	movss [ebp-0x3c], xmm0
	addss xmm1, [ebp+0x18]
	movss [ebp-0x38], xmm3
	movaps xmm0, xmm1
	subss xmm0, xmm4
	movss [ebp-0x34], xmm0
	movss [ebp-0x30], xmm2
	movss [ebp-0x2c], xmm1
	mov eax, [sharedUiInfo+0x20]
	mov [esp+0x8], eax
	mov eax, [ebp+0x28]
	mov [esp+0x4], eax
	mov [esp], ebx
	call R_AddCmdDrawQuadPic
	movss xmm2, dword [ebp+0x10]
	addss xmm2, [ebp+0x18]
	movss xmm1, dword [ebp+0xc]
	movss [ebp-0x48], xmm1
	movss [ebp-0x44], xmm2
	movaps xmm4, xmm2
	subss xmm4, [ebp-0x28]
	movss xmm3, dword [ebp-0x24]
	movaps xmm0, xmm1
	addss xmm0, xmm3
	movss [ebp-0x40], xmm0
	movss [ebp-0x3c], xmm4
	addss xmm1, [ebp+0x14]
	movaps xmm0, xmm1
	subss xmm0, xmm3
	movss [ebp-0x38], xmm0
	movss [ebp-0x34], xmm4
	movss [ebp-0x30], xmm1
	movss [ebp-0x2c], xmm2
	mov eax, [sharedUiInfo+0x20]
	mov [esp+0x8], eax
	mov eax, [ebp+0x2c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call R_AddCmdDrawQuadPic
	movss xmm2, dword [ebp+0x10]
	movss xmm0, dword [ebp+0xc]
	addss xmm0, [ebp+0x14]
	movss [ebp-0x48], xmm0
	movss [ebp-0x44], xmm2
	movaps xmm1, xmm2
	addss xmm1, [ebp+0x18]
	movss [ebp-0x40], xmm0
	movss [ebp-0x3c], xmm1
	movss xmm3, dword [ebp-0x28]
	subss xmm0, [ebp-0x24]
	movss [ebp-0x38], xmm0
	subss xmm1, xmm3
	movss [ebp-0x34], xmm1
	movss [ebp-0x30], xmm0
	addss xmm2, xmm3
	movss [ebp-0x2c], xmm2
	mov eax, [sharedUiInfo+0x20]
	mov [esp+0x8], eax
	mov eax, [ebp+0x2c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call R_AddCmdDrawQuadPic
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop
	add [eax], al


;UI_FeederItemEnabled(int, float, int)
UI_FeederItemEnabled:
	push ebp
	mov ebp, esp
	mov eax, 0x1
	pop ebp
	ret


;UI_GetMapDisplayName(char const*)
UI_GetMapDisplayName:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0x8]
	mov [ebp-0x1c], eax
	mov edx, [sharedUiInfo+0x1c58]
	test edx, edx
	jg UI_GetMapDisplayName_10
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
UI_GetMapDisplayName_10:
	xor esi, esi
	mov ebx, sharedUiInfo
	mov edi, sharedUiInfo+0x1c5c
UI_GetMapDisplayName_30:
	mov eax, [ebx+0x1c60]
	mov [esp+0x4], eax
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz UI_GetMapDisplayName_20
	add esi, 0x1
	add edi, 0xa0
	add ebx, 0xa0
	cmp esi, [sharedUiInfo+0x1c58]
	jl UI_GetMapDisplayName_30
	mov eax, [ebp-0x1c]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
UI_GetMapDisplayName_20:
	mov eax, [edi]
	mov [ebp+0x8], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp UI_SafeTranslateString
	nop


;UI_OverrideCursorPos(int, itemDef_s*)
UI_OverrideCursorPos:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0xc]
	movss xmm0, dword [edi+0x124]
	ucomiss xmm0, [_float_4_00000000]
	jnz UI_OverrideCursorPos_10
	jp UI_OverrideCursorPos_10
	mov eax, [ui_currentNetMap]
	mov esi, [eax+0xc]
	mov ebx, [sharedUiInfo+0x1c58]
	test ebx, ebx
	jle UI_OverrideCursorPos_20
	xor edx, edx
	xor ecx, ecx
	mov eax, sharedUiInfo
UI_OverrideCursorPos_50:
	cmp dword [eax+0x1cf8], 0x0
	jz UI_OverrideCursorPos_30
	cmp edx, esi
	jz UI_OverrideCursorPos_40
	add ecx, 0x1
UI_OverrideCursorPos_30:
	add edx, 0x1
	add eax, 0xa0
	cmp ebx, edx
	jnz UI_OverrideCursorPos_50
UI_OverrideCursorPos_20:
	xor ecx, ecx
UI_OverrideCursorPos_40:
	mov eax, [ebp+0x8]
	mov [edi+eax*4+0x128], ecx
UI_OverrideCursorPos_70:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
UI_OverrideCursorPos_10:
	ucomiss xmm0, [_float_39_00000000]
	jp UI_OverrideCursorPos_60
	jz UI_OverrideCursorPos_70
UI_OverrideCursorPos_60:
	ucomiss xmm0, [_float_2_00000000]
	jnz UI_OverrideCursorPos_70
	jp UI_OverrideCursorPos_70
	mov esi, [edi+0x12c]
	mov ecx, [ebp+0x8]
	mov edx, [esi+ecx*4+0x8]
	test edx, edx
	jz UI_OverrideCursorPos_80
	mov ecx, [sharedUiInfo+0x72f4]
	test ecx, ecx
	js UI_OverrideCursorPos_70
	mov ebx, [ebp+0x8]
	mov eax, [edi+ebx*4+0x128]
	cmp eax, [esi+ebx*4+0x4]
	jl UI_OverrideCursorPos_70
	cmp edx, eax
	jl UI_OverrideCursorPos_70
	mov ebx, ecx
	sub ebx, eax
	mov [esp+0x4], edi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Item_ListBox_MaxScroll
	mov edx, ebx
	mov ecx, [ebp+0x8]
	add edx, [esi+ecx*4+0x4]
	cmp eax, edx
	cmovg eax, edx
	test eax, eax
	mov edx, 0x0
	cmovle eax, edx
	mov [esi+ecx*4+0x4], eax
	add [esi+ecx*4+0x8], ebx
	mov eax, [sharedUiInfo+0x72f4]
	mov [edi+ecx*4+0x128], eax
	jmp UI_OverrideCursorPos_70
UI_OverrideCursorPos_80:
	mov dword [edi+ecx*4+0x128], 0xffffffff
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	add [eax], al


;UI_DrawTextWithCursor(ScreenPlacement const*, char const*, int, Font_s*, float, float, int, int, float, float const*, int, int, char)
UI_DrawTextWithCursor:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x50
	mov esi, [ebp+0x14]
	movsx ebx, byte [ebp+0x38]
	mov eax, [ebp+0x28]
	mov [esp+0x4], eax
	mov [esp], esi
	call R_NormalizedTextScale
	fst dword [ebp-0xc]
	fstp dword [ebp-0x10]
	mov eax, [ebp+0x24]
	mov [esp+0x18], eax
	mov eax, [ebp+0x20]
	mov [esp+0x14], eax
	lea eax, [ebp-0x10]
	mov [esp+0x10], eax
	lea eax, [ebp-0xc]
	mov [esp+0xc], eax
	lea eax, [ebp+0x1c]
	mov [esp+0x8], eax
	lea eax, [ebp+0x18]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call ScrPlace_ApplyRect
	movss xmm1, dword [_float_0_50000000]
	movss xmm0, dword [ebp+0x18]
	addss xmm0, xmm1
	movss [esp], xmm0
	movss [ebp-0x28], xmm1
	call floorf
	fstp dword [esp+0xc]
	movss xmm0, dword [esp+0xc]
	movss [ebp+0x18], xmm0
	movss xmm1, dword [ebp-0x28]
	addss xmm1, [ebp+0x1c]
	movss [esp], xmm1
	call floorf
	fst dword [ebp+0x1c]
	mov [esp+0x28], ebx
	mov eax, [ebp+0x34]
	mov [esp+0x24], eax
	mov eax, [ebp+0x30]
	mov [esp+0x20], eax
	mov eax, [ebp+0x2c]
	mov [esp+0x1c], eax
	mov eax, [ebp-0x10]
	mov [esp+0x18], eax
	mov eax, [ebp-0xc]
	mov [esp+0x14], eax
	fstp dword [esp+0x10]
	mov [esp+0x8], esi
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call CL_DrawTextPhysicalWithCursor
	add esp, 0x50
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;UI_GetTalkerClientNum(int, int)
UI_GetTalkerClientNum:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	xor esi, esi
	xor ebx, ebx
	jmp UI_GetTalkerClientNum_10
UI_GetTalkerClientNum_40:
	add esi, 0x1
UI_GetTalkerClientNum_30:
	add ebx, 0x1
	cmp ebx, 0x40
	jz UI_GetTalkerClientNum_20
UI_GetTalkerClientNum_10:
	mov [esp], ebx
	call CL_IsClientLocal
	test al, al
	jnz UI_GetTalkerClientNum_30
	mov [esp+0x4], ebx
	mov [esp], edi
	call CL_IsPlayerTalking
	test al, al
	jz UI_GetTalkerClientNum_30
	cmp [ebp+0xc], esi
	jnz UI_GetTalkerClientNum_40
	mov eax, ebx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
UI_GetTalkerClientNum_20:
	mov ebx, 0xffffffff
	mov eax, ebx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;UI_OwnerDrawHandleKey(int, int, float*, int)
UI_OwnerDrawHandleKey:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov eax, [ebp+0x8]
	sub eax, 0xcd
	cmp eax, 0x30
	ja UI_OwnerDrawHandleKey_10
	jmp dword [eax*4+UI_OwnerDrawHandleKey_jumptab_0]
UI_OwnerDrawHandleKey_470:
	mov eax, [ebp+0x14]
	sub eax, 0xc8
	cmp eax, 0x1
	jbe UI_OwnerDrawHandleKey_20
	cmp dword [ebp+0x14], 0xd
	jz UI_OwnerDrawHandleKey_20
	cmp dword [ebp+0x14], 0xbf
	jz UI_OwnerDrawHandleKey_20
UI_OwnerDrawHandleKey_10:
	xor eax, eax
UI_OwnerDrawHandleKey_50:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
UI_OwnerDrawHandleKey_510:
	mov eax, [ebp+0x14]
	sub eax, 0xc8
	cmp eax, 0x1
	jbe UI_OwnerDrawHandleKey_30
	cmp dword [ebp+0x14], 0xd
	jz UI_OwnerDrawHandleKey_30
	cmp dword [ebp+0x14], 0xbf
	jnz UI_OwnerDrawHandleKey_10
UI_OwnerDrawHandleKey_30:
	cmp dword [ebp+0x14], 0xc9
	jz UI_OwnerDrawHandleKey_40
	mov ecx, [ui_joinGameType]
	mov edx, [ecx+0xc]
	add edx, 0x1
	cmp edx, [sharedUiInfo+0x1b54]
	mov eax, 0x0
	cmovz edx, eax
UI_OwnerDrawHandleKey_370:
	mov [esp+0x4], edx
	mov [esp], ecx
	call Cvar_SetInt
	mov dword [esp+0x4], 0x1
	mov dword [esp], uiInfoArray
	call UI_BuildServerDisplayList
	mov eax, 0x1
	jmp UI_OwnerDrawHandleKey_50
UI_OwnerDrawHandleKey_490:
	mov eax, [ebp+0x14]
	sub eax, 0xc8
	cmp eax, 0x1
	jbe UI_OwnerDrawHandleKey_60
	cmp dword [ebp+0x14], 0xd
	jz UI_OwnerDrawHandleKey_60
	cmp dword [ebp+0x14], 0xbf
	jnz UI_OwnerDrawHandleKey_10
UI_OwnerDrawHandleKey_60:
	cmp dword [ebp+0x14], 0xc9
	jz UI_OwnerDrawHandleKey_70
	mov eax, [ui_serverFilterType]
	add eax, 0x1
	mov [ui_serverFilterType], eax
UI_OwnerDrawHandleKey_380:
	cmp eax, 0x0
	jle UI_OwnerDrawHandleKey_80
UI_OwnerDrawHandleKey_450:
	mov dword [ui_serverFilterType], 0x0
	jmp UI_OwnerDrawHandleKey_90
UI_OwnerDrawHandleKey_500:
	mov eax, [ebp+0x14]
	sub eax, 0xc8
	cmp eax, 0x1
	jbe UI_OwnerDrawHandleKey_100
	cmp dword [ebp+0x14], 0xd
	jz UI_OwnerDrawHandleKey_100
	cmp dword [ebp+0x14], 0xbf
	jnz UI_OwnerDrawHandleKey_10
UI_OwnerDrawHandleKey_100:
	cmp dword [ebp+0x14], 0xc9
	jz UI_OwnerDrawHandleKey_110
	mov ecx, [ui_netGameType]
	mov edx, [ecx+0xc]
	add edx, 0x1
	cmp edx, [sharedUiInfo+0x114c]
	mov eax, 0x0
	cmovz edx, eax
UI_OwnerDrawHandleKey_340:
	mov [esp+0x4], edx
	mov [esp], ecx
	call Cvar_SetInt
	mov eax, [ui_netGameType]
	mov eax, [eax+0xc]
	mov eax, [eax*8+sharedUiInfo+0x1150]
	mov [esp+0x4], eax
	mov eax, [ui_netGameTypeName]
	mov [esp], eax
	call Cvar_SetString
	mov eax, [ui_netGameType]
	mov eax, [eax+0xc]
	mov eax, [eax*8+sharedUiInfo+0x1150]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_g_gametype
	call Cvar_SetStringByName
	mov eax, [ui_netGameType]
	mov esi, [eax+0xc]
	mov ecx, [sharedUiInfo+0x1c58]
	test ecx, ecx
	jle UI_OwnerDrawHandleKey_120
	xor ebx, ebx
	mov edx, sharedUiInfo
UI_OwnerDrawHandleKey_140:
	mov dword [edx+0x1cf8], 0x0
	mov eax, [edx+0x1c70]
	mov ecx, esi
	sar eax, cl
	test al, 0x1
	jz UI_OwnerDrawHandleKey_130
	mov dword [edx+0x1cf8], 0x1
UI_OwnerDrawHandleKey_130:
	add ebx, 0x1
	mov ecx, [sharedUiInfo+0x1c58]
	add edx, 0xa0
	cmp ebx, ecx
	jl UI_OwnerDrawHandleKey_140
UI_OwnerDrawHandleKey_120:
	mov eax, [ui_currentNetMap]
	mov ebx, [eax+0xc]
	lea eax, [ebx+ebx*4]
	shl eax, 0x5
	mov eax, [eax+sharedUiInfo+0x1cf8]
	test eax, eax
	jz UI_OwnerDrawHandleKey_150
	test ecx, ecx
	jle UI_OwnerDrawHandleKey_160
	xor esi, esi
	xor eax, eax
	mov edx, sharedUiInfo
UI_OwnerDrawHandleKey_190:
	mov edi, [edx+0x1cf8]
	test edi, edi
	jz UI_OwnerDrawHandleKey_170
	cmp eax, ebx
	jz UI_OwnerDrawHandleKey_180
	add esi, 0x1
UI_OwnerDrawHandleKey_170:
	add eax, 0x1
	add edx, 0xa0
	cmp ecx, eax
	jnz UI_OwnerDrawHandleKey_190
UI_OwnerDrawHandleKey_160:
	xor esi, esi
UI_OwnerDrawHandleKey_180:
	mov dword [esp+0x10], _cstring_createserver_map
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], 0x0
	mov dword [esp], uiInfoArray
	call Menu_SetFeederSelection
UI_OwnerDrawHandleKey_430:
	xor eax, eax
	call UI_SelectCurrentMap
UI_OwnerDrawHandleKey_310:
	mov eax, 0x1
UI_OwnerDrawHandleKey_320:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
UI_OwnerDrawHandleKey_480:
	mov eax, [ebp+0x14]
	sub eax, 0xc8
	cmp eax, 0x1
	jbe UI_OwnerDrawHandleKey_200
	cmp dword [ebp+0x14], 0xd
	jz UI_OwnerDrawHandleKey_200
	cmp dword [ebp+0x14], 0xbf
	jnz UI_OwnerDrawHandleKey_10
UI_OwnerDrawHandleKey_200:
	cmp dword [ebp+0x14], 0xc9
	jz UI_OwnerDrawHandleKey_210
	mov ecx, [ui_netSource]
	mov edx, [ecx+0xc]
	add edx, 0x1
	cmp edx, 0x3
	mov eax, 0x0
	cmovz edx, eax
UI_OwnerDrawHandleKey_360:
	mov [esp+0x4], edx
	mov [esp], ecx
	call Cvar_SetInt
	mov eax, [ui_netSource]
	cmp dword [eax+0xc], 0x1
	jz UI_OwnerDrawHandleKey_90
	mov edx, 0x1
	xor eax, eax
	call UI_StartServerRefresh
UI_OwnerDrawHandleKey_90:
	mov dword [esp+0x4], 0x1
	mov dword [esp], uiInfoArray
	call UI_BuildServerDisplayList
	xor eax, eax
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
UI_OwnerDrawHandleKey_20:
	mov eax, [ui_netGameType]
	mov esi, [eax+0xc]
	mov eax, [sharedUiInfo+0x1c58]
	test eax, eax
	jle UI_OwnerDrawHandleKey_220
	xor ebx, ebx
	xor edi, edi
	mov edx, sharedUiInfo
UI_OwnerDrawHandleKey_240:
	mov dword [edx+0x1cf8], 0x0
	mov eax, [edx+0x1c70]
	mov ecx, esi
	sar eax, cl
	test al, 0x1
	jz UI_OwnerDrawHandleKey_230
	add edi, 0x1
	mov dword [edx+0x1cf8], 0x1
UI_OwnerDrawHandleKey_230:
	add ebx, 0x1
	add edx, 0xa0
	cmp [sharedUiInfo+0x1c58], ebx
	jg UI_OwnerDrawHandleKey_240
UI_OwnerDrawHandleKey_330:
	cmp dword [ebp+0x14], 0xc9
	jz UI_OwnerDrawHandleKey_250
	mov edx, [ui_gametype]
	mov eax, [edx+0xc]
	add eax, 0x1
	cmp eax, [sharedUiInfo+0x114c]
	jge UI_OwnerDrawHandleKey_260
	cmp eax, 0x2
	jz UI_OwnerDrawHandleKey_270
UI_OwnerDrawHandleKey_440:
	mov [esp+0x4], eax
	mov [esp], edx
	call Cvar_SetInt
	mov eax, [ui_netGameType]
	mov esi, [eax+0xc]
	mov eax, [sharedUiInfo+0x1c58]
	test eax, eax
	jle UI_OwnerDrawHandleKey_280
	mov dword [ebp-0x1c], 0x0
	xor ebx, ebx
	mov edx, sharedUiInfo
UI_OwnerDrawHandleKey_300:
	mov dword [edx+0x1cf8], 0x0
	mov eax, [edx+0x1c70]
	mov ecx, esi
	sar eax, cl
	test al, 0x1
	jz UI_OwnerDrawHandleKey_290
	add ebx, 0x1
	mov dword [edx+0x1cf8], 0x1
UI_OwnerDrawHandleKey_290:
	add dword [ebp-0x1c], 0x1
	add edx, 0xa0
	mov eax, [ebp-0x1c]
	cmp [sharedUiInfo+0x1c58], eax
	jg UI_OwnerDrawHandleKey_300
UI_OwnerDrawHandleKey_390:
	cmp ebx, edi
	jz UI_OwnerDrawHandleKey_310
	mov dword [esp+0x4], 0x0
	mov eax, [ui_currentMap]
	mov [esp], eax
	call Cvar_SetInt
	mov eax, 0x1
	jmp UI_OwnerDrawHandleKey_320
UI_OwnerDrawHandleKey_220:
	xor edi, edi
	jmp UI_OwnerDrawHandleKey_330
UI_OwnerDrawHandleKey_110:
	mov ecx, [ui_netGameType]
	mov eax, [ecx+0xc]
	test eax, eax
	cmovz eax, [sharedUiInfo+0x114c]
	lea edx, [eax-0x1]
	jmp UI_OwnerDrawHandleKey_340
UI_OwnerDrawHandleKey_210:
	mov ecx, [ui_netSource]
	mov eax, [ecx+0xc]
	test eax, eax
	jnz UI_OwnerDrawHandleKey_350
	mov edx, 0x2
	jmp UI_OwnerDrawHandleKey_360
UI_OwnerDrawHandleKey_40:
	mov ecx, [ui_joinGameType]
	mov eax, [ecx+0xc]
	test eax, eax
	cmovz eax, [sharedUiInfo+0x1b54]
	lea edx, [eax-0x1]
	jmp UI_OwnerDrawHandleKey_370
UI_OwnerDrawHandleKey_70:
	mov eax, [ui_serverFilterType]
	sub eax, 0x1
	mov [ui_serverFilterType], eax
	jmp UI_OwnerDrawHandleKey_380
UI_OwnerDrawHandleKey_280:
	xor ebx, ebx
	jmp UI_OwnerDrawHandleKey_390
UI_OwnerDrawHandleKey_150:
	test ecx, ecx
	jle UI_OwnerDrawHandleKey_400
	mov edx, [sharedUiInfo+0x1cf8]
	test edx, edx
	jnz UI_OwnerDrawHandleKey_410
	xor ebx, ebx
	mov edx, sharedUiInfo
UI_OwnerDrawHandleKey_420:
	add ebx, 0x1
	cmp ecx, ebx
	jz UI_OwnerDrawHandleKey_400
	mov eax, [edx+0x1d98]
	add edx, 0xa0
	test eax, eax
	jz UI_OwnerDrawHandleKey_420
UI_OwnerDrawHandleKey_460:
	mov dword [esp+0x10], _cstring_createserver_map
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], 0x0
	mov dword [esp], uiInfoArray
	call Menu_SetFeederSelection
	mov [esp+0x4], ebx
	mov eax, [ui_currentNetMap]
	mov [esp], eax
	call Cvar_SetInt
	jmp UI_OwnerDrawHandleKey_430
UI_OwnerDrawHandleKey_260:
	mov eax, 0x1
	jmp UI_OwnerDrawHandleKey_440
UI_OwnerDrawHandleKey_250:
	mov edx, [ui_gametype]
	mov eax, [edx+0xc]
	sub eax, 0x1
	cmp eax, 0x2
	jz UI_OwnerDrawHandleKey_260
	cmp eax, 0x1
	jg UI_OwnerDrawHandleKey_440
	mov eax, [sharedUiInfo+0x114c]
	sub eax, 0x1
	jmp UI_OwnerDrawHandleKey_440
UI_OwnerDrawHandleKey_400:
	mov eax, [ui_netGameTypeName]
	mov eax, [eax+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_no_active_maps_f
	mov dword [esp], 0x1
	call Com_Error
	jmp UI_OwnerDrawHandleKey_430
UI_OwnerDrawHandleKey_80:
	jge UI_OwnerDrawHandleKey_90
	jmp UI_OwnerDrawHandleKey_450
UI_OwnerDrawHandleKey_350:
	lea edx, [eax-0x1]
	jmp UI_OwnerDrawHandleKey_360
UI_OwnerDrawHandleKey_410:
	xor ebx, ebx
	jmp UI_OwnerDrawHandleKey_460
UI_OwnerDrawHandleKey_270:
	mov al, 0x3
	jmp UI_OwnerDrawHandleKey_440
	nop
	
	
UI_OwnerDrawHandleKey_jumptab_0:
	dd UI_OwnerDrawHandleKey_470
	dd UI_OwnerDrawHandleKey_10
	dd UI_OwnerDrawHandleKey_10
	dd UI_OwnerDrawHandleKey_10
	dd UI_OwnerDrawHandleKey_10
	dd UI_OwnerDrawHandleKey_10
	dd UI_OwnerDrawHandleKey_10
	dd UI_OwnerDrawHandleKey_10
	dd UI_OwnerDrawHandleKey_10
	dd UI_OwnerDrawHandleKey_10
	dd UI_OwnerDrawHandleKey_10
	dd UI_OwnerDrawHandleKey_10
	dd UI_OwnerDrawHandleKey_10
	dd UI_OwnerDrawHandleKey_10
	dd UI_OwnerDrawHandleKey_10
	dd UI_OwnerDrawHandleKey_480
	dd UI_OwnerDrawHandleKey_10
	dd UI_OwnerDrawHandleKey_490
	dd UI_OwnerDrawHandleKey_10
	dd UI_OwnerDrawHandleKey_10
	dd UI_OwnerDrawHandleKey_10
	dd UI_OwnerDrawHandleKey_10
	dd UI_OwnerDrawHandleKey_10
	dd UI_OwnerDrawHandleKey_10
	dd UI_OwnerDrawHandleKey_10
	dd UI_OwnerDrawHandleKey_10
	dd UI_OwnerDrawHandleKey_10
	dd UI_OwnerDrawHandleKey_10
	dd UI_OwnerDrawHandleKey_10
	dd UI_OwnerDrawHandleKey_10
	dd UI_OwnerDrawHandleKey_10
	dd UI_OwnerDrawHandleKey_10
	dd UI_OwnerDrawHandleKey_10
	dd UI_OwnerDrawHandleKey_10
	dd UI_OwnerDrawHandleKey_10
	dd UI_OwnerDrawHandleKey_10
	dd UI_OwnerDrawHandleKey_10
	dd UI_OwnerDrawHandleKey_10
	dd UI_OwnerDrawHandleKey_10
	dd UI_OwnerDrawHandleKey_10
	dd UI_OwnerDrawHandleKey_500
	dd UI_OwnerDrawHandleKey_10
	dd UI_OwnerDrawHandleKey_10
	dd UI_OwnerDrawHandleKey_10
	dd UI_OwnerDrawHandleKey_10
	dd UI_OwnerDrawHandleKey_10
	dd UI_OwnerDrawHandleKey_10
	dd UI_OwnerDrawHandleKey_10
	dd UI_OwnerDrawHandleKey_510


;UI_ReplaceConversions(char const*, ConversionArguments*, char*, int)
UI_ReplaceConversions:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov eax, [ebp+0x8]
	mov [ebp-0x28], eax
	mov edx, [ebp+0xc]
	mov [ebp-0x2c], edx
	mov ecx, [ebp+0x10]
	mov [ebp-0x30], ecx
	mov ebx, [ebp+0x14]
	mov dword [esp+0x4], _cstring_5
	mov [esp], eax
	call strstr
	test eax, eax
	jz UI_ReplaceConversions_10
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, [ebp-0x28]
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [ebp-0x24], ecx
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov edx, [ebp-0x30]
	mov [esp], edx
	call memset
	mov eax, [ebp-0x24]
	test eax, eax
	jg UI_ReplaceConversions_20
UI_ReplaceConversions_80:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
UI_ReplaceConversions_20:
	mov dword [ebp-0x1c], 0x0
	mov dword [ebp-0x20], 0x0
	mov ebx, [ebp-0x28]
	add ebx, [ebp-0x20]
	mov ecx, 0x2
	cld
	mov esi, ebx
	mov edi, _cstring_5
	repe cmpsb
	mov eax, 0x0
	jz UI_ReplaceConversions_30
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
UI_ReplaceConversions_30:
	test eax, eax
	jnz UI_ReplaceConversions_40
UI_ReplaceConversions_100:
	mov ecx, [ebp-0x28]
	mov edi, [ebp-0x20]
	movsx eax, byte [ecx+edi+0x2]
	cmp eax, 0xff
	ja UI_ReplaceConversions_40
	mov edx, [0xd5cc084]
	test byte [edx+eax*4+0x35], 0x4
	jz UI_ReplaceConversions_40
	lea esi, [eax-0x31]
	mov ecx, [ebp-0x2c]
	mov ecx, [ecx+esi*4+0x4]
	mov [ebp-0x3c], ecx
	mov ecx, 0xffffffff
	mov edi, [ebp-0x3c]
	xor eax, eax
	repne scasb
	not ecx
	sub ecx, 0x1
	test ecx, ecx
	jle UI_ReplaceConversions_50
	mov edx, [ebp-0x30]
	add edx, [ebp-0x1c]
	xor ebx, ebx
	mov edi, [ebp-0x3c]
	jmp UI_ReplaceConversions_60
UI_ReplaceConversions_70:
	mov edi, [ebp-0x2c]
	mov edi, [edi+esi*4+0x4]
	mov [ebp-0x3c], edi
UI_ReplaceConversions_60:
	movzx eax, byte [ebx+edi]
	mov [edx], al
	add dword [ebp-0x1c], 0x1
	add ebx, 0x1
	add edx, 0x1
	cmp ecx, ebx
	jnz UI_ReplaceConversions_70
UI_ReplaceConversions_50:
	add dword [ebp-0x20], 0x3
UI_ReplaceConversions_110:
	mov eax, [ebp-0x20]
	cmp [ebp-0x24], eax
	jle UI_ReplaceConversions_80
	mov ebx, [ebp-0x28]
	add ebx, [ebp-0x20]
	mov ecx, 0x2
	cld
	mov esi, ebx
	mov edi, _cstring_5
	repe cmpsb
	mov eax, 0x0
	jz UI_ReplaceConversions_90
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
UI_ReplaceConversions_90:
	test eax, eax
	jz UI_ReplaceConversions_100
UI_ReplaceConversions_40:
	movzx eax, byte [ebx]
	mov edx, [ebp-0x30]
	mov ecx, [ebp-0x1c]
	mov [edx+ecx], al
	add ecx, 0x1
	mov [ebp-0x1c], ecx
	add dword [ebp-0x20], 0x1
	jmp UI_ReplaceConversions_110
UI_ReplaceConversions_10:
	mov [ebp+0x10], ebx
	mov edi, [ebp-0x28]
	mov [ebp+0xc], edi
	mov eax, [ebp-0x30]
	mov [ebp+0x8], eax
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Q_strncpyz


;UI_GetLocalVarsContext(int)
UI_GetLocalVarsContext:
	push ebp
	mov ebp, esp
	mov eax, uiInfoArray+0xa78
	pop ebp
	ret


;UI_SafeTranslateString(char const*)
UI_SafeTranslateString:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	cmp byte [ebx], 0x15
	jz UI_SafeTranslateString_10
	mov [esp], ebx
	call SEH_StringEd_GetString
	test eax, eax
	jz UI_SafeTranslateString_20
	add esp, 0x14
	pop ebx
	pop ebp
	ret
UI_SafeTranslateString_10:
	add ebx, 0x1
UI_SafeTranslateString_20:
	mov eax, loc_warnings
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz UI_SafeTranslateString_30
	mov eax, loc_warningsAsErrors
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz UI_SafeTranslateString_40
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_could_not_transl
	mov dword [esp], 0x7
	call Com_Error
UI_SafeTranslateString_50:
	mov dword [_ZZ22UI_SafeTranslateStringPKcE11errorString], 0x4e55315e
	mov dword [_ZZ22UI_SafeTranslateStringPKcE11errorString+0x4], 0x41434f4c
	mov dword [_ZZ22UI_SafeTranslateStringPKcE11errorString+0x8], 0x455a494c
	mov dword [_ZZ22UI_SafeTranslateStringPKcE11errorString+0xc], 0x375e2844
	mov byte [_ZZ22UI_SafeTranslateStringPKcE11errorString+0x10], 0x0
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x400
	mov dword [esp], _ZZ22UI_SafeTranslateStringPKcE11errorString
	call Q_strncat
	mov dword [esp+0x8], _cstring_171
	mov dword [esp+0x4], 0x400
	mov dword [esp], _ZZ22UI_SafeTranslateStringPKcE11errorString
	call Q_strncat
	mov eax, _ZZ22UI_SafeTranslateStringPKcE11errorString
	add esp, 0x14
	pop ebx
	pop ebp
	ret
UI_SafeTranslateString_40:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_warning_could_no
	mov dword [esp], 0xd
	call Com_PrintWarning
	jmp UI_SafeTranslateString_50
UI_SafeTranslateString_30:
	mov [esp+0x4], ebx
	mov dword [esp], _ZZ22UI_SafeTranslateStringPKcE11errorString
	call strcpy
	mov eax, _ZZ22UI_SafeTranslateStringPKcE11errorString
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;UI_ShouldDrawCrosshair()
UI_ShouldDrawCrosshair:
	push ebp
	mov ebp, esp
	mov eax, [ui_drawCrosshair]
	movzx eax, byte [eax+0xc]
	pop ebp
	ret


;UI_ClosePopupScriptMenu(int, unsigned char)
UI_ClosePopupScriptMenu:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0xc]
	cmp dword [uiInfoArray+0x18a0], 0x9
	jz UI_ClosePopupScriptMenu_10
	leave
	ret
UI_ClosePopupScriptMenu_10:
	mov [uiInfoArray+0x18a4], al
	mov eax, [ebp+0x8]
	mov [esp], eax
	call UI_CloseFocusedMenu
	mov byte [uiInfoArray+0x18a4], 0x1
	leave
	ret
	nop


;UI_GetTopActiveMenuName(int)
UI_GetTopActiveMenuName:
	push ebp
	mov ebp, esp
	mov eax, [uiInfoArray+0xa74]
	sub eax, 0x1
	jns UI_GetTopActiveMenuName_10
UI_GetTopActiveMenuName_20:
	xor eax, eax
	pop ebp
	ret
UI_GetTopActiveMenuName_10:
	cmp eax, [uiInfoArray+0xa30]
	jge UI_GetTopActiveMenuName_20
	mov eax, [eax*4+uiInfoArray+0xa34]
	mov eax, [eax]
	pop ebp
	ret


;Menu_IsMenuOpenAndVisible(int, char const*)
Menu_IsMenuOpenAndVisible:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov dword [esp], uiInfoArray
	call Menus_FindByName
	mov ebx, eax
	test eax, eax
	jz Menu_IsMenuOpenAndVisible_10
	mov [esp+0x4], eax
	mov dword [esp], uiInfoArray
	call Menus_MenuIsInStack
	test eax, eax
	jnz Menu_IsMenuOpenAndVisible_20
Menu_IsMenuOpenAndVisible_10:
	xor eax, eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Menu_IsMenuOpenAndVisible_20:
	mov [esp+0x4], ebx
	mov dword [esp], uiInfoArray
	call Menu_IsVisible
	test al, al
	jz Menu_IsMenuOpenAndVisible_10
	mov eax, 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;UI_GetGameTypeDisplayName(char const*)
UI_GetGameTypeDisplayName:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	mov eax, [sharedUiInfo+0x114c]
	test eax, eax
	jg UI_GetGameTypeDisplayName_10
UI_GetGameTypeDisplayName_30:
	mov eax, edi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
UI_GetGameTypeDisplayName_10:
	xor esi, esi
	mov ebx, sharedUiInfo
	jmp UI_GetGameTypeDisplayName_20
UI_GetGameTypeDisplayName_40:
	add esi, 0x1
	add ebx, 0x8
	cmp esi, [sharedUiInfo+0x114c]
	jge UI_GetGameTypeDisplayName_30
UI_GetGameTypeDisplayName_20:
	mov eax, [ebx+0x1150]
	mov [esp+0x4], eax
	mov [esp], edi
	call Q_stricmp
	test eax, eax
	jnz UI_GetGameTypeDisplayName_40
	mov eax, [esi*8+sharedUiInfo+0x1154]
	mov [ebp+0x8], eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp UI_SafeTranslateString


;UI_AllowScriptMenuResponse(int)
UI_AllowScriptMenuResponse:
	push ebp
	mov ebp, esp
	movzx eax, byte [uiInfoArray+0x18a4]
	pop ebp
	ret


;UI_ReplaceConversionString(char const*, char const*)
UI_ReplaceConversionString:
	push ebp
	mov ebp, esp
	push edi
	push ebx
	sub esp, 0x440
	lea edx, [ebp-0x30]
	cld
	mov ecx, 0xa
	xor eax, eax
	mov edi, edx
	rep stosd
	mov dword [ebp-0x30], 0x1
	mov eax, [ebp+0xc]
	mov [ebp-0x2c], eax
	mov dword [esp+0xc], 0x400
	lea ebx, [ebp-0x430]
	mov [esp+0x8], ebx
	mov [esp+0x4], edx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call UI_ReplaceConversions
	mov [esp], ebx
	call va
	add esp, 0x440
	pop ebx
	pop edi
	pop ebp
	ret


;CL_SelectStringTableEntryInDvar_f()
CL_SelectStringTableEntryInDvar_f:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x30
	mov eax, r_reflectionProbeGenerate
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz CL_SelectStringTableEntryInDvar_f_10
	mov ebx, cmd_args
	mov edx, [ebx]
	cmp dword [ebx+edx*4+0x44], 0x3
	jle CL_SelectStringTableEntryInDvar_f_20
	lea eax, [ebp-0xc]
	mov [esp+0x4], eax
	mov eax, [ebx+edx*4+0x64]
	mov eax, [eax+0x4]
	mov [esp], eax
	call StringTable_GetAsset
	call Sys_Milliseconds
	mov [esp], eax
	call ms_srand
	mov eax, [ebp-0xc]
	cvtsi2ss xmm0, dword [eax+0x8]
	movss [ebp-0x28], xmm0
	call ms_rand
	cvtsi2ss xmm1, eax
	movss xmm0, dword [ebp-0x28]
	mulss xmm0, xmm1
	divss xmm0, dword [_float_32767_00000000]
	cvttss2si esi, xmm0
	mov eax, [ebx]
	cmp dword [ebx+eax*4+0x44], 0x2
	jg CL_SelectStringTableEntryInDvar_f_30
	mov eax, _cstring_null
CL_SelectStringTableEntryInDvar_f_60:
	mov [esp], eax
	call atoi
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov eax, [ebp-0xc]
	mov [esp], eax
	call StringTable_GetColumnValueForRow
	mov ecx, eax
	mov eax, cmd_args
	mov edx, [eax]
	cmp dword [eax+edx*4+0x44], 0x3
	jg CL_SelectStringTableEntryInDvar_f_40
	mov eax, _cstring_null
CL_SelectStringTableEntryInDvar_f_50:
	mov [esp+0x4], ecx
	mov [esp], eax
	call Cvar_SetStringByName
CL_SelectStringTableEntryInDvar_f_10:
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
CL_SelectStringTableEntryInDvar_f_20:
	mov dword [esp+0x4], _cstring_usage_selectstri
	mov dword [esp], 0x10
	call Com_Printf
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
CL_SelectStringTableEntryInDvar_f_40:
	mov eax, [eax+edx*4+0x64]
	mov eax, [eax+0xc]
	jmp CL_SelectStringTableEntryInDvar_f_50
CL_SelectStringTableEntryInDvar_f_30:
	mov eax, [ebx+eax*4+0x64]
	mov eax, [eax+0x8]
	jmp CL_SelectStringTableEntryInDvar_f_60


;UI_FilterStringForButtonAnimation(char*, unsigned int)
UI_FilterStringForButtonAnimation:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;UI_GetMapDisplayNameFromPartialLoadNameMatch(char const*, int*)
UI_GetMapDisplayNameFromPartialLoadNameMatch:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0x8]
	mov [ebp-0x1c], eax
	mov edx, [ebp+0xc]
	mov [ebp-0x20], edx
	mov eax, [sharedUiInfo+0x1c58]
	test eax, eax
	jg UI_GetMapDisplayNameFromPartialLoadNameMatch_10
UI_GetMapDisplayNameFromPartialLoadNameMatch_30:
	xor eax, eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
UI_GetMapDisplayNameFromPartialLoadNameMatch_10:
	xor esi, esi
	mov ebx, sharedUiInfo
	mov dword [ebp-0x24], sharedUiInfo+0x1c5c
	jmp UI_GetMapDisplayNameFromPartialLoadNameMatch_20
UI_GetMapDisplayNameFromPartialLoadNameMatch_40:
	add esi, 0x1
	add dword [ebp-0x24], 0xa0
	add ebx, 0xa0
	cmp esi, [sharedUiInfo+0x1c58]
	jge UI_GetMapDisplayNameFromPartialLoadNameMatch_30
UI_GetMapDisplayNameFromPartialLoadNameMatch_20:
	mov edi, [ebx+0x1c60]
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	repne scasb
	not ecx
	sub ecx, 0x1
	mov edx, [ebp-0x20]
	mov [edx], ecx
	mov [esp+0x8], ecx
	mov eax, [ebx+0x1c60]
	mov [esp+0x4], eax
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call Q_stricmpn
	test eax, eax
	jnz UI_GetMapDisplayNameFromPartialLoadNameMatch_40
	mov edx, [ebp-0x24]
	mov eax, [edx]
	mov [ebp+0x8], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp UI_SafeTranslateString
	nop


;UI_Init(int)
UI_Init:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov eax, [ebp+0x8]
	mov [uiInfoArray], eax
	mov byte [eax+g_ingameMenusLoaded], 0x0
	mov ebx, useFastFile
	mov eax, [ebx]
	cmp byte [eax+0xc], 0x0
	jnz UI_Init_10
UI_Init_140:
	cmp byte [eax+0xc], 0x0
	jz UI_Init_20
UI_Init_130:
	mov dword [esp+0xc], _cstring_custom_game_mode
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_ui_custommodenam
	call Cvar_RegisterString
	mov [ui_customModeName], eax
	mov dword [esp+0xc], _cstring_name_to_give_the
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_ui_custommodeedi
	call Cvar_RegisterString
	mov [ui_customModeEditName], eax
	mov dword [esp+0xc], _cstring_custom_class_nam
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_ui_customclassna
	call Cvar_RegisterString
	mov [ui_customClassName], eax
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_g_allowvote
	call Cvar_RegisterBool
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_cg_brass
	call Cvar_RegisterBool
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_fx_marks
	call Cvar_RegisterBool
	mov dword [esp+0xc], _cstring_server_display
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_server1
	call Cvar_RegisterString
	mov dword [esp+0xc], _cstring_server_display
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_server2
	call Cvar_RegisterString
	mov dword [esp+0xc], _cstring_server_display
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_server3
	call Cvar_RegisterString
	mov dword [esp+0xc], _cstring_server_display
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_server4
	call Cvar_RegisterString
	mov dword [esp+0xc], _cstring_server_display
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_server5
	call Cvar_RegisterString
	mov dword [esp+0xc], _cstring_server_display
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_server6
	call Cvar_RegisterString
	mov dword [esp+0xc], _cstring_server_display
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_server7
	call Cvar_RegisterString
	mov dword [esp+0xc], _cstring_server_display
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_server8
	call Cvar_RegisterString
	mov dword [esp+0xc], _cstring_server_display
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_server9
	call Cvar_RegisterString
	mov dword [esp+0xc], _cstring_server_display
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_server10
	call Cvar_RegisterString
	mov dword [esp+0xc], _cstring_server_display
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_server11
	call Cvar_RegisterString
	mov dword [esp+0xc], _cstring_server_display
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_server12
	call Cvar_RegisterString
	mov dword [esp+0xc], _cstring_server_display
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_server13
	call Cvar_RegisterString
	mov dword [esp+0xc], _cstring_server_display
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_server14
	call Cvar_RegisterString
	mov dword [esp+0xc], _cstring_server_display
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_server15
	call Cvar_RegisterString
	mov dword [esp+0xc], _cstring_server_display
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_server16
	call Cvar_RegisterString
	mov dword [esp+0x14], _cstring_the_network_sour
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x2
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_ui_netsource
	call Cvar_RegisterInt
	mov [ui_netSource], eax
	mov dword [esp+0x14], _cstring_small_font_scale
	mov dword [esp+0x10], 0x1
	mov edi, 0x3f800000
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x3e800000
	mov dword [esp], _cstring_ui_smallfont
	call Cvar_RegisterFloat
	mov [ui_smallFont], eax
	mov dword [esp+0x14], _cstring_big_font_scale
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x3ecccccd
	mov dword [esp], _cstring_ui_bigfont
	call Cvar_RegisterFloat
	mov [ui_bigFont], eax
	mov dword [esp+0x14], _cstring_extra_big_font_s
	mov dword [esp+0x10], 0x1
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x3f0ccccd
	mov dword [esp], _cstring_ui_extrabigfont
	call Cvar_RegisterFloat
	mov [ui_extraBigFont], eax
	mov dword [esp+0x14], _cstring_current_map_inde
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x7fffffff
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_ui_currentmap
	call Cvar_RegisterInt
	mov [ui_currentMap], eax
	mov dword [esp+0x14], _cstring_game_type
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x7fffffff
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x3
	mov dword [esp], _cstring_ui_gametype
	call Cvar_RegisterInt
	mov [ui_gametype], eax
	mov dword [esp+0x14], _cstring_game_join_type
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x7fffffff
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_ui_joingametype
	call Cvar_RegisterInt
	mov [ui_joinGameType], eax
	mov dword [esp+0xc], _cstring_displayed_game_t
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_ui_netgametypena
	call Cvar_RegisterString
	mov [ui_netGameTypeName], eax
	mov dword [esp+0x14], _cstring_true_if_this_is_
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x2
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_ui_dedicated
	call Cvar_RegisterInt
	mov [ui_dedicated], eax
	mov dword [esp+0x14], _cstring_currently_runnin
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x7fffffff
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_ui_currentnetmap
	call Cvar_RegisterInt
	mov [ui_currentNetMap], eax
	mov dword [esp+0xc], _cstring_show_full_server
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_ui_browsershowfu
	call Cvar_RegisterBool
	mov [ui_browserShowFull], eax
	mov dword [esp+0xc], _cstring_show_empty_serve
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_ui_browsershowem
	call Cvar_RegisterBool
	mov [ui_browserShowEmpty], eax
	mov dword [esp+0x14], _cstring_show_servers_tha
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0xffffffff
	mov dword [esp+0x4], 0xffffffff
	mov dword [esp], _cstring_ui_browsershowpa
	call Cvar_RegisterInt
	mov [ui_browserShowPassword], eax
	mov dword [esp+0xc], _cstring_show_pure_server
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_ui_browsershowpu
	call Cvar_RegisterBool
	mov [ui_browserShowPure], eax
	mov dword [esp+0x14], _cstring_ui_mod_value
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0xffffffff
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_ui_browsermod
	call Cvar_RegisterInt
	mov [ui_browserMod], eax
	mov dword [esp+0xc], _cstring_show_dedicated_s
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_ui_browsershowde
	call Cvar_RegisterBool
	mov [ui_browserShowDedicated], eax
	mov dword [esp+0x14], _cstring_friendly_fire_is
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x7fffffff
	mov dword [esp+0x8], 0x80000000
	mov dword [esp+0x4], 0xffffffff
	mov dword [esp], _cstring_ui_browserfriend
	call Cvar_RegisterInt
	mov [ui_browserFriendlyfire], eax
	mov dword [esp+0x14], _cstring_kill_cam_is_acti
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x7fffffff
	mov dword [esp+0x8], 0x80000000
	mov dword [esp+0x4], 0xffffffff
	mov dword [esp], _cstring_ui_browserkillca
	call Cvar_RegisterInt
	mov [ui_browserKillcam], eax
	mov dword [esp+0x14], _cstring_hardcore_mode
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x7fffffff
	mov dword [esp+0x8], 0x80000000
	mov dword [esp+0x4], 0xffffffff
	mov dword [esp], _cstring_ui_browserhardco
	call Cvar_RegisterInt
	mov [ui_browserHardcore], eax
	mov dword [esp+0x14], _cstring_oldschool_mode
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x7fffffff
	mov dword [esp+0x8], 0x80000000
	mov dword [esp+0x4], 0xffffffff
	mov dword [esp], _cstring_ui_browseroldsch
	call Cvar_RegisterInt
	mov [ui_browserOldSchool], eax
	mov dword [esp+0x14], _cstring_time_in_millisec
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x7fffffff
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1b58
	mov dword [esp], _cstring_ui_serverstatust
	call Cvar_RegisterInt
	mov [ui_serverStatusTimeOut], eax
	mov dword [esp+0x14], _cstring_only_show_punkbu
	mov dword [esp+0x10], 0x1
	mov dword [esp+0xc], 0x7fffffff
	mov dword [esp+0x8], 0x80000000
	mov dword [esp+0x4], 0xffffffff
	mov dword [esp], _cstring_ui_browsershowpu1
	call Cvar_RegisterInt
	mov [ui_browserShowPunkBuster], eax
	mov dword [esp+0x14], _cstring_number_of_player
	mov dword [esp+0x10], 0x40
	mov dword [esp+0xc], 0x7fffffff
	mov dword [esp+0x8], 0x80000000
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_ui_playerprofile
	call Cvar_RegisterInt
	mov [ui_playerProfileCount], eax
	mov dword [esp+0xc], _cstring_selected_player_
	mov dword [esp+0x8], 0x40
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_ui_playerprofile1
	call Cvar_RegisterString
	mov [ui_playerProfileSelected], eax
	mov dword [esp+0xc], _cstring_new_player_profi
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_ui_playerprofile2
	call Cvar_RegisterString
	mov [ui_playerProfileNameNew], eax
	mov dword [esp+0x18], _cstring_where_to_draw_th
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x461c4000
	mov dword [esp+0xc], 0xc61c4000
	mov dword [esp+0x8], 0x42500000
	mov dword [esp+0x4], 0xc2c80000
	mov dword [esp], _cstring_ui_buildlocation
	call Cvar_RegisterVec2
	mov [ui_buildLocation], eax
	mov dword [esp+0x14], _cstring_font_size_to_use
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x0
	mov esi, 0x3e99999a
	mov [esp+0x4], esi
	mov dword [esp], _cstring_ui_buildsize
	call Cvar_RegisterFloat
	mov [ui_buildSize], eax
	mov dword [esp+0xc], _cstring_show_onscreen_li
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_ui_showlist
	call Cvar_RegisterBool
	mov [ui_showList], eax
	mov dword [esp+0xc], _cstring_if_set_only_menu
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_null
	mov dword [esp], _cstring_ui_showmenuonly
	call Cvar_RegisterString
	mov [ui_showMenuOnly], eax
	mov dword [esp+0xc], _cstring_currently_showin
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_ui_showendofgame
	call Cvar_RegisterBool
	mov [ui_showEndOfGame], eax
	mov dword [esp+0x14], _cstring_scales_the_borde
	mov dword [esp+0x10], 0x0
	mov [esp+0xc], edi
	mov dword [esp+0x8], 0x0
	mov ebx, 0x3f19999a
	mov [esp+0x4], ebx
	mov dword [esp], _cstring_ui_borderlowligh
	call Cvar_RegisterFloat
	mov [ui_borderLowLightScale], eax
	mov dword [esp+0xc], _cstring_shows_cinematics
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_ui_cinematicstim
	call Cvar_RegisterBool
	mov [ui_cinematicsTimestamp], eax
	mov dword [esp+0x20], _cstring_glow_color_appli
	mov dword [esp+0x1c], 0x0
	mov [esp+0x18], edi
	mov dword [esp+0x14], 0x0
	mov [esp+0x10], edi
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov dword [esp], _cstring_ui_connectscreen
	call Cvar_RegisterVec4
	mov [ui_connectScreenTextGlowColor], eax
	mov dword [esp+0xc], _cstring_whether_to_draw_
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_ui_drawcrosshair
	call Cvar_RegisterBool
	mov [ui_drawCrosshair], eax
	mov dword [esp+0xc], _cstring_whether_the_hud_
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_ui_hud_hardcore
	call Cvar_RegisterBool
	mov [ui_hud_hardcore], eax
	mov dword [esp+0xc], _cstring_whether_the_ui_s
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_ui_uav_allies
	call Cvar_RegisterBool
	mov [ui_uav_allies], eax
	mov dword [esp+0xc], _cstring_whether_the_ui_s1
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_ui_uav_axis
	call Cvar_RegisterBool
	mov [ui_uav_axis], eax
	mov dword [esp+0xc], _cstring_whether_the_ui_s2
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_ui_uav_client
	call Cvar_RegisterBool
	mov [ui_uav_client], eax
	mov dword [esp+0xc], _cstring_whether_the_ui_s3
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_ui_allow_classch
	call Cvar_RegisterBool
	mov [ui_allow_classchange], eax
	mov dword [esp+0xc], _cstring_whether_the_ui_s4
	mov dword [esp+0x8], 0x80
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_ui_allow_teamcha
	call Cvar_RegisterBool
	mov [ui_allow_teamchange], eax
	mov byte [uiInfoArray+0x18a4], 0x1
	call String_Init
	mov dword [esp], uiInfoArray
	call Menu_Setup
	mov dword [esp+0x8], uiInfoArray+0x24
	mov dword [esp+0x4], uiInfoArray+0x20
	mov dword [esp], uiInfoArray+0x1c
	call CL_GetScreenDimensions
	mov ebx, [uiInfoArray+0x1c]
	mov ecx, [uiInfoArray+0x20]
	mov eax, ebx
	shl eax, 0x5
	mov edx, ebx
	shl edx, 0x9
	sub edx, eax
	lea eax, [ecx+ecx*4]
	shl eax, 0x7
	cmp edx, eax
	jle UI_Init_30
	cvtsi2ss xmm1, ebx
	cvtsi2ss xmm0, ecx
	mulss xmm0, [_float__1_33333337]
	addss xmm1, xmm0
	mulss xmm1, [_float_0_50000000]
	movss [uiInfoArray+0x4], xmm1
UI_Init_100:
	call Sys_Milliseconds
	mov dword [sharedUiInfo+0x114c], 0x0
	mov dword [sharedUiInfo+0x1250], 0x0
	mov dword [sharedUiInfo+0x1b54], 0x0
	mov dword [esp], _cstring_all
	call String_Alloc
	mov [sharedUiInfo+0x1b58], eax
	mov eax, [sharedUiInfo+0x1b54]
	mov dword [eax*8+sharedUiInfo+0x1b5c], _cstring_null
	add dword [sharedUiInfo+0x1b54], 0x1
	mov ebx, useFastFile
	mov edx, [ebx]
	mov eax, UI_GetGameTypesList_FastFile
	cmp byte [edx+0xc], 0x0
	mov edx, UI_GetGameTypesList_LoadObj
	cmovz eax, edx
	call eax
	mov edx, [sharedUiInfo+0x114c]
	test edx, edx
	jz UI_Init_40
UI_Init_120:
	mov dword [esp+0x14], _cstring_game_type
	mov dword [esp+0x10], 0x1
	mov eax, [sharedUiInfo+0x114c]
	sub eax, 0x1
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_ui_netgametype
	call Cvar_RegisterInt
	mov [ui_netGameType], eax
	call UI_LoadArenas
	mov eax, [ebx]
	cmp byte [eax+0xc], 0x0
	jnz UI_Init_50
UI_Init_110:
	cmp byte [g_mapname], 0x0
	jz UI_Init_60
	mov eax, [ebx]
	cmp byte [eax+0xc], 0x0
	jz UI_Init_60
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz UI_Init_70
UI_Init_90:
	mov dword [esp+0x4], 0x3
	mov dword [esp], _cstring_white
	call Material_RegisterHandle
	mov [sharedUiInfo+0x20], eax
	mov dword [esp+0x4], 0x3
	mov dword [esp], _cstring_ui_scrollbar
	call Material_RegisterHandle
	mov [sharedUiInfo+0x10], eax
	mov dword [esp+0x4], 0x3
	mov dword [esp], _cstring_ui_scrollbar_arr
	call Material_RegisterHandle
	mov [sharedUiInfo+0x4], eax
	mov dword [esp+0x4], 0x3
	mov dword [esp], _cstring_ui_scrollbar_arr1
	call Material_RegisterHandle
	mov [sharedUiInfo], eax
	mov dword [esp+0x4], 0x3
	mov dword [esp], _cstring_ui_scrollbar_arr2
	call Material_RegisterHandle
	mov [sharedUiInfo+0x8], eax
	mov dword [esp+0x4], 0x3
	mov dword [esp], _cstring_ui_scrollbar_arr3
	call Material_RegisterHandle
	mov [sharedUiInfo+0xc], eax
	mov dword [esp+0x4], 0x3
	mov dword [esp], _cstring_ui_scrollbar_thu
	call Material_RegisterHandle
	mov [sharedUiInfo+0x14], eax
	mov dword [esp+0x4], 0x3
	mov dword [esp], _cstring_ui_slider2
	call Material_RegisterHandle
	mov [sharedUiInfo+0x18], eax
	mov dword [esp+0x4], 0x3
	mov dword [esp], _cstring_ui_sliderbutt_1
	call Material_RegisterHandle
	mov [sharedUiInfo+0x1c], eax
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_ui_cursor
	call Material_RegisterHandle
	mov [sharedUiInfo+0x24], eax
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_fontsbigfont
	call CL_RegisterFont
	mov [sharedUiInfo+0x28], eax
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_fontssmallfont
	call CL_RegisterFont
	mov [sharedUiInfo+0x2c], eax
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_fontsconsolefont
	call CL_RegisterFont
	mov [sharedUiInfo+0x30], eax
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_fontsboldfont
	call CL_RegisterFont
	mov [sharedUiInfo+0x34], eax
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_fontsnormalfont
	call CL_RegisterFont
	mov [sharedUiInfo+0x38], eax
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_fontsextrabigfon
	call CL_RegisterFont
	mov [sharedUiInfo+0x3c], eax
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_fontsobjectivefo
	call CL_RegisterFont
	mov [sharedUiInfo+0x40], eax
	mov dword [esp], uiInfoArray
	call Menus_CloseAll
	mov dword [esp+0x4], 0x3
	mov dword [esp], _cstring_server_hardware_
	call Material_RegisterHandle
	mov [sharedUiInfo+0x6c5c], eax
	mov dword [esp+0x4], 0x3
	mov dword [esp], _cstring_server_hardware_1
	call Material_RegisterHandle
	mov [sharedUiInfo+0x6c60], eax
	mov dword [esp+0x4], 0x3
	mov dword [esp], _cstring_server_hardware_2
	call Material_RegisterHandle
	mov [sharedUiInfo+0x6c64], eax
	mov dword [esp+0x4], 0x3
	mov dword [esp], _cstring_server_hardware_3
	call Material_RegisterHandle
	mov [sharedUiInfo+0x6c68], eax
	mov dword [esp+0x4], 0x3
	mov dword [esp], _cstring_server_hardware_4
	call Material_RegisterHandle
	mov [sharedUiInfo+0x6c74], eax
	mov dword [esp+0x4], 0x3
	mov dword [esp], _cstring_server_hardware_5
	call Material_RegisterHandle
	mov [sharedUiInfo+0x6c78], eax
	call LAN_LoadCachedServers
	cmp dword [sharedUiInfo+0x72e4], 0xa
	jz UI_Init_80
	mov dword [sharedUiInfo+0x72e4], 0xa
	mov dword [esp+0xc], UI_ServersQsortCompare
	mov dword [esp+0x8], 0x4
	mov eax, [sharedUiInfo+0x1ab78]
	mov [esp+0x4], eax
	mov dword [esp], sharedUiInfo+0x72f8
	call qsort
UI_Init_80:
	mov dword [esp], _cstring_m_pitch
	call Cvar_GetFloat
	fstp dword [ebp-0x1c]
	movss xmm0, dword [ebp-0x1c]
	xor eax, eax
	ucomiss xmm0, [_float_0_00000000]
	setb al
	mov [esp+0x4], eax
	mov dword [esp], _cstring_ui_mousepitch
	call Cvar_SetBoolByName
	mov eax, [ui_netGameType]
	mov eax, [eax+0xc]
	mov eax, [eax*8+sharedUiInfo+0x1150]
	mov [esp+0x4], eax
	mov eax, [ui_netGameTypeName]
	mov [esp], eax
	call Cvar_SetString
	mov dword [esp+0xc], _cstring_true_if_the_game
	mov dword [esp+0x8], 0x40
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_ui_multiplayer
	call Cvar_RegisterBool
	mov dword [esp+0x14], _cstring_spam_debug_info_
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x2
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cstring_uiscript_debug
	call Cvar_RegisterInt
	mov [uiscript_debug], eax
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
UI_Init_60:
	mov dword [esp+0x4], 0x3
	mov dword [esp], _cstring_ui_mpmenustxt
	call UI_LoadMenus
	mov [esp+0x4], eax
	mov dword [esp], uiInfoArray
	call UI_AddMenuList
	cmp byte [g_mapname], 0x0
	jz UI_Init_90
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz UI_Init_90
	jmp UI_Init_70
UI_Init_30:
	mov dword [uiInfoArray+0x4], 0x0
	jmp UI_Init_100
UI_Init_70:
	mov dword [esp+0x4], g_mapname
	mov dword [esp], _cstring_mapsmpscsv
	call va
	mov [esp], eax
	call UI_MapLoadInfo
	jmp UI_Init_90
UI_Init_50:
	mov dword [esp+0x4], 0x3
	mov dword [esp], _cstring_ui_mpcodetxt
	call UI_LoadMenus
	mov [esp+0x4], eax
	mov dword [esp], uiInfoArray
	call UI_AddMenuList
	jmp UI_Init_110
UI_Init_40:
	mov dword [esp+0x4], _cstring_no_game_type_scr
	mov dword [esp], 0x1
	call Com_Error
	jmp UI_Init_120
UI_Init_20:
	call UI_LoadSoundAliases
	jmp UI_Init_130
UI_Init_10:
	mov dword [esp], 0x0
	call DB_ResetZoneSize
	mov eax, [ebx]
	jmp UI_Init_140


;UI_Pause(int, int)
UI_Pause:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov edx, [ebp+0xc]
	test edx, edx
	jz UI_Pause_10
	mov dword [esp+0x4], 0x1
	mov dword [esp], _cstring_cl_paused
	call Cvar_SetIntByName
	mov dword [ebp+0xc], 0x10
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Key_SetCatcher
UI_Pause_10:
	mov dword [esp+0x4], 0xffffffef
	mov [esp], ebx
	call Key_RemoveCatcher
	mov [esp], ebx
	call Key_ClearStates
	mov dword [ebp+0xc], 0x0
	mov dword [ebp+0x8], _cstring_cl_paused
	add esp, 0x14
	pop ebx
	pop ebp
	jmp Cvar_SetIntByName
	nop


;UI_Popup(int, char const*)
UI_Popup:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call CL_AllowPopup
	test al, al
	jnz UI_Popup_10
UI_Popup_20:
	xor eax, eax
UI_Popup_40:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
UI_Popup_10:
	mov dword [esp], uiInfoArray
	call Menus_AnyFullScreenVisible
	test eax, eax
	jnz UI_Popup_20
	mov dword [esp+0x4], _cstring_uimenu_wm_quickm
	mov eax, [ebp+0xc]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz UI_Popup_30
	mov eax, 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret
UI_Popup_30:
	mov dword [esp+0x4], 0x7
	mov [esp], ebx
	call UI_SetActiveMenu
	mov eax, 0x1
	jmp UI_Popup_40
	nop


;UI_SetMap(char const*, char const*)
UI_SetMap:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], esi
	mov dword [esp], g_mapname
	call Q_strncpyz
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], ebx
	mov dword [esp], g_gametype
	call Q_strncpyz
	movzx eax, byte [esi]
	test al, al
	setnz byte [g_showLoadingScreenMenu]
	jnz UI_SetMap_10
UI_SetMap_60:
	mov byte [g_showLoadingScreenMenu], 0x0
UI_SetMap_50:
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz UI_SetMap_20
	cmp byte [g_mapname], 0x0
	jnz UI_SetMap_30
UI_SetMap_20:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
UI_SetMap_30:
	mov dword [esp+0x4], g_mapname
	mov dword [esp], _cstring_mapsmpscsv
	call va
	mov [ebp+0x8], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp UI_MapLoadInfo
UI_SetMap_10:
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call DB_FileExists
	test al, al
	jz UI_SetMap_40
UI_SetMap_70:
	mov byte [g_showLoadingScreenMenu], 0x1
	jmp UI_SetMap_50
UI_SetMap_40:
	mov [esp+0x4], esi
	mov dword [esp], _cstring_s_load
	call va
	mov dword [esp+0x4], 0x2
	mov [esp], eax
	call DB_FileExists
	test al, al
	jz UI_SetMap_60
	jmp UI_SetMap_70
	nop


;Initialized global or static variables of ui_main_mp:
SECTION .data
MonthAbbrev: dd _cstring_exe_month_abv_ja, _cstring_exe_month_abv_fe, _cstring_exe_month_abv_ma, _cstring_exe_month_abv_ap, _cstring_exe_month_abv_ma1, _cstring_exe_month_abv_ju, _cstring_exe_month_abv_ju1, _cstring_exe_month_abv_au, _cstring_exe_month_abv_se, _cstring_exe_month_abv_oc, _cstring_exe_month_abv_no, _cstring_exe_month_abv_de
netSources: dd _cstring_exe_local, _cstring_exe_internet, _cstring_exe_favorites
_ZZ17UI_FeederItemTextiP9itemDef_sfiiPP8MaterialE10lastColumn: dd 0xffffffff
_ZZ22UI_DisplayDownloadInfoPKcffP6Font_sfE12tleEstimates: dd 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c, 0x3c
_ZZ22UI_DisplayDownloadInfoPKcffP6Font_sfE8xferText: dd 0x5f455845, 0x4e415254, 0x41525f53
		db 0x54, 0x45, 0x0
_ZZ22UI_DisplayDownloadInfoPKcffP6Font_sfE7etaText: dd 0x5f455845, 0x5f545345, 0x454d4954, 0x46454c5f
		db 0x54, 0x0
_ZZ22UI_DisplayDownloadInfoPKcffP6Font_sfE6dlText: dd 0x5f455845, 0x4e574f44, 0x44414f4c, 0x474e49, 0x0, 0x0, 0x0, 0x0
		db 0x0, 0x0, 0x0
serverStatusDvars: dd _cstring_sv_hostname, _cstring_exe_sv_info_serv, 0x0, _cstring_address, _cstring_exe_sv_info_addr, 0x0, _cstring_pswrd, _cstring_exe_sv_info_pass, 0x1, _cstring_gamename, _cstring_exe_sv_info_game, 0x0, _cstring_g_gametype, _cstring_exe_sv_info_game1, 0x2, _cstring_sv_pure, _cstring_exe_sv_info_pure, 0x1, _cstring_mapname, _cstring_exe_sv_info_map, 0x3, _cstring_shortversion, _cstring_exe_sv_info_vers, 0x0, _cstring_protocol, _cstring_exe_sv_info_prot, 0x0, _cstring_sv_maxping, _cstring_exe_sv_info_maxp, 0x0, _cstring_sv_minping, _cstring_exe_sv_info_minp, 0x0, _cstring_sv_maxrate, _cstring_exe_sv_info_maxr, 0x0, _cstring_sv_floodprotect, _cstring_exe_sv_info_floo, 0x1, _cstring_sv_allowanonymou, _cstring_exe_sv_info_allo, 0x0, _cstring_sv_maxclients, _cstring_exe_sv_info_maxc, 0x0, _cstring_sv_privateclient, _cstring_exe_sv_info_priv, 0x0, _cstring_scr_friendlyfire, _cstring_exe_sv_info_frie, 0x0, _cstring_fs_game, _cstring_exe_sv_info_mod, 0x0, _cstring_mod, _cstring_menu_mods, 0x1, _cstring_scr_killcam, _cstring_exe_sv_info_kill, 0x1, _cstring_g_antilag, _cstring_exe_sv_info_anti, 0x1, _cstring_g_compassshowene, _cstring_exe_sv_info_comp, 0x1, _cstring_sv_voice, _cstring_exe_sv_info_voic, 0x1, _cstring_sv_punkbuster, _cstring_mpui_punkbuster, 0x1, _cstring_sv_disableclient, _cstring_exe_sv_info_clie, 0x1, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of ui_main_mp:
SECTION .rdata
serverFilters: dd _cstring_exe_all, _cstring_null, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Zero initialized global or static variables of ui_main_mp:
SECTION .bss
g_gametype: resb 0x40
g_mapname: resb 0x40
g_ingameMenusLoaded: resb 0x4
ui_serverFilterType: resb 0x4
g_showLoadingScreenMenu: resb 0x18
menuBuf2: resb 0x8000
_ZZ22UI_SafeTranslateStringPKcE11errorString: resb 0x400
_ZZ18UI_FeederSelectionifiE4info: resb 0x400
_ZZ11UI_KeyEventiiiE14bypassKeyClear: resb 0x4
_ZZ25UI_BuildServerDisplayListP8uiInfo_siE8numclean: resb 0x4
_ZZ17UI_FeederItemTextiP9itemDef_sfiiPP8MaterialE8lastTime: resb 0x18
_ZZ17UI_FeederItemTextiP9itemDef_sfiiPP8MaterialE10clientBuff: resb 0x40
_ZZ17UI_FeederItemTextiP9itemDef_sfiiPP8MaterialE4info: resb 0x400
_ZZ22UI_BuildFindPlayerListvE11numTimeOuts: resb 0x4
_ZZ22UI_BuildFindPlayerListvE8numFound: resb 0x4
_ZZ22UI_DisplayDownloadInfoPKcffP6Font_sfE8tleIndex: resb 0x78
ui_showEndOfGame: resb 0x4
vehDriverViewHeightMax: resb 0x4
vehDriverViewHeightMin: resb 0x4
sharedUiInfo: resb 0x1c5c0
uiscript_debug: resb 0x4
ui_borderLowLightScale: resb 0x4
ui_showList: resb 0x4
ui_showMenuOnly: resb 0x4
uiInfoArray: resb 0x24b0
ui_allow_classchange: resb 0x4
ui_allow_teamchange: resb 0x4
ui_bigFont: resb 0x4
ui_browserFriendlyfire: resb 0x4
ui_browserHardcore: resb 0x4
ui_browserKillcam: resb 0x4
ui_browserMod: resb 0x4
ui_browserOldSchool: resb 0x4
ui_browserShowDedicated: resb 0x4
ui_browserShowEmpty: resb 0x4
ui_browserShowFull: resb 0x4
ui_browserShowPassword: resb 0x4
ui_browserShowPunkBuster: resb 0x70
ui_browserShowPure: resb 0x4
ui_buildLocation: resb 0x4
ui_buildSize: resb 0x4
ui_cinematicsTimestamp: resb 0x4
ui_connectScreenTextGlowColor: resb 0x4
ui_currentMap: resb 0x4
ui_currentNetMap: resb 0x4
ui_customClassName: resb 0x4
ui_customModeEditName: resb 0x4
ui_customModeName: resb 0x8
ui_dedicated: resb 0x4
ui_drawCrosshair: resb 0x4
ui_extraBigFont: resb 0x4
ui_gametype: resb 0x4
ui_hud_hardcore: resb 0x4
ui_joinGameType: resb 0x4
ui_netGameType: resb 0x4
ui_netGameTypeName: resb 0x4
ui_netSource: resb 0x8
ui_playerProfileCount: resb 0x4
ui_playerProfileNameNew: resb 0x4
ui_playerProfileSelected: resb 0x4
ui_serverStatusTimeOut: resb 0x4
ui_smallFont: resb 0x4
ui_uav_allies: resb 0x4
ui_uav_axis: resb 0x4
ui_uav_client: resb 0x4


;All cstrings:
SECTION .rdata
_cstring_menu_file_too_la:		db "menu file too large: %s is %i, max allowed is %i",0
_cstring_menu_file_not_fo:		db "menu file not found: %s, using default",0ah,0
_cstring_sv_maxclients:		db "sv_maxclients",0
_cstring_mapname:		db "mapname",0
_cstring_createserver_map:		db "createserver_maps",0
_cstring_loc_language:		db "loc_language",0
_cstring_ui_language:		db "ui_language",0
_cstring_ui_languagechang:		db "ui_languagechanged",0
_cstring_exe_favoriteadde:		db "EXE_FAVORITEADDED",0
_cstring_s:		db "%s",0ah,0
_cstring_exe_favoriteadde1:		db "@EXE_FAVORITEADDED",0
_cstring_ui_favorite_mess:		db "ui_favorite_message",0
_cstring_exe_favoriteaddr:		db "EXE_FAVORITEADDRESSEMPTY",0
_cstring_exe_favoriteaddr1:		db "@EXE_FAVORITEADDRESSEMPTY",0
_cstring_exe_favoritename:		db "EXE_FAVORITENAMEEMPTY",0
_cstring_exe_favoritename1:		db "@EXE_FAVORITENAMEEMPTY",0
_cstring_exe_badserveradd:		db "EXE_BADSERVERADDRESS",0
_cstring_exe_badserveradd1:		db "@EXE_BADSERVERADDRESS",0
_cstring_exe_favoriteinli:		db "EXE_FAVORITEINLIST",0
_cstring_exe_favoriteinli1:		db "@EXE_FAVORITEINLIST",0
_cstring_exe_favoritelist:		db "EXE_FAVORITELISTFULL",0
_cstring_exe_favoritelist1:		db "@EXE_FAVORITELISTFULL",0
_cstring_s_invalid_dvar_n:		db "%s: invalid dvar name.",0ah,0
_cstring_s_invalid_test_v:		db "%s: invalid test value.",0ah,0
_cstring_s_invalid_menu_n:		db "%s: invalid menu name.",0ah,0
_cstring_exe_kilobyte:		db "EXE_KILOBYTE",0
_cstring_d_s:		db "%d %s",0
_cstring_d:		db "%d",0
_cstring_exe_megabyte:		db "EXE_MEGABYTE",0
_cstring_02d_s:		db ".%02d %s",0
_cstring_exe_gigabyte:		db "EXE_GIGABYTE",0
_cstring_exe_bytes:		db "EXE_BYTES",0
_cstring_mapsmpgametypes_:		db "maps/mp/gametypes/_gametypes.txt",0
_cstring_mapsmpgametypess:		db "maps/mp/gametypes/%s.txt",0
_cstring_too_many_game_ty:		db "Too many game type scripts found! Only loading the first %i",0ah,0
_cstring_gsc:		db "gsc",0
_cstring_mapsmpgametypes:		db "maps/mp/gametypes",0
_cstring_gsc1:		db ".gsc",0
_cstring_ui_lastserverref:		db "ui_lastServerRefresh_%i",0
_cstring_s_i_i___i02i:		db "%s %i, %i   %i:%02i",0
_cstring_debug_protocol:		db "debug_protocol",0
_cstring_globalservers_d_:		db "globalservers %d %s full empty",0ah,0
_cstring_localservers:		db "localservers",0ah,0
_cstring_globalservers_d_1:		db "globalservers %d %d full empty",0ah,0
_cstring_cl_motdstring:		db "cl_motdString",0
_cstring_exe_cod_multipla:		db "EXE_COD_MULTIPLAYER",0
_cstring_17:		db "1.7",0
_cstring_s__s:		db "%s - %s",0
_cstring_clients:		db "clients",0
_cstring_addr:		db "addr",0
_cstring_000000000000:		db "000.000.000.000",0
_cstring_pswrd:		db "pswrd",0
_cstring_mod:		db "mod",0
_cstring_ff:		db "ff",0
_cstring_kc:		db "kc",0
_cstring_hc:		db "hc",0
_cstring_od:		db "od",0
_cstring_pb:		db "pb",0
_cstring_game:		db "game",0
_cstring_pure:		db "pure",0
_cstring_hw:		db "hw",0
_cstring_gametype:		db "gametype",0
_cstring_address:		db "address",0
_cstring_null:		db 0
_cstring_exe_sv_info_num:		db "@EXE_SV_INFO_NUM",0
_cstring_exe_sv_info_scor:		db "@EXE_SV_INFO_SCORE",0
_cstring_exe_sv_info_ping:		db "@EXE_SV_INFO_PING",0
_cstring_exe_sv_info_name:		db "@EXE_SV_INFO_NAME",0
_cstring_exe_yes:		db "@EXE_YES",0
_cstring_exe_no:		db "@EXE_NO",0
_cstring_searching_dd:		db "searching %d/%d...",0
_cstring_hostname:		db "hostname",0
_cstring_s1:		db "s",0
_cstring_d_servers_found_:		db "%d server%s found with player %s",0
_cstring_no_servers_found:		db "no servers found",0
_cstring_exe_estimating:		db "EXE_ESTIMATING",0
_cstring_exe_copied:		db "EXE_COPIED",0
_cstring_exe_of:		db "EXE_OF",0
_cstring_s_s_s_s_d:		db "%s %s %s %s (%d%%)",0
_cstring_exe_seconds:		db "EXE_SECONDS",0
_cstring_exe_minutes:		db "EXE_MINUTES",0
_cstring_d_s_d_s:		db "%d %s %d %s",0
_cstring_ss:		db "%s/%s",0
_cstring_s_s:		db "(%s %s)",0
_cstring_exe_hours:		db "EXE_HOURS",0
_cstring_si:		db "%s.%i",0
_cstring_cl_bypassmousein:		db "cl_bypassMouseInput",0
_cstring_d_servers_listed:		db "%d servers listed in browser with %d players.",0ah,0
_cstring_d_servers_not_li:		db "%d servers not listed (filtered out by game browser settings)",0ah,0
_cstring_cl_paused:		db "cl_paused",0
_cstring_exe_gettinginfof:		db "EXE_GETTINGINFOFORSERVERS",0
_cstring_1:		db "&&1",0
_cstring_exe_all:		db "EXE_ALL",0
_cstring_exe_netsources:		db "EXE_NETSOURCE",014h,"%s",0
_cstring_net_source:		db "net source",0
_cstring_exe_serverfilter:		db "EXE_SERVERFILTER",014h,"%s",0
_cstring_server_filter:		db "server filter",0
_cstring_exe_keywait:		db "EXE_KEYWAIT",0
_cstring_exe_keychange:		db "EXE_KEYCHANGE",0
_cstring_voice_on:		db "voice_on",0
_cstring_exe_refreshtime:		db "EXE_REFRESHTIME",0
_cstring_unable_to_find_c:		db "Unable to find client %i but they are talking",0ah,0
_cstring_exe_waitingforma:		db "EXE_WAITINGFORMASTERSERVERRESPONSE",0
_cstring_menu:		db ".menu",0
_cstring_startserver:		db "StartServer",0
_cstring_sv_punkbuster:		db "sv_punkbuster",0
_cstring_cl_punkbuster:		db "cl_punkbuster",0
_cstring_cg_thirdperson:		db "cg_thirdPerson",0
_cstring_i:		db "%i",0
_cstring_dedicated:		db "dedicated",0
_cstring_g_gametype:		db "g_gametype",0
_cstring_wait__wait__map_:		db "wait ; wait ; map %s",0ah,0
_cstring_getcdkey:		db "getCDKey",0
_cstring_cdkey1:		db "cdkey1",0
_cstring_cdkey2:		db "cdkey2",0
_cstring_cdkey3:		db "cdkey3",0
_cstring_cdkey4:		db "cdkey4",0
_cstring_cdkey5:		db "cdkey5",0
_cstring_verifycdkey:		db "verifyCDKey",0
_cstring_loadarenas:		db "loadArenas",0
_cstring_exe_cdkeyvalid:		db "EXE_CDKEYVALID",0
_cstring_ui_cdkeyvalid:		db "ui_cdkeyvalid",0
_cstring_startpb_popmenu:		db "startpb_popmenu",0
_cstring_exe_cdkeyinvalid:		db "EXE_CDKEYINVALID",0
_cstring_loadgameinfo:		db "loadGameInfo",0
_cstring_all:		db "All",0
_cstring_no_game_type_scr:		db 015h,"No game type scripts found in maps/mp/gametypes folder",0
_cstring_loadmods:		db "LoadMods",0
_cstring_modlist:		db "$modlist",0
_cstring_votetypemap:		db "voteTypeMap",0
_cstring_callvote_typemap:		db "callvote typemap %s %s",0ah,0
_cstring_votemap:		db "voteMap",0
_cstring_callvote_map_s:		db "callvote map %s",0ah,0
_cstring_votegame:		db "voteGame",0
_cstring_callvote_g_gamet:		db "callvote g_gametype %s",0ah,0
_cstring_clearerror:		db "clearError",0
_cstring_com_errormessage:		db "com_errorMessage",0
_cstring_com_isnotice:		db "com_isNotice",0
_cstring_refreshservers:		db "RefreshServers",0
_cstring_refreshfilter:		db "RefreshFilter",0
_cstring_addplayerprofile:		db "addPlayerProfiles",0
_cstring_:		db "/",0
_cstring_profiles:		db "profiles",0
_cstring_sortplayerprofil:		db "sortPlayerProfiles",0
_cstring_selectactiveplay:		db "selectActivePlayerProfile",0
_cstring_createplayerprof:		db "createPlayerProfile",0
_cstring_profile_create_f:		db "profile_create_fail_popmenu",0
_cstring_deleteplayerprof:		db "deletePlayerProfile",0
_cstring_profile_delete_f:		db "profile_delete_fail_popmenu",0
_cstring_loadplayerprofil:		db "loadPlayerProfile",0
_cstring_profile_exists_p:		db "profile_exists_popmenu",0
_cstring_runmod:		db "RunMod",0
_cstring_mods:		db "mods",0
_cstring_fs_game:		db "fs_game",0
_cstring_vid_restart:		db "vid_restart",0ah,0
_cstring_clearmods:		db "ClearMods",0
_cstring_closejoin:		db "closeJoin",0
_cstring_joinserver:		db "joinserver",0
_cstring_main:		db "main",0
_cstring_stoprefresh:		db "StopRefresh",0
_cstring_profile_create_t:		db "profile_create_too_many_popmenu",0
_cstring_serverstatus:		db "ServerStatus",0
_cstring_updatefilter:		db "UpdateFilter",0
_cstring_joinserver1:		db "JoinServer",0
_cstring_connect_s:		db "connect %s",0ah,0
_cstring_quit:		db "Quit",0
_cstring_quit1:		db "quit",0
_cstring_joinpb_popmenu:		db "joinpb_popmenu",0
_cstring_controls:		db "Controls",0
_cstring_setup_menu2:		db "setup_menu2",0
_cstring_leave:		db "Leave",0
_cstring_disconnect:		db "disconnect",0ah,0
_cstring_serversort:		db "ServerSort",0
_cstring_closeingame:		db "closeingame",0
_cstring_votekick:		db "voteKick",0
_cstring_callvote_kick_s:		db "callvote kick ",22h,"%s",22h,0ah,0
_cstring_votetempban:		db "voteTempBan",0
_cstring_callvote_tempban:		db "callvote tempBanUser ",22h,"%s",22h,0ah,0
_cstring_addfavorite:		db "addFavorite",0
_cstring_deletefavorite:		db "deleteFavorite",0
_cstring_createfavorite:		db "createFavorite",0
_cstring_default:		db "default",0
_cstring_ui_favoriteaddre:		db "ui_favoriteAddress",0
_cstring_update:		db "update",0
_cstring_ui_setname:		db "ui_SetName",0
_cstring_ui_name:		db "ui_Name",0
_cstring_name:		db "name",0
_cstring_setpbclstatus:		db "setPbClStatus",0
_cstring_ui_getname:		db "ui_GetName",0
_cstring_startsingleplaye:		db "startSingleplayer",0
_cstring_startsingleplaye1:		db "startSingleplayer",0ah,0
_cstring_ui_setrate:		db "ui_setRate",0
_cstring_rate:		db "rate",0
_cstring_cl_maxpackets:		db "cl_maxpackets",0
_cstring_cl_packetdup:		db "cl_packetdup",0
_cstring_getlanguage:		db "getLanguage",0
_cstring_verifylanguage:		db "verifyLanguage",0
_cstring_ui_mousepitch:		db "ui_mousePitch",0
_cstring_m_pitch:		db "m_pitch",0
_cstring_updatelanguage:		db "updateLanguage",0
_cstring_muteplayer:		db "mutePlayer",0
_cstring_openmenuondvar:		db "openMenuOnDvar",0
_cstring_openmenuondvarno:		db "openMenuOnDvarNot",0
_cstring_closemenuondvar:		db "closeMenuOnDvar",0
_cstring_s_cannot_find_dv:		db "%s: cannot find dvar %s",0ah,0
_cstring_closemenuondvarn:		db "closeMenuOnDvarNot",0
_cstring_setrecommended:		db "setRecommended",0
_cstring_clearloaderrorss:		db "clearLoadErrorsSummary",0
_cstring_unknown_ui_scrip:		db "unknown UI script %s in block:",0ah,"%s",0ah,0
_cstring_endofgame:		db "endofgame",0
_cstring_badcd:		db "badcd",0
_cstring_needcd:		db "needcd",0
_cstring_quickmessage:		db "quickmessage",0
_cstring_scoreboard:		db "scoreboard",0
_cstring_pregame_loaderro:		db "pregame_loaderror_mp",0
_cstring_2:		db ";",0
_cstring_error_popmenu:		db "error_popmenu",0
_cstring_ping:		db "ping",0
_cstring_mp_muted:		db "MP_MUTED",0
_cstring_x:		db "X",0
_cstring_3:		db 3fh,0
_cstring_voice:		db "voice",0
_cstring_s_s1:		db "%s (%s)",0
_cstring_4:		db "...",0
_cstring_ui_mpingametxt:		db "ui_mp/ingame.txt",0
_cstring_connect:		db "connect",0
_cstring_localhost:		db "localhost",0
_cstring_mod_s:		db "Mod: %s",0
_cstring_exe_awaitingchal:		db "EXE_AWAITINGCHALLENGE",0
_cstring_exe_awaitinghost:		db "EXE_AWAITINGHOST",0
_cstring_exe_uploadingsta:		db "EXE_UPLOADINGSTATS",0
_cstring_exe_awaitinggame:		db "EXE_AWAITINGGAMESTATE",0
_cstring____:		db "   ",0
_cstring_ss1:		db "%s%s",0
_cstring_exe_awaitingconn:		db "EXE_AWAITINGCONNECTION",0
_cstring__:		db ".. ",0
_cstring___:		db ".  ",0
_cstring_no_active_maps_f:		db "No active maps found for gametype ",27h,"%s",27h,".",0
_cstring_5:		db "&&",0
_cstring_could_not_transl:		db "Could not translate string ",22h,"%s",22h,0
_cstring_171:		db "^1)^7",0
_cstring_warning_could_no:		db "WARNING: Could not translate string ",22h,"%s",22h,0ah,0
_cstring_usage_selectstri:		db "usage: selectStringTableEntryInDvar <tableFileName> <columnNum> <dvarName>",0
_cstring_custom_game_mode:		db "Custom game mode name",0
_cstring_ui_custommodenam:		db "ui_customModeName",0
_cstring_name_to_give_the:		db "Name to give the currently edited custom game mode when editing is complete",0
_cstring_ui_custommodeedi:		db "ui_customModeEditName",0
_cstring_custom_class_nam:		db "Custom Class name",0
_cstring_ui_customclassna:		db "ui_customClassName",0
_cstring_g_allowvote:		db "g_allowvote",0
_cstring_cg_brass:		db "cg_brass",0
_cstring_fx_marks:		db "fx_marks",0
_cstring_server_display:		db "Server display",0
_cstring_server1:		db "server1",0
_cstring_server2:		db "server2",0
_cstring_server3:		db "server3",0
_cstring_server4:		db "server4",0
_cstring_server5:		db "server5",0
_cstring_server6:		db "server6",0
_cstring_server7:		db "server7",0
_cstring_server8:		db "server8",0
_cstring_server9:		db "server9",0
_cstring_server10:		db "server10",0
_cstring_server11:		db "server11",0
_cstring_server12:		db "server12",0
_cstring_server13:		db "server13",0
_cstring_server14:		db "server14",0
_cstring_server15:		db "server15",0
_cstring_server16:		db "server16",0
_cstring_the_network_sour:		db "The network source where:",0ah,"  0:Local",0ah,"  1:Internet",0ah,"  2:Favourites",0
_cstring_ui_netsource:		db "ui_netSource",0
_cstring_small_font_scale:		db "Small font scale",0
_cstring_ui_smallfont:		db "ui_smallFont",0
_cstring_big_font_scale:		db "Big font scale",0
_cstring_ui_bigfont:		db "ui_bigFont",0
_cstring_extra_big_font_s:		db "Extra big font scale",0
_cstring_ui_extrabigfont:		db "ui_extraBigFont",0
_cstring_current_map_inde:		db "Current map index",0
_cstring_ui_currentmap:		db "ui_currentMap",0
_cstring_game_type:		db "Game type",0
_cstring_ui_gametype:		db "ui_gametype",0
_cstring_game_join_type:		db "Game join type",0
_cstring_ui_joingametype:		db "ui_joinGametype",0
_cstring_displayed_game_t:		db "Displayed game type name",0
_cstring_ui_netgametypena:		db "ui_netGametypeName",0
_cstring_true_if_this_is_:		db "True if this is a dedicated server",0
_cstring_ui_dedicated:		db "ui_dedicated",0
_cstring_currently_runnin:		db "Currently running map",0
_cstring_ui_currentnetmap:		db "ui_currentNetMap",0
_cstring_show_full_server:		db "Show full servers",0
_cstring_ui_browsershowfu:		db "ui_browserShowFull",0
_cstring_show_empty_serve:		db "Show empty servers",0
_cstring_ui_browsershowem:		db "ui_browserShowEmpty",0
_cstring_show_servers_tha:		db "Show servers that are password protected",0
_cstring_ui_browsershowpa:		db "ui_browserShowPassword",0
_cstring_show_pure_server:		db "Show pure servers only",0
_cstring_ui_browsershowpu:		db "ui_browserShowPure",0
_cstring_ui_mod_value:		db "UI Mod value",0
_cstring_ui_browsermod:		db "ui_browserMod",0
_cstring_show_dedicated_s:		db "Show dedicated servers only",0
_cstring_ui_browsershowde:		db "ui_browserShowDedicated",0
_cstring_friendly_fire_is:		db "Friendly fire is active",0
_cstring_ui_browserfriend:		db "ui_browserFriendlyfire",0
_cstring_kill_cam_is_acti:		db "Kill cam is active",0
_cstring_ui_browserkillca:		db "ui_browserKillcam",0
_cstring_hardcore_mode:		db "Hardcore mode",0
_cstring_ui_browserhardco:		db "ui_browserHardcore",0
_cstring_oldschool_mode:		db "Oldschool mode",0
_cstring_ui_browseroldsch:		db "ui_browserOldSchool",0
_cstring_time_in_millisec:		db "Time in milliseconds before a server status request times out",0
_cstring_ui_serverstatust:		db "ui_serverStatusTimeOut",0
_cstring_only_show_punkbu:		db "Only show PunkBuster servers",3fh,0
_cstring_ui_browsershowpu1:		db "ui_browserShowPunkBuster",0
_cstring_number_of_player:		db "Number of player profiles",0
_cstring_ui_playerprofile:		db "ui_playerProfileCount",0
_cstring_selected_player_:		db "Selected player profile name",0
_cstring_ui_playerprofile1:		db "ui_playerProfileSelected",0
_cstring_new_player_profi:		db "New player profile name",0
_cstring_ui_playerprofile2:		db "ui_playerProfileNameNew",0
_cstring_where_to_draw_th:		db "Where to draw the build number",0
_cstring_ui_buildlocation:		db "ui_buildLocation",0
_cstring_font_size_to_use:		db "Font size to use for the build number",0
_cstring_ui_buildsize:		db "ui_buildSize",0
_cstring_show_onscreen_li:		db "Show onscreen list of currently visible menus",0
_cstring_ui_showlist:		db "ui_showList",0
_cstring_if_set_only_menu:		db "If set, only menus using this name will draw.",0
_cstring_ui_showmenuonly:		db "ui_showMenuOnly",0
_cstring_currently_showin:		db "Currently showing the end of game menu.",0
_cstring_ui_showendofgame:		db "ui_showEndOfGame",0
_cstring_scales_the_borde:		db "Scales the border color for the lowlight color on certain UI borders",0
_cstring_ui_borderlowligh:		db "ui_borderLowLightScale",0
_cstring_shows_cinematics:		db "Shows cinematics timestamp on subtitle UI elements.",0
_cstring_ui_cinematicstim:		db "ui_cinematicsTimestamp",0
_cstring_glow_color_appli:		db "Glow color applied to the mode and map name strings on the connect screen.",0
_cstring_ui_connectscreen:		db "ui_connectScreenTextGlowColor",0
_cstring_whether_to_draw_:		db "Whether to draw crosshairs.",0
_cstring_ui_drawcrosshair:		db "ui_drawCrosshair",0
_cstring_whether_the_hud_:		db "Whether the HUD should be suppressed for hardcore mode",0
_cstring_ui_hud_hardcore:		db "ui_hud_hardcore",0
_cstring_whether_the_ui_s:		db "Whether the UI should show UAV to allies",0
_cstring_ui_uav_allies:		db "ui_uav_allies",0
_cstring_whether_the_ui_s1:		db "Whether the UI should show UAV to axis",0
_cstring_ui_uav_axis:		db "ui_uav_axis",0
_cstring_whether_the_ui_s2:		db "Whether the UI should show UAV to this client",0
_cstring_ui_uav_client:		db "ui_uav_client",0
_cstring_whether_the_ui_s3:		db "Whether the UI should allow changing class",0
_cstring_ui_allow_classch:		db "ui_allow_classchange",0
_cstring_whether_the_ui_s4:		db "Whether the UI should allow changing team",0
_cstring_ui_allow_teamcha:		db "ui_allow_teamchange",0
_cstring_ui_netgametype:		db "ui_netGametype",0
_cstring_white:		db "white",0
_cstring_ui_scrollbar:		db "ui_scrollbar",0
_cstring_ui_scrollbar_arr:		db "ui_scrollbar_arrow_dwn_a",0
_cstring_ui_scrollbar_arr1:		db "ui_scrollbar_arrow_up_a",0
_cstring_ui_scrollbar_arr2:		db "ui_scrollbar_arrow_left",0
_cstring_ui_scrollbar_arr3:		db "ui_scrollbar_arrow_right",0
_cstring_ui_scrollbar_thu:		db "ui_scrollbar_thumb",0
_cstring_ui_slider2:		db "ui_slider2",0
_cstring_ui_sliderbutt_1:		db "ui_sliderbutt_1",0
_cstring_ui_cursor:		db "ui_cursor",0
_cstring_fontsbigfont:		db "fonts/bigfont",0
_cstring_fontssmallfont:		db "fonts/smallfont",0
_cstring_fontsconsolefont:		db "fonts/consolefont",0
_cstring_fontsboldfont:		db "fonts/boldfont",0
_cstring_fontsnormalfont:		db "fonts/normalfont",0
_cstring_fontsextrabigfon:		db "fonts/extrabigfont",0
_cstring_fontsobjectivefo:		db "fonts/objectivefont",0
_cstring_server_hardware_:		db "server_hardware_unknown",0
_cstring_server_hardware_1:		db "server_hardware_linux_dedicated",0
_cstring_server_hardware_2:		db "server_hardware_win_dedicated",0
_cstring_server_hardware_3:		db "server_hardware_mac_dedicated",0
_cstring_server_hardware_4:		db "server_hardware_win_listen",0
_cstring_server_hardware_5:		db "server_hardware_mac_listen",0
_cstring_true_if_the_game:		db "True if the game is multiplayer",0
_cstring_ui_multiplayer:		db "ui_multiplayer",0
_cstring_spam_debug_info_:		db "spam debug info for the ui script",0
_cstring_uiscript_debug:		db "uiscript_debug",0
_cstring_ui_mpmenustxt:		db "ui_mp/menus.txt",0
_cstring_mapsmpscsv:		db "maps/mp/%s.csv",0
_cstring_ui_mpcodetxt:		db "ui_mp/code.txt",0
_cstring_uimenu_wm_quickm:		db "UIMENU_WM_QUICKMESSAGE",0
_cstring_s_load:		db "%s_load",0
_cstring_exe_month_abv_ja:		db "EXE_MONTH_ABV_JANUARY",0
_cstring_exe_month_abv_fe:		db "EXE_MONTH_ABV_FEBRUARY",0
_cstring_exe_month_abv_ma:		db "EXE_MONTH_ABV_MARCH",0
_cstring_exe_month_abv_ap:		db "EXE_MONTH_ABV_APRIL",0
_cstring_exe_month_abv_ma1:		db "EXE_MONTH_ABV_MAY",0
_cstring_exe_month_abv_ju:		db "EXE_MONTH_ABV_JUN",0
_cstring_exe_month_abv_ju1:		db "EXE_MONTH_ABV_JULY",0
_cstring_exe_month_abv_au:		db "EXE_MONTH_ABV_AUGUST",0
_cstring_exe_month_abv_se:		db "EXE_MONTH_ABV_SEPTEMBER",0
_cstring_exe_month_abv_oc:		db "EXE_MONTH_ABV_OCTOBER",0
_cstring_exe_month_abv_no:		db "EXE_MONTH_ABV_NOVEMBER",0
_cstring_exe_month_abv_de:		db "EXE_MONTH_ABV_DECEMBER",0
_cstring_exe_local:		db "EXE_LOCAL",0
_cstring_exe_internet:		db "EXE_INTERNET",0
_cstring_exe_favorites:		db "EXE_FAVORITES",0
_cstring_sv_hostname:		db "sv_hostname",0
_cstring_exe_sv_info_serv:		db "@EXE_SV_INFO_SERVERNAME",0
_cstring_exe_sv_info_addr:		db "@EXE_SV_INFO_ADDRESS",0
_cstring_exe_sv_info_pass:		db "@EXE_SV_INFO_PASSWORD",0
_cstring_gamename:		db "gamename",0
_cstring_exe_sv_info_game:		db "@EXE_SV_INFO_GAMENAME",0
_cstring_exe_sv_info_game1:		db "@EXE_SV_INFO_GAMETYPE",0
_cstring_sv_pure:		db "sv_pure",0
_cstring_exe_sv_info_pure:		db "@EXE_SV_INFO_PURE",0
_cstring_exe_sv_info_map:		db "@EXE_SV_INFO_MAP",0
_cstring_shortversion:		db "shortversion",0
_cstring_exe_sv_info_vers:		db "@EXE_SV_INFO_VERSION",0
_cstring_protocol:		db "protocol",0
_cstring_exe_sv_info_prot:		db "@EXE_SV_INFO_PROTOCOL",0
_cstring_sv_maxping:		db "sv_maxping",0
_cstring_exe_sv_info_maxp:		db "@EXE_SV_INFO_MAXPING",0
_cstring_sv_minping:		db "sv_minping",0
_cstring_exe_sv_info_minp:		db "@EXE_SV_INFO_MINPING",0
_cstring_sv_maxrate:		db "sv_maxrate",0
_cstring_exe_sv_info_maxr:		db "@EXE_SV_INFO_MAXRATE",0
_cstring_sv_floodprotect:		db "sv_floodprotect",0
_cstring_exe_sv_info_floo:		db "@EXE_SV_INFO_FLOODPROTECT",0
_cstring_sv_allowanonymou:		db "sv_allowanonymous",0
_cstring_exe_sv_info_allo:		db "@EXE_SV_INFO_ALLOWANON",0
_cstring_exe_sv_info_maxc:		db "@EXE_SV_INFO_MAXCLIENTS",0
_cstring_sv_privateclient:		db "sv_privateclients",0
_cstring_exe_sv_info_priv:		db "@EXE_SV_INFO_PRIVATECLIENTS",0
_cstring_scr_friendlyfire:		db "scr_friendlyFire",0
_cstring_exe_sv_info_frie:		db "@EXE_SV_INFO_FRIENDLY_FIRE",0
_cstring_exe_sv_info_mod:		db "@EXE_SV_INFO_MOD",0
_cstring_menu_mods:		db "@MENU_MODS",0
_cstring_scr_killcam:		db "scr_killcam",0
_cstring_exe_sv_info_kill:		db "@EXE_SV_INFO_KILLCAM",0
_cstring_g_antilag:		db "g_antilag",0
_cstring_exe_sv_info_anti:		db "@EXE_SV_INFO_ANTILAG",0
_cstring_g_compassshowene:		db "g_compassShowEnemies",0
_cstring_exe_sv_info_comp:		db "@EXE_SV_INFO_COMPASS_ENEMIES",0
_cstring_sv_voice:		db "sv_voice",0
_cstring_exe_sv_info_voic:		db "@EXE_SV_INFO_VOICE",0
_cstring_mpui_punkbuster:		db "@MPUI_PUNKBUSTER",0
_cstring_sv_disableclient:		db "sv_disableClientConsole",0
_cstring_exe_sv_info_clie:		db "@EXE_SV_INFO_CLIENT_CONSOLE",0



;All constant floats and doubles:
SECTION .rdata
_float_184_00000000:		dd 0x43380000	; 184
_float_185_00000000:		dd 0x43390000	; 185
_float_186_00000000:		dd 0x433a0000	; 186
_float_640_00000000:		dd 0x44200000	; 640
_float_164_00000000:		dd 0x43240000	; 164
_float_165_00000000:		dd 0x43250000	; 165
_float_166_00000000:		dd 0x43260000	; 166
_float_210_00000000:		dd 0x43520000	; 210
_float_235_00000000:		dd 0x436b0000	; 235
_float_260_00000000:		dd 0x43820000	; 260
_float_430_00000000:		dd 0x43d70000	; 430
_float_100_00000000:		dd 0x42c80000	; 100
_float_340_00000000:		dd 0x43aa0000	; 340
_float_0_20000000:		dd 0x3e4ccccd	; 0.2
_float_320_00000000:		dd 0x43a00000	; 320
_float_32_00000000:		dd 0x42000000	; 32
_float__0_50000000:		dd 0xbf000000	; -0.5
_float__2_00000000:		dd 0xc0000000	; -2
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_0_80000001:		dd 0x3f4ccccd	; 0.8
_double_0_50000000:		dq 0x3fe0000000000000	; 0.5
_float_2_00000000:		dd 0x40000000	; 2
_float_480_00000000:		dd 0x43f00000	; 480
_float_4_00000000:		dd 0x40800000	; 4
_float_9_00000000:		dd 0x41100000	; 9
_float_13_00000000:		dd 0x41500000	; 13
_float_7_00000000:		dd 0x40e00000	; 7
_float_39_00000000:		dd 0x421c0000	; 39
_float_20_00000000:		dd 0x41a00000	; 20
_float_24_00000000:		dd 0x41c00000	; 24
_float_29_00000000:		dd 0x41e80000	; 29
_float_1_00000000:		dd 0x3f800000	; 1
_float_299_00000000:		dd 0x43958000	; 299
_float_22_00000000:		dd 0x41b00000	; 22
_float_32767_00000000:		dd 0x46fffe00	; 32767
_float__1_33333337:		dd 0xbfaaaaab	; -1.33333
_float_0_00000000:		dd 0x0	; 0

