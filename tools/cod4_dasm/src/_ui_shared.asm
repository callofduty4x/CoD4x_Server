;Imports of ui_shared:
	extern Window_AddDynamicFlags
	extern Window_RemoveDynamicFlags
	extern Q_stricmp
	extern Float_Parse
	extern CL_LocalClientIsInGame
	extern Material_RegisterHandle
	extern Menu_SetCursorItem
	extern Com_Printf
	extern Com_PrintError
	extern Item_EnableShowViaDvar
	extern Com_Error
	extern Cvar_SetFromStringByName
	extern CL_ControllerIndexFromClientNum
	extern Q_strncat
	extern Cbuf_ExecuteBuffer
	extern SND_PlayLocalSoundAliasByName
	extern UI_AllowScriptMenuResponse
	extern CL_GetConfigString
	extern Cvar_VariableIntegerValue
	extern va
	extern Cbuf_AddText
	extern atoi
	extern UILocalVar_SetBool
	extern UILocalVar_FindOrCreate
	extern UILocalVar_SetInt
	extern atof
	extern UILocalVar_SetFloat
	extern UILocalVar_SetString
	extern Item_GetListBoxDef
	extern UI_FeederSelection
	extern UI_FeederCount
	extern Cvar_VariableString
	extern useFastFile
	extern Com_PrintWarning
	extern Q_strncpyz
	extern StringTable_GetAsset
	extern StringTable_Lookup
	extern LiveStorage_GetStat
	extern LiveStorage_SetStat
	extern Com_UngetToken
	extern LiveStorage_ValidateCaCStat
	extern strchr
	extern Q_strncmp
	extern Cvar_GetVariantString
	extern memset
	extern UI_RunMenuScript
	extern Item_GetEditFieldDef
	extern Key_SetOverstrikeMode
	extern CL_GetKeyBinding
	extern SEH_StringEd_GetString
	extern UI_SafeTranslateString
	extern Com_sprintf
	extern scrPlaceView
	extern ScrPlace_ApplyX
	extern ScrPlace_ApplyRect
	extern R_NormalizedTextScale
	extern UI_TextHeight
	extern UI_TextWidth
	extern R_TextLineWrapPosition
	extern memcpy
	extern UI_DrawTextWithGlow
	extern isspace
	extern UI_DrawText
	extern ceilf
	extern UI_DrawHandlePic
	extern UI_DrawRect
	extern colorWhite
	extern UI_DrawLoadBar
	extern ui_borderLowLightScale
	extern UI_DrawHighlightRect
	extern Window_SetDynamicFlags
	extern UI_DrawTopBottom
	extern UI_DrawSides
	extern UI_FillRect
	extern UI_FeederItemText
	extern UI_FeederItemColor
	extern UI_GetFontHandle
	extern Item_SetTextRect
	extern UI_OwnerDrawWidth
	extern sinf
	extern GetExpressionResultString
	extern UI_OwnerDraw
	extern UI_OverrideCursorPos
	extern ScrPlace_ApplyY
	extern UI_FeederItemEnabled
	extern ListBox_HasValidCursorPos
	extern Item_IsVisible
	extern Cvar_FindVar
	extern Item_GetMultiDef
	extern UI_OwnerDrawHandleKey
	extern floorf
	extern ui_showMenuOnly
	extern Menu_UpdatePosition
	extern CL_IsCgameInitialized
	extern Con_DrawGameMessageWindow
	extern UI_OwnerDrawVisible
	extern GetExpressionFloat
	extern colorGreen
	extern Q_strlwr
	extern colorMagenta
	extern sharedUiInfo
	extern UI_FeederItemImage
	extern Key_GetOverstrikeMode
	extern UI_DrawTextWithCursor
	extern Com_LocalizedFloatToString
	extern Item_SetupKeywordHash
	extern Menu_SetupKeywordHash
	extern UILocalVar_Init
	extern fs_gameDirVar
	extern Com_ParseOnLine
	extern Cvar_VariableBooleanValue
	extern ui_showList
	extern PIXBeginNamedEvent
	extern scrPlaceFull
	extern memmove
	extern Item_GetCursorPosOffset
	extern Key_GetBinding
	extern Com_GetDecimalDelimiter
	extern UI_Pause
	extern I_isforfilename
	extern I_isdigit
	extern toupper
	extern clientUIActives
	extern IsExpressionTrue
	extern uiscript_debug
	extern CG_ScopeIsOverlayed
	extern CG_Flashbanged
	extern DB_FindXAssetHeader
	extern _ZN10MacDisplay15SupportsShadowsEv
	extern _ZN11MacFeatures19GetKeyboardLanguageEv
	extern Key_GetCommandAssignment
	extern Key_SetBinding
	extern CL_SetCursorPos

;Exports of ui_shared:
	global itemCapture
	global commandList
	global Script_FadeIn
	global Script_FadeOut
	global Script_Show
	global Script_Hide
	global Script_ShowMenu
	global Script_HideMenu
	global Script_SetColor
	global Script_Open
	global Script_Close
	global Script_InGameOpen
	global Script_InGameClose
	global Script_SetBackground
	global Script_SetItemColor
	global Script_FocusFirstInMenu
	global Script_SetFocus
	global Script_SetFocusByDvar
	global Script_SetDvar
	global Script_Exec
	global Script_ExecNow
	global Script_ExecOnDvarStringValue
	global Script_ExecOnDvarIntValue
	global Script_ExecOnDvarFloatValue
	global Script_ExecNowOnDvarStringValue
	global Script_ExecNowOnDvarIntValue
	global Script_ExecNowOnDvarFloatValue
	global Script_Play
	global Script_ScriptMenuResponse
	global Script_RespondOnDvarStringValue
	global Script_RespondOnDvarIntValue
	global Script_RespondOnDvarFloatValue
	global Script_SetLocalVarBool
	global Script_SetLocalVarInt
	global Script_SetLocalVarFloat
	global Script_SetLocalVarString
	global Script_FeederTop
	global Script_FeederBottom
	global Script_OpenForGameType
	global Script_CloseForGameType
	global Script_StatClearPerkNew
	global Script_StatSetUsingStatsTable
	global Script_StatClearBitMask
	global g_debugMode
	global captureData
	global captureFunc
	global g_bindItem
	global scrollInfo
	global lastListBoxClickTime
	global Menu_ItemsMatchingGroup
	global Menu_GetMatchingItemByNumber
	global Menu_FadeItemByName
	global Script_AddTextWrapper
	global Script_ConditionalExecHandler
	global Script_ConditionalResponseHandler
	global Script_ExecIfStringsEqual
	global Script_ExecIfIntsEqual
	global Script_ExecIfFloatsEqual
	global Item_RunScript
	global Item_TextField_BeginEdit
	global _ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect
	global GetKeyBindingLocalizedString
	global Scroll_Slider_SetThumbPos
	global Scroll_Slider_ThumbFunc
	global Item_Slider_ThumbPosition
	global _DrawWrappedText
	global Window_Paint
	global Menus_Close
	global Item_ListBox_PaintTextElem
	global Item_SetTextExtents
	global _ZZ15Item_Text_PaintP9UiContextP9itemDef_sE21MY_SUBTITLE_GLOWCOLOR
	global Item_Text_Paint
	global Item_OwnerDraw_Paint
	global Item_ListBox_ThumbPosition
	global Item_ListBox_HandleKey
	global Scroll_ListBox_ThumbFunc
	global Scroll_ListBox_AutoFunc
	global Item_SetFocus
	global Menu_SetPrevCursorItem
	global Menu_SetNextCursorItem
	global Item_ListBox_OverLB
	global Item_HandleKey
	global Menu_HandleMouseMove
	global _ZZ14Menu_HandleKeyP9UiContextP9menuDef_tiiE11inHandleKey
	global Menu_Count
	global Menu_Paint
	global Menu_Setup
	global Menus_Open
	global String_Parse
	global Menu_PaintAll
	global Menu_HandleKey
	global Menu_IsVisible
	global Menus_CloseAll
	global UI_AddMenuList
	global Menu_GetFocused
	global Menus_FindByName
	global Menus_HideByName
	global Menus_OpenByName
	global Menus_ShowByName
	global UI_GetMenuScreen
	global Display_MouseMove
	global Menus_CloseByName
	global UI_DrawWrappedText
	global Item_Bind_HandleKey
	global Menus_MenuIsInStack
	global Item_ListBox_Viewmax
	global UI_SetSystemCursorPos
	global Display_KeyBindPending
	global Item_ListBox_MaxScroll
	global Menu_SetFeederSelection
	global UI_GetMenuScreenForError
	global Menus_AnyFullScreenVisible
	global UI_GetKeyBindingLocalizedString
	global Menu_PaintAll_AppendToVisibleList
	global UI_GetKeyBindingLocalizedStringSingle
	global LerpColor
	global _ZSt4findISt16reverse_iteratorIPcEcET_S3_S3_RKT0_St26random_access_iterator_tag
	global g_editItem
	global g_editingField
	global g_waitingForKey


SECTION .text


;Script_FadeIn(UiContext*, itemDef_s*, char const**)
Script_FadeIn:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x414
	mov dword [esp+0x8], 0x400
	lea ebx, [ebp-0x408]
	mov [esp+0x4], ebx
	mov eax, [ebp+0x10]
	mov [esp], eax
	call String_Parse
	test eax, eax
	jz Script_FadeIn_10
	mov eax, [ebp+0xc]
	mov edx, [eax+0xe8]
	mov dword [esp], 0x0
	mov ecx, ebx
	mov ebx, [ebp+0x8]
	mov eax, [ebx]
	call Menu_FadeItemByName
Script_FadeIn_10:
	add esp, 0x414
	pop ebx
	pop ebp
	ret


;Script_FadeOut(UiContext*, itemDef_s*, char const**)
Script_FadeOut:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x414
	mov dword [esp+0x8], 0x400
	lea ebx, [ebp-0x408]
	mov [esp+0x4], ebx
	mov eax, [ebp+0x10]
	mov [esp], eax
	call String_Parse
	test eax, eax
	jz Script_FadeOut_10
	mov eax, [ebp+0xc]
	mov edx, [eax+0xe8]
	mov dword [esp], 0x1
	mov ecx, ebx
	mov ebx, [ebp+0x8]
	mov eax, [ebx]
	call Menu_FadeItemByName
Script_FadeOut_10:
	add esp, 0x414
	pop ebx
	pop ebp
	ret


;Script_Show(UiContext*, itemDef_s*, char const**)
Script_Show:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x42c
	mov dword [esp+0x8], 0x400
	lea esi, [ebp-0x418]
	mov [esp+0x4], esi
	mov eax, [ebp+0x10]
	mov [esp], eax
	call String_Parse
	test eax, eax
	jnz Script_Show_10
Script_Show_20:
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Script_Show_10:
	mov eax, [ebp+0xc]
	mov eax, [eax+0xe8]
	mov [ebp-0x420], eax
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov [ebp-0x41c], eax
	mov edx, esi
	mov eax, [ebp-0x420]
	call Menu_ItemsMatchingGroup
	mov edi, eax
	test eax, eax
	jle Script_Show_20
	xor ebx, ebx
Script_Show_40:
	mov ecx, esi
	mov edx, ebx
	mov eax, [ebp-0x420]
	call Menu_GetMatchingItemByNumber
	test eax, eax
	jz Script_Show_30
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov eax, [ebp-0x41c]
	mov [esp], eax
	call Window_AddDynamicFlags
Script_Show_30:
	add ebx, 0x1
	cmp edi, ebx
	jnz Script_Show_40
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Script_Hide(UiContext*, itemDef_s*, char const**)
Script_Hide:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x42c
	mov dword [esp+0x8], 0x400
	lea esi, [ebp-0x418]
	mov [esp+0x4], esi
	mov eax, [ebp+0x10]
	mov [esp], eax
	call String_Parse
	test eax, eax
	jnz Script_Hide_10
Script_Hide_20:
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Script_Hide_10:
	mov eax, [ebp+0xc]
	mov eax, [eax+0xe8]
	mov [ebp-0x420], eax
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov [ebp-0x41c], eax
	mov edx, esi
	mov eax, [ebp-0x420]
	call Menu_ItemsMatchingGroup
	mov edi, eax
	test eax, eax
	jle Script_Hide_20
	xor ebx, ebx
Script_Hide_40:
	mov ecx, esi
	mov edx, ebx
	mov eax, [ebp-0x420]
	call Menu_GetMatchingItemByNumber
	test eax, eax
	jz Script_Hide_30
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov eax, [ebp-0x41c]
	mov [esp], eax
	call Window_RemoveDynamicFlags
Script_Hide_30:
	add ebx, 0x1
	cmp edi, ebx
	jnz Script_Hide_40
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Script_ShowMenu(UiContext*, itemDef_s*, char const**)
Script_ShowMenu:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x41c
	mov edi, [ebp+0x8]
	mov dword [esp+0x8], 0x400
	lea eax, [ebp-0x418]
	mov [esp+0x4], eax
	mov eax, [ebp+0x10]
	mov [esp], eax
	call String_Parse
	test eax, eax
	jz Script_ShowMenu_10
	mov esi, [edi+0xa30]
	test esi, esi
	jg Script_ShowMenu_20
Script_ShowMenu_10:
	add esp, 0x41c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Script_ShowMenu_20:
	mov ebx, edi
	xor esi, esi
Script_ShowMenu_40:
	lea eax, [ebp-0x418]
	mov [esp+0x4], eax
	mov eax, [ebx+0x30]
	mov eax, [eax]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz Script_ShowMenu_30
	add esi, 0x1
	add ebx, 0x4
	cmp esi, [edi+0xa30]
	jl Script_ShowMenu_40
	add esp, 0x41c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Script_ShowMenu_30:
	mov eax, [edi+esi*4+0x30]
	test eax, eax
	jz Script_ShowMenu_10
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov eax, [edi]
	mov [esp], eax
	call Window_AddDynamicFlags
	jmp Script_ShowMenu_10
	nop


;Script_HideMenu(UiContext*, itemDef_s*, char const**)
Script_HideMenu:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x41c
	mov edi, [ebp+0x8]
	mov dword [esp+0x8], 0x400
	lea eax, [ebp-0x418]
	mov [esp+0x4], eax
	mov eax, [ebp+0x10]
	mov [esp], eax
	call String_Parse
	test eax, eax
	jz Script_HideMenu_10
	mov eax, [edi+0xa30]
	test eax, eax
	jg Script_HideMenu_20
Script_HideMenu_10:
	add esp, 0x41c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Script_HideMenu_20:
	mov ebx, edi
	xor esi, esi
Script_HideMenu_40:
	lea eax, [ebp-0x418]
	mov [esp+0x4], eax
	mov eax, [ebx+0x30]
	mov eax, [eax]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz Script_HideMenu_30
	add esi, 0x1
	add ebx, 0x4
	cmp esi, [edi+0xa30]
	jl Script_HideMenu_40
	add esp, 0x41c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Script_HideMenu_30:
	mov eax, [edi+esi*4+0x30]
	test eax, eax
	jz Script_HideMenu_10
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov eax, [edi]
	mov [esp], eax
	call Window_RemoveDynamicFlags
	jmp Script_HideMenu_10
	nop


;Script_SetColor(UiContext*, itemDef_s*, char const**)
Script_SetColor:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x42c
	mov dword [esp+0x8], 0x400
	lea ebx, [ebp-0x41c]
	mov [esp+0x4], ebx
	mov eax, [ebp+0x10]
	mov [esp], eax
	call String_Parse
	test eax, eax
	jnz Script_SetColor_10
Script_SetColor_30:
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Script_SetColor_10:
	mov dword [esp+0x4], _cstring_backcolor
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz Script_SetColor_20
	mov ebx, [ebp+0xc]
	add ebx, 0x68
	mov dword [esp+0x8], 0x8000
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp], eax
	call Window_AddDynamicFlags
Script_SetColor_60:
	test ebx, ebx
	jz Script_SetColor_30
	mov esi, 0x4
	lea edi, [ebp-0x1c]
Script_SetColor_40:
	mov [esp+0x4], edi
	mov eax, [ebp+0x10]
	mov [esp], eax
	call Float_Parse
	test eax, eax
	jz Script_SetColor_30
	mov eax, [ebp-0x1c]
	mov [ebx], eax
	add ebx, 0x4
	sub esi, 0x1
	jnz Script_SetColor_40
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Script_SetColor_20:
	mov dword [esp+0x4], _cstring_forecolor
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jz Script_SetColor_50
	mov dword [esp+0x4], _cstring_bordercolor
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz Script_SetColor_30
	mov ebx, [ebp+0xc]
	add ebx, 0x78
	jmp Script_SetColor_60
Script_SetColor_50:
	mov ebx, [ebp+0xc]
	add ebx, 0x58
	mov dword [esp+0x8], 0x10000
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp], eax
	call Window_AddDynamicFlags
	jmp Script_SetColor_60


;Script_Open(UiContext*, itemDef_s*, char const**)
Script_Open:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x414
	mov dword [esp+0x8], 0x400
	lea ebx, [ebp-0x408]
	mov [esp+0x4], ebx
	mov eax, [ebp+0x10]
	mov [esp], eax
	call String_Parse
	test eax, eax
	jz Script_Open_10
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Menus_OpenByName
Script_Open_10:
	add esp, 0x414
	pop ebx
	pop ebp
	ret
	nop


;Script_Close(UiContext*, itemDef_s*, char const**)
Script_Close:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x41c
	mov ebx, [ebp+0x8]
	mov dword [esp+0x8], 0x400
	lea eax, [ebp-0x418]
	mov [esp+0x4], eax
	mov eax, [ebp+0x10]
	mov [esp], eax
	call String_Parse
	test eax, eax
	jnz Script_Close_10
Script_Close_40:
	add esp, 0x41c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Script_Close_10:
	mov edi, _cstring_self
	mov ecx, 0x5
	cld
	lea esi, [ebp-0x418]
	repe cmpsb
	mov edx, 0x0
	jz Script_Close_20
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
Script_Close_20:
	test edx, edx
	jz Script_Close_30
	mov eax, [ebx+0xa30]
	test eax, eax
	jle Script_Close_40
	mov esi, ebx
	xor edi, edi
	jmp Script_Close_50
Script_Close_60:
	add edi, 0x1
	add esi, 0x4
	cmp edi, [ebx+0xa30]
	jge Script_Close_40
Script_Close_50:
	lea eax, [ebp-0x418]
	mov [esp+0x4], eax
	mov eax, [esi+0x30]
	mov eax, [eax]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz Script_Close_60
	mov edx, [ebx+edi*4+0x30]
	test edx, edx
	jz Script_Close_40
	mov eax, ebx
	call Menus_Close
	jmp Script_Close_40
Script_Close_30:
	mov eax, [ebp+0xc]
	mov edx, [eax+0xe8]
	mov eax, ebx
	call Menus_Close
	add esp, 0x41c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Script_InGameOpen(UiContext*, itemDef_s*, char const**)
Script_InGameOpen:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x414
	mov dword [esp+0x8], 0x400
	lea ebx, [ebp-0x408]
	mov [esp+0x4], ebx
	mov eax, [ebp+0x10]
	mov [esp], eax
	call String_Parse
	test eax, eax
	jnz Script_InGameOpen_10
Script_InGameOpen_20:
	add esp, 0x414
	pop ebx
	pop ebp
	ret
Script_InGameOpen_10:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp], eax
	call CL_LocalClientIsInGame
	test eax, eax
	jz Script_InGameOpen_20
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Menus_OpenByName
	add esp, 0x414
	pop ebx
	pop ebp
	ret
	nop


;Script_InGameClose(UiContext*, itemDef_s*, char const**)
Script_InGameClose:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x41c
	mov esi, [ebp+0x8]
	mov dword [esp+0x8], 0x400
	lea eax, [ebp-0x418]
	mov [esp+0x4], eax
	mov eax, [ebp+0x10]
	mov [esp], eax
	call String_Parse
	test eax, eax
	jnz Script_InGameClose_10
Script_InGameClose_20:
	add esp, 0x41c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Script_InGameClose_10:
	mov eax, [esi]
	mov [esp], eax
	call CL_LocalClientIsInGame
	test eax, eax
	jz Script_InGameClose_20
	mov eax, [esi+0xa30]
	test eax, eax
	jle Script_InGameClose_20
	mov ebx, esi
	xor edi, edi
	jmp Script_InGameClose_30
Script_InGameClose_40:
	add edi, 0x1
	add ebx, 0x4
	cmp edi, [esi+0xa30]
	jge Script_InGameClose_20
Script_InGameClose_30:
	lea eax, [ebp-0x418]
	mov [esp+0x4], eax
	mov eax, [ebx+0x30]
	mov eax, [eax]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz Script_InGameClose_40
	mov edx, [esi+edi*4+0x30]
	test edx, edx
	jz Script_InGameClose_20
	mov eax, esi
	call Menus_Close
	jmp Script_InGameClose_20
	nop


;Script_SetBackground(UiContext*, itemDef_s*, char const**)
Script_SetBackground:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x414
	mov dword [esp+0x8], 0x400
	lea ebx, [ebp-0x408]
	mov [esp+0x4], ebx
	mov eax, [ebp+0x10]
	mov [esp], eax
	call String_Parse
	test eax, eax
	jz Script_SetBackground_10
	mov edx, [ebp+0xc]
	mov eax, [edx+0x130]
	mov [esp+0x4], eax
	mov [esp], ebx
	call Material_RegisterHandle
	mov edx, [ebp+0xc]
	mov [edx+0x98], eax
Script_SetBackground_10:
	add esp, 0x414
	pop ebx
	pop ebp
	ret


;Script_SetItemColor(UiContext*, itemDef_s*, char const**)
Script_SetItemColor:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x84c
	mov esi, [ebp+0x10]
	mov dword [esp+0x8], 0x400
	lea eax, [ebp-0x42c]
	mov [esp+0x4], eax
	mov [esp], esi
	call String_Parse
	test eax, eax
	jnz Script_SetItemColor_10
Script_SetItemColor_20:
	add esp, 0x84c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Script_SetItemColor_10:
	mov dword [esp+0x8], 0x400
	lea edx, [ebp-0x82c]
	mov [esp+0x4], edx
	mov [esp], esi
	call String_Parse
	test eax, eax
	jz Script_SetItemColor_20
	mov edx, [ebp+0xc]
	mov eax, [edx+0xe8]
	lea edx, [ebp-0x42c]
	call Menu_ItemsMatchingGroup
	mov [ebp-0x83c], eax
	mov ebx, 0x1
	lea edi, [ebp-0x1c]
Script_SetItemColor_30:
	mov [esp+0x4], edi
	mov [esp], esi
	call Float_Parse
	test eax, eax
	jz Script_SetItemColor_20
	mov eax, [ebp-0x1c]
	mov [ebp+ebx*4-0x30], eax
	add ebx, 0x1
	cmp ebx, 0x5
	jnz Script_SetItemColor_30
	mov ebx, [ebp-0x83c]
	test ebx, ebx
	jle Script_SetItemColor_20
	xor edi, edi
Script_SetItemColor_70:
	mov edx, [ebp+0xc]
	mov eax, [edx+0xe8]
	lea ecx, [ebp-0x42c]
	mov edx, edi
	call Menu_GetMatchingItemByNumber
	mov esi, eax
	test eax, eax
	jz Script_SetItemColor_40
	mov dword [esp+0x4], _cstring_backcolor
	lea eax, [ebp-0x82c]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz Script_SetItemColor_50
	lea ebx, [esi+0x68]
Script_SetItemColor_90:
	test ebx, ebx
	jz Script_SetItemColor_40
	mov edx, ebx
	mov ecx, 0x1
Script_SetItemColor_60:
	mov eax, [ebp+ecx*4-0x30]
	mov [edx], eax
	add ecx, 0x1
	add edx, 0x4
	cmp ecx, 0x5
	jnz Script_SetItemColor_60
Script_SetItemColor_40:
	add edi, 0x1
	cmp [ebp-0x83c], edi
	jnz Script_SetItemColor_70
	jmp Script_SetItemColor_20
Script_SetItemColor_50:
	mov dword [esp+0x4], _cstring_forecolor
	lea edx, [ebp-0x82c]
	mov [esp], edx
	call Q_stricmp
	test eax, eax
	jz Script_SetItemColor_80
	mov dword [esp+0x4], _cstring_bordercolor
	lea eax, [ebp-0x82c]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz Script_SetItemColor_40
	lea ebx, [esi+0x78]
	jmp Script_SetItemColor_90
Script_SetItemColor_80:
	lea ebx, [esi+0x58]
	mov dword [esp+0x8], 0x10000
	mov [esp+0x4], esi
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp], eax
	call Window_AddDynamicFlags
	jmp Script_SetItemColor_90


;Script_FocusFirstInMenu(UiContext*, itemDef_s*, char const**)
Script_FocusFirstInMenu:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov [ebp-0x20], eax
	mov ebx, [eax+0xe8]
	mov edx, ebx
	mov eax, esi
	call Menu_HandleMouseMove
	test eax, eax
	jz Script_FocusFirstInMenu_10
	mov eax, [esi]
	mov edx, [ebx+eax*4+0xac]
	mov eax, [ebx+0x118]
	mov edx, [eax+edx*4]
Script_FocusFirstInMenu_100:
	test edx, edx
	jz Script_FocusFirstInMenu_20
	cmp dword [edx+0xb4], 0x12
	jbe Script_FocusFirstInMenu_30
Script_FocusFirstInMenu_40:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Script_FocusFirstInMenu_30:
	mov ecx, [edx+0xb4]
	mov eax, 0x1
	shl eax, cl
	test eax, 0x70210
	jz Script_FocusFirstInMenu_40
	mov eax, [esi]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Item_TextField_BeginEdit
Script_FocusFirstInMenu_10:
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov eax, [esi]
	mov [esp], eax
	call Menu_SetCursorItem
	mov eax, [ebx+0xa4]
	test eax, eax
	jg Script_FocusFirstInMenu_50
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov eax, [esi]
	mov [esp], eax
	call Menu_SetCursorItem
Script_FocusFirstInMenu_20:
	mov edx, [ebp-0x20]
	mov eax, [edx+0xe8]
	mov edx, [eax]
	test edx, edx
	jz Script_FocusFirstInMenu_60
Script_FocusFirstInMenu_90:
	mov [ebp+0x10], edx
	mov dword [ebp+0xc], _cstring_focusfirst_no_it
	mov dword [ebp+0x8], 0xd
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Com_Printf
Script_FocusFirstInMenu_50:
	xor edi, edi
	mov dword [ebp-0x1c], 0x0
Script_FocusFirstInMenu_80:
	mov eax, [ebx+0x118]
	mov ecx, [ebp-0x1c]
	mov edx, [eax+ecx]
	movss xmm1, dword [esi+0x14]
	movss xmm0, dword [esi+0x10]
	mov eax, esi
	call Item_SetFocus
	test eax, eax
	jnz Script_FocusFirstInMenu_70
	add edi, 0x1
	mov [esp+0x8], edi
	mov [esp+0x4], ebx
	mov eax, [esi]
	mov [esp], eax
	call Menu_SetCursorItem
	add dword [ebp-0x1c], 0x4
	cmp [ebx+0xa4], edi
	jg Script_FocusFirstInMenu_80
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov eax, [esi]
	mov [esp], eax
	call Menu_SetCursorItem
	jmp Script_FocusFirstInMenu_20
Script_FocusFirstInMenu_60:
	mov ecx, [ebp-0x20]
	mov edx, [ecx]
	test edx, edx
	mov eax, _cstring_itemdefs_unnamed
	cmovz edx, eax
	jmp Script_FocusFirstInMenu_90
Script_FocusFirstInMenu_70:
	mov eax, [ebx+0x118]
	mov ecx, [ebp-0x1c]
	mov edx, [ecx+eax]
	jmp Script_FocusFirstInMenu_100
	nop


;Script_SetFocus(UiContext*, itemDef_s*, char const**)
Script_SetFocus:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x41c
	mov dword [esp+0x8], 0x400
	lea eax, [ebp-0x418]
	mov [esp+0x4], eax
	mov eax, [ebp+0x10]
	mov [esp], eax
	call String_Parse
	test eax, eax
	jz Script_SetFocus_10
	mov ecx, [ebp+0xc]
	mov esi, [ecx+0xe8]
	test esi, esi
	jz Script_SetFocus_20
	mov eax, [esi+0xa4]
	test eax, eax
	jle Script_SetFocus_20
	xor ebx, ebx
Script_SetFocus_50:
	lea edi, [ebx*4]
	mov eax, [esi+0x118]
	mov eax, [eax+edi]
	mov eax, [eax]
	test eax, eax
	jz Script_SetFocus_30
	mov [esp+0x4], eax
	lea eax, [ebp-0x418]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz Script_SetFocus_40
Script_SetFocus_30:
	add ebx, 0x1
	cmp [esi+0xa4], ebx
	jg Script_SetFocus_50
Script_SetFocus_20:
	lea ecx, [ebp-0x418]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_setfocus_could_n
	mov dword [esp], 0xd
	call Com_Printf
Script_SetFocus_10:
	add esp, 0x41c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Script_SetFocus_40:
	mov eax, [esi+0x118]
	mov ebx, [eax+edi]
	test ebx, ebx
	jz Script_SetFocus_20
	movss xmm1, dword [ebx+0x8]
	movss xmm0, dword [ebx+0x4]
	mov edx, ebx
	mov eax, [ebp+0x8]
	call Item_SetFocus
	test eax, eax
	jz Script_SetFocus_60
	cmp dword [ebx+0xb4], 0x12
	ja Script_SetFocus_10
	mov ecx, [ebx+0xb4]
	mov eax, 0x1
	shl eax, cl
	test eax, 0x70210
	jz Script_SetFocus_10
	mov edx, ebx
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	call Item_TextField_BeginEdit
	jmp Script_SetFocus_10
Script_SetFocus_60:
	lea eax, [ebp-0x418]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_setfocus_error_f
	mov dword [esp], 0xd
	call Com_PrintError
	jmp Script_SetFocus_10


;Script_SetFocusByDvar(UiContext*, itemDef_s*, char const**)
Script_SetFocusByDvar:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x41c
	mov dword [esp+0x8], 0x400
	lea eax, [ebp-0x418]
	mov [esp+0x4], eax
	mov eax, [ebp+0x10]
	mov [esp], eax
	call String_Parse
	test eax, eax
	jz Script_SetFocusByDvar_10
	mov eax, [ebp+0xc]
	mov esi, [eax+0xe8]
	mov eax, [esi+0xa4]
	test eax, eax
	jle Script_SetFocusByDvar_10
	xor edi, edi
	jmp Script_SetFocusByDvar_20
Script_SetFocusByDvar_30:
	add edi, 0x1
	cmp edi, [esi+0xa4]
	jge Script_SetFocusByDvar_10
Script_SetFocusByDvar_20:
	mov eax, [esi+0x118]
	mov ebx, [eax+edi*4]
	test byte [ebx+0x11c], 0x10
	jz Script_SetFocusByDvar_30
	mov eax, [ebx+0x110]
	test eax, eax
	jz Script_SetFocusByDvar_40
Script_SetFocusByDvar_50:
	lea eax, [ebp-0x418]
	mov [esp+0x4], eax
	mov eax, [ebx+0x110]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz Script_SetFocusByDvar_30
	mov dword [esp+0x4], 0x10
	mov [esp], ebx
	call Item_EnableShowViaDvar
	test eax, eax
	jz Script_SetFocusByDvar_30
	movss xmm1, dword [ebx+0x8]
	movss xmm0, dword [ebx+0x4]
	mov edx, ebx
	mov eax, [ebp+0x8]
	call Item_SetFocus
	test eax, eax
	jz Script_SetFocusByDvar_30
Script_SetFocusByDvar_10:
	add esp, 0x41c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Script_SetFocusByDvar_40:
	mov dword [esp+0x4], _cstring_script_setfocusb
	mov dword [esp], 0x2
	call Com_Error
	jmp Script_SetFocusByDvar_50


;Script_SetDvar(UiContext*, itemDef_s*, char const**)
Script_SetDvar:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x81c
	mov ebx, [ebp+0x10]
	mov dword [esp+0x8], 0x400
	lea edi, [ebp-0x418]
	mov [esp+0x4], edi
	mov [esp], ebx
	call String_Parse
	test eax, eax
	jnz Script_SetDvar_10
Script_SetDvar_20:
	add esp, 0x81c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Script_SetDvar_10:
	mov dword [esp+0x8], 0x400
	lea esi, [ebp-0x818]
	mov [esp+0x4], esi
	mov [esp], ebx
	call String_Parse
	test eax, eax
	jz Script_SetDvar_20
	mov [esp+0x4], esi
	mov [esp], edi
	call Cvar_SetFromStringByName
	add esp, 0x81c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Script_Exec(UiContext*, itemDef_s*, char const**)
Script_Exec:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x41c
	mov ebx, [ebp+0x8]
	mov eax, [ebx]
	mov [esp], eax
	call CL_ControllerIndexFromClientNum
	mov edi, eax
	mov esi, [ebx]
	mov dword [esp+0x8], 0x3ff
	lea ebx, [ebp-0x418]
	mov [esp+0x4], ebx
	mov eax, [ebp+0x10]
	mov [esp], eax
	call String_Parse
	test eax, eax
	jz Script_Exec_10
	mov dword [esp+0x8], _cstring_
	mov dword [esp+0x4], 0x400
	mov [esp], ebx
	call Q_strncat
	mov [esp+0x8], ebx
	mov [esp+0x4], edi
	mov [esp], esi
	call Script_AddTextWrapper
Script_Exec_10:
	add esp, 0x41c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Script_ExecNow(UiContext*, itemDef_s*, char const**)
Script_ExecNow:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x41c
	mov ebx, [ebp+0x8]
	mov eax, [ebx]
	mov [esp], eax
	call CL_ControllerIndexFromClientNum
	mov edi, eax
	mov esi, [ebx]
	mov dword [esp+0x8], 0x3ff
	lea ebx, [ebp-0x418]
	mov [esp+0x4], ebx
	mov eax, [ebp+0x10]
	mov [esp], eax
	call String_Parse
	test eax, eax
	jz Script_ExecNow_10
	mov dword [esp+0x8], _cstring_
	mov dword [esp+0x4], 0x400
	mov [esp], ebx
	call Q_strncat
	mov [esp+0x8], ebx
	mov [esp+0x4], edi
	mov [esp], esi
	call Cbuf_ExecuteBuffer
Script_ExecNow_10:
	add esp, 0x41c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Script_ExecOnDvarStringValue(UiContext*, itemDef_s*, char const**)
Script_ExecOnDvarStringValue:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [ebp+0x10]
	mov dword [ebp+0xc], Script_AddTextWrapper
	mov dword [ebp+0x8], Script_ExecIfStringsEqual
	mov eax, [eax]
	pop ebp
	jmp Script_ConditionalExecHandler


;Script_ExecOnDvarIntValue(UiContext*, itemDef_s*, char const**)
Script_ExecOnDvarIntValue:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [ebp+0x10]
	mov dword [ebp+0xc], Script_AddTextWrapper
	mov dword [ebp+0x8], Script_ExecIfIntsEqual
	mov eax, [eax]
	pop ebp
	jmp Script_ConditionalExecHandler


;Script_ExecOnDvarFloatValue(UiContext*, itemDef_s*, char const**)
Script_ExecOnDvarFloatValue:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [ebp+0x10]
	mov dword [ebp+0xc], Script_AddTextWrapper
	mov dword [ebp+0x8], Script_ExecIfFloatsEqual
	mov eax, [eax]
	pop ebp
	jmp Script_ConditionalExecHandler


;Script_ExecNowOnDvarStringValue(UiContext*, itemDef_s*, char const**)
Script_ExecNowOnDvarStringValue:
	push ebp
	mov ebp, esp
	push ebx
	mov ebx, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [ebp+0x10]
	mov eax, Cbuf_ExecuteBuffer
	mov [ebp+0xc], eax
	mov dword [ebp+0x8], Script_ExecIfStringsEqual
	mov eax, [ebx]
	pop ebx
	pop ebp
	jmp Script_ConditionalExecHandler
	nop


;Script_ExecNowOnDvarIntValue(UiContext*, itemDef_s*, char const**)
Script_ExecNowOnDvarIntValue:
	push ebp
	mov ebp, esp
	push ebx
	mov ebx, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [ebp+0x10]
	mov eax, Cbuf_ExecuteBuffer
	mov [ebp+0xc], eax
	mov dword [ebp+0x8], Script_ExecIfIntsEqual
	mov eax, [ebx]
	pop ebx
	pop ebp
	jmp Script_ConditionalExecHandler
	nop


;Script_ExecNowOnDvarFloatValue(UiContext*, itemDef_s*, char const**)
Script_ExecNowOnDvarFloatValue:
	push ebp
	mov ebp, esp
	push ebx
	mov ebx, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [ebp+0x10]
	mov eax, Cbuf_ExecuteBuffer
	mov [ebp+0xc], eax
	mov dword [ebp+0x8], Script_ExecIfFloatsEqual
	mov eax, [ebx]
	pop ebx
	pop ebp
	jmp Script_ConditionalExecHandler
	nop


;Script_Play(UiContext*, itemDef_s*, char const**)
Script_Play:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x414
	mov dword [esp+0x8], 0x400
	lea ebx, [ebp-0x408]
	mov [esp+0x4], ebx
	mov eax, [ebp+0x10]
	mov [esp], eax
	call String_Parse
	test eax, eax
	jz Script_Play_10
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp], eax
	call SND_PlayLocalSoundAliasByName
Script_Play_10:
	add esp, 0x414
	pop ebx
	pop ebp
	ret
	nop


;Script_ScriptMenuResponse(UiContext*, itemDef_s*, char const**)
Script_ScriptMenuResponse:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x41c
	mov esi, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov eax, [esi]
	mov [esp], eax
	call UI_AllowScriptMenuResponse
	test al, al
	jnz Script_ScriptMenuResponse_10
Script_ScriptMenuResponse_20:
	add esp, 0x41c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Script_ScriptMenuResponse_10:
	mov dword [esp+0x8], 0x400
	lea eax, [ebp-0x418]
	mov [esp+0x4], eax
	mov edx, [ebp+0x10]
	mov [esp], edx
	call String_Parse
	test eax, eax
	jz Script_ScriptMenuResponse_20
	xor ebx, ebx
	jmp Script_ScriptMenuResponse_30
Script_ScriptMenuResponse_50:
	add ebx, 0x1
	cmp ebx, 0x20
	jz Script_ScriptMenuResponse_40
Script_ScriptMenuResponse_30:
	lea eax, [ebx+0x7b2]
	mov [esp+0x4], eax
	mov eax, [esi]
	mov [esp], eax
	call CL_GetConfigString
	cmp byte [eax], 0x0
	jz Script_ScriptMenuResponse_50
	mov [esp+0x4], eax
	mov eax, [edi+0xe8]
	mov eax, [eax]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz Script_ScriptMenuResponse_50
Script_ScriptMenuResponse_60:
	mov dword [esp], _cstring_sv_serverid
	call Cvar_VariableIntegerValue
	lea edx, [ebp-0x418]
	mov [esp+0xc], edx
	mov [esp+0x8], ebx
	mov [esp+0x4], eax
	mov dword [esp], _cstring_cmd_mr_i_i_s
	call va
	mov [esp+0x4], eax
	mov eax, [esi]
	mov [esp], eax
	call Cbuf_AddText
	add esp, 0x41c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Script_ScriptMenuResponse_40:
	mov ebx, 0xffffffff
	jmp Script_ScriptMenuResponse_60
	nop


;Script_RespondOnDvarStringValue(UiContext*, itemDef_s*, char const**)
Script_RespondOnDvarStringValue:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [ebp+0x10]
	mov dword [ebp+0x8], Script_ExecIfStringsEqual
	mov eax, [eax]
	pop ebp
	jmp Script_ConditionalResponseHandler
	nop


;Script_RespondOnDvarIntValue(UiContext*, itemDef_s*, char const**)
Script_RespondOnDvarIntValue:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [ebp+0x10]
	mov dword [ebp+0x8], Script_ExecIfIntsEqual
	mov eax, [eax]
	pop ebp
	jmp Script_ConditionalResponseHandler
	nop


;Script_RespondOnDvarFloatValue(UiContext*, itemDef_s*, char const**)
Script_RespondOnDvarFloatValue:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [ebp+0x10]
	mov dword [ebp+0x8], Script_ExecIfFloatsEqual
	mov eax, [eax]
	pop ebp
	jmp Script_ConditionalResponseHandler
	nop


;Script_SetLocalVarBool(UiContext*, itemDef_s*, char const**)
Script_SetLocalVarBool:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x21c
	mov edi, [ebp+0x10]
	mov dword [esp+0x8], 0x100
	lea ebx, [ebp-0x218]
	mov [esp+0x4], ebx
	mov [esp], edi
	call String_Parse
	test eax, eax
	jnz Script_SetLocalVarBool_10
	xor esi, esi
Script_SetLocalVarBool_30:
	mov dword [esp+0x8], 0x100
	lea ebx, [ebp-0x118]
	mov [esp+0x4], ebx
	mov [esp], edi
	call String_Parse
	test eax, eax
	jz Script_SetLocalVarBool_20
	test esi, esi
	jz Script_SetLocalVarBool_20
	mov [esp], ebx
	call atoi
	test eax, eax
	setnz al
	movzx eax, al
	mov [esp+0x4], eax
	mov [esp], esi
	call UILocalVar_SetBool
Script_SetLocalVarBool_20:
	add esp, 0x21c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Script_SetLocalVarBool_10:
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	add eax, 0xa78
	mov [esp], eax
	call UILocalVar_FindOrCreate
	mov esi, eax
	jmp Script_SetLocalVarBool_30


;Script_SetLocalVarInt(UiContext*, itemDef_s*, char const**)
Script_SetLocalVarInt:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x21c
	mov edi, [ebp+0x10]
	mov dword [esp+0x8], 0x100
	lea ebx, [ebp-0x218]
	mov [esp+0x4], ebx
	mov [esp], edi
	call String_Parse
	test eax, eax
	jnz Script_SetLocalVarInt_10
	xor esi, esi
Script_SetLocalVarInt_30:
	mov dword [esp+0x8], 0x100
	lea ebx, [ebp-0x118]
	mov [esp+0x4], ebx
	mov [esp], edi
	call String_Parse
	test eax, eax
	jz Script_SetLocalVarInt_20
	test esi, esi
	jz Script_SetLocalVarInt_20
	mov [esp], ebx
	call atoi
	mov [esp+0x4], eax
	mov [esp], esi
	call UILocalVar_SetInt
Script_SetLocalVarInt_20:
	add esp, 0x21c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Script_SetLocalVarInt_10:
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	add eax, 0xa78
	mov [esp], eax
	call UILocalVar_FindOrCreate
	mov esi, eax
	jmp Script_SetLocalVarInt_30


;Script_SetLocalVarFloat(UiContext*, itemDef_s*, char const**)
Script_SetLocalVarFloat:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x22c
	mov edi, [ebp+0x10]
	mov dword [esp+0x8], 0x100
	lea ebx, [ebp-0x218]
	mov [esp+0x4], ebx
	mov [esp], edi
	call String_Parse
	test eax, eax
	jnz Script_SetLocalVarFloat_10
	xor esi, esi
Script_SetLocalVarFloat_30:
	mov dword [esp+0x8], 0x100
	lea ebx, [ebp-0x118]
	mov [esp+0x4], ebx
	mov [esp], edi
	call String_Parse
	test eax, eax
	jz Script_SetLocalVarFloat_20
	test esi, esi
	jz Script_SetLocalVarFloat_20
	mov [esp], ebx
	call atof
	fstp qword [ebp-0x220]
	cvtsd2ss xmm0, [ebp-0x220]
	movss [esp+0x4], xmm0
	mov [esp], esi
	call UILocalVar_SetFloat
Script_SetLocalVarFloat_20:
	add esp, 0x22c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Script_SetLocalVarFloat_10:
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	add eax, 0xa78
	mov [esp], eax
	call UILocalVar_FindOrCreate
	mov esi, eax
	jmp Script_SetLocalVarFloat_30


;Script_SetLocalVarString(UiContext*, itemDef_s*, char const**)
Script_SetLocalVarString:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x21c
	mov edi, [ebp+0x10]
	mov dword [esp+0x8], 0x100
	lea ebx, [ebp-0x218]
	mov [esp+0x4], ebx
	mov [esp], edi
	call String_Parse
	test eax, eax
	jnz Script_SetLocalVarString_10
	xor ebx, ebx
Script_SetLocalVarString_30:
	mov dword [esp+0x8], 0x100
	lea esi, [ebp-0x118]
	mov [esp+0x4], esi
	mov [esp], edi
	call String_Parse
	test eax, eax
	jz Script_SetLocalVarString_20
	test ebx, ebx
	jz Script_SetLocalVarString_20
	mov [esp+0x4], esi
	mov [esp], ebx
	call UILocalVar_SetString
Script_SetLocalVarString_20:
	add esp, 0x21c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Script_SetLocalVarString_10:
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	add eax, 0xa78
	mov [esp], eax
	call UILocalVar_FindOrCreate
	mov ebx, eax
	jmp Script_SetLocalVarString_30


;Script_FeederTop(UiContext*, itemDef_s*, char const**)
Script_FeederTop:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov [esp], ebx
	call Item_GetListBoxDef
	mov edx, eax
	test eax, eax
	jz Script_FeederTop_10
	mov eax, [eax+0x124]
	test eax, eax
	jz Script_FeederTop_20
	mov eax, [esi]
	mov dword [edx+eax*4+0x4], 0x0
Script_FeederTop_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Script_FeederTop_20:
	mov eax, [esi]
	mov dword [ebx+eax*4+0x128], 0x0
	mov eax, [esi]
	mov dword [edx+eax*4+0x4], 0x0
	mov dword [ebp+0x10], 0x0
	mov eax, [ebx+0x124]
	mov [ebp+0xc], eax
	mov eax, [esi]
	mov [ebp+0x8], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp UI_FeederSelection


;Script_FeederBottom(UiContext*, itemDef_s*, char const**)
Script_FeederBottom:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0x8]
	mov [ebp-0x20], eax
	mov esi, [ebp+0xc]
	mov [esp], esi
	call Item_GetListBoxDef
	mov edi, eax
	test eax, eax
	jz Script_FeederBottom_10
	mov edx, [eax+0x124]
	test edx, edx
	jnz Script_FeederBottom_20
	mov [esp], esi
	call Item_ListBox_Viewmax
	mov [ebp-0x1c], eax
	mov eax, [esi+0x124]
	mov [esp+0x4], eax
	mov edx, [ebp-0x20]
	mov eax, [edx]
	mov [esp], eax
	call UI_FeederCount
	lea ebx, [eax-0x1]
	test ebx, ebx
	mov eax, 0x0
	cmovle ebx, eax
	mov ecx, [ebp-0x20]
	mov edi, [ecx]
	mov [esp], esi
	call Item_GetListBoxDef
	mov edx, eax
	mov [esi+edi*4+0x128], ebx
	cmp ebx, [eax+edi*4+0x4]
	jge Script_FeederBottom_30
	mov [eax+edi*4+0x4], ebx
Script_FeederBottom_30:
	mov eax, ebx
	sub eax, [ebp-0x1c]
	cmp [edx+edi*4+0x4], eax
	jg Script_FeederBottom_40
	add eax, 0x1
	mov [edx+edi*4+0x4], eax
Script_FeederBottom_40:
	mov [ebp+0x10], ebx
	mov eax, [esi+0x124]
	mov [ebp+0xc], eax
	mov [ebp+0x8], edi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp UI_FeederSelection
Script_FeederBottom_20:
	mov eax, [esi+0x124]
	mov [esp+0x4], eax
	mov edx, [ebp-0x20]
	mov eax, [edx]
	mov [esp], eax
	call UI_FeederCount
	mov ebx, eax
	mov [esp], esi
	call Item_ListBox_Viewmax
	sub ebx, eax
	lea edx, [ebx+0x1]
	test edx, edx
	mov eax, 0x0
	cmovle edx, eax
	mov ecx, [ebp-0x20]
	mov eax, [ecx]
	mov [edi+eax*4+0x4], edx
Script_FeederBottom_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Script_OpenForGameType(UiContext*, itemDef_s*, char const**)
Script_OpenForGameType:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x414
	mov dword [esp+0x8], 0x400
	lea ebx, [ebp-0x408]
	mov [esp+0x4], ebx
	mov eax, [ebp+0x10]
	mov [esp], eax
	call String_Parse
	test eax, eax
	jz Script_OpenForGameType_10
	mov edx, [ebp+0xc]
	mov eax, [edx+0x10c]
	mov [esp], eax
	call Cvar_VariableString
	mov [esp+0x4], eax
	mov [esp], ebx
	call va
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Menus_OpenByName
Script_OpenForGameType_10:
	add esp, 0x414
	pop ebx
	pop ebp
	ret


;Script_CloseForGameType(UiContext*, itemDef_s*, char const**)
Script_CloseForGameType:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x42c
	mov edi, [ebp+0x8]
	mov dword [esp+0x8], 0x400
	lea ebx, [ebp-0x418]
	mov [esp+0x4], ebx
	mov eax, [ebp+0x10]
	mov [esp], eax
	call String_Parse
	test eax, eax
	jnz Script_CloseForGameType_10
Script_CloseForGameType_20:
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Script_CloseForGameType_10:
	mov edx, [ebp+0xc]
	mov eax, [edx+0x10c]
	mov [esp], eax
	call Cvar_VariableString
	mov [esp+0x4], eax
	mov [esp], ebx
	call va
	mov [ebp-0x41c], eax
	mov eax, [edi+0xa30]
	test eax, eax
	jle Script_CloseForGameType_20
	mov ebx, edi
	xor esi, esi
	jmp Script_CloseForGameType_30
Script_CloseForGameType_40:
	add esi, 0x1
	add ebx, 0x4
	cmp esi, [edi+0xa30]
	jge Script_CloseForGameType_20
Script_CloseForGameType_30:
	mov eax, [ebp-0x41c]
	mov [esp+0x4], eax
	mov eax, [ebx+0x30]
	mov eax, [eax]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz Script_CloseForGameType_40
	mov edx, [edi+esi*4+0x30]
	test edx, edx
	jz Script_CloseForGameType_20
	mov eax, edi
	call Menus_Close
	jmp Script_CloseForGameType_20


;Script_StatClearPerkNew(UiContext*, itemDef_s*, char const**)
Script_StatClearPerkNew:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x82c
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz Script_StatClearPerkNew_10
	mov dword [esp+0x4], _cstring_you_can_only_do_
	mov dword [esp], 0xd
	call Com_PrintWarning
	add esp, 0x82c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Script_StatClearPerkNew_10:
	mov dword [esp+0x8], 0x400
	lea ebx, [ebp-0x81c]
	mov [esp+0x4], ebx
	mov eax, [ebp+0x10]
	mov [esp], eax
	call String_Parse
	mov dword [esp+0x4], _cstring_1
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jz Script_StatClearPerkNew_20
	mov dword [esp+0x4], _cstring_2
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jz Script_StatClearPerkNew_30
Script_StatClearPerkNew_90:
	mov dword [esp+0x8], 0x400
	mov [esp+0x4], ebx
	lea edi, [ebp-0x41c]
	mov [esp], edi
	call Q_strncpyz
	mov dword [esp+0x4], _cstring_2
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jz Script_StatClearPerkNew_40
	mov dword [esp+0x4], _cstring_3
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jz Script_StatClearPerkNew_50
Script_StatClearPerkNew_80:
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_mpstatstablecsv
	call StringTable_GetAsset
	mov dword [esp+0xc], 0x1
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0x4
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call StringTable_Lookup
	mov [esp], eax
	call atoi
	mov esi, eax
	lea eax, [eax-0x96]
	cmp eax, 0x94
	ja Script_StatClearPerkNew_60
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp], eax
	call CL_ControllerIndexFromClientNum
	mov [esp+0x4], esi
	mov [esp], eax
	call LiveStorage_GetStat
	test al, 0x3
	jz Script_StatClearPerkNew_70
	mov ebx, eax
	and ebx, 0xfffffffd
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp], eax
	call CL_ControllerIndexFromClientNum
	or ebx, 0x1
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov [esp], eax
	call LiveStorage_SetStat
	add esp, 0x82c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Script_StatClearPerkNew_60:
	mov [esp+0xc], edi
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_statclearperknew
	mov dword [esp], 0x2
	call Com_Error
	add esp, 0x82c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Script_StatClearPerkNew_50:
	call Com_UngetToken
	jmp Script_StatClearPerkNew_80
Script_StatClearPerkNew_20:
	mov dword [esp+0x8], 0x400
	mov [esp+0x4], ebx
	mov edx, [ebp+0x10]
	mov [esp], edx
	call String_Parse
	mov dword [esp+0x4], _cstring_2
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz Script_StatClearPerkNew_90
Script_StatClearPerkNew_30:
	mov dword [esp+0x8], 0x400
	mov [esp+0x4], ebx
	mov eax, [ebp+0x10]
	mov [esp], eax
	call String_Parse
	jmp Script_StatClearPerkNew_90
Script_StatClearPerkNew_40:
	mov dword [esp+0x8], 0x400
	mov [esp+0x4], ebx
	mov edx, [ebp+0x10]
	mov [esp], edx
	call String_Parse
	mov dword [esp+0x4], _cstring_3
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz Script_StatClearPerkNew_80
	jmp Script_StatClearPerkNew_50
Script_StatClearPerkNew_70:
	mov [esp+0xc], esi
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_statclearperknew1
	mov dword [esp], 0x2
	call Com_Error
	add esp, 0x82c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Script_StatSetUsingStatsTable(UiContext*, itemDef_s*, char const**)
Script_StatSetUsingStatsTable:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x83c
	mov esi, [ebp+0x10]
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz Script_StatSetUsingStatsTable_10
	mov dword [esp+0x4], _cstring_you_can_only_do_
	mov dword [esp], 0xd
	call Com_PrintWarning
	add esp, 0x83c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Script_StatSetUsingStatsTable_10:
	mov dword [esp+0x8], 0x400
	lea ebx, [ebp-0x41c]
	mov [esp+0x4], ebx
	mov [esp], esi
	call String_Parse
	mov dword [esp+0x4], _cstring_1
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jz Script_StatSetUsingStatsTable_20
Script_StatSetUsingStatsTable_150:
	mov [esp], ebx
	call atoi
	mov [ebp-0x830], eax
Script_StatSetUsingStatsTable_30:
	mov dword [esp+0x8], 0x400
	mov [esp+0x4], ebx
	mov [esp], esi
	call String_Parse
	mov dword [esp+0x4], _cstring_tablelookup
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jz Script_StatSetUsingStatsTable_30
	mov dword [esp+0x4], _cstring_4
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jz Script_StatSetUsingStatsTable_30
	mov dword [esp+0x4], _cstring_1
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jz Script_StatSetUsingStatsTable_30
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call StringTable_GetAsset
	mov dword [esp+0x8], 0x400
	mov [esp+0x4], ebx
	mov [esp], esi
	call String_Parse
	jmp Script_StatSetUsingStatsTable_40
Script_StatSetUsingStatsTable_50:
	mov dword [esp+0x8], 0x400
	mov [esp+0x4], ebx
	mov [esp], esi
	call String_Parse
Script_StatSetUsingStatsTable_40:
	mov dword [esp+0x4], _cstring_4
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jz Script_StatSetUsingStatsTable_50
	mov [esp], ebx
	call atoi
	mov [ebp-0x834], eax
	mov dword [esp+0x8], 0x400
	mov [esp+0x4], ebx
	mov [esp], esi
	call String_Parse
	jmp Script_StatSetUsingStatsTable_60
Script_StatSetUsingStatsTable_70:
	mov dword [esp+0x8], 0x400
	mov [esp+0x4], ebx
	mov [esp], esi
	call String_Parse
Script_StatSetUsingStatsTable_60:
	mov dword [esp+0x4], _cstring_4
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jz Script_StatSetUsingStatsTable_70
	mov dword [esp+0x8], 0x400
	mov [esp+0x4], ebx
	lea edi, [ebp-0x81c]
	mov [esp], edi
	call Q_strncpyz
	mov dword [esp+0x8], 0x400
	mov [esp+0x4], ebx
	mov [esp], esi
	call String_Parse
	jmp Script_StatSetUsingStatsTable_80
Script_StatSetUsingStatsTable_90:
	mov dword [esp+0x8], 0x400
	mov [esp+0x4], ebx
	mov [esp], esi
	call String_Parse
Script_StatSetUsingStatsTable_80:
	mov dword [esp+0x4], _cstring_4
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jz Script_StatSetUsingStatsTable_90
	mov [esp], ebx
	call atoi
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	mov eax, [ebp-0x834]
	mov [esp+0x4], eax
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call StringTable_Lookup
	mov [esp], eax
	call atoi
	mov [ebp-0x82c], eax
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp], eax
	call CL_ControllerIndexFromClientNum
	mov edi, eax
	mov eax, [ebp-0x830]
	sub eax, 0x960
	cmp eax, 0x2
	ja Script_StatSetUsingStatsTable_100
Script_StatSetUsingStatsTable_140:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp], eax
	call CL_ControllerIndexFromClientNum
	mov edx, [ebp-0x82c]
	mov [esp+0x8], edx
	mov edx, [ebp-0x830]
	mov [esp+0x4], edx
	mov [esp], eax
	call LiveStorage_SetStat
	mov dword [esp+0x8], 0x400
	mov [esp+0x4], ebx
	mov [esp], esi
	call String_Parse
	jmp Script_StatSetUsingStatsTable_110
Script_StatSetUsingStatsTable_120:
	mov dword [esp+0x8], 0x400
	mov [esp+0x4], ebx
	mov [esp], esi
	call String_Parse
Script_StatSetUsingStatsTable_110:
	mov dword [esp+0x4], _cstring_3
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jz Script_StatSetUsingStatsTable_120
	call Com_UngetToken
	add esp, 0x83c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Script_StatSetUsingStatsTable_100:
	mov eax, [ebp-0x830]
	sub eax, 0xc8
	cmp eax, 0x31
	ja Script_StatSetUsingStatsTable_130
Script_StatSetUsingStatsTable_160:
	mov edx, [ebp-0x82c]
	mov [esp+0x8], edx
	mov eax, [ebp-0x830]
	mov [esp+0x4], eax
	mov [esp], edi
	call LiveStorage_ValidateCaCStat
	jmp Script_StatSetUsingStatsTable_140
Script_StatSetUsingStatsTable_20:
	mov dword [esp+0x8], 0x400
	mov [esp+0x4], ebx
	mov [esp], esi
	call String_Parse
	jmp Script_StatSetUsingStatsTable_150
Script_StatSetUsingStatsTable_130:
	mov eax, [ebp-0x830]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_statsetusingtabl
	mov dword [esp], 0x2
	call Com_Error
	jmp Script_StatSetUsingStatsTable_160
	nop


;Script_StatClearBitMask(UiContext*, itemDef_s*, char const**)
Script_StatClearBitMask:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x42c
	mov esi, [ebp+0x10]
	mov dword [esp+0x8], 0x400
	lea ebx, [ebp-0x418]
	mov [esp+0x4], ebx
	mov [esp], esi
	call String_Parse
	mov dword [esp+0x4], _cstring_1
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jz Script_StatClearBitMask_10
Script_StatClearBitMask_60:
	mov [esp], ebx
	call Cvar_VariableIntegerValue
	mov [ebp-0x41c], eax
	mov dword [esp+0x8], 0x400
	mov [esp+0x4], ebx
	mov [esp], esi
	call String_Parse
	jmp Script_StatClearBitMask_20
Script_StatClearBitMask_30:
	mov dword [esp+0x8], 0x400
	mov [esp+0x4], ebx
	mov [esp], esi
	call String_Parse
Script_StatClearBitMask_20:
	mov dword [esp+0x4], _cstring_4
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jz Script_StatClearBitMask_30
	mov [esp], ebx
	call Cvar_VariableIntegerValue
	mov edi, eax
	mov dword [esp+0x8], 0x400
	mov [esp+0x4], ebx
	mov [esp], esi
	call String_Parse
	jmp Script_StatClearBitMask_40
Script_StatClearBitMask_50:
	mov dword [esp+0x8], 0x400
	mov [esp+0x4], ebx
	mov [esp], esi
	call String_Parse
Script_StatClearBitMask_40:
	mov dword [esp+0x4], _cstring_3
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jz Script_StatClearBitMask_50
	call Com_UngetToken
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov [esp], eax
	call CL_ControllerIndexFromClientNum
	mov ebx, eax
	mov eax, [ebp-0x41c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call LiveStorage_GetStat
	not edi
	and eax, edi
	mov [esp+0x8], eax
	mov eax, [ebp-0x41c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call LiveStorage_SetStat
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Script_StatClearBitMask_10:
	mov dword [esp+0x8], 0x400
	mov [esp+0x4], ebx
	mov [esp], esi
	call String_Parse
	jmp Script_StatClearBitMask_60
	nop


;Menu_ItemsMatchingGroup(menuDef_t*, char const*)
Menu_ItemsMatchingGroup:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, eax
	mov [ebp-0x24], edx
	mov dword [esp+0x4], 0x2a
	mov [esp], edx
	call strchr
	test eax, eax
	jz Menu_ItemsMatchingGroup_10
	mov edx, [ebp-0x24]
	sub eax, edx
	mov [ebp-0x1c], eax
Menu_ItemsMatchingGroup_120:
	mov edx, [ebx+0xa4]
	test edx, edx
	jle Menu_ItemsMatchingGroup_20
	xor edi, edi
	mov dword [ebp-0x20], 0x0
	xor esi, esi
	jmp Menu_ItemsMatchingGroup_30
Menu_ItemsMatchingGroup_80:
	mov edx, [ebx+0x118]
	mov eax, [esi+edx]
	mov eax, [eax]
	test eax, eax
	jz Menu_ItemsMatchingGroup_40
	mov edx, [ebp-0x1c]
	mov [esp+0x8], edx
	mov edx, [ebp-0x24]
	mov [esp+0x4], edx
	mov [esp], eax
	call Q_strncmp
	test eax, eax
	jz Menu_ItemsMatchingGroup_50
	mov edx, [ebx+0x118]
Menu_ItemsMatchingGroup_40:
	mov eax, [esi+edx]
	mov eax, [eax+0x34]
	test eax, eax
	jz Menu_ItemsMatchingGroup_60
	mov edx, [ebp-0x1c]
	mov [esp+0x8], edx
	mov edx, [ebp-0x24]
	mov [esp+0x4], edx
	mov [esp], eax
	call Q_strncmp
	test eax, eax
	jz Menu_ItemsMatchingGroup_50
Menu_ItemsMatchingGroup_60:
	add edi, 0x1
	add esi, 0x4
	cmp edi, [ebx+0xa4]
	jge Menu_ItemsMatchingGroup_70
Menu_ItemsMatchingGroup_30:
	cmp dword [ebp-0x1c], 0xffffffff
	jnz Menu_ItemsMatchingGroup_80
	mov edx, [ebx+0x118]
	mov eax, [edx+esi]
	mov eax, [eax]
	test eax, eax
	jz Menu_ItemsMatchingGroup_90
	mov edx, [ebp-0x24]
	mov [esp+0x4], edx
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz Menu_ItemsMatchingGroup_100
Menu_ItemsMatchingGroup_50:
	add dword [ebp-0x20], 0x1
Menu_ItemsMatchingGroup_110:
	add edi, 0x1
	add esi, 0x4
	cmp edi, [ebx+0xa4]
	jl Menu_ItemsMatchingGroup_30
Menu_ItemsMatchingGroup_70:
	mov eax, [ebp-0x20]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Menu_ItemsMatchingGroup_100:
	mov edx, [ebx+0x118]
Menu_ItemsMatchingGroup_90:
	mov eax, [edx+esi]
	mov eax, [eax+0x34]
	test eax, eax
	jz Menu_ItemsMatchingGroup_60
	mov edx, [ebp-0x24]
	mov [esp+0x4], edx
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz Menu_ItemsMatchingGroup_60
	add dword [ebp-0x20], 0x1
	jmp Menu_ItemsMatchingGroup_110
Menu_ItemsMatchingGroup_20:
	mov dword [ebp-0x20], 0x0
	mov eax, [ebp-0x20]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Menu_ItemsMatchingGroup_10:
	mov dword [ebp-0x1c], 0xffffffff
	jmp Menu_ItemsMatchingGroup_120


;Menu_GetMatchingItemByNumber(menuDef_t*, int, char const*)
Menu_GetMatchingItemByNumber:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, eax
	mov [ebp-0x24], edx
	mov [ebp-0x28], ecx
	mov dword [esp+0x4], 0x2a
	mov [esp], ecx
	call strchr
	test eax, eax
	jz Menu_GetMatchingItemByNumber_10
	mov edx, [ebp-0x28]
	sub eax, edx
	mov [ebp-0x1c], eax
Menu_GetMatchingItemByNumber_140:
	mov ecx, [ebx+0xa4]
	test ecx, ecx
	jle Menu_GetMatchingItemByNumber_20
	mov dword [ebp-0x20], 0x0
	xor edi, edi
	xor esi, esi
Menu_GetMatchingItemByNumber_80:
	cmp dword [ebp-0x1c], 0xffffffff
	jz Menu_GetMatchingItemByNumber_30
	mov edx, [ebx+0x118]
	mov eax, [edx+esi]
	mov eax, [eax]
	test eax, eax
	jz Menu_GetMatchingItemByNumber_40
	mov edx, [ebp-0x1c]
	mov [esp+0x8], edx
	mov edx, [ebp-0x28]
	mov [esp+0x4], edx
	mov [esp], eax
	call Q_strncmp
	test eax, eax
	jz Menu_GetMatchingItemByNumber_50
	mov edx, [ebx+0x118]
Menu_GetMatchingItemByNumber_40:
	mov eax, [esi+edx]
	mov eax, [eax+0x34]
	test eax, eax
	jz Menu_GetMatchingItemByNumber_60
	mov edx, [ebp-0x1c]
	mov [esp+0x8], edx
	mov edx, [ebp-0x28]
	mov [esp+0x4], edx
	mov [esp], eax
	call Q_strncmp
	test eax, eax
	jnz Menu_GetMatchingItemByNumber_60
Menu_GetMatchingItemByNumber_50:
	mov eax, [ebp-0x24]
	cmp [ebp-0x20], eax
	jz Menu_GetMatchingItemByNumber_70
Menu_GetMatchingItemByNumber_110:
	add dword [ebp-0x20], 0x1
Menu_GetMatchingItemByNumber_60:
	add edi, 0x1
	add esi, 0x4
	cmp edi, [ebx+0xa4]
	jl Menu_GetMatchingItemByNumber_80
Menu_GetMatchingItemByNumber_20:
	xor eax, eax
Menu_GetMatchingItemByNumber_120:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Menu_GetMatchingItemByNumber_30:
	mov edx, [ebx+0x118]
	mov eax, [edx+esi]
	mov eax, [eax]
	test eax, eax
	jz Menu_GetMatchingItemByNumber_90
	mov edx, [ebp-0x28]
	mov [esp+0x4], edx
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz Menu_GetMatchingItemByNumber_100
	mov eax, [ebp-0x24]
	cmp [ebp-0x20], eax
	jnz Menu_GetMatchingItemByNumber_110
Menu_GetMatchingItemByNumber_130:
	mov eax, [ebx+0x118]
	mov eax, [eax+esi]
	jmp Menu_GetMatchingItemByNumber_120
Menu_GetMatchingItemByNumber_100:
	mov edx, [ebx+0x118]
Menu_GetMatchingItemByNumber_90:
	mov eax, [edx+esi]
	mov eax, [eax+0x34]
	test eax, eax
	jz Menu_GetMatchingItemByNumber_60
	mov edx, [ebp-0x28]
	mov [esp+0x4], edx
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz Menu_GetMatchingItemByNumber_60
	mov eax, [ebp-0x24]
	cmp [ebp-0x20], eax
	jnz Menu_GetMatchingItemByNumber_110
	jmp Menu_GetMatchingItemByNumber_130
Menu_GetMatchingItemByNumber_70:
	mov eax, [ebx+0x118]
	mov eax, [esi+eax]
	jmp Menu_GetMatchingItemByNumber_120
Menu_GetMatchingItemByNumber_10:
	mov dword [ebp-0x1c], 0xffffffff
	jmp Menu_GetMatchingItemByNumber_140


;Menu_FadeItemByName(int, menuDef_t*, char const*, int)
Menu_FadeItemByName:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, eax
	mov [ebp-0x20], edx
	mov [ebp-0x24], ecx
	mov edx, ecx
	mov eax, [ebp-0x20]
	call Menu_ItemsMatchingGroup
	mov [ebp-0x1c], eax
	test eax, eax
	jg Menu_FadeItemByName_10
Menu_FadeItemByName_30:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Menu_FadeItemByName_10:
	xor esi, esi
	jmp Menu_FadeItemByName_20
Menu_FadeItemByName_50:
	mov dword [esp+0x8], 0x14
	mov [esp+0x4], ebx
	mov [esp], edi
	call Window_AddDynamicFlags
	mov dword [esp+0x8], 0x20
	mov [esp+0x4], ebx
	mov [esp], edi
	call Window_RemoveDynamicFlags
Menu_FadeItemByName_40:
	add esi, 0x1
	cmp [ebp-0x1c], esi
	jz Menu_FadeItemByName_30
Menu_FadeItemByName_20:
	mov ecx, [ebp-0x24]
	mov edx, esi
	mov eax, [ebp-0x20]
	call Menu_GetMatchingItemByNumber
	mov ebx, eax
	test eax, eax
	jz Menu_FadeItemByName_40
	mov eax, [ebp+0x8]
	test eax, eax
	jnz Menu_FadeItemByName_50
	mov dword [esp+0x8], 0x24
	mov [esp+0x4], ebx
	mov [esp], edi
	call Window_AddDynamicFlags
	mov dword [esp+0x8], 0x10
	mov [esp+0x4], ebx
	mov [esp], edi
	call Window_RemoveDynamicFlags
	jmp Menu_FadeItemByName_40


;Script_AddTextWrapper(int, int, char const*)
Script_AddTextWrapper:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x10]
	mov [ebp+0xc], eax
	pop ebp
	jmp Cbuf_AddText
	nop


;Script_ConditionalExecHandler(int, itemDef_s*, char const**, unsigned char (*)(char const*, char const*), void (*)(int, int, char const*))
Script_ConditionalExecHandler:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xc2c
	mov [ebp-0xc1c], eax
	mov ebx, ecx
	mov dword [esp+0x8], 0x400
	lea esi, [ebp-0x418]
	mov [esp+0x4], esi
	mov [esp], ecx
	call String_Parse
	test eax, eax
	jnz Script_ConditionalExecHandler_10
Script_ConditionalExecHandler_20:
	add esp, 0xc2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Script_ConditionalExecHandler_10:
	mov dword [esp+0x8], 0x400
	lea edi, [ebp-0x818]
	mov [esp+0x4], edi
	mov [esp], ebx
	call String_Parse
	test eax, eax
	jz Script_ConditionalExecHandler_20
	mov dword [esp+0x8], 0x3ff
	lea eax, [ebp-0xc18]
	mov [esp+0x4], eax
	mov [esp], ebx
	call String_Parse
	test eax, eax
	jz Script_ConditionalExecHandler_20
	mov [esp], esi
	call Cvar_GetVariantString
	mov [esp+0x4], edi
	mov [esp], eax
	call dword [ebp+0x8]
	test al, al
	jz Script_ConditionalExecHandler_20
	mov dword [esp+0x8], _cstring_
	mov dword [esp+0x4], 0x400
	lea edx, [ebp-0xc18]
	mov [esp], edx
	call Q_strncat
	mov eax, [ebp-0xc1c]
	mov [esp], eax
	call CL_ControllerIndexFromClientNum
	lea edx, [ebp-0xc18]
	mov [esp+0x8], edx
	mov [esp+0x4], eax
	mov eax, [ebp-0xc1c]
	mov [esp], eax
	call dword [ebp+0xc]
	jmp Script_ConditionalExecHandler_20


;Script_ConditionalResponseHandler(int, itemDef_s*, char const**, unsigned char (*)(char const*, char const*))
Script_ConditionalResponseHandler:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xc2c
	mov edi, eax
	mov [ebp-0xc1c], edx
	mov ebx, ecx
	mov dword [esp+0x8], 0x400
	lea esi, [ebp-0x418]
	mov [esp+0x4], esi
	mov [esp], ecx
	call String_Parse
	test eax, eax
	jnz Script_ConditionalResponseHandler_10
Script_ConditionalResponseHandler_20:
	add esp, 0xc2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Script_ConditionalResponseHandler_10:
	mov dword [esp+0x8], 0x400
	lea eax, [ebp-0x818]
	mov [esp+0x4], eax
	mov [esp], ebx
	call String_Parse
	test eax, eax
	jz Script_ConditionalResponseHandler_20
	mov dword [esp+0x8], 0x400
	lea edx, [ebp-0xc18]
	mov [esp+0x4], edx
	mov [esp], ebx
	call String_Parse
	test eax, eax
	jz Script_ConditionalResponseHandler_20
	mov [esp], esi
	call Cvar_GetVariantString
	lea edx, [ebp-0x818]
	mov [esp+0x4], edx
	mov [esp], eax
	call dword [ebp+0x8]
	test al, al
	jz Script_ConditionalResponseHandler_20
	xor ebx, ebx
	jmp Script_ConditionalResponseHandler_30
Script_ConditionalResponseHandler_50:
	add ebx, 0x1
	cmp ebx, 0x20
	jz Script_ConditionalResponseHandler_40
Script_ConditionalResponseHandler_30:
	lea eax, [ebx+0x7b2]
	mov [esp+0x4], eax
	mov [esp], edi
	call CL_GetConfigString
	cmp byte [eax], 0x0
	jz Script_ConditionalResponseHandler_50
	mov [esp+0x4], eax
	mov edx, [ebp-0xc1c]
	mov eax, [edx+0xe8]
	mov eax, [eax]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz Script_ConditionalResponseHandler_50
Script_ConditionalResponseHandler_60:
	mov dword [esp], _cstring_sv_serverid
	call Cvar_VariableIntegerValue
	lea edx, [ebp-0xc18]
	mov [esp+0xc], edx
	mov [esp+0x8], ebx
	mov [esp+0x4], eax
	mov dword [esp], _cstring_cmd_mr_i_i_s
	call va
	mov [esp+0x4], eax
	mov [esp], edi
	call Cbuf_AddText
	jmp Script_ConditionalResponseHandler_20
Script_ConditionalResponseHandler_40:
	mov ebx, 0xffffffff
	jmp Script_ConditionalResponseHandler_60


;Script_ExecIfStringsEqual(char const*, char const*)
Script_ExecIfStringsEqual:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	setz al
	movzx eax, al
	leave
	ret


;Script_ExecIfIntsEqual(char const*, char const*)
Script_ExecIfIntsEqual:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov [esp], eax
	call atoi
	mov ebx, eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call atoi
	cmp ebx, eax
	setz al
	movzx eax, al
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;Script_ExecIfFloatsEqual(char const*, char const*)
Script_ExecIfFloatsEqual:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov eax, [ebp+0x8]
	mov [esp], eax
	call atof
	fstp qword [ebp-0x18]
	mov eax, [ebp+0xc]
	mov [esp], eax
	call atof
	fstp qword [ebp-0x10]
	movsd xmm0, qword [ebp-0x18]
	subsd xmm0, [ebp-0x10]
	movsd [ebp-0x18], xmm0
	cvtsd2ss xmm0, xmm0
	andps xmm0, [_data16_7fffffff]
	movss xmm1, dword [_float_0_00001000]
	xor eax, eax
	ucomiss xmm1, xmm0
	seta al
	leave
	ret


;Item_RunScript(UiContext*, itemDef_s*, char const*)
Item_RunScript:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x183c
	mov [ebp-0x182c], eax
	mov [ebp-0x1830], edx
	mov [ebp-0x1834], ecx
	lea ebx, [ebp-0x181c]
	mov dword [esp+0x8], 0x1400
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call memset
	mov eax, [ebp-0x1830]
	test eax, eax
	jz Item_RunScript_10
	mov eax, [ebp-0x1834]
	test eax, eax
	jz Item_RunScript_10
	mov eax, [ebp-0x1834]
	cmp byte [eax], 0x0
	jnz Item_RunScript_20
Item_RunScript_10:
	add esp, 0x183c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Item_RunScript_20:
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1400
	mov [esp], ebx
	call Q_strncat
	mov [ebp-0x1c], ebx
	lea edi, [ebp-0x41c]
Item_RunScript_40:
	mov dword [esp+0x8], 0x400
	mov [esp+0x4], edi
	lea edx, [ebp-0x1c]
	mov [esp], edx
	call String_Parse
	test eax, eax
	jz Item_RunScript_10
	cmp byte [ebp-0x41c], 0x3b
	jnz Item_RunScript_30
	cmp byte [ebp-0x41b], 0x0
	jz Item_RunScript_40
Item_RunScript_30:
	xor esi, esi
	mov ebx, commandList
	jmp Item_RunScript_50
Item_RunScript_70:
	add esi, 0x1
	add ebx, 0x8
	cmp esi, 0x29
	jz Item_RunScript_60
Item_RunScript_50:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], edi
	call Q_stricmp
	test eax, eax
	jnz Item_RunScript_70
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov edx, [ebp-0x1830]
	mov [esp+0x4], edx
	mov eax, [ebp-0x182c]
	mov [esp], eax
	call dword [esi*8+commandList+0x4]
	jmp Item_RunScript_40
Item_RunScript_60:
	mov eax, [ebp-0x1834]
	mov [esp+0x8], eax
	lea edx, [ebp-0x1c]
	mov [esp+0x4], edx
	mov edx, [ebp-0x182c]
	mov eax, [edx]
	mov [esp], eax
	call UI_RunMenuScript
	jmp Item_RunScript_40
	nop


;Item_TextField_BeginEdit(int, itemDef_s*)
Item_TextField_BeginEdit:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, eax
	mov ebx, edx
	mov [esp], edx
	call Item_GetEditFieldDef
	test eax, eax
	jz Item_TextField_BeginEdit_10
	mov dword [eax+0x1c], 0x0
Item_TextField_BeginEdit_10:
	mov eax, [ebx+0x10c]
	test eax, eax
	jz Item_TextField_BeginEdit_20
	mov [esp], eax
	call Cvar_GetVariantString
	mov edi, eax
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	repne scasb
	not ecx
	lea eax, [ecx-0x1]
Item_TextField_BeginEdit_20:
	mov [ebx+esi*4+0x128], eax
	mov dword [g_editingField], 0x1
	mov [g_editItem], ebx
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call Key_SetOverstrikeMode
	mov edi, [ebx+0xe8]
	mov ecx, [edi+0xa4]
	test ecx, ecx
	jle Item_TextField_BeginEdit_30
	mov edx, [edi+0x118]
	cmp ebx, [edx]
	jz Item_TextField_BeginEdit_40
	xor eax, eax
Item_TextField_BeginEdit_50:
	add eax, 0x1
	cmp ecx, eax
	jz Item_TextField_BeginEdit_30
	cmp ebx, [edx+eax*4]
	jnz Item_TextField_BeginEdit_50
Item_TextField_BeginEdit_60:
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov [esp], esi
	call Menu_SetCursorItem
Item_TextField_BeginEdit_30:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Item_TextField_BeginEdit_40:
	xor eax, eax
	jmp Item_TextField_BeginEdit_60


;GetKeyBindingLocalizedString(int, char const*, char*, unsigned char)
GetKeyBindingLocalizedString:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x13c
	mov [ebp-0x11c], ecx
	movzx ebx, byte [ebp+0x8]
	lea ecx, [ebp-0x118]
	mov [esp+0x8], ecx
	mov [esp+0x4], edx
	mov [esp], eax
	call CL_GetKeyBinding
	mov esi, eax
	test bl, bl
	jz GetKeyBindingLocalizedString_10
	cmp eax, 0x1
	jle GetKeyBindingLocalizedString_10
	mov esi, 0x1
GetKeyBindingLocalizedString_30:
	lea eax, [ebp-0x118]
	mov [esp], eax
	call SEH_StringEd_GetString
	test eax, eax
	lea edx, [ebp-0x118]
	cmovz eax, edx
GetKeyBindingLocalizedString_50:
	mov dword [esp+0x8], 0x100
	mov [esp+0x4], eax
	mov ecx, [ebp-0x11c]
	mov [esp], ecx
	call Q_strncpyz
	mov eax, esi
	add esp, 0x13c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
GetKeyBindingLocalizedString_10:
	test esi, esi
	jz GetKeyBindingLocalizedString_20
	cmp esi, 0x1
	jz GetKeyBindingLocalizedString_30
	lea eax, [ebp-0x118]
	mov [esp], eax
	call SEH_StringEd_GetString
	mov edi, eax
	lea edx, [ebp-0x98]
	mov [esp], edx
	call SEH_StringEd_GetString
	mov ebx, eax
	mov dword [esp], _cstring_key_or
	call UI_SafeTranslateString
	test ebx, ebx
	jz GetKeyBindingLocalizedString_40
GetKeyBindingLocalizedString_60:
	test edi, edi
	lea edx, [ebp-0x118]
	cmovz edi, edx
	mov [esp+0x14], ebx
	mov [esp+0x10], eax
	mov [esp+0xc], edi
	mov dword [esp+0x8], _cstring_s_s_s
	mov dword [esp+0x4], 0x100
	mov ecx, [ebp-0x11c]
	mov [esp], ecx
	call Com_sprintf
	mov eax, esi
	add esp, 0x13c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
GetKeyBindingLocalizedString_20:
	mov dword [esp], _cstring_key_unbound
	call UI_SafeTranslateString
	jmp GetKeyBindingLocalizedString_50
GetKeyBindingLocalizedString_40:
	lea ebx, [ebp-0x98]
	jmp GetKeyBindingLocalizedString_60


;Scroll_Slider_SetThumbPos(UiContext*, itemDef_s*)
Scroll_Slider_SetThumbPos:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov [ebp-0x34], eax
	mov esi, edx
	mov [esp], edx
	call Item_GetEditFieldDef
	mov [ebp-0x2c], eax
	test eax, eax
	jz Scroll_Slider_SetThumbPos_10
	lea edi, [esi+0x4]
	movss xmm1, dword [edi+0x8]
	movss xmm0, dword [esi+0x4]
	addss xmm0, [esi+0xc8]
	mov eax, [esi+0xc4]
	and eax, 0x3
	jnz Scroll_Slider_SetThumbPos_20
Scroll_Slider_SetThumbPos_40:
	mov eax, [ebp-0x34]
	mov ebx, [eax]
	mov eax, ebx
	shl eax, 0x6
	lea ebx, [eax+ebx*4]
	add ebx, scrPlaceView
	mov dword [esp+0x8], 0x4
	mov edx, [ebp-0x34]
	mov eax, [edx+0x10]
	mov [esp+0x4], eax
	mov [esp], ebx
	movss [ebp-0x48], xmm0
	call ScrPlace_ApplyX
	fstp dword [ebp-0x30]
	movss xmm0, dword [ebp-0x48]
	addss xmm0, [_float_5_00000000]
	addss xmm0, [_float_1_00000000]
	movss [ebp-0x1c], xmm0
	mov dword [ebp-0x20], 0x42a80000
	pxor xmm3, xmm3
	movss [ebp-0x24], xmm3
	movss [ebp-0x28], xmm3
	mov eax, [edi+0x14]
	mov [esp+0x18], eax
	mov eax, [edi+0x10]
	mov [esp+0x14], eax
	lea eax, [ebp-0x28]
	mov [esp+0x10], eax
	lea eax, [ebp-0x20]
	mov [esp+0xc], eax
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], ebx
	movss [ebp-0x58], xmm3
	call ScrPlace_ApplyRect
	movss xmm2, dword [ebp-0x20]
	movss xmm4, dword [ebp-0x30]
	subss xmm4, [ebp-0x1c]
	movaps xmm0, xmm4
	subss xmm0, xmm2
	movss xmm3, dword [ebp-0x58]
	movaps xmm1, xmm3
	cmpss xmm1, xmm0, 0x6
	movaps xmm0, xmm4
	andps xmm0, xmm1
	andnps xmm1, xmm2
	orps xmm1, xmm0
	movaps xmm0, xmm3
	subss xmm0, xmm4
	movaps xmm4, xmm3
	cmpss xmm4, xmm0, 0x6
	andps xmm1, xmm4
	orps xmm1, xmm3
	divss xmm1, xmm2
	mov eax, [ebp-0x2c]
	movss xmm2, dword [eax]
	movss xmm0, dword [eax+0x4]
	subss xmm0, xmm2
	mulss xmm1, xmm0
	addss xmm2, xmm1
	cvtss2sd xmm2, xmm2
	movsd [esp+0x4], xmm2
	mov dword [esp], _cstring_g
	call va
	mov [esp+0x4], eax
	mov eax, [esi+0x10c]
	mov [esp], eax
	call Cvar_SetFromStringByName
Scroll_Slider_SetThumbPos_10:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scroll_Slider_SetThumbPos_20:
	sub eax, 0x1
	jz Scroll_Slider_SetThumbPos_30
	subss xmm1, [_float_96_00000000]
	addss xmm0, xmm1
	jmp Scroll_Slider_SetThumbPos_40
Scroll_Slider_SetThumbPos_30:
	subss xmm1, [_float_96_00000000]
	mulss xmm1, [_float_0_50000000]
	addss xmm0, xmm1
	jmp Scroll_Slider_SetThumbPos_40
	nop


;Scroll_Slider_ThumbFunc(UiContext*, void*)
Scroll_Slider_ThumbFunc:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov edx, [edx+0x18]
	pop ebp
	jmp Scroll_Slider_SetThumbPos


;Item_Slider_ThumbPosition(int, itemDef_s*)
Item_Slider_ThumbPosition:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov ebx, edx
	mov [esp], edx
	call Item_GetEditFieldDef
	mov esi, eax
	pxor xmm0, xmm0
	test eax, eax
	jz Item_Slider_ThumbPosition_10
	movss xmm0, dword [ebx+0xc]
	movss xmm1, dword [ebx+0x4]
	addss xmm1, [ebx+0xc8]
	movss [ebp-0xc], xmm1
	mov eax, [ebx+0xc4]
	and eax, 0x3
	jz Item_Slider_ThumbPosition_20
	sub eax, 0x1
	jz Item_Slider_ThumbPosition_30
	subss xmm0, [_float_96_00000000]
	addss xmm0, [ebp-0xc]
	movss [ebp-0xc], xmm0
Item_Slider_ThumbPosition_20:
	mov eax, [ebx+0x10c]
	mov [esp], eax
	call Cvar_GetVariantString
	mov [esp], eax
	call atof
	fstp qword [ebp-0x18]
	cvtsd2ss xmm0, [ebp-0x18]
	movss xmm2, dword [esi]
	ucomiss xmm2, xmm0
	jbe Item_Slider_ThumbPosition_40
	movaps xmm0, xmm2
	movss xmm1, dword [esi+0x4]
Item_Slider_ThumbPosition_50:
	subss xmm0, xmm2
	subss xmm1, xmm2
	divss xmm0, xmm1
	mulss xmm0, [_float_84_00000000]
	addss xmm0, [_float_5_00000000]
	addss xmm0, [_float_1_00000000]
	addss xmm0, [ebp-0xc]
Item_Slider_ThumbPosition_10:
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
Item_Slider_ThumbPosition_40:
	movss xmm1, dword [esi+0x4]
	movaps xmm3, xmm1
	minss xmm3, xmm0
	movaps xmm0, xmm3
	jmp Item_Slider_ThumbPosition_50
Item_Slider_ThumbPosition_30:
	subss xmm0, [_float_96_00000000]
	mulss xmm0, [_float_0_50000000]
	addss xmm0, xmm1
	movss [ebp-0xc], xmm0
	jmp Item_Slider_ThumbPosition_20
	nop


;_DrawWrappedText(ScreenPlacement const*, char const*, rectDef_s const*, Font_s*, float, float, float, float const*, int, int, rectDef_s*, unsigned char, float const*, unsigned char)
_DrawWrappedText:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4ac
	mov [ebp-0x444], eax
	mov [ebp-0x448], edx
	mov edi, ecx
	movss [ebp-0x44c], xmm0
	movss [ebp-0x450], xmm1
	movss [ebp-0x454], xmm2
	mov ebx, [ebp+0x14]
	movzx eax, byte [ebp+0x1c]
	mov [ebp-0x455], al
	movzx edx, byte [ebp+0x24]
	mov [ebp-0x456], dl
	addss xmm0, [ecx+0x8]
	mov eax, [ebp+0x18]
	movss [eax], xmm0
	movss xmm0, dword [ebp-0x450]
	movss [eax+0x4], xmm0
	xor eax, eax
	mov edx, [ebp+0x18]
	mov [edx+0x8], eax
	mov [edx+0xc], eax
	movss xmm0, dword [ebp-0x454]
	movss [esp+0x4], xmm0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call R_NormalizedTextScale
	fstp dword [ebp-0x42c]
	movss xmm0, dword [ebp-0x454]
	movss [esp+0x4], xmm0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call UI_TextHeight
	cvtsi2ss xmm0, eax
	movss [ebp-0x440], xmm0
	movss xmm0, dword [ebp-0x454]
	movss [esp+0xc], xmm0
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov edx, [ebp-0x448]
	mov [esp], edx
	call UI_TextWidth
	cvtsi2ss xmm1, eax
	movss xmm0, dword [edi+0x8]
	movss [ebp-0x424], xmm0
	mov eax, ebx
	and eax, 0x3
	mov [ebp-0x428], eax
	jz _DrawWrappedText_10
	sub eax, 0x1
	jz _DrawWrappedText_20
	movss xmm0, dword [ebp-0x44c]
	addss xmm0, [ebp-0x424]
	movss [ebp-0x44c], xmm0
_DrawWrappedText_10:
	movss xmm0, dword [edi+0xc]
	mov eax, ebx
	and eax, 0xc
	jz _DrawWrappedText_30
	cmp eax, 0x4
	jz _DrawWrappedText_40
	cmp eax, 0x8
	jz _DrawWrappedText_50
	addss xmm0, [ebp-0x450]
	movss [ebp-0x450], xmm0
_DrawWrappedText_30:
	movss xmm0, dword [ebp-0x424]
	ucomiss xmm0, [_float_0_00000000]
	jp _DrawWrappedText_60
	jz _DrawWrappedText_70
_DrawWrappedText_60:
	ucomiss xmm1, xmm0
	ja _DrawWrappedText_80
_DrawWrappedText_70:
	cvttss2si edx, [ebp-0x424]
	mov [ebp-0x438], edx
_DrawWrappedText_200:
	mov ebx, [ebp-0x448]
	cmp byte [ebx], 0x0
	jz _DrawWrappedText_90
_DrawWrappedText_160:
	movss xmm0, dword [ebp-0x42c]
	movss [esp+0x10], xmm0
	mov eax, [ebp+0x8]
	mov [esp+0xc], eax
	mov edx, [ebp-0x438]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x400
	mov [esp], ebx
	call R_TextLineWrapPosition
	mov esi, eax
	sub esi, ebx
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	lea eax, [ebp-0x418]
	mov [esp], eax
	call memcpy
	mov byte [ebp+esi-0x418], 0x0
	movss xmm0, dword [ebp-0x454]
	movss [esp+0xc], xmm0
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	lea edx, [ebp-0x418]
	mov [esp], edx
	call UI_TextWidth
	cvtsi2ss xmm0, eax
	movss [ebp-0x43c], xmm0
	cmp dword [ebp-0x428], 0x1
	jz _DrawWrappedText_100
	cmp dword [ebp-0x428], 0x2
	jz _DrawWrappedText_110
	movss xmm0, dword [ebp-0x44c]
	movss [ebp-0x430], xmm0
_DrawWrappedText_180:
	cmp byte [ebp-0x455], 0x0
	jz _DrawWrappedText_120
	movzx eax, byte [ebp-0x456]
	mov [esp+0x34], eax
	mov dword [esp+0x30], 0x1
	mov eax, [ebp+0x20]
	mov [esp+0x2c], eax
	mov edx, [ebp+0x10]
	mov [esp+0x28], edx
	mov eax, [ebp+0xc]
	mov [esp+0x24], eax
	movss xmm0, dword [ebp-0x454]
	movss [esp+0x20], xmm0
	mov eax, [edi+0x14]
	mov [esp+0x1c], eax
	mov eax, [edi+0x10]
	mov [esp+0x18], eax
	movss xmm0, dword [ebp-0x450]
	movss [esp+0x14], xmm0
	movss xmm0, dword [ebp-0x430]
	movss [esp+0x10], xmm0
	mov eax, [ebp+0x8]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x7fffffff
	lea edx, [ebp-0x418]
	mov [esp+0x4], edx
	mov eax, [ebp-0x444]
	mov [esp], eax
	call UI_DrawTextWithGlow
_DrawWrappedText_170:
	movss xmm0, dword [ebp-0x440]
	addss xmm0, [_float_5_00000000]
	addss xmm0, [ebp-0x450]
	movss [ebp-0x450], xmm0
	movss xmm0, dword [ebp-0x43c]
	mov edx, [ebp+0x18]
	ucomiss xmm0, [edx+0x8]
	jbe _DrawWrappedText_130
	movss xmm0, dword [ebp-0x430]
	movss [edx], xmm0
	movss xmm0, dword [ebp-0x43c]
	movss [edx+0x8], xmm0
_DrawWrappedText_130:
	add ebx, esi
	jmp _DrawWrappedText_140
_DrawWrappedText_150:
	add ebx, 0x1
_DrawWrappedText_140:
	movsx eax, byte [ebx]
	mov [esp], eax
	call isspace
	test eax, eax
	jnz _DrawWrappedText_150
	cmp byte [ebx], 0x0
	jnz _DrawWrappedText_160
_DrawWrappedText_90:
	movss xmm0, dword [ebp-0x450]
	mov eax, [ebp+0x18]
	subss xmm0, [eax+0x4]
	movss [eax+0xc], xmm0
	add esp, 0x4ac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_DrawWrappedText_120:
	mov edx, [ebp+0x10]
	mov [esp+0x28], edx
	mov eax, [ebp+0xc]
	mov [esp+0x24], eax
	movss xmm0, dword [ebp-0x454]
	movss [esp+0x20], xmm0
	mov eax, [edi+0x14]
	mov [esp+0x1c], eax
	mov eax, [edi+0x10]
	mov [esp+0x18], eax
	movss xmm0, dword [ebp-0x450]
	movss [esp+0x14], xmm0
	movss xmm0, dword [ebp-0x430]
	movss [esp+0x10], xmm0
	mov eax, [ebp+0x8]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x7fffffff
	lea edx, [ebp-0x418]
	mov [esp+0x4], edx
	mov eax, [ebp-0x444]
	mov [esp], eax
	call UI_DrawText
	jmp _DrawWrappedText_170
_DrawWrappedText_100:
	mulss xmm0, [_float__0_50000000]
	movss [ebp-0x430], xmm0
	movss xmm0, dword [ebp-0x44c]
	addss xmm0, [ebp-0x430]
	movss [ebp-0x430], xmm0
	jmp _DrawWrappedText_180
_DrawWrappedText_110:
	movss xmm0, dword [ebp-0x44c]
	subss xmm0, [ebp-0x43c]
	movss [ebp-0x430], xmm0
	jmp _DrawWrappedText_180
_DrawWrappedText_80:
	cmp dword [ebp-0x428], 0x1
	jnz _DrawWrappedText_70
	movaps xmm0, xmm1
	divss xmm0, dword [ebp-0x424]
	movss [esp], xmm0
	movss [ebp-0x478], xmm1
	call ceilf
	fstp dword [ebp-0x45c]
	cvttss2si eax, [ebp-0x45c]
	mov [ebp-0x434], eax
	cvtsi2ss xmm0, eax
	movss xmm1, dword [ebp-0x478]
	divss xmm1, xmm0
	movss [esp], xmm1
	call ceilf
	fstp dword [ebp-0x460]
	cvttss2si edx, [ebp-0x460]
	mov [ebp-0x41c], edx
	cvttss2si eax, [ebp-0x424]
	mov [ebp-0x438], eax
	cmp edx, eax
	jl _DrawWrappedText_190
	jmp _DrawWrappedText_200
_DrawWrappedText_220:
	mov dword [ebp-0x420], 0x0
_DrawWrappedText_260:
	mov edx, [ebp-0x420]
	cmp [ebp-0x434], edx
	jz _DrawWrappedText_210
	add dword [ebp-0x41c], 0x8
	mov edx, [ebp-0x41c]
	cmp [ebp-0x438], edx
	jle _DrawWrappedText_200
_DrawWrappedText_190:
	mov eax, [ebp-0x448]
	cmp byte [eax], 0x0
	jz _DrawWrappedText_220
	mov ebx, [ebp-0x448]
	mov dword [ebp-0x420], 0x0
_DrawWrappedText_250:
	movss xmm0, dword [ebp-0x42c]
	movss [esp+0x10], xmm0
	mov eax, [ebp+0x8]
	mov [esp+0xc], eax
	mov edx, [ebp-0x41c]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x400
	mov [esp], ebx
	call R_TextLineWrapPosition
	mov ebx, eax
	jmp _DrawWrappedText_230
_DrawWrappedText_240:
	add ebx, 0x1
_DrawWrappedText_230:
	movzx esi, byte [ebx]
	mov edx, esi
	movsx eax, dl
	mov [esp], eax
	call isspace
	test eax, eax
	jnz _DrawWrappedText_240
	add dword [ebp-0x420], 0x1
	mov eax, esi
	test al, al
	jnz _DrawWrappedText_250
	jmp _DrawWrappedText_260
_DrawWrappedText_20:
	mulss xmm0, [_float_0_50000000]
	addss xmm0, [ebp-0x44c]
	movss [ebp-0x44c], xmm0
	jmp _DrawWrappedText_10
_DrawWrappedText_40:
	movss xmm0, dword [ebp-0x450]
	addss xmm0, [ebp-0x440]
	movss [ebp-0x450], xmm0
	jmp _DrawWrappedText_30
_DrawWrappedText_50:
	addss xmm0, [ebp-0x440]
	mulss xmm0, [_float_0_50000000]
	addss xmm0, [ebp-0x450]
	movss [ebp-0x450], xmm0
	jmp _DrawWrappedText_30
_DrawWrappedText_210:
	mov eax, [ebp-0x41c]
	mov [ebp-0x438], eax
	jmp _DrawWrappedText_200
	add [eax], al


;Window_Paint(UiContext*, windowDef_t*, float, float, float, float)
Window_Paint:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xbc
	mov [ebp-0x30], eax
	mov ebx, edx
	movss [ebp-0x34], xmm0
	movss [ebp-0x38], xmm1
	movss [ebp-0x3c], xmm2
	movss [ebp-0x40], xmm3
	lea esi, [edx+0x4]
	mov ecx, [esi+0x14]
	mov edi, [esi+0x10]
	movss xmm2, dword [esi+0xc]
	movss xmm3, dword [esi+0x8]
	movss xmm4, dword [esi+0x4]
	movss xmm5, dword [edx+0x4]
	mov edx, [eax]
	mov eax, edx
	shl eax, 0x6
	lea edx, [eax+edx*4]
	mov eax, scrPlaceView
	add edx, eax
	mov [ebp-0x2c], edx
	mov eax, [g_debugMode]
	test eax, eax
	jnz Window_Paint_10
Window_Paint_160:
	test ebx, ebx
	jz Window_Paint_20
	mov eax, [ebx+0x38]
	test eax, eax
	jnz Window_Paint_30
	mov ecx, [ebx+0x3c]
	test ecx, ecx
	jz Window_Paint_20
Window_Paint_120:
	movss xmm0, dword [ebx+0x48]
	addss xmm5, xmm0
	addss xmm4, xmm0
	addss xmm0, [_float_1_00000000]
	subss xmm3, xmm0
	subss xmm2, xmm0
	cmp eax, 0x3
	jz Window_Paint_40
Window_Paint_130:
	jg Window_Paint_50
	sub eax, 0x1
	jz Window_Paint_60
Window_Paint_180:
	mov eax, [ebx+0x3c]
	cmp eax, 0x1
	jz Window_Paint_70
Window_Paint_150:
	cmp eax, 0x2
	jz Window_Paint_80
	cmp eax, 0x3
	jz Window_Paint_90
	cmp eax, 0x4
	jz Window_Paint_20
	cmp eax, 0x5
	jz Window_Paint_100
	cmp eax, 0x6
	jz Window_Paint_110
Window_Paint_20:
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Window_Paint_30:
	mov edx, [ebx+0x3c]
	test edx, edx
	jnz Window_Paint_120
	cmp eax, 0x3
	jnz Window_Paint_130
Window_Paint_40:
	mov edx, [ebp-0x30]
	mov eax, [edx]
	test byte [ebx+eax*4+0x52], 0x1
	jnz Window_Paint_140
	xor edx, edx
Window_Paint_200:
	mov eax, [ebx+0x98]
	mov [esp+0x20], eax
	mov [esp+0x1c], edx
	mov eax, [esi+0x14]
	mov [esp+0x18], eax
	mov eax, [esi+0x10]
	mov [esp+0x14], eax
	movss [esp+0x10], xmm2
	movss [esp+0xc], xmm3
	movss [esp+0x8], xmm4
	movss [esp+0x4], xmm5
	mov ecx, [ebp-0x2c]
	mov [esp], ecx
	call UI_DrawHandlePic
	mov eax, [ebx+0x3c]
	cmp eax, 0x1
	jnz Window_Paint_150
Window_Paint_70:
	lea eax, [ebx+0x78]
	mov [esp+0x20], eax
	mov eax, [ebx+0x48]
	mov [esp+0x1c], eax
	mov eax, [esi+0x14]
	mov [esp+0x18], eax
	mov eax, [esi+0x10]
	mov [esp+0x14], eax
	mov eax, [esi+0xc]
	mov [esp+0x10], eax
	mov eax, [esi+0x8]
	mov [esp+0xc], eax
	mov eax, [esi+0x4]
	mov [esp+0x8], eax
	mov eax, [esi]
	mov [esp+0x4], eax
	mov edx, [ebp-0x2c]
	mov [esp], edx
	call UI_DrawRect
	add esp, 0xbc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Window_Paint_10:
	mov eax, colorWhite
	mov [esp+0x20], eax
	mov dword [esp+0x1c], 0x3f800000
	mov [esp+0x18], ecx
	mov [esp+0x14], edi
	movss [esp+0x10], xmm2
	movss [esp+0xc], xmm3
	movss [esp+0x8], xmm4
	movss [esp+0x4], xmm5
	mov [esp], edx
	movss [ebp-0x58], xmm2
	movss [ebp-0x68], xmm3
	movss [ebp-0x78], xmm4
	movss [ebp-0x88], xmm5
	call UI_DrawRect
	movss xmm5, dword [ebp-0x88]
	movss xmm4, dword [ebp-0x78]
	movss xmm3, dword [ebp-0x68]
	movss xmm2, dword [ebp-0x58]
	jmp Window_Paint_160
Window_Paint_50:
	cmp eax, 0x5
	jz Window_Paint_170
	cmp eax, 0x6
	jnz Window_Paint_180
	mov edx, [ebp-0x30]
	mov eax, [edx]
	test byte [ebx+eax*4+0x52], 0x1
	jnz Window_Paint_190
	xor edx, edx
Window_Paint_270:
	mov eax, [ebx+0x98]
	mov [esp+0x20], eax
	mov [esp+0x1c], edx
	mov eax, [esi+0x14]
	mov [esp+0x18], eax
	mov eax, [esi+0x10]
	mov [esp+0x14], eax
	movss [esp+0x10], xmm2
	movss [esp+0xc], xmm3
	movss [esp+0x8], xmm4
	movss [esp+0x4], xmm5
	mov ecx, [ebp-0x2c]
	mov [esp], ecx
	call UI_DrawLoadBar
	jmp Window_Paint_180
Window_Paint_140:
	lea edx, [ebx+0x58]
	jmp Window_Paint_200
Window_Paint_110:
	mov eax, ui_borderLowLightScale
	mov eax, [eax]
	movss xmm1, dword [eax+0xc]
	lea edx, [ebx+0x78]
	movaps xmm0, xmm1
	mulss xmm0, [ebx+0x78]
	movss [ebp-0x28], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [edx+0x4]
	movss [ebp-0x24], xmm0
	mulss xmm1, [edx+0x8]
	movss [ebp-0x20], xmm1
	mov eax, [ebx+0x84]
	mov [ebp-0x1c], eax
	mov [esp+0x24], edx
	lea eax, [ebp-0x28]
	mov [esp+0x20], eax
	mov eax, [ebx+0x48]
	mov [esp+0x1c], eax
	mov eax, [esi+0x14]
	mov [esp+0x18], eax
	mov eax, [esi+0x10]
	mov [esp+0x14], eax
	mov eax, [esi+0xc]
	mov [esp+0x10], eax
	mov eax, [esi+0x8]
	mov [esp+0xc], eax
	mov eax, [esi+0x4]
	mov [esp+0x8], eax
	mov eax, [esi]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x2c]
	mov [esp], ecx
	call UI_DrawHighlightRect
	jmp Window_Paint_20
Window_Paint_60:
	mov eax, [ebx+0x98]
	test eax, eax
	jz Window_Paint_210
	mov ecx, [ebp-0x30]
	mov edx, [ecx]
	mov ecx, [ebx+edx*4+0x50]
	cvttss2si edi, [ebp-0x40]
	test cl, 0x30
	jz Window_Paint_220
	mov eax, [ebp-0x30]
	mov eax, [eax+0x8]
	mov [ebp-0x8c], eax
	cmp eax, [ebx+0x54]
	jle Window_Paint_220
	lea eax, [edi+eax]
	mov [ebx+0x54], eax
	test cl, 0x10
	jz Window_Paint_230
	movss xmm0, dword [ebx+0x74]
	subss xmm0, [ebp-0x34]
	movss [ebx+0x74], xmm0
	ucomiss xmm0, [_float_0_00000000]
	jbe Window_Paint_240
Window_Paint_280:
	mov eax, [ebp-0x30]
	mov edx, [eax]
Window_Paint_220:
	mov [esp+0x8], ecx
	mov [esp+0x4], ebx
	mov [esp], edx
	movss [ebp-0x58], xmm2
	movss [ebp-0x68], xmm3
	movss [ebp-0x78], xmm4
	movss [ebp-0x88], xmm5
	call Window_SetDynamicFlags
	mov eax, [ebx+0x98]
	mov [esp+0x20], eax
	lea eax, [ebx+0x68]
	mov [esp+0x1c], eax
	mov eax, [esi+0x14]
	mov [esp+0x18], eax
	mov eax, [esi+0x10]
	mov [esp+0x14], eax
	movss xmm2, dword [ebp-0x58]
	movss [esp+0x10], xmm2
	movss xmm3, dword [ebp-0x68]
	movss [esp+0xc], xmm3
	movss xmm4, dword [ebp-0x78]
	movss [esp+0x8], xmm4
	movss xmm5, dword [ebp-0x88]
	movss [esp+0x4], xmm5
	mov edx, [ebp-0x2c]
	mov [esp], edx
	call UI_DrawHandlePic
	jmp Window_Paint_180
Window_Paint_170:
	mov edx, [ebx+0x98]
	test edx, edx
	jz Window_Paint_180
	mov ecx, [ebp-0x30]
	mov eax, [ecx]
	test byte [ebx+eax*4+0x52], 0x1
	jnz Window_Paint_250
	xor eax, eax
Window_Paint_260:
	mov [esp+0x20], edx
	mov [esp+0x1c], eax
	mov eax, [esi+0x14]
	mov [esp+0x18], eax
	mov eax, [esi+0x10]
	mov [esp+0x14], eax
	movss [esp+0x10], xmm2
	movss [esp+0xc], xmm3
	movss [esp+0x8], xmm4
	movss [esp+0x4], xmm5
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call UI_DrawHandlePic
	jmp Window_Paint_180
Window_Paint_80:
	lea eax, [ebx+0x78]
	mov [esp+0x20], eax
	mov eax, [ebx+0x48]
	mov [esp+0x1c], eax
	mov eax, [esi+0x14]
	mov [esp+0x18], eax
	mov eax, [esi+0x10]
	mov [esp+0x14], eax
	mov eax, [esi+0xc]
	mov [esp+0x10], eax
	mov eax, [esi+0x8]
	mov [esp+0xc], eax
	mov eax, [esi+0x4]
	mov [esp+0x8], eax
	mov eax, [esi]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x2c]
	mov [esp], ecx
	call UI_DrawTopBottom
	jmp Window_Paint_20
Window_Paint_90:
	lea eax, [ebx+0x78]
	mov [esp+0x20], eax
	mov eax, [ebx+0x48]
	mov [esp+0x1c], eax
	mov eax, [esi+0x14]
	mov [esp+0x18], eax
	mov eax, [esi+0x10]
	mov [esp+0x14], eax
	mov eax, [esi+0xc]
	mov [esp+0x10], eax
	mov eax, [esi+0x8]
	mov [esp+0xc], eax
	mov eax, [esi+0x4]
	mov [esp+0x8], eax
	mov eax, [esi]
	mov [esp+0x4], eax
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call UI_DrawSides
	jmp Window_Paint_20
Window_Paint_100:
	mov eax, ui_borderLowLightScale
	mov eax, [eax]
	movss xmm1, dword [eax+0xc]
	lea edx, [ebx+0x78]
	movaps xmm0, xmm1
	mulss xmm0, [ebx+0x78]
	movss [ebp-0x28], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [edx+0x4]
	movss [ebp-0x24], xmm0
	mulss xmm1, [edx+0x8]
	movss [ebp-0x20], xmm1
	mov eax, [ebx+0x84]
	mov [ebp-0x1c], eax
	lea eax, [ebp-0x28]
	mov [esp+0x24], eax
	mov [esp+0x20], edx
	mov eax, [ebx+0x48]
	mov [esp+0x1c], eax
	mov eax, [esi+0x14]
	mov [esp+0x18], eax
	mov eax, [esi+0x10]
	mov [esp+0x14], eax
	mov eax, [esi+0xc]
	mov [esp+0x10], eax
	mov eax, [esi+0x8]
	mov [esp+0xc], eax
	mov eax, [esi+0x4]
	mov [esp+0x8], eax
	mov eax, [esi]
	mov [esp+0x4], eax
	mov edx, [ebp-0x2c]
	mov [esp], edx
	call UI_DrawHighlightRect
	jmp Window_Paint_20
Window_Paint_250:
	lea eax, [ebx+0x58]
	jmp Window_Paint_260
Window_Paint_190:
	lea edx, [ebx+0x58]
	jmp Window_Paint_270
Window_Paint_240:
	jp Window_Paint_280
	and ecx, 0xffffffeb
	mov eax, [ebp-0x30]
	mov edx, [eax]
	jmp Window_Paint_220
Window_Paint_230:
	movss xmm0, dword [ebp-0x38]
	addss xmm0, [ebx+0x74]
	movss [ebx+0x74], xmm0
	ucomiss xmm0, [ebp-0x3c]
	jb Window_Paint_280
	movss xmm0, dword [ebp-0x3c]
	movss [ebx+0x74], xmm0
	and ecx, 0xffffffdf
	mov eax, [ebp-0x30]
	mov edx, [eax]
	jmp Window_Paint_220
Window_Paint_210:
	lea eax, [ebx+0x68]
	mov [esp+0x1c], eax
	mov eax, [esi+0x14]
	mov [esp+0x18], eax
	mov eax, [esi+0x10]
	mov [esp+0x14], eax
	movss [esp+0x10], xmm2
	movss [esp+0xc], xmm3
	movss [esp+0x8], xmm4
	movss [esp+0x4], xmm5
	mov ecx, [ebp-0x2c]
	mov [esp], ecx
	call UI_FillRect
	jmp Window_Paint_180
	nop


;Menus_Close(UiContext*, menuDef_t*)
Menus_Close:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1bc
	mov edi, eax
	mov [ebp-0x1a0], edx
	mov esi, [eax+0xa74]
	mov ebx, esi
	sub ebx, 0x1
	js Menus_Close_10
	mov ecx, edx
	cmp edx, [eax+ebx*4+0xa34]
	jz Menus_Close_20
	lea ecx, [eax+ebx*4+0xa34]
	xor edx, edx
Menus_Close_30:
	cmp ebx, edx
	jz Menus_Close_10
	mov eax, [ecx-0x4]
	add edx, 0x1
	sub ecx, 0x4
	cmp [ebp-0x1a0], eax
	jnz Menus_Close_30
	mov edx, [ebp-0x1a0]
Menus_Close_200:
	mov eax, [edi]
	mov [ebp-0x1a4], eax
	test byte [edx+eax*4+0x50], 0x4
	jz Menus_Close_40
	mov eax, [edx+0xc8]
	test eax, eax
	jz Menus_Close_50
	mov [ebp-0xa4], edx
	mov ecx, [edx+0xc8]
	lea edx, [ebp-0x18c]
	mov eax, edi
	call Item_RunScript
	mov esi, [edi+0xa74]
	mov ecx, [edi]
	mov [ebp-0x1a4], ecx
	mov edx, ecx
	mov ecx, [ebp-0x1a0]
	mov eax, [ecx+edx*4+0x50]
	test al, 0x4
	jz Menus_Close_60
Menus_Close_140:
	shr eax, 1
	and al, 0x1
	mov [ebp-0x199], al
	mov ebx, esi
	sub ebx, 0x1
	jns Menus_Close_70
Menus_Close_150:
	cmp byte [ebp-0x199], 0x0
	jz Menus_Close_80
	mov ecx, [edi+0xa74]
	sub ecx, 0x1
	js Menus_Close_80
	mov ebx, [edi+ecx*4+0xa34]
	mov eax, [ebp-0x1a4]
	test byte [ebx+eax*4+0x50], 0x4
	jnz Menus_Close_90
	lea edx, [edi+ecx*4+0xa34]
	xor eax, eax
Menus_Close_100:
	cmp eax, ecx
	jz Menus_Close_80
	mov ebx, [edx-0x4]
	add eax, 0x1
	sub edx, 0x4
	mov esi, [ebp-0x1a4]
	test byte [ebx+esi*4+0x50], 0x4
	jz Menus_Close_100
	mov eax, esi
Menus_Close_90:
	mov dword [esp+0x8], 0x2
	mov [esp+0x4], ebx
	mov [esp], eax
	call Window_AddDynamicFlags
	mov edx, [ebx+0xa4]
	mov [ebp-0x1ac], edx
	test edx, edx
	jle Menus_Close_10
	mov ecx, [edi]
	mov [ebp-0x1a4], ecx
	mov ecx, [ebx+0x118]
	xor ebx, ebx
Menus_Close_130:
	mov edx, [ecx]
	mov esi, [ebp-0x1a4]
	mov eax, [edx+esi*4+0x50]
	test al, 0x4
	jz Menus_Close_110
	test al, 0x2
	jnz Menus_Close_120
Menus_Close_110:
	add ebx, 0x1
	add ecx, 0x4
	cmp [ebp-0x1ac], ebx
	jnz Menus_Close_130
Menus_Close_80:
	mov edx, [ebp-0x1a4]
	mov dword [esp+0x8], 0x6
	mov eax, [ebp-0x1a0]
	mov [esp+0x4], eax
	mov [esp], edx
	call Window_RemoveDynamicFlags
	add esp, 0x1bc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Menus_Close_120:
	mov ecx, [edx+0x104]
	test ecx, ecx
	jz Menus_Close_80
	mov eax, edi
	call Item_RunScript
Menus_Close_10:
	mov edi, [edi]
	mov [ebp-0x1a4], edi
	mov edx, edi
	mov dword [esp+0x8], 0x6
	mov eax, [ebp-0x1a0]
	mov [esp+0x4], eax
	mov [esp], edx
	call Window_RemoveDynamicFlags
	add esp, 0x1bc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Menus_Close_40:
	mov edx, eax
Menus_Close_190:
	mov ecx, [ebp-0x1a0]
	mov eax, [ecx+edx*4+0x50]
	test al, 0x4
	jnz Menus_Close_140
Menus_Close_60:
	mov byte [ebp-0x199], 0x0
	mov ebx, esi
	sub ebx, 0x1
	js Menus_Close_150
Menus_Close_70:
	mov esi, [ebp-0x1a0]
	cmp esi, [edi+ebx*4+0xa34]
	jz Menus_Close_160
	lea ecx, [edi+ebx*4+0xa34]
	mov esi, ebx
	xor edx, edx
Menus_Close_170:
	sub esi, 0x1
	cmp ebx, edx
	jz Menus_Close_150
	mov eax, [ecx-0x4]
	add edx, 0x1
	sub ecx, 0x4
	cmp [ebp-0x1a0], eax
	jnz Menus_Close_170
Menus_Close_210:
	mov [edi+0xa74], ebx
	cmp ebx, esi
	jle Menus_Close_150
	lea edx, [edi+esi*4+0xa38]
	mov ecx, esi
	lea ebx, [edi+esi*4+0xa34]
	sub ebx, edx
Menus_Close_180:
	add ecx, 0x1
	mov eax, [edx]
	mov [ebx+edx], eax
	add edx, 0x4
	cmp [edi+0xa74], ecx
	jg Menus_Close_180
	jmp Menus_Close_150
Menus_Close_50:
	mov edx, [ebp-0x1a4]
	jmp Menus_Close_190
Menus_Close_20:
	mov edx, ecx
	jmp Menus_Close_200
Menus_Close_160:
	mov esi, ebx
	jmp Menus_Close_210
	nop


;Item_ListBox_PaintTextElem(int, itemDef_s*, int, int, int, int, float, float, float, float)
Item_ListBox_PaintTextElem:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	mov ebx, eax
	mov esi, edx
	mov edi, ecx
	movss [ebp-0x58], xmm0
	movss [ebp-0x5c], xmm1
	movss [ebp-0x60], xmm2
	movss [ebp-0x64], xmm3
	lea eax, [edx+0x4]
	mov [ebp-0x54], eax
	mov eax, ebx
	shl eax, 0x6
	lea eax, [eax+ebx*4]
	mov edx, scrPlaceView
	add eax, edx
	mov [ebp-0x50], eax
	lea eax, [ebp-0x1c]
	mov [esp+0x14], eax
	mov eax, [ebp+0x8]
	mov [esp+0x10], eax
	mov [esp+0xc], ecx
	mov eax, [esi+0x124]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov [esp], ebx
	call UI_FeederItemText
	mov [ebp-0x4c], eax
	lea edx, [ebp-0x2c]
	mov [esp+0x14], edx
	mov eax, [ebp+0x8]
	mov [esp+0x10], eax
	mov [esp+0xc], edi
	mov eax, [esi+0x124]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov [esp], ebx
	call UI_FeederItemColor
	mov ecx, [ebp-0x1c]
	test ecx, ecx
	jz Item_ListBox_PaintTextElem_10
	mov edx, colorWhite
	mov eax, [edx]
	mov [ebp-0x3c], eax
	mov eax, [edx+0x4]
	mov [ebp-0x38], eax
	mov eax, [edx+0x8]
	mov [ebp-0x34], eax
	mov eax, [ebp-0x20]
	mov [ebp-0x30], eax
	mov [esp+0x20], ecx
	lea eax, [ebp-0x3c]
	mov [esp+0x1c], eax
	mov edx, [ebp-0x54]
	mov eax, [edx+0x14]
	mov [esp+0x18], eax
	mov eax, [edx+0x10]
	mov [esp+0x14], eax
	movss xmm0, dword [ebp-0x64]
	movss [esp+0x10], xmm0
	movss xmm3, dword [ebp-0x60]
	movss [esp+0xc], xmm3
	movss xmm0, dword [ebp-0x5c]
	movss [esp+0x8], xmm0
	movss xmm3, dword [ebp-0x58]
	movss [esp+0x4], xmm3
	mov eax, [ebp-0x50]
	mov [esp], eax
	call UI_DrawHandlePic
Item_ListBox_PaintTextElem_20:
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Item_ListBox_PaintTextElem_10:
	mov eax, [ebp-0x4c]
	test eax, eax
	jz Item_ListBox_PaintTextElem_20
	mov eax, [esi+0xd0]
	mov [esp+0x8], eax
	mov eax, [esi+0xc0]
	mov [esp+0x4], eax
	mov edx, [ebp-0x50]
	mov [esp], edx
	call UI_GetFontHandle
	mov ebx, eax
	mov eax, [esi+0xd0]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov edx, [ebp-0x4c]
	mov [esp], edx
	call UI_TextWidth
	cvtsi2ss xmm2, eax
	cmp dword [ebp+0x10], 0x1
	jz Item_ListBox_PaintTextElem_30
	cmp dword [ebp+0x10], 0x2
	jz Item_ListBox_PaintTextElem_40
	pxor xmm2, xmm2
Item_ListBox_PaintTextElem_50:
	mov eax, [esi+0xd4]
	mov [esp+0x28], eax
	lea eax, [ebp-0x2c]
	mov [esp+0x24], eax
	mov eax, [esi+0xd0]
	mov [esp+0x20], eax
	mov edx, [ebp-0x54]
	mov eax, [edx+0x14]
	mov [esp+0x1c], eax
	mov eax, [edx+0x10]
	mov [esp+0x18], eax
	movss xmm0, dword [ebp-0x5c]
	addss xmm0, [ebp-0x64]
	movss [ebp-0x5c], xmm0
	addss xmm0, [esi+0xcc]
	movss [esp+0x14], xmm0
	addss xmm2, [ebp-0x58]
	addss xmm2, [esi+0xc8]
	movss [esp+0x10], xmm2
	mov [esp+0xc], ebx
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov edx, [ebp-0x4c]
	mov [esp+0x4], edx
	mov eax, [ebp-0x50]
	mov [esp], eax
	call UI_DrawText
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Item_ListBox_PaintTextElem_30:
	movss xmm0, dword [ebp-0x60]
	subss xmm0, xmm2
	movaps xmm2, xmm0
	mulss xmm2, [_float_0_50000000]
	pxor xmm1, xmm1
	movaps xmm0, xmm1
	subss xmm0, xmm2
	ucomiss xmm0, xmm1
	jb Item_ListBox_PaintTextElem_50
	movaps xmm2, xmm1
	jmp Item_ListBox_PaintTextElem_50
Item_ListBox_PaintTextElem_40:
	movss xmm3, dword [ebp-0x60]
	subss xmm3, xmm2
	movaps xmm2, xmm3
	pxor xmm0, xmm0
	movaps xmm1, xmm0
	subss xmm1, xmm3
	movaps xmm3, xmm0
	cmpss xmm3, xmm1, 0x6
	andps xmm2, xmm3
	orps xmm2, xmm0
	jmp Item_ListBox_PaintTextElem_50


;Item_SetTextExtents(int, itemDef_s*, char const*)
Item_SetTextExtents:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov [ebp-0x48], eax
	mov ebx, edx
	mov [ebp-0x4c], ecx
	mov eax, [edx+0xc4]
	and eax, 0x3
	mov [ebp-0x3c], eax
	cmp dword [edx+0xb4], 0x8
	setz dl
	mov edi, edx
	test dl, dl
	jnz Item_SetTextExtents_10
	mov ecx, [ebx+0x10c]
	test ecx, ecx
	jz Item_SetTextExtents_10
	mov byte [ebp-0x41], 0x1
	mov edx, [ebp-0x3c]
	test edx, edx
	jnz Item_SetTextExtents_20
Item_SetTextExtents_90:
	mov edx, [ebp-0x48]
	lea eax, [edx+edx*2]
	pxor xmm0, xmm0
	ucomiss xmm0, [ebx+eax*8+0xa4]
	jp Item_SetTextExtents_30
	jnz Item_SetTextExtents_30
Item_SetTextExtents_110:
	mov eax, [ebx+0xd0]
	mov [esp+0x8], eax
	mov eax, [ebx+0xc0]
	mov [esp+0x4], eax
	mov eax, [ebp-0x48]
	shl eax, 0x6
	lea eax, [eax+edx*4]
	add eax, scrPlaceView
	mov [esp], eax
	call UI_GetFontHandle
	mov esi, eax
	mov eax, [ebx+0xc8]
	mov [ebp-0x30], eax
	mov eax, [ebx+0xcc]
	mov [ebp-0x2c], eax
	mov eax, [ebx+0xd0]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x4c]
	mov [esp], eax
	call UI_TextWidth
	cvtsi2ss xmm0, eax
	movss [ebp-0x28], xmm0
	mov eax, [ebx+0xd0]
	mov [esp+0x4], eax
	mov [esp], esi
	call UI_TextHeight
	cvtsi2ss xmm0, eax
	movss [ebp-0x24], xmm0
	mov eax, [ebx+0x14]
	mov [ebp-0x20], eax
	mov eax, [ebx+0x18]
	mov [ebp-0x1c], eax
	mov eax, [ebp-0x3c]
	test eax, eax
	jnz Item_SetTextExtents_40
Item_SetTextExtents_160:
	movss xmm2, dword [ebx+0x10]
	movss xmm1, dword [ebp-0x2c]
	mov eax, [ebx+0xc4]
	and eax, 0xc
	jz Item_SetTextExtents_50
	cmp eax, 0x4
	jz Item_SetTextExtents_60
	cmp eax, 0x8
	jz Item_SetTextExtents_70
	addss xmm1, xmm2
Item_SetTextExtents_50:
	movss [ebp-0x2c], xmm1
	mov eax, [ebx+0x3c]
	test eax, eax
	jz Item_SetTextExtents_80
Item_SetTextExtents_170:
	movss xmm0, dword [ebp-0x30]
	addss xmm0, [ebx+0x48]
	movss [ebp-0x30], xmm0
	addss xmm1, [ebx+0x48]
	movss [ebp-0x2c], xmm1
Item_SetTextExtents_120:
	addss xmm0, [ebx+0x4]
	movss [ebp-0x30], xmm0
	movss xmm0, dword [ebp-0x2c]
	addss xmm0, [ebx+0x8]
	movss [ebp-0x2c], xmm0
	lea eax, [ebp-0x30]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov eax, [ebp-0x48]
	mov [esp], eax
	call Item_SetTextRect
Item_SetTextExtents_30:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Item_SetTextExtents_10:
	mov byte [ebp-0x41], 0x0
	mov edx, [ebp-0x3c]
	test edx, edx
	jz Item_SetTextExtents_90
Item_SetTextExtents_20:
	mov eax, edi
	test al, al
	jz Item_SetTextExtents_100
	mov edx, [ebp-0x48]
	jmp Item_SetTextExtents_110
Item_SetTextExtents_80:
	movss xmm0, dword [ebp-0x30]
	jmp Item_SetTextExtents_120
Item_SetTextExtents_100:
	cmp byte [ebp-0x41], 0x0
	jz Item_SetTextExtents_90
	mov edx, [ebp-0x48]
	jmp Item_SetTextExtents_110
Item_SetTextExtents_40:
	movss xmm0, dword [ebx+0xc]
	movss [ebp-0x40], xmm0
	mov eax, [ebx+0xd0]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x4c]
	mov [esp], eax
	call UI_TextWidth
	cvtsi2ss xmm0, eax
	movss xmm1, dword [ebp-0x40]
	subss xmm1, xmm0
	movss [ebp-0x40], xmm1
	mov eax, edi
	test al, al
	jnz Item_SetTextExtents_130
	cmp byte [ebp-0x41], 0x0
	jz Item_SetTextExtents_140
	cmp dword [ebx+0xb4], 0x12
	ja Item_SetTextExtents_140
	mov ecx, [ebx+0xb4]
	mov eax, 0x1
	shl eax, cl
	test eax, 0x70210
	jz Item_SetTextExtents_140
	mov eax, [ebx+0x10c]
	mov [esp], eax
	call Cvar_GetVariantString
	mov edx, [ebx+0xd0]
	mov [esp+0xc], edx
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call UI_TextWidth
	cvtsi2ss xmm0, eax
	movss xmm1, dword [ebp-0x40]
	subss xmm1, xmm0
	movss [ebp-0x40], xmm1
	jmp Item_SetTextExtents_140
Item_SetTextExtents_130:
	mov eax, [ebx+0xd0]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov eax, [ebx+0x40]
	mov [esp], eax
	call UI_OwnerDrawWidth
	cvtsi2ss xmm0, eax
	movss xmm1, dword [ebp-0x40]
	subss xmm1, xmm0
	movss [ebp-0x40], xmm1
Item_SetTextExtents_140:
	cmp dword [ebp-0x3c], 0x1
	jz Item_SetTextExtents_150
	movss xmm1, dword [ebp-0x40]
Item_SetTextExtents_180:
	addss xmm1, [ebp-0x30]
	movss [ebp-0x30], xmm1
	movss xmm0, dword [ebp-0x24]
	jmp Item_SetTextExtents_160
Item_SetTextExtents_70:
	addss xmm0, xmm2
	mulss xmm0, [_float_0_50000000]
Item_SetTextExtents_60:
	addss xmm1, xmm0
	movss [ebp-0x2c], xmm1
	mov eax, [ebx+0x3c]
	test eax, eax
	jz Item_SetTextExtents_80
	jmp Item_SetTextExtents_170
Item_SetTextExtents_150:
	movss xmm0, dword [ebp-0x40]
	mulss xmm0, [_float_0_50000000]
	movss [ebp-0x40], xmm0
	movaps xmm1, xmm0
	jmp Item_SetTextExtents_180


;Item_Text_Paint(UiContext*, itemDef_s*)
Item_Text_Paint:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4bc
	mov esi, [ebp+0xc]
	mov eax, [esi+0xe4]
	shr eax, 1
	and eax, 0x1
	mov [ebp-0x465], al
	mov [ebp-0x459], al
	test al, al
	jz Item_Text_Paint_10
	mov dword [esi+0xe0], _cstring_not_using_cinema
Item_Text_Paint_10:
	mov eax, [esi+0xe0]
	mov [ebp-0x464], eax
	test eax, eax
	jz Item_Text_Paint_20
Item_Text_Paint_320:
	mov ecx, eax
	cmp byte [ecx], 0x40
	jz Item_Text_Paint_30
Item_Text_Paint_250:
	mov ebx, ecx
Item_Text_Paint_260:
	cmp byte [ebx], 0x0
	jz Item_Text_Paint_40
	mov edi, [esi+0xe8]
	mov eax, [ebp+0x8]
	mov edx, [eax]
	mov ecx, [esi+edx*4+0x50]
	movss xmm0, dword [edi+0xbc]
	movss xmm1, dword [edi+0xb8]
	mov ebx, [edi+0xb0]
	movss xmm2, dword [edi+0xb4]
	test cl, 0x30
	jnz Item_Text_Paint_50
Item_Text_Paint_140:
	mov [esp+0x8], ecx
	mov [esp+0x4], esi
	mov [esp], edx
	call Window_SetDynamicFlags
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov eax, [esi+eax*4+0x50]
	test al, 0x4
	jz Item_Text_Paint_60
	test al, 0x2
	jnz Item_Text_Paint_70
Item_Text_Paint_60:
	cmp dword [esi+0xd4], 0x1
	jz Item_Text_Paint_80
Item_Text_Paint_180:
	lea edx, [esi+0x58]
	mov eax, [esi+0x58]
	mov [ebp-0x28], eax
	mov eax, [edx+0x4]
	mov [ebp-0x24], eax
	mov eax, [edx+0x8]
	mov [ebp-0x20], eax
	mov eax, [edx+0xc]
	mov [ebp-0x1c], eax
Item_Text_Paint_220:
	mov eax, [esi+0x118]
	test eax, eax
	jz Item_Text_Paint_90
	cmp byte [eax], 0x0
	jz Item_Text_Paint_90
	mov eax, [esi+0x110]
	test eax, eax
	jz Item_Text_Paint_90
	cmp byte [eax], 0x0
	jnz Item_Text_Paint_100
Item_Text_Paint_90:
	mov ecx, [ebp-0x464]
	mov edx, esi
	mov ebx, [ebp+0x8]
	mov eax, [ebx]
	call Item_SetTextExtents
	test byte [esi+0x4e], 0x80
	jz Item_Text_Paint_110
	mov eax, [ebp+0x8]
	mov ebx, [eax]
	movzx edx, byte [ebp-0x459]
	mov [ebp-0x458], dl
	lea ecx, [esi+0x4]
	mov [ebp-0x43c], ecx
	mov eax, ebx
	shl eax, 0x6
	lea edi, [eax+ebx*4]
	add edi, scrPlaceView
	mov eax, [esi+0xd0]
	mov [esp+0x8], eax
	mov eax, [esi+0xc0]
	mov [esp+0x4], eax
	mov [esp], edi
	call UI_GetFontHandle
	mov edx, eax
	movss xmm2, dword [esi+0xc8]
	movss xmm1, dword [esi+0xcc]
	mov eax, [esi+0x3c]
	test eax, eax
	jnz Item_Text_Paint_120
	movaps xmm0, xmm2
	addss xmm0, [esi+0x4]
	mov eax, [ebp-0x43c]
	addss xmm1, [eax+0x4]
	cmp byte [ebp-0x458], 0x0
	jnz Item_Text_Paint_130
Item_Text_Paint_270:
	mov ecx, eax
	movss xmm2, dword [esi+0xd0]
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x0
	lea eax, [ebx+ebx*2]
	lea eax, [esi+eax*8+0x9c]
	mov [esp+0x10], eax
	mov eax, [esi+0xc4]
	mov [esp+0xc], eax
	mov eax, [esi+0xd4]
	mov [esp+0x8], eax
	lea ebx, [ebp-0x28]
	mov [esp+0x4], ebx
	mov [esp], edx
	mov edx, [ebp-0x464]
	mov eax, edi
	call _DrawWrappedText
Item_Text_Paint_40:
	add esp, 0x4bc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Item_Text_Paint_50:
	mov eax, [eax+0x8]
	mov [ebp-0x484], eax
	cmp eax, [esi+0x54]
	jle Item_Text_Paint_140
	lea eax, [ebx+eax]
	mov [esi+0x54], eax
	test cl, 0x10
	jz Item_Text_Paint_150
	movss xmm0, dword [esi+0x64]
	subss xmm0, xmm1
	movss [esi+0x64], xmm0
	ucomiss xmm0, [_float_0_00000000]
	jbe Item_Text_Paint_160
Item_Text_Paint_340:
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	jmp Item_Text_Paint_140
Item_Text_Paint_80:
	mov ebx, [ebp+0x8]
	mov ecx, [ebx+0x8]
	mov edx, ecx
	test ecx, ecx
	js Item_Text_Paint_170
Item_Text_Paint_330:
	and dh, 0x1
	jnz Item_Text_Paint_180
	movss xmm0, dword [_float_0_80000001]
	movss xmm1, dword [esi+0x58]
	mulss xmm1, xmm0
	movss [ebp-0x38], xmm1
	movss xmm1, dword [esi+0x5c]
	mulss xmm1, xmm0
	movss [ebp-0x34], xmm1
	movss xmm1, dword [esi+0x60]
	mulss xmm1, xmm0
	movss [ebp-0x30], xmm1
	mulss xmm0, [esi+0x64]
	movss [ebp-0x2c], xmm0
	mov edx, 0x1b4e81b5
	mov eax, ecx
	imul edx
	sar edx, 0x3
	mov eax, ecx
	sar eax, 0x1f
	sub edx, eax
	cvtsi2ss xmm0, edx
	movss [esp], xmm0
	call sinf
	fstp dword [ebp-0x47c]
	movss xmm2, dword [ebp-0x47c]
	movss xmm0, dword [_float_0_50000000]
	mulss xmm2, xmm0
	addss xmm2, xmm0
	lea edx, [esi+0x58]
	mov [ebp-0x480], edx
	mov edx, 0x1
	pxor xmm4, xmm4
	lea ebx, [ebp-0x38]
	movss xmm3, dword [_float_1_00000000]
Item_Text_Paint_210:
	lea eax, [edx*4]
	mov ecx, [ebp-0x480]
	movss xmm0, dword [eax+ecx-0x4]
	movss xmm1, dword [ebx+eax-0x4]
	subss xmm1, xmm0
	mulss xmm1, xmm2
	addss xmm1, xmm0
	lea ecx, [ebp-0x28]
	add eax, ecx
	movss [eax-0x4], xmm1
	ucomiss xmm4, xmm1
	ja Item_Text_Paint_190
	ucomiss xmm1, xmm3
	jbe Item_Text_Paint_200
	mov dword [eax-0x4], 0x3f800000
Item_Text_Paint_200:
	add edx, 0x1
	cmp edx, 0x5
	jnz Item_Text_Paint_210
	jmp Item_Text_Paint_220
Item_Text_Paint_110:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	lea edx, [eax+eax*2]
	lea edi, [esi+edx*8+0x90]
	lea ecx, [edi+0xc]
	mov [ebp-0x460], ecx
	lea ebx, [esi+0x4]
	mov edx, [esi+0xd0]
	mov [esp+0x8], edx
	mov edx, [esi+0xc0]
	mov [esp+0x4], edx
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4]
	mov edx, scrPlaceView
	mov [ebp-0x46c], edx
	add eax, edx
	mov [esp], eax
	call UI_GetFontHandle
	mov edx, eax
	cmp byte [ebp-0x465], 0x0
	jnz Item_Text_Paint_230
	mov eax, [esi+0xd4]
	mov [esp+0x28], eax
	lea ecx, [ebp-0x28]
	mov [esp+0x24], ecx
	mov eax, [esi+0xd0]
	mov [esp+0x20], eax
	mov eax, [ebx+0x14]
	mov [esp+0x1c], eax
	mov eax, [ebx+0x10]
	mov [esp+0x18], eax
	mov ebx, [ebp-0x460]
	mov eax, [ebx+0x4]
	mov [esp+0x14], eax
	mov eax, [edi+0xc]
	mov [esp+0x10], eax
	mov [esp+0xc], edx
	mov dword [esp+0x8], 0x7fffffff
	mov eax, [ebp-0x464]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4]
	add eax, [ebp-0x46c]
	mov [esp], eax
	call UI_DrawText
	add esp, 0x4bc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Item_Text_Paint_20:
	mov eax, [esi+0x13c]
	test eax, eax
	jnz Item_Text_Paint_240
	mov eax, [esi+0x10c]
	test eax, eax
	jz Item_Text_Paint_40
	mov [esp], eax
	call Cvar_GetVariantString
	mov dword [esp+0x8], 0x400
	mov [esp+0x4], eax
	lea ebx, [ebp-0x438]
	mov [esp], ebx
	call Q_strncpyz
	mov [ebp-0x464], ebx
	mov ecx, ebx
	cmp byte [ecx], 0x40
	jnz Item_Text_Paint_250
Item_Text_Paint_30:
	mov eax, ecx
	add eax, 0x1
	mov [esp], eax
	call UI_SafeTranslateString
	mov [ebp-0x464], eax
	mov ebx, eax
	jmp Item_Text_Paint_260
Item_Text_Paint_130:
	movss xmm2, dword [esi+0xd0]
	movzx eax, byte [ebp-0x458]
	and eax, 0x1
	mov [esp+0x1c], eax
	mov dword [esp+0x18], _ZZ15Item_Text_PaintP9UiContextP9itemDef_sE21MY_SUBTITLE_GLOWCOLOR
	mov dword [esp+0x14], 0x1
	lea eax, [ebx+ebx*2]
	lea eax, [esi+eax*8+0x9c]
	mov [esp+0x10], eax
	mov eax, [esi+0xc4]
	mov [esp+0xc], eax
	mov eax, [esi+0xd4]
	mov [esp+0x8], eax
	lea ecx, [ebp-0x28]
	mov [esp+0x4], ecx
	mov [esp], edx
	mov ecx, [ebp-0x43c]
	mov edx, [ebp-0x464]
	mov eax, edi
	call _DrawWrappedText
	add esp, 0x4bc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Item_Text_Paint_230:
	movzx eax, byte [ebp-0x459]
	mov [esp+0x34], eax
	mov dword [esp+0x30], 0x1
	mov dword [esp+0x2c], _ZZ15Item_Text_PaintP9UiContextP9itemDef_sE21MY_SUBTITLE_GLOWCOLOR
	mov eax, [esi+0xd4]
	mov [esp+0x28], eax
	lea ecx, [ebp-0x28]
	mov [esp+0x24], ecx
	mov eax, [esi+0xd0]
	mov [esp+0x20], eax
	mov eax, [ebx+0x14]
	mov [esp+0x1c], eax
	mov eax, [ebx+0x10]
	mov [esp+0x18], eax
	mov ebx, [ebp-0x460]
	mov eax, [ebx+0x4]
	mov [esp+0x14], eax
	mov eax, [edi+0xc]
	mov [esp+0x10], eax
	mov [esp+0xc], edx
	mov dword [esp+0x8], 0x7fffffff
	mov eax, [ebp-0x464]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4]
	add eax, [ebp-0x46c]
	mov [esp], eax
	call UI_DrawTextWithGlow
	add esp, 0x4bc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Item_Text_Paint_120:
	movss xmm0, dword [esi+0x48]
	addss xmm2, xmm0
	addss xmm1, xmm0
	movaps xmm0, xmm2
	addss xmm0, [esi+0x4]
	mov eax, [ebp-0x43c]
	addss xmm1, [eax+0x4]
	cmp byte [ebp-0x458], 0x0
	jnz Item_Text_Paint_130
	jmp Item_Text_Paint_270
Item_Text_Paint_100:
	test byte [esi+0x11c], 0x3
	jz Item_Text_Paint_90
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call Item_EnableShowViaDvar
	test eax, eax
	jnz Item_Text_Paint_90
	lea edx, [edi+0xf8]
	mov eax, [edi+0xf8]
	mov [ebp-0x28], eax
	mov eax, [edx+0x4]
	mov [ebp-0x24], eax
	mov eax, [edx+0x8]
	mov [ebp-0x20], eax
	mov eax, [edx+0xc]
	mov [ebp-0x1c], eax
	jmp Item_Text_Paint_90
Item_Text_Paint_70:
	movss xmm0, dword [_float_0_80000001]
	movss xmm1, dword [edi+0xe8]
	mulss xmm1, xmm0
	movss [ebp-0x38], xmm1
	movss xmm1, dword [edi+0xec]
	mulss xmm1, xmm0
	movss [ebp-0x34], xmm1
	movss xmm1, dword [edi+0xf0]
	mulss xmm1, xmm0
	movss [ebp-0x30], xmm1
	mulss xmm0, [edi+0xf4]
	movss [ebp-0x2c], xmm0
	mov ecx, [edx+0x8]
	mov edx, 0x1b4e81b5
	mov eax, ecx
	imul edx
	sar edx, 0x3
	mov eax, ecx
	sar eax, 0x1f
	sub edx, eax
	cvtsi2ss xmm0, edx
	movss [esp], xmm0
	call sinf
	fstp dword [ebp-0x47c]
	movss xmm2, dword [ebp-0x47c]
	movss xmm0, dword [_float_0_50000000]
	mulss xmm2, xmm0
	addss xmm2, xmm0
	lea edx, [edi+0xe8]
	mov [ebp-0x480], edx
	mov edx, 0x1
	pxor xmm4, xmm4
	lea ebx, [ebp-0x38]
	movss xmm3, dword [_float_1_00000000]
Item_Text_Paint_300:
	lea eax, [edx*4]
	mov ecx, [ebp-0x480]
	movss xmm0, dword [ecx+eax-0x4]
	movss xmm1, dword [ebx+eax-0x4]
	subss xmm1, xmm0
	mulss xmm1, xmm2
	addss xmm1, xmm0
	lea ecx, [ebp-0x28]
	lea eax, [ecx+eax]
	movss [eax-0x4], xmm1
	ucomiss xmm4, xmm1
	ja Item_Text_Paint_280
	ucomiss xmm1, xmm3
	jbe Item_Text_Paint_290
	mov dword [eax-0x4], 0x3f800000
Item_Text_Paint_290:
	add edx, 0x1
	cmp edx, 0x5
	jnz Item_Text_Paint_300
	jmp Item_Text_Paint_220
Item_Text_Paint_190:
	mov dword [eax-0x4], 0x0
	jmp Item_Text_Paint_200
Item_Text_Paint_280:
	mov dword [eax-0x4], 0x0
	jmp Item_Text_Paint_290
Item_Text_Paint_150:
	addss xmm0, [esi+0x64]
	movss [esi+0x64], xmm0
	ucomiss xmm0, xmm2
	jae Item_Text_Paint_310
	mov eax, [ebp+0x8]
	mov edx, [eax]
	jmp Item_Text_Paint_140
Item_Text_Paint_240:
	lea eax, [esi+0x13c]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp], eax
	call GetExpressionResultString
	mov [ebp-0x464], eax
	jmp Item_Text_Paint_320
Item_Text_Paint_170:
	lea edx, [ecx+0xff]
	jmp Item_Text_Paint_330
Item_Text_Paint_310:
	movss [esi+0x64], xmm2
	and ecx, 0xffffffdf
	mov eax, [ebp+0x8]
	mov edx, [eax]
	jmp Item_Text_Paint_140
Item_Text_Paint_160:
	jp Item_Text_Paint_340
	and ecx, 0xffffffeb
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	jmp Item_Text_Paint_140


;Item_OwnerDraw_Paint(UiContext*, itemDef_s*)
Item_OwnerDraw_Paint:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x12c
	mov [ebp-0x9c], eax
	mov [ebp-0xa0], edx
	mov edi, [edx+0xe8]
	mov ebx, [eax]
	mov edx, [edx+ebx*4+0x50]
	movss xmm0, dword [edi+0xbc]
	movss xmm1, dword [edi+0xb8]
	mov ecx, [edi+0xb0]
	movss xmm2, dword [edi+0xb4]
	test dl, 0x30
	jz Item_OwnerDraw_Paint_10
	mov esi, [ebp-0x9c]
	mov eax, [esi+0x8]
	mov esi, [ebp-0xa0]
	cmp eax, [esi+0x54]
	jg Item_OwnerDraw_Paint_20
Item_OwnerDraw_Paint_110:
	mov [esp+0x8], edx
	mov [esp+0x4], esi
	mov [esp], ebx
	call Window_SetDynamicFlags
	mov esi, [ebp-0xa0]
	add esi, 0x58
	mov edx, [ebp-0xa0]
	mov eax, [edx+0x58]
	mov [ebp-0x28], eax
	mov eax, [esi+0x4]
	mov [ebp-0x24], eax
	mov eax, [esi+0x8]
	mov [ebp-0x20], eax
	mov eax, [esi+0xc]
	mov [ebp-0x1c], eax
	mov ecx, [ebp-0x9c]
	mov ebx, [ecx]
	mov eax, [edx+ebx*4+0x50]
	test al, 0x4
	jz Item_OwnerDraw_Paint_30
	test al, 0x2
	jnz Item_OwnerDraw_Paint_40
	mov eax, [ebp-0xa0]
	cmp dword [eax+0xd4], 0x1
	jz Item_OwnerDraw_Paint_50
Item_OwnerDraw_Paint_120:
	mov esi, [ebp-0xa0]
	test byte [esi+0x11c], 0x3
	jnz Item_OwnerDraw_Paint_60
	mov ecx, esi
Item_OwnerDraw_Paint_190:
	add ecx, 0x4
	mov [ebp-0x98], ecx
	mov esi, [ebp-0xa0]
	mov eax, [esi+0xd0]
	mov [esp+0x8], eax
	mov eax, [esi+0xc0]
	mov [esp+0x4], eax
	mov eax, ebx
	shl eax, 0x6
	lea eax, [eax+ebx*4]
	add eax, scrPlaceView
	mov [esp], eax
	call UI_GetFontHandle
	mov [ebp-0x90], eax
	mov eax, [esi+0xe0]
	test eax, eax
	jz Item_OwnerDraw_Paint_70
	mov [esp+0x4], esi
	mov eax, [ebp-0x9c]
	mov [esp], eax
	call Item_Text_Paint
	mov edx, [ebp-0x9c]
	mov edx, [edx]
	mov [ebp-0x8c], edx
	lea eax, [edx+edx*2]
	lea eax, [esi+eax*8+0x90]
	mov [ebp-0xa4], eax
	add eax, 0xc
	mov [ebp-0x94], eax
	mov eax, [esi+0xe0]
	cmp byte [eax], 0x0
	jz Item_OwnerDraw_Paint_80
	mov ecx, [esi+0xc4]
	mov [ebp-0xac], ecx
	mov eax, [esi+0xe8]
	mov edi, [eax+0x4]
	mov [ebp-0x80], edi
	mov esi, [eax+0x8]
	mov [ebp-0x7c], esi
	mov ebx, [eax+0xc]
	mov [ebp-0x78], ebx
	mov ecx, [eax+0x10]
	mov [ebp-0x74], ecx
	mov edx, [eax+0x14]
	mov [ebp-0x70], edx
	mov eax, [eax+0x18]
	mov [esp+0x5c], eax
	mov [ebp-0x6c], eax
	mov eax, [ebp-0xac]
	mov [esp+0x60], eax
	mov [esp+0x48], edi
	mov [esp+0x4c], esi
	mov [esp+0x50], ebx
	mov [esp+0x54], ecx
	mov [esp+0x58], edx
	mov edx, [ebp-0xa0]
	mov eax, [edx+0xd4]
	mov [esp+0x44], eax
	mov eax, [edx+0x98]
	mov [esp+0x40], eax
	lea ecx, [ebp-0x28]
	mov [esp+0x3c], ecx
	mov eax, [edx+0xd0]
	mov [esp+0x38], eax
	mov esi, [ebp-0x90]
	mov [esp+0x34], esi
	mov eax, [edx+0x124]
	mov [esp+0x30], eax
	mov eax, [edx+0xbc]
	mov [esp+0x2c], eax
	mov eax, [edx+0x44]
	mov [esp+0x28], eax
	mov eax, [edx+0x40]
	mov [esp+0x24], eax
	mov eax, [edx+0xcc]
	mov [esp+0x20], eax
	mov dword [esp+0x1c], 0x0
	mov edx, [ebp-0x98]
	mov eax, [edx+0x14]
	mov [esp+0x18], eax
	mov eax, [edx+0x10]
	mov [esp+0x14], eax
	mov eax, [edx+0xc]
	mov [esp+0x10], eax
	mov eax, [edx+0x8]
	mov [esp+0xc], eax
	mov eax, [edx+0x4]
	mov [esp+0x8], eax
	mov ecx, [ebp-0xa4]
	movss xmm0, dword [ecx+0xc]
	mov esi, [ebp-0x94]
	addss xmm0, [esi+0x8]
	addss xmm0, [_float_8_00000000]
Item_OwnerDraw_Paint_170:
	movss [esp+0x4], xmm0
	mov eax, [ebp-0x8c]
	mov [esp], eax
	call UI_OwnerDraw
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Item_OwnerDraw_Paint_20:
	lea eax, [ecx+eax]
	mov [esi+0x54], eax
	test dl, 0x10
	jz Item_OwnerDraw_Paint_90
	movss xmm0, dword [esi+0x64]
	subss xmm0, xmm1
	movss [esi+0x64], xmm0
	ucomiss xmm0, [_float_0_00000000]
	jbe Item_OwnerDraw_Paint_100
Item_OwnerDraw_Paint_250:
	mov eax, [ebp-0x9c]
	mov ebx, [eax]
Item_OwnerDraw_Paint_10:
	mov esi, [ebp-0xa0]
	jmp Item_OwnerDraw_Paint_110
Item_OwnerDraw_Paint_30:
	mov eax, edx
	cmp dword [eax+0xd4], 0x1
	jnz Item_OwnerDraw_Paint_120
Item_OwnerDraw_Paint_50:
	mov edx, [ebp-0x9c]
	mov ecx, [edx+0x8]
	mov edx, ecx
	test ecx, ecx
	js Item_OwnerDraw_Paint_130
Item_OwnerDraw_Paint_240:
	and dh, 0x1
	jnz Item_OwnerDraw_Paint_120
	movss xmm0, dword [_float_0_80000001]
	mov eax, [ebp-0xa0]
	movss xmm1, dword [eax+0x58]
	mulss xmm1, xmm0
	movss [ebp-0x38], xmm1
	movss xmm1, dword [eax+0x5c]
	mulss xmm1, xmm0
	movss [ebp-0x34], xmm1
	movss xmm1, dword [eax+0x60]
	mulss xmm1, xmm0
	movss [ebp-0x30], xmm1
	mulss xmm0, [eax+0x64]
	movss [ebp-0x2c], xmm0
	mov edx, 0x1b4e81b5
	mov eax, ecx
	imul edx
	sar edx, 0x3
	mov eax, ecx
	sar eax, 0x1f
	sub edx, eax
	cvtsi2ss xmm0, edx
	movss [esp], xmm0
	call sinf
	fstp dword [ebp-0xbc]
	movss xmm2, dword [ebp-0xbc]
	movss xmm0, dword [_float_0_50000000]
	mulss xmm2, xmm0
	addss xmm2, xmm0
	mov edx, 0x1
	pxor xmm4, xmm4
	movss xmm3, dword [_float_1_00000000]
Item_OwnerDraw_Paint_160:
	movss xmm0, dword [esi+edx*4-0x4]
	lea eax, [edx*4]
	movss xmm1, dword [ebp+eax-0x3c]
	subss xmm1, xmm0
	mulss xmm1, xmm2
	addss xmm1, xmm0
	lea ecx, [ebp-0x28]
	lea eax, [ecx+eax]
	movss [eax-0x4], xmm1
	ucomiss xmm4, xmm1
	ja Item_OwnerDraw_Paint_140
	ucomiss xmm1, xmm3
	jbe Item_OwnerDraw_Paint_150
	mov dword [eax-0x4], 0x3f800000
Item_OwnerDraw_Paint_150:
	add edx, 0x1
	cmp edx, 0x5
	jnz Item_OwnerDraw_Paint_160
	jmp Item_OwnerDraw_Paint_120
Item_OwnerDraw_Paint_80:
	mov edx, [ebp-0xa0]
	mov edx, [edx+0xc4]
	mov [ebp-0xb0], edx
	mov ecx, [ebp-0xa0]
	mov eax, [ecx+0xe8]
	mov edi, [eax+0x4]
	mov [ebp-0x68], edi
	mov esi, [eax+0x8]
	mov [ebp-0x64], esi
	mov ebx, [eax+0xc]
	mov [ebp-0x60], ebx
	mov ecx, [eax+0x10]
	mov [ebp-0x5c], ecx
	mov edx, [eax+0x14]
	mov [ebp-0x58], edx
	mov eax, [eax+0x18]
	mov [esp+0x5c], eax
	mov [ebp-0x54], eax
	mov eax, [ebp-0xb0]
	mov [esp+0x60], eax
	mov [esp+0x48], edi
	mov [esp+0x4c], esi
	mov [esp+0x50], ebx
	mov [esp+0x54], ecx
	mov [esp+0x58], edx
	mov edx, [ebp-0xa0]
	mov eax, [edx+0xd4]
	mov [esp+0x44], eax
	mov eax, [edx+0x98]
	mov [esp+0x40], eax
	lea ecx, [ebp-0x28]
	mov [esp+0x3c], ecx
	mov eax, [edx+0xd0]
	mov [esp+0x38], eax
	mov esi, [ebp-0x90]
	mov [esp+0x34], esi
	mov eax, [edx+0x124]
	mov [esp+0x30], eax
	mov eax, [edx+0xbc]
	mov [esp+0x2c], eax
	mov eax, [edx+0x44]
	mov [esp+0x28], eax
	mov eax, [edx+0x40]
	mov [esp+0x24], eax
	mov eax, [edx+0xcc]
	mov [esp+0x20], eax
	mov dword [esp+0x1c], 0x0
	mov edx, [ebp-0x98]
	mov eax, [edx+0x14]
	mov [esp+0x18], eax
	mov eax, [edx+0x10]
	mov [esp+0x14], eax
	mov eax, [edx+0xc]
	mov [esp+0x10], eax
	mov eax, [edx+0x8]
	mov [esp+0xc], eax
	mov eax, [edx+0x4]
	mov [esp+0x8], eax
	mov ecx, [ebp-0xa4]
	movss xmm0, dword [ecx+0xc]
	mov esi, [ebp-0x94]
	addss xmm0, [esi+0x8]
	jmp Item_OwnerDraw_Paint_170
Item_OwnerDraw_Paint_60:
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call Item_EnableShowViaDvar
	test eax, eax
	jz Item_OwnerDraw_Paint_180
	mov edx, [ebp-0x9c]
	mov ebx, [edx]
	mov ecx, [ebp-0xa0]
	jmp Item_OwnerDraw_Paint_190
Item_OwnerDraw_Paint_40:
	movss xmm0, dword [_float_0_80000001]
	movss xmm1, dword [edi+0xe8]
	mulss xmm1, xmm0
	movss [ebp-0x38], xmm1
	movss xmm1, dword [edi+0xec]
	mulss xmm1, xmm0
	movss [ebp-0x34], xmm1
	movss xmm1, dword [edi+0xf0]
	mulss xmm1, xmm0
	movss [ebp-0x30], xmm1
	mulss xmm0, [edi+0xf4]
	movss [ebp-0x2c], xmm0
	mov ecx, [ecx+0x8]
	mov edx, 0x1b4e81b5
	mov eax, ecx
	imul edx
	sar edx, 0x3
	mov eax, ecx
	sar eax, 0x1f
	sub edx, eax
	cvtsi2ss xmm0, edx
	movss [esp], xmm0
	call sinf
	fstp dword [ebp-0xbc]
	movss xmm2, dword [ebp-0xbc]
	movss xmm0, dword [_float_0_50000000]
	mulss xmm2, xmm0
	addss xmm2, xmm0
	lea ecx, [edi+0xe8]
	mov edx, 0x1
	pxor xmm4, xmm4
	movss xmm3, dword [_float_1_00000000]
Item_OwnerDraw_Paint_220:
	movss xmm0, dword [ecx+edx*4-0x4]
	lea eax, [edx*4]
	movss xmm1, dword [ebp+eax-0x3c]
	subss xmm1, xmm0
	mulss xmm1, xmm2
	addss xmm1, xmm0
	lea esi, [ebp-0x28]
	lea eax, [esi+eax]
	movss [eax-0x4], xmm1
	ucomiss xmm4, xmm1
	ja Item_OwnerDraw_Paint_200
	ucomiss xmm1, xmm3
	jbe Item_OwnerDraw_Paint_210
	mov dword [eax-0x4], 0x3f800000
Item_OwnerDraw_Paint_210:
	add edx, 0x1
	cmp edx, 0x5
	jnz Item_OwnerDraw_Paint_220
	jmp Item_OwnerDraw_Paint_120
Item_OwnerDraw_Paint_90:
	mov ecx, [ebp-0xa0]
	addss xmm0, [ecx+0x64]
	movss [ecx+0x64], xmm0
	ucomiss xmm0, xmm2
	jb Item_OwnerDraw_Paint_230
	movss [ecx+0x64], xmm2
	and edx, 0xffffffdf
	mov esi, [ebp-0x9c]
	mov ebx, [esi]
	mov esi, [ebp-0xa0]
	jmp Item_OwnerDraw_Paint_110
Item_OwnerDraw_Paint_130:
	lea edx, [ecx+0xff]
	jmp Item_OwnerDraw_Paint_240
Item_OwnerDraw_Paint_70:
	mov edx, [ebp-0xa0]
	mov edx, [edx+0xc4]
	mov [ebp-0xb4], edx
	mov ecx, [ebp-0xa0]
	mov eax, [ecx+0xe8]
	mov edi, [eax+0x4]
	mov [ebp-0x50], edi
	mov esi, [eax+0x8]
	mov [ebp-0x4c], esi
	mov ebx, [eax+0xc]
	mov [ebp-0x48], ebx
	mov ecx, [eax+0x10]
	mov [ebp-0x44], ecx
	mov edx, [eax+0x14]
	mov [ebp-0x40], edx
	mov eax, [eax+0x18]
	mov [esp+0x5c], eax
	mov [ebp-0x3c], eax
	mov eax, [ebp-0xb4]
	mov [esp+0x60], eax
	mov [esp+0x48], edi
	mov [esp+0x4c], esi
	mov [esp+0x50], ebx
	mov [esp+0x54], ecx
	mov [esp+0x58], edx
	mov edx, [ebp-0xa0]
	mov eax, [edx+0xd4]
	mov [esp+0x44], eax
	mov eax, [edx+0x98]
	mov [esp+0x40], eax
	lea ecx, [ebp-0x28]
	mov [esp+0x3c], ecx
	mov eax, [edx+0xd0]
	mov [esp+0x38], eax
	mov esi, [ebp-0x90]
	mov [esp+0x34], esi
	mov eax, [edx+0x124]
	mov [esp+0x30], eax
	mov eax, [edx+0xbc]
	mov [esp+0x2c], eax
	mov eax, [edx+0x44]
	mov [esp+0x28], eax
	mov eax, [edx+0x40]
	mov [esp+0x24], eax
	mov eax, [edx+0xcc]
	mov [esp+0x20], eax
	mov eax, [edx+0xc8]
	mov [esp+0x1c], eax
	mov edx, [ebp-0x98]
	mov eax, [edx+0x14]
	mov [esp+0x18], eax
	mov eax, [edx+0x10]
	mov [esp+0x14], eax
	mov eax, [edx+0xc]
	mov [esp+0x10], eax
	mov eax, [edx+0x8]
	mov [esp+0xc], eax
	mov eax, [edx+0x4]
	mov [esp+0x8], eax
	mov ecx, [ebp-0xa0]
	mov eax, [ecx+0x4]
	mov [esp+0x4], eax
	mov esi, [ebp-0x9c]
	mov eax, [esi]
	mov [esp], eax
	call UI_OwnerDraw
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Item_OwnerDraw_Paint_200:
	mov dword [eax-0x4], 0x0
	jmp Item_OwnerDraw_Paint_210
Item_OwnerDraw_Paint_140:
	mov dword [eax-0x4], 0x0
	jmp Item_OwnerDraw_Paint_150
Item_OwnerDraw_Paint_180:
	lea edx, [edi+0xf8]
	mov eax, [edi+0xf8]
	mov [ebp-0x28], eax
	mov eax, [edx+0x4]
	mov [ebp-0x24], eax
	mov eax, [edx+0x8]
	mov [ebp-0x20], eax
	mov eax, [edx+0xc]
	mov [ebp-0x1c], eax
	mov eax, [ebp-0x9c]
	mov ebx, [eax]
	mov ecx, [ebp-0xa0]
	jmp Item_OwnerDraw_Paint_190
Item_OwnerDraw_Paint_230:
	mov ecx, [ebp-0x9c]
	mov ebx, [ecx]
	mov esi, [ebp-0xa0]
	jmp Item_OwnerDraw_Paint_110
Item_OwnerDraw_Paint_100:
	jp Item_OwnerDraw_Paint_250
	and edx, 0xffffffeb
	jmp Item_OwnerDraw_Paint_250
	nop


;Item_ListBox_ThumbPosition(int, itemDef_s*)
Item_ListBox_ThumbPosition:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov [ebp-0x1c], eax
	mov esi, edx
	mov [esp], edx
	call Item_GetListBoxDef
	mov edi, eax
	pxor xmm1, xmm1
	test eax, eax
	jz Item_ListBox_ThumbPosition_10
	mov eax, [esi+0x124]
	mov [esp+0x4], eax
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call UI_FeederCount
	mov ebx, eax
	mov [esp], esi
	call Item_ListBox_Viewmax
	sub ebx, eax
	lea edx, [ebx+0x1]
	test edx, edx
	mov eax, 0x0
	cmovle edx, eax
	lea eax, [esi+0x4]
	test byte [esi+0x4e], 0x20
	jnz Item_ListBox_ThumbPosition_20
	movss xmm0, dword [eax+0xc]
	subss xmm0, [_float_32_00000000]
	subss xmm0, [_float_2_00000000]
	test edx, edx
	jle Item_ListBox_ThumbPosition_30
	movss xmm3, dword [_float_16_00000000]
	movaps xmm2, xmm0
	subss xmm2, xmm3
	cvtsi2ss xmm0, edx
	divss xmm2, xmm0
Item_ListBox_ThumbPosition_60:
	mov edx, [ebp-0x1c]
	cvtsi2ss xmm1, dword [edi+edx*4+0x4]
	mulss xmm1, xmm2
	movss xmm0, dword [_float_1_00000000]
	addss xmm0, [eax+0x4]
	addss xmm0, xmm3
	addss xmm1, xmm0
Item_ListBox_ThumbPosition_10:
	movaps xmm0, xmm1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Item_ListBox_ThumbPosition_20:
	movss xmm0, dword [eax+0x8]
	subss xmm0, [_float_32_00000000]
	subss xmm0, [_float_2_00000000]
	test edx, edx
	jle Item_ListBox_ThumbPosition_40
	movss xmm3, dword [_float_16_00000000]
	movaps xmm2, xmm0
	subss xmm2, xmm3
	cvtsi2ss xmm0, edx
	divss xmm2, xmm0
Item_ListBox_ThumbPosition_50:
	mov edx, [ebp-0x1c]
	cvtsi2ss xmm1, dword [edi+edx*4+0x4]
	mulss xmm1, xmm2
	movss xmm0, dword [_float_1_00000000]
	addss xmm0, [eax]
	addss xmm0, xmm3
	addss xmm1, xmm0
	movaps xmm0, xmm1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Item_ListBox_ThumbPosition_40:
	pxor xmm2, xmm2
	movss xmm3, dword [_float_16_00000000]
	jmp Item_ListBox_ThumbPosition_50
Item_ListBox_ThumbPosition_30:
	pxor xmm2, xmm2
	movss xmm3, dword [_float_16_00000000]
	jmp Item_ListBox_ThumbPosition_60
	nop


;Item_ListBox_HandleKey(UiContext*, itemDef_s*, int, int, int)
Item_ListBox_HandleKey:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov [ebp-0x5c], eax
	mov [ebp-0x60], edx
	mov [ebp-0x64], ecx
	mov edi, edx
	add edi, 0x4
	mov ecx, [eax+0x18]
	test ecx, ecx
	jnz Item_ListBox_HandleKey_10
Item_ListBox_HandleKey_110:
	xor ebx, ebx
Item_ListBox_HandleKey_120:
	mov eax, [ebp-0x60]
	mov [esp], eax
	call Item_GetListBoxDef
	mov [ebp-0x58], eax
	test eax, eax
	jz Item_ListBox_HandleKey_20
	mov edx, [ebp-0x60]
	mov eax, [edx+0x124]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x5c]
	mov eax, [ecx]
	mov [esp], eax
	call UI_FeederCount
	lea esi, [eax-0x1]
	test esi, esi
	mov eax, 0x0
	cmovle esi, eax
	mov edx, [ebp-0x5c]
	mov eax, [edx]
	mov ecx, [ebp-0x60]
	mov edi, [ecx+eax*4+0x50]
	mov edx, [ebp+0xc]
	test edx, edx
	jnz Item_ListBox_HandleKey_30
	test bl, bl
	jz Item_ListBox_HandleKey_20
	test edi, 0x2
	jz Item_ListBox_HandleKey_20
	mov ebx, [ebp-0x60]
Item_ListBox_HandleKey_230:
	mov [esp+0x4], ebx
	mov [esp], eax
	call UI_OverrideCursorPos
	mov eax, [ebx+0x124]
	mov [esp+0x4], eax
	mov edx, [ebp-0x5c]
	mov eax, [edx]
	mov [esp], eax
	call UI_FeederCount
	mov ebx, eax
	mov ecx, [ebp-0x60]
	mov [esp], ecx
	call Item_ListBox_Viewmax
	sub ebx, eax
	add ebx, 0x1
	test ebx, ebx
	mov eax, 0x0
	cmovle ebx, eax
	mov edx, [ebp-0x60]
	mov [esp], edx
	call Item_ListBox_Viewmax
	mov [ebp-0x54], eax
	mov ecx, [ebp-0x60]
	test byte [ecx+0x4e], 0x20
	jz Item_ListBox_HandleKey_40
	cmp dword [ebp-0x64], 0x9c
	jz Item_ListBox_HandleKey_50
	cmp dword [ebp-0x64], 0x9d
	jnz Item_ListBox_HandleKey_60
	mov eax, [ebp-0x58]
	mov eax, [eax+0x124]
	test eax, eax
	jnz Item_ListBox_HandleKey_70
	mov edx, [ebp-0x5c]
	mov ebx, [edx]
	mov ecx, [ebp-0x60]
	mov edi, [ecx+ebx*4+0x128]
	add edi, 0x1
	cmp esi, edi
	cmovle edi, esi
	mov [esp], ecx
	call Item_GetListBoxDef
	mov ecx, eax
	mov eax, [ebp-0x60]
	mov [eax+ebx*4+0x128], edi
	cmp edi, [ecx+ebx*4+0x4]
	jge Item_ListBox_HandleKey_80
	mov [ecx+ebx*4+0x4], edi
Item_ListBox_HandleKey_80:
	mov eax, edi
	sub eax, [ebp-0x54]
	cmp [ecx+ebx*4+0x4], eax
	jg Item_ListBox_HandleKey_90
	add eax, 0x1
	mov [ecx+ebx*4+0x4], eax
Item_ListBox_HandleKey_90:
	mov [esp+0x8], edi
	mov edx, [ebp-0x60]
	mov eax, [edx+0x124]
	mov [esp+0x4], eax
	mov [esp], ebx
	call UI_FeederSelection
	mov eax, 0x1
	jmp Item_ListBox_HandleKey_100
Item_ListBox_HandleKey_20:
	xor eax, eax
Item_ListBox_HandleKey_100:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Item_ListBox_HandleKey_10:
	mov ecx, edx
	mov esi, [eax+0x14]
	mov edx, [eax+0x10]
	mov ebx, [eax]
	mov eax, [ecx+0x4]
	mov [ebp-0x30], eax
	mov eax, [edi+0x4]
	mov [ebp-0x2c], eax
	mov eax, [edi+0x8]
	mov [ebp-0x28], eax
	mov eax, [edi+0xc]
	mov [ebp-0x24], eax
	mov eax, ebx
	shl eax, 0x6
	lea ebx, [eax+ebx*4]
	add ebx, scrPlaceView
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], edx
	mov [esp], ebx
	call ScrPlace_ApplyX
	fstp dword [ebp-0x50]
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], esi
	mov [esp], ebx
	call ScrPlace_ApplyY
	fstp dword [ebp-0x4c]
	mov eax, [edi+0x14]
	mov [esp+0x18], eax
	mov eax, [edi+0x10]
	mov [esp+0x14], eax
	lea edx, [ebp-0x30]
	lea eax, [ebp-0x24]
	mov [esp+0x10], eax
	lea eax, [ebp-0x28]
	mov [esp+0xc], eax
	lea eax, [ebp-0x2c]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ebx
	call ScrPlace_ApplyRect
	movss xmm0, dword [ebp-0x30]
	movss xmm1, dword [ebp-0x50]
	ucomiss xmm1, xmm0
	jb Item_ListBox_HandleKey_110
	addss xmm0, [ebp-0x28]
	ucomiss xmm0, xmm1
	jb Item_ListBox_HandleKey_110
	movss xmm0, dword [ebp-0x2c]
	movss xmm1, dword [ebp-0x4c]
	ucomiss xmm1, xmm0
	jb Item_ListBox_HandleKey_110
	addss xmm0, [ebp-0x24]
	ucomiss xmm0, xmm1
	jb Item_ListBox_HandleKey_110
	mov ebx, 0x1
	jmp Item_ListBox_HandleKey_120
Item_ListBox_HandleKey_40:
	cmp dword [ebp-0x64], 0x9b
	jz Item_ListBox_HandleKey_130
	jg Item_ListBox_HandleKey_140
	cmp dword [ebp-0x64], 0x9a
	jz Item_ListBox_HandleKey_150
Item_ListBox_HandleKey_60:
	mov eax, [ebp-0x64]
	sub eax, 0xc8
	cmp eax, 0x1
	jbe Item_ListBox_HandleKey_160
	cmp dword [ebp-0x64], 0xa5
	jz Item_ListBox_HandleKey_170
	cmp dword [ebp-0x64], 0xa6
	jz Item_ListBox_HandleKey_180
	cmp dword [ebp-0x64], 0xa4
	jz Item_ListBox_HandleKey_190
	cmp dword [ebp-0x64], 0xa3
	jz Item_ListBox_HandleKey_200
	mov ebx, [ebp-0x60]
	mov eax, [ebx+0x114]
	test eax, eax
	jz Item_ListBox_HandleKey_20
	mov ecx, [ebp-0x64]
	cmp ecx, [eax]
	jz Item_ListBox_HandleKey_210
Item_ListBox_HandleKey_220:
	mov eax, [eax+0x8]
	test eax, eax
	jz Item_ListBox_HandleKey_20
	mov edx, [ebp-0x64]
	cmp [eax], edx
	jnz Item_ListBox_HandleKey_220
Item_ListBox_HandleKey_210:
	mov ecx, [eax+0x4]
	mov edx, [ebp-0x60]
	mov eax, [ebp-0x5c]
	call Item_RunScript
Item_ListBox_HandleKey_390:
	mov eax, 0x1
	jmp Item_ListBox_HandleKey_100
Item_ListBox_HandleKey_30:
	mov ebx, ecx
	jmp Item_ListBox_HandleKey_230
Item_ListBox_HandleKey_130:
	mov eax, [ebp-0x5c]
	mov eax, [eax]
	mov [ebp-0x44], eax
	mov edx, [ebp-0x60]
	mov [esp], edx
	call Item_GetListBoxDef
	mov ecx, eax
	mov eax, [eax+0x124]
	test eax, eax
	jnz Item_ListBox_HandleKey_240
	mov ecx, [ebp-0x44]
	mov ebx, [ebp-0x60]
	mov edi, [ebx+ecx*4+0x128]
	add edi, 0x1
	cmp esi, edi
	cmovle edi, esi
	test edi, edi
	mov eax, 0x0
	cmovle edi, eax
	mov [esp], ebx
	call Item_GetListBoxDef
	mov ecx, eax
	mov eax, [ebp-0x44]
	mov [ebx+eax*4+0x128], edi
	cmp edi, [ecx+eax*4+0x4]
	jge Item_ListBox_HandleKey_250
	mov [ecx+eax*4+0x4], edi
Item_ListBox_HandleKey_250:
	mov eax, edi
	sub eax, [ebp-0x54]
	mov edx, [ebp-0x44]
	cmp [ecx+edx*4+0x4], eax
	jg Item_ListBox_HandleKey_260
	add eax, 0x1
	mov [ecx+edx*4+0x4], eax
	mov ebx, [ebp-0x44]
Item_ListBox_HandleKey_350:
	mov [esp+0x8], edi
Item_ListBox_HandleKey_300:
	mov ecx, [ebp-0x60]
	mov eax, [ecx+0x124]
	mov [esp+0x4], eax
	mov [esp], ebx
	call UI_FeederSelection
	mov eax, 0x1
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Item_ListBox_HandleKey_50:
	mov ebx, [ebp-0x58]
	mov edx, [ebx+0x124]
	test edx, edx
	jnz Item_ListBox_HandleKey_270
	mov eax, [ebp-0x5c]
	mov ebx, [eax]
	mov esi, [ecx+ebx*4+0x128]
	sub esi, 0x1
	test esi, esi
	mov eax, 0x0
	cmovle esi, eax
	mov [esp], ecx
	call Item_GetListBoxDef
	mov ecx, eax
	mov edx, [ebp-0x60]
	mov [edx+ebx*4+0x128], esi
	cmp esi, [eax+ebx*4+0x4]
	jge Item_ListBox_HandleKey_280
	mov [eax+ebx*4+0x4], esi
Item_ListBox_HandleKey_280:
	mov eax, esi
	sub eax, [ebp-0x54]
	cmp [ecx+ebx*4+0x4], eax
	jg Item_ListBox_HandleKey_290
	add eax, 0x1
	mov [ecx+ebx*4+0x4], eax
Item_ListBox_HandleKey_290:
	mov [esp+0x8], esi
	jmp Item_ListBox_HandleKey_300
Item_ListBox_HandleKey_160:
	test edi, 0x100
	jz Item_ListBox_HandleKey_310
	mov edx, [ebp-0x5c]
	mov eax, [edx]
	mov ecx, [ebp-0x58]
	mov edx, [ecx+eax*4+0x4]
	sub edx, 0x1
	test edx, edx
	mov ecx, 0x0
	cmovle edx, ecx
	mov ebx, [ebp-0x58]
	mov [ebx+eax*4+0x4], edx
	mov eax, 0x1
	jmp Item_ListBox_HandleKey_100
Item_ListBox_HandleKey_140:
	cmp dword [ebp-0x64], 0xcd
	jz Item_ListBox_HandleKey_130
	cmp dword [ebp-0x64], 0xce
	jnz Item_ListBox_HandleKey_60
Item_ListBox_HandleKey_150:
	mov eax, [ebp-0x5c]
	mov eax, [eax]
	mov [ebp-0x48], eax
	mov edx, [ebp-0x60]
	mov [esp], edx
	call Item_GetListBoxDef
	mov ecx, eax
	mov eax, [eax+0x124]
	test eax, eax
	jnz Item_ListBox_HandleKey_320
	mov ecx, [ebp-0x48]
	mov ebx, [ebp-0x60]
	mov edi, [ebx+ecx*4+0x128]
	sub edi, 0x1
	cmp esi, edi
	cmovle edi, esi
	test edi, edi
	mov eax, 0x0
	cmovle edi, eax
	mov [esp], ebx
	call Item_GetListBoxDef
	mov ecx, eax
	mov eax, [ebp-0x48]
	mov [ebx+eax*4+0x128], edi
	cmp edi, [ecx+eax*4+0x4]
	jge Item_ListBox_HandleKey_330
	mov [ecx+eax*4+0x4], edi
Item_ListBox_HandleKey_330:
	mov eax, edi
	sub eax, [ebp-0x54]
	mov edx, [ebp-0x48]
	cmp [ecx+edx*4+0x4], eax
	jg Item_ListBox_HandleKey_340
	add eax, 0x1
	mov [ecx+edx*4+0x4], eax
	mov ebx, [ebp-0x48]
	jmp Item_ListBox_HandleKey_350
Item_ListBox_HandleKey_310:
	mov ecx, edi
	and ecx, 0x200
	jnz Item_ListBox_HandleKey_360
	test edi, 0x800
	jz Item_ListBox_HandleKey_370
	mov ebx, [ebp-0x5c]
	mov edx, [ebx]
	mov ebx, [ebp-0x58]
	mov eax, [ebx+edx*4+0x4]
	sub eax, [ebp-0x54]
	test eax, eax
	cmovle eax, ecx
	mov [ebx+edx*4+0x4], eax
	mov eax, 0x1
	jmp Item_ListBox_HandleKey_100
Item_ListBox_HandleKey_240:
	mov edx, [ebp-0x44]
	mov eax, [ecx+edx*4+0x4]
	add eax, 0x1
	cmp ebx, eax
	cmovle eax, ebx
	test eax, eax
	mov edx, 0x0
	cmovle eax, edx
	mov ebx, [ebp-0x44]
	mov [ecx+ebx*4+0x4], eax
	mov eax, 0x1
	jmp Item_ListBox_HandleKey_100
Item_ListBox_HandleKey_270:
	mov ecx, ebx
	mov ebx, [ebp-0x5c]
	mov edx, [ebx]
	mov eax, [ecx+edx*4+0x4]
	sub eax, 0x1
	test eax, eax
	mov ebx, 0x0
	cmovle eax, ebx
	mov [ecx+edx*4+0x4], eax
	mov eax, 0x1
	jmp Item_ListBox_HandleKey_100
Item_ListBox_HandleKey_360:
	mov eax, [ebp-0x5c]
	mov edx, [eax]
Item_ListBox_HandleKey_380:
	mov ecx, [ebp-0x58]
	mov eax, [ecx+edx*4+0x4]
	add eax, 0x1
	cmp ebx, eax
	cmovle eax, ebx
	mov [ecx+edx*4+0x4], eax
	mov eax, 0x1
	jmp Item_ListBox_HandleKey_100
Item_ListBox_HandleKey_70:
	mov ecx, [ebp-0x5c]
	mov edx, [ecx]
	jmp Item_ListBox_HandleKey_380
Item_ListBox_HandleKey_260:
	mov ebx, edx
	jmp Item_ListBox_HandleKey_350
Item_ListBox_HandleKey_320:
	mov edx, [ebp-0x48]
	mov eax, [ecx+edx*4+0x4]
	sub eax, 0x1
	cmp ebx, eax
	cmovle eax, ebx
	test eax, eax
	mov edx, 0x0
	cmovle eax, edx
	mov ebx, [ebp-0x48]
	mov [ecx+ebx*4+0x4], eax
	mov eax, 0x1
	jmp Item_ListBox_HandleKey_100
Item_ListBox_HandleKey_170:
	mov ebx, [ebp-0x60]
	mov [esp], ebx
	call Item_GetListBoxDef
	mov ecx, eax
	test eax, eax
	jz Item_ListBox_HandleKey_390
	mov eax, [eax+0x124]
	test eax, eax
	jz Item_ListBox_HandleKey_400
	mov ebx, [ebp-0x5c]
	mov eax, [ebx]
	mov dword [ecx+eax*4+0x4], 0x0
	mov eax, 0x1
	jmp Item_ListBox_HandleKey_100
Item_ListBox_HandleKey_180:
	mov dword [esp+0x8], 0x0
	mov eax, [ebp-0x60]
	mov [esp+0x4], eax
	mov edx, [ebp-0x5c]
	mov [esp], edx
	call Script_FeederBottom
	mov eax, 0x1
	jmp Item_ListBox_HandleKey_100
Item_ListBox_HandleKey_370:
	test edi, 0x1000
	jz Item_ListBox_HandleKey_410
	mov eax, [ebp-0x5c]
	mov edx, [eax]
	mov eax, [ebp-0x54]
	mov ecx, [ebp-0x58]
	add eax, [ecx+edx*4+0x4]
	cmp ebx, eax
	cmovle eax, ebx
	mov [ecx+edx*4+0x4], eax
	mov eax, 0x1
	jmp Item_ListBox_HandleKey_100
Item_ListBox_HandleKey_190:
	mov edi, [ebp-0x54]
	neg edi
	mov ecx, [ebp-0x5c]
	mov ecx, [ecx]
	mov [ebp-0x40], ecx
	mov eax, [ebp-0x60]
	mov [esp], eax
	call Item_GetListBoxDef
	mov edx, edi
	mov ecx, [ebp-0x40]
	add edx, [eax+ecx*4+0x4]
	cmp ebx, edx
	cmovle edx, ebx
	xor ecx, ecx
	test edx, edx
	cmovle edx, ecx
	mov ebx, [ebp-0x40]
	mov [eax+ebx*4+0x4], edx
	mov eax, [eax+0x124]
	test eax, eax
	jnz Item_ListBox_HandleKey_390
	mov eax, [ebp-0x60]
	add edi, [eax+ebx*4+0x128]
	cmp esi, edi
	cmovle edi, esi
	test edi, edi
	cmovle edi, ecx
	mov [esp], eax
	call Item_GetListBoxDef
	mov ecx, eax
	mov edx, [ebp-0x60]
	mov [edx+ebx*4+0x128], edi
	cmp edi, [eax+ebx*4+0x4]
	jge Item_ListBox_HandleKey_420
	mov [eax+ebx*4+0x4], edi
Item_ListBox_HandleKey_420:
	mov eax, edi
	sub eax, [ebp-0x54]
	mov ebx, [ebp-0x40]
	cmp [ecx+ebx*4+0x4], eax
	jg Item_ListBox_HandleKey_430
	add eax, 0x1
	mov [ecx+ebx*4+0x4], eax
	mov ecx, [ebp-0x40]
Item_ListBox_HandleKey_450:
	mov [esp+0x8], edi
	mov edx, [ebp-0x60]
	mov eax, [edx+0x124]
	mov [esp+0x4], eax
	mov [esp], ecx
	call UI_FeederSelection
	mov eax, 0x1
	jmp Item_ListBox_HandleKey_100
Item_ListBox_HandleKey_340:
	mov ebx, edx
	mov [esp+0x8], edi
	jmp Item_ListBox_HandleKey_300
Item_ListBox_HandleKey_200:
	mov eax, [ebp-0x5c]
	mov eax, [eax]
	mov [ebp-0x3c], eax
	mov edx, [ebp-0x60]
	mov [esp], edx
	call Item_GetListBoxDef
	mov edx, [ebp-0x54]
	mov ecx, [ebp-0x3c]
	add edx, [eax+ecx*4+0x4]
	cmp ebx, edx
	cmovle edx, ebx
	xor ecx, ecx
	test edx, edx
	cmovle edx, ecx
	mov ebx, [ebp-0x3c]
	mov [eax+ebx*4+0x4], edx
	mov edi, [eax+0x124]
	test edi, edi
	jnz Item_ListBox_HandleKey_390
	mov edi, [ebp-0x54]
	mov eax, [ebp-0x60]
	add edi, [eax+ebx*4+0x128]
	cmp esi, edi
	cmovle edi, esi
	test edi, edi
	cmovle edi, ecx
	mov [esp], eax
	call Item_GetListBoxDef
	mov ecx, eax
	mov edx, [ebp-0x60]
	mov [edx+ebx*4+0x128], edi
	cmp edi, [eax+ebx*4+0x4]
	jge Item_ListBox_HandleKey_440
	mov [eax+ebx*4+0x4], edi
Item_ListBox_HandleKey_440:
	mov eax, edi
	sub eax, [ebp-0x54]
	mov ebx, [ebp-0x3c]
	cmp [ecx+ebx*4+0x4], eax
	jg Item_ListBox_HandleKey_430
	add eax, 0x1
	mov [ecx+ebx*4+0x4], eax
	mov ecx, [ebp-0x3c]
	jmp Item_ListBox_HandleKey_450
Item_ListBox_HandleKey_430:
	mov ecx, ebx
	jmp Item_ListBox_HandleKey_450
Item_ListBox_HandleKey_410:
	and edi, 0x400
	jnz Item_ListBox_HandleKey_390
	mov ebx, [ebp-0x60]
	movss xmm0, dword [ebx+0x124]
	ucomiss xmm0, [_float_25_00000000]
	jz Item_ListBox_HandleKey_460
Item_ListBox_HandleKey_510:
	mov ecx, ebx
Item_ListBox_HandleKey_520:
	mov ebx, [ebp-0x5c]
	mov eax, [ebx]
	mov edx, [ecx+eax*4+0x128]
	mov [esp+0x8], edx
	movss [esp+0x4], xmm0
	mov [esp], eax
	call UI_FeederItemEnabled
	test eax, eax
	jz Item_ListBox_HandleKey_390
	mov edx, [ebx+0x8]
	cmp edx, [lastListBoxClickTime]
	jge Item_ListBox_HandleKey_470
	mov ebx, [ebp-0x58]
	mov eax, [ebx+0x120]
	test eax, eax
	jz Item_ListBox_HandleKey_470
	mov eax, [ebp-0x5c]
	mov ecx, [eax]
	mov ebx, [ebp-0x60]
	mov eax, [ebx+ecx*4+0x128]
	mov ebx, [ebp-0x58]
	cmp eax, [ebx]
	jz Item_ListBox_HandleKey_480
Item_ListBox_HandleKey_470:
	lea eax, [edx+0x12c]
	mov [lastListBoxClickTime], eax
	mov eax, [ebp-0x5c]
	mov edx, [eax]
	mov ecx, [ebp-0x60]
	mov eax, [ecx+edx*4+0x128]
	mov ecx, [ebp-0x58]
	mov ebx, [ecx]
	cmp eax, ebx
	jz Item_ListBox_HandleKey_390
	test eax, eax
	js Item_ListBox_HandleKey_490
	mov ecx, [ebp-0x60]
	mov eax, [ecx+0x124]
	mov [esp+0x4], eax
	mov [esp], edx
	call UI_FeederCount
	cmp ebx, eax
	jge Item_ListBox_HandleKey_500
	mov ebx, [ebp-0x5c]
	mov edx, [ebx]
	mov eax, [ebp-0x58]
	mov ebx, [eax]
Item_ListBox_HandleKey_490:
	mov ecx, [ebp-0x60]
	mov [ecx+edx*4+0x128], ebx
Item_ListBox_HandleKey_500:
	mov ebx, [ebp-0x5c]
	mov eax, [ebx]
	mov ecx, [ebp-0x60]
	mov edx, [ecx+eax*4+0x128]
	mov [esp+0x8], edx
	mov edx, [ecx+0x124]
	mov [esp+0x4], edx
	mov [esp], eax
	call UI_FeederSelection
	mov eax, 0x1
	jmp Item_ListBox_HandleKey_100
Item_ListBox_HandleKey_460:
	jp Item_ListBox_HandleKey_510
	mov [esp+0x4], ebx
	mov edx, [ebp-0x5c]
	mov eax, [edx]
	mov [esp], eax
	call UI_OverrideCursorPos
	mov ecx, [ebp-0x5c]
	mov edx, [ecx]
	mov eax, [ebx+edx*4+0x128]
	mov [esp+0x8], eax
	mov eax, [ebx+0x124]
	mov [esp+0x4], eax
	mov [esp], edx
	call UI_FeederSelection
	movss xmm0, dword [ebx+0x124]
	mov ecx, [ebp-0x60]
	jmp Item_ListBox_HandleKey_520
Item_ListBox_HandleKey_400:
	mov edx, [ebp-0x5c]
	mov eax, [edx]
	mov dword [ebx+eax*4+0x128], 0x0
	mov eax, [edx]
	mov dword [ecx+eax*4+0x4], 0x0
	mov dword [esp+0x8], 0x0
	mov eax, [ebx+0x124]
	mov [esp+0x4], eax
	mov eax, [edx]
	mov [esp], eax
	call UI_FeederSelection
	mov eax, 0x1
	jmp Item_ListBox_HandleKey_100
Item_ListBox_HandleKey_480:
	mov eax, [ebp-0x60]
	mov [esp+0x4], eax
	mov [esp], ecx
	call ListBox_HasValidCursorPos
	test al, al
	jnz Item_ListBox_HandleKey_530
	mov ebx, [ebp-0x5c]
	mov edx, [ebx+0x8]
	jmp Item_ListBox_HandleKey_470
Item_ListBox_HandleKey_530:
	mov ecx, [ebx+0x120]
	mov edx, [ebp-0x60]
	mov eax, [ebp-0x5c]
	call Item_RunScript
	mov ecx, [ebp-0x5c]
	mov edx, [ecx+0x8]
	jmp Item_ListBox_HandleKey_470


;Scroll_ListBox_ThumbFunc(UiContext*, void*)
Scroll_ListBox_ThumbFunc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edi, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov ebx, [eax+0x18]
	test ebx, ebx
	jnz Scroll_ListBox_ThumbFunc_10
Scroll_ListBox_ThumbFunc_20:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scroll_ListBox_ThumbFunc_10:
	mov eax, [edi+0x18]
	mov [esp], eax
	call Item_GetListBoxDef
	mov [ebp-0x2c], eax
	test eax, eax
	jz Scroll_ListBox_ThumbFunc_20
	mov esi, [edi+0x18]
	test byte [esi+0x4e], 0x20
	jz Scroll_ListBox_ThumbFunc_30
	mov edx, [ebp+0x8]
	movss xmm0, dword [edx+0x10]
	ucomiss xmm0, [edi+0x10]
	jp Scroll_ListBox_ThumbFunc_40
	jz Scroll_ListBox_ThumbFunc_20
Scroll_ListBox_ThumbFunc_40:
	movss xmm0, dword [_float_16_00000000]
	movss [ebp-0x1c], xmm0
	addss xmm0, [esi+0x4]
	addss xmm0, [_float_1_00000000]
	movss [ebp-0x1c], xmm0
	movss xmm0, dword [esi+0xc]
	subss xmm0, [_float_32_00000000]
	subss xmm0, [_float_2_00000000]
	movss [ebp-0x28], xmm0
	mov eax, [esi+0x124]
	mov [esp+0x4], eax
	mov eax, [edx]
	mov [esp], eax
	call UI_FeederCount
	mov ebx, eax
	mov [esp], esi
	call Item_ListBox_Viewmax
	sub ebx, eax
	lea eax, [ebx+0x1]
	test eax, eax
	jle Scroll_ListBox_ThumbFunc_50
	cvtsi2ss xmm1, eax
Scroll_ListBox_ThumbFunc_150:
	mov edx, [ebp+0x8]
	movss xmm0, dword [edx+0x10]
	subss xmm0, [ebp-0x1c]
	subss xmm0, [_float_8_00000000]
	mulss xmm1, xmm0
	movss xmm0, dword [ebp-0x28]
	subss xmm0, [_float_16_00000000]
	divss xmm1, xmm0
	cvttss2si edx, xmm1
	test edx, edx
	js Scroll_ListBox_ThumbFunc_60
	cmp eax, edx
	cmovl edx, eax
Scroll_ListBox_ThumbFunc_140:
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	mov ecx, [ebp-0x2c]
	mov [ecx+eax*4+0x4], edx
	mov edx, [ebp+0x8]
	mov eax, [edx+0x10]
	mov [edi+0x10], eax
	mov ecx, [ebp+0x8]
Scroll_ListBox_ThumbFunc_90:
	mov eax, [ecx+0x8]
	cmp eax, [edi]
	jg Scroll_ListBox_ThumbFunc_70
Scroll_ListBox_ThumbFunc_120:
	cmp eax, [edi+0x4]
	jle Scroll_ListBox_ThumbFunc_20
	add eax, 0x96
	mov [edi+0x4], eax
	mov eax, [edi+0x8]
	cmp eax, 0x14
	jle Scroll_ListBox_ThumbFunc_20
	sub eax, 0x28
	mov [edi+0x8], eax
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scroll_ListBox_ThumbFunc_30:
	mov ecx, [ebp+0x8]
	movss xmm0, dword [ecx+0x14]
	ucomiss xmm0, [edi+0x14]
	jp Scroll_ListBox_ThumbFunc_80
	jz Scroll_ListBox_ThumbFunc_90
Scroll_ListBox_ThumbFunc_80:
	lea eax, [esi+0x4]
	movss xmm0, dword [_float_16_00000000]
	movss [ebp-0x20], xmm0
	addss xmm0, [eax+0x4]
	addss xmm0, [_float_1_00000000]
	movss [ebp-0x20], xmm0
	movss xmm0, dword [eax+0xc]
	subss xmm0, [_float_32_00000000]
	subss xmm0, [_float_2_00000000]
	movss [ebp-0x24], xmm0
	mov eax, [esi+0x124]
	mov [esp+0x4], eax
	mov eax, [ecx]
	mov [esp], eax
	call UI_FeederCount
	mov ebx, eax
	mov [esp], esi
	call Item_ListBox_Viewmax
	sub ebx, eax
	lea eax, [ebx+0x1]
	test eax, eax
	jle Scroll_ListBox_ThumbFunc_100
	cvtsi2ss xmm1, eax
Scroll_ListBox_ThumbFunc_130:
	mov edx, [ebp+0x8]
	movss xmm0, dword [edx+0x14]
	subss xmm0, [ebp-0x20]
	subss xmm0, [_float_8_00000000]
	mulss xmm1, xmm0
	movss xmm0, dword [ebp-0x24]
	subss xmm0, [_float_16_00000000]
	divss xmm1, xmm0
	cvttss2si edx, xmm1
	test edx, edx
	js Scroll_ListBox_ThumbFunc_110
	cmp eax, edx
	cmovl edx, eax
Scroll_ListBox_ThumbFunc_160:
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	mov ecx, [ebp-0x2c]
	mov [ecx+eax*4+0x4], edx
	mov edx, [ebp+0x8]
	mov eax, [edx+0x14]
	mov [edi+0x14], eax
	mov ecx, [ebp+0x8]
	jmp Scroll_ListBox_ThumbFunc_90
Scroll_ListBox_ThumbFunc_70:
	mov eax, ecx
	mov ecx, [edi+0xc]
	mov edx, [edi+0x18]
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x1
	call Item_ListBox_HandleKey
	mov edx, [ebp+0x8]
	mov eax, [edx+0x8]
	add eax, [edi+0x8]
	mov [edi], eax
	mov eax, [edx+0x8]
	jmp Scroll_ListBox_ThumbFunc_120
Scroll_ListBox_ThumbFunc_100:
	xor eax, eax
	pxor xmm1, xmm1
	jmp Scroll_ListBox_ThumbFunc_130
Scroll_ListBox_ThumbFunc_60:
	xor edx, edx
	jmp Scroll_ListBox_ThumbFunc_140
Scroll_ListBox_ThumbFunc_50:
	xor eax, eax
	pxor xmm1, xmm1
	jmp Scroll_ListBox_ThumbFunc_150
Scroll_ListBox_ThumbFunc_110:
	xor edx, edx
	jmp Scroll_ListBox_ThumbFunc_160
	nop


;Scroll_ListBox_AutoFunc(UiContext*, void*)
Scroll_ListBox_AutoFunc:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov eax, [esi+0x8]
	cmp eax, [ebx]
	jg Scroll_ListBox_AutoFunc_10
Scroll_ListBox_AutoFunc_30:
	cmp eax, [ebx+0x4]
	jle Scroll_ListBox_AutoFunc_20
	add eax, 0x96
	mov [ebx+0x4], eax
	mov eax, [ebx+0x8]
	cmp eax, 0x14
	jle Scroll_ListBox_AutoFunc_20
	sub eax, 0x28
	mov [ebx+0x8], eax
Scroll_ListBox_AutoFunc_20:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Scroll_ListBox_AutoFunc_10:
	mov ecx, [ebx+0xc]
	mov edx, [ebx+0x18]
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x1
	mov eax, esi
	call Item_ListBox_HandleKey
	mov eax, [esi+0x8]
	add eax, [ebx+0x8]
	mov [ebx], eax
	mov eax, [esi+0x8]
	jmp Scroll_ListBox_AutoFunc_30


;Item_SetFocus(UiContext*, itemDef_s*, float, float)
Item_SetFocus:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	mov [ebp-0x60], eax
	mov [ebp-0x64], edx
	movss [ebp-0x68], xmm0
	movss [ebp-0x6c], xmm1
	test edx, edx
	jz Item_SetFocus_10
	test byte [edx+0x4e], 0x10
	jnz Item_SetFocus_10
	mov edx, [eax]
	mov ecx, [ebp-0x64]
	mov eax, [ecx+edx*4+0x50]
	test al, 0x4
	jz Item_SetFocus_10
	test al, 0x2
	jnz Item_SetFocus_20
Item_SetFocus_180:
	mov edi, [ebp-0x64]
	mov edi, [edi+0xe8]
	mov [ebp-0x58], edi
	test edi, edi
	jz Item_SetFocus_30
	mov eax, [ebp-0x60]
	mov esi, [eax]
	mov eax, [edi+esi*4+0x50]
	test al, 0x4
	jz Item_SetFocus_40
	test al, 0x2
	jz Item_SetFocus_40
Item_SetFocus_30:
	mov eax, [ebp-0x64]
	test byte [eax+0x11c], 0x3
	jz Item_SetFocus_50
Item_SetFocus_170:
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call Item_EnableShowViaDvar
	test eax, eax
	jz Item_SetFocus_10
	mov edx, [ebp-0x64]
Item_SetFocus_140:
	mov [esp+0x4], edx
	mov ecx, [ebp-0x60]
	mov eax, [ecx]
	mov [esp], eax
	call Item_IsVisible
	test eax, eax
	jz Item_SetFocus_10
	mov edi, [ebp-0x64]
	mov edi, [edi+0xe8]
	mov [ebp-0x44], edi
	test edi, edi
	jz Item_SetFocus_60
	mov eax, [edi+0xa4]
	mov [ebp-0x7c], eax
	test eax, eax
	jg Item_SetFocus_70
	mov eax, [ebp-0x60]
	mov eax, [eax]
	mov [ebp-0x70], eax
Item_SetFocus_210:
	mov dword [ebp-0x5c], 0x0
Item_SetFocus_240:
	mov ecx, [ebp-0x64]
	mov edi, [ecx+0xb4]
	test edi, edi
	jnz Item_SetFocus_80
	mov edi, [ebp-0x70]
	lea edx, [edi+edi*2]
	lea edx, [ecx+edx*8+0x90]
	lea eax, [edx+0xc]
	mov ecx, [eax+0x8]
	mov esi, [eax+0x14]
	mov edi, [eax+0x10]
	movss xmm1, dword [eax+0xc]
	movss xmm0, dword [eax+0x4]
	mov eax, [edx+0xc]
	mov [ebp-0x30], eax
	subss xmm0, xmm1
	movss [ebp-0x2c], xmm0
	mov [ebp-0x28], ecx
	movss [ebp-0x24], xmm1
	mov eax, [ebp-0x70]
	shl eax, 0x6
	mov edx, [ebp-0x70]
	lea ebx, [eax+edx*4]
	add ebx, scrPlaceView
	mov dword [esp+0x8], 0x4
	movss xmm0, dword [ebp-0x68]
	movss [esp+0x4], xmm0
	mov [esp], ebx
	call ScrPlace_ApplyX
	fstp dword [ebp-0x40]
	mov dword [esp+0x8], 0x4
	movss xmm1, dword [ebp-0x6c]
	movss [esp+0x4], xmm1
	mov [esp], ebx
	call ScrPlace_ApplyY
	fstp dword [ebp-0x3c]
	mov [esp+0x18], esi
	mov [esp+0x14], edi
	lea edx, [ebp-0x30]
	lea eax, [ebp-0x24]
	mov [esp+0x10], eax
	lea eax, [ebp-0x28]
	mov [esp+0xc], eax
	lea eax, [ebp-0x2c]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ebx
	call ScrPlace_ApplyRect
	movss xmm0, dword [ebp-0x30]
	movss xmm1, dword [ebp-0x40]
	ucomiss xmm1, xmm0
	jb Item_SetFocus_90
	addss xmm0, [ebp-0x28]
	ucomiss xmm0, xmm1
	jb Item_SetFocus_90
	movss xmm0, dword [ebp-0x2c]
	movss xmm1, dword [ebp-0x3c]
	ucomiss xmm1, xmm0
	jb Item_SetFocus_90
	addss xmm0, [ebp-0x24]
	ucomiss xmm0, xmm1
	jb Item_SetFocus_90
	mov dword [esp+0x8], 0x2
	mov eax, [ebp-0x64]
	mov [esp+0x4], eax
	mov edx, [ebp-0x60]
	mov eax, [edx]
	mov [esp], eax
	call Window_AddDynamicFlags
Item_SetFocus_150:
	mov eax, [ebp-0x58]
	mov ebx, [eax+0xa4]
	test ebx, ebx
	jle Item_SetFocus_100
	mov esi, [eax+0x118]
	xor edx, edx
Item_SetFocus_120:
	mov ecx, [ebp-0x64]
	cmp ecx, [esi+edx*4]
	jz Item_SetFocus_110
Item_SetFocus_260:
	add edx, 0x1
	cmp edx, ebx
	jnz Item_SetFocus_120
Item_SetFocus_100:
	mov eax, 0x1
Item_SetFocus_190:
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Item_SetFocus_40:
	mov edx, [ebp-0x60]
	mov edi, [edx+0xa74]
	sub edi, 0x1
	js Item_SetFocus_30
	lea ecx, [edx+edi*4+0xa34]
	xor ebx, ebx
Item_SetFocus_160:
	mov edx, [ecx]
	mov eax, [edx+esi*4+0x50]
	test al, 0x4
	jz Item_SetFocus_130
	test al, 0x2
	jz Item_SetFocus_130
	test edx, edx
	jz Item_SetFocus_30
	lea ebx, [edx+0x4]
	mov eax, [edx+0x4]
	mov [ebp-0x30], eax
	mov eax, [ebx+0x4]
	mov [ebp-0x2c], eax
	mov eax, [ebx+0x8]
	mov [ebp-0x28], eax
	mov eax, [ebx+0xc]
	mov [ebp-0x24], eax
	mov eax, esi
	shl eax, 0x6
	lea esi, [eax+esi*4]
	mov edi, scrPlaceView
	add esi, edi
	mov dword [esp+0x8], 0x4
	movss xmm0, dword [ebp-0x68]
	movss [esp+0x4], xmm0
	mov [esp], esi
	call ScrPlace_ApplyX
	fstp dword [ebp-0x54]
	mov dword [esp+0x8], 0x4
	movss xmm1, dword [ebp-0x6c]
	movss [esp+0x4], xmm1
	mov [esp], esi
	call ScrPlace_ApplyY
	fstp dword [ebp-0x50]
	mov eax, [ebx+0x14]
	mov [esp+0x18], eax
	mov eax, [ebx+0x10]
	mov [esp+0x14], eax
	lea eax, [ebp-0x24]
	mov [esp+0x10], eax
	lea edx, [ebp-0x28]
	mov [esp+0xc], edx
	lea ecx, [ebp-0x2c]
	mov [esp+0x8], ecx
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov [esp], esi
	call ScrPlace_ApplyRect
	movss xmm0, dword [ebp-0x30]
	movss xmm1, dword [ebp-0x54]
	ucomiss xmm1, xmm0
	jb Item_SetFocus_30
	addss xmm0, [ebp-0x28]
	ucomiss xmm0, xmm1
	jb Item_SetFocus_30
	movss xmm0, dword [ebp-0x2c]
	movss xmm1, dword [ebp-0x50]
	ucomiss xmm1, xmm0
	jb Item_SetFocus_30
	addss xmm0, [ebp-0x24]
	ucomiss xmm0, xmm1
	jb Item_SetFocus_30
	mov eax, [ebp-0x60]
	mov ebx, [eax]
	mov esi, [ebp-0x58]
	add esi, 0x4
	mov edx, [ebp-0x58]
	mov eax, [edx+0x4]
	mov [ebp-0x30], eax
	mov eax, [esi+0x4]
	mov [ebp-0x2c], eax
	mov eax, [esi+0x8]
	mov [ebp-0x28], eax
	mov eax, [esi+0xc]
	mov [ebp-0x24], eax
	mov eax, ebx
	shl eax, 0x6
	lea ebx, [eax+ebx*4]
	add ebx, edi
	mov dword [esp+0x8], 0x4
	movss xmm0, dword [ebp-0x68]
	movss [esp+0x4], xmm0
	mov [esp], ebx
	call ScrPlace_ApplyX
	fstp dword [ebp-0x4c]
	mov dword [esp+0x8], 0x4
	movss xmm1, dword [ebp-0x6c]
	movss [esp+0x4], xmm1
	mov [esp], ebx
	call ScrPlace_ApplyY
	fstp dword [ebp-0x48]
	mov eax, [esi+0x14]
	mov [esp+0x18], eax
	mov eax, [esi+0x10]
	mov [esp+0x14], eax
	lea eax, [ebp-0x24]
	mov [esp+0x10], eax
	lea edx, [ebp-0x28]
	mov [esp+0xc], edx
	lea ecx, [ebp-0x2c]
	mov [esp+0x8], ecx
	lea edi, [ebp-0x30]
	mov [esp+0x4], edi
	mov [esp], ebx
	call ScrPlace_ApplyRect
	movss xmm0, dword [ebp-0x30]
	movss xmm1, dword [ebp-0x4c]
	ucomiss xmm1, xmm0
	jb Item_SetFocus_30
	addss xmm0, [ebp-0x28]
	ucomiss xmm0, xmm1
	jb Item_SetFocus_30
	movss xmm0, dword [ebp-0x2c]
	movss xmm1, dword [ebp-0x48]
	ucomiss xmm1, xmm0
	jb Item_SetFocus_30
	addss xmm0, [ebp-0x24]
	ucomiss xmm0, xmm1
	jb Item_SetFocus_30
Item_SetFocus_10:
	xor eax, eax
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Item_SetFocus_50:
	mov edx, eax
	jmp Item_SetFocus_140
Item_SetFocus_90:
	mov esi, [ebp-0x5c]
	test esi, esi
	jz Item_SetFocus_150
	mov dword [esp+0x8], 0x2
	mov ecx, [ebp-0x5c]
	mov [esp+0x4], ecx
	mov edi, [ebp-0x60]
	mov eax, [edi]
	mov [esp], eax
	call Window_AddDynamicFlags
	mov eax, [ebp-0x5c]
	mov ecx, [eax+0x104]
	test ecx, ecx
	jz Item_SetFocus_150
	mov edx, eax
	mov eax, edi
	call Item_RunScript
	jmp Item_SetFocus_150
Item_SetFocus_130:
	add ebx, 0x1
	sub ecx, 0x4
	lea eax, [edi+0x1]
	cmp ebx, eax
	jnz Item_SetFocus_160
	mov eax, [ebp-0x64]
	test byte [eax+0x11c], 0x3
	jz Item_SetFocus_50
	jmp Item_SetFocus_170
Item_SetFocus_20:
	mov [esp+0x4], ecx
	mov [esp], edx
	call Item_IsVisible
	test eax, eax
	jz Item_SetFocus_180
	mov eax, 0x1
	jmp Item_SetFocus_190
Item_SetFocus_80:
	mov dword [esp+0x8], 0x2
	mov [esp+0x4], ecx
	mov ecx, [ebp-0x70]
	mov [esp], ecx
	call Window_AddDynamicFlags
	mov edi, [ebp-0x64]
	mov ecx, [edi+0x104]
	test ecx, ecx
	jz Item_SetFocus_150
	mov edx, edi
	mov eax, [ebp-0x60]
	call Item_RunScript
	jmp Item_SetFocus_150
Item_SetFocus_70:
	mov ecx, [ebp-0x60]
	mov ecx, [ecx]
	mov [ebp-0x70], ecx
	mov edi, [ebp-0x44]
	mov ebx, [edi+0x118]
	xor ecx, ecx
	xor esi, esi
	jmp Item_SetFocus_200
Item_SetFocus_220:
	add ecx, 0x1
	add ebx, 0x4
	add esi, 0x4
	cmp [ebp-0x7c], ecx
	jz Item_SetFocus_210
Item_SetFocus_200:
	mov edx, [ebx]
	mov edi, [ebp-0x70]
	mov eax, [edx+edi*4+0x50]
	test al, 0x4
	jz Item_SetFocus_220
	test al, 0x2
	jz Item_SetFocus_220
	mov [ebp-0x5c], edx
	mov dword [esp+0x8], 0x2
	mov [esp+0x4], edx
	mov [esp], edi
	call Window_RemoveDynamicFlags
	mov edx, [ebp-0x44]
	mov eax, [edx+0x118]
	mov edx, [esi+eax]
	mov ecx, [edx+0x108]
	test ecx, ecx
	jz Item_SetFocus_230
	mov eax, [ebp-0x60]
	call Item_RunScript
	mov ecx, [ebp-0x60]
	mov ecx, [ecx]
	mov [ebp-0x70], ecx
	jmp Item_SetFocus_240
Item_SetFocus_110:
	cmp dword [ecx+0xb4], 0x12
	jbe Item_SetFocus_250
Item_SetFocus_270:
	mov [esp+0x8], edx
	mov eax, [ebp-0x58]
	mov [esp+0x4], eax
	mov edx, [ebp-0x60]
	mov eax, [edx]
	mov [esp], eax
	call Menu_SetCursorItem
	mov eax, 0x1
	jmp Item_SetFocus_190
Item_SetFocus_250:
	mov ecx, [ecx+0xb4]
	mov eax, 0x1
	shl eax, cl
	test eax, 0x70210
	jnz Item_SetFocus_260
	jmp Item_SetFocus_270
Item_SetFocus_60:
	mov edi, [ebp-0x60]
	mov edi, [edi]
	mov [ebp-0x70], edi
	jmp Item_SetFocus_210
Item_SetFocus_230:
	mov edx, [ebp-0x60]
	mov edx, [edx]
	mov [ebp-0x70], edx
	jmp Item_SetFocus_240
	nop


;Menu_SetPrevCursorItem(UiContext*, menuDef_t*)
Menu_SetPrevCursorItem:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, eax
	mov esi, edx
	mov ecx, [eax]
	mov edi, [edx+ecx*4+0xac]
	test edi, edi
	js Menu_SetPrevCursorItem_10
	mov dword [ebp-0x1c], 0x0
	jmp Menu_SetPrevCursorItem_20
Menu_SetPrevCursorItem_50:
	mov edx, [esi+ecx*4+0xac]
	test edx, edx
	js Menu_SetPrevCursorItem_30
Menu_SetPrevCursorItem_60:
	mov eax, [esi+0x118]
	mov edx, [eax+edx*4]
	movss xmm1, dword [ebx+0x14]
	movss xmm0, dword [ebx+0x10]
	mov eax, ebx
	call Item_SetFocus
	test eax, eax
	jnz Menu_SetPrevCursorItem_40
	mov ecx, [ebx]
Menu_SetPrevCursorItem_20:
	mov eax, [esi+ecx*4+0xac]
	cmp eax, 0xffffffff
	jle Menu_SetPrevCursorItem_30
	sub eax, 0x1
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov [esp], ecx
	call Menu_SetCursorItem
	mov ecx, [ebx]
	mov eax, [esi+ecx*4+0xac]
	test eax, eax
	jns Menu_SetPrevCursorItem_50
	mov eax, [ebp-0x1c]
	test eax, eax
	jnz Menu_SetPrevCursorItem_50
	mov eax, [esi+0xa4]
	sub eax, 0x1
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov [esp], ecx
	call Menu_SetCursorItem
	mov dword [ebp-0x1c], 0x1
	mov ecx, [ebx]
	mov edx, [esi+ecx*4+0xac]
	test edx, edx
	jns Menu_SetPrevCursorItem_60
Menu_SetPrevCursorItem_30:
	mov [esp+0x8], edi
	mov [esp+0x4], esi
	mov [esp], ecx
	call Menu_SetCursorItem
	xor eax, eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Menu_SetPrevCursorItem_40:
	mov eax, [ebx]
	mov edx, [esi+eax*4+0xac]
	mov eax, [esi+0x118]
	mov eax, [eax+edx*4]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Menu_SetPrevCursorItem_10:
	mov eax, [edx+0xa4]
	sub eax, 0x1
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ecx
	call Menu_SetCursorItem
	mov dword [ebp-0x1c], 0x1
	mov ecx, [ebx]
	jmp Menu_SetPrevCursorItem_20
	nop


;Menu_SetNextCursorItem(UiContext*, menuDef_t*)
Menu_SetNextCursorItem:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, eax
	mov ebx, edx
	mov edx, [eax]
	mov eax, [ebx+edx*4+0xac]
	mov [ebp-0x1c], eax
	add eax, 0x1
	jz Menu_SetNextCursorItem_10
	xor edi, edi
	jmp Menu_SetNextCursorItem_20
Menu_SetNextCursorItem_60:
	test edi, edi
	jnz Menu_SetNextCursorItem_30
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov [esp], edx
	call Menu_SetCursorItem
	mov di, 0x1
	mov edx, [esi]
	mov edx, [ebx+edx*4+0xac]
	mov eax, [ebx+0x118]
	mov edx, [eax+edx*4]
	movss xmm1, dword [esi+0x14]
	movss xmm0, dword [esi+0x10]
	mov eax, esi
	call Item_SetFocus
	test eax, eax
	jnz Menu_SetNextCursorItem_40
Menu_SetNextCursorItem_70:
	mov edx, [esi]
Menu_SetNextCursorItem_20:
	mov eax, [ebx+edx*4+0xac]
	cmp eax, [ebx+0xa4]
	jge Menu_SetNextCursorItem_50
	add eax, 0x1
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], edx
	call Menu_SetCursorItem
	mov edx, [esi]
	mov eax, [ebx+edx*4+0xac]
	cmp eax, [ebx+0xa4]
	jge Menu_SetNextCursorItem_60
	mov edx, eax
	mov eax, [ebx+0x118]
	mov edx, [eax+edx*4]
	movss xmm1, dword [esi+0x14]
	movss xmm0, dword [esi+0x10]
	mov eax, esi
	call Item_SetFocus
	test eax, eax
	jz Menu_SetNextCursorItem_70
Menu_SetNextCursorItem_40:
	mov eax, [esi]
	mov edx, [ebx+eax*4+0xac]
	mov eax, [ebx+0x118]
	mov eax, [eax+edx*4]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Menu_SetNextCursorItem_50:
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], edx
	call Menu_SetCursorItem
	xor eax, eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Menu_SetNextCursorItem_10:
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], ebx
	mov [esp], edx
	call Menu_SetCursorItem
	mov edi, 0x1
	mov edx, [esi]
	jmp Menu_SetNextCursorItem_20
Menu_SetNextCursorItem_30:
	mov eax, [ebx+0x118]
	mov edx, [ebp-0x1c]
	mov eax, [eax+edx*4]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Item_ListBox_OverLB(int, itemDef_s*, float, float)
Item_ListBox_OverLB:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xcc
	mov [ebp-0xa4], eax
	mov esi, edx
	movss [ebp-0xa8], xmm0
	movss [ebp-0xac], xmm1
	mov eax, [edx+0x124]
	mov [esp+0x4], eax
	mov eax, [ebp-0xa4]
	mov [esp], eax
	call UI_FeederCount
	mov [esp], esi
	call Item_GetListBoxDef
	test eax, eax
	jz Item_ListBox_OverLB_10
	lea edi, [esi+0x4]
	mov edx, [edi+0x10]
	mov [ebp-0x44], edx
	mov eax, [edi+0x14]
	mov [ebp-0x48], eax
	test byte [esi+0x4e], 0x20
	jnz Item_ListBox_OverLB_20
	movss xmm0, dword [esi+0x4]
	movss [ebp-0x4c], xmm0
	addss xmm0, [edi+0x8]
	movss [ebp-0x4c], xmm0
	movss xmm0, dword [_float_16_00000000]
	movss xmm1, dword [ebp-0x4c]
	subss xmm1, xmm0
	movss [ebp-0x4c], xmm1
	mov eax, [edi+0x4]
	movss [ebp-0x30], xmm1
	mov [ebp-0x2c], eax
	movss [ebp-0x28], xmm0
	movss [ebp-0x24], xmm0
	mov eax, [ebp-0xa4]
	shl eax, 0x6
	mov edx, [ebp-0xa4]
	lea ebx, [eax+edx*4]
	add ebx, scrPlaceView
	mov dword [esp+0x8], 0x4
	movss xmm0, dword [ebp-0xa8]
	movss [esp+0x4], xmm0
	mov [esp], ebx
	call ScrPlace_ApplyX
	fstp dword [ebp-0x74]
	mov dword [esp+0x8], 0x4
	movss xmm1, dword [ebp-0xac]
	movss [esp+0x4], xmm1
	mov [esp], ebx
	call ScrPlace_ApplyY
	fstp dword [ebp-0x70]
	mov eax, [ebp-0x48]
	mov [esp+0x18], eax
	mov edx, [ebp-0x44]
	mov [esp+0x14], edx
	lea eax, [ebp-0x24]
	mov [esp+0x10], eax
	lea edx, [ebp-0x28]
	mov [esp+0xc], edx
	lea eax, [ebp-0x2c]
	mov [esp+0x8], eax
	lea edx, [ebp-0x30]
	mov [esp+0x4], edx
	mov [esp], ebx
	call ScrPlace_ApplyRect
	movss xmm0, dword [ebp-0x30]
	movss xmm1, dword [ebp-0x74]
	ucomiss xmm1, xmm0
	jb Item_ListBox_OverLB_30
	addss xmm0, [ebp-0x28]
	ucomiss xmm0, xmm1
	jae Item_ListBox_OverLB_40
Item_ListBox_OverLB_30:
	movss xmm0, dword [edi+0x4]
	addss xmm0, [edi+0xc]
	movss xmm1, dword [_float_16_00000000]
	subss xmm0, xmm1
	movss xmm2, dword [ebp-0x4c]
	movss [ebp-0x30], xmm2
	movss [ebp-0x2c], xmm0
	movss [ebp-0x28], xmm1
	movss [ebp-0x24], xmm1
	mov dword [esp+0x8], 0x4
	movss xmm0, dword [ebp-0xa8]
	movss [esp+0x4], xmm0
	mov [esp], ebx
	call ScrPlace_ApplyX
	fstp dword [ebp-0x6c]
	mov dword [esp+0x8], 0x4
	movss xmm1, dword [ebp-0xac]
	movss [esp+0x4], xmm1
	mov [esp], ebx
	call ScrPlace_ApplyY
	fstp dword [ebp-0x68]
	mov eax, [ebp-0x48]
	mov [esp+0x18], eax
	mov edx, [ebp-0x44]
	mov [esp+0x14], edx
	lea eax, [ebp-0x24]
	mov [esp+0x10], eax
	lea edx, [ebp-0x28]
	mov [esp+0xc], edx
	lea eax, [ebp-0x2c]
	mov [esp+0x8], eax
	lea edx, [ebp-0x30]
	mov [esp+0x4], edx
	mov [esp], ebx
	call ScrPlace_ApplyRect
	movss xmm0, dword [ebp-0x30]
	movss xmm1, dword [ebp-0x6c]
	ucomiss xmm1, xmm0
	jb Item_ListBox_OverLB_50
	addss xmm0, [ebp-0x28]
	ucomiss xmm0, xmm1
	jb Item_ListBox_OverLB_50
	movss xmm0, dword [ebp-0x2c]
	movss xmm2, dword [ebp-0x68]
	ucomiss xmm2, xmm0
	jb Item_ListBox_OverLB_50
	addss xmm0, [ebp-0x24]
	ucomiss xmm0, xmm2
	jb Item_ListBox_OverLB_50
	mov eax, 0x200
	jmp Item_ListBox_OverLB_60
Item_ListBox_OverLB_20:
	movss xmm0, dword [edi+0x4]
	movss [ebp-0x3c], xmm0
	addss xmm0, [edi+0xc]
	movss [ebp-0x3c], xmm0
	movss xmm0, dword [_float_16_00000000]
	movss xmm1, dword [ebp-0x3c]
	subss xmm1, xmm0
	movss [ebp-0x3c], xmm1
	mov eax, [esi+0x4]
	mov [ebp-0x30], eax
	movss [ebp-0x2c], xmm1
	movss [ebp-0x28], xmm0
	movss [ebp-0x24], xmm0
	mov eax, [ebp-0xa4]
	shl eax, 0x6
	mov edx, [ebp-0xa4]
	lea ebx, [eax+edx*4]
	add ebx, scrPlaceView
	mov dword [esp+0x8], 0x4
	movss xmm0, dword [ebp-0xa8]
	movss [esp+0x4], xmm0
	mov [esp], ebx
	call ScrPlace_ApplyX
	fstp dword [ebp-0x9c]
	mov dword [esp+0x8], 0x4
	movss xmm1, dword [ebp-0xac]
	movss [esp+0x4], xmm1
	mov [esp], ebx
	call ScrPlace_ApplyY
	fstp dword [ebp-0x98]
	mov eax, [ebp-0x48]
	mov [esp+0x18], eax
	mov edx, [ebp-0x44]
	mov [esp+0x14], edx
	lea eax, [ebp-0x24]
	mov [esp+0x10], eax
	lea edx, [ebp-0x28]
	mov [esp+0xc], edx
	lea eax, [ebp-0x2c]
	mov [esp+0x8], eax
	lea edx, [ebp-0x30]
	mov [esp+0x4], edx
	mov [esp], ebx
	call ScrPlace_ApplyRect
	movss xmm0, dword [ebp-0x30]
	movss xmm1, dword [ebp-0x9c]
	ucomiss xmm1, xmm0
	jb Item_ListBox_OverLB_70
	addss xmm0, [ebp-0x28]
	ucomiss xmm0, xmm1
	jae Item_ListBox_OverLB_80
Item_ListBox_OverLB_70:
	movss xmm0, dword [edi]
	addss xmm0, [edi+0x8]
	movss xmm1, dword [_float_16_00000000]
	subss xmm0, xmm1
	movss [ebp-0x30], xmm0
	movss xmm0, dword [ebp-0x3c]
	movss [ebp-0x2c], xmm0
	movss [ebp-0x28], xmm1
	movss [ebp-0x24], xmm1
	mov dword [esp+0x8], 0x4
	movss xmm1, dword [ebp-0xa8]
	movss [esp+0x4], xmm1
	mov [esp], ebx
	call ScrPlace_ApplyX
	fstp dword [ebp-0x94]
	mov dword [esp+0x8], 0x4
	movss xmm2, dword [ebp-0xac]
	movss [esp+0x4], xmm2
	mov [esp], ebx
	call ScrPlace_ApplyY
	fstp dword [ebp-0x90]
	mov eax, [ebp-0x48]
	mov [esp+0x18], eax
	mov edx, [ebp-0x44]
	mov [esp+0x14], edx
	lea eax, [ebp-0x24]
	mov [esp+0x10], eax
	lea edx, [ebp-0x28]
	mov [esp+0xc], edx
	lea eax, [ebp-0x2c]
	mov [esp+0x8], eax
	lea edx, [ebp-0x30]
	mov [esp+0x4], edx
	mov [esp], ebx
	call ScrPlace_ApplyRect
	movss xmm0, dword [ebp-0x30]
	movss xmm1, dword [ebp-0x94]
	ucomiss xmm1, xmm0
	jb Item_ListBox_OverLB_90
	addss xmm0, [ebp-0x28]
	ucomiss xmm0, xmm1
	jae Item_ListBox_OverLB_100
Item_ListBox_OverLB_90:
	mov edx, esi
	mov eax, [ebp-0xa4]
	call Item_ListBox_ThumbPosition
	movss [ebp-0x40], xmm0
	movss [ebp-0x30], xmm0
	movss xmm0, dword [ebp-0x3c]
	movss [ebp-0x2c], xmm0
	mov eax, 0x41800000
	mov [ebp-0x28], eax
	mov [ebp-0x24], eax
	mov dword [esp+0x8], 0x4
	movss xmm1, dword [ebp-0xa8]
	movss [esp+0x4], xmm1
	mov [esp], ebx
	call ScrPlace_ApplyX
	fstp dword [ebp-0x8c]
	mov dword [esp+0x8], 0x4
	movss xmm2, dword [ebp-0xac]
	movss [esp+0x4], xmm2
	mov [esp], ebx
	call ScrPlace_ApplyY
	fstp dword [ebp-0x88]
	mov eax, [ebp-0x48]
	mov [esp+0x18], eax
	mov edx, [ebp-0x44]
	mov [esp+0x14], edx
	lea eax, [ebp-0x24]
	mov [esp+0x10], eax
	lea edx, [ebp-0x28]
	mov [esp+0xc], edx
	lea eax, [ebp-0x2c]
	mov [esp+0x8], eax
	lea edx, [ebp-0x30]
	mov [esp+0x4], edx
	mov [esp], ebx
	call ScrPlace_ApplyRect
	movss xmm0, dword [ebp-0x30]
	movss xmm1, dword [ebp-0x8c]
	ucomiss xmm1, xmm0
	jb Item_ListBox_OverLB_110
	addss xmm0, [ebp-0x28]
	ucomiss xmm0, xmm1
	jb Item_ListBox_OverLB_110
	movss xmm0, dword [ebp-0x2c]
	movss xmm2, dword [ebp-0x88]
	ucomiss xmm2, xmm0
	jae Item_ListBox_OverLB_120
Item_ListBox_OverLB_110:
	movss xmm1, dword [_float_16_00000000]
	movss xmm0, dword [edi]
	addss xmm0, xmm1
	movss [ebp-0x30], xmm0
	movss xmm2, dword [ebp-0x3c]
	movss [ebp-0x2c], xmm2
	movss xmm2, dword [ebp-0x40]
	subss xmm2, xmm0
	movss [ebp-0x28], xmm2
	movss [ebp-0x24], xmm1
	mov dword [esp+0x8], 0x4
	movss xmm0, dword [ebp-0xa8]
	movss [esp+0x4], xmm0
	mov [esp], ebx
	call ScrPlace_ApplyX
	fstp dword [ebp-0x84]
	mov dword [esp+0x8], 0x4
	movss xmm1, dword [ebp-0xac]
	movss [esp+0x4], xmm1
	mov [esp], ebx
	call ScrPlace_ApplyY
	fstp dword [ebp-0x80]
	mov eax, [ebp-0x48]
	mov [esp+0x18], eax
	mov edx, [ebp-0x44]
	mov [esp+0x14], edx
	lea eax, [ebp-0x24]
	mov [esp+0x10], eax
	lea edx, [ebp-0x28]
	mov [esp+0xc], edx
	lea eax, [ebp-0x2c]
	mov [esp+0x8], eax
	lea edx, [ebp-0x30]
	mov [esp+0x4], edx
	mov [esp], ebx
	call ScrPlace_ApplyRect
	movss xmm0, dword [ebp-0x30]
	movss xmm1, dword [ebp-0x84]
	ucomiss xmm1, xmm0
	jb Item_ListBox_OverLB_130
	addss xmm0, [ebp-0x28]
	ucomiss xmm0, xmm1
	jb Item_ListBox_OverLB_130
	movss xmm0, dword [ebp-0x2c]
	movss xmm2, dword [ebp-0x80]
	ucomiss xmm2, xmm0
	jae Item_ListBox_OverLB_140
Item_ListBox_OverLB_130:
	movss xmm0, dword [edi]
	addss xmm0, [edi+0x8]
	movss xmm1, dword [_float_16_00000000]
	subss xmm0, xmm1
	movss xmm2, dword [ebp-0x40]
	addss xmm2, xmm1
	movss [ebp-0x30], xmm2
	movss xmm2, dword [ebp-0x3c]
	movss [ebp-0x2c], xmm2
	movss [ebp-0x28], xmm0
	movss [ebp-0x24], xmm1
	mov dword [esp+0x8], 0x4
	movss xmm0, dword [ebp-0xa8]
	movss [esp+0x4], xmm0
	mov [esp], ebx
	call ScrPlace_ApplyX
	fstp dword [ebp-0x7c]
	mov dword [esp+0x8], 0x4
	movss xmm1, dword [ebp-0xac]
	movss [esp+0x4], xmm1
	mov [esp], ebx
	call ScrPlace_ApplyY
	fstp dword [ebp-0x78]
	mov eax, [ebp-0x48]
	mov [esp+0x18], eax
	mov edx, [ebp-0x44]
	mov [esp+0x14], edx
	lea eax, [ebp-0x24]
	mov [esp+0x10], eax
	lea edx, [ebp-0x28]
	mov [esp+0xc], edx
	lea eax, [ebp-0x2c]
	mov [esp+0x8], eax
	lea edx, [ebp-0x30]
	mov [esp+0x4], edx
	mov [esp], ebx
	call ScrPlace_ApplyRect
	movss xmm0, dword [ebp-0x30]
	movss xmm1, dword [ebp-0x7c]
	ucomiss xmm1, xmm0
	jb Item_ListBox_OverLB_10
	addss xmm0, [ebp-0x28]
	ucomiss xmm0, xmm1
	jb Item_ListBox_OverLB_10
	movss xmm0, dword [ebp-0x2c]
	movss xmm2, dword [ebp-0x78]
	ucomiss xmm2, xmm0
	jae Item_ListBox_OverLB_150
Item_ListBox_OverLB_10:
	xor eax, eax
Item_ListBox_OverLB_60:
	add esp, 0xcc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Item_ListBox_OverLB_50:
	mov edx, esi
	mov eax, [ebp-0xa4]
	call Item_ListBox_ThumbPosition
	movss [ebp-0xa0], xmm0
	movss xmm0, dword [ebp-0x4c]
	movss [ebp-0x30], xmm0
	movss xmm1, dword [ebp-0xa0]
	movss [ebp-0x2c], xmm1
	mov eax, 0x41800000
	mov [ebp-0x28], eax
	mov [ebp-0x24], eax
	mov dword [esp+0x8], 0x4
	movss xmm2, dword [ebp-0xa8]
	movss [esp+0x4], xmm2
	mov [esp], ebx
	call ScrPlace_ApplyX
	fstp dword [ebp-0x64]
	mov dword [esp+0x8], 0x4
	movss xmm0, dword [ebp-0xac]
	movss [esp+0x4], xmm0
	mov [esp], ebx
	call ScrPlace_ApplyY
	fstp dword [ebp-0x60]
	mov eax, [ebp-0x48]
	mov [esp+0x18], eax
	mov edx, [ebp-0x44]
	mov [esp+0x14], edx
	lea eax, [ebp-0x24]
	mov [esp+0x10], eax
	lea edx, [ebp-0x28]
	mov [esp+0xc], edx
	lea eax, [ebp-0x2c]
	mov [esp+0x8], eax
	lea edx, [ebp-0x30]
	mov [esp+0x4], edx
	mov [esp], ebx
	call ScrPlace_ApplyRect
	movss xmm0, dword [ebp-0x30]
	movss xmm1, dword [ebp-0x64]
	ucomiss xmm1, xmm0
	jb Item_ListBox_OverLB_160
	addss xmm0, [ebp-0x28]
	ucomiss xmm0, xmm1
	jb Item_ListBox_OverLB_160
	movss xmm0, dword [ebp-0x2c]
	movss xmm2, dword [ebp-0x60]
	ucomiss xmm2, xmm0
	jae Item_ListBox_OverLB_170
Item_ListBox_OverLB_160:
	movss xmm0, dword [_float_16_00000000]
	movss xmm1, dword [edi+0x4]
	addss xmm1, xmm0
	movss xmm2, dword [ebp-0x4c]
	movss [ebp-0x30], xmm2
	movss [ebp-0x2c], xmm1
	movss [ebp-0x28], xmm0
	movss xmm0, dword [ebp-0xa0]
	subss xmm0, xmm1
	movss [ebp-0x24], xmm0
	mov dword [esp+0x8], 0x4
	movss xmm0, dword [ebp-0xa8]
	movss [esp+0x4], xmm0
	mov [esp], ebx
	call ScrPlace_ApplyX
	fstp dword [ebp-0x5c]
	mov dword [esp+0x8], 0x4
	movss xmm1, dword [ebp-0xac]
	movss [esp+0x4], xmm1
	mov [esp], ebx
	call ScrPlace_ApplyY
	fstp dword [ebp-0x58]
	mov eax, [ebp-0x48]
	mov [esp+0x18], eax
	mov edx, [ebp-0x44]
	mov [esp+0x14], edx
	lea eax, [ebp-0x24]
	mov [esp+0x10], eax
	lea edx, [ebp-0x28]
	mov [esp+0xc], edx
	lea eax, [ebp-0x2c]
	mov [esp+0x8], eax
	lea edx, [ebp-0x30]
	mov [esp+0x4], edx
	mov [esp], ebx
	call ScrPlace_ApplyRect
	movss xmm0, dword [ebp-0x30]
	movss xmm1, dword [ebp-0x5c]
	ucomiss xmm1, xmm0
	jb Item_ListBox_OverLB_180
	addss xmm0, [ebp-0x28]
	ucomiss xmm0, xmm1
	jb Item_ListBox_OverLB_180
	movss xmm0, dword [ebp-0x2c]
	movss xmm2, dword [ebp-0x58]
	ucomiss xmm2, xmm0
	jae Item_ListBox_OverLB_190
Item_ListBox_OverLB_180:
	movss xmm1, dword [edi+0x4]
	addss xmm1, [edi+0xc]
	movss xmm0, dword [_float_16_00000000]
	subss xmm1, xmm0
	movss xmm2, dword [ebp-0x4c]
	movss [ebp-0x30], xmm2
	movss xmm2, dword [ebp-0xa0]
	addss xmm2, xmm0
	movss [ebp-0x2c], xmm2
	movss [ebp-0x28], xmm0
	movss [ebp-0x24], xmm1
	mov dword [esp+0x8], 0x4
	movss xmm0, dword [ebp-0xa8]
	movss [esp+0x4], xmm0
	mov [esp], ebx
	call ScrPlace_ApplyX
	fstp dword [ebp-0x54]
	mov dword [esp+0x8], 0x4
	movss xmm1, dword [ebp-0xac]
	movss [esp+0x4], xmm1
	mov [esp], ebx
	call ScrPlace_ApplyY
	fstp dword [ebp-0x50]
	mov eax, [ebp-0x48]
	mov [esp+0x18], eax
	mov edx, [ebp-0x44]
	mov [esp+0x14], edx
	lea eax, [ebp-0x24]
	mov [esp+0x10], eax
	lea edx, [ebp-0x28]
	mov [esp+0xc], edx
	lea eax, [ebp-0x2c]
	mov [esp+0x8], eax
	lea edx, [ebp-0x30]
	mov [esp+0x4], edx
	mov [esp], ebx
	call ScrPlace_ApplyRect
	movss xmm0, dword [ebp-0x30]
	movss xmm1, dword [ebp-0x54]
	ucomiss xmm1, xmm0
	jb Item_ListBox_OverLB_10
	addss xmm0, [ebp-0x28]
	ucomiss xmm0, xmm1
	jb Item_ListBox_OverLB_10
	movss xmm0, dword [ebp-0x2c]
	movss xmm2, dword [ebp-0x50]
	ucomiss xmm2, xmm0
	jb Item_ListBox_OverLB_10
Item_ListBox_OverLB_150:
	addss xmm0, [ebp-0x24]
	ucomiss xmm0, xmm2
	jb Item_ListBox_OverLB_10
	mov eax, 0x1000
	jmp Item_ListBox_OverLB_60
Item_ListBox_OverLB_40:
	movss xmm0, dword [ebp-0x2c]
	movss xmm2, dword [ebp-0x70]
	ucomiss xmm2, xmm0
	jb Item_ListBox_OverLB_30
	addss xmm0, [ebp-0x24]
	ucomiss xmm0, xmm2
	jb Item_ListBox_OverLB_30
	mov eax, 0x100
	jmp Item_ListBox_OverLB_60
Item_ListBox_OverLB_80:
	movss xmm0, dword [ebp-0x2c]
	movss xmm2, dword [ebp-0x98]
	ucomiss xmm2, xmm0
	jb Item_ListBox_OverLB_70
	addss xmm0, [ebp-0x24]
	ucomiss xmm0, xmm2
	jb Item_ListBox_OverLB_70
	mov eax, 0x100
	jmp Item_ListBox_OverLB_60
Item_ListBox_OverLB_100:
	movss xmm0, dword [ebp-0x2c]
	movss xmm2, dword [ebp-0x90]
	ucomiss xmm2, xmm0
	jb Item_ListBox_OverLB_90
	addss xmm0, [ebp-0x24]
	ucomiss xmm0, xmm2
	jb Item_ListBox_OverLB_90
	mov eax, 0x200
	jmp Item_ListBox_OverLB_60
Item_ListBox_OverLB_120:
	addss xmm0, [ebp-0x24]
	ucomiss xmm0, xmm2
	jb Item_ListBox_OverLB_110
	mov eax, 0x400
	jmp Item_ListBox_OverLB_60
Item_ListBox_OverLB_170:
	addss xmm0, [ebp-0x24]
	ucomiss xmm0, xmm2
	jb Item_ListBox_OverLB_160
	mov eax, 0x400
	jmp Item_ListBox_OverLB_60
Item_ListBox_OverLB_190:
	addss xmm0, [ebp-0x24]
	ucomiss xmm0, xmm2
	jb Item_ListBox_OverLB_180
	mov eax, 0x800
	jmp Item_ListBox_OverLB_60
Item_ListBox_OverLB_140:
	addss xmm0, [ebp-0x24]
	ucomiss xmm0, xmm2
	jb Item_ListBox_OverLB_130
	mov eax, 0x800
	jmp Item_ListBox_OverLB_60


;Item_HandleKey(UiContext*, itemDef_s*, int, int)
Item_HandleKey:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xfc
	mov edi, eax
	mov [ebp-0xd8], edx
	mov [ebp-0xdc], ecx
	mov esi, [ebp+0x8]
	mov eax, [itemCapture]
	test eax, eax
	jz Item_HandleKey_10
	mov dword [itemCapture], 0x0
	mov dword [captureFunc], 0x0
	mov dword [captureData], 0x0
Item_HandleKey_60:
	test esi, esi
	jz Item_HandleKey_20
Item_HandleKey_40:
	mov edx, [ebp-0xd8]
Item_HandleKey_80:
	mov eax, [edx+0xb4]
	sub eax, 0x6
	cmp eax, 0x8
	jbe Item_HandleKey_30
Item_HandleKey_20:
	xor eax, eax
Item_HandleKey_90:
	add esp, 0xfc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Item_HandleKey_30:
	jmp dword [eax*4+Item_HandleKey_jumptab_0]
Item_HandleKey_10:
	test esi, esi
	jz Item_HandleKey_20
	mov eax, [ebp-0xdc]
	sub eax, 0xc8
	cmp eax, 0x2
	ja Item_HandleKey_40
	mov edx, [ebp-0xd8]
	mov eax, [edx+0xb4]
	cmp eax, 0x6
	jz Item_HandleKey_50
	cmp eax, 0xa
	jnz Item_HandleKey_60
	movss xmm0, dword [edi+0x14]
	movss [ebp-0xd4], xmm0
	movss xmm1, dword [edi+0x10]
	movss [ebp-0xd0], xmm1
	mov eax, [edi]
	mov [ebp-0xcc], eax
	mov ebx, [ebp-0xd8]
	add ebx, 0x4
	mov edx, [ebp-0xd8]
	call Item_Slider_ThumbPosition
	movss xmm1, dword [ebx+0x4]
	subss xmm1, [_float_2_00000000]
	mov edx, [ebx+0x10]
	mov [ebp-0x5c], edx
	mov ebx, [ebx+0x14]
	subss xmm0, [_float_5_00000000]
	movss [ebp-0x30], xmm0
	movss [ebp-0x2c], xmm1
	mov dword [ebp-0x28], 0x41200000
	mov dword [ebp-0x24], 0x41a00000
	mov eax, [ebp-0xcc]
	shl eax, 0x6
	mov ecx, [ebp-0xcc]
	lea eax, [eax+ecx*4]
	mov edx, scrPlaceView
	add eax, edx
	mov [ebp-0xc8], eax
	mov dword [esp+0x8], 0x4
	movss xmm0, dword [ebp-0xd0]
	movss [esp+0x4], xmm0
	mov [esp], eax
	call ScrPlace_ApplyX
	fstp dword [ebp-0xc4]
	mov dword [esp+0x8], 0x4
	movss xmm1, dword [ebp-0xd4]
	movss [esp+0x4], xmm1
	mov eax, [ebp-0xc8]
	mov [esp], eax
	call ScrPlace_ApplyY
	fstp dword [ebp-0xc0]
	mov [esp+0x18], ebx
	mov edx, [ebp-0x5c]
	mov [esp+0x14], edx
	lea edx, [ebp-0x30]
	lea eax, [ebp-0x24]
	mov [esp+0x10], eax
	lea eax, [ebp-0x28]
	mov [esp+0xc], eax
	lea eax, [ebp-0x2c]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov ecx, [ebp-0xc8]
	mov [esp], ecx
	call ScrPlace_ApplyRect
	movss xmm0, dword [ebp-0x30]
	movss xmm1, dword [ebp-0xc4]
	ucomiss xmm1, xmm0
	jb Item_HandleKey_70
	addss xmm0, [ebp-0x28]
	ucomiss xmm0, xmm1
	jb Item_HandleKey_70
	movss xmm0, dword [ebp-0x2c]
	movss xmm1, dword [ebp-0xc0]
	ucomiss xmm1, xmm0
	jb Item_HandleKey_70
	addss xmm0, [ebp-0x24]
	ucomiss xmm0, xmm1
	jb Item_HandleKey_70
	mov eax, 0x400
Item_HandleKey_400:
	test eax, eax
	jz Item_HandleKey_40
	mov eax, [ebp-0xdc]
	mov [scrollInfo+0xc], eax
	mov edx, [ebp-0xd8]
	mov [scrollInfo+0x18], edx
	mov eax, [edi+0x10]
	mov [scrollInfo+0x10], eax
	mov eax, [edi+0x14]
	mov [scrollInfo+0x14], eax
	mov dword [captureData], scrollInfo
	mov dword [captureFunc], 0x1a27a8
	mov [itemCapture], edx
	jmp Item_HandleKey_80
Item_HandleKey_660:
	mov [esp+0xc], esi
	mov ecx, [ebp-0xdc]
	mov [esp+0x8], ecx
	mov esi, [ebp-0xd8]
	mov [esp+0x4], esi
	mov [esp], edi
	call Item_Bind_HandleKey
	jmp Item_HandleKey_90
Item_HandleKey_630:
	mov ecx, [ebp-0xd8]
	mov eax, [ecx+0x10c]
	test eax, eax
	jz Item_HandleKey_20
	mov esi, ecx
	mov ecx, [edi]
	mov eax, [esi+ecx*4+0x50]
	test al, 0x4
	jz Item_HandleKey_20
	test al, 0x2
	jz Item_HandleKey_20
	mov eax, [ebp-0xdc]
	sub eax, 0xc8
	cmp eax, 0x2
	ja Item_HandleKey_100
	mov eax, [edi+0x18]
	test eax, eax
	jz Item_HandleKey_20
	movss xmm0, dword [edi+0x14]
	movss [ebp-0xbc], xmm0
	mov edx, [edi+0x10]
	mov ebx, esi
	add ebx, 0x4
	mov eax, [esi+0x4]
	mov [ebp-0x30], eax
	mov eax, [ebx+0x4]
	mov [ebp-0x2c], eax
	mov eax, [ebx+0x8]
	mov [ebp-0x28], eax
	mov eax, [ebx+0xc]
	mov [ebp-0x24], eax
	mov eax, ecx
	shl eax, 0x6
	lea ecx, [eax+ecx*4]
	mov eax, scrPlaceView
	add ecx, eax
	mov [ebp-0xb8], ecx
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], edx
	mov [esp], ecx
	call ScrPlace_ApplyX
	fstp dword [ebp-0xb4]
	mov dword [esp+0x8], 0x4
	movss xmm0, dword [ebp-0xbc]
	movss [esp+0x4], xmm0
	mov eax, [ebp-0xb8]
	mov [esp], eax
	call ScrPlace_ApplyY
	fstp dword [ebp-0xb0]
	mov eax, [ebx+0x14]
	mov [esp+0x18], eax
	mov eax, [ebx+0x10]
	mov [esp+0x14], eax
	lea edx, [ebp-0x30]
	lea eax, [ebp-0x24]
	mov [esp+0x10], eax
	lea eax, [ebp-0x28]
	mov [esp+0xc], eax
	lea eax, [ebp-0x2c]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov edx, [ebp-0xb8]
	mov [esp], edx
	call ScrPlace_ApplyRect
	movss xmm0, dword [ebp-0x30]
	movss xmm1, dword [ebp-0xb4]
	ucomiss xmm1, xmm0
	jb Item_HandleKey_20
	addss xmm0, [ebp-0x28]
	ucomiss xmm0, xmm1
	jb Item_HandleKey_20
	movss xmm0, dword [ebp-0x2c]
	movss xmm1, dword [ebp-0xb0]
	ucomiss xmm1, xmm0
	jb Item_HandleKey_20
	addss xmm0, [ebp-0x24]
	ucomiss xmm0, xmm1
	jb Item_HandleKey_20
Item_HandleKey_100:
	mov eax, [ebp-0xdc]
	sub eax, 0xc8
	cmp eax, 0x2
	jbe Item_HandleKey_110
	cmp dword [ebp-0xdc], 0xd
	jz Item_HandleKey_120
	cmp dword [ebp-0xdc], 0x9c
	jz Item_HandleKey_120
	cmp dword [ebp-0xdc], 0x9d
	jz Item_HandleKey_120
	cmp dword [ebp-0xdc], 0xa4
	jz Item_HandleKey_120
	cmp dword [ebp-0xdc], 0xa3
	jz Item_HandleKey_120
	xor eax, eax
Item_HandleKey_480:
	test eax, eax
	jz Item_HandleKey_20
Item_HandleKey_110:
	mov edx, [ebp-0xd8]
	mov eax, [edx+0x10c]
	mov [esp], eax
	call Cvar_GetVariantString
	mov dword [esp+0x8], 0x19
	mov [esp+0x4], eax
	lea ebx, [ebp-0x49]
	mov [esp], ebx
	call Q_strncpyz
	mov [esp], ebx
	call atoi
	test eax, eax
	setz al
	movzx eax, al
	mov [esp+0x4], eax
	mov dword [esp], _cstring_i
Item_HandleKey_430:
	call va
	mov [esp+0x4], eax
	mov ecx, [ebp-0xd8]
	mov eax, [ecx+0x10c]
	mov [esp], eax
	call Cvar_SetFromStringByName
	mov eax, 0x1
	jmp Item_HandleKey_90
Item_HandleKey_650:
	mov ecx, [edi]
	mov esi, [ebp-0xd8]
	mov eax, [esi+ecx*4+0x50]
	test al, 0x4
	jz Item_HandleKey_20
	test al, 0x2
	jz Item_HandleKey_20
	mov eax, [ebp-0xdc]
	sub eax, 0xc8
	cmp eax, 0x2
	ja Item_HandleKey_130
	mov eax, [edi+0x18]
	test eax, eax
	jz Item_HandleKey_20
	movss xmm0, dword [edi+0x14]
	movss [ebp-0x88], xmm0
	mov edx, [edi+0x10]
	mov ebx, esi
	add ebx, 0x4
	mov eax, [esi+0x4]
	mov [ebp-0x30], eax
	mov eax, [ebx+0x4]
	mov [ebp-0x2c], eax
	mov eax, [ebx+0x8]
	mov [ebp-0x28], eax
	mov eax, [ebx+0xc]
	mov [ebp-0x24], eax
	mov eax, ecx
	shl eax, 0x6
	lea ecx, [eax+ecx*4]
	mov eax, scrPlaceView
	add ecx, eax
	mov [ebp-0x84], ecx
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], edx
	mov [esp], ecx
	call ScrPlace_ApplyX
	fstp dword [ebp-0x80]
	mov dword [esp+0x8], 0x4
	movss xmm0, dword [ebp-0x88]
	movss [esp+0x4], xmm0
	mov eax, [ebp-0x84]
	mov [esp], eax
	call ScrPlace_ApplyY
	fstp dword [ebp-0x7c]
	mov eax, [ebx+0x14]
	mov [esp+0x18], eax
	mov eax, [ebx+0x10]
	mov [esp+0x14], eax
	lea edx, [ebp-0x30]
	lea eax, [ebp-0x24]
	mov [esp+0x10], eax
	lea eax, [ebp-0x28]
	mov [esp+0xc], eax
	lea eax, [ebp-0x2c]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov edx, [ebp-0x84]
	mov [esp], edx
	call ScrPlace_ApplyRect
	movss xmm0, dword [ebp-0x30]
	movss xmm1, dword [ebp-0x80]
	ucomiss xmm1, xmm0
	jb Item_HandleKey_20
	addss xmm0, [ebp-0x28]
	ucomiss xmm0, xmm1
	jb Item_HandleKey_20
	movss xmm0, dword [ebp-0x2c]
	movss xmm1, dword [ebp-0x7c]
	ucomiss xmm1, xmm0
	jb Item_HandleKey_20
	addss xmm0, [ebp-0x24]
	ucomiss xmm0, xmm1
	jb Item_HandleKey_20
Item_HandleKey_130:
	mov edx, [ebp-0xd8]
	mov eax, [edx+0x12c]
	mov [esp], eax
	call Cvar_FindVar
	mov ebx, eax
	cmp byte [eax+0xa], 0x6
	jz Item_HandleKey_140
Item_HandleKey_360:
	xor esi, esi
Item_HandleKey_350:
	mov edx, [ebp-0xd8]
	mov eax, [edx+0x12c]
	mov [esp], eax
	call Cvar_FindVar
	cmp byte [eax+0xa], 0x6
	jz Item_HandleKey_150
Item_HandleKey_290:
	xor edx, edx
Item_HandleKey_330:
	cmp esi, edx
	jz Item_HandleKey_20
	mov [esp+0x4], edx
	mov dword [esp], _cstring_i
	call va
Item_HandleKey_250:
	mov [esp+0x4], eax
	mov esi, [ebp-0xd8]
	mov eax, [esi+0x10c]
	mov [esp], eax
	call Cvar_SetFromStringByName
	mov eax, 0x1
	jmp Item_HandleKey_90
Item_HandleKey_640:
	mov esi, [ebp-0xd8]
	mov [esp], esi
	call Item_GetMultiDef
	mov [ebp-0xac], eax
	test eax, eax
	jz Item_HandleKey_20
	mov ecx, [edi]
	mov eax, [esi+ecx*4+0x50]
	test al, 0x4
	jz Item_HandleKey_20
	test al, 0x2
	jz Item_HandleKey_20
	mov eax, [ebp-0xdc]
	sub eax, 0xc8
	cmp eax, 0x2
	ja Item_HandleKey_160
	mov eax, [edi+0x18]
	test eax, eax
	jz Item_HandleKey_20
	movss xmm0, dword [edi+0x14]
	movss [ebp-0xa8], xmm0
	mov edx, [edi+0x10]
	mov ebx, esi
	add ebx, 0x4
	mov eax, [esi+0x4]
	mov [ebp-0x30], eax
	mov eax, [ebx+0x4]
	mov [ebp-0x2c], eax
	mov eax, [ebx+0x8]
	mov [ebp-0x28], eax
	mov eax, [ebx+0xc]
	mov [ebp-0x24], eax
	mov eax, ecx
	shl eax, 0x6
	lea ecx, [eax+ecx*4]
	mov eax, scrPlaceView
	add ecx, eax
	mov [ebp-0xa4], ecx
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], edx
	mov [esp], ecx
	call ScrPlace_ApplyX
	fstp dword [ebp-0xa0]
	mov dword [esp+0x8], 0x4
	movss xmm0, dword [ebp-0xa8]
	movss [esp+0x4], xmm0
	mov eax, [ebp-0xa4]
	mov [esp], eax
	call ScrPlace_ApplyY
	fstp dword [ebp-0x9c]
	mov eax, [ebx+0x14]
	mov [esp+0x18], eax
	mov eax, [ebx+0x10]
	mov [esp+0x14], eax
	lea edx, [ebp-0x30]
	lea eax, [ebp-0x24]
	mov [esp+0x10], eax
	lea eax, [ebp-0x28]
	mov [esp+0xc], eax
	lea eax, [ebp-0x2c]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov edx, [ebp-0xa4]
	mov [esp], edx
	call ScrPlace_ApplyRect
	movss xmm0, dword [ebp-0x30]
	movss xmm1, dword [ebp-0xa0]
	ucomiss xmm1, xmm0
	jb Item_HandleKey_20
	addss xmm0, [ebp-0x28]
	ucomiss xmm0, xmm1
	jb Item_HandleKey_20
	movss xmm0, dword [ebp-0x2c]
	movss xmm1, dword [ebp-0x9c]
	ucomiss xmm1, xmm0
	jb Item_HandleKey_20
	addss xmm0, [ebp-0x24]
	ucomiss xmm0, xmm1
	jb Item_HandleKey_20
Item_HandleKey_160:
	mov eax, [ebp-0xd8]
	mov [esp], eax
	call Item_GetMultiDef
	mov ebx, eax
	test eax, eax
	jz Item_HandleKey_170
	mov edi, [eax+0x184]
	test edi, edi
	jz Item_HandleKey_180
	mov edx, [ebp-0xd8]
	mov eax, [edx+0x10c]
	mov [esp], eax
	call Cvar_GetVariantString
	mov [ebp-0x8c], eax
	mov esi, [ebx+0x180]
	test esi, esi
	jg Item_HandleKey_190
Item_HandleKey_170:
	xor edi, edi
Item_HandleKey_380:
	mov eax, [ebp-0xd8]
	mov [esp], eax
	call Item_GetMultiDef
	test eax, eax
	jz Item_HandleKey_200
	mov edx, [eax+0x180]
	test edx, edx
	jz Item_HandleKey_200
	cmp dword [ebp-0xdc], 0xc8
	jz Item_HandleKey_210
	cmp dword [ebp-0xdc], 0xca
	jz Item_HandleKey_210
	cmp dword [ebp-0xdc], 0xd
	jz Item_HandleKey_220
	cmp dword [ebp-0xdc], 0xa3
	jz Item_HandleKey_220
	cmp dword [ebp-0xdc], 0x9d
	jz Item_HandleKey_220
	xor eax, eax
Item_HandleKey_490:
	test eax, eax
	jz Item_HandleKey_230
Item_HandleKey_210:
	lea eax, [edi+0x1]
	mov ecx, edx
	cdq
	idiv ecx
Item_HandleKey_440:
	cmp edi, edx
	jz Item_HandleKey_20
	mov eax, [ebp-0xac]
	mov ecx, [eax+0x184]
	test ecx, ecx
	jz Item_HandleKey_240
	mov eax, [eax+edx*4+0x80]
	jmp Item_HandleKey_250
Item_HandleKey_610:
	mov eax, [ebp-0xdc]
	mov [esp+0xc], eax
	mov eax, [ebp-0xd8]
	add eax, 0x124
	mov [esp+0x8], eax
	mov edx, [ebp-0xd8]
	mov eax, [edx+0x44]
	mov [esp+0x4], eax
	mov eax, [edx+0x40]
	mov [esp], eax
	call UI_OwnerDrawHandleKey
	jmp Item_HandleKey_90
Item_HandleKey_620:
	mov eax, [ebp-0xd8]
	mov esi, [eax+0x10c]
	test esi, esi
	jz Item_HandleKey_20
	mov ecx, [edi]
	mov eax, [eax+ecx*4+0x50]
	test al, 0x4
	jz Item_HandleKey_20
	test al, 0x2
	jz Item_HandleKey_20
	mov eax, [ebp-0xdc]
	sub eax, 0xc8
	cmp eax, 0x2
	ja Item_HandleKey_260
	mov ebx, [edi+0x18]
	test ebx, ebx
	jz Item_HandleKey_20
	movss xmm0, dword [edi+0x14]
	movss [ebp-0x6c], xmm0
	mov edx, [edi+0x10]
	mov ebx, [ebp-0xd8]
	add ebx, 0x4
	mov esi, [ebp-0xd8]
	mov eax, [esi+0x4]
	mov [ebp-0x30], eax
	mov eax, [ebx+0x4]
	mov [ebp-0x2c], eax
	mov eax, [ebx+0x8]
	mov [ebp-0x28], eax
	mov eax, [ebx+0xc]
	mov [ebp-0x24], eax
	mov eax, ecx
	shl eax, 0x6
	lea ecx, [eax+ecx*4]
	mov eax, scrPlaceView
	add ecx, eax
	mov [ebp-0x68], ecx
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], edx
	mov [esp], ecx
	call ScrPlace_ApplyX
	fstp dword [ebp-0x64]
	mov dword [esp+0x8], 0x4
	movss xmm0, dword [ebp-0x6c]
	movss [esp+0x4], xmm0
	mov eax, [ebp-0x68]
	mov [esp], eax
	call ScrPlace_ApplyY
	fstp dword [ebp-0x60]
	mov eax, [ebx+0x14]
	mov [esp+0x18], eax
	mov eax, [ebx+0x10]
	mov [esp+0x14], eax
	lea edx, [ebp-0x30]
	lea eax, [ebp-0x24]
	mov [esp+0x10], eax
	lea eax, [ebp-0x28]
	mov [esp+0xc], eax
	lea eax, [ebp-0x2c]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov edx, [ebp-0x68]
	mov [esp], edx
	call ScrPlace_ApplyRect
	movss xmm0, dword [ebp-0x30]
	movss xmm1, dword [ebp-0x64]
	ucomiss xmm1, xmm0
	jb Item_HandleKey_20
	addss xmm0, [ebp-0x28]
	ucomiss xmm0, xmm1
	jb Item_HandleKey_20
	movss xmm0, dword [ebp-0x2c]
	movss xmm1, dword [ebp-0x60]
	ucomiss xmm1, xmm0
	jb Item_HandleKey_20
	addss xmm0, [ebp-0x24]
	ucomiss xmm0, xmm1
	jb Item_HandleKey_20
Item_HandleKey_260:
	mov eax, [ebp-0xdc]
	sub eax, 0xc8
	cmp eax, 0x2
	ja Item_HandleKey_270
	mov edx, [ebp-0xd8]
	mov eax, edi
	call Scroll_Slider_SetThumbPos
	mov eax, 0x1
	jmp Item_HandleKey_90
Item_HandleKey_600:
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	mov ecx, [ebp-0xdc]
	mov edx, [ebp-0xd8]
	mov eax, edi
	call Item_ListBox_HandleKey
	jmp Item_HandleKey_90
Item_HandleKey_50:
	movss xmm1, dword [edi+0x14]
	movss xmm0, dword [edi+0x10]
	mov eax, [edi]
	call Item_ListBox_OverLB
	mov edx, eax
	test ah, 0x3
	jz Item_HandleKey_280
	mov eax, [edi+0x8]
	add eax, 0x1f4
	mov [scrollInfo], eax
	mov eax, [edi+0x8]
	add eax, 0x96
	mov [scrollInfo+0x4], eax
	mov dword [scrollInfo+0x8], 0x1f4
	mov ecx, [ebp-0xdc]
	mov [scrollInfo+0xc], ecx
	shr edx, 0x8
	and edx, 0x1
	mov [scrollInfo+0x1c], edx
	mov eax, [ebp-0xd8]
	mov [scrollInfo+0x18], eax
	mov dword [captureData], scrollInfo
	mov dword [captureFunc], 0x1a6502
	mov [itemCapture], eax
	mov edx, eax
	jmp Item_HandleKey_80
Item_HandleKey_150:
	mov edx, [eax+0x3c]
	test edx, edx
	jz Item_HandleKey_290
	cmp dword [ebp-0xdc], 0xc8
	jz Item_HandleKey_300
	cmp dword [ebp-0xdc], 0xca
	jz Item_HandleKey_300
	cmp dword [ebp-0xdc], 0xd
	jz Item_HandleKey_310
	cmp dword [ebp-0xdc], 0xa3
	jz Item_HandleKey_310
	cmp dword [ebp-0xdc], 0x9d
	jz Item_HandleKey_310
	xor eax, eax
Item_HandleKey_540:
	test eax, eax
	jz Item_HandleKey_320
Item_HandleKey_300:
	lea eax, [esi+0x1]
	mov ecx, edx
	cdq
	idiv ecx
	jmp Item_HandleKey_330
Item_HandleKey_140:
	mov ecx, [ebp-0xd8]
	mov eax, [ecx+0x10c]
	mov [esp], eax
	call Cvar_GetVariantString
	mov edi, eax
	mov [esp], eax
	call atoi
	mov esi, eax
	test eax, eax
	js Item_HandleKey_340
	cmp eax, [ebx+0x3c]
	jl Item_HandleKey_350
Item_HandleKey_340:
	mov eax, [ebx+0x3c]
	test eax, eax
	jle Item_HandleKey_360
	xor esi, esi
Item_HandleKey_370:
	mov eax, [ebx+0x40]
	mov eax, [eax+esi*4]
	mov [esp+0x4], eax
	mov [esp], edi
	call Q_stricmp
	test eax, eax
	jz Item_HandleKey_350
	add esi, 0x1
	cmp esi, [ebx+0x3c]
	jl Item_HandleKey_370
	jmp Item_HandleKey_360
Item_HandleKey_190:
	mov esi, ebx
	xor edi, edi
Item_HandleKey_390:
	mov eax, [esi+0x80]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x8c]
	mov [esp], ecx
	call Q_stricmp
	test eax, eax
	jz Item_HandleKey_380
	add edi, 0x1
	add esi, 0x4
	cmp edi, [ebx+0x180]
	jl Item_HandleKey_390
	jmp Item_HandleKey_170
Item_HandleKey_70:
	xor eax, eax
	jmp Item_HandleKey_400
Item_HandleKey_280:
	and dh, 0x4
	jz Item_HandleKey_40
	mov ecx, [ebp-0xdc]
	mov [scrollInfo+0xc], ecx
	mov eax, [ebp-0xd8]
	mov [scrollInfo+0x18], eax
	mov eax, [edi+0x10]
	mov [scrollInfo+0x10], eax
	mov eax, [edi+0x14]
	mov [scrollInfo+0x14], eax
	mov dword [captureData], scrollInfo
	mov dword [captureFunc], 0x1a62a4
	mov edx, [ebp-0xd8]
	mov [itemCapture], edx
	jmp Item_HandleKey_80
Item_HandleKey_270:
	mov eax, [ebp-0xd8]
	mov [esp], eax
	call Item_GetEditFieldDef
	mov ebx, eax
	test eax, eax
	jz Item_HandleKey_20
	movss xmm0, dword [eax+0x4]
	movss [ebp-0x70], xmm0
	subss xmm0, [eax]
	mulss xmm0, [_float_0_05000000]
	movss [ebp-0x70], xmm0
	mov edx, [ebp-0xd8]
	mov eax, [edx+0x10c]
	mov [esp], eax
	call Cvar_GetVariantString
	mov [esp], eax
	call atof
	fstp qword [ebp-0x78]
	cvtsd2ss xmm3, [ebp-0x78]
	cmp dword [ebp-0xdc], 0x9c
	jz Item_HandleKey_410
	cmp dword [ebp-0xdc], 0xa4
	jz Item_HandleKey_410
	xor eax, eax
Item_HandleKey_510:
	test eax, eax
	jz Item_HandleKey_420
	movss xmm1, dword [ebx]
	subss xmm3, [ebp-0x70]
	movaps xmm2, xmm3
	subss xmm2, xmm1
	pxor xmm0, xmm0
	cmpss xmm0, xmm2, 0x6
	andps xmm1, xmm0
	andnps xmm0, xmm3
	orps xmm0, xmm1
	cvtss2sd xmm0, xmm0
	movsd [esp+0x4], xmm0
	mov dword [esp], _cstring_g
	jmp Item_HandleKey_430
Item_HandleKey_200:
	xor edx, edx
	jmp Item_HandleKey_440
Item_HandleKey_180:
	mov esi, [ebp-0xd8]
	mov eax, [esi+0x10c]
	mov [esp], eax
	call Cvar_GetVariantString
	mov [esp], eax
	call atof
	fstp qword [ebp-0x98]
	cvtsd2ss xmm1, [ebp-0x98]
	mov edx, [ebx+0x180]
	test edx, edx
	jle Item_HandleKey_170
	ucomiss xmm1, [ebx+0x100]
	jp Item_HandleKey_450
	jz Item_HandleKey_170
Item_HandleKey_450:
	mov eax, ebx
	xor edi, edi
	jmp Item_HandleKey_460
Item_HandleKey_470:
	movss xmm0, dword [eax+0x104]
	add eax, 0x4
	ucomiss xmm0, xmm1
	jp Item_HandleKey_460
	jz Item_HandleKey_380
Item_HandleKey_460:
	add edi, 0x1
	cmp edi, edx
	jnz Item_HandleKey_470
	jmp Item_HandleKey_170
Item_HandleKey_240:
	cvtss2sd xmm0, [eax+edx*4+0x100]
	movsd [esp+0x4], xmm0
	mov dword [esp], _cstring_g
	call va
	mov [esp+0x4], eax
	mov edx, [ebp-0xd8]
	mov eax, [edx+0x10c]
	mov [esp], eax
	call Cvar_SetFromStringByName
	mov eax, 0x1
	jmp Item_HandleKey_90
Item_HandleKey_120:
	mov eax, 0x1
	jmp Item_HandleKey_480
Item_HandleKey_220:
	mov eax, 0x1
	jmp Item_HandleKey_490
Item_HandleKey_420:
	cmp dword [ebp-0xdc], 0x9d
	jz Item_HandleKey_500
	cmp dword [ebp-0xdc], 0xa3
	jz Item_HandleKey_500
	xor eax, eax
Item_HandleKey_550:
	test eax, eax
	jz Item_HandleKey_20
	movss xmm1, dword [ebx+0x4]
	addss xmm3, [ebp-0x70]
	movaps xmm2, xmm1
	subss xmm2, xmm3
	pxor xmm0, xmm0
	cmpss xmm0, xmm2, 0x6
	andps xmm1, xmm0
	andnps xmm0, xmm3
	orps xmm0, xmm1
	cvtss2sd xmm0, xmm0
	movsd [esp+0x4], xmm0
	mov dword [esp], _cstring_g
	call va
	jmp Item_HandleKey_250
Item_HandleKey_410:
	mov eax, 0x1
	jmp Item_HandleKey_510
Item_HandleKey_230:
	cmp dword [ebp-0xdc], 0xc9
	jz Item_HandleKey_520
	cmp dword [ebp-0xdc], 0xa4
	jz Item_HandleKey_530
	cmp dword [ebp-0xdc], 0x9c
	jz Item_HandleKey_530
	xor eax, eax
Item_HandleKey_580:
	test eax, eax
	jz Item_HandleKey_20
Item_HandleKey_520:
	lea eax, [edi+edx-0x1]
	mov esi, edx
	cdq
	idiv esi
	jmp Item_HandleKey_440
Item_HandleKey_310:
	mov eax, 0x1
	jmp Item_HandleKey_540
Item_HandleKey_500:
	mov eax, 0x1
	jmp Item_HandleKey_550
Item_HandleKey_320:
	cmp dword [ebp-0xdc], 0xc9
	jz Item_HandleKey_560
	cmp dword [ebp-0xdc], 0xa4
	jz Item_HandleKey_570
	cmp dword [ebp-0xdc], 0x9c
	jz Item_HandleKey_570
	xor eax, eax
Item_HandleKey_590:
	test eax, eax
	jz Item_HandleKey_20
Item_HandleKey_560:
	lea eax, [esi+edx-0x1]
	mov ecx, edx
	cdq
	idiv ecx
	jmp Item_HandleKey_330
Item_HandleKey_530:
	mov eax, 0x1
	jmp Item_HandleKey_580
Item_HandleKey_570:
	mov eax, 0x1
	jmp Item_HandleKey_590
	nop
	
	
Item_HandleKey_jumptab_0:
	dd Item_HandleKey_600
	dd Item_HandleKey_20
	dd Item_HandleKey_610
	dd Item_HandleKey_20
	dd Item_HandleKey_620
	dd Item_HandleKey_630
	dd Item_HandleKey_640
	dd Item_HandleKey_650
	dd Item_HandleKey_660


;Menu_HandleMouseMove(UiContext*, menuDef_t*)
Menu_HandleMouseMove:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xfc
	mov [ebp-0xe0], eax
	mov [ebp-0xc0], edx
	mov ecx, [eax+0x18]
	test ecx, ecx
	jz Menu_HandleMouseMove_10
	test edx, edx
	jz Menu_HandleMouseMove_10
	mov edx, eax
	mov eax, [eax]
	mov ecx, [ebp-0xc0]
	test dword [ecx+eax*4+0x50], 0x4004
	jz Menu_HandleMouseMove_10
	mov eax, [itemCapture]
	test eax, eax
	jz Menu_HandleMouseMove_20
Menu_HandleMouseMove_10:
	xor eax, eax
Menu_HandleMouseMove_270:
	add esp, 0xfc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Menu_HandleMouseMove_20:
	mov edi, [g_waitingForKey]
	test edi, edi
	jnz Menu_HandleMouseMove_10
	movss xmm0, dword [edx+0x10]
	movss [ebp-0xbc], xmm0
	movss xmm1, dword [edx+0x14]
	movss [ebp-0xb8], xmm1
	mov dword [ebp-0xb0], 0x0
	mov dword [ebp-0xac], 0x0
	mov dword [ebp-0xb4], 0x0
Menu_HandleMouseMove_210:
	mov eax, [ebp-0xc0]
	mov eax, [eax+0xa4]
	mov [ebp-0xc4], eax
	sub eax, 0x1
	js Menu_HandleMouseMove_30
	shl eax, 0x2
	mov [ebp-0x44], eax
	mov dword [ebp-0x48], 0x0
	mov ebx, eax
Menu_HandleMouseMove_180:
	mov edx, [ebp-0xc0]
	mov ecx, [edx+0x118]
	mov edx, [ecx+ebx]
	mov edi, [ebp-0xe0]
	mov eax, [edi]
	test dword [edx+eax*4+0x50], 0x4004
	jz Menu_HandleMouseMove_40
	test byte [edx+0x11c], 0x3
	jnz Menu_HandleMouseMove_50
Menu_HandleMouseMove_200:
	mov edx, [ebp-0x44]
	mov eax, [ecx+edx]
	test byte [eax+0x11c], 0xc
	jz Menu_HandleMouseMove_60
	mov dword [esp+0x4], 0x4
	mov [esp], eax
	call Item_EnableShowViaDvar
	test eax, eax
	jz Menu_HandleMouseMove_40
	mov ebx, [ebp-0xc0]
	mov ecx, [ebx+0x118]
	mov edi, [ebp-0x44]
Menu_HandleMouseMove_190:
	mov eax, [ecx+edi]
	mov [esp+0x4], eax
	mov edx, [ebp-0xe0]
	mov eax, [edx]
	mov [esp], eax
	call Item_IsVisible
	test eax, eax
	jz Menu_HandleMouseMove_40
	mov ecx, [ebp-0xc0]
	mov eax, [ecx+0x118]
	mov eax, [eax+edi]
	mov ebx, [ebp-0xe0]
	mov ecx, [ebx]
	mov edx, [eax+ecx*4+0x50]
	test dl, 0x4
	jz Menu_HandleMouseMove_70
	and dl, 0x2
	jnz Menu_HandleMouseMove_80
Menu_HandleMouseMove_70:
	lea esi, [eax+0x4]
	mov eax, [eax+0x4]
	mov [ebp-0x30], eax
	mov eax, [esi+0x4]
	mov [ebp-0x2c], eax
	mov eax, [esi+0x8]
	mov [ebp-0x28], eax
	mov eax, [esi+0xc]
	mov [ebp-0x24], eax
	mov eax, ecx
	shl eax, 0x6
	lea ebx, [eax+ecx*4]
	add ebx, scrPlaceView
	mov dword [esp+0x8], 0x4
	movss xmm0, dword [ebp-0xbc]
	movss [esp+0x4], xmm0
	mov [esp], ebx
	call ScrPlace_ApplyX
	fstp dword [ebp-0xa8]
	mov dword [esp+0x8], 0x4
	movss xmm1, dword [ebp-0xb8]
	movss [esp+0x4], xmm1
	mov [esp], ebx
	call ScrPlace_ApplyY
	fstp dword [ebp-0xa4]
	mov eax, [esi+0x14]
	mov [esp+0x18], eax
	mov eax, [esi+0x10]
	mov [esp+0x14], eax
	lea eax, [ebp-0x24]
	mov [esp+0x10], eax
	lea edx, [ebp-0x28]
	mov [esp+0xc], edx
	lea ecx, [ebp-0x2c]
	mov [esp+0x8], ecx
	lea edi, [ebp-0x30]
	mov [esp+0x4], edi
	mov [esp], ebx
	call ScrPlace_ApplyRect
	movss xmm0, dword [ebp-0x30]
	movss xmm1, dword [ebp-0xa8]
	ucomiss xmm1, xmm0
	jb Menu_HandleMouseMove_90
	addss xmm0, [ebp-0x28]
	ucomiss xmm0, xmm1
	jb Menu_HandleMouseMove_90
	movss xmm0, dword [ebp-0x2c]
	movss xmm2, dword [ebp-0xa4]
	ucomiss xmm2, xmm0
	jb Menu_HandleMouseMove_90
	addss xmm0, [ebp-0x24]
	ucomiss xmm0, xmm2
	jb Menu_HandleMouseMove_90
	cmp dword [ebp-0xb4], 0x1
	jnz Menu_HandleMouseMove_40
	mov edx, [ebp-0xc0]
	mov eax, [edx+0x118]
	mov ecx, [ebp-0x44]
	mov esi, [ecx+eax]
	mov ebx, [esi+0xb4]
	test ebx, ebx
	jnz Menu_HandleMouseMove_100
	mov ecx, [esi+0xe0]
	test ecx, ecx
	jz Menu_HandleMouseMove_100
	mov ebx, [ebp-0xe0]
	mov ebx, [ebx]
	mov [ebp-0xdc], ebx
	mov ebx, _ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect
	cld
	mov ecx, 0x6
	xor edx, edx
	mov edi, ebx
	mov eax, edx
	rep stosd
	mov edx, [ebp-0xdc]
	lea eax, [edx+edx*2]
	lea eax, [eax*8+0x90]
	mov edx, [esi+eax+0xc]
	mov [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect], edx
	mov edx, [esi+eax+0x10]
	mov [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect+0x4], edx
	mov edx, [esi+eax+0x14]
	mov [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect+0x8], edx
	mov edx, [esi+eax+0x18]
	mov [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect+0xc], edx
	mov edx, [esi+eax+0x1c]
	mov [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect+0x10], edx
	mov eax, [esi+eax+0x20]
	mov [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect+0x14], eax
	pxor xmm0, xmm0
	ucomiss xmm0, [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect+0x8]
	jp Menu_HandleMouseMove_110
	jz Menu_HandleMouseMove_120
Menu_HandleMouseMove_110:
	movss xmm0, dword [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect+0x4]
	subss xmm0, [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect+0xc]
	movss [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect+0x4], xmm0
Menu_HandleMouseMove_290:
	mov ecx, [ebp-0xe0]
	mov ebx, [ecx]
	mov eax, [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect]
	mov [ebp-0x30], eax
	movss [ebp-0x2c], xmm0
	mov eax, [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect+0x8]
	mov [ebp-0x28], eax
	mov eax, [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect+0xc]
	mov [ebp-0x24], eax
	mov eax, ebx
	shl eax, 0x6
	lea ebx, [eax+ebx*4]
	add ebx, scrPlaceView
	mov dword [esp+0x8], 0x4
	movss xmm0, dword [ebp-0xbc]
	movss [esp+0x4], xmm0
	mov [esp], ebx
	call ScrPlace_ApplyX
	fstp dword [ebp-0xa0]
	mov dword [esp+0x8], 0x4
	movss xmm1, dword [ebp-0xb8]
	movss [esp+0x4], xmm1
	mov [esp], ebx
	call ScrPlace_ApplyY
	fstp dword [ebp-0x9c]
	mov eax, [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect+0x14]
	mov [esp+0x18], eax
	mov eax, [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect+0x10]
	mov [esp+0x14], eax
	lea eax, [ebp-0x24]
	mov [esp+0x10], eax
	lea edx, [ebp-0x28]
	mov [esp+0xc], edx
	lea ecx, [ebp-0x2c]
	mov [esp+0x8], ecx
	lea edi, [ebp-0x30]
	mov [esp+0x4], edi
	mov [esp], ebx
	call ScrPlace_ApplyRect
	movss xmm0, dword [ebp-0x30]
	movss xmm1, dword [ebp-0xa0]
	ucomiss xmm1, xmm0
	jb Menu_HandleMouseMove_40
	addss xmm0, [ebp-0x28]
	ucomiss xmm0, xmm1
	jb Menu_HandleMouseMove_40
	movss xmm0, dword [ebp-0x2c]
	movss xmm2, dword [ebp-0x9c]
	ucomiss xmm2, xmm0
	jb Menu_HandleMouseMove_40
	addss xmm0, [ebp-0x24]
	ucomiss xmm0, xmm2
	jb Menu_HandleMouseMove_40
Menu_HandleMouseMove_100:
	mov eax, [ebp-0xe0]
	mov ecx, [eax]
	mov eax, [esi+ecx*4+0x50]
	test al, 0x4
	jz Menu_HandleMouseMove_40
	test al, 0x10
	jnz Menu_HandleMouseMove_40
	lea eax, [ecx+ecx*2]
	lea eax, [esi+eax*8+0x90]
	lea edx, [eax+0xc]
	movss xmm0, dword [edx+0x8]
	movss [ebp-0x68], xmm0
	movss xmm1, dword [eax+0xc]
	movss [ebp-0x64], xmm1
	mov eax, [edx+0x14]
	mov [ebp-0x60], eax
	mov ebx, [edx+0x10]
	mov [ebp-0x5c], ebx
	movss xmm0, dword [edx+0xc]
	movss [ebp-0x58], xmm0
	movss xmm1, dword [edx+0x4]
	subss xmm1, xmm0
	movss [ebp-0x3c], xmm1
	test byte [esi+0x11c], 0x3
	jz Menu_HandleMouseMove_130
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call Item_EnableShowViaDvar
	test eax, eax
	jz Menu_HandleMouseMove_140
	mov eax, [ebp-0xe0]
	mov ecx, [eax]
Menu_HandleMouseMove_130:
	mov [esp+0x4], esi
	mov [esp], ecx
	call Item_IsVisible
	test eax, eax
	jnz Menu_HandleMouseMove_150
Menu_HandleMouseMove_140:
	mov edx, [ebp-0xb0]
	test edx, edx
	jnz Menu_HandleMouseMove_40
	movss xmm1, dword [ebp-0xb8]
	movss xmm0, dword [ebp-0xbc]
	mov edx, esi
	mov eax, [ebp-0xe0]
	call Item_SetFocus
	mov [ebp-0xb0], eax
	test eax, eax
	jz Menu_HandleMouseMove_40
	mov [ebp-0xac], esi
	jmp Menu_HandleMouseMove_40
Menu_HandleMouseMove_90:
	mov edi, [ebp-0xc0]
	mov ecx, [edi+0x118]
	mov eax, [ebp-0x44]
	mov ebx, [ecx+eax]
	mov edx, [ebp-0xe0]
	mov eax, [edx]
	mov eax, [ebx+eax*4+0x50]
	test al, 0x1
	jz Menu_HandleMouseMove_40
	test ebx, ebx
	jz Menu_HandleMouseMove_160
	test al, 0x40
	jnz Menu_HandleMouseMove_170
Menu_HandleMouseMove_280:
	mov ecx, [ebx+0xf8]
	mov edx, ebx
	mov eax, [ebp-0xe0]
	call Item_RunScript
	mov dword [esp+0x8], 0x300
	mov [esp+0x4], ebx
	mov edx, [ebp-0xe0]
	mov eax, [edx]
	mov [esp], eax
	call Window_RemoveDynamicFlags
	mov ebx, [ebp-0xc0]
	mov ecx, [ebx+0x118]
Menu_HandleMouseMove_160:
	mov edi, [ebp-0x44]
	mov eax, [ecx+edi]
	test eax, eax
	jz Menu_HandleMouseMove_40
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], eax
	mov edx, [ebp-0xe0]
	mov eax, [edx]
	mov [esp], eax
	call Window_RemoveDynamicFlags
Menu_HandleMouseMove_40:
	add dword [ebp-0x48], 0x1
	sub dword [ebp-0x44], 0x4
	mov ecx, [ebp-0x48]
	cmp [ebp-0xc4], ecx
	jz Menu_HandleMouseMove_30
	mov ebx, [ebp-0x44]
	jmp Menu_HandleMouseMove_180
Menu_HandleMouseMove_60:
	mov edi, edx
	jmp Menu_HandleMouseMove_190
Menu_HandleMouseMove_50:
	mov dword [esp+0x4], 0x1
	mov [esp], edx
	call Item_EnableShowViaDvar
	test eax, eax
	jz Menu_HandleMouseMove_40
	mov eax, [ebp-0xc0]
	mov ecx, [eax+0x118]
	jmp Menu_HandleMouseMove_200
Menu_HandleMouseMove_30:
	add dword [ebp-0xb4], 0x1
	cmp dword [ebp-0xb4], 0x2
	jnz Menu_HandleMouseMove_210
	mov eax, [ebp-0xb0]
	test eax, eax
	jnz Menu_HandleMouseMove_220
	mov eax, [ebp-0xac]
	test eax, eax
	jz Menu_HandleMouseMove_10
	mov esi, [ebp-0xac]
	add esi, 0x4
	mov edi, [ebp-0xe0]
	mov ebx, [edi]
	mov edx, [ebp-0xac]
	mov eax, [edx+0x4]
	mov [ebp-0x30], eax
	mov eax, [esi+0x4]
	mov [ebp-0x2c], eax
	mov eax, [esi+0x8]
	mov [ebp-0x28], eax
	mov eax, [esi+0xc]
	mov [ebp-0x24], eax
	mov eax, ebx
	shl eax, 0x6
	lea ebx, [eax+ebx*4]
	add ebx, scrPlaceView
	mov dword [esp+0x8], 0x4
	movss xmm0, dword [ebp-0xbc]
	movss [esp+0x4], xmm0
	mov [esp], ebx
	call ScrPlace_ApplyX
	fstp dword [ebp-0x74]
	mov dword [esp+0x8], 0x4
	movss xmm1, dword [ebp-0xb8]
	movss [esp+0x4], xmm1
	mov [esp], ebx
	call ScrPlace_ApplyY
	fstp dword [ebp-0x70]
	mov eax, [esi+0x14]
	mov [esp+0x18], eax
	mov eax, [esi+0x10]
	mov [esp+0x14], eax
	lea edx, [ebp-0x30]
	lea eax, [ebp-0x24]
	mov [esp+0x10], eax
	lea eax, [ebp-0x28]
	mov [esp+0xc], eax
	lea eax, [ebp-0x2c]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ebx
	call ScrPlace_ApplyRect
	movss xmm0, dword [ebp-0x30]
	movss xmm2, dword [ebp-0x74]
	ucomiss xmm2, xmm0
	jb Menu_HandleMouseMove_230
	addss xmm0, [ebp-0x28]
	ucomiss xmm0, xmm2
	jb Menu_HandleMouseMove_230
	movss xmm0, dword [ebp-0x2c]
	movss xmm1, dword [ebp-0x70]
	ucomiss xmm1, xmm0
	jb Menu_HandleMouseMove_230
	addss xmm0, [ebp-0x24]
	ucomiss xmm0, xmm1
	jae Menu_HandleMouseMove_10
Menu_HandleMouseMove_230:
	mov eax, [ebp-0xc0]
	mov esi, [eax+0xa4]
	test esi, esi
	jle Menu_HandleMouseMove_10
	mov ecx, [ebp-0xe0]
	mov ecx, [ecx]
	mov [ebp-0x6c], ecx
	mov ebx, [ebp-0xc0]
	mov ecx, [ebx+0x118]
	xor edx, edx
	xor ebx, ebx
Menu_HandleMouseMove_260:
	mov eax, [ecx]
	mov edi, [ebp-0x6c]
	mov eax, [eax+edi*4+0x50]
	test al, 0x4
	jz Menu_HandleMouseMove_240
	test al, 0x2
	jnz Menu_HandleMouseMove_250
Menu_HandleMouseMove_240:
	add edx, 0x1
	add ecx, 0x4
	add ebx, 0x4
	cmp edx, esi
	jnz Menu_HandleMouseMove_260
	jmp Menu_HandleMouseMove_10
Menu_HandleMouseMove_80:
	mov esi, [ebp-0xac]
	test esi, esi
	mov ebx, [ebp-0xac]
	cmovz ebx, eax
	mov [ebp-0xac], ebx
	jmp Menu_HandleMouseMove_70
Menu_HandleMouseMove_220:
	mov eax, 0x1
	jmp Menu_HandleMouseMove_270
Menu_HandleMouseMove_170:
	mov ecx, [ebx+0xf0]
	mov edx, ebx
	mov eax, [ebp-0xe0]
	call Item_RunScript
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], ebx
	mov edi, [ebp-0xe0]
	mov eax, [edi]
	mov [esp], eax
	call Window_RemoveDynamicFlags
	jmp Menu_HandleMouseMove_280
Menu_HandleMouseMove_250:
	mov dword [esp+0x8], 0x2
	mov eax, [ecx]
	mov [esp+0x4], eax
	mov [esp], edi
	call Window_RemoveDynamicFlags
	mov edx, [ebp-0xc0]
	mov eax, [edx+0x118]
	mov edx, [ebx+eax]
	mov ecx, [edx+0x108]
	test ecx, ecx
	jz Menu_HandleMouseMove_10
	mov eax, [ebp-0xe0]
	call Item_RunScript
	xor eax, eax
	jmp Menu_HandleMouseMove_270
Menu_HandleMouseMove_120:
	movss xmm0, dword [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect+0x4]
	jmp Menu_HandleMouseMove_290
Menu_HandleMouseMove_150:
	mov edx, [ebp-0xe0]
	mov ebx, [edx]
	mov ecx, [esi+ebx*4+0x50]
	mov [ebp-0x98], ecx
	movss xmm0, dword [ebp-0x64]
	movss [ebp-0x30], xmm0
	movss xmm1, dword [ebp-0x3c]
	movss [ebp-0x2c], xmm1
	movss xmm2, dword [ebp-0x68]
	movss [ebp-0x28], xmm2
	movss xmm0, dword [ebp-0x58]
	movss [ebp-0x24], xmm0
	mov eax, ebx
	shl eax, 0x6
	lea ebx, [eax+ebx*4]
	add ebx, scrPlaceView
	mov dword [esp+0x8], 0x4
	movss xmm1, dword [ebp-0xbc]
	movss [esp+0x4], xmm1
	mov [esp], ebx
	call ScrPlace_ApplyX
	fstp dword [ebp-0x94]
	mov dword [esp+0x8], 0x4
	movss xmm2, dword [ebp-0xb8]
	movss [esp+0x4], xmm2
	mov [esp], ebx
	call ScrPlace_ApplyY
	fstp dword [ebp-0x90]
	mov eax, [ebp-0x60]
	mov [esp+0x18], eax
	mov edx, [ebp-0x5c]
	mov [esp+0x14], edx
	lea ecx, [ebp-0x24]
	mov [esp+0x10], ecx
	lea edi, [ebp-0x28]
	mov [esp+0xc], edi
	lea eax, [ebp-0x2c]
	mov [esp+0x8], eax
	lea edx, [ebp-0x30]
	mov [esp+0x4], edx
	mov [esp], ebx
	call ScrPlace_ApplyRect
	movss xmm0, dword [ebp-0x30]
	movss xmm1, dword [ebp-0x94]
	ucomiss xmm1, xmm0
	jb Menu_HandleMouseMove_300
	addss xmm0, [ebp-0x28]
	ucomiss xmm0, xmm1
	jb Menu_HandleMouseMove_300
	movss xmm0, dword [ebp-0x2c]
	movss xmm2, dword [ebp-0x90]
	ucomiss xmm2, xmm0
	jb Menu_HandleMouseMove_300
	addss xmm0, [ebp-0x24]
	ucomiss xmm0, xmm2
	jb Menu_HandleMouseMove_300
	test byte [ebp-0x98], 0x40
	jnz Menu_HandleMouseMove_310
	mov ecx, [esi+0xec]
	mov edx, esi
	mov eax, [ebp-0xe0]
	call Item_RunScript
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], esi
	mov edx, [ebp-0xe0]
	mov eax, [edx]
	mov [esp], eax
	call Window_AddDynamicFlags
Menu_HandleMouseMove_310:
	test byte [ebp-0x98], 0x1
	jnz Menu_HandleMouseMove_140
	mov ecx, [esi+0xf4]
	mov edx, esi
	mov eax, [ebp-0xe0]
	call Item_RunScript
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], esi
	mov ecx, [ebp-0xe0]
	mov eax, [ecx]
	mov [esp], eax
	call Window_AddDynamicFlags
	jmp Menu_HandleMouseMove_140
Menu_HandleMouseMove_300:
	test byte [ebp-0x98], 0x40
	jnz Menu_HandleMouseMove_320
Menu_HandleMouseMove_350:
	test byte [ebp-0x98], 0x1
	jz Menu_HandleMouseMove_330
Menu_HandleMouseMove_370:
	cmp dword [esi+0xb4], 0x6
	jnz Menu_HandleMouseMove_140
	mov eax, [ebp-0xe0]
	mov eax, [eax]
	mov [ebp-0x80], eax
	mov [esp], esi
	call Item_GetListBoxDef
	mov [ebp-0x8c], eax
	test eax, eax
	jz Menu_HandleMouseMove_140
	mov dword [esp+0x8], 0x1f00
	mov [esp+0x4], esi
	mov edx, [ebp-0x80]
	mov [esp], edx
	call Window_RemoveDynamicFlags
	movss xmm1, dword [ebp-0xb8]
	movss xmm0, dword [ebp-0xbc]
	mov edx, esi
	mov eax, [ebp-0x80]
	call Item_ListBox_OverLB
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov ecx, [ebp-0x80]
	mov [esp], ecx
	call Window_AddDynamicFlags
	lea edx, [esi+0x4]
	mov ebx, [edx+0x10]
	mov [ebp-0x4c], ebx
	mov edi, [edx+0x14]
	mov [ebp-0x50], edi
	test byte [esi+0x4e], 0x20
	jz Menu_HandleMouseMove_340
	mov eax, [ebp-0x80]
	test dword [esi+eax*4+0x50], 0x1f00
	jnz Menu_HandleMouseMove_140
	mov ecx, [ebp-0x8c]
	cmp dword [ecx+0x18], 0x1
	jnz Menu_HandleMouseMove_140
	movss xmm0, dword [esi+0x4]
	movss [ebp-0x40], xmm0
	mov eax, [edx+0x4]
	movss xmm1, dword [edx+0xc]
	subss xmm1, [_float_16_00000000]
	cvtsi2ss xmm2, dword [ecx+0xc]
	movss xmm0, dword [edx+0x8]
	subss xmm0, xmm2
	movss xmm2, dword [ebp-0x40]
	movss [ebp-0x30], xmm2
	mov [ebp-0x2c], eax
	movss [ebp-0x28], xmm0
	movss [ebp-0x24], xmm1
	mov eax, [ebp-0x80]
	shl eax, 0x6
	mov edx, [ebp-0x80]
	lea ebx, [eax+edx*4]
	add ebx, scrPlaceView
	mov dword [esp+0x8], 0x4
	movss xmm0, dword [ebp-0xbc]
	movss [esp+0x4], xmm0
	mov [esp], ebx
	call ScrPlace_ApplyX
	fstp dword [ebp-0x88]
	mov dword [esp+0x8], 0x4
	movss xmm1, dword [ebp-0xb8]
	movss [esp+0x4], xmm1
	mov [esp], ebx
	call ScrPlace_ApplyY
	fstp dword [ebp-0x84]
	mov [esp+0x18], edi
	mov eax, [ebp-0x4c]
	mov [esp+0x14], eax
	lea edx, [ebp-0x24]
	mov [esp+0x10], edx
	lea ecx, [ebp-0x28]
	mov [esp+0xc], ecx
	lea edi, [ebp-0x2c]
	mov [esp+0x8], edi
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov [esp], ebx
	call ScrPlace_ApplyRect
	movss xmm0, dword [ebp-0x30]
	movss xmm1, dword [ebp-0x88]
	ucomiss xmm1, xmm0
	jb Menu_HandleMouseMove_140
	addss xmm0, [ebp-0x28]
	ucomiss xmm0, xmm1
	jb Menu_HandleMouseMove_140
	movss xmm0, dword [ebp-0x2c]
	movss xmm2, dword [ebp-0x84]
	ucomiss xmm2, xmm0
	jb Menu_HandleMouseMove_140
	addss xmm0, [ebp-0x24]
	ucomiss xmm0, xmm2
	jb Menu_HandleMouseMove_140
	movss xmm0, dword [ebp-0xbc]
	subss xmm0, [ebp-0x40]
	mov eax, [ebp-0x8c]
	divss xmm0, dword [eax+0x10]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0xc8]
	cvttss2si eax, [ebp-0xc8]
Menu_HandleMouseMove_360:
	mov edx, [ebp-0x80]
	mov ecx, [ebp-0x8c]
	add eax, [ecx+edx*4+0x4]
	mov edx, [ecx+edx*4+0x8]
	cmp eax, edx
	cmovg eax, edx
	mov [ecx], eax
	jmp Menu_HandleMouseMove_140
Menu_HandleMouseMove_320:
	mov ecx, [esi+0xf0]
	mov edx, esi
	mov eax, [ebp-0xe0]
	call Item_RunScript
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], esi
	mov ebx, [ebp-0xe0]
	mov eax, [ebx]
	mov [esp], eax
	call Window_RemoveDynamicFlags
	jmp Menu_HandleMouseMove_350
Menu_HandleMouseMove_340:
	mov edi, [ebp-0x80]
	test dword [esi+edi*4+0x50], 0x1f00
	jnz Menu_HandleMouseMove_140
	movss xmm0, dword [edx+0x4]
	addss xmm0, [_float_2_00000000]
	movss [ebp-0x54], xmm0
	movss xmm1, dword [edx+0x8]
	subss xmm1, [_float_16_00000000]
	mov eax, [ebp-0x8c]
	cvtsi2ss xmm2, dword [eax+0xc]
	movss xmm0, dword [edx+0xc]
	subss xmm0, xmm2
	mov eax, [esi+0x4]
	mov [ebp-0x30], eax
	movss xmm2, dword [ebp-0x54]
	movss [ebp-0x2c], xmm2
	movss [ebp-0x28], xmm1
	movss [ebp-0x24], xmm0
	mov eax, edi
	shl eax, 0x6
	lea ebx, [eax+edi*4]
	add ebx, scrPlaceView
	mov dword [esp+0x8], 0x4
	movss xmm0, dword [ebp-0xbc]
	movss [esp+0x4], xmm0
	mov [esp], ebx
	call ScrPlace_ApplyX
	fstp dword [ebp-0x7c]
	mov dword [esp+0x8], 0x4
	movss xmm1, dword [ebp-0xb8]
	movss [esp+0x4], xmm1
	mov [esp], ebx
	call ScrPlace_ApplyY
	fstp dword [ebp-0x78]
	mov eax, [ebp-0x50]
	mov [esp+0x18], eax
	mov edx, [ebp-0x4c]
	mov [esp+0x14], edx
	lea ecx, [ebp-0x24]
	mov [esp+0x10], ecx
	lea edi, [ebp-0x28]
	mov [esp+0xc], edi
	lea eax, [ebp-0x2c]
	mov [esp+0x8], eax
	lea edx, [ebp-0x30]
	mov [esp+0x4], edx
	mov [esp], ebx
	call ScrPlace_ApplyRect
	movss xmm0, dword [ebp-0x30]
	movss xmm1, dword [ebp-0x7c]
	ucomiss xmm1, xmm0
	jb Menu_HandleMouseMove_140
	addss xmm0, [ebp-0x28]
	ucomiss xmm0, xmm1
	jb Menu_HandleMouseMove_140
	movss xmm0, dword [ebp-0x2c]
	movss xmm2, dword [ebp-0x78]
	ucomiss xmm2, xmm0
	jb Menu_HandleMouseMove_140
	addss xmm0, [ebp-0x24]
	ucomiss xmm0, xmm2
	jb Menu_HandleMouseMove_140
	movss xmm0, dword [ebp-0xb8]
	subss xmm0, [ebp-0x54]
	mov eax, [ebp-0x8c]
	divss xmm0, dword [eax+0x14]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0xcc]
	cvttss2si eax, [ebp-0xcc]
	jmp Menu_HandleMouseMove_360
Menu_HandleMouseMove_330:
	mov ecx, [esi+0xf4]
	mov edx, esi
	mov eax, [ebp-0xe0]
	call Item_RunScript
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], esi
	mov edi, [ebp-0xe0]
	mov eax, [edi]
	mov [esp], eax
	call Window_AddDynamicFlags
	jmp Menu_HandleMouseMove_370
	nop


;Menu_Count(UiContext*)
Menu_Count:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax+0xa30]
	pop ebp
	ret
	add [eax], al


;Menu_Paint(UiContext*, menuDef_t*)
Menu_Paint:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x67c
	mov eax, ui_showMenuOnly
	mov eax, [eax]
	mov edx, [eax+0xc]
	cmp byte [edx], 0x0
	jz Menu_Paint_10
	mov ecx, [ebp+0xc]
	mov eax, [ecx]
	test eax, eax
	jz Menu_Paint_20
	mov [esp+0x4], edx
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz Menu_Paint_30
Menu_Paint_10:
	mov ebx, [ebp+0xc]
	mov [esp+0x4], ebx
	mov edi, [ebp+0x8]
	mov [esp], edi
	call Menu_IsVisible
	test al, al
	jz Menu_Paint_30
Menu_Paint_210:
	mov eax, [ebx+0xe0]
	test eax, eax
	jz Menu_Paint_40
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], eax
	mov eax, [edi]
	mov [esp], eax
	call SND_PlayLocalSoundAliasByName
Menu_Paint_40:
	mov eax, [ebp+0xc]
	movss xmm1, dword [eax+0xc0]
	ucomiss xmm1, [_float_0_00000000]
	jp Menu_Paint_50
	jnz Menu_Paint_50
	mov ecx, eax
	mov ebx, [ecx+0x108]
	test ebx, ebx
	jnz Menu_Paint_60
Menu_Paint_370:
	mov eax, ecx
	mov edx, [eax+0x110]
	test edx, edx
	jnz Menu_Paint_70
Menu_Paint_380:
	mov ebx, eax
Menu_Paint_390:
	mov [esp+0x4], ebx
	mov edi, [ebp+0x8]
	mov eax, [edi]
	mov [esp], eax
	call Menu_UpdatePosition
	mov eax, [ebx+0xa0]
	test eax, eax
	jz Menu_Paint_80
	mov eax, [ebx+0x98]
	test eax, eax
	jz Menu_Paint_80
	mov edx, ebx
	add edx, 0x4
	mov [esp+0x20], eax
	mov dword [esp+0x1c], 0x0
	mov eax, [edx+0x14]
	mov [esp+0x18], eax
	mov eax, [edx+0x10]
	mov [esp+0x14], eax
	mov dword [esp+0x10], 0x43f00000
	mov dword [esp+0xc], 0x44200000
	xor eax, eax
	mov [esp+0x8], eax
	mov [esp+0x4], eax
	mov eax, [edi]
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4]
	add eax, scrPlaceView
	mov [esp], eax
	call UI_DrawHandlePic
Menu_Paint_80:
	mov eax, [ebp+0xc]
	cvtsi2ss xmm3, dword [eax+0xb0]
	movss xmm2, dword [eax+0xb4]
	movss xmm1, dword [eax+0xbc]
	movss xmm0, dword [eax+0xb8]
	mov edx, eax
	mov eax, [ebp+0x8]
	call Window_Paint
	mov edx, [ebp+0xc]
	mov eax, [edx+0xa4]
	test eax, eax
	jle Menu_Paint_90
	mov dword [ebp-0x600], 0x0
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0x118]
	mov ebx, [ebp-0x600]
	mov esi, [eax+ebx*4]
	mov edi, [esi+0xe8]
	mov eax, [esi+0x44]
	test eax, eax
	jnz Menu_Paint_100
Menu_Paint_240:
	test byte [esi+0x11c], 0xc
	jnz Menu_Paint_110
Menu_Paint_260:
	mov ebx, [esi+0x16c]
	test ebx, ebx
	jnz Menu_Paint_120
Menu_Paint_270:
	mov [esp+0x4], esi
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp], eax
	call Item_IsVisible
	test eax, eax
	jz Menu_Paint_130
	mov ecx, [esi+0x14c]
	test ecx, ecx
	jnz Menu_Paint_140
Menu_Paint_350:
	mov edx, [esi+0x154]
	test edx, edx
	jnz Menu_Paint_150
Menu_Paint_340:
	mov eax, [esi+0x15c]
	test eax, eax
	jnz Menu_Paint_160
Menu_Paint_330:
	mov eax, [esi+0x164]
	test eax, eax
	jnz Menu_Paint_170
	cmp dword [esi+0x38], 0x5
	jz Menu_Paint_180
Menu_Paint_310:
	mov eax, [esi+0x144]
	test eax, eax
	jnz Menu_Paint_190
Menu_Paint_360:
	cvtsi2ss xmm3, dword [edi+0xb0]
	movss xmm2, dword [edi+0xb4]
	movss xmm1, dword [edi+0xbc]
	movss xmm0, dword [edi+0xb8]
	mov edx, esi
	mov eax, [ebp+0x8]
	call Window_Paint
	mov eax, [g_debugMode]
	test eax, eax
	jnz Menu_Paint_200
Menu_Paint_300:
	cmp dword [esi+0x38], 0x5
	jz Menu_Paint_130
	cmp dword [esi+0xb4], 0x13
	ja Menu_Paint_130
	mov eax, [esi+0xb4]
	jmp dword [eax*4+Menu_Paint_jumptab_0]
Menu_Paint_20:
	mov ebx, ecx
	mov [esp+0x4], ebx
	mov edi, [ebp+0x8]
	mov [esp], edi
	call Menu_IsVisible
	test al, al
	jnz Menu_Paint_210
Menu_Paint_30:
	xor eax, eax
	add esp, 0x67c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Menu_Paint_1280:
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	mov [esp], eax
	call CL_IsCgameInitialized
	test eax, eax
	jz Menu_Paint_130
	mov eax, [esi+0xd8]
	cmp eax, 0x3
	ja Menu_Paint_220
Menu_Paint_990:
	mov eax, [esi+0xdc]
	cmp eax, 0x1
	jbe Menu_Paint_230
	cmp eax, 0x3
	jz Menu_Paint_230
	cmp eax, 0x2
	jz Menu_Paint_230
	mov [esp+0x4], eax
	mov dword [esp], _cstring_game_message_win
	call va
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call Com_Error
Menu_Paint_230:
	lea edx, [esi+0x58]
	mov eax, [esi+0x58]
	mov [ebp-0x28], eax
	mov eax, [edx+0x4]
	mov [ebp-0x24], eax
	mov eax, [edx+0x8]
	mov [ebp-0x20], eax
	mov eax, [edx+0xc]
	mov [ebp-0x1c], eax
	lea ebx, [esi+0x4]
	mov eax, [esi+0xd0]
	mov [esp+0x8], eax
	mov eax, [esi+0xc0]
	mov [esp+0x4], eax
	mov edi, [ebp+0x8]
	mov eax, [edi]
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4]
	add eax, scrPlaceView
	mov [esp], eax
	call UI_GetFontHandle
	mov edx, [esi+0xdc]
	mov [esp+0x2c], edx
	mov edx, [esi+0xc4]
	mov [esp+0x28], edx
	mov edx, [esi+0xd4]
	mov [esp+0x24], edx
	lea edx, [ebp-0x28]
	mov [esp+0x20], edx
	mov edx, [esi+0xd0]
	mov [esp+0x1c], edx
	mov [esp+0x18], eax
	mov eax, [ebx+0x14]
	mov [esp+0x14], eax
	mov eax, [ebx+0x10]
	mov [esp+0x10], eax
	cvttss2si eax, [ebx+0x4]
	mov [esp+0xc], eax
	cvttss2si eax, [esi+0x4]
	mov [esp+0x8], eax
	mov eax, [esi+0xd8]
	mov [esp+0x4], eax
	mov eax, [edi]
	mov [esp], eax
	call Con_DrawGameMessageWindow
Menu_Paint_130:
	add dword [ebp-0x600], 0x1
	mov ecx, [ebp-0x600]
	mov ebx, [ebp+0xc]
	cmp ecx, [ebx+0xa4]
	jge Menu_Paint_90
	mov ecx, ebx
	mov eax, [ecx+0x118]
	mov ebx, [ebp-0x600]
	mov esi, [eax+ebx*4]
	mov edi, [esi+0xe8]
	mov eax, [esi+0x44]
	test eax, eax
	jz Menu_Paint_240
Menu_Paint_100:
	mov [esp], eax
	call UI_OwnerDrawVisible
	test eax, eax
	jnz Menu_Paint_250
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], esi
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp], eax
	call Window_RemoveDynamicFlags
	test byte [esi+0x11c], 0xc
	jz Menu_Paint_260
Menu_Paint_110:
	mov dword [esp+0x4], 0x4
	mov [esp], esi
	call Item_EnableShowViaDvar
	test eax, eax
	jnz Menu_Paint_260
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov eax, [esi+eax*4+0x50]
	test al, 0x4
	jz Menu_Paint_130
	test al, 0x2
	jz Menu_Paint_130
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x9b
	mov [esp+0x4], edi
	mov [esp], edx
	call Menu_HandleKey
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x9b
	mov [esp+0x4], edi
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call Menu_HandleKey
	jmp Menu_Paint_130
Menu_Paint_120:
	lea eax, [esi+0x16c]
	mov [esp+0x4], eax
	mov ebx, [ebp+0x8]
	mov eax, [ebx]
	mov [esp], eax
	call GetExpressionFloat
	fstp dword [esi+0x64]
	jmp Menu_Paint_270
Menu_Paint_90:
	mov edi, [g_debugMode]
	test edi, edi
	jnz Menu_Paint_280
	mov eax, 0x1
	add esp, 0x67c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Menu_Paint_250:
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], esi
	mov ebx, [ebp+0x8]
	mov eax, [ebx]
	mov [esp], eax
	call Window_AddDynamicFlags
	jmp Menu_Paint_240
Menu_Paint_200:
	mov edi, [ebp+0x8]
	mov ebx, [edi]
	mov edi, _ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect
	cld
	mov ecx, 0x6
	xor edx, edx
	mov eax, edx
	rep stosd
	lea eax, [ebx+ebx*2]
	lea eax, [eax*8+0x90]
	mov edx, [esi+eax+0xc]
	mov [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect], edx
	mov edx, [esi+eax+0x10]
	mov [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect+0x4], edx
	mov edx, [esi+eax+0x14]
	mov [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect+0x8], edx
	mov edx, [esi+eax+0x18]
	mov [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect+0xc], edx
	mov edx, [esi+eax+0x1c]
	mov [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect+0x10], edx
	mov eax, [esi+eax+0x20]
	mov [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect+0x14], eax
	pxor xmm0, xmm0
	ucomiss xmm0, [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect+0x8]
	jp Menu_Paint_290
	jnz Menu_Paint_290
	movss xmm0, dword [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect+0x4]
Menu_Paint_400:
	mov eax, colorGreen
	mov [esp+0x20], eax
	mov dword [esp+0x1c], 0x3f800000
	mov eax, [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect+0x14]
	mov [esp+0x18], eax
	mov eax, [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect+0x10]
	mov [esp+0x14], eax
	mov eax, [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect+0xc]
	mov [esp+0x10], eax
	mov eax, [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect+0x8]
	mov [esp+0xc], eax
	movss [esp+0x8], xmm0
	mov eax, [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4]
	add eax, scrPlaceView
	mov [esp], eax
	call UI_DrawRect
	jmp Menu_Paint_300
Menu_Paint_170:
	lea eax, [esi+0x164]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	mov [esp], eax
	call GetExpressionFloat
	fstp dword [esi+0x10]
	cmp dword [esi+0x38], 0x5
	jnz Menu_Paint_310
Menu_Paint_180:
	mov eax, [esi+0x10c]
	mov [esp], eax
	call Cvar_VariableString
	jmp Menu_Paint_320
Menu_Paint_160:
	lea eax, [esi+0x15c]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp], eax
	call GetExpressionFloat
	fstp dword [esi+0xc]
	jmp Menu_Paint_330
Menu_Paint_150:
	mov eax, [esi+0xe8]
	movss xmm1, dword [eax+0x8]
	movss [ebp-0x5f4], xmm1
	lea eax, [esi+0x154]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp], eax
	call GetExpressionFloat
	fstp dword [ebp-0x5f0]
	movss xmm0, dword [ebp-0x5f4]
	addss xmm0, [ebp-0x5f0]
	movss [esi+0x8], xmm0
	jmp Menu_Paint_340
Menu_Paint_140:
	mov eax, [esi+0xe8]
	movss xmm0, dword [eax+0x4]
	movss [ebp-0x5fc], xmm0
	lea eax, [esi+0x14c]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp], eax
	call GetExpressionFloat
	fstp dword [ebp-0x5f8]
	movss xmm0, dword [ebp-0x5fc]
	addss xmm0, [ebp-0x5f8]
	movss [esi+0x4], xmm0
	jmp Menu_Paint_350
Menu_Paint_190:
	lea eax, [esi+0x144]
	mov [esp+0x4], eax
	mov ebx, [ebp+0x8]
	mov eax, [ebx]
	mov [esp], eax
	call GetExpressionResultString
Menu_Paint_320:
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], eax
	lea ebx, [ebp-0x68]
	mov [esp], ebx
	call Q_strncpyz
	mov [esp], ebx
	call Q_strlwr
	mov eax, [esi+0x130]
	mov [esp+0x4], eax
	mov [esp], ebx
	call Material_RegisterHandle
	mov [esi+0x98], eax
	jmp Menu_Paint_360
Menu_Paint_280:
	mov edx, [ebp+0xc]
	add edx, 0x4
	mov eax, colorMagenta
	mov [esp+0x20], eax
	mov dword [esp+0x1c], 0x3f800000
	mov eax, [edx+0x14]
	mov [esp+0x18], eax
	mov eax, [edx+0x10]
	mov [esp+0x14], eax
	mov eax, [edx+0xc]
	mov [esp+0x10], eax
	mov eax, [edx+0x8]
	mov [esp+0xc], eax
	mov eax, [edx+0x4]
	mov [esp+0x8], eax
	mov edi, [ebp+0xc]
	mov eax, [edi+0x4]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4]
	add eax, scrPlaceView
	mov [esp], eax
	call UI_DrawRect
	mov eax, 0x1
	add esp, 0x67c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Menu_Paint_50:
	mov edx, [ebp+0x8]
	movss xmm0, dword [edx+0x2c]
	mulss xmm1, xmm1
	mulss xmm0, xmm0
	addss xmm1, xmm0
	sqrtss xmm0, xmm1
	movss [edx+0x2c], xmm0
	mov ecx, [ebp+0xc]
	mov ebx, [ecx+0x108]
	test ebx, ebx
	jz Menu_Paint_370
Menu_Paint_60:
	mov eax, ecx
	add eax, 0x108
	mov [esp+0x4], eax
	mov ebx, [ebp+0x8]
	mov eax, [ebx]
	mov [esp], eax
	call GetExpressionFloat
	mov edi, [ebp+0xc]
	fstp dword [edi+0x4]
	mov eax, [ebp+0xc]
	mov edx, [eax+0x110]
	test edx, edx
	jz Menu_Paint_380
Menu_Paint_70:
	add eax, 0x110
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp], eax
	call GetExpressionFloat
	mov ecx, [ebp+0xc]
	fstp dword [ecx+0x8]
	mov ebx, [ebp+0xc]
	jmp Menu_Paint_390
Menu_Paint_290:
	movss xmm0, dword [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect+0x4]
	subss xmm0, [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect+0xc]
	movss [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect+0x4], xmm0
	jmp Menu_Paint_400
Menu_Paint_1260:
	mov eax, [esi+0x12c]
	test eax, eax
	jz Menu_Paint_410
	mov [esp], eax
	call Cvar_FindVar
	mov ebx, eax
	cmp byte [eax+0xa], 0x6
	jz Menu_Paint_420
	mov eax, _cstring_not_an_enum_dvar
Menu_Paint_730:
	mov [esi+0xe0], eax
Menu_Paint_1190:
	mov [esp+0x4], esi
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call Item_Text_Paint
	jmp Menu_Paint_130
Menu_Paint_1200:
	mov [esp], esi
	call Item_GetEditFieldDef
	mov [ebp-0x5e0], eax
	test eax, eax
	jz Menu_Paint_130
	mov [esp+0x4], esi
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call Item_Text_Paint
	mov byte [ebp-0x568], 0x0
	mov eax, [esi+0x10c]
	test eax, eax
	jz Menu_Paint_430
	cmp dword [esi+0xb4], 0x11
	jz Menu_Paint_440
	mov [esp], eax
	call Cvar_GetVariantString
	mov dword [esp+0x8], 0x400
	mov [esp+0x4], eax
	lea eax, [ebp-0x568]
	mov [esp], eax
	call Q_strncpyz
Menu_Paint_430:
	lea ecx, [ebp-0x568]
	mov edx, esi
	mov ebx, [ebp+0x8]
	mov eax, [ebx]
	call Item_SetTextExtents
	mov edi, [esi+0xe8]
	mov eax, [ebp+0x8]
	mov ebx, [eax]
	mov eax, [esi+ebx*4+0x50]
	test al, 0x4
	jz Menu_Paint_450
	test al, 0x2
	jz Menu_Paint_450
	movss xmm0, dword [_float_0_80000001]
	movss xmm1, dword [edi+0xe8]
	mulss xmm1, xmm0
	movss [ebp-0x168], xmm1
	movss xmm1, dword [edi+0xec]
	mulss xmm1, xmm0
	movss [ebp-0x164], xmm1
	movss xmm1, dword [edi+0xf0]
	mulss xmm1, xmm0
	movss [ebp-0x160], xmm1
	mulss xmm0, [edi+0xf4]
	movss [ebp-0x15c], xmm0
	mov edx, [ebp+0x8]
	mov ecx, [edx+0x8]
	mov edx, 0x1b4e81b5
	mov eax, ecx
	imul edx
	sar edx, 0x3
	mov eax, ecx
	sar eax, 0x1f
	sub edx, eax
	cvtsi2ss xmm0, edx
	movss [esp], xmm0
	call sinf
	fstp dword [ebp-0x63c]
	movss xmm2, dword [ebp-0x63c]
	movss xmm0, dword [_float_0_50000000]
	mulss xmm2, xmm0
	addss xmm2, xmm0
	add edi, 0xe8
	mov [ebp-0x640], edi
	mov edx, 0x1
	pxor xmm4, xmm4
	lea edi, [ebp-0x168]
	movss xmm3, dword [_float_1_00000000]
Menu_Paint_480:
	mov ecx, [ebp-0x640]
	movss xmm0, dword [ecx+edx*4-0x4]
	lea eax, [edx*4]
	movss xmm1, dword [edi+eax-0x4]
	subss xmm1, xmm0
	mulss xmm1, xmm2
	addss xmm1, xmm0
	lea ecx, [ebp-0x28]
	lea eax, [ecx+eax]
	movss [eax-0x4], xmm1
	ucomiss xmm4, xmm1
	ja Menu_Paint_460
	ucomiss xmm1, xmm3
	jbe Menu_Paint_470
	mov dword [eax-0x4], 0x3f800000
Menu_Paint_470:
	add edx, 0x1
	cmp edx, 0x5
	jnz Menu_Paint_480
Menu_Paint_800:
	mov eax, [esi+0xe0]
	test eax, eax
	jz Menu_Paint_490
	cmp byte [eax], 0x0
	jz Menu_Paint_490
	movss xmm0, dword [_float_8_00000000]
Menu_Paint_830:
	lea eax, [ebx+ebx*2]
	lea eax, [esi+eax*8+0x90]
	lea edi, [eax+0xc]
	movss xmm1, dword [eax+0xc]
	movss [ebp-0x5ec], xmm1
	addss xmm1, [edi+0x8]
	addss xmm0, xmm1
	movss [ebp-0x5ec], xmm0
	lea edx, [ebp-0x568]
	mov eax, [ebp-0x5e0]
	add edx, [eax+0x1c]
	mov [ebp-0x5e8], edx
	mov ecx, [eax+0x18]
	test ecx, ecx
	mov eax, 0x7fffffff
	cmovnz eax, ecx
	mov [ebp-0x5e4], eax
	mov eax, [esi+0xd0]
	mov [esp+0x8], eax
	mov eax, [esi+0xc0]
	mov [esp+0x4], eax
	mov eax, ebx
	shl eax, 0x6
	lea eax, [eax+ebx*4]
	mov ebx, scrPlaceView
	mov [ebp-0x604], ebx
	add eax, ebx
	mov [esp], eax
	call UI_GetFontHandle
	mov ebx, eax
	cmp esi, [g_editItem]
	jz Menu_Paint_500
Menu_Paint_950:
	mov eax, [esi+0xd4]
	mov [esp+0x28], eax
	lea eax, [ebp-0x28]
	mov [esp+0x24], eax
	mov eax, [esi+0xd0]
	mov [esp+0x20], eax
	mov eax, [edi+0x14]
	mov [esp+0x1c], eax
	mov eax, [edi+0x10]
	mov [esp+0x18], eax
	mov eax, [edi+0x4]
	mov [esp+0x14], eax
	movss xmm0, dword [ebp-0x5ec]
	movss [esp+0x10], xmm0
	mov [esp+0xc], ebx
	mov eax, [ebp-0x5e4]
	mov [esp+0x8], eax
	mov edx, [ebp-0x5e8]
	mov [esp+0x4], edx
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4]
	add eax, scrPlaceView
	mov [esp], eax
	call UI_DrawText
	jmp Menu_Paint_130
Menu_Paint_1270:
	mov eax, [g_waitingForKey]
	test eax, eax
	jz Menu_Paint_510
	cmp esi, [g_bindItem]
	jz Menu_Paint_520
Menu_Paint_510:
	lea edi, [ebp-0x168]
	mov edx, [esi+0x10c]
	mov dword [esp], 0x0
	mov ecx, edi
	mov ebx, [ebp+0x8]
	mov eax, [ebx]
	call GetKeyBindingLocalizedString
	mov [esi+0xe0], edi
Menu_Paint_1000:
	mov [esp+0x4], esi
	mov edi, [ebp+0x8]
	mov [esp], edi
	call Item_Text_Paint
	mov dword [esi+0xe0], _cstring_null
	jmp Menu_Paint_130
Menu_Paint_1240:
	mov eax, [esi+0x10c]
	test eax, eax
	jz Menu_Paint_530
	mov [esp], eax
	call Cvar_GetVariantString
	mov [esp], eax
	call atof
	fstp qword [ebp-0x5c0]
	cvtsd2ss xmm0, [ebp-0x5c0]
	ucomiss xmm0, [_float_0_00000000]
	jp Menu_Paint_540
	jnz Menu_Paint_540
Menu_Paint_530:
	mov dword [esp], _cstring_exe_no
	call UI_SafeTranslateString
	mov [esi+0xe0], eax
Menu_Paint_930:
	mov [esp+0x4], esi
	mov edx, [ebp+0x8]
	mov [esp], edx
	call Item_Text_Paint
	jmp Menu_Paint_130
Menu_Paint_1220:
	mov edx, esi
	mov eax, [ebp+0x8]
	call Item_OwnerDraw_Paint
	jmp Menu_Paint_130
Menu_Paint_1210:
	mov [esp], esi
	call Item_GetListBoxDef
	mov [ebp-0x574], eax
	test eax, eax
	jz Menu_Paint_130
	lea ebx, [esi+0x4]
	mov [ebp-0x610], ebx
	mov edi, [ebp+0x8]
	mov eax, [edi]
	mov edx, eax
	shl edx, 0x6
	lea edx, [edx+eax*4]
	mov ecx, scrPlaceView
	add edx, ecx
	mov [ebp-0x5dc], edx
	mov edx, [esi+0x124]
	mov [esp+0x4], edx
	mov [esp], eax
	call UI_FeederCount
	mov [ebp-0x5cc], eax
	test byte [esi+0x4e], 0x20
	jz Menu_Paint_550
	movss xmm0, dword [_float_1_00000000]
	addss xmm0, [esi+0x4]
	movss [ebp-0x584], xmm0
	movss xmm1, dword [ebx+0x4]
	movss [ebp-0x594], xmm1
	addss xmm1, [ebx+0xc]
	subss xmm1, [_float_16_00000000]
	subss xmm1, [_float_1_00000000]
	movss [ebp-0x594], xmm1
	mov ebx, sharedUiInfo
	mov eax, [ebx+0x8]
	mov [esp+0x20], eax
	mov dword [esp+0x1c], 0x0
	mov edx, [ebp-0x610]
	mov eax, [edx+0x14]
	mov [esp+0x18], eax
	mov eax, [edx+0x10]
	mov [esp+0x14], eax
	mov dword [esp+0x10], 0x41800000
	mov dword [esp+0xc], 0x41800000
	movss [esp+0x8], xmm1
	movss [esp+0x4], xmm0
	mov ecx, [ebp-0x5dc]
	mov [esp], ecx
	call UI_DrawHandlePic
	movss xmm0, dword [ebp-0x584]
	addss xmm0, [_float_15_00000000]
	movss [ebp-0x580], xmm0
	mov eax, [ebp-0x610]
	movss xmm1, dword [eax+0x8]
	subss xmm1, [_float_32_00000000]
	mov eax, [ebx+0x10]
	mov [esp+0x20], eax
	mov dword [esp+0x1c], 0x0
	mov edx, [ebp-0x610]
	mov eax, [edx+0x14]
	mov [esp+0x18], eax
	mov eax, [edx+0x10]
	mov [esp+0x14], eax
	mov dword [esp+0x10], 0x41800000
	movaps xmm0, xmm1
	addss xmm0, [_float_1_00000000]
	movss [esp+0xc], xmm0
	movss xmm0, dword [ebp-0x594]
	movss [esp+0x8], xmm0
	movss xmm2, dword [ebp-0x580]
	movss [esp+0x4], xmm2
	mov eax, [ebp-0x5dc]
	mov [esp], eax
	movss [ebp-0x628], xmm1
	call UI_DrawHandlePic
	movss xmm1, dword [ebp-0x628]
	subss xmm1, [_float_1_00000000]
	movss xmm0, dword [ebp-0x580]
	addss xmm0, xmm1
	movss [ebp-0x57c], xmm0
	mov eax, [ebx+0xc]
	mov [esp+0x20], eax
	mov dword [esp+0x1c], 0x0
	mov edx, [ebp-0x610]
	mov eax, [edx+0x14]
	mov [esp+0x18], eax
	mov eax, [edx+0x10]
	mov [esp+0x14], eax
	mov dword [esp+0x10], 0x41800000
	mov dword [esp+0xc], 0x41800000
	movss xmm0, dword [ebp-0x594]
	movss [esp+0x8], xmm0
	movss xmm1, dword [ebp-0x57c]
	movss [esp+0x4], xmm1
	mov eax, [ebp-0x5dc]
	mov [esp], eax
	call UI_DrawHandlePic
	cmp esi, [itemCapture]
	jz Menu_Paint_560
Menu_Paint_770:
	mov edi, [ebp+0x8]
Menu_Paint_1150:
	mov edx, esi
	mov eax, [edi]
	call Item_ListBox_ThumbPosition
	movaps xmm2, xmm0
Menu_Paint_780:
	movss xmm1, dword [_float_16_00000000]
	movss xmm0, dword [ebp-0x57c]
	subss xmm0, xmm1
	movss xmm3, dword [_float_1_00000000]
	subss xmm0, xmm3
	minss xmm0, xmm2
	mov eax, sharedUiInfo
	mov eax, [eax+0x14]
	mov [esp+0x20], eax
	mov dword [esp+0x1c], 0x0
	mov edx, [ebp-0x610]
	mov eax, [edx+0x14]
	mov [esp+0x18], eax
	mov eax, [edx+0x10]
	mov [esp+0x14], eax
	movss [esp+0x10], xmm1
	movss [esp+0xc], xmm1
	movss xmm1, dword [ebp-0x594]
	movss [esp+0x8], xmm1
	movss [esp+0x4], xmm0
	mov eax, [ebp-0x5dc]
	mov [esp], eax
	movss [ebp-0x638], xmm3
	call UI_DrawHandlePic
	mov ecx, [ebp+0x8]
	mov edx, [ecx]
	mov ebx, [ebp-0x574]
	mov eax, [ebx+edx*4+0x4]
	mov [ebx+edx*4+0x8], eax
	mov edi, [ebp-0x610]
	movss xmm0, dword [edi+0x8]
	movss [ebp-0x5d0], xmm0
	movss xmm0, dword [_float_2_00000000]
	movss xmm1, dword [ebp-0x5d0]
	subss xmm1, xmm0
	movss [ebp-0x5d0], xmm1
	cmp dword [ebx+0x18], 0x1
	movss xmm3, dword [ebp-0x638]
	jnz Menu_Paint_130
	movss xmm2, dword [edi]
	addss xmm2, xmm3
	movss [ebp-0x5d8], xmm2
	movss xmm1, dword [edi+0x4]
	addss xmm1, xmm3
	movss [ebp-0x590], xmm1
	mov eax, [ecx]
	mov eax, [ebx+eax*4+0x4]
	cmp [ebp-0x5cc], eax
	jle Menu_Paint_130
	mov ebx, eax
	mov edi, [ebp-0x5cc]
	jmp Menu_Paint_570
Menu_Paint_600:
	mov edx, [ebp-0x574]
	movss xmm0, dword [edx+0x10]
	movss xmm1, dword [ebp-0x5d0]
	subss xmm1, xmm0
	movss [ebp-0x5d0], xmm1
	ucomiss xmm0, xmm1
	ja Menu_Paint_580
	mov ecx, edx
	addss xmm0, [ebp-0x5d8]
	movss [ebp-0x5d8], xmm0
	mov edx, [ebp+0x8]
	mov eax, [edx]
	add dword [ecx+eax*4+0x8], 0x1
	add ebx, 0x1
	cmp edi, ebx
	jz Menu_Paint_130
Menu_Paint_570:
	mov [esp+0x4], ebx
	mov eax, [esi+0x124]
	mov [esp], eax
	call UI_FeederItemImage
	test eax, eax
	jz Menu_Paint_590
	mov [esp+0x20], eax
	mov dword [esp+0x1c], 0x0
	mov edx, [ebp-0x610]
	mov eax, [edx+0x14]
	mov [esp+0x18], eax
	mov eax, [edx+0x10]
	mov [esp+0x14], eax
	mov ecx, [ebp-0x574]
	movss xmm0, dword [ecx+0x14]
	subss xmm0, [_float_2_00000000]
	movss [esp+0x10], xmm0
	movss xmm0, dword [ecx+0x10]
	subss xmm0, [_float_2_00000000]
	movss [esp+0xc], xmm0
	movss xmm0, dword [ebp-0x590]
	addss xmm0, [_float_1_00000000]
	movss [esp+0x8], xmm0
	movss xmm0, dword [ebp-0x5d8]
	addss xmm0, [_float_1_00000000]
	movss [esp+0x4], xmm0
	mov eax, [ebp-0x5dc]
	mov [esp], eax
	call UI_DrawHandlePic
Menu_Paint_590:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	cmp ebx, [esi+eax*4+0x128]
	jnz Menu_Paint_600
	lea eax, [esi+0x78]
	mov [esp+0x20], eax
	mov eax, [esi+0x48]
	mov [esp+0x1c], eax
	mov ecx, [ebp-0x610]
	mov eax, [ecx+0x14]
	mov [esp+0x18], eax
	mov eax, [ecx+0x10]
	mov [esp+0x14], eax
	mov eax, [ebp-0x574]
	movss xmm0, dword [eax+0x14]
	subss xmm0, [_float_1_00000000]
	movss [esp+0x10], xmm0
	movss xmm0, dword [eax+0x10]
	subss xmm0, [_float_1_00000000]
	movss [esp+0xc], xmm0
	movss xmm0, dword [ebp-0x590]
	movss [esp+0x8], xmm0
	movss xmm1, dword [ebp-0x5d8]
	movss [esp+0x4], xmm1
	mov eax, [ebp-0x5dc]
	mov [esp], eax
	call UI_DrawRect
	jmp Menu_Paint_600
Menu_Paint_1230:
	mov edi, [esi+0xe8]
	mov eax, [esi+0x10c]
	test eax, eax
	jz Menu_Paint_610
	mov [esp], eax
	call Cvar_GetVariantString
	mov [esp], eax
	call atof
	fstp st0
Menu_Paint_610:
	mov eax, [ebp+0x8]
	mov ebx, [eax]
	mov eax, [esi+ebx*4+0x50]
	test al, 0x4
	jz Menu_Paint_620
	test al, 0x2
	jz Menu_Paint_620
	movss xmm0, dword [_float_0_80000001]
	movss xmm1, dword [edi+0xe8]
	mulss xmm1, xmm0
	movss [ebp-0x168], xmm1
	movss xmm1, dword [edi+0xec]
	mulss xmm1, xmm0
	movss [ebp-0x164], xmm1
	movss xmm1, dword [edi+0xf0]
	mulss xmm1, xmm0
	movss [ebp-0x160], xmm1
	mulss xmm0, [edi+0xf4]
	movss [ebp-0x15c], xmm0
	mov edx, [ebp+0x8]
	mov ecx, [edx+0x8]
	mov edx, 0x1b4e81b5
	mov eax, ecx
	imul edx
	sar edx, 0x3
	mov eax, ecx
	sar eax, 0x1f
	sub edx, eax
	cvtsi2ss xmm0, edx
	movss [esp], xmm0
	call sinf
	fstp dword [ebp-0x63c]
	movss xmm2, dword [ebp-0x63c]
	movss xmm0, dword [_float_0_50000000]
	mulss xmm2, xmm0
	addss xmm2, xmm0
	add edi, 0xe8
	mov [ebp-0x640], edi
	mov edx, 0x1
	pxor xmm4, xmm4
	lea edi, [ebp-0x168]
	movss xmm3, dword [_float_1_00000000]
Menu_Paint_650:
	mov ecx, [ebp-0x640]
	movss xmm0, dword [ecx+edx*4-0x4]
	lea eax, [edx*4]
	movss xmm1, dword [edi+eax-0x4]
	subss xmm1, xmm0
	mulss xmm1, xmm2
	addss xmm1, xmm0
	lea ecx, [ebp-0x28]
	lea eax, [ecx+eax]
	movss [eax-0x4], xmm1
	ucomiss xmm4, xmm1
	ja Menu_Paint_630
	ucomiss xmm1, xmm3
	jbe Menu_Paint_640
	mov dword [eax-0x4], 0x3f800000
Menu_Paint_640:
	add edx, 0x1
	cmp edx, 0x5
	jnz Menu_Paint_650
Menu_Paint_790:
	lea edi, [esi+0x4]
	movss xmm0, dword [edi+0x8]
	movss xmm2, dword [esi+0x4]
	addss xmm2, [esi+0xc8]
	mov eax, [esi+0xc4]
	mov edx, eax
	and edx, 0x3
	jz Menu_Paint_660
	sub edx, 0x1
	jz Menu_Paint_670
	subss xmm0, [_float_96_00000000]
	addss xmm2, xmm0
Menu_Paint_660:
	movss xmm0, dword [edi+0xc]
	movss xmm1, dword [edi+0x4]
	addss xmm1, [esi+0xcc]
	and eax, 0xc
	cmp eax, 0xc
	jz Menu_Paint_680
	cmp eax, 0x8
	jz Menu_Paint_690
Menu_Paint_920:
	mov eax, ebx
	shl eax, 0x6
	lea ebx, [eax+ebx*4]
	add ebx, scrPlaceView
	mov edx, sharedUiInfo
	mov eax, [edx+0x18]
	mov [esp+0x20], eax
	lea ecx, [ebp-0x28]
	mov [esp+0x1c], ecx
	mov eax, [edi+0x14]
	mov [esp+0x18], eax
	mov eax, [edi+0x10]
	mov [esp+0x14], eax
	mov dword [esp+0x10], 0x41800000
	mov dword [esp+0xc], 0x42c00000
	movss [esp+0x8], xmm1
	movss [esp+0x4], xmm2
	mov [esp], ebx
	movss [ebp-0x628], xmm1
	call UI_DrawHandlePic
	mov edx, esi
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	call Item_Slider_ThumbPosition
	mov edx, sharedUiInfo
	mov eax, [edx+0x1c]
	mov [esp+0x20], eax
	lea ecx, [ebp-0x28]
	mov [esp+0x1c], ecx
	mov eax, [edi+0x14]
	mov [esp+0x18], eax
	mov eax, [edi+0x10]
	mov [esp+0x14], eax
	mov dword [esp+0x10], 0x41a00000
	mov dword [esp+0xc], 0x41200000
	movss xmm1, dword [ebp-0x628]
	subss xmm1, [_float_2_00000000]
	movss [esp+0x8], xmm1
	subss xmm0, [_float_5_00000000]
	movss [esp+0x4], xmm0
	mov [esp], ebx
	call UI_DrawHandlePic
	jmp Menu_Paint_130
Menu_Paint_1250:
	mov [esp], esi
	call Item_GetMultiDef
	mov edi, eax
	test eax, eax
	jz Menu_Paint_700
	mov eax, [eax+0x184]
	test eax, eax
	jz Menu_Paint_710
	mov eax, [esi+0x10c]
	mov [esp], eax
	call Cvar_GetVariantString
	mov [ebp-0x5b0], eax
	mov eax, [edi+0x180]
	test eax, eax
	jg Menu_Paint_720
Menu_Paint_810:
	mov eax, _cstring_null
	jmp Menu_Paint_730
Menu_Paint_720:
	mov ebx, edi
	mov dword [ebp-0x56c], 0x0
Menu_Paint_750:
	mov eax, [ebx+0x80]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x5b0]
	mov [esp], ecx
	call Q_stricmp
	test eax, eax
	jz Menu_Paint_740
	add dword [ebp-0x56c], 0x1
	add ebx, 0x4
	mov eax, [ebp-0x56c]
	cmp [edi+0x180], eax
	jg Menu_Paint_750
	mov eax, _cstring_null
	jmp Menu_Paint_730
Menu_Paint_560:
	test byte [esi+0x4e], 0x20
	jz Menu_Paint_760
	movss xmm0, dword [esi+0x4]
	movaps xmm1, xmm0
	mov edx, [ebp-0x610]
	addss xmm1, [edx+0x8]
	subss xmm1, [_float_32_00000000]
	subss xmm1, [_float_1_00000000]
	movss xmm2, dword [edi+0x10]
	addss xmm0, [_float_16_00000000]
	addss xmm0, [_float_1_00000000]
	movss xmm3, dword [_float_8_00000000]
	addss xmm0, xmm3
	ucomiss xmm2, xmm0
	jb Menu_Paint_770
Menu_Paint_1140:
	movaps xmm0, xmm1
	addss xmm0, xmm3
	ucomiss xmm0, xmm2
	jb Menu_Paint_770
	subss xmm2, xmm3
	jmp Menu_Paint_780
Menu_Paint_620:
	lea edx, [esi+0x58]
	mov eax, [esi+0x58]
	mov [ebp-0x28], eax
	mov eax, [edx+0x4]
	mov [ebp-0x24], eax
	mov eax, [edx+0x8]
	mov [ebp-0x20], eax
	mov eax, [edx+0xc]
	mov [ebp-0x1c], eax
	jmp Menu_Paint_790
Menu_Paint_450:
	lea edx, [esi+0x58]
	mov eax, [esi+0x58]
	mov [ebp-0x28], eax
	mov eax, [edx+0x4]
	mov [ebp-0x24], eax
	mov eax, [edx+0x8]
	mov [ebp-0x20], eax
	mov eax, [edx+0xc]
	mov [ebp-0x1c], eax
	jmp Menu_Paint_800
Menu_Paint_710:
	mov eax, [esi+0x10c]
	mov [esp], eax
	call Cvar_GetVariantString
	mov [esp], eax
	call atof
	fstp qword [ebp-0x5b8]
	cvtsd2ss xmm1, [ebp-0x5b8]
	mov ecx, [edi+0x180]
	test ecx, ecx
	jle Menu_Paint_810
	ucomiss xmm1, [edi+0x100]
	jnz Menu_Paint_820
	jp Menu_Paint_820
	xor eax, eax
	mov eax, [edi+eax*4]
	jmp Menu_Paint_730
Menu_Paint_490:
	pxor xmm0, xmm0
	jmp Menu_Paint_830
Menu_Paint_410:
	mov eax, _cstring_dvarenumlist_not
	jmp Menu_Paint_730
Menu_Paint_550:
	mov [esp+0x4], esi
	mov ebx, [ebp+0x8]
	mov eax, [ebx]
	mov [esp], eax
	call UI_OverrideCursorPos
	mov edi, [ebp-0x574]
	mov eax, [edi+0x128]
	test eax, eax
	jz Menu_Paint_840
	mov eax, edi
Menu_Paint_1080:
	mov edx, [ebp-0x610]
	movss xmm0, dword [edx+0xc]
	movss xmm1, dword [_float_2_00000000]
	subss xmm0, xmm1
	movss [ebp-0x578], xmm0
	cmp dword [eax+0x18], 0x1
	jz Menu_Paint_850
	movss xmm0, dword [_float_1_00000000]
	movss xmm1, dword [edx]
	addss xmm1, xmm0
	movss [ebp-0x5c4], xmm1
	movss [ebp-0x5c8], xmm0
	addss xmm0, [edx+0x4]
	movss [ebp-0x5c8], xmm0
	mov eax, [ebp+0x8]
	mov edx, [eax]
	mov ecx, [ebp-0x574]
	mov eax, [ecx+edx*4+0x4]
	mov [ecx+edx*4+0x8], eax
	mov edi, [ebp+0x8]
	mov ebx, [edi]
	mov eax, [ecx+ebx*4+0x4]
	mov [ebp-0x5a0], eax
	cmp [ebp-0x5cc], eax
	jle Menu_Paint_130
	mov [ebp-0x5a4], eax
Menu_Paint_910:
	mov edi, [esi+0x38]
	test edi, edi
	jz Menu_Paint_860
Menu_Paint_940:
	mov eax, [ebp-0x5a4]
	cmp eax, [esi+ebx*4+0x128]
	jz Menu_Paint_870
Menu_Paint_1010:
	mov eax, [ebp-0x574]
	mov edx, [eax+0x1c]
	test edx, edx
	jle Menu_Paint_880
	mov ebx, eax
	mov dword [ebp-0x644], 0x0
Menu_Paint_890:
	mov edx, [ebp-0x574]
	movss xmm3, dword [edx+0x14]
	cvtsi2ss xmm2, dword [ebx+0x24]
	cvtsi2ss xmm0, dword [ebx+0x20]
	mov eax, [ebx+0x2c]
	mov [esp+0x8], eax
	mov eax, [ebx+0x28]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x644]
	mov [esp], ecx
	movss xmm1, dword [ebp-0x5c8]
	addss xmm0, [ebp-0x5c4]
	mov ecx, [ebp-0x5a4]
	mov edx, esi
	mov edi, [ebp+0x8]
	mov eax, [edi]
	call Item_ListBox_PaintTextElem
	add dword [ebp-0x644], 0x1
	add ebx, 0x10
	mov edx, [ebp-0x644]
	mov eax, [ebp-0x574]
	cmp [eax+0x1c], edx
	jg Menu_Paint_890
	mov edi, eax
Menu_Paint_1130:
	movss xmm0, dword [edi+0x14]
	movss xmm1, dword [ebp-0x578]
	subss xmm1, xmm0
	movss [ebp-0x578], xmm1
	ucomiss xmm0, xmm1
	ja Menu_Paint_900
	mov edx, [ebp+0x8]
	mov eax, [edx]
	add dword [edi+eax*4+0x8], 0x1
	movss xmm0, dword [ebp-0x5c8]
	addss xmm0, [edi+0x14]
	movss [ebp-0x5c8], xmm0
	add dword [ebp-0x5a4], 0x1
	mov eax, [ebp-0x5cc]
	cmp [ebp-0x5a4], eax
	jz Menu_Paint_130
	mov edx, [ebp+0x8]
	mov ebx, [edx]
	jmp Menu_Paint_910
Menu_Paint_680:
	subss xmm0, [_float_16_00000000]
	addss xmm1, xmm0
	jmp Menu_Paint_920
Menu_Paint_540:
	mov dword [esp], _cstring_exe_yes
	call UI_SafeTranslateString
	mov [esi+0xe0], eax
	jmp Menu_Paint_930
Menu_Paint_860:
	mov [esp], esi
	call Item_GetListBoxDef
	lea edx, [esi+0x68]
	mov [esp+0x1c], edx
	mov ecx, [ebp-0x610]
	mov edx, [ecx+0x14]
	mov [esp+0x18], edx
	mov edx, [ecx+0x10]
	mov [esp+0x14], edx
	mov eax, [eax+0x14]
	mov [esp+0x10], eax
	movss xmm0, dword [ecx+0x8]
	subss xmm0, [_float_16_00000000]
	subss xmm0, [_float_4_00000000]
	movss [esp+0xc], xmm0
	movss xmm0, dword [_float_2_00000000]
	movss xmm1, dword [ebp-0x5c8]
	addss xmm1, xmm0
	movss [esp+0x8], xmm1
	addss xmm0, [ebp-0x5c4]
	movss [esp+0x4], xmm0
	mov eax, ebx
	shl eax, 0x6
	lea eax, [eax+ebx*4]
	add eax, scrPlaceView
	mov [esp], eax
	call UI_FillRect
	mov edi, [ebp+0x8]
	mov ebx, [edi]
	jmp Menu_Paint_940
Menu_Paint_500:
	mov eax, [g_editingField]
	test eax, eax
	jz Menu_Paint_950
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp], eax
	call Key_GetOverstrikeMode
	cmp eax, 0x1
	sbb eax, eax
	and eax, 0x1d
	add eax, 0x5f
	lea ecx, [esi+0x4]
	mov [ebp-0x640], ecx
	mov ecx, [ebp+0x8]
	mov edx, [ecx]
	mov [esp+0x30], eax
	mov eax, [esi+edx*4+0x128]
	mov ecx, [ebp-0x5e0]
	sub eax, [ecx+0x1c]
	mov [esp+0x2c], eax
	mov eax, [esi+0xd4]
	mov [esp+0x28], eax
	lea eax, [ebp-0x28]
	mov [esp+0x24], eax
	mov eax, [esi+0xd0]
	mov [esp+0x20], eax
	mov ecx, [ebp-0x640]
	mov eax, [ecx+0x14]
	mov [esp+0x1c], eax
	mov eax, [ecx+0x10]
	mov [esp+0x18], eax
	mov eax, [edi+0x4]
	mov [esp+0x14], eax
	movss xmm0, dword [ebp-0x5ec]
	movss [esp+0x10], xmm0
	mov [esp+0xc], ebx
	mov eax, [ebp-0x5e4]
	mov [esp+0x8], eax
	mov ecx, [ebp-0x5e8]
	mov [esp+0x4], ecx
	mov eax, edx
	shl eax, 0x6
	lea edx, [eax+edx*4]
	add edx, [ebp-0x604]
	mov [esp], edx
	call UI_DrawTextWithCursor
	jmp Menu_Paint_130
Menu_Paint_630:
	mov dword [eax-0x4], 0x0
	jmp Menu_Paint_640
Menu_Paint_690:
	subss xmm0, [_float_16_00000000]
	mulss xmm0, [_float_0_50000000]
	addss xmm1, xmm0
	jmp Menu_Paint_920
Menu_Paint_700:
	mov eax, _cstring_dvarstrlist_or_d
	jmp Menu_Paint_730
Menu_Paint_420:
	mov eax, [eax+0x3c]
	test eax, eax
	jz Menu_Paint_810
	mov eax, [esi+0x12c]
	mov [esp], eax
	call Cvar_FindVar
	mov [ebp-0x5ac], eax
	cmp byte [eax+0xa], 0x6
	jz Menu_Paint_960
Menu_Paint_1170:
	xor edi, edi
Menu_Paint_980:
	mov eax, [ebx+0x40]
	mov eax, [eax+edi]
	jmp Menu_Paint_730
Menu_Paint_960:
	mov eax, [esi+0x10c]
	mov [esp], eax
	call Cvar_GetVariantString
	mov [ebp-0x5a8], eax
	mov [esp], eax
	call atoi
	test eax, eax
	js Menu_Paint_970
	mov edi, [ebp-0x5ac]
	cmp eax, [edi+0x3c]
	jge Menu_Paint_970
	lea edi, [eax*4]
	jmp Menu_Paint_980
Menu_Paint_440:
	mov [esp], eax
	call Cvar_FindVar
	test eax, eax
	jz Menu_Paint_430
	cmp byte [eax+0xa], 0x1
	jnz Menu_Paint_430
	mov dword [esp+0xc], 0x2
	mov dword [esp+0x8], 0x400
	lea edi, [ebp-0x568]
	mov [esp+0x4], edi
	mov eax, [eax+0xc]
	mov [esp], eax
	call Com_LocalizedFloatToString
	jmp Menu_Paint_430
Menu_Paint_220:
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov dword [esp], _cstring_game_message_win1
	call va
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call Com_Error
	jmp Menu_Paint_990
Menu_Paint_670:
	subss xmm0, [_float_96_00000000]
	mulss xmm0, [_float_0_50000000]
	addss xmm2, xmm0
	jmp Menu_Paint_660
Menu_Paint_460:
	mov dword [eax-0x4], 0x0
	jmp Menu_Paint_470
Menu_Paint_520:
	mov dword [esi+0xe0], _cstring_menu_bind_key_pe
	jmp Menu_Paint_1000
Menu_Paint_870:
	mov [esp], esi
	call Item_GetListBoxDef
	mov edi, eax
	mov eax, ebx
	shl eax, 0x6
	lea ebx, [eax+ebx*4]
	add ebx, scrPlaceView
	lea eax, [esi+0x88]
	mov [esp+0x1c], eax
	mov edx, [ebp-0x610]
	mov eax, [edx+0x14]
	mov [esp+0x18], eax
	mov eax, [edx+0x10]
	mov [esp+0x14], eax
	mov eax, [edi+0x14]
	mov [esp+0x10], eax
	movss xmm0, dword [edx+0x8]
	subss xmm0, [_float_16_00000000]
	subss xmm0, [_float_4_00000000]
	movss [esp+0xc], xmm0
	movss xmm0, dword [_float_2_00000000]
	movss xmm1, dword [ebp-0x5c8]
	addss xmm1, xmm0
	movss [esp+0x8], xmm1
	addss xmm0, [ebp-0x5c4]
	movss [esp+0x4], xmm0
	mov [esp], ebx
	call UI_FillRect
	lea eax, [edi+0x130]
	mov [esp+0x20], eax
	movss xmm1, dword [_float_1_00000000]
	movss [esp+0x1c], xmm1
	mov ecx, [ebp-0x610]
	mov eax, [ecx+0x14]
	mov [esp+0x18], eax
	mov eax, [ecx+0x10]
	mov [esp+0x14], eax
	movss xmm0, dword [edi+0x14]
	addss xmm0, xmm1
	movss [esp+0x10], xmm0
	movss xmm0, dword [ecx+0x8]
	subss xmm0, [_float_16_00000000]
	subss xmm0, [_float_3_00000000]
	movss [esp+0xc], xmm0
	movss xmm0, dword [ebp-0x5c8]
	addss xmm0, xmm1
	movss [esp+0x8], xmm0
	addss xmm1, [ebp-0x5c4]
	movss [esp+0x4], xmm1
	mov [esp], ebx
	call UI_DrawRect
	mov eax, [edi+0x150]
	test eax, eax
	jz Menu_Paint_1010
	mov ecx, [edi+0x124]
	test ecx, ecx
	jnz Menu_Paint_1010
	movss xmm0, dword [edi+0x14]
	subss xmm0, [_float_4_00000000]
	mov [esp+0x20], eax
	mov dword [esp+0x1c], 0x0
	mov edi, [ebp-0x610]
	mov eax, [edi+0x14]
	mov [esp+0x18], eax
	mov eax, [edi+0x10]
	mov [esp+0x14], eax
	movss [esp+0x10], xmm0
	movss [esp+0xc], xmm0
	movss xmm0, dword [ebp-0x5c8]
	addss xmm0, [_float_4_00000000]
	movss [esp+0x8], xmm0
	movss xmm0, dword [_float_4_00000000]
	addss xmm0, [ebp-0x5c4]
	movss [esp+0x4], xmm0
	mov [esp], ebx
	call UI_DrawHandlePic
	jmp Menu_Paint_1010
Menu_Paint_820:
	mov edx, edi
	xor eax, eax
Menu_Paint_1020:
	add eax, 0x1
	cmp ecx, eax
	jz Menu_Paint_810
	movss xmm0, dword [edx+0x104]
	add edx, 0x4
	ucomiss xmm0, xmm1
	jnz Menu_Paint_1020
	jp Menu_Paint_1020
	mov eax, [edi+eax*4]
	jmp Menu_Paint_730
Menu_Paint_850:
	mov ecx, eax
	movss xmm0, dword [_float_1_00000000]
	movss xmm2, dword [edx]
	addss xmm2, xmm0
	movss [ebp-0x58c], xmm2
	movss xmm2, dword [edx+0x4]
	addss xmm2, xmm0
	movss [ebp-0x5d4], xmm2
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov edx, [ecx+eax*4+0x4]
	mov [ecx+eax*4+0x8], edx
	mov ebx, [ebp+0x8]
	mov eax, [ebx]
	mov eax, [ecx+eax*4+0x4]
	cmp [ebp-0x5cc], eax
	jle Menu_Paint_130
	mov edi, eax
	addss xmm0, [ebp-0x58c]
	movss [ebp-0x608], xmm0
	mov eax, [ebp-0x5cc]
	mov [ebp-0x60c], eax
	jmp Menu_Paint_1030
Menu_Paint_1060:
	mov ecx, [ebp-0x574]
	add dword [ecx+ebx*4+0x8], 0x1
	movss xmm0, dword [ecx+0x14]
	movss xmm1, dword [ebp-0x578]
	subss xmm1, xmm0
	movss [ebp-0x578], xmm1
	ucomiss xmm0, xmm1
	ja Menu_Paint_1040
	addss xmm0, [ebp-0x5d4]
	movss [ebp-0x5d4], xmm0
	add edi, 0x1
	cmp [ebp-0x60c], edi
	jz Menu_Paint_130
Menu_Paint_1030:
	mov [esp+0x4], edi
	mov eax, [esi+0x124]
	mov [esp], eax
	call UI_FeederItemImage
	test eax, eax
	jz Menu_Paint_1050
	mov [esp+0x20], eax
	mov dword [esp+0x1c], 0x0
	mov edx, [ebp-0x610]
	mov eax, [edx+0x14]
	mov [esp+0x18], eax
	mov eax, [edx+0x10]
	mov [esp+0x14], eax
	mov ecx, [ebp-0x574]
	movss xmm0, dword [ecx+0x14]
	subss xmm0, [_float_2_00000000]
	movss [esp+0x10], xmm0
	movss xmm0, dword [ecx+0x10]
	subss xmm0, [_float_2_00000000]
	movss [esp+0xc], xmm0
	movss xmm0, dword [ebp-0x5d4]
	addss xmm0, [_float_1_00000000]
	movss [esp+0x8], xmm0
	movss xmm0, dword [ebp-0x608]
	movss [esp+0x4], xmm0
	mov eax, [ebp-0x5dc]
	mov [esp], eax
	call UI_DrawHandlePic
Menu_Paint_1050:
	mov edx, [ebp+0x8]
	mov ebx, [edx]
	cmp edi, [esi+ebx*4+0x128]
	jnz Menu_Paint_1060
	lea eax, [esi+0x78]
	mov [esp+0x20], eax
	mov eax, [esi+0x48]
	mov [esp+0x1c], eax
	mov ecx, [ebp-0x610]
	mov eax, [ecx+0x14]
	mov [esp+0x18], eax
	mov eax, [ecx+0x10]
	mov [esp+0x14], eax
	mov ebx, [ebp-0x574]
	movss xmm0, dword [ebx+0x14]
	subss xmm0, [_float_1_00000000]
	movss [esp+0x10], xmm0
	movss xmm0, dword [ebx+0x10]
	subss xmm0, [_float_1_00000000]
	movss [esp+0xc], xmm0
	movss xmm0, dword [ebp-0x5d4]
	movss [esp+0x8], xmm0
	movss xmm1, dword [ebp-0x58c]
	movss [esp+0x4], xmm1
	mov eax, [ebp-0x5dc]
	mov [esp], eax
	call UI_DrawRect
	mov edx, [ebp+0x8]
	mov ebx, [edx]
	jmp Menu_Paint_1060
Menu_Paint_840:
	movss xmm0, dword [esi+0x4]
	movss [ebp-0x588], xmm0
	mov eax, [ebp-0x610]
	addss xmm0, [eax+0x8]
	subss xmm0, [_float_16_00000000]
	subss xmm0, [_float_1_00000000]
	movss [ebp-0x588], xmm0
	movss xmm0, dword [_float_1_00000000]
	addss xmm0, [eax+0x4]
	movss [ebp-0x59c], xmm0
	mov ebx, sharedUiInfo
	mov eax, [ebx]
	mov [esp+0x20], eax
	mov dword [esp+0x1c], 0x0
	mov edx, [ebp-0x610]
	mov eax, [edx+0x14]
	mov [esp+0x18], eax
	mov eax, [edx+0x10]
	mov [esp+0x14], eax
	mov dword [esp+0x10], 0x41800000
	mov dword [esp+0xc], 0x41800000
	movss [esp+0x8], xmm0
	movss xmm0, dword [ebp-0x588]
	movss [esp+0x4], xmm0
	mov eax, [ebp-0x5dc]
	mov [esp], eax
	call UI_DrawHandlePic
	movss xmm0, dword [ebp-0x59c]
	addss xmm0, [_float_15_00000000]
	movss [ebp-0x598], xmm0
	mov eax, [ebp+0x8]
	mov edx, [eax]
	mov eax, [edi+edx*4+0x4]
	mov [edi+edx*4+0x8], eax
	mov edx, [ebp-0x610]
	movss xmm1, dword [edx+0xc]
	subss xmm1, [_float_32_00000000]
	mov eax, [ebx+0x10]
	mov [esp+0x20], eax
	mov dword [esp+0x1c], 0x0
	mov eax, [edx+0x14]
	mov [esp+0x18], eax
	mov eax, [edx+0x10]
	mov [esp+0x14], eax
	movaps xmm0, xmm1
	addss xmm0, [_float_1_00000000]
	movss [esp+0x10], xmm0
	mov dword [esp+0xc], 0x41800000
	movss xmm0, dword [ebp-0x598]
	movss [esp+0x8], xmm0
	movss xmm2, dword [ebp-0x588]
	movss [esp+0x4], xmm2
	mov eax, [ebp-0x5dc]
	mov [esp], eax
	movss [ebp-0x628], xmm1
	call UI_DrawHandlePic
	movss xmm1, dword [ebp-0x628]
	movaps xmm3, xmm1
	subss xmm3, [_float_1_00000000]
	addss xmm3, [ebp-0x598]
	mov eax, [ebx+0x4]
	mov [esp+0x20], eax
	mov dword [esp+0x1c], 0x0
	mov edx, [ebp-0x610]
	mov eax, [edx+0x14]
	mov [esp+0x18], eax
	mov eax, [edx+0x10]
	mov [esp+0x14], eax
	mov dword [esp+0x10], 0x41800000
	mov dword [esp+0xc], 0x41800000
	movss [esp+0x8], xmm3
	movss xmm0, dword [ebp-0x588]
	movss [esp+0x4], xmm0
	mov eax, [ebp-0x5dc]
	mov [esp], eax
	movss [ebp-0x638], xmm3
	call UI_DrawHandlePic
	cmp esi, [itemCapture]
	movss xmm3, dword [ebp-0x638]
	jz Menu_Paint_1070
Menu_Paint_1110:
	mov ecx, [ebp+0x8]
Menu_Paint_1100:
	mov edx, esi
	mov eax, [ecx]
	movss [ebp-0x638], xmm3
	call Item_ListBox_ThumbPosition
	movaps xmm1, xmm0
	movss xmm3, dword [ebp-0x638]
Menu_Paint_1120:
	movss xmm0, dword [_float_16_00000000]
	subss xmm3, xmm0
	subss xmm3, [_float_1_00000000]
	minss xmm3, xmm1
	mov eax, sharedUiInfo
	mov eax, [eax+0x14]
	mov [esp+0x20], eax
	mov dword [esp+0x1c], 0x0
	mov ebx, [ebp-0x610]
	mov eax, [ebx+0x14]
	mov [esp+0x18], eax
	mov eax, [ebx+0x10]
	mov [esp+0x14], eax
	movss [esp+0x10], xmm0
	movss [esp+0xc], xmm0
	movss [esp+0x8], xmm3
	movss xmm0, dword [ebp-0x588]
	movss [esp+0x4], xmm0
	mov eax, [ebp-0x5dc]
	mov [esp], eax
	call UI_DrawHandlePic
	mov eax, [ebp-0x574]
	jmp Menu_Paint_1080
Menu_Paint_1070:
	test byte [esi+0x4e], 0x20
	jz Menu_Paint_1090
	movss xmm0, dword [esi+0x4]
	movaps xmm1, xmm0
	mov edx, [ebp-0x610]
	addss xmm1, [edx+0x8]
	subss xmm1, [_float_32_00000000]
	subss xmm1, [_float_1_00000000]
	mov ecx, [ebp+0x8]
	movss xmm2, dword [ecx+0x10]
	addss xmm0, [_float_16_00000000]
	addss xmm0, [_float_1_00000000]
	movss xmm4, dword [_float_8_00000000]
	addss xmm0, xmm4
	ucomiss xmm2, xmm0
	jb Menu_Paint_1100
Menu_Paint_1160:
	movaps xmm0, xmm1
	addss xmm0, xmm4
	ucomiss xmm0, xmm2
	jb Menu_Paint_1110
	movaps xmm1, xmm2
	subss xmm1, xmm4
	jmp Menu_Paint_1120
Menu_Paint_880:
	movss xmm3, dword [eax+0x14]
	movss xmm2, dword [eax+0x10]
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x7fffffff
	mov dword [esp], 0x0
	movss xmm1, dword [ebp-0x5c8]
	movss xmm0, dword [ebp-0x5c4]
	mov ecx, [ebp-0x5a4]
	mov edx, esi
	mov ebx, [ebp+0x8]
	mov eax, [ebx]
	call Item_ListBox_PaintTextElem
	mov edi, [ebp-0x574]
	jmp Menu_Paint_1130
Menu_Paint_760:
	mov ecx, [ebp-0x610]
	movss xmm0, dword [ecx+0x4]
	movaps xmm1, xmm0
	addss xmm1, [ecx+0xc]
	subss xmm1, [_float_32_00000000]
	subss xmm1, [_float_1_00000000]
	mov ebx, [ebp+0x8]
	movss xmm2, dword [ebx+0x14]
	addss xmm0, [_float_16_00000000]
	addss xmm0, [_float_1_00000000]
	movss xmm3, dword [_float_8_00000000]
	addss xmm0, xmm3
	ucomiss xmm2, xmm0
	jae Menu_Paint_1140
	mov edi, ebx
	jmp Menu_Paint_1150
Menu_Paint_900:
	subss xmm0, [ebp-0x578]
	cvttss2si eax, xmm0
	mov edx, [ebp-0x574]
	mov [edx+0xc], eax
	jmp Menu_Paint_130
Menu_Paint_740:
	mov edx, [ebp-0x56c]
	mov eax, [edi+edx*4]
	jmp Menu_Paint_730
Menu_Paint_1090:
	mov ebx, [ebp-0x610]
	movss xmm0, dword [ebx+0x4]
	movaps xmm1, xmm0
	addss xmm1, [ebx+0xc]
	subss xmm1, [_float_32_00000000]
	subss xmm1, [_float_1_00000000]
	mov edi, [ebp+0x8]
	movss xmm2, dword [edi+0x14]
	addss xmm0, [_float_16_00000000]
	addss xmm0, [_float_1_00000000]
	movss xmm4, dword [_float_8_00000000]
	addss xmm0, xmm4
	ucomiss xmm2, xmm0
	jae Menu_Paint_1160
	mov ecx, edi
	jmp Menu_Paint_1100
Menu_Paint_970:
	mov ecx, [ebp-0x5ac]
	mov edi, [ecx+0x3c]
	test edi, edi
	jle Menu_Paint_1170
	mov dword [ebp-0x570], 0x0
	xor eax, eax
Menu_Paint_1180:
	mov edi, eax
	mov edx, [ebp-0x5ac]
	mov eax, [edx+0x40]
	mov eax, [eax+edi]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x5a8]
	mov [esp], ecx
	call Q_stricmp
	test eax, eax
	jz Menu_Paint_980
	add dword [ebp-0x570], 0x1
	lea eax, [edi+0x4]
	mov edx, [ebp-0x570]
	mov edi, [ebp-0x5ac]
	cmp edx, [edi+0x3c]
	jl Menu_Paint_1180
	jmp Menu_Paint_1170
Menu_Paint_1040:
	subss xmm0, [ebp-0x578]
	cvttss2si eax, xmm0
	mov edi, [ebp-0x574]
	mov [edi+0xc], eax
	jmp Menu_Paint_130
Menu_Paint_580:
	cvttss2si eax, [ebp-0x5d0]
	mov ebx, [ebp-0x574]
	mov [ebx+0xc], eax
	jmp Menu_Paint_130
	
	
Menu_Paint_jumptab_0:
	dd Menu_Paint_1190
	dd Menu_Paint_1190
	dd Menu_Paint_130
	dd Menu_Paint_130
	dd Menu_Paint_1200
	dd Menu_Paint_130
	dd Menu_Paint_1210
	dd Menu_Paint_130
	dd Menu_Paint_1220
	dd Menu_Paint_1200
	dd Menu_Paint_1230
	dd Menu_Paint_1240
	dd Menu_Paint_1250
	dd Menu_Paint_1260
	dd Menu_Paint_1270
	dd Menu_Paint_130
	dd Menu_Paint_1200
	dd Menu_Paint_1200
	dd Menu_Paint_1200
	dd Menu_Paint_1280


;Menu_Setup(UiContext*)
Menu_Setup:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	mov dword [ebx+0xa30], 0x0
	mov dword [ebx+0xa74], 0x0
	call Item_SetupKeywordHash
	call Menu_SetupKeywordHash
	add ebx, 0xa78
	mov [ebp+0x8], ebx
	add esp, 0x4
	pop ebx
	pop ebp
	jmp UILocalVar_Init
	nop


;Menus_Open(UiContext*, menuDef_t*)
Menus_Open:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1cc
	mov eax, [ebp+0x8]
	mov edi, [eax+0xa74]
	mov eax, edi
	sub eax, 0x1
	js Menus_Open_10
	mov edx, [ebp+0x8]
	lea esi, [edx+eax*4+0xa34]
	mov dword [ebp-0x19c], 0x0
	mov ecx, edx
	jmp Menus_Open_20
Menus_Open_40:
	add dword [ebp-0x19c], 0x1
	sub esi, 0x4
	cmp edi, [ebp-0x19c]
	jz Menus_Open_30
	mov ecx, [ebp+0x8]
Menus_Open_20:
	mov ebx, [esi]
	mov edx, [ecx]
	mov eax, [ebx+edx*4+0x50]
	test al, 0x4
	jz Menus_Open_40
	test al, 0x2
	jz Menus_Open_40
	mov dword [esp+0x8], 0x2
	mov [esp+0x4], ebx
	mov [esp], edx
	call Window_RemoveDynamicFlags
	mov eax, [ebx+0xa4]
	mov [ebp-0x1a4], eax
	test eax, eax
	jle Menus_Open_40
	mov edx, [ebp+0x8]
	mov edx, [edx]
	mov [ebp-0x1a0], edx
	mov ecx, [ebx+0x118]
	xor ebx, ebx
	jmp Menus_Open_50
Menus_Open_60:
	add ebx, 0x1
	add ecx, 0x4
	cmp [ebp-0x1a4], ebx
	jz Menus_Open_40
	mov edx, [ebp-0x1a0]
Menus_Open_50:
	mov eax, [ecx]
	mov [ebp-0x1ac], eax
	mov edx, [eax+edx*4+0x50]
	mov [ebp-0x1bc], edx
	test dl, 0x4
	jz Menus_Open_60
	and dl, 0x2
	jz Menus_Open_60
	mov ecx, [eax+0x108]
	test ecx, ecx
	jz Menus_Open_40
	mov edx, eax
	mov eax, [ebp+0x8]
	call Item_RunScript
	jmp Menus_Open_40
Menus_Open_30:
	mov ecx, [ebp+0x8]
	mov edi, [ecx+0xa74]
Menus_Open_10:
	mov ebx, edi
	sub ebx, 0x1
	js Menus_Open_70
	mov eax, [ebp+0xc]
	mov ecx, [ebp+0x8]
	cmp eax, [ecx+ebx*4+0xa34]
	jz Menus_Open_80
	lea ecx, [ecx+ebx*4+0xa34]
	mov esi, ebx
	xor edx, edx
Menus_Open_90:
	sub esi, 0x1
	cmp ebx, edx
	jz Menus_Open_70
	mov eax, [ecx-0x4]
	add edx, 0x1
	sub ecx, 0x4
	cmp [ebp+0xc], eax
	jnz Menus_Open_90
	mov eax, [ebp+0x8]
	mov [eax+0xa74], ebx
	cmp ebx, esi
	jg Menus_Open_100
Menus_Open_70:
	mov edx, [ebp+0x8]
	cmp dword [edx+0xa74], 0x10
	jz Menus_Open_110
Menus_Open_210:
	mov ecx, edx
Menus_Open_220:
	mov eax, [ecx+0xa74]
	mov edx, [ebp+0xc]
	mov [ecx+eax*4+0xa34], edx
	add eax, 0x1
	mov [ecx+0xa74], eax
	mov dword [esp+0x8], 0x6
	mov [esp+0x4], edx
	mov eax, [ecx]
	mov [esp], eax
	call Window_AddDynamicFlags
	mov ecx, [ebp+0xc]
	mov esi, [ecx+0xa4]
	test esi, esi
	jle Menus_Open_120
	mov eax, [ebp+0x8]
	mov edi, [eax]
	mov ecx, [ecx+0x118]
	xor ebx, ebx
Menus_Open_150:
	mov edx, [ecx]
	mov eax, [edx+edi*4+0x50]
	test al, 0x4
	jz Menus_Open_130
	test al, 0x2
	jnz Menus_Open_140
Menus_Open_130:
	add ebx, 0x1
	add ecx, 0x4
	cmp esi, ebx
	jnz Menus_Open_150
Menus_Open_120:
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x18]
	test eax, eax
	jnz Menus_Open_160
Menus_Open_270:
	mov eax, fs_gameDirVar
	mov eax, [eax]
	mov eax, [eax+0xc]
	cmp byte [eax], 0x0
	jnz Menus_Open_170
Menus_Open_240:
	mov edx, [ebp+0xc]
	mov eax, [edx+0xc4]
	test eax, eax
	jz Menus_Open_180
	mov [ebp-0xa4], edx
	mov ecx, [edx+0xc4]
	lea edx, [ebp-0x18c]
	mov eax, [ebp+0x8]
	call Item_RunScript
	mov ecx, [ebp+0xc]
Menus_Open_230:
	mov eax, [ecx+0xe0]
	test eax, eax
	jz Menus_Open_190
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp], eax
	call SND_PlayLocalSoundAliasByName
Menus_Open_190:
	add esp, 0x1cc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Menus_Open_100:
	lea edx, [eax+esi*4+0xa38]
	mov ecx, esi
	lea ebx, [eax+esi*4+0xa34]
	sub ebx, edx
Menus_Open_200:
	add ecx, 0x1
	mov eax, [edx]
	mov [ebx+edx], eax
	add edx, 0x4
	mov eax, [ebp+0x8]
	cmp [eax+0xa74], ecx
	jg Menus_Open_200
	mov edx, eax
	cmp dword [edx+0xa74], 0x10
	jnz Menus_Open_210
Menus_Open_110:
	mov dword [esp+0x4], _cstring_too_many_menus_o
	mov dword [esp], 0x2
	call Com_Error
	mov ecx, [ebp+0x8]
	jmp Menus_Open_220
Menus_Open_180:
	mov ecx, edx
	jmp Menus_Open_230
Menus_Open_170:
	mov eax, [ebp+0x8]
	mov edi, [eax]
	mov edx, _cstring_mini_map2_overla
	mov eax, [ebp+0xc]
	call Menu_ItemsMatchingGroup
	mov esi, eax
	test eax, eax
	jle Menus_Open_240
	xor ebx, ebx
Menus_Open_260:
	mov ecx, _cstring_mini_map2_overla
	mov edx, ebx
	mov eax, [ebp+0xc]
	call Menu_GetMatchingItemByNumber
	test eax, eax
	jz Menus_Open_250
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov [esp], edi
	call Window_RemoveDynamicFlags
Menus_Open_250:
	add ebx, 0x1
	cmp esi, ebx
	jnz Menus_Open_260
	jmp Menus_Open_240
Menus_Open_160:
	mov edx, [ebp+0xc]
	mov eax, ecx
	call Menu_HandleMouseMove
	jmp Menus_Open_270
Menus_Open_80:
	mov esi, ebx
	mov eax, [ebp+0x8]
	mov [eax+0xa74], ebx
	cmp ebx, esi
	jle Menus_Open_70
	jmp Menus_Open_100
Menus_Open_140:
	mov ecx, [edx+0x104]
	test ecx, ecx
	jz Menus_Open_120
	mov eax, [ebp+0x8]
	call Item_RunScript
	jmp Menus_Open_120


;String_Parse(char const**, char*, int)
String_Parse:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call Com_ParseOnLine
	mov esi, eax
	mov eax, [ebx]
	test eax, eax
	jz String_Parse_10
	cmp byte [esi], 0x40
	jz String_Parse_20
String_Parse_40:
	mov edx, [ebp+0x10]
	mov [esp+0x8], edx
	mov [esp+0x4], esi
	mov eax, [ebp+0xc]
	mov [esp], eax
	call Q_strncpyz
	mov eax, 0x1
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
String_Parse_20:
	lea eax, [esi+0x1]
	mov [esp], eax
	call SEH_StringEd_GetString
	test eax, eax
	jz String_Parse_30
	mov edx, [ebp+0x10]
	mov [esp+0x8], edx
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call Q_strncpyz
	mov eax, 0x1
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
String_Parse_10:
	xor eax, eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
String_Parse_30:
	mov dword [esp], _cstring_loc_warnings
	call Cvar_VariableBooleanValue
	test al, al
	jz String_Parse_40
	mov dword [esp], _cstring_loc_warningsaser
	call Cvar_VariableBooleanValue
	test al, al
	jz String_Parse_50
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_could_not_transl
	mov dword [esp], 0x7
	call Com_Error
	jmp String_Parse_40
String_Parse_50:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_warning_could_no
	mov dword [esp], 0xd
	call Com_PrintWarning
	jmp String_Parse_40


;Menu_PaintAll(UiContext*)
Menu_PaintAll:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x45c
	mov eax, ui_showList
	mov eax, [eax]
	movzx eax, byte [eax+0xc]
	mov [ebp-0x431], al
	mov dword [esp+0x4], _cstring_menu_paint_all
	mov dword [esp], 0xffffffff
	call PIXBeginNamedEvent
	cmp byte [ebp-0x431], 0x0
	jnz Menu_PaintAll_10
Menu_PaintAll_160:
	mov eax, [ebp+0x8]
	mov dword [eax+0x2c], 0x0
	mov edx, [captureFunc]
	test edx, edx
	jz Menu_PaintAll_20
	mov eax, [captureData]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call edx
Menu_PaintAll_20:
	mov edx, [ebp+0x8]
	mov edi, [edx+0xa74]
	mov esi, edi
	sub esi, 0x1
	js Menu_PaintAll_30
	mov eax, [edx+esi*4+0xa34]
	mov eax, [eax+0xa0]
	test eax, eax
	jz Menu_PaintAll_40
	mov eax, esi
Menu_PaintAll_240:
	mov edx, [ebp+0x8]
	cmp eax, [edx+0xa74]
	jl Menu_PaintAll_50
Menu_PaintAll_110:
	mov eax, [g_debugMode]
	test eax, eax
	jnz Menu_PaintAll_60
Menu_PaintAll_140:
	cmp byte [ebp-0x431], 0x0
	jz Menu_PaintAll_70
	mov dword [ebp-0x28], 0x3f400000
	mov eax, 0x3f800000
	mov [ebp-0x24], eax
	mov dword [ebp-0x20], 0x3f000000
	mov [ebp-0x1c], eax
	pxor xmm0, xmm0
	mov eax, [ebp+0x8]
	ucomiss xmm0, [eax+0x28]
	jnz Menu_PaintAll_80
	jp Menu_PaintAll_80
	mov edx, 0x43a00000
Menu_PaintAll_150:
	mov dword [esp+0x28], 0x0
	lea eax, [ebp-0x28]
	mov [esp+0x24], eax
	mov dword [esp+0x20], 0x3e4ccccd
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x0
	mov [esp+0x14], edx
	mov dword [esp+0x10], 0x0
	mov eax, sharedUiInfo
	mov eax, [eax+0x2c]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x7fffffff
	lea eax, [ebp-0x428]
	mov [esp+0x4], eax
	mov eax, scrPlaceFull
	mov [esp], eax
	call UI_DrawText
Menu_PaintAll_70:
	add esp, 0x45c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Menu_PaintAll_40:
	lea ecx, [edx+esi*4+0xa34]
	mov ebx, esi
	xor edx, edx
Menu_PaintAll_100:
	sub ebx, 0x1
	cmp edx, esi
	jz Menu_PaintAll_90
	mov eax, [ecx-0x4]
	add edx, 0x1
	sub ecx, 0x4
	mov eax, [eax+0xa0]
	test eax, eax
	jz Menu_PaintAll_100
	mov eax, ebx
	mov edx, [ebp+0x8]
	cmp eax, [edx+0xa74]
	jge Menu_PaintAll_110
Menu_PaintAll_50:
	cmp byte [ebp-0x431], 0x0
	jnz Menu_PaintAll_120
	mov edx, [ebp+0x8]
	lea esi, [edx+eax*4+0xa34]
	mov ebx, eax
Menu_PaintAll_130:
	mov eax, [esi]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Menu_Paint
	add ebx, 0x1
	add esi, 0x4
	mov edx, [ebp+0x8]
	cmp ebx, [edx+0xa74]
	jl Menu_PaintAll_130
	mov eax, [g_debugMode]
	test eax, eax
	jz Menu_PaintAll_140
Menu_PaintAll_60:
	mov ebx, 0x3f000000
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4]
	mov edi, scrPlaceView
	add eax, edi
	mov [esp], eax
	call UI_GetFontHandle
	mov esi, eax
	mov eax, [ebp+0x8]
	cvtss2sd xmm0, [eax+0x28]
	movsd [esp+0x4], xmm0
	mov dword [esp], _cstring_fps_f
	call va
	mov dword [esp+0x28], 0x0
	mov edx, colorWhite
	mov [esp+0x24], edx
	mov [esp+0x20], ebx
	mov dword [esp+0x1c], 0x0
	mov dword [esp+0x18], 0x0
	mov dword [esp+0x14], 0x41c80000
	mov dword [esp+0x10], 0x40a00000
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0x7fffffff
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov edx, eax
	shl edx, 0x6
	lea eax, [edx+eax*4]
	add eax, edi
	mov [esp], eax
	call UI_DrawText
	jmp Menu_PaintAll_140
Menu_PaintAll_80:
	mov edx, 0x43c80000
	jmp Menu_PaintAll_150
Menu_PaintAll_10:
	mov ebx, [_cstring_ui_showlist_]
	mov [ebp-0x28], ebx
	mov ecx, [_cstring_ui_showlist_+0x4]
	mov [ebp-0x24], ecx
	mov edx, [_cstring_ui_showlist_+0x8]
	mov [ebp-0x20], edx
	movzx eax, word [_cstring_ui_showlist_+0xc]
	mov [ebp-0x1c], ax
	mov [ebp-0x428], ebx
	mov [ebp-0x424], ecx
	mov [ebp-0x420], edx
	mov [ebp-0x41c], ax
	jmp Menu_PaintAll_160
Menu_PaintAll_30:
	mov eax, edx
Menu_PaintAll_250:
	mov eax, [eax+0xa30]
	test eax, eax
	jle Menu_PaintAll_170
	mov edx, [ebp+0x8]
	mov [ebp-0x430], edx
	mov dword [ebp-0x42c], 0x0
	mov eax, edx
	mov esi, [eax+0x30]
	mov ebx, edi
	sub ebx, 0x1
	js Menu_PaintAll_180
Menu_PaintAll_210:
	mov eax, [ebp+0x8]
	cmp esi, [eax+ebx*4+0xa34]
	jz Menu_PaintAll_190
	lea edx, [eax+ebx*4+0xa34]
	xor ecx, ecx
Menu_PaintAll_200:
	cmp ecx, ebx
	jz Menu_PaintAll_180
	mov eax, [edx-0x4]
	add ecx, 0x1
	sub edx, 0x4
	cmp eax, esi
	jnz Menu_PaintAll_200
Menu_PaintAll_220:
	mov edx, [ebp+0x8]
Menu_PaintAll_230:
	add dword [ebp-0x42c], 0x1
	add dword [ebp-0x430], 0x4
	mov eax, [ebp-0x42c]
	cmp eax, [edx+0xa30]
	jge Menu_PaintAll_170
	mov edi, [edx+0xa74]
	mov eax, [ebp-0x430]
	mov esi, [eax+0x30]
	mov ebx, edi
	sub ebx, 0x1
	jns Menu_PaintAll_210
Menu_PaintAll_180:
	mov [esp+0x4], esi
	mov edx, [ebp+0x8]
	mov [esp], edx
	call Menu_Paint
	test al, al
	jz Menu_PaintAll_220
	cmp byte [ebp-0x431], 0x0
	jz Menu_PaintAll_220
	mov eax, [esi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x400
	lea eax, [ebp-0x428]
	mov [esp], eax
	call Menu_PaintAll_AppendToVisibleList
	mov edx, [ebp+0x8]
	jmp Menu_PaintAll_230
Menu_PaintAll_170:
	xor eax, eax
	jmp Menu_PaintAll_240
Menu_PaintAll_190:
	mov edx, eax
	jmp Menu_PaintAll_230
Menu_PaintAll_90:
	mov eax, [ebp+0x8]
	jmp Menu_PaintAll_250
Menu_PaintAll_120:
	mov edx, [ebp+0x8]
	lea esi, [edx+eax*4+0xa34]
	mov ebx, eax
Menu_PaintAll_270:
	mov edi, [esi]
	mov [esp+0x4], edi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Menu_Paint
	test al, al
	jz Menu_PaintAll_260
	mov eax, [edi]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x400
	lea edx, [ebp-0x428]
	mov [esp], edx
	call Menu_PaintAll_AppendToVisibleList
Menu_PaintAll_260:
	add ebx, 0x1
	add esi, 0x4
	mov eax, [ebp+0x8]
	cmp ebx, [eax+0xa74]
	jl Menu_PaintAll_270
	jmp Menu_PaintAll_110
	add [eax], al


;Menu_HandleKey(UiContext*, menuDef_t*, int, int)
Menu_HandleKey:
Menu_HandleKey_1240:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x49c
	mov esi, [g_waitingForKey]
	test esi, esi
	jz Menu_HandleKey_10
	mov ebx, [ebp+0x14]
	test ebx, ebx
	jnz Menu_HandleKey_20
Menu_HandleKey_10:
	mov ecx, [g_editingField]
	test ecx, ecx
	jnz Menu_HandleKey_30
Menu_HandleKey_90:
	mov eax, [ebp+0xc]
	test eax, eax
	jz Menu_HandleKey_40
	mov edi, [ebp+0x14]
	test edi, edi
	jnz Menu_HandleKey_50
Menu_HandleKey_480:
	mov edx, [ebp+0xc]
	mov ecx, [edx+0xa4]
	test ecx, ecx
	jg Menu_HandleKey_60
Menu_HandleKey_380:
	mov dword [ebp-0x474], 0x0
	mov eax, [ebp+0x10]
	sub eax, 0xcd
	cmp eax, 0x1
	jbe Menu_HandleKey_70
Menu_HandleKey_410:
	mov eax, [ebp-0x474]
	test eax, eax
	jz Menu_HandleKey_80
Menu_HandleKey_420:
	mov edi, [ebp+0x14]
	mov [esp], edi
	mov ecx, [ebp+0x10]
	mov edx, [ebp-0x474]
	mov eax, [ebp+0x8]
	call Item_HandleKey
	test eax, eax
	jz Menu_HandleKey_80
	mov eax, [ebp-0x474]
	test eax, eax
	jz Menu_HandleKey_40
	mov eax, [ebp-0x474]
	mov ecx, [eax+0xfc]
	mov edx, eax
	mov eax, [ebp+0x8]
	call Item_RunScript
Menu_HandleKey_40:
	add esp, 0x49c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Menu_HandleKey_30:
	mov edx, [ebp+0x14]
	test edx, edx
	jz Menu_HandleKey_90
	mov esi, [g_editItem]
	mov [esp], esi
	call Item_GetEditFieldDef
	mov [ebp-0x470], eax
	test eax, eax
	jz Menu_HandleKey_100
	mov eax, [esi+0x10c]
	test eax, eax
	jz Menu_HandleKey_100
	mov dword [esp+0x8], 0x400
	mov dword [esp+0x4], 0x0
	lea ebx, [ebp-0x418]
	mov [esp], ebx
	call memset
	mov eax, [esi+0x10c]
	mov [esp], eax
	call Cvar_GetVariantString
	mov dword [esp+0x8], 0x400
	mov [esp+0x4], eax
	mov edi, ebx
	mov [esp], ebx
	call Q_strncpyz
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	repne scasb
	not ecx
	lea ebx, [ecx-0x1]
	mov edx, [ebp-0x470]
	mov eax, [edx+0x10]
	test eax, eax
	jz Menu_HandleKey_110
	cmp ebx, eax
	jle Menu_HandleKey_110
	mov byte [ebp+eax-0x418], 0x0
	mov ebx, [ebp+0x8]
	mov ecx, [ebx]
	mov edi, [ebp-0x470]
	mov edx, [edi+0x10]
	cmp [esi+ecx*4+0x128], edx
	jle Menu_HandleKey_120
	mov [esi+ecx*4+0x128], edx
Menu_HandleKey_120:
	mov ebx, eax
Menu_HandleKey_110:
	test dword [ebp+0x10], 0x400
	jz Menu_HandleKey_130
	mov edi, [ebp+0x10]
	and edi, 0xfffffbff
	cmp edi, 0x8
	jz Menu_HandleKey_140
	cmp dword [esi+0xb4], 0x10
	jz Menu_HandleKey_150
Menu_HandleKey_1000:
	cmp edi, 0x1f
	jle Menu_HandleKey_160
	mov eax, [esi+0x10c]
	test eax, eax
	jz Menu_HandleKey_160
	cmp edi, 0x40
	jz Menu_HandleKey_160
	cmp dword [esi+0xb4], 0x9
	jz Menu_HandleKey_170
Menu_HandleKey_1270:
	cmp dword [esi+0xb4], 0x11
	jz Menu_HandleKey_180
Menu_HandleKey_1260:
	cmp dword [esi+0xb4], 0x12
	jz Menu_HandleKey_190
Menu_HandleKey_1280:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp], eax
	call Key_GetOverstrikeMode
	test eax, eax
	jnz Menu_HandleKey_200
	cmp ebx, 0xff
	jz Menu_HandleKey_160
	mov ecx, [ebp-0x470]
	mov eax, [ecx+0x10]
	test eax, eax
	jz Menu_HandleKey_210
	cmp ebx, eax
	jge Menu_HandleKey_160
Menu_HandleKey_210:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov edx, [esi+eax*4+0x128]
	sub ebx, edx
	lea eax, [ebx+0x1]
	mov [esp+0x8], eax
	lea eax, [ebp-0x418]
	add eax, edx
	mov [esp+0x4], eax
	lea edx, [edx+ebp-0x417]
	mov [esp], edx
	call memmove
	mov ecx, [ebp+0x8]
	mov ecx, [ecx]
	mov [ebp-0x47c], ecx
	mov edx, ecx
Menu_HandleKey_1100:
	mov eax, [esi+edx*4+0x128]
	mov ecx, edi
	mov [ebp+eax-0x418], cl
	lea ebx, [ebp-0x418]
	mov [esp+0x4], ebx
	mov eax, [esi+0x10c]
	mov [esp], eax
	call Cvar_SetFromStringByName
	mov eax, [esi+0x10c]
	mov [esp], eax
	call Cvar_GetVariantString
	mov dword [esp+0x8], 0x400
	mov [esp+0x4], eax
	mov [esp], ebx
	call Q_strncpyz
	mov edx, [ebp+0x8]
	mov ebx, [edx]
	mov dword [esp+0xc], 0x1
	lea ecx, [ebp-0x418]
	mov [esp+0x8], ecx
	mov [esp+0x4], esi
	mov [esp], ebx
	call Item_GetCursorPosOffset
	mov [esi+ebx*4+0x128], eax
	mov ebx, [ebp+0x8]
	mov ebx, [ebx]
	mov [ebp-0x46c], ebx
	mov [esp], esi
	call Item_GetEditFieldDef
	mov ebx, eax
	mov edx, [ebp-0x46c]
	mov eax, [esi+edx*4+0x128]
	cmp eax, [ebx+0x1c]
	jl Menu_HandleKey_220
	mov eax, [ebx+0x18]
	test eax, eax
	jnz Menu_HandleKey_230
Menu_HandleKey_1080:
	mov ecx, [ebp-0x470]
	mov edx, [ecx+0x10]
	test edx, edx
	jz Menu_HandleKey_240
	mov ebx, [ebp+0x8]
	mov eax, [ebx]
	cmp edx, [esi+eax*4+0x128]
	jg Menu_HandleKey_240
	mov eax, [ecx+0x14]
	test eax, eax
	jnz Menu_HandleKey_250
Menu_HandleKey_240:
	cmp edi, 0x9
	jz Menu_HandleKey_260
	cmp edi, 0x9b
	jz Menu_HandleKey_260
Menu_HandleKey_990:
	cmp edi, 0x9a
	jz Menu_HandleKey_270
	cmp edi, 0xd
	jz Menu_HandleKey_280
	cmp edi, 0xbf
	jz Menu_HandleKey_280
Menu_HandleKey_980:
	cmp edi, 0x1b
	jz Menu_HandleKey_100
Menu_HandleKey_160:
	mov eax, [ebp+0x10]
	sub eax, 0xc8
	cmp eax, 0x2
	ja Menu_HandleKey_40
	mov dword [g_editingField], 0x0
	mov dword [g_editItem], 0x0
	mov eax, [ebp+0x8]
	mov edi, [eax+0xa74]
	sub edi, 0x1
	js Menu_HandleKey_90
	mov esi, [eax]
	lea ecx, [eax+edi*4+0xa34]
	xor ebx, ebx
Menu_HandleKey_800:
	mov edx, [ecx]
	mov eax, [edx+esi*4+0x50]
	test al, 0x4
	jz Menu_HandleKey_290
	test al, 0x2
	jz Menu_HandleKey_290
	test edx, edx
	jz Menu_HandleKey_300
	test byte [edx+0x4f], 0x1
	jnz Menu_HandleKey_310
Menu_HandleKey_300:
	mov edx, [ebp+0x8]
	lea ebx, [edx+edi*4+0xa34]
	xor esi, esi
	add edi, 0x1
	mov eax, edx
	jmp Menu_HandleKey_320
Menu_HandleKey_330:
	mov eax, [ebp+0x8]
Menu_HandleKey_320:
	mov edx, [ebx]
	call Menu_HandleMouseMove
	test eax, eax
	jnz Menu_HandleKey_90
	mov eax, [ebx]
	mov eax, [eax+0xa0]
	test eax, eax
	jnz Menu_HandleKey_90
	add esi, 0x1
	sub ebx, 0x4
	cmp esi, edi
	jnz Menu_HandleKey_330
	jmp Menu_HandleKey_90
Menu_HandleKey_50:
	test dword [ebp+0x10], 0x400
	jnz Menu_HandleKey_340
	mov ecx, [ebp+0xc]
	mov esi, [ecx+0xdc]
	test esi, esi
	jz Menu_HandleKey_350
	mov ebx, [ebp+0x10]
	mov [esp+0x4], ebx
	mov edi, [ebp+0x8]
	mov eax, [edi]
	mov [esp], eax
	call Key_GetBinding
	mov ebx, eax
	test eax, eax
	jz Menu_HandleKey_340
	mov edx, [ebp+0xc]
	mov eax, [edx+0xdc]
	mov [esp+0x4], eax
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jz Menu_HandleKey_360
Menu_HandleKey_340:
	mov ecx, [ebp+0xc]
Menu_HandleKey_350:
	test byte [ecx+0x4f], 0x1
	jz Menu_HandleKey_370
	mov edx, ecx
	mov ecx, [edx+0xa4]
	test ecx, ecx
	jle Menu_HandleKey_380
Menu_HandleKey_60:
	xor esi, esi
	mov dword [ebp-0x474], 0x0
Menu_HandleKey_400:
	lea ebx, [esi*4]
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0x118]
	mov eax, [eax+ebx]
	mov [esp+0x4], eax
	mov edi, [ebp+0x8]
	mov eax, [edi]
	mov [esp], eax
	call Item_IsVisible
	test eax, eax
	jz Menu_HandleKey_390
	mov edx, [ebp+0xc]
	mov eax, [edx+0x118]
	mov edx, [eax+ebx]
	mov eax, [edi]
	mov eax, [edx+eax*4+0x50]
	test al, 0x4
	jz Menu_HandleKey_390
	test al, 0x2
	cmovz edx, [ebp-0x474]
	mov [ebp-0x474], edx
Menu_HandleKey_390:
	add esi, 0x1
	mov ecx, [ebp+0xc]
	cmp [ecx+0xa4], esi
	jg Menu_HandleKey_400
	mov eax, [ebp+0x10]
	sub eax, 0xcd
	cmp eax, 0x1
	ja Menu_HandleKey_410
Menu_HandleKey_70:
	mov edx, [ebp-0x474]
	test edx, edx
	jz Menu_HandleKey_40
	mov ebx, [ebp-0x474]
	cmp dword [ebx+0xb4], 0x6
	jnz Menu_HandleKey_40
	jmp Menu_HandleKey_420
Menu_HandleKey_80:
	mov eax, [ebp+0x14]
	test eax, eax
	jz Menu_HandleKey_40
	mov eax, [ebp+0x10]
	sub eax, 0x1
	cmp eax, 0xfe
	ja Menu_HandleKey_430
	mov edx, [ebp+0xc]
	mov eax, [edx+0xd0]
	test eax, eax
	jz Menu_HandleKey_440
	mov edi, [ebp+0x10]
	cmp edi, [eax]
	jz Menu_HandleKey_450
Menu_HandleKey_470:
	mov eax, [eax+0x8]
	test eax, eax
	jz Menu_HandleKey_460
	mov ebx, [ebp+0x10]
	cmp ebx, [eax]
	jnz Menu_HandleKey_470
Menu_HandleKey_450:
	mov edi, [ebp+0xc]
	mov [ebp-0x330], edi
	mov ecx, [eax+0x4]
	lea edx, [ebp-0x418]
	mov eax, [ebp+0x8]
	call Item_RunScript
	jmp Menu_HandleKey_40
Menu_HandleKey_370:
	mov ebx, [ecx+0xa0]
	test ebx, ebx
	jnz Menu_HandleKey_480
	mov ebx, [ebp+0x8]
	mov edi, [ebx+0x14]
	mov edx, [ebx+0x10]
	mov esi, ecx
	add esi, 0x4
	mov ebx, [ebx]
	mov eax, [ecx+0x4]
	mov [ebp-0x418], eax
	mov eax, [esi+0x4]
	mov [ebp-0x414], eax
	mov eax, [esi+0x8]
	mov [ebp-0x410], eax
	mov eax, [esi+0xc]
	mov [ebp-0x40c], eax
	mov eax, ebx
	shl eax, 0x6
	lea ebx, [eax+ebx*4]
	add ebx, scrPlaceView
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], edx
	mov [esp], ebx
	call ScrPlace_ApplyX
	fstp dword [ebp-0x468]
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], edi
	mov [esp], ebx
	call ScrPlace_ApplyY
	fstp dword [ebp-0x464]
	mov eax, [esi+0x14]
	mov [esp+0x18], eax
	mov eax, [esi+0x10]
	mov [esp+0x14], eax
	lea edx, [ebp-0x40c]
	mov [esp+0x10], edx
	lea ecx, [ebp-0x410]
	mov [esp+0xc], ecx
	lea edi, [ebp-0x414]
	mov [esp+0x8], edi
	lea eax, [ebp-0x418]
	mov [esp+0x4], eax
	mov [esp], ebx
	call ScrPlace_ApplyRect
	movss xmm0, dword [ebp-0x418]
	movss xmm1, dword [ebp-0x468]
	ucomiss xmm1, xmm0
	jb Menu_HandleKey_490
	addss xmm0, [ebp-0x410]
	ucomiss xmm0, xmm1
	jb Menu_HandleKey_490
	movss xmm0, dword [ebp-0x414]
	movss xmm1, dword [ebp-0x464]
	ucomiss xmm1, xmm0
	jb Menu_HandleKey_490
	addss xmm0, [ebp-0x40c]
	ucomiss xmm0, xmm1
	jae Menu_HandleKey_480
Menu_HandleKey_490:
	mov ecx, [_ZZ14Menu_HandleKeyP9UiContextP9menuDef_tiiE11inHandleKey]
	test ecx, ecx
	jnz Menu_HandleKey_480
	mov eax, [ebp+0x10]
	sub eax, 0xc8
	cmp eax, 0x2
	ja Menu_HandleKey_480
	mov dword [_ZZ14Menu_HandleKeyP9UiContextP9menuDef_tiiE11inHandleKey], 0x1
	mov eax, [ebp+0xc]
	test byte [eax+0x4f], 0x2
	jz Menu_HandleKey_500
	mov edx, [ebp+0x8]
	mov edx, [edx]
	mov [ebp-0x47c], edx
	test byte [eax+edx*4+0x50], 0x4
	jz Menu_HandleKey_510
	mov edx, [eax+0xc8]
	test edx, edx
	jz Menu_HandleKey_520
	mov [ebp-0x330], eax
	mov ecx, [eax+0xc8]
	lea edx, [ebp-0x418]
	mov eax, [ebp+0x8]
	call Item_RunScript
	mov ecx, [ebp+0x8]
	mov ecx, [ecx]
	mov [ebp-0x47c], ecx
	mov edi, ecx
Menu_HandleKey_1070:
	mov dword [esp+0x8], 0x6
	mov ebx, [ebp+0xc]
	mov [esp+0x4], ebx
	mov [esp], edi
	call Window_RemoveDynamicFlags
Menu_HandleKey_500:
	mov eax, [ebp+0x8]
	mov edx, [eax+0xa74]
	sub edx, 0x1
	mov [ebp-0x460], edx
	js Menu_HandleKey_530
	lea ecx, [eax+edx*4+0xa34]
	mov [ebp-0x420], ecx
	mov [ebp-0x41c], edx
	mov ebx, [eax]
	mov [ebp-0x47c], ebx
	mov eax, ecx
	jmp Menu_HandleKey_540
Menu_HandleKey_560:
	sub dword [ebp-0x41c], 0x1
	sub dword [ebp-0x420], 0x4
	cmp dword [ebp-0x41c], 0xffffffff
	jz Menu_HandleKey_550
	mov eax, [ebp-0x420]
Menu_HandleKey_540:
	mov edi, [ebp+0x8]
	movss xmm0, dword [edi+0x14]
	movss [ebp-0x444], xmm0
	movss xmm1, dword [edi+0x10]
	movss [ebp-0x440], xmm1
	mov esi, [eax]
	test esi, esi
	jz Menu_HandleKey_560
	mov edx, [ebp-0x47c]
	test dword [esi+edx*4+0x50], 0x4004
	jz Menu_HandleKey_560
	lea ebx, [esi+0x4]
	mov eax, [esi+0x4]
	mov [ebp-0x418], eax
	mov eax, [ebx+0x4]
	mov [ebp-0x414], eax
	mov eax, [ebx+0x8]
	mov [ebp-0x410], eax
	mov eax, [ebx+0xc]
	mov [ebp-0x40c], eax
	mov eax, edx
	shl eax, 0x6
	lea eax, [eax+edx*4]
	mov ecx, scrPlaceView
	add eax, ecx
	mov [ebp-0x45c], eax
	mov dword [esp+0x8], 0x4
	movss [esp+0x4], xmm1
	mov [esp], eax
	call ScrPlace_ApplyX
	fstp dword [ebp-0x458]
	mov dword [esp+0x8], 0x4
	movss xmm0, dword [ebp-0x444]
	movss [esp+0x4], xmm0
	mov eax, [ebp-0x45c]
	mov [esp], eax
	call ScrPlace_ApplyY
	fstp dword [ebp-0x454]
	mov eax, [ebx+0x14]
	mov [esp+0x18], eax
	mov eax, [ebx+0x10]
	mov [esp+0x14], eax
	lea edx, [ebp-0x40c]
	mov [esp+0x10], edx
	lea ecx, [ebp-0x410]
	mov [esp+0xc], ecx
	lea ebx, [ebp-0x414]
	mov [esp+0x8], ebx
	lea edi, [ebp-0x418]
	mov [esp+0x4], edi
	mov eax, [ebp-0x45c]
	mov [esp], eax
	call ScrPlace_ApplyRect
	movss xmm0, dword [ebp-0x418]
	movss xmm1, dword [ebp-0x458]
	ucomiss xmm1, xmm0
	jb Menu_HandleKey_570
	addss xmm0, [ebp-0x410]
	ucomiss xmm0, xmm1
	jb Menu_HandleKey_580
	movss xmm0, dword [ebp-0x414]
	movss xmm1, dword [ebp-0x454]
	ucomiss xmm1, xmm0
	jb Menu_HandleKey_590
	addss xmm0, [ebp-0x40c]
	ucomiss xmm0, xmm1
	jae Menu_HandleKey_600
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov [ebp-0x47c], eax
	jmp Menu_HandleKey_560
Menu_HandleKey_20:
	mov eax, [ebp+0x14]
	mov [esp+0xc], eax
	mov edx, [ebp+0x10]
	mov [esp+0x8], edx
	mov eax, [g_bindItem]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call Item_Bind_HandleKey
	add esp, 0x49c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Menu_HandleKey_430:
	cmp dword [ebp+0x10], 0xb1
	jz Menu_HandleKey_610
	jg Menu_HandleKey_620
	cmp dword [ebp+0x10], 0x9a
	jz Menu_HandleKey_630
	jg Menu_HandleKey_640
	cmp dword [ebp+0x10], 0xd
	jz Menu_HandleKey_650
	cmp dword [ebp+0x10], 0x1b
	jz Menu_HandleKey_660
	cmp dword [ebp+0x10], 0x9
	jnz Menu_HandleKey_40
Menu_HandleKey_790:
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	call Menu_SetNextCursorItem
	jmp Menu_HandleKey_40
Menu_HandleKey_1250:
	call Com_GetDecimalDelimiter
	movsx eax, al
	cmp edi, eax
	jz Menu_HandleKey_670
Menu_HandleKey_100:
	mov dword [g_editingField], 0x0
	mov dword [g_editItem], 0x0
	jmp Menu_HandleKey_40
Menu_HandleKey_620:
	cmp dword [ebp+0x10], 0xc9
	jg Menu_HandleKey_680
	cmp dword [ebp+0x10], 0xc8
	jge Menu_HandleKey_690
	cmp dword [ebp+0x10], 0xb2
	jz Menu_HandleKey_700
	cmp dword [ebp+0x10], 0xbf
	jnz Menu_HandleKey_40
Menu_HandleKey_650:
	mov ebx, [ebp-0x474]
	test ebx, ebx
	jz Menu_HandleKey_40
	mov edi, [ebp-0x474]
	cmp dword [edi+0xb4], 0x12
	ja Menu_HandleKey_710
	mov ecx, [edi+0xb4]
	mov eax, 0x1
	shl eax, cl
	test eax, 0x70210
	jz Menu_HandleKey_720
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov dword [edi+eax*4+0x128], 0x0
	mov dword [g_editingField], 0x1
	mov [g_editItem], edi
	mov dword [esp+0x4], 0x1
	mov eax, [edx]
	mov [esp], eax
	call Key_SetOverstrikeMode
	jmp Menu_HandleKey_40
Menu_HandleKey_130:
	cmp dword [ebp+0x10], 0xa2
	jz Menu_HandleKey_730
	cmp dword [ebp+0x10], 0x9d
	jz Menu_HandleKey_740
	cmp dword [ebp+0x10], 0x9c
	jz Menu_HandleKey_750
	cmp dword [ebp+0x10], 0xa5
	jz Menu_HandleKey_760
	cmp dword [ebp+0x10], 0xa6
	jz Menu_HandleKey_770
	cmp dword [ebp+0x10], 0xa1
	jz Menu_HandleKey_780
	mov edi, [ebp+0x10]
	jmp Menu_HandleKey_240
Menu_HandleKey_680:
	cmp dword [ebp+0x10], 0xcd
	jz Menu_HandleKey_790
	cmp dword [ebp+0x10], 0xce
	jz Menu_HandleKey_630
	cmp dword [ebp+0x10], 0xca
	jnz Menu_HandleKey_40
	jmp Menu_HandleKey_650
Menu_HandleKey_360:
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	mov [esp], eax
	call CL_ControllerIndexFromClientNum
	mov [esp+0x8], ebx
	mov [esp+0x4], eax
	mov ebx, [ebp+0x8]
	mov eax, [ebx]
	mov [esp], eax
	call Cbuf_ExecuteBuffer
	jmp Menu_HandleKey_40
Menu_HandleKey_630:
	mov edx, [ebp+0xc]
	mov eax, [ebp+0x8]
	call Menu_SetPrevCursorItem
	jmp Menu_HandleKey_40
Menu_HandleKey_290:
	add ebx, 0x1
	sub ecx, 0x4
	lea eax, [edi+0x1]
	cmp eax, ebx
	jnz Menu_HandleKey_800
	jmp Menu_HandleKey_300
Menu_HandleKey_610:
	mov dword [esp], _cstring_developer
	call Cvar_VariableIntegerValue
	test eax, eax
	jz Menu_HandleKey_40
	xor dword [g_debugMode], 0x1
	jmp Menu_HandleKey_40
Menu_HandleKey_460:
	mov ecx, [ebp+0xc]
Menu_HandleKey_880:
	mov eax, [ecx+0xa4]
	test eax, eax
	jle Menu_HandleKey_430
	xor esi, esi
	mov edx, [ebp+0xc]
Menu_HandleKey_870:
	mov eax, [edx+0x118]
	mov ebx, [eax+esi*4]
	mov ecx, [ebp+0x8]
	mov edx, [ecx]
	mov eax, [ebx+edx*4+0x50]
	test al, 0x4
	jz Menu_HandleKey_810
	test al, 0x2
	jnz Menu_HandleKey_820
	test byte [ebx+0x4e], 0x10
	jz Menu_HandleKey_810
Menu_HandleKey_820:
	mov [esp+0x4], ebx
	mov [esp], edx
	call Item_IsVisible
	test eax, eax
	jz Menu_HandleKey_810
	test byte [ebx+0x11c], 0x3
	jnz Menu_HandleKey_830
Menu_HandleKey_860:
	mov eax, [ebx+0x114]
	test eax, eax
	jz Menu_HandleKey_810
	mov ebx, [ebp+0x10]
	cmp ebx, [eax]
	jz Menu_HandleKey_840
Menu_HandleKey_850:
	mov eax, [eax+0x8]
	test eax, eax
	jz Menu_HandleKey_810
	mov edi, [ebp+0x10]
	cmp edi, [eax]
	jnz Menu_HandleKey_850
Menu_HandleKey_840:
	mov edx, [ebp+0xc]
	mov [ebp-0x330], edx
	mov ecx, [eax+0x4]
	lea edx, [ebp-0x418]
	mov eax, [ebp+0x8]
	call Item_RunScript
	jmp Menu_HandleKey_40
Menu_HandleKey_830:
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	call Item_EnableShowViaDvar
	test eax, eax
	jnz Menu_HandleKey_860
Menu_HandleKey_810:
	add esi, 0x1
	mov ecx, [ebp+0xc]
	cmp [ecx+0xa4], esi
	jle Menu_HandleKey_430
	mov edx, ecx
	jmp Menu_HandleKey_870
Menu_HandleKey_440:
	mov ecx, edx
	jmp Menu_HandleKey_880
Menu_HandleKey_640:
	cmp dword [ebp+0x10], 0x9c
	jz Menu_HandleKey_630
	jl Menu_HandleKey_790
	cmp dword [ebp+0x10], 0x9d
	jnz Menu_HandleKey_40
	jmp Menu_HandleKey_790
Menu_HandleKey_690:
	mov edi, [ebp-0x474]
	test edi, edi
	jz Menu_HandleKey_40
	mov eax, [ebp-0x474]
	mov esi, [eax+0xb4]
	test esi, esi
	jnz Menu_HandleKey_890
	mov edx, [ebp+0x8]
	movss xmm0, dword [edx+0x14]
	movss [ebp-0x434], xmm0
	mov esi, [edx+0x10]
	mov ebx, [edx]
	mov edi, _ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect
	cld
	mov ecx, 0x6
	xor edx, edx
	mov eax, edx
	rep stosd
	lea eax, [ebx+ebx*2]
	lea eax, [eax*8+0x90]
	mov ecx, [ebp-0x474]
	mov edx, [ecx+eax+0xc]
	mov [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect], edx
	mov edx, [ecx+eax+0x10]
	mov [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect+0x4], edx
	mov edx, [ecx+eax+0x14]
	mov [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect+0x8], edx
	mov edx, [ecx+eax+0x18]
	mov [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect+0xc], edx
	mov edx, [ecx+eax+0x1c]
	mov [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect+0x10], edx
	mov eax, [ecx+eax+0x20]
	mov [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect+0x14], eax
	pxor xmm0, xmm0
	ucomiss xmm0, [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect+0x8]
	jp Menu_HandleKey_900
	jz Menu_HandleKey_910
Menu_HandleKey_900:
	movss xmm0, dword [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect+0x4]
	subss xmm0, [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect+0xc]
	movss [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect+0x4], xmm0
Menu_HandleKey_1040:
	mov edi, [ebp+0x8]
	mov ebx, [edi]
	mov eax, [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect]
	mov [ebp-0x418], eax
	movss [ebp-0x414], xmm0
	mov eax, [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect+0x8]
	mov [ebp-0x410], eax
	mov eax, [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect+0xc]
	mov [ebp-0x40c], eax
	mov eax, ebx
	shl eax, 0x6
	lea ebx, [eax+ebx*4]
	add ebx, scrPlaceView
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], esi
	mov [esp], ebx
	call ScrPlace_ApplyX
	fstp dword [ebp-0x430]
	mov dword [esp+0x8], 0x4
	movss xmm0, dword [ebp-0x434]
	movss [esp+0x4], xmm0
	mov [esp], ebx
	call ScrPlace_ApplyY
	fstp dword [ebp-0x42c]
	mov eax, [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect+0x14]
	mov [esp+0x18], eax
	mov eax, [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect+0x10]
	mov [esp+0x14], eax
	lea edx, [ebp-0x418]
	lea eax, [ebp-0x40c]
	mov [esp+0x10], eax
	lea eax, [ebp-0x410]
	mov [esp+0xc], eax
	lea eax, [ebp-0x414]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ebx
	call ScrPlace_ApplyRect
	movss xmm0, dword [ebp-0x418]
	movss xmm1, dword [ebp-0x430]
	ucomiss xmm1, xmm0
	jb Menu_HandleKey_40
	addss xmm0, [ebp-0x410]
	ucomiss xmm0, xmm1
	jb Menu_HandleKey_40
	movss xmm0, dword [ebp-0x414]
	movss xmm1, dword [ebp-0x42c]
	ucomiss xmm1, xmm0
	jb Menu_HandleKey_40
	addss xmm0, [ebp-0x40c]
	ucomiss xmm0, xmm1
	jb Menu_HandleKey_40
	mov eax, [ebp-0x474]
	mov ecx, [eax+0xfc]
	mov edx, eax
	mov eax, edi
	call Item_RunScript
	jmp Menu_HandleKey_40
Menu_HandleKey_530:
	mov ebx, [eax]
	mov [ebp-0x47c], ebx
Menu_HandleKey_550:
	mov edi, [ebp+0x8]
	mov esi, [edi+0xa30]
	test esi, esi
	jle Menu_HandleKey_920
	mov edx, edi
	xor ecx, ecx
	xor ebx, ebx
	mov edi, [ebp-0x47c]
Menu_HandleKey_930:
	mov eax, [edx+0x30]
	mov eax, [eax+edi*4+0x50]
	and eax, 0x4004
	cmp eax, 0x1
	sbb ebx, 0xffffffff
	add ecx, 0x1
	add edx, 0x4
	cmp esi, ecx
	jnz Menu_HandleKey_930
	test ebx, ebx
	jz Menu_HandleKey_920
Menu_HandleKey_960:
	mov dword [_ZZ14Menu_HandleKeyP9UiContextP9menuDef_tiiE11inHandleKey], 0x0
	jmp Menu_HandleKey_40
Menu_HandleKey_570:
	mov edx, [ebp+0x8]
	mov edx, [edx]
	mov [ebp-0x47c], edx
	jmp Menu_HandleKey_560
Menu_HandleKey_730:
	mov edi, [ebp+0x8]
	mov eax, [edi]
	mov edx, [esi+eax*4+0x128]
	cmp ebx, edx
	jle Menu_HandleKey_160
	lea eax, [ebp-0x418]
	add eax, edx
	sub ebx, edx
	mov [esp+0x8], ebx
	lea edx, [eax+0x1]
	mov [esp+0x4], edx
	mov [esp], eax
	call memmove
	lea eax, [ebp-0x418]
	mov [esp+0x4], eax
	mov eax, [esi+0x10c]
	mov [esp], eax
	call Cvar_SetFromStringByName
	jmp Menu_HandleKey_160
Menu_HandleKey_140:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov edx, [esi+eax*4+0x128]
	test edx, edx
	jle Menu_HandleKey_940
	sub ebx, edx
	lea eax, [ebx+0x1]
	mov [esp+0x8], eax
	lea eax, [ebp-0x418]
	add eax, edx
	mov [esp+0x4], eax
	lea eax, [edx+ebp-0x419]
	mov [esp], eax
	call memmove
Menu_HandleKey_940:
	lea ecx, [ebp-0x418]
	mov [esp+0x4], ecx
	mov eax, [esi+0x10c]
	mov [esp], eax
	call Cvar_SetFromStringByName
	mov eax, [esi+0x10c]
	mov [esp], eax
	call Cvar_GetVariantString
	mov dword [esp+0x8], 0x400
	mov [esp+0x4], eax
	lea ebx, [ebp-0x418]
	mov [esp], ebx
	call Q_strncpyz
	mov edi, [ebp+0x8]
	mov ebx, [edi]
	mov dword [esp+0xc], 0xffffffff
	lea eax, [ebp-0x418]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov [esp], ebx
	call Item_GetCursorPosOffset
	mov [esi+ebx*4+0x128], eax
	mov edx, [ebp+0x8]
	mov edi, [edx]
	mov [esp], esi
	call Item_GetEditFieldDef
	mov ebx, eax
	mov eax, [esi+edi*4+0x128]
	cmp eax, [ebx+0x1c]
	jl Menu_HandleKey_950
	mov eax, [ebx+0x18]
	test eax, eax
	jz Menu_HandleKey_160
	neg eax
	mov [esp+0xc], eax
	lea ecx, [ebp-0x418]
	mov [esp+0x8], ecx
Menu_HandleKey_1010:
	mov [esp+0x4], esi
	mov [esp], edi
	call Item_GetCursorPosOffset
	cmp eax, [ebx+0x1c]
	jle Menu_HandleKey_160
Menu_HandleKey_950:
	mov [ebx+0x1c], eax
	jmp Menu_HandleKey_160
Menu_HandleKey_920:
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x47c]
	mov [esp], eax
	call UI_Pause
	jmp Menu_HandleKey_960
Menu_HandleKey_890:
	mov esi, eax
	mov edx, [ebp+0x8]
	mov edi, [edx+0x14]
	mov ecx, edx
	mov edx, [edx+0x10]
	add esi, 0x4
	mov ebx, [ecx]
	mov ecx, [ebp-0x474]
	mov eax, [ecx+0x4]
	mov [ebp-0x418], eax
	mov eax, [esi+0x4]
	mov [ebp-0x414], eax
	mov eax, [esi+0x8]
	mov [ebp-0x410], eax
	mov eax, [esi+0xc]
	mov [ebp-0x40c], eax
	mov eax, ebx
	shl eax, 0x6
	lea ebx, [eax+ebx*4]
	add ebx, scrPlaceView
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], edx
	mov [esp], ebx
	call ScrPlace_ApplyX
	fstp dword [ebp-0x428]
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], edi
	mov [esp], ebx
	call ScrPlace_ApplyY
	fstp dword [ebp-0x424]
	mov eax, [esi+0x14]
	mov [esp+0x18], eax
	mov eax, [esi+0x10]
	mov [esp+0x14], eax
	lea edx, [ebp-0x418]
	lea eax, [ebp-0x40c]
	mov [esp+0x10], eax
	lea eax, [ebp-0x410]
	mov [esp+0xc], eax
	lea eax, [ebp-0x414]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ebx
	call ScrPlace_ApplyRect
	movss xmm0, dword [ebp-0x418]
	movss xmm1, dword [ebp-0x428]
	ucomiss xmm1, xmm0
	jb Menu_HandleKey_40
	addss xmm0, [ebp-0x410]
	ucomiss xmm0, xmm1
	jb Menu_HandleKey_40
	movss xmm0, dword [ebp-0x414]
	movss xmm1, dword [ebp-0x424]
	ucomiss xmm1, xmm0
	jb Menu_HandleKey_40
	addss xmm0, [ebp-0x40c]
	ucomiss xmm0, xmm1
	jb Menu_HandleKey_40
	mov eax, [ebp-0x474]
	cmp dword [eax+0xb4], 0x12
	ja Menu_HandleKey_720
	mov ecx, [eax+0xb4]
	mov eax, 0x1
	shl eax, cl
	test eax, 0x70210
	jz Menu_HandleKey_720
	mov edx, [ebp-0x474]
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	call Item_TextField_BeginEdit
	jmp Menu_HandleKey_40
Menu_HandleKey_710:
	mov ebx, edi
Menu_HandleKey_1030:
	mov ecx, [ebx+0xfc]
	mov edx, ebx
	mov eax, [ebp+0x8]
	call Item_RunScript
	jmp Menu_HandleKey_40
Menu_HandleKey_280:
	mov ecx, [esi+0x100]
	test ecx, ecx
	jz Menu_HandleKey_970
	mov edx, esi
	mov eax, [ebp+0x8]
	call Item_RunScript
Menu_HandleKey_970:
	cmp edi, 0xd
	jz Menu_HandleKey_100
	cmp edi, 0xbf
	jnz Menu_HandleKey_980
	jmp Menu_HandleKey_100
Menu_HandleKey_580:
	mov ecx, [ebp+0x8]
	mov ecx, [ecx]
	mov [ebp-0x47c], ecx
	jmp Menu_HandleKey_560
Menu_HandleKey_760:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov dword [esi+eax*4+0x128], 0x0
	mov ecx, [ebp-0x470]
	mov dword [ecx+0x1c], 0x0
	jmp Menu_HandleKey_160
Menu_HandleKey_260:
	mov edx, [esi+0xe8]
	mov eax, [ebp+0x8]
	call Menu_SetNextCursorItem
	mov edx, eax
	test eax, eax
	jz Menu_HandleKey_990
	cmp dword [eax+0xb4], 0x12
	ja Menu_HandleKey_990
	mov ecx, [eax+0xb4]
	mov eax, 0x1
	shl eax, cl
	test eax, 0x70210
	jz Menu_HandleKey_990
	mov [g_editItem], edx
	jmp Menu_HandleKey_990
Menu_HandleKey_660:
	mov eax, [g_waitingForKey]
	test eax, eax
	jnz Menu_HandleKey_40
	mov edi, [ebp+0xc]
	mov eax, [edi+0xcc]
	test eax, eax
	jz Menu_HandleKey_40
	mov [ebp-0x330], edi
	mov ecx, [edi+0xcc]
	lea edx, [ebp-0x418]
	mov eax, [ebp+0x8]
	call Item_RunScript
	jmp Menu_HandleKey_40
Menu_HandleKey_700:
	mov dword [esp], _cstring_developer
	call Cvar_VariableIntegerValue
	test eax, eax
	jz Menu_HandleKey_40
	mov dword [esp+0x4], _cstring_screenshot
	mov ebx, [ebp+0x8]
	mov eax, [ebx]
	mov [esp], eax
	call Cbuf_AddText
	jmp Menu_HandleKey_40
Menu_HandleKey_150:
	mov [esp], edi
	call I_isforfilename
	test al, al
	jz Menu_HandleKey_160
	jmp Menu_HandleKey_1000
Menu_HandleKey_740:
	mov edx, [ebp+0x8]
	mov ebx, [edx]
	mov dword [esp+0xc], 0x1
Menu_HandleKey_1020:
	lea ecx, [ebp-0x418]
	mov [esp+0x8], ecx
	mov [esp+0x4], esi
	mov [esp], ebx
	call Item_GetCursorPosOffset
	mov [esi+ebx*4+0x128], eax
	mov ebx, [ebp+0x8]
	mov edi, [ebx]
	mov [esp], esi
	call Item_GetEditFieldDef
	mov ebx, eax
	mov eax, [esi+edi*4+0x128]
	cmp eax, [ebx+0x1c]
	jl Menu_HandleKey_950
	mov eax, [ebx+0x18]
	test eax, eax
	jz Menu_HandleKey_160
	neg eax
	mov [esp+0xc], eax
	lea eax, [ebp-0x418]
	mov [esp+0x8], eax
	jmp Menu_HandleKey_1010
Menu_HandleKey_750:
	mov edx, [ebp+0x8]
	mov ebx, [edx]
	mov dword [esp+0xc], 0xffffffff
	jmp Menu_HandleKey_1020
Menu_HandleKey_720:
	mov ebx, [ebp-0x474]
	jmp Menu_HandleKey_1030
Menu_HandleKey_910:
	movss xmm0, dword [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect+0x4]
	jmp Menu_HandleKey_1040
Menu_HandleKey_200:
	mov ecx, [ebp-0x470]
	mov eax, [ecx+0x10]
	test eax, eax
	jz Menu_HandleKey_1050
	mov ebx, [ebp+0x8]
	mov ebx, [ebx]
	mov [ebp-0x47c], ebx
	cmp eax, [esi+ebx*4+0x128]
	jg Menu_HandleKey_1060
	mov eax, [ecx+0x14]
	test eax, eax
	jz Menu_HandleKey_160
	mov edx, [esi+0xe8]
	mov eax, [ebp+0x8]
	call Menu_SetNextCursorItem
	mov edx, eax
	test eax, eax
	jz Menu_HandleKey_160
Menu_HandleKey_1090:
	cmp dword [edx+0xb4], 0x12
	ja Menu_HandleKey_160
	mov ecx, [edx+0xb4]
	mov eax, 0x1
	shl eax, cl
	test eax, 0x70210
	jz Menu_HandleKey_160
	mov [g_editItem], edx
	jmp Menu_HandleKey_160
Menu_HandleKey_510:
	mov edi, edx
	jmp Menu_HandleKey_1070
Menu_HandleKey_590:
	mov ebx, [ebp+0x8]
	mov ebx, [ebx]
	mov [ebp-0x47c], ebx
	jmp Menu_HandleKey_560
Menu_HandleKey_230:
	neg eax
	mov [esp+0xc], eax
	lea eax, [ebp-0x418]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov edx, [ebp-0x46c]
	mov [esp], edx
	call Item_GetCursorPosOffset
	cmp eax, [ebx+0x1c]
	jle Menu_HandleKey_1080
Menu_HandleKey_220:
	mov [ebx+0x1c], eax
	jmp Menu_HandleKey_1080
Menu_HandleKey_270:
	mov edx, [esi+0xe8]
	mov eax, [ebp+0x8]
	call Menu_SetPrevCursorItem
	mov edx, eax
	test eax, eax
	jnz Menu_HandleKey_1090
	jmp Menu_HandleKey_160
Menu_HandleKey_770:
	mov edi, [ebp+0x8]
	mov eax, [edi]
	mov [esi+eax*4+0x128], ebx
	mov eax, [ebp+0x8]
	mov edi, [eax]
	mov [esp], esi
	call Item_GetEditFieldDef
	mov ebx, eax
	mov eax, [esi+edi*4+0x128]
	cmp eax, [ebx+0x1c]
	jl Menu_HandleKey_950
	mov eax, [ebx+0x18]
	test eax, eax
	jz Menu_HandleKey_160
	neg eax
	mov [esp+0xc], eax
	lea edx, [ebp-0x418]
	mov [esp+0x8], edx
	jmp Menu_HandleKey_1010
Menu_HandleKey_780:
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	mov [esp], eax
	call Key_GetOverstrikeMode
	test eax, eax
	setz al
	movzx eax, al
	mov [esp+0x4], eax
	mov ebx, [ebp+0x8]
	mov eax, [ebx]
	mov [esp], eax
	call Key_SetOverstrikeMode
	jmp Menu_HandleKey_160
Menu_HandleKey_1050:
	mov ebx, [ebp+0x8]
	mov ebx, [ebx]
	mov [ebp-0x47c], ebx
	mov edx, ebx
	jmp Menu_HandleKey_1100
Menu_HandleKey_600:
	mov ecx, [esi+0xa4]
	test ecx, ecx
	jle Menu_HandleKey_1110
	mov dword [ebp-0x450], 0x0
	mov edi, [ebp-0x450]
	jmp Menu_HandleKey_1120
Menu_HandleKey_1130:
	add dword [ebp-0x450], 0x1
	mov eax, [ebp-0x450]
	cmp eax, [esi+0xa4]
	jge Menu_HandleKey_570
	mov edi, eax
Menu_HandleKey_1120:
	shl edi, 0x2
	mov eax, [esi+0x118]
	mov eax, [edi+eax]
	mov edx, [ebp-0x47c]
	test dword [eax+edx*4+0x50], 0x4004
	jz Menu_HandleKey_1130
	mov ecx, [eax+0x4c]
	and ecx, 0x100000
	mov [ebp-0x478], ecx
	jnz Menu_HandleKey_1130
	lea ebx, [eax+0x4]
	mov eax, [eax+0x4]
	mov [ebp-0x418], eax
	mov eax, [ebx+0x4]
	mov [ebp-0x414], eax
	mov eax, [ebx+0x8]
	mov [ebp-0x410], eax
	mov eax, [ebx+0xc]
	mov [ebp-0x40c], eax
	mov dword [esp+0x8], 0x4
	movss xmm0, dword [ebp-0x440]
	movss [esp+0x4], xmm0
	mov eax, [ebp-0x45c]
	mov [esp], eax
	call ScrPlace_ApplyX
	fstp dword [ebp-0x44c]
	mov dword [esp+0x8], 0x4
	movss xmm0, dword [ebp-0x444]
	movss [esp+0x4], xmm0
	mov eax, [ebp-0x45c]
	mov [esp], eax
	call ScrPlace_ApplyY
	fstp dword [ebp-0x448]
	mov eax, [ebx+0x14]
	mov [esp+0x18], eax
	mov eax, [ebx+0x10]
	mov [esp+0x14], eax
	lea edx, [ebp-0x40c]
	mov [esp+0x10], edx
	lea ecx, [ebp-0x410]
	mov [esp+0xc], ecx
	lea ebx, [ebp-0x414]
	mov [esp+0x8], ebx
	lea eax, [ebp-0x418]
	mov [esp+0x4], eax
	mov edx, [ebp-0x45c]
	mov [esp], edx
	call ScrPlace_ApplyRect
	movss xmm0, dword [ebp-0x418]
	movss xmm1, dword [ebp-0x44c]
	ucomiss xmm1, xmm0
	jb Menu_HandleKey_1130
	addss xmm0, [ebp-0x410]
	ucomiss xmm0, xmm1
	jb Menu_HandleKey_1130
	movss xmm0, dword [ebp-0x414]
	movss xmm1, dword [ebp-0x448]
	ucomiss xmm1, xmm0
	jb Menu_HandleKey_1130
	addss xmm0, [ebp-0x40c]
	ucomiss xmm0, xmm1
	jb Menu_HandleKey_1130
	mov eax, [esi+0x118]
	mov ebx, [edi+eax]
	mov eax, [ebx+0xb4]
	test eax, eax
	jnz Menu_HandleKey_1140
	mov eax, [ebx+0xe0]
	test eax, eax
	jz Menu_HandleKey_1140
	mov edi, _ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect
	cld
	mov ecx, 0x6
	mov eax, [ebp-0x478]
	rep stosd
	mov edx, [ebp-0x47c]
	lea eax, [edx+edx*2]
	lea eax, [eax*8+0x90]
	mov edx, [ebx+eax+0xc]
	mov [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect], edx
	mov edx, [ebx+eax+0x10]
	mov [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect+0x4], edx
	mov edx, [ebx+eax+0x14]
	mov [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect+0x8], edx
	mov edx, [ebx+eax+0x18]
	mov [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect+0xc], edx
	mov edx, [ebx+eax+0x1c]
	mov [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect+0x10], edx
	mov eax, [ebx+eax+0x20]
	mov [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect+0x14], eax
	pxor xmm0, xmm0
	ucomiss xmm0, [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect+0x8]
	jp Menu_HandleKey_1150
	jz Menu_HandleKey_1160
Menu_HandleKey_1150:
	movss xmm0, dword [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect+0x4]
	subss xmm0, [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect+0xc]
	movss [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect+0x4], xmm0
Menu_HandleKey_1290:
	mov eax, [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect]
	mov [ebp-0x418], eax
	movss [ebp-0x414], xmm0
	mov eax, [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect+0x8]
	mov [ebp-0x410], eax
	mov eax, [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect+0xc]
	mov [ebp-0x40c], eax
	mov dword [esp+0x8], 0x4
	movss xmm0, dword [ebp-0x440]
	movss [esp+0x4], xmm0
	mov eax, [ebp-0x45c]
	mov [esp], eax
	call ScrPlace_ApplyX
	fstp dword [ebp-0x43c]
	mov dword [esp+0x8], 0x4
	movss xmm0, dword [ebp-0x444]
	movss [esp+0x4], xmm0
	mov eax, [ebp-0x45c]
	mov [esp], eax
	call ScrPlace_ApplyY
	fstp dword [ebp-0x438]
	mov eax, [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect+0x14]
	mov [esp+0x18], eax
	mov eax, [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect+0x10]
	mov [esp+0x14], eax
	lea edx, [ebp-0x40c]
	mov [esp+0x10], edx
	lea ecx, [ebp-0x410]
	mov [esp+0xc], ecx
	lea ebx, [ebp-0x414]
	mov [esp+0x8], ebx
	lea edi, [ebp-0x418]
	mov [esp+0x4], edi
	mov eax, [ebp-0x45c]
	mov [esp], eax
	call ScrPlace_ApplyRect
	movss xmm0, dword [ebp-0x418]
	movss xmm1, dword [ebp-0x43c]
	ucomiss xmm1, xmm0
	jb Menu_HandleKey_1130
	addss xmm0, [ebp-0x410]
	ucomiss xmm0, xmm1
	jb Menu_HandleKey_1130
	movss xmm0, dword [ebp-0x414]
	movss xmm1, dword [ebp-0x438]
	ucomiss xmm1, xmm0
	jb Menu_HandleKey_1130
	addss xmm0, [ebp-0x40c]
	ucomiss xmm0, xmm1
	jb Menu_HandleKey_1130
Menu_HandleKey_1140:
	mov eax, [ebp+0x8]
	mov edi, [eax+0xa74]
	mov eax, edi
	sub eax, 0x1
	js Menu_HandleKey_1170
	mov edx, [ebp+0x8]
	lea esi, [edx+eax*4+0xa34]
	xor ebx, ebx
Menu_HandleKey_1180:
	mov dword [esp+0x8], 0x2
	mov eax, [esi]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	mov [esp], eax
	call Window_RemoveDynamicFlags
	add ebx, 0x1
	sub esi, 0x4
	cmp edi, ebx
	jnz Menu_HandleKey_1180
Menu_HandleKey_1170:
	mov dword [esp+0x8], 0x6
	mov ebx, [ebp-0x41c]
	mov edi, [ebp+0x8]
	mov eax, [edi+ebx*4+0xa34]
	mov [esp+0x4], eax
	mov eax, [edi]
	mov [esp], eax
	call Window_AddDynamicFlags
	mov esi, [edi+0xa74]
	sub esi, 0x1
	js Menu_HandleKey_1190
	mov eax, [ebp+0x8]
	mov edi, [eax]
	lea ecx, [eax+esi*4+0xa34]
	xor ebx, ebx
Menu_HandleKey_1300:
	mov edx, [ecx]
	mov eax, [edx+edi*4+0x50]
	test al, 0x4
	jz Menu_HandleKey_1200
	test al, 0x2
	jz Menu_HandleKey_1200
	test edx, edx
	jz Menu_HandleKey_1210
	test byte [edx+0x4f], 0x1
	jnz Menu_HandleKey_1220
Menu_HandleKey_1210:
	mov edx, [ebp+0x8]
	lea ebx, [edx+esi*4+0xa34]
	xor edi, edi
	add esi, 0x1
Menu_HandleKey_1230:
	mov edx, [ebx]
	mov eax, [ebp+0x8]
	call Menu_HandleMouseMove
	test eax, eax
	jnz Menu_HandleKey_1190
	mov eax, [ebx]
	mov eax, [eax+0xa0]
	test eax, eax
	jnz Menu_HandleKey_1190
	add edi, 0x1
	sub ebx, 0x4
	cmp esi, edi
	jnz Menu_HandleKey_1230
Menu_HandleKey_1190:
	mov ecx, [ebp-0x41c]
	mov ebx, [ebp+0x8]
	mov edx, [ebx+ecx*4+0xa34]
	mov eax, ebx
	call Menu_HandleMouseMove
	mov edi, [ebp+0x14]
	mov [esp+0xc], edi
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov edx, [ebp-0x41c]
	mov eax, [ebx+edx*4+0xa34]
	mov [esp+0x4], eax
	mov [esp], ebx
	call Menu_HandleKey_1240
	mov ecx, [ebx]
	mov [ebp-0x47c], ecx
	jmp Menu_HandleKey_550
Menu_HandleKey_520:
	mov edi, [ebp-0x47c]
	jmp Menu_HandleKey_1070
Menu_HandleKey_180:
	mov [esp], edi
	call I_isdigit
	test al, al
	jz Menu_HandleKey_1250
Menu_HandleKey_670:
	call Com_GetDecimalDelimiter
	movsx eax, al
	cmp edi, eax
	mov eax, 0x2e
	cmovz edi, eax
	jmp Menu_HandleKey_1260
Menu_HandleKey_170:
	mov [esp], edi
	call I_isdigit
	test al, al
	jz Menu_HandleKey_100
	jmp Menu_HandleKey_1270
Menu_HandleKey_190:
	mov [esp], edi
	call toupper
	mov edi, eax
	jmp Menu_HandleKey_1280
Menu_HandleKey_1060:
	mov edx, ebx
	jmp Menu_HandleKey_1100
Menu_HandleKey_310:
	mov eax, [ebp+0x8]
	call Menu_HandleMouseMove
	jmp Menu_HandleKey_90
Menu_HandleKey_1110:
	mov edi, [ebp+0x8]
	mov edi, [edi]
	mov [ebp-0x47c], edi
	jmp Menu_HandleKey_560
Menu_HandleKey_250:
	mov edx, [esi+0xe8]
	mov eax, ebx
	call Menu_SetNextCursorItem
	mov edx, eax
	mov eax, [ebx]
	mov dword [edx+eax*4+0x128], 0x0
	test edx, edx
	jz Menu_HandleKey_240
	cmp dword [edx+0xb4], 0x12
	ja Menu_HandleKey_240
	mov ecx, [edx+0xb4]
	mov eax, 0x1
	shl eax, cl
	test eax, 0x70210
	jz Menu_HandleKey_240
	mov [g_editItem], edx
	jmp Menu_HandleKey_240
Menu_HandleKey_1160:
	movss xmm0, dword [_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect+0x4]
	jmp Menu_HandleKey_1290
Menu_HandleKey_1200:
	add ebx, 0x1
	sub ecx, 0x4
	lea eax, [esi+0x1]
	cmp eax, ebx
	jnz Menu_HandleKey_1300
	jmp Menu_HandleKey_1210
Menu_HandleKey_1220:
	mov eax, [ebp+0x8]
	call Menu_HandleMouseMove
	jmp Menu_HandleKey_1190
	nop


;Menu_IsVisible(UiContext*, menuDef_t*)
Menu_IsVisible:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov eax, [esi]
	test byte [ebx+eax*4+0x50], 0x4
	jz Menu_IsVisible_10
	mov eax, [ebx+0x44]
	test eax, eax
	jnz Menu_IsVisible_20
Menu_IsVisible_70:
	mov eax, [ebx+0x4c]
	test eax, 0x20000000
	jnz Menu_IsVisible_30
	test eax, 0x10000000
	jnz Menu_IsVisible_40
Menu_IsVisible_110:
	test eax, 0x40000000
	jnz Menu_IsVisible_50
Menu_IsVisible_130:
	mov eax, [ebx+0xd4]
	test eax, eax
	jnz Menu_IsVisible_60
Menu_IsVisible_80:
	mov eax, 0x1
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Menu_IsVisible_20:
	mov [esp], eax
	call UI_OwnerDrawVisible
	test eax, eax
	jnz Menu_IsVisible_70
Menu_IsVisible_10:
	xor eax, eax
Menu_IsVisible_90:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Menu_IsVisible_50:
	mov eax, clientUIActives
	test byte [eax+0x4], 0x10
	jnz Menu_IsVisible_10
	mov eax, [ebx+0xd4]
	test eax, eax
	jz Menu_IsVisible_80
Menu_IsVisible_60:
	lea eax, [ebx+0xd4]
	mov [esp+0x4], eax
	mov eax, [esi]
	mov [esp], eax
	call IsExpressionTrue
	test al, al
	jnz Menu_IsVisible_80
	mov eax, uiscript_debug
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz Menu_IsVisible_10
	mov eax, [ebx]
	test eax, eax
	mov edx, _cstring_unnamed
	cmovz eax, edx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_hiding_the_s_men
	mov dword [esp], 0xd
	call Com_Printf
	xor eax, eax
	jmp Menu_IsVisible_90
Menu_IsVisible_30:
	mov eax, [esi]
	mov [esp], eax
	call CL_IsCgameInitialized
	test eax, eax
	jnz Menu_IsVisible_100
	mov eax, [ebx+0x4c]
Menu_IsVisible_140:
	test eax, 0x10000000
	jz Menu_IsVisible_110
Menu_IsVisible_40:
	mov eax, [esi]
	mov [esp], eax
	call CL_IsCgameInitialized
	test eax, eax
	jnz Menu_IsVisible_120
	mov eax, [ebx+0x4c]
Menu_IsVisible_150:
	test eax, 0x40000000
	jz Menu_IsVisible_130
	jmp Menu_IsVisible_50
Menu_IsVisible_100:
	mov eax, [esi]
	mov [esp], eax
	call CG_ScopeIsOverlayed
	test al, al
	jnz Menu_IsVisible_10
	mov eax, [ebx+0x4c]
	jmp Menu_IsVisible_140
Menu_IsVisible_120:
	mov eax, [esi]
	mov [esp], eax
	call CG_Flashbanged
	test al, al
	jnz Menu_IsVisible_10
	mov eax, [ebx+0x4c]
	jmp Menu_IsVisible_150
	nop


;Menus_CloseAll(UiContext*)
Menus_CloseAll:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xc
	mov edi, [ebp+0x8]
	mov eax, [edi+0xa30]
	test eax, eax
	jg Menus_CloseAll_10
	add esp, 0xc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Menus_CloseAll_10:
	mov ebx, edi
	xor esi, esi
Menus_CloseAll_20:
	mov edx, [ebx+0x30]
	mov eax, edi
	call Menus_Close
	add esi, 0x1
	add ebx, 0x4
	cmp [edi+0xa30], esi
	jg Menus_CloseAll_20
	add esp, 0xc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;UI_AddMenuList(UiContext*, MenuList*)
UI_AddMenuList:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	mov edx, [ebp+0xc]
	test edx, edx
	jz UI_AddMenuList_10
	mov eax, [ebp+0xc]
	mov eax, [eax+0x4]
	test eax, eax
	jle UI_AddMenuList_10
	xor ebx, ebx
	jmp UI_AddMenuList_20
UI_AddMenuList_40:
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz UI_AddMenuList_30
UI_AddMenuList_50:
	mov eax, [edi+0xa30]
	mov [edi+eax*4+0x30], esi
	add eax, 0x1
	mov [edi+0xa30], eax
	add ebx, 0x1
	mov eax, [ebp+0xc]
	cmp [eax+0x4], ebx
	jle UI_AddMenuList_10
UI_AddMenuList_20:
	mov edx, [ebp+0xc]
	mov eax, [edx+0x8]
	mov esi, [eax+ebx*4]
	cmp dword [edi+0xa30], 0x27f
	jle UI_AddMenuList_40
	mov dword [esp+0x4], _cstring_ui_addmenu_exe_e
	mov dword [esp], 0x2
	call Com_Error
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz UI_AddMenuList_50
UI_AddMenuList_30:
	mov eax, [esi]
	mov [esp+0x4], eax
	mov dword [esp], 0x15
	call DB_FindXAssetHeader
	mov eax, [edi+0xa30]
	mov [edi+eax*4+0x30], esi
	add eax, 0x1
	mov [edi+0xa30], eax
	add ebx, 0x1
	mov eax, [ebp+0xc]
	cmp [eax+0x4], ebx
	jg UI_AddMenuList_20
UI_AddMenuList_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Menu_GetFocused(UiContext*)
Menu_GetFocused:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov eax, [ebp+0x8]
	mov edi, [eax+0xa74]
	sub edi, 0x1
	js Menu_GetFocused_10
	mov esi, [eax]
	lea ecx, [eax+edi*4+0xa34]
	xor ebx, ebx
Menu_GetFocused_30:
	mov eax, [ecx]
	mov edx, [eax+esi*4+0x50]
	test dl, 0x4
	jz Menu_GetFocused_20
	and dl, 0x2
	jz Menu_GetFocused_20
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Menu_GetFocused_20:
	add ebx, 0x1
	sub ecx, 0x4
	lea eax, [edi+0x1]
	cmp eax, ebx
	jnz Menu_GetFocused_30
Menu_GetFocused_10:
	xor eax, eax
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Menus_FindByName(UiContext const*, char const*)
Menus_FindByName:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	mov eax, [edi+0xa30]
	test eax, eax
	jg Menus_FindByName_10
Menus_FindByName_40:
	xor eax, eax
Menus_FindByName_50:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Menus_FindByName_10:
	mov ebx, edi
	xor esi, esi
Menus_FindByName_30:
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebx+0x30]
	mov eax, [eax]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz Menus_FindByName_20
	add esi, 0x1
	add ebx, 0x4
	cmp esi, [edi+0xa30]
	jl Menus_FindByName_30
	jmp Menus_FindByName_40
Menus_FindByName_20:
	mov eax, [edi+esi*4+0x30]
	jmp Menus_FindByName_50


;Menus_HideByName(UiContext const*, char const*)
Menus_HideByName:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	mov eax, [edi+0xa30]
	test eax, eax
	jg Menus_HideByName_10
Menus_HideByName_30:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Menus_HideByName_10:
	mov ebx, edi
	xor esi, esi
	jmp Menus_HideByName_20
Menus_HideByName_40:
	add esi, 0x1
	add ebx, 0x4
	cmp esi, [edi+0xa30]
	jge Menus_HideByName_30
Menus_HideByName_20:
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebx+0x30]
	mov eax, [eax]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz Menus_HideByName_40
	mov eax, [edi+esi*4+0x30]
	test eax, eax
	jz Menus_HideByName_30
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov eax, [edi]
	mov [esp], eax
	call Window_RemoveDynamicFlags
	jmp Menus_HideByName_30


;Menus_OpenByName(UiContext*, char const*)
Menus_OpenByName:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0x8]
	mov edx, [eax+0xa30]
	test edx, edx
	jle Menus_OpenByName_10
	mov esi, eax
	xor ebx, ebx
Menus_OpenByName_30:
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov eax, [esi+0x30]
	mov eax, [eax]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz Menus_OpenByName_20
	add ebx, 0x1
	add esi, 0x4
	mov edx, [ebp+0x8]
	cmp ebx, [edx+0xa30]
	jl Menus_OpenByName_30
Menus_OpenByName_10:
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_could_not_find_m
	mov dword [esp], 0xd
	call Com_PrintWarning
	xor eax, eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Menus_OpenByName_20:
	mov edi, [ebp+0x8]
	mov ebx, [edi+ebx*4+0x30]
	mov [ebp-0x1c], ebx
	test ebx, ebx
	jz Menus_OpenByName_10
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Menus_Open
	mov ebx, _cstring_options_graphics
	mov ecx, 0x11
	cld
	mov esi, [ebp+0xc]
	mov edi, ebx
	repe cmpsb
	mov edx, 0x0
	jz Menus_OpenByName_40
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
Menus_OpenByName_40:
	test edx, edx
	jnz Menus_OpenByName_50
	mov ebx, 0x1a4
Menus_OpenByName_70:
	mov edx, [ebp-0x1c]
	mov eax, [edx+0x118]
	mov eax, [eax+ebx]
	test eax, eax
	jz Menus_OpenByName_60
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov edi, [ebp+0x8]
	mov eax, [edi]
	mov [esp], eax
	call Window_RemoveDynamicFlags
Menus_OpenByName_60:
	add ebx, 0x4
	cmp ebx, 0x1bc
	jnz Menus_OpenByName_70
	call _ZN10MacDisplay15SupportsShadowsEv
	test al, al
	jnz Menus_OpenByName_80
Menus_OpenByName_100:
	mov edx, [ebp-0x1c]
	mov eax, [edx+0x118]
	mov eax, [eax+ebx]
	test eax, eax
	jz Menus_OpenByName_90
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov edi, [ebp+0x8]
	mov eax, [edi]
	mov [esp], eax
	call Window_RemoveDynamicFlags
Menus_OpenByName_90:
	add ebx, 0x4
	cmp ebx, 0x1d4
	jnz Menus_OpenByName_100
Menus_OpenByName_80:
	mov eax, 0x1
Menus_OpenByName_140:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Menus_OpenByName_50:
	mov ebx, _cstring_options_sound
	mov ecx, 0xe
	cld
	mov esi, [ebp+0xc]
	mov edi, ebx
	repe cmpsb
	mov edx, 0x0
	jz Menus_OpenByName_110
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
Menus_OpenByName_110:
	test edx, edx
	jnz Menus_OpenByName_80
	mov ebx, 0x12c
Menus_OpenByName_130:
	mov edx, [ebp-0x1c]
	mov eax, [edx+0x118]
	mov eax, [eax+ebx]
	test eax, eax
	jz Menus_OpenByName_120
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov edi, [ebp+0x8]
	mov eax, [edi]
	mov [esp], eax
	call Window_RemoveDynamicFlags
Menus_OpenByName_120:
	add ebx, 0x4
	cmp ebx, 0x174
	jnz Menus_OpenByName_130
	mov eax, 0x1
	jmp Menus_OpenByName_140


;Menus_ShowByName(UiContext const*, char const*)
Menus_ShowByName:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	mov eax, [edi+0xa30]
	test eax, eax
	jg Menus_ShowByName_10
Menus_ShowByName_30:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Menus_ShowByName_10:
	mov ebx, edi
	xor esi, esi
	jmp Menus_ShowByName_20
Menus_ShowByName_40:
	add esi, 0x1
	add ebx, 0x4
	cmp esi, [edi+0xa30]
	jge Menus_ShowByName_30
Menus_ShowByName_20:
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebx+0x30]
	mov eax, [eax]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz Menus_ShowByName_40
	mov eax, [edi+esi*4+0x30]
	test eax, eax
	jz Menus_ShowByName_30
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], eax
	mov eax, [edi]
	mov [esp], eax
	call Window_AddDynamicFlags
	jmp Menus_ShowByName_30


;UI_GetMenuScreen()
UI_GetMenuScreen:
	push ebp
	mov ebp, esp
	mov eax, 0x1
	pop ebp
	ret


;Display_MouseMove(UiContext*)
Display_MouseMove:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xc
	mov eax, [ebp+0x8]
	mov esi, [eax+0xa74]
	sub esi, 0x1
	js Display_MouseMove_10
	mov edi, [eax]
	lea ecx, [eax+esi*4+0xa34]
	xor ebx, ebx
Display_MouseMove_70:
	mov edx, [ecx]
	mov eax, [edx+edi*4+0x50]
	test al, 0x4
	jz Display_MouseMove_20
	test al, 0x2
	jz Display_MouseMove_20
	test edx, edx
	jz Display_MouseMove_30
	test byte [edx+0x4f], 0x1
	jnz Display_MouseMove_40
Display_MouseMove_30:
	mov eax, [ebp+0x8]
	lea ebx, [eax+esi*4+0xa34]
	xor edi, edi
	add esi, 0x1
	jmp Display_MouseMove_50
Display_MouseMove_60:
	mov eax, [ebp+0x8]
Display_MouseMove_50:
	mov edx, [ebx]
	call Menu_HandleMouseMove
	test eax, eax
	jnz Display_MouseMove_10
	mov eax, [ebx]
	mov eax, [eax+0xa0]
	test eax, eax
	jnz Display_MouseMove_10
	add edi, 0x1
	sub ebx, 0x4
	cmp edi, esi
	jnz Display_MouseMove_60
Display_MouseMove_10:
	mov eax, 0x1
	add esp, 0xc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Display_MouseMove_20:
	add ebx, 0x1
	sub ecx, 0x4
	lea eax, [esi+0x1]
	cmp ebx, eax
	jnz Display_MouseMove_70
	jmp Display_MouseMove_30
Display_MouseMove_40:
	mov eax, [ebp+0x8]
	call Menu_HandleMouseMove
	jmp Display_MouseMove_10
	nop


;Menus_CloseByName(UiContext*, char const*)
Menus_CloseByName:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov [ebp-0x1c], eax
	mov eax, [edi+0xa30]
	test eax, eax
	jg Menus_CloseByName_10
Menus_CloseByName_30:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Menus_CloseByName_10:
	mov ebx, edi
	xor esi, esi
	jmp Menus_CloseByName_20
Menus_CloseByName_40:
	add esi, 0x1
	add ebx, 0x4
	cmp esi, [edi+0xa30]
	jge Menus_CloseByName_30
Menus_CloseByName_20:
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov eax, [ebx+0x30]
	mov eax, [eax]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz Menus_CloseByName_40
	mov edx, [edi+esi*4+0x30]
	test edx, edx
	jz Menus_CloseByName_30
	mov eax, edi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Menus_Close
	add [eax], al


;UI_DrawWrappedText(ScreenPlacement const*, char const*, rectDef_s const*, Font_s*, float, float, float, float const*, int, int, rectDef_s*)
UI_DrawWrappedText:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [ebp+0x10]
	mov edi, [ebp+0x14]
	movss xmm0, dword [ebp+0x18]
	movss xmm1, dword [ebp+0x1c]
	movss xmm2, dword [ebp+0x20]
	mov esi, [ebp+0x24]
	mov dword [ebp+0x24], 0x0
	mov dword [ebp+0x20], 0x0
	mov dword [ebp+0x1c], 0x0
	mov ebx, [ebp+0x30]
	mov [ebp+0x18], ebx
	mov ebx, [ebp+0x2c]
	mov [ebp+0x14], ebx
	mov ebx, [ebp+0x28]
	mov [ebp+0x10], ebx
	mov [ebp+0xc], esi
	mov [ebp+0x8], edi
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _DrawWrappedText


;Item_Bind_HandleKey(UiContext*, itemDef_s*, int, int)
Item_Bind_HandleKey:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov edi, [ebp+0x10]
	mov ebx, [g_waitingForKey]
	test ebx, ebx
	jnz Item_Bind_HandleKey_10
	mov ecx, [ebp+0x14]
	test ecx, ecx
	jz Item_Bind_HandleKey_20
	cmp edi, 0xc8
	jz Item_Bind_HandleKey_30
Item_Bind_HandleKey_80:
	cmp edi, 0xd
	jnz Item_Bind_HandleKey_20
Item_Bind_HandleKey_90:
	mov dword [g_waitingForKey], 0x1
	mov eax, [ebp+0xc]
	mov [g_bindItem], eax
Item_Bind_HandleKey_40:
	mov eax, 0x1
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Item_Bind_HandleKey_10:
	mov esi, [g_bindItem]
	test esi, esi
	jz Item_Bind_HandleKey_20
	test edi, 0x400
	jnz Item_Bind_HandleKey_40
	cmp edi, 0x1b
	jz Item_Bind_HandleKey_50
	call _ZN11MacFeatures19GetKeyboardLanguageEv
	sub eax, 0x1
	jz Item_Bind_HandleKey_60
	cmp edi, 0x60
	jz Item_Bind_HandleKey_40
Item_Bind_HandleKey_60:
	lea eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov eax, [edx+0x10c]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	mov [esp], eax
	call Key_GetCommandAssignment
	cmp edi, 0x7f
	jz Item_Bind_HandleKey_70
	cmp eax, 0x2
	jz Item_Bind_HandleKey_70
Item_Bind_HandleKey_100:
	mov edx, [ebp+0xc]
	mov eax, [edx+0x10c]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	mov [esp], eax
	call Key_SetBinding
Item_Bind_HandleKey_50:
	mov dword [g_waitingForKey], 0x0
	jmp Item_Bind_HandleKey_40
Item_Bind_HandleKey_20:
	xor eax, eax
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Item_Bind_HandleKey_30:
	mov eax, [ebp+0x8]
	mov edx, [eax+0x18]
	test edx, edx
	jz Item_Bind_HandleKey_80
	movss xmm0, dword [eax+0x14]
	movss [ebp-0x44], xmm0
	mov edx, [eax+0x10]
	mov esi, [ebp+0xc]
	add esi, 0x4
	mov ebx, [eax]
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0x4]
	mov [ebp-0x38], eax
	mov eax, [esi+0x4]
	mov [ebp-0x34], eax
	mov eax, [esi+0x8]
	mov [ebp-0x30], eax
	mov eax, [esi+0xc]
	mov [ebp-0x2c], eax
	mov eax, ebx
	shl eax, 0x6
	lea ebx, [eax+ebx*4]
	add ebx, scrPlaceView
	mov dword [esp+0x8], 0x4
	mov [esp+0x4], edx
	mov [esp], ebx
	call ScrPlace_ApplyX
	fstp dword [ebp-0x40]
	mov dword [esp+0x8], 0x4
	movss xmm0, dword [ebp-0x44]
	movss [esp+0x4], xmm0
	mov [esp], ebx
	call ScrPlace_ApplyY
	fstp dword [ebp-0x3c]
	mov eax, [esi+0x14]
	mov [esp+0x18], eax
	mov eax, [esi+0x10]
	mov [esp+0x14], eax
	lea edx, [ebp-0x38]
	lea eax, [ebp-0x2c]
	mov [esp+0x10], eax
	lea eax, [ebp-0x30]
	mov [esp+0xc], eax
	lea eax, [ebp-0x34]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ebx
	call ScrPlace_ApplyRect
	movss xmm0, dword [ebp-0x38]
	movss xmm1, dword [ebp-0x40]
	ucomiss xmm1, xmm0
	jb Item_Bind_HandleKey_80
	addss xmm0, [ebp-0x30]
	ucomiss xmm0, xmm1
	jb Item_Bind_HandleKey_80
	movss xmm0, dword [ebp-0x34]
	movss xmm1, dword [ebp-0x3c]
	ucomiss xmm1, xmm0
	jb Item_Bind_HandleKey_80
	addss xmm0, [ebp-0x2c]
	ucomiss xmm0, xmm1
	jae Item_Bind_HandleKey_90
	jmp Item_Bind_HandleKey_80
Item_Bind_HandleKey_70:
	mov dword [esp+0x8], _cstring_null
	mov eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp], eax
	call Key_SetBinding
	mov dword [esp+0x8], _cstring_null
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	mov [esp], eax
	call Key_SetBinding
	cmp edi, 0x7f
	jnz Item_Bind_HandleKey_100
	jmp Item_Bind_HandleKey_50
	nop


;Menus_MenuIsInStack(UiContext*, menuDef_t*)
Menus_MenuIsInStack:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov esi, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov ebx, [esi+0xa74]
	sub ebx, 0x1
	js Menus_MenuIsInStack_10
	cmp edi, [esi+ebx*4+0xa34]
	jz Menus_MenuIsInStack_20
	lea ecx, [esi+ebx*4+0xa34]
	xor edx, edx
Menus_MenuIsInStack_30:
	cmp edx, ebx
	jz Menus_MenuIsInStack_10
	mov eax, [ecx-0x4]
	add edx, 0x1
	sub ecx, 0x4
	cmp edi, eax
	jnz Menus_MenuIsInStack_30
Menus_MenuIsInStack_20:
	mov eax, 0x1
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Menus_MenuIsInStack_10:
	xor eax, eax
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Item_ListBox_Viewmax(itemDef_s*)
Item_ListBox_Viewmax:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	lea esi, [ebx+0x4]
	mov [esp], ebx
	call Item_GetListBoxDef
	test byte [ebx+0x4e], 0x20
	jz Item_ListBox_Viewmax_10
	movss xmm2, dword [esi+0x8]
	subss xmm2, [_float_2_00000000]
	pxor xmm0, xmm0
	movaps xmm1, xmm0
	subss xmm1, xmm2
	movaps xmm3, xmm0
	cmpss xmm3, xmm1, 0x6
	andps xmm2, xmm3
	orps xmm2, xmm0
	movss xmm0, dword [eax+0x10]
	divss xmm2, xmm0
	cvttss2si eax, xmm2
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Item_ListBox_Viewmax_10:
	movss xmm2, dword [esi+0xc]
	subss xmm2, [_float_2_00000000]
	pxor xmm0, xmm0
	movaps xmm1, xmm0
	subss xmm1, xmm2
	movaps xmm3, xmm0
	cmpss xmm3, xmm1, 0x6
	andps xmm2, xmm3
	orps xmm2, xmm0
	movss xmm0, dword [eax+0x14]
	divss xmm2, xmm0
	cvttss2si eax, xmm2
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;UI_SetSystemCursorPos(UiContext*, float, float)
UI_SetSystemCursorPos:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x34
	movss xmm1, dword [ebp+0xc]
	movss xmm0, dword [ebp+0x10]
	mov ebx, scrPlaceFull
	mulss xmm0, [ebx+0xc]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	movss [ebp-0x28], xmm1
	call floorf
	fstp dword [ebp-0xc]
	cvttss2si eax, [ebp-0xc]
	mov [ebp+0xc], eax
	movss xmm1, dword [ebp-0x28]
	mulss xmm1, [ebx+0x8]
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	call floorf
	fstp dword [ebp-0x10]
	cvttss2si eax, [ebp-0x10]
	mov [ebp+0x8], eax
	add esp, 0x34
	pop ebx
	pop ebp
	jmp CL_SetCursorPos
	nop


;Display_KeyBindPending()
Display_KeyBindPending:
	push ebp
	mov ebp, esp
	mov eax, [g_waitingForKey]
	pop ebp
	ret


;Item_ListBox_MaxScroll(int, itemDef_s*)
Item_ListBox_MaxScroll:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0xc]
	mov eax, [esi+0x124]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call UI_FeederCount
	mov ebx, eax
	mov [esp], esi
	call Item_ListBox_Viewmax
	sub ebx, eax
	add ebx, 0x1
	test ebx, ebx
	mov eax, 0x0
	cmovle ebx, eax
	mov eax, ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;Menu_SetFeederSelection(UiContext*, menuDef_t*, int, int, char const*)
Menu_SetFeederSelection:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0xc]
	test esi, esi
	jz Menu_SetFeederSelection_10
Menu_SetFeederSelection_110:
	mov ebx, [esi+0xa4]
	test ebx, ebx
	jle Menu_SetFeederSelection_20
	cvtsi2ss xmm0, dword [ebp+0x10]
	movss [ebp-0x1c], xmm0
	xor edi, edi
	jmp Menu_SetFeederSelection_30
Menu_SetFeederSelection_40:
	add edi, 0x1
	cmp edi, [esi+0xa4]
	jge Menu_SetFeederSelection_20
Menu_SetFeederSelection_60:
	movss xmm0, dword [ebp-0x1c]
Menu_SetFeederSelection_30:
	mov eax, [esi+0x118]
	mov ebx, [eax+edi*4]
	ucomiss xmm0, [ebx+0x124]
	jnz Menu_SetFeederSelection_40
	jp Menu_SetFeederSelection_40
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov ecx, [ebp+0x14]
	mov [ebx+eax*4+0x128], ecx
	mov [esp+0x8], ecx
	mov eax, [ebx+0x124]
	mov [esp+0x4], eax
	mov eax, [edx]
	mov [esp], eax
	call UI_FeederSelection
	mov [esp], ebx
	call Item_GetListBoxDef
	mov edx, eax
	test eax, eax
	jz Menu_SetFeederSelection_40
	mov ecx, [ebp+0x14]
	test ecx, ecx
	jnz Menu_SetFeederSelection_50
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	mov dword [ebx+eax*4+0x128], 0x0
	mov eax, [ecx]
	mov dword [edx+eax*4+0x4], 0x0
	add edi, 0x1
	cmp edi, [esi+0xa4]
	jl Menu_SetFeederSelection_60
Menu_SetFeederSelection_20:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Menu_SetFeederSelection_50:
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	mov ecx, [ebp+0x14]
	cmp ecx, [edx+eax*4+0x4]
	jge Menu_SetFeederSelection_40
	mov [edx+eax*4+0x4], ecx
	jmp Menu_SetFeederSelection_40
Menu_SetFeederSelection_10:
	mov edi, [ebp+0x18]
	test edi, edi
	jz Menu_SetFeederSelection_70
	mov ecx, [ebp+0x8]
	mov esi, [ecx+0xa30]
	test esi, esi
	jle Menu_SetFeederSelection_20
	mov ebx, ecx
	xor esi, esi
Menu_SetFeederSelection_90:
	mov eax, [ebp+0x18]
	mov [esp+0x4], eax
	mov eax, [ebx+0x30]
	mov eax, [eax]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz Menu_SetFeederSelection_80
	add esi, 0x1
	add ebx, 0x4
	mov edx, [ebp+0x8]
	cmp [edx+0xa30], esi
	jg Menu_SetFeederSelection_90
	jmp Menu_SetFeederSelection_20
Menu_SetFeederSelection_70:
	mov eax, [ebp+0x8]
	mov edi, [eax+0xa74]
	sub edi, 0x1
	js Menu_SetFeederSelection_20
	mov ebx, [eax]
	lea edx, [eax+edi*4+0xa34]
	xor ecx, ecx
Menu_SetFeederSelection_120:
	mov esi, [edx]
	mov eax, [esi+ebx*4+0x50]
	test al, 0x4
	jz Menu_SetFeederSelection_100
	test al, 0x2
	jz Menu_SetFeederSelection_100
Menu_SetFeederSelection_130:
	test esi, esi
	jnz Menu_SetFeederSelection_110
	jmp Menu_SetFeederSelection_20
Menu_SetFeederSelection_100:
	add ecx, 0x1
	sub edx, 0x4
	lea eax, [edi+0x1]
	cmp ecx, eax
	jnz Menu_SetFeederSelection_120
	jmp Menu_SetFeederSelection_20
Menu_SetFeederSelection_80:
	mov edx, [ebp+0x8]
	mov esi, [edx+esi*4+0x30]
	jmp Menu_SetFeederSelection_130


;UI_GetMenuScreenForError()
UI_GetMenuScreenForError:
	push ebp
	mov ebp, esp
	xor eax, eax
	pop ebp
	ret
	nop


;Menus_AnyFullScreenVisible(UiContext*)
Menus_AnyFullScreenVisible:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov eax, [ebp+0x8]
	mov esi, [eax+0xa74]
	sub esi, 0x1
	js Menus_AnyFullScreenVisible_10
	mov ebx, [eax]
	lea edx, [eax+esi*4+0xa34]
	xor ecx, ecx
Menus_AnyFullScreenVisible_40:
	mov eax, [edx]
	test byte [eax+ebx*4+0x50], 0x4
	jz Menus_AnyFullScreenVisible_20
	mov eax, [eax+0xa0]
	test eax, eax
	jnz Menus_AnyFullScreenVisible_30
Menus_AnyFullScreenVisible_20:
	add ecx, 0x1
	sub edx, 0x4
	lea eax, [esi+0x1]
	cmp eax, ecx
	jnz Menus_AnyFullScreenVisible_40
Menus_AnyFullScreenVisible_10:
	xor eax, eax
	pop ebx
	pop esi
	pop ebp
	ret
Menus_AnyFullScreenVisible_30:
	mov eax, 0x1
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;UI_GetKeyBindingLocalizedString(int, char const*, char*)
UI_GetKeyBindingLocalizedString:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [ebp+0x10]
	mov dword [ebp+0x8], 0x0
	pop ebp
	jmp GetKeyBindingLocalizedString
	nop


;Menu_PaintAll_AppendToVisibleList(char*, unsigned long, char const*)
Menu_PaintAll_AppendToVisibleList:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov ebx, [ebp+0xc]
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, [ebp+0x8]
	repne scasb
	not ecx
	mov eax, [ebp+0x8]
	lea esi, [ecx+eax-0x1]
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov edi, [ebp+0x8]
	mov [esp], edi
	call Q_strncat
	mov byte [ebp-0x19], 0xa
	mov [ebp-0x24], edi
	mov [ebp-0x20], esi
	lea edx, [ebp-0x28]
	mov [esp+0x10], bl
	lea eax, [ebp-0x19]
	mov [esp+0xc], eax
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov [esp], edx
	call _ZSt4findISt16reverse_iteratorIPcEcET_S3_S3_RKT0_St26random_access_iterator_tag
	sub esp, 0x4
	mov eax, [ebp-0x28]
	sub eax, 0x1
	sub esi, eax
	mov eax, _cstring___
	cmp esi, 0x51
	mov edx, _cstring__
	cmovl eax, edx
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], edi
	call Q_strncat
	lea esp, [ebp-0xc]
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;UI_GetKeyBindingLocalizedStringSingle(int, char const*, char*)
UI_GetKeyBindingLocalizedStringSingle:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov ecx, [ebp+0x10]
	mov dword [ebp+0x8], 0x1
	pop ebp
	jmp GetKeyBindingLocalizedString
	nop


;LerpColor(float*, float*, float*, float)
LerpColor:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov ecx, [ebp+0x10]
	movss xmm3, dword [ebp+0x14]
	mov edx, 0x1
	pxor xmm2, xmm2
	movss xmm4, dword [_float_1_00000000]
LerpColor_30:
	lea eax, [edx*4]
	movss xmm0, dword [esi+eax-0x4]
	movss xmm1, dword [ebx+eax-0x4]
	subss xmm1, xmm0
	mulss xmm1, xmm3
	addss xmm1, xmm0
	lea eax, [ecx+eax]
	movss [eax-0x4], xmm1
	ucomiss xmm2, xmm1
	ja LerpColor_10
	ucomiss xmm1, xmm4
	jbe LerpColor_20
	mov dword [eax-0x4], 0x3f800000
LerpColor_20:
	add edx, 0x1
	cmp edx, 0x5
	jnz LerpColor_30
	pop ebx
	pop esi
	pop ebp
	ret
LerpColor_10:
	mov dword [eax-0x4], 0x0
	jmp LerpColor_20
	nop
	add [eax], al


;std::reverse_iterator<char*> std::find<std::reverse_iterator<char*>, char>(std::reverse_iterator<char*>, std::reverse_iterator<char*>, char const&, std::random_access_iterator_tag)
_ZSt4findISt16reverse_iteratorIPcEcET_S3_S3_RKT0_St26random_access_iterator_tag:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov edi, [ebp+0x14]
	mov edx, [ebp+0x10]
	mov eax, [edx]
	mov edx, [ebp+0xc]
	mov ecx, [edx]
	mov edx, ecx
	mov ebx, ecx
	sub ebx, eax
	sar ebx, 0x2
	test ebx, ebx
	jle _ZSt4findISt16reverse_iteratorIPcEcET_S3_S3_RKT0_St26random_access_iterator_tag_10
	movzx eax, byte [edi]
	cmp al, [ecx-0x1]
	jz _ZSt4findISt16reverse_iteratorIPcEcET_S3_S3_RKT0_St26random_access_iterator_tag_20
	mov esi, ecx
	sub ecx, 0x1
	mov eax, [ebp+0xc]
	mov [eax], ecx
	movzx eax, byte [ecx-0x1]
	cmp al, [edi]
	jz _ZSt4findISt16reverse_iteratorIPcEcET_S3_S3_RKT0_St26random_access_iterator_tag_30
	lea ecx, [edx-0x2]
	mov eax, [ebp+0xc]
	mov [eax], ecx
	movzx eax, byte [ecx-0x1]
	cmp al, [edi]
	jz _ZSt4findISt16reverse_iteratorIPcEcET_S3_S3_RKT0_St26random_access_iterator_tag_30
	sub edx, 0x3
	mov eax, [ebp+0xc]
	mov [eax], edx
	movzx eax, byte [edi]
	cmp al, [edx-0x1]
	jz _ZSt4findISt16reverse_iteratorIPcEcET_S3_S3_RKT0_St26random_access_iterator_tag_30
	xor edx, edx
	sub ebx, 0x1
_ZSt4findISt16reverse_iteratorIPcEcET_S3_S3_RKT0_St26random_access_iterator_tag_50:
	sub esi, 0x4
	mov ecx, esi
	mov eax, [ebp+0xc]
	mov [eax], esi
	cmp ebx, edx
	jz _ZSt4findISt16reverse_iteratorIPcEcET_S3_S3_RKT0_St26random_access_iterator_tag_40
	movzx eax, byte [ecx-0x1]
	cmp al, [edi]
	jz _ZSt4findISt16reverse_iteratorIPcEcET_S3_S3_RKT0_St26random_access_iterator_tag_20
	sub ecx, 0x1
	mov eax, [ebp+0xc]
	mov [eax], ecx
	movzx eax, byte [ecx-0x1]
	cmp al, [edi]
	jz _ZSt4findISt16reverse_iteratorIPcEcET_S3_S3_RKT0_St26random_access_iterator_tag_30
	lea ecx, [esi-0x2]
	mov eax, [ebp+0xc]
	mov [eax], ecx
	movzx eax, byte [ecx-0x1]
	cmp al, [edi]
	jz _ZSt4findISt16reverse_iteratorIPcEcET_S3_S3_RKT0_St26random_access_iterator_tag_30
	lea ecx, [esi-0x3]
	mov eax, [ebp+0xc]
	mov [eax], ecx
	add edx, 0x1
	movzx eax, byte [ecx-0x1]
	cmp al, [edi]
	jnz _ZSt4findISt16reverse_iteratorIPcEcET_S3_S3_RKT0_St26random_access_iterator_tag_50
_ZSt4findISt16reverse_iteratorIPcEcET_S3_S3_RKT0_St26random_access_iterator_tag_30:
	mov edx, [ebp+0xc]
	mov eax, [edx]
	mov edx, [ebp+0x8]
	mov [edx], eax
	mov eax, [ebp+0x8]
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret 0x4
_ZSt4findISt16reverse_iteratorIPcEcET_S3_S3_RKT0_St26random_access_iterator_tag_20:
	mov eax, [ebp+0x8]
	mov [eax], ecx
	mov eax, [ebp+0x8]
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret 0x4
_ZSt4findISt16reverse_iteratorIPcEcET_S3_S3_RKT0_St26random_access_iterator_tag_40:
	mov edx, [ebp+0x10]
	mov eax, [edx]
_ZSt4findISt16reverse_iteratorIPcEcET_S3_S3_RKT0_St26random_access_iterator_tag_10:
	mov edx, ecx
	sub edx, eax
	cmp edx, 0x2
	jz _ZSt4findISt16reverse_iteratorIPcEcET_S3_S3_RKT0_St26random_access_iterator_tag_60
	cmp edx, 0x3
	jz _ZSt4findISt16reverse_iteratorIPcEcET_S3_S3_RKT0_St26random_access_iterator_tag_70
	sub edx, 0x1
	jz _ZSt4findISt16reverse_iteratorIPcEcET_S3_S3_RKT0_St26random_access_iterator_tag_80
	mov edx, [ebp+0x8]
	mov [edx], eax
_ZSt4findISt16reverse_iteratorIPcEcET_S3_S3_RKT0_St26random_access_iterator_tag_90:
	mov eax, [ebp+0x8]
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret 0x4
_ZSt4findISt16reverse_iteratorIPcEcET_S3_S3_RKT0_St26random_access_iterator_tag_70:
	movzx eax, byte [edi]
	cmp al, [ecx-0x1]
	jz _ZSt4findISt16reverse_iteratorIPcEcET_S3_S3_RKT0_St26random_access_iterator_tag_20
	sub ecx, 0x1
	mov edx, [ebp+0xc]
	mov [edx], ecx
_ZSt4findISt16reverse_iteratorIPcEcET_S3_S3_RKT0_St26random_access_iterator_tag_60:
	movzx eax, byte [edi]
	cmp al, [ecx-0x1]
	jz _ZSt4findISt16reverse_iteratorIPcEcET_S3_S3_RKT0_St26random_access_iterator_tag_20
	sub ecx, 0x1
	mov edx, [ebp+0xc]
	mov [edx], ecx
_ZSt4findISt16reverse_iteratorIPcEcET_S3_S3_RKT0_St26random_access_iterator_tag_80:
	movzx eax, byte [edi]
	cmp al, [ecx-0x1]
	jz _ZSt4findISt16reverse_iteratorIPcEcET_S3_S3_RKT0_St26random_access_iterator_tag_20
	sub ecx, 0x1
	mov edx, [ebp+0xc]
	mov [edx], ecx
	mov edx, [ebp+0x10]
	mov eax, [edx]
	mov edx, [ebp+0x8]
	mov [edx], eax
	jmp _ZSt4findISt16reverse_iteratorIPcEcET_S3_S3_RKT0_St26random_access_iterator_tag_90


;Initialized global or static variables of ui_shared:
SECTION .data
_ZZ15Item_Text_PaintP9UiContextP9itemDef_sE21MY_SUBTITLE_GLOWCOLOR: dd 0x0, 0x3e99999a, 0x0, 0x3f800000, 0x0
g_editItem: dd 0x0
g_editingField: dd 0x0
g_waitingForKey: dd 0x0


;Initialized constant data of ui_shared:
SECTION .rdata
commandList: dd _cstring_fadein, Script_FadeIn, _cstring_fadeout, Script_FadeOut, _cstring_show, Script_Show, _cstring_hide, Script_Hide, _cstring_showmenu, Script_ShowMenu, _cstring_hidemenu, Script_HideMenu, _cstring_setcolor, Script_SetColor, _cstring_open, Script_Open, _cstring_close, Script_Close, _cstring_ingameopen, Script_InGameOpen, _cstring_ingameclose, Script_InGameClose, _cstring_setbackground, Script_SetBackground, _cstring_setitemcolor, Script_SetItemColor, _cstring_focusfirst, Script_FocusFirstInMenu, _cstring_setfocus, Script_SetFocus, _cstring_setfocusbydvar, Script_SetFocusByDvar, _cstring_setdvar, Script_SetDvar, _cstring_exec, Script_Exec, _cstring_execnow, Script_ExecNow, _cstring_execondvarstring, Script_ExecOnDvarStringValue, _cstring_execondvarintval, Script_ExecOnDvarIntValue, _cstring_execondvarfloatv, Script_ExecOnDvarFloatValue, _cstring_execnowondvarstr, Script_ExecNowOnDvarStringValue, _cstring_execnowondvarint, Script_ExecNowOnDvarIntValue, _cstring_execnowondvarflo, Script_ExecNowOnDvarFloatValue, _cstring_play, Script_Play, _cstring_scriptmenurespon, Script_ScriptMenuResponse, _cstring_scriptmenurespon1, Script_RespondOnDvarStringValue, _cstring_scriptmenurespon2, Script_RespondOnDvarIntValue, _cstring_scriptmenurespon3, Script_RespondOnDvarFloatValue, _cstring_setlocalvarbool, Script_SetLocalVarBool, _cstring_setlocalvarint, Script_SetLocalVarInt, _cstring_setlocalvarfloat, Script_SetLocalVarFloat, _cstring_setlocalvarstrin, Script_SetLocalVarString, _cstring_feedertop, Script_FeederTop, _cstring_feederbottom, Script_FeederBottom, _cstring_openforgametype, Script_OpenForGameType, _cstring_closeforgametype, Script_CloseForGameType, _cstring_statclearperknew2, Script_StatClearPerkNew, _cstring_statsetusingtabl1, Script_StatSetUsingStatsTable, _cstring_statclearbitmask, Script_StatClearBitMask, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Zero initialized global or static variables of ui_shared:
SECTION .bss
itemCapture: resb 0x4
g_debugMode: resb 0x4
captureData: resb 0x4
captureFunc: resb 0x4
g_bindItem: resb 0x10
scrollInfo: resb 0x20
lastListBoxClickTime: resb 0x4
_ZZ22Item_CorrectedTextRectiP9itemDef_sE4rect: resb 0x18
_ZZ14Menu_HandleKeyP9UiContextP9menuDef_tiiE11inHandleKey: resb 0x24


;All cstrings:
SECTION .rdata
_cstring_backcolor:		db "backcolor",0
_cstring_forecolor:		db "forecolor",0
_cstring_bordercolor:		db "bordercolor",0
_cstring_self:		db "self",0
_cstring_focusfirst_no_it:		db "focusFirst: no itemDefs in %s were selectable",0ah,0
_cstring_itemdefs_unnamed:		db "itemDef",27h,"s unnamed menu",0
_cstring_setfocus_could_n:		db "setFocus: could not find widget named ",27h,"%s",27h,0ah,0
_cstring_setfocus_error_f:		db "setFocus: error focusing widget ",27h,"%s",27h," (widget was found but could not accept focus)",0ah,0
_cstring_script_setfocusb:		db 015h,"Script_SetFocusByDvar: Item",27h,"s dvarTest field is empty.",0
_cstring_:		db 0ah,0
_cstring_sv_serverid:		db "sv_serverId",0
_cstring_cmd_mr_i_i_s:		db "cmd mr %i %i %s",0ah,0
_cstring_you_can_only_do_:		db "You can only do table lookups when using fastfiles.",0ah,0
_cstring_1:		db "(",0
_cstring_2:		db 22h,0
_cstring_3:		db ")",0
_cstring_mpstatstablecsv:		db "mp/statstable.csv",0
_cstring_statclearperknew:		db "statClearPerkNew: Invalid perk index %d for %s",0ah,0
_cstring_statclearperknew1:		db "statClearPerkNew: perk %s[%d] isn",27h,"t unlocked.",0ah,0
_cstring_tablelookup:		db "tablelookup",0
_cstring_4:		db ",",0
_cstring_statsetusingtabl:		db "statsetusingtable should only be used for create-a-class.  You can",27h,"t set stat %d",0ah,0
_cstring_key_or:		db "KEY_OR",0
_cstring_s_s_s:		db "%s %s %s",0
_cstring_key_unbound:		db "KEY_UNBOUND",0
_cstring_g:		db "%g",0
_cstring_not_using_cinema:		db "NOT USING CINEMATIC_SUBTITLES",0
_cstring_i:		db "%i",0
_cstring_game_message_win:		db "Game message window mode %d is not valid.",0
_cstring_not_an_enum_dvar:		db "<not an enum dvar>",0
_cstring_null:		db 0
_cstring_exe_no:		db "EXE_NO",0
_cstring_dvarenumlist_not:		db "<dvarEnumList not set>",0
_cstring_exe_yes:		db "EXE_YES",0
_cstring_dvarstrlist_or_d:		db "<dvarStrList or dvarFloatList not set>",0
_cstring_game_message_win1:		db "Game message window index %d is not valid. Must be in [0, %d).",0
_cstring_menu_bind_key_pe:		db "@MENU_BIND_KEY_PENDING",0
_cstring_too_many_menus_o:		db 015h,"Too many menus opened",0
_cstring_mini_map2_overla:		db "mini_map2_overlay",0
_cstring_loc_warnings:		db "loc_warnings",0
_cstring_loc_warningsaser:		db "loc_warningsAsErrors",0
_cstring_could_not_transl:		db "Could not translate menu string reference %s",0
_cstring_warning_could_no:		db "WARNING: Could not translate menu string reference %s",0ah,0
_cstring_menu_paint_all:		db "menu paint all",0
_cstring_fps_f:		db "fps: %f",0
_cstring_ui_showlist_:		db "ui_showlist: ",0
_cstring_developer:		db "developer",0
_cstring_screenshot:		db "screenshot",0ah,0
_cstring_unnamed:		db "unnamed",0
_cstring_hiding_the_s_men:		db "hiding the %s menu becuase the ",27h,"visible when",27h," expression was false",0ah,0
_cstring_ui_addmenu_exe_e:		db 015h,"UI_AddMenu: ",014h,"EXE_ERR_OUT_OF_MEMORY",0
_cstring_could_not_find_m:		db "Could not find menu ",27h,"%s",27h,0ah,0
_cstring_options_graphics:		db "options_graphics",0
_cstring_options_sound:		db "options_sound",0
_cstring___:		db ",",0ah,"  ",0
_cstring__:		db ", ",0
_cstring_fadein:		db "fadein",0
_cstring_fadeout:		db "fadeout",0
_cstring_show:		db "show",0
_cstring_hide:		db "hide",0
_cstring_showmenu:		db "showMenu",0
_cstring_hidemenu:		db "hideMenu",0
_cstring_setcolor:		db "setcolor",0
_cstring_open:		db "open",0
_cstring_close:		db "close",0
_cstring_ingameopen:		db "ingameopen",0
_cstring_ingameclose:		db "ingameclose",0
_cstring_setbackground:		db "setbackground",0
_cstring_setitemcolor:		db "setitemcolor",0
_cstring_focusfirst:		db "focusfirst",0
_cstring_setfocus:		db "setfocus",0
_cstring_setfocusbydvar:		db "setfocusbydvar",0
_cstring_setdvar:		db "setdvar",0
_cstring_exec:		db "exec",0
_cstring_execnow:		db "execnow",0
_cstring_execondvarstring:		db "execOnDvarStringValue",0
_cstring_execondvarintval:		db "execOnDvarIntValue",0
_cstring_execondvarfloatv:		db "execOnDvarFloatValue",0
_cstring_execnowondvarstr:		db "execNowOnDvarStringValue",0
_cstring_execnowondvarint:		db "execNowOnDvarIntValue",0
_cstring_execnowondvarflo:		db "execNowOnDvarFloatValue",0
_cstring_play:		db "play",0
_cstring_scriptmenurespon:		db "scriptmenuresponse",0
_cstring_scriptmenurespon1:		db "scriptMenuRespondOnDvarStringValue",0
_cstring_scriptmenurespon2:		db "scriptMenuRespondOnDvarIntValue",0
_cstring_scriptmenurespon3:		db "scriptMenuRespondOnDvarFloatValue",0
_cstring_setlocalvarbool:		db "setLocalVarBool",0
_cstring_setlocalvarint:		db "setLocalVarInt",0
_cstring_setlocalvarfloat:		db "setLocalVarFloat",0
_cstring_setlocalvarstrin:		db "setLocalVarString",0
_cstring_feedertop:		db "feederTop",0
_cstring_feederbottom:		db "feederBottom",0
_cstring_openforgametype:		db "openforgametype",0
_cstring_closeforgametype:		db "closeforgametype",0
_cstring_statclearperknew2:		db "statclearperknew",0
_cstring_statsetusingtabl1:		db "statsetusingtable",0
_cstring_statclearbitmask:		db "statclearbitmask",0



;All constant floats and doubles:
SECTION .rdata
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; OWORD
_float_0_00001000:		dd 0x3727c5ac	; 1e-05
_float_5_00000000:		dd 0x40a00000	; 5
_float_1_00000000:		dd 0x3f800000	; 1
_float_96_00000000:		dd 0x42c00000	; 96
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_84_00000000:		dd 0x42a80000	; 84
_float_0_00000000:		dd 0x0	; 0
_float__0_50000000:		dd 0xbf000000	; -0.5
_float_0_80000001:		dd 0x3f4ccccd	; 0.8
_float_8_00000000:		dd 0x41000000	; 8
_float_32_00000000:		dd 0x42000000	; 32
_float_2_00000000:		dd 0x40000000	; 2
_float_16_00000000:		dd 0x41800000	; 16
_float_25_00000000:		dd 0x41c80000	; 25
_float_0_05000000:		dd 0x3d4ccccd	; 0.05
_float_15_00000000:		dd 0x41700000	; 15
_float_4_00000000:		dd 0x40800000	; 4
_float_3_00000000:		dd 0x40400000	; 3

