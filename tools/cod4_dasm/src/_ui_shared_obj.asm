;Imports of ui_shared_obj:
	extern PC_ReadTokenHandle
	extern String_Alloc
	extern FS_FOpenFileByMode
	extern FS_Read
	extern FS_FCloseFile
	extern Com_PrintError
	extern Window_SetStaticFlags
	extern Item_GetListBoxDef
	extern PC_ReadLineHandle
	extern Q_stricmp
	extern Window_SetDynamicFlags
	extern Z_MallocInternal
	extern parse_expression
	extern atoi
	extern Q_strncpyz
	extern Q_strlwr
	extern Material_RegisterHandle
	extern Item_IsEditFieldDef
	extern Item_GetEditFieldDef
	extern Com_FindSoundAlias
	extern Item_GetMultiDef
	extern UI_Alloc
	extern memset
	extern tolower
	extern free_expression
	extern vsnprintf
	extern PC_SourceFileAndLine
	extern Eval_OperatorForToken
	extern Eval_PushOperator
	extern Eval_PushInteger
	extern Eval_AnyMissingOperands
	extern Eval_Solve
	extern va
	extern Q_strncat
	extern DB_FindXAssetHeader
	extern Com_Compress
	extern Com_BeginParseSession
	extern Com_Parse
	extern Com_EndParseSession
	extern Com_Printf
	extern Com_Error
	extern Com_PrintWarning
	extern Eval_PushNumber
	extern PC_LoadSourceHandle
	extern memcpy
	extern Menu_UpdatePosition
	extern PC_FreeSourceHandle
	extern Menu_SetCursorItem
	extern useFastFile
	extern FS_ReadFile
	extern Com_SetCSV
	extern Com_ParseOnLine
	extern Com_sprintf
	extern Material_Duplicate
	extern FS_FreeFile

;Exports of ui_shared_obj:
	global menuBuf
	global menuParseKeywordHash
	global itemParseKeywordHash
	global itemParseKeywords
	global ItemParse_name
	global ItemParse_text
	global ItemParse_textfile
	global ItemParse_textsavegame
	global ItemParse_textcinematicsubtitle
	global ItemParse_group
	global ItemParse_rect
	global ItemParse_origin
	global ItemParse_style
	global ItemParse_decoration
	global ItemParse_notselectable
	global ItemParse_noScrollBars
	global ItemParse_usePaging
	global ItemParse_autowrapped
	global ItemParse_horizontalscroll
	global ItemParse_type
	global ItemParse_elementwidth
	global ItemParse_elementheight
	global ItemParse_feeder
	global ItemParse_elementtype
	global ItemParse_columns
	global ItemParse_border
	global ItemParse_bordersize
	global ItemParse_visible
	global ItemParse_ownerdraw
	global ItemParse_align
	global ItemParse_textalign
	global ItemParse_textalignx
	global ItemParse_textaligny
	global ItemParse_textscale
	global ItemParse_textstyle
	global ItemParse_textfont
	global ItemParse_backcolor
	global ItemParse_forecolor
	global ItemParse_bordercolor
	global ItemParse_outlinecolor
	global ItemParse_background
	global ItemParse_onFocus
	global ItemParse_leaveFocus
	global ItemParse_mouseEnter
	global ItemParse_mouseExit
	global ItemParse_mouseEnterText
	global ItemParse_mouseExitText
	global ItemParse_action
	global ItemParse_accept
	global ItemParse_special
	global ItemParse_dvar
	global ItemParse_maxChars
	global Item_Parse_maxCharsGotoNext
	global ItemParse_maxPaintChars
	global ItemParse_focusSound
	global ItemParse_dvarFloat
	global ItemParse_dvarStrList
	global ItemParse_dvarFloatList
	global ItemParse_dvarEnumList
	global ItemParse_ownerdrawFlag
	global ItemParse_enableDvar
	global ItemParse_dvarTest
	global ItemParse_disableDvar
	global ItemParse_showDvar
	global ItemParse_hideDvar
	global ItemParse_focusDvar
	global ItemParse_doubleClick
	global ItemParse_execKey
	global ItemParse_execKeyInt
	global ItemParse_execExp
	global ItemParse_gameMsgWindowIndex
	global ItemParse_gameMsgWindowMode
	global ItemParse_selectBorder
	global ItemParse_disableColor
	global ItemParse_selectIcon
	global menuBuf1
	global menuParseKeywords
	global MenuParse_name
	global MenuParse_fullscreen
	global MenuParse_rect
	global MenuParse_style
	global MenuParse_visible
	global MenuParse_onOpen
	global MenuParse_onClose
	global MenuParse_onESC
	global MenuParse_border
	global MenuParse_borderSize
	global MenuParse_backcolor
	global MenuParse_forecolor
	global MenuParse_bordercolor
	global MenuParse_focuscolor
	global MenuParse_disablecolor
	global MenuParse_outlinecolor
	global MenuParse_background
	global MenuParse_ownerdraw
	global MenuParse_ownerdrawFlag
	global MenuParse_outOfBounds
	global MenuParse_soundLoop
	global MenuParse_itemDef
	global MenuParse_execExp
	global MenuParse_popup
	global MenuParse_fadeClamp
	global MenuParse_fadeCycle
	global MenuParse_fadeAmount
	global MenuParse_fadeInAmount
	global MenuParse_execKey
	global MenuParse_execKeyInt
	global MenuParse_blurWorld
	global MenuParse_legacySplitScreenScale
	global MenuParse_hiddenDuringScope
	global MenuParse_hiddenDuringFlashbang
	global MenuParse_hiddenDuringUI
	global MenuParse_allowedBinding
	global Menu_FreeItemMemory
	global _ZZ14PC_SourceErroriPczE6string
	global PC_SourceError
	global PC_Int_Expression_Parse
	global PC_Script_Parse
	global Item_ValidateTypeData
	global UI_LoadMenu_FastFile
	global UI_LoadMenus_FastFile
	global UI_LoadMenus_LoadObj
	global UI_LoadMenu_LoadObj
	global PC_Float_Expression_Parse
	global PC_Rect_Parse
	global UI_ParseMenuInternal
	global UI_LoadMenu
	global UI_LoadMenus
	global UI_MapLoadInfo
	global Menus_FreeAllMemory
	global Item_SetupKeywordHash
	global Menu_SetupKeywordHash


SECTION .text


;ItemParse_name(itemDef_s*, int)
ItemParse_name:
	push ebp
	mov ebp, esp
	sub esp, 0x428
	lea eax, [ebp-0x418]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call PC_ReadTokenHandle
	test eax, eax
	jnz ItemParse_name_10
	leave
	ret
ItemParse_name_10:
	lea eax, [ebp-0x408]
	mov [esp], eax
	call String_Alloc
	mov edx, [ebp+0x8]
	mov [edx], eax
	mov eax, 0x1
	leave
	ret


;ItemParse_text(itemDef_s*, int)
ItemParse_text:
	push ebp
	mov ebp, esp
	sub esp, 0x428
	lea eax, [ebp-0x418]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call PC_ReadTokenHandle
	test eax, eax
	jnz ItemParse_text_10
	leave
	ret
ItemParse_text_10:
	lea eax, [ebp-0x408]
	mov [esp], eax
	call String_Alloc
	mov edx, [ebp+0x8]
	mov [edx+0xe0], eax
	mov eax, 0x1
	leave
	ret


;ItemParse_textfile(itemDef_s*, int)
ItemParse_textfile:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x430
	lea eax, [ebp-0x41c]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call PC_ReadTokenHandle
	test eax, eax
	jnz ItemParse_textfile_10
	add esp, 0x430
	pop ebx
	pop esi
	pop ebp
	ret
ItemParse_textfile_10:
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0xc]
	mov [esp+0x4], eax
	lea esi, [ebp-0x40c]
	mov [esp], esi
	call FS_FOpenFileByMode
	mov ebx, eax
	mov edx, [ebp-0xc]
	test edx, edx
	jz ItemParse_textfile_20
	cmp eax, 0xfff
	ja ItemParse_textfile_30
	mov eax, 0x1000
	cmp ebx, 0x1000
	cmovl eax, ebx
	mov [esp+0x8], edx
	mov [esp+0x4], eax
	mov dword [esp], menuBuf1
	call FS_Read
	mov byte [ebx+menuBuf1], 0x0
	mov eax, [ebp-0xc]
	mov [esp], eax
	call FS_FCloseFile
	mov eax, menuBuf1
	jmp ItemParse_textfile_40
ItemParse_textfile_30:
	mov [esp], edx
	call FS_FCloseFile
	mov dword [esp+0xc], 0x1000
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_menu_file_s_is_l
	mov dword [esp], 0x10
	call Com_PrintError
ItemParse_textfile_20:
	xor eax, eax
ItemParse_textfile_40:
	mov [esp], eax
	call String_Alloc
	mov edx, [ebp+0x8]
	mov [edx+0xe0], eax
	mov eax, 0x1
	add esp, 0x430
	pop ebx
	pop esi
	pop ebp
	ret


;ItemParse_textsavegame(itemDef_s*, int)
ItemParse_textsavegame:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov dword [eax+0xe0], _cstring_savegameinfo
	or dword [eax+0xe4], 0x1
	mov eax, 0x1
	pop ebp
	ret


;ItemParse_textcinematicsubtitle(itemDef_s*, int)
ItemParse_textcinematicsubtitle:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov dword [eax+0xe0], _cstring_cinematicsubtitl
	or dword [eax+0xe4], 0x2
	mov eax, 0x1
	pop ebp
	ret


;ItemParse_group(itemDef_s*, int)
ItemParse_group:
	push ebp
	mov ebp, esp
	sub esp, 0x428
	lea eax, [ebp-0x418]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call PC_ReadTokenHandle
	test eax, eax
	jnz ItemParse_group_10
	leave
	ret
ItemParse_group_10:
	lea eax, [ebp-0x408]
	mov [esp], eax
	call String_Alloc
	mov edx, [ebp+0x8]
	mov [edx+0x34], eax
	mov eax, 0x1
	leave
	ret
	nop


;ItemParse_rect(itemDef_s*, int)
ItemParse_rect:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0xc]
	mov edx, [ebp+0x8]
	add edx, 0x1c
	pop ebp
	jmp PC_Rect_Parse


;ItemParse_origin(itemDef_s*, int)
ItemParse_origin:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x430
	mov ebx, [ebp+0xc]
	lea esi, [ebp-0x420]
	mov [esp+0x4], esi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_origin_10
	movzx eax, byte [ebp-0x410]
	cmp al, 0x28
	jz ItemParse_origin_20
	cmp al, 0x2d
	jz ItemParse_origin_30
	xor edx, edx
ItemParse_origin_120:
	cmp dword [ebp-0x420], 0x3
	jz ItemParse_origin_40
ItemParse_origin_80:
	lea eax, [ebp-0x410]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_expected_integer
	mov [esp], ebx
	call PC_SourceError
	xor eax, eax
	add esp, 0x430
	pop ebx
	pop esi
	pop ebp
	ret
ItemParse_origin_30:
	mov [esp+0x4], esi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jnz ItemParse_origin_50
ItemParse_origin_10:
	xor eax, eax
ItemParse_origin_100:
	add esp, 0x430
	pop ebx
	pop esi
	pop ebp
	ret
ItemParse_origin_20:
	lea edx, [ebp-0xc]
	mov eax, ebx
	call PC_Int_Expression_Parse
	test eax, eax
	jz ItemParse_origin_10
ItemParse_origin_110:
	mov [esp+0x4], esi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_origin_10
	movzx eax, byte [ebp-0x410]
	cmp al, 0x28
	jz ItemParse_origin_60
	cmp al, 0x2d
	jz ItemParse_origin_70
	xor edx, edx
ItemParse_origin_140:
	cmp dword [ebp-0x420], 0x3
	jnz ItemParse_origin_80
	mov eax, [ebp-0x418]
	mov [ebp-0x10], eax
	test edx, edx
	jnz ItemParse_origin_90
ItemParse_origin_130:
	cvtsi2ss xmm0, dword [ebp-0xc]
	mov eax, [ebp+0x8]
	addss xmm0, [eax+0x1c]
	movss [eax+0x1c], xmm0
	cvtsi2ss xmm0, dword [ebp-0x10]
	addss xmm0, [eax+0x20]
	movss [eax+0x20], xmm0
	mov eax, 0x1
	jmp ItemParse_origin_100
ItemParse_origin_40:
	mov eax, [ebp-0x418]
	mov [ebp-0xc], eax
	test edx, edx
	jz ItemParse_origin_110
	neg eax
	mov [ebp-0xc], eax
	jmp ItemParse_origin_110
ItemParse_origin_50:
	mov edx, 0x1
	jmp ItemParse_origin_120
ItemParse_origin_90:
	neg eax
	mov [ebp-0x10], eax
	jmp ItemParse_origin_130
ItemParse_origin_60:
	lea edx, [ebp-0x10]
	mov eax, ebx
	call PC_Int_Expression_Parse
	test eax, eax
	jnz ItemParse_origin_130
	jmp ItemParse_origin_10
ItemParse_origin_70:
	mov [esp+0x4], esi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_origin_10
	mov edx, 0x1
	jmp ItemParse_origin_140
	nop


;ItemParse_style(itemDef_s*, int)
ItemParse_style:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x42c
	mov ebx, [ebp+0xc]
	mov esi, [ebp+0x8]
	add esi, 0x38
	lea edi, [ebp-0x428]
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_style_10
	movzx eax, byte [ebp-0x418]
	cmp al, 0x28
	jz ItemParse_style_20
	cmp al, 0x2d
	jz ItemParse_style_30
	xor edx, edx
ItemParse_style_60:
	cmp dword [ebp-0x428], 0x3
	jz ItemParse_style_40
	lea eax, [ebp-0x418]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_expected_integer
	mov [esp], ebx
	call PC_SourceError
	xor eax, eax
ItemParse_style_70:
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_style_10:
	xor eax, eax
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_style_40:
	mov eax, [ebp-0x420]
	mov [esi], eax
	test edx, edx
	jz ItemParse_style_50
	neg eax
	mov [esi], eax
ItemParse_style_50:
	mov eax, 0x1
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_style_30:
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_style_10
	mov edx, 0x1
	jmp ItemParse_style_60
ItemParse_style_20:
	mov edx, esi
	mov eax, ebx
	call PC_Int_Expression_Parse
	jmp ItemParse_style_70
	nop


;ItemParse_decoration(itemDef_s*, int)
ItemParse_decoration:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [ebp+0x8]
	mov eax, [edx+0x4c]
	or eax, 0x100000
	mov [esp+0x4], eax
	mov [esp], edx
	call Window_SetStaticFlags
	mov eax, 0x1
	leave
	ret


;ItemParse_notselectable(itemDef_s*, int)
ItemParse_notselectable:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov eax, ebx
	call Item_ValidateTypeData
	mov [esp], ebx
	call Item_GetListBoxDef
	test eax, eax
	jz ItemParse_notselectable_10
	cmp dword [ebx+0xb4], 0x6
	jz ItemParse_notselectable_20
ItemParse_notselectable_30:
	mov eax, 0x1
ItemParse_notselectable_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
ItemParse_notselectable_20:
	mov dword [eax+0x124], 0x1
	jmp ItemParse_notselectable_30


;ItemParse_noScrollBars(itemDef_s*, int)
ItemParse_noScrollBars:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov eax, ebx
	call Item_ValidateTypeData
	mov [esp], ebx
	call Item_GetListBoxDef
	test eax, eax
	jz ItemParse_noScrollBars_10
	cmp dword [ebx+0xb4], 0x6
	jz ItemParse_noScrollBars_20
ItemParse_noScrollBars_30:
	mov eax, 0x1
ItemParse_noScrollBars_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
ItemParse_noScrollBars_20:
	mov dword [eax+0x128], 0x1
	jmp ItemParse_noScrollBars_30


;ItemParse_usePaging(itemDef_s*, int)
ItemParse_usePaging:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov eax, ebx
	call Item_ValidateTypeData
	mov [esp], ebx
	call Item_GetListBoxDef
	test eax, eax
	jz ItemParse_usePaging_10
	cmp dword [ebx+0xb4], 0x6
	jz ItemParse_usePaging_20
ItemParse_usePaging_30:
	mov eax, 0x1
ItemParse_usePaging_10:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
ItemParse_usePaging_20:
	mov dword [eax+0x12c], 0x1
	jmp ItemParse_usePaging_30


;ItemParse_autowrapped(itemDef_s*, int)
ItemParse_autowrapped:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [ebp+0x8]
	mov eax, [edx+0x4c]
	or eax, 0x800000
	mov [esp+0x4], eax
	mov [esp], edx
	call Window_SetStaticFlags
	mov eax, 0x1
	leave
	ret


;ItemParse_horizontalscroll(itemDef_s*, int)
ItemParse_horizontalscroll:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [ebp+0x8]
	mov eax, [edx+0x4c]
	or eax, 0x200000
	mov [esp+0x4], eax
	mov [esp], edx
	call Window_SetStaticFlags
	mov eax, 0x1
	leave
	ret


;ItemParse_type(itemDef_s*, int)
ItemParse_type:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x42c
	mov ebx, [ebp+0xc]
	mov esi, [ebp+0x8]
	add esi, 0xb4
	lea edi, [ebp-0x428]
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_type_10
	movzx eax, byte [ebp-0x418]
	cmp al, 0x28
	jz ItemParse_type_20
	cmp al, 0x2d
	jz ItemParse_type_30
	xor edx, edx
ItemParse_type_70:
	cmp dword [ebp-0x428], 0x3
	jz ItemParse_type_40
	lea eax, [ebp-0x418]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_expected_integer
	mov [esp], ebx
	call PC_SourceError
	xor eax, eax
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_type_30:
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jnz ItemParse_type_50
ItemParse_type_10:
	xor eax, eax
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_type_20:
	mov edx, esi
	mov eax, ebx
	call PC_Int_Expression_Parse
	test eax, eax
	jz ItemParse_type_10
ItemParse_type_60:
	mov edx, ebx
	mov eax, [ebp+0x8]
	call Item_ValidateTypeData
	mov eax, 0x1
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_type_40:
	mov eax, [ebp-0x420]
	mov [esi], eax
	test edx, edx
	jz ItemParse_type_60
	neg eax
	mov [esi], eax
	jmp ItemParse_type_60
ItemParse_type_50:
	mov edx, 0x1
	jmp ItemParse_type_70
	nop


;ItemParse_elementwidth(itemDef_s*, int)
ItemParse_elementwidth:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x42c
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov edx, esi
	mov eax, ebx
	call Item_ValidateTypeData
	mov [esp], ebx
	call Item_GetListBoxDef
	test eax, eax
	jz ItemParse_elementwidth_10
	lea edi, [eax+0x10]
	lea ebx, [ebp-0x428]
	mov [esp+0x4], ebx
	mov [esp], esi
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_elementwidth_10
	movzx eax, byte [ebp-0x418]
	cmp al, 0x28
	jz ItemParse_elementwidth_20
	cmp al, 0x2d
	jz ItemParse_elementwidth_30
	xor eax, eax
ItemParse_elementwidth_80:
	cmp dword [ebp-0x428], 0x3
	jz ItemParse_elementwidth_40
	lea eax, [ebp-0x418]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_expected_float_b
	mov [esp], esi
	call PC_SourceError
	xor eax, eax
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_elementwidth_20:
	mov edx, edi
	mov eax, esi
	call PC_Float_Expression_Parse
	test eax, eax
	jnz ItemParse_elementwidth_50
ItemParse_elementwidth_10:
	xor eax, eax
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_elementwidth_40:
	test eax, eax
	jz ItemParse_elementwidth_60
	mov eax, [ebp-0x41c]
	xor eax, 0x80000000
	mov [edi], eax
ItemParse_elementwidth_50:
	mov eax, 0x1
ItemParse_elementwidth_70:
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_elementwidth_60:
	mov eax, [ebp-0x41c]
	mov [edi], eax
	mov eax, 0x1
	jmp ItemParse_elementwidth_70
ItemParse_elementwidth_30:
	mov [esp+0x4], ebx
	mov [esp], esi
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_elementwidth_10
	mov eax, 0x1
	jmp ItemParse_elementwidth_80
	nop


;ItemParse_elementheight(itemDef_s*, int)
ItemParse_elementheight:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x42c
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov edx, esi
	mov eax, ebx
	call Item_ValidateTypeData
	mov [esp], ebx
	call Item_GetListBoxDef
	test eax, eax
	jz ItemParse_elementheight_10
	lea edi, [eax+0x14]
	lea ebx, [ebp-0x428]
	mov [esp+0x4], ebx
	mov [esp], esi
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_elementheight_10
	movzx eax, byte [ebp-0x418]
	cmp al, 0x28
	jz ItemParse_elementheight_20
	cmp al, 0x2d
	jz ItemParse_elementheight_30
	xor eax, eax
ItemParse_elementheight_80:
	cmp dword [ebp-0x428], 0x3
	jz ItemParse_elementheight_40
	lea eax, [ebp-0x418]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_expected_float_b
	mov [esp], esi
	call PC_SourceError
	xor eax, eax
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_elementheight_20:
	mov edx, edi
	mov eax, esi
	call PC_Float_Expression_Parse
	test eax, eax
	jnz ItemParse_elementheight_50
ItemParse_elementheight_10:
	xor eax, eax
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_elementheight_40:
	test eax, eax
	jz ItemParse_elementheight_60
	mov eax, [ebp-0x41c]
	xor eax, 0x80000000
	mov [edi], eax
ItemParse_elementheight_50:
	mov eax, 0x1
ItemParse_elementheight_70:
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_elementheight_60:
	mov eax, [ebp-0x41c]
	mov [edi], eax
	mov eax, 0x1
	jmp ItemParse_elementheight_70
ItemParse_elementheight_30:
	mov [esp+0x4], ebx
	mov [esp], esi
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_elementheight_10
	mov eax, 0x1
	jmp ItemParse_elementheight_80
	nop


;ItemParse_feeder(itemDef_s*, int)
ItemParse_feeder:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x42c
	mov ebx, [ebp+0xc]
	mov esi, [ebp+0x8]
	add esi, 0x124
	lea edi, [ebp-0x428]
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_feeder_10
	movzx eax, byte [ebp-0x418]
	cmp al, 0x28
	jz ItemParse_feeder_20
	cmp al, 0x2d
	jz ItemParse_feeder_30
	xor eax, eax
ItemParse_feeder_60:
	cmp dword [ebp-0x428], 0x3
	jz ItemParse_feeder_40
	lea eax, [ebp-0x418]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_expected_float_b
	mov [esp], ebx
	call PC_SourceError
	xor eax, eax
ItemParse_feeder_70:
	test eax, eax
	setnz al
	movzx eax, al
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_feeder_10:
	xor eax, eax
	test eax, eax
	setnz al
	movzx eax, al
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_feeder_40:
	test eax, eax
	jnz ItemParse_feeder_50
	mov eax, [ebp-0x41c]
	mov [esi], eax
	mov eax, 0x1
	test eax, eax
	setnz al
	movzx eax, al
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_feeder_50:
	mov eax, [ebp-0x41c]
	xor eax, 0x80000000
	mov [esi], eax
	mov eax, 0x1
	test eax, eax
	setnz al
	movzx eax, al
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_feeder_30:
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_feeder_10
	mov eax, 0x1
	jmp ItemParse_feeder_60
ItemParse_feeder_20:
	mov edx, esi
	mov eax, ebx
	call PC_Float_Expression_Parse
	jmp ItemParse_feeder_70
	nop


;ItemParse_elementtype(itemDef_s*, int)
ItemParse_elementtype:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x42c
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov edx, esi
	mov eax, ebx
	call Item_ValidateTypeData
	mov eax, [ebx+0x12c]
	test eax, eax
	jz ItemParse_elementtype_10
	mov [esp], ebx
	call Item_GetListBoxDef
	test eax, eax
	jz ItemParse_elementtype_10
	lea ebx, [eax+0x18]
	lea edi, [ebp-0x428]
	mov [esp+0x4], edi
	mov [esp], esi
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_elementtype_10
	movzx eax, byte [ebp-0x418]
	cmp al, 0x28
	jz ItemParse_elementtype_20
	cmp al, 0x2d
	jz ItemParse_elementtype_30
	xor edx, edx
ItemParse_elementtype_60:
	cmp dword [ebp-0x428], 0x3
	jz ItemParse_elementtype_40
	lea eax, [ebp-0x418]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_expected_integer
	mov [esp], esi
	call PC_SourceError
	xor eax, eax
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_elementtype_20:
	mov edx, ebx
	mov eax, esi
	call PC_Int_Expression_Parse
	test eax, eax
	jnz ItemParse_elementtype_50
ItemParse_elementtype_10:
	xor eax, eax
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_elementtype_40:
	mov eax, [ebp-0x420]
	mov [ebx], eax
	test edx, edx
	jz ItemParse_elementtype_50
	neg eax
	mov [ebx], eax
ItemParse_elementtype_50:
	mov eax, 0x1
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_elementtype_30:
	mov [esp+0x4], edi
	mov [esp], esi
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_elementtype_10
	mov edx, 0x1
	jmp ItemParse_elementtype_60
	nop


;ItemParse_columns(itemDef_s*, int)
ItemParse_columns:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x44c
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov edx, esi
	mov eax, ebx
	call Item_ValidateTypeData
	mov eax, [ebx+0x12c]
	test eax, eax
	jz ItemParse_columns_10
	mov [esp], ebx
	call Item_GetListBoxDef
	mov ebx, eax
	test eax, eax
	jz ItemParse_columns_10
	lea edi, [ebp-0x438]
	mov [esp+0x4], edi
	mov [esp], esi
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_columns_10
	movzx eax, byte [ebp-0x428]
	cmp al, 0x28
	jz ItemParse_columns_20
	cmp al, 0x2d
	jz ItemParse_columns_30
	xor edx, edx
ItemParse_columns_230:
	cmp dword [ebp-0x438], 0x3
	jz ItemParse_columns_40
ItemParse_columns_110:
	lea eax, [ebp-0x428]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_expected_integer
	mov [esp], esi
	call PC_SourceError
ItemParse_columns_10:
	xor eax, eax
	add esp, 0x44c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_columns_40:
	mov eax, [ebp-0x430]
	mov [ebp-0x1c], eax
	test edx, edx
	jz ItemParse_columns_50
	neg eax
	mov [ebp-0x1c], eax
ItemParse_columns_50:
	mov eax, 0x10
	cmp dword [ebp-0x1c], 0x11
	cmovl eax, [ebp-0x1c]
	mov [ebp-0x1c], eax
	mov [ebx+0x1c], eax
	mov eax, [ebp-0x1c]
	test eax, eax
	jg ItemParse_columns_60
ItemParse_columns_80:
	mov eax, 0x1
	add esp, 0x44c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_columns_60:
	mov dword [ebp-0x43c], 0x0
	jmp ItemParse_columns_70
ItemParse_columns_210:
	lea eax, [ebp-0x428]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_expected_integer
	mov [esp], esi
	call PC_SourceError
ItemParse_columns_190:
	mov dword [ebx+0x2c], 0x0
ItemParse_columns_220:
	add dword [ebp-0x43c], 0x1
	add ebx, 0x10
	mov eax, [ebp-0x43c]
	cmp eax, [ebp-0x1c]
	jge ItemParse_columns_80
ItemParse_columns_70:
	mov [esp+0x4], edi
	mov [esp], esi
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_columns_10
	movzx eax, byte [ebp-0x428]
	cmp al, 0x28
	jz ItemParse_columns_90
	cmp al, 0x2d
	jz ItemParse_columns_100
	xor edx, edx
ItemParse_columns_240:
	cmp dword [ebp-0x438], 0x3
	jnz ItemParse_columns_110
	mov eax, [ebp-0x430]
	mov [ebp-0x20], eax
	test edx, edx
	jz ItemParse_columns_120
	neg eax
	mov [ebp-0x20], eax
ItemParse_columns_120:
	mov [esp+0x4], edi
	mov [esp], esi
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_columns_10
	movzx eax, byte [ebp-0x428]
	cmp al, 0x28
	jz ItemParse_columns_130
	cmp al, 0x2d
	jz ItemParse_columns_140
	xor edx, edx
ItemParse_columns_250:
	cmp dword [ebp-0x438], 0x3
	jnz ItemParse_columns_110
	mov eax, [ebp-0x430]
	mov [ebp-0x24], eax
	test edx, edx
	jz ItemParse_columns_150
	neg eax
	mov [ebp-0x24], eax
ItemParse_columns_150:
	mov [esp+0x4], edi
	mov [esp], esi
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_columns_10
	movzx eax, byte [ebp-0x428]
	cmp al, 0x28
	jz ItemParse_columns_160
	cmp al, 0x2d
	jz ItemParse_columns_170
	xor edx, edx
ItemParse_columns_260:
	cmp dword [ebp-0x438], 0x3
	jnz ItemParse_columns_110
	mov eax, [ebp-0x430]
	mov [ebp-0x28], eax
	test edx, edx
	jz ItemParse_columns_180
	neg eax
	mov [ebp-0x28], eax
ItemParse_columns_180:
	mov eax, [ebp-0x20]
	mov [ebx+0x20], eax
	mov eax, [ebp-0x24]
	mov [ebx+0x24], eax
	mov eax, [ebp-0x28]
	mov [ebx+0x28], eax
	mov [esp+0x4], edi
	mov [esp], esi
	call PC_ReadLineHandle
	test eax, eax
	jz ItemParse_columns_190
	cmp byte [ebp-0x428], 0x2d
	jz ItemParse_columns_200
	xor ecx, ecx
ItemParse_columns_270:
	cmp dword [ebp-0x438], 0x3
	jnz ItemParse_columns_210
	mov eax, [ebp-0x430]
	mov edx, eax
	neg edx
	test ecx, ecx
	cmovnz eax, edx
	mov [ebx+0x2c], eax
	jmp ItemParse_columns_220
ItemParse_columns_20:
	lea edx, [ebp-0x1c]
	mov eax, esi
	call PC_Int_Expression_Parse
	test eax, eax
	jz ItemParse_columns_10
	jmp ItemParse_columns_50
ItemParse_columns_90:
	lea edx, [ebp-0x20]
	mov eax, esi
	call PC_Int_Expression_Parse
	test eax, eax
	jnz ItemParse_columns_120
	jmp ItemParse_columns_10
ItemParse_columns_130:
	lea edx, [ebp-0x24]
	mov eax, esi
	call PC_Int_Expression_Parse
	test eax, eax
	jnz ItemParse_columns_150
	jmp ItemParse_columns_10
ItemParse_columns_160:
	lea edx, [ebp-0x28]
	mov eax, esi
	call PC_Int_Expression_Parse
	test eax, eax
	jnz ItemParse_columns_180
	jmp ItemParse_columns_10
ItemParse_columns_30:
	mov [esp+0x4], edi
	mov [esp], esi
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_columns_10
	mov edx, 0x1
	jmp ItemParse_columns_230
ItemParse_columns_100:
	mov [esp+0x4], edi
	mov [esp], esi
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_columns_10
	mov edx, 0x1
	jmp ItemParse_columns_240
ItemParse_columns_140:
	mov [esp+0x4], edi
	mov [esp], esi
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_columns_10
	mov edx, 0x1
	jmp ItemParse_columns_250
ItemParse_columns_170:
	mov [esp+0x4], edi
	mov [esp], esi
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_columns_10
	mov edx, 0x1
	jmp ItemParse_columns_260
ItemParse_columns_200:
	mov [esp+0x4], edi
	mov [esp], esi
	call PC_ReadLineHandle
	test eax, eax
	jz ItemParse_columns_190
	mov ecx, 0x1
	jmp ItemParse_columns_270
	nop


;ItemParse_border(itemDef_s*, int)
ItemParse_border:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x42c
	mov ebx, [ebp+0xc]
	mov esi, [ebp+0x8]
	add esi, 0x3c
	lea edi, [ebp-0x428]
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_border_10
	movzx eax, byte [ebp-0x418]
	cmp al, 0x28
	jz ItemParse_border_20
	cmp al, 0x2d
	jz ItemParse_border_30
	xor edx, edx
ItemParse_border_60:
	cmp dword [ebp-0x428], 0x3
	jz ItemParse_border_40
	lea eax, [ebp-0x418]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_expected_integer
	mov [esp], ebx
	call PC_SourceError
	xor eax, eax
ItemParse_border_70:
	test eax, eax
	setnz al
	movzx eax, al
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_border_10:
	xor eax, eax
	test eax, eax
	setnz al
	movzx eax, al
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_border_40:
	mov eax, [ebp-0x420]
	mov [esi], eax
	test edx, edx
	jz ItemParse_border_50
	neg eax
	mov [esi], eax
ItemParse_border_50:
	mov eax, 0x1
	test eax, eax
	setnz al
	movzx eax, al
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_border_30:
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_border_10
	mov edx, 0x1
	jmp ItemParse_border_60
ItemParse_border_20:
	mov edx, esi
	mov eax, ebx
	call PC_Int_Expression_Parse
	jmp ItemParse_border_70


;ItemParse_bordersize(itemDef_s*, int)
ItemParse_bordersize:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x42c
	mov ebx, [ebp+0xc]
	mov esi, [ebp+0x8]
	add esi, 0x48
	lea edi, [ebp-0x428]
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_bordersize_10
	movzx eax, byte [ebp-0x418]
	cmp al, 0x28
	jz ItemParse_bordersize_20
	cmp al, 0x2d
	jz ItemParse_bordersize_30
	xor eax, eax
ItemParse_bordersize_60:
	cmp dword [ebp-0x428], 0x3
	jz ItemParse_bordersize_40
	lea eax, [ebp-0x418]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_expected_float_b
	mov [esp], ebx
	call PC_SourceError
	xor eax, eax
ItemParse_bordersize_70:
	test eax, eax
	setnz al
	movzx eax, al
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_bordersize_10:
	xor eax, eax
	test eax, eax
	setnz al
	movzx eax, al
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_bordersize_40:
	test eax, eax
	jnz ItemParse_bordersize_50
	mov eax, [ebp-0x41c]
	mov [esi], eax
	mov eax, 0x1
	test eax, eax
	setnz al
	movzx eax, al
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_bordersize_50:
	mov eax, [ebp-0x41c]
	xor eax, 0x80000000
	mov [esi], eax
	mov eax, 0x1
	test eax, eax
	setnz al
	movzx eax, al
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_bordersize_30:
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_bordersize_10
	mov eax, 0x1
	jmp ItemParse_bordersize_60
ItemParse_bordersize_20:
	mov edx, esi
	mov eax, ebx
	call PC_Float_Expression_Parse
	jmp ItemParse_bordersize_70


;ItemParse_visible(itemDef_s*, int)
ItemParse_visible:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x42c
	mov esi, [ebp+0x8]
	mov edi, [ebp+0xc]
	lea eax, [ebp-0x428]
	mov [esp+0x4], eax
	mov [esp], edi
	call PC_ReadTokenHandle
	test eax, eax
	jnz ItemParse_visible_10
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_visible_10:
	lea eax, [ebp-0x418]
	mov [esp], eax
	call String_Alloc
	mov ebx, eax
	mov dword [esp+0x4], _cstring_when
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz ItemParse_visible_20
ItemParse_visible_60:
	mov eax, [esi+0x50]
	or eax, 0x4
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov dword [esp], 0x0
	call Window_SetDynamicFlags
	mov dword [esp], 0x960
	call Z_MallocInternal
	mov [esi+0x138], eax
	mov dword [esp+0x8], 0xc8
	lea eax, [esi+0x134]
	mov [esp+0x4], eax
	mov [esp], edi
	call parse_expression
	test al, al
	jnz ItemParse_visible_30
ItemParse_visible_50:
	mov [esp], ebx
	call atoi
	test eax, eax
	jnz ItemParse_visible_40
ItemParse_visible_30:
	mov eax, 0x1
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_visible_20:
	mov dword [esp+0x4], _cstring_if
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz ItemParse_visible_50
	jmp ItemParse_visible_60
ItemParse_visible_40:
	mov eax, [esi+0x50]
	or eax, 0x4
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov dword [esp], 0x0
	call Window_SetDynamicFlags
	mov eax, 0x1
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;ItemParse_ownerdraw(itemDef_s*, int)
ItemParse_ownerdraw:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x42c
	mov ebx, [ebp+0xc]
	mov esi, [ebp+0x8]
	add esi, 0x40
	lea edi, [ebp-0x428]
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_ownerdraw_10
	movzx eax, byte [ebp-0x418]
	cmp al, 0x28
	jz ItemParse_ownerdraw_20
	cmp al, 0x2d
	jz ItemParse_ownerdraw_30
	xor edx, edx
ItemParse_ownerdraw_70:
	cmp dword [ebp-0x428], 0x3
	jz ItemParse_ownerdraw_40
	lea eax, [ebp-0x418]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_expected_integer
	mov [esp], ebx
	call PC_SourceError
	xor eax, eax
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_ownerdraw_30:
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jnz ItemParse_ownerdraw_50
ItemParse_ownerdraw_10:
	xor eax, eax
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_ownerdraw_20:
	mov edx, esi
	mov eax, ebx
	call PC_Int_Expression_Parse
	test eax, eax
	jz ItemParse_ownerdraw_10
ItemParse_ownerdraw_60:
	mov eax, [ebp+0x8]
	mov dword [eax+0xb4], 0x8
	mov eax, 0x1
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_ownerdraw_40:
	mov eax, [ebp-0x420]
	mov [esi], eax
	test edx, edx
	jz ItemParse_ownerdraw_60
	neg eax
	mov [esi], eax
	jmp ItemParse_ownerdraw_60
ItemParse_ownerdraw_50:
	mov edx, 0x1
	jmp ItemParse_ownerdraw_70
	nop


;ItemParse_align(itemDef_s*, int)
ItemParse_align:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x42c
	mov ebx, [ebp+0xc]
	mov esi, [ebp+0x8]
	add esi, 0xbc
	lea edi, [ebp-0x428]
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_align_10
	movzx eax, byte [ebp-0x418]
	cmp al, 0x28
	jz ItemParse_align_20
	cmp al, 0x2d
	jz ItemParse_align_30
	xor edx, edx
ItemParse_align_60:
	cmp dword [ebp-0x428], 0x3
	jz ItemParse_align_40
	lea eax, [ebp-0x418]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_expected_integer
	mov [esp], ebx
	call PC_SourceError
	xor eax, eax
ItemParse_align_70:
	test eax, eax
	setnz al
	movzx eax, al
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_align_10:
	xor eax, eax
	test eax, eax
	setnz al
	movzx eax, al
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_align_40:
	mov eax, [ebp-0x420]
	mov [esi], eax
	test edx, edx
	jz ItemParse_align_50
	neg eax
	mov [esi], eax
ItemParse_align_50:
	mov eax, 0x1
	test eax, eax
	setnz al
	movzx eax, al
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_align_30:
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_align_10
	mov edx, 0x1
	jmp ItemParse_align_60
ItemParse_align_20:
	mov edx, esi
	mov eax, ebx
	call PC_Int_Expression_Parse
	jmp ItemParse_align_70
	nop


;ItemParse_textalign(itemDef_s*, int)
ItemParse_textalign:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x42c
	mov edi, [ebp+0xc]
	mov ebx, [ebp+0x8]
	add ebx, 0xc4
	lea esi, [ebp-0x428]
	mov [esp+0x4], esi
	mov [esp], edi
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_textalign_10
	movzx eax, byte [ebp-0x418]
	cmp al, 0x28
	jz ItemParse_textalign_20
	cmp al, 0x2d
	jz ItemParse_textalign_30
	xor edx, edx
ItemParse_textalign_90:
	cmp dword [ebp-0x428], 0x3
	jz ItemParse_textalign_40
	lea eax, [ebp-0x418]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_expected_integer
	mov [esp], edi
	call PC_SourceError
	xor eax, eax
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_textalign_30:
	mov [esp+0x4], esi
	mov [esp], edi
	call PC_ReadTokenHandle
	test eax, eax
	jnz ItemParse_textalign_50
ItemParse_textalign_10:
	xor eax, eax
ItemParse_textalign_70:
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_textalign_20:
	mov edx, ebx
	mov eax, edi
	call PC_Int_Expression_Parse
	test eax, eax
	jz ItemParse_textalign_10
ItemParse_textalign_80:
	mov edx, [ebp+0x8]
	mov eax, [edx+0xc4]
	cmp eax, 0xf
	ja ItemParse_textalign_60
	and eax, 0x3
	cmp eax, 0x3
	jz ItemParse_textalign_60
	mov eax, 0x1
	jmp ItemParse_textalign_70
ItemParse_textalign_40:
	mov eax, [ebp-0x420]
	mov [ebx], eax
	test edx, edx
	jz ItemParse_textalign_80
	neg eax
	mov [ebx], eax
	jmp ItemParse_textalign_80
ItemParse_textalign_60:
	mov dword [esp+0x4], _cstring_expected_item_al
	mov [esp], edi
	call PC_SourceError
	xor eax, eax
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_textalign_50:
	mov edx, 0x1
	jmp ItemParse_textalign_90
	nop


;ItemParse_textalignx(itemDef_s*, int)
ItemParse_textalignx:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x42c
	mov ebx, [ebp+0xc]
	mov esi, [ebp+0x8]
	add esi, 0xc8
	lea edi, [ebp-0x428]
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_textalignx_10
	movzx eax, byte [ebp-0x418]
	cmp al, 0x28
	jz ItemParse_textalignx_20
	cmp al, 0x2d
	jz ItemParse_textalignx_30
	xor eax, eax
ItemParse_textalignx_60:
	cmp dword [ebp-0x428], 0x3
	jz ItemParse_textalignx_40
	lea eax, [ebp-0x418]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_expected_float_b
	mov [esp], ebx
	call PC_SourceError
	xor eax, eax
ItemParse_textalignx_70:
	test eax, eax
	setnz al
	movzx eax, al
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_textalignx_10:
	xor eax, eax
	test eax, eax
	setnz al
	movzx eax, al
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_textalignx_40:
	test eax, eax
	jnz ItemParse_textalignx_50
	mov eax, [ebp-0x41c]
	mov [esi], eax
	mov eax, 0x1
	test eax, eax
	setnz al
	movzx eax, al
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_textalignx_50:
	mov eax, [ebp-0x41c]
	xor eax, 0x80000000
	mov [esi], eax
	mov eax, 0x1
	test eax, eax
	setnz al
	movzx eax, al
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_textalignx_30:
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_textalignx_10
	mov eax, 0x1
	jmp ItemParse_textalignx_60
ItemParse_textalignx_20:
	mov edx, esi
	mov eax, ebx
	call PC_Float_Expression_Parse
	jmp ItemParse_textalignx_70
	nop


;ItemParse_textaligny(itemDef_s*, int)
ItemParse_textaligny:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x42c
	mov ebx, [ebp+0xc]
	mov esi, [ebp+0x8]
	add esi, 0xcc
	lea edi, [ebp-0x428]
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_textaligny_10
	movzx eax, byte [ebp-0x418]
	cmp al, 0x28
	jz ItemParse_textaligny_20
	cmp al, 0x2d
	jz ItemParse_textaligny_30
	xor eax, eax
ItemParse_textaligny_60:
	cmp dword [ebp-0x428], 0x3
	jz ItemParse_textaligny_40
	lea eax, [ebp-0x418]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_expected_float_b
	mov [esp], ebx
	call PC_SourceError
	xor eax, eax
ItemParse_textaligny_70:
	test eax, eax
	setnz al
	movzx eax, al
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_textaligny_10:
	xor eax, eax
	test eax, eax
	setnz al
	movzx eax, al
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_textaligny_40:
	test eax, eax
	jnz ItemParse_textaligny_50
	mov eax, [ebp-0x41c]
	mov [esi], eax
	mov eax, 0x1
	test eax, eax
	setnz al
	movzx eax, al
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_textaligny_50:
	mov eax, [ebp-0x41c]
	xor eax, 0x80000000
	mov [esi], eax
	mov eax, 0x1
	test eax, eax
	setnz al
	movzx eax, al
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_textaligny_30:
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_textaligny_10
	mov eax, 0x1
	jmp ItemParse_textaligny_60
ItemParse_textaligny_20:
	mov edx, esi
	mov eax, ebx
	call PC_Float_Expression_Parse
	jmp ItemParse_textaligny_70
	nop


;ItemParse_textscale(itemDef_s*, int)
ItemParse_textscale:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x42c
	mov ebx, [ebp+0xc]
	mov esi, [ebp+0x8]
	add esi, 0xd0
	lea edi, [ebp-0x428]
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_textscale_10
	movzx eax, byte [ebp-0x418]
	cmp al, 0x28
	jz ItemParse_textscale_20
	cmp al, 0x2d
	jz ItemParse_textscale_30
	xor eax, eax
ItemParse_textscale_60:
	cmp dword [ebp-0x428], 0x3
	jz ItemParse_textscale_40
	lea eax, [ebp-0x418]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_expected_float_b
	mov [esp], ebx
	call PC_SourceError
	xor eax, eax
ItemParse_textscale_70:
	test eax, eax
	setnz al
	movzx eax, al
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_textscale_10:
	xor eax, eax
	test eax, eax
	setnz al
	movzx eax, al
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_textscale_40:
	test eax, eax
	jnz ItemParse_textscale_50
	mov eax, [ebp-0x41c]
	mov [esi], eax
	mov eax, 0x1
	test eax, eax
	setnz al
	movzx eax, al
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_textscale_50:
	mov eax, [ebp-0x41c]
	xor eax, 0x80000000
	mov [esi], eax
	mov eax, 0x1
	test eax, eax
	setnz al
	movzx eax, al
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_textscale_30:
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_textscale_10
	mov eax, 0x1
	jmp ItemParse_textscale_60
ItemParse_textscale_20:
	mov edx, esi
	mov eax, ebx
	call PC_Float_Expression_Parse
	jmp ItemParse_textscale_70
	nop


;ItemParse_textstyle(itemDef_s*, int)
ItemParse_textstyle:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x42c
	mov ebx, [ebp+0xc]
	mov esi, [ebp+0x8]
	add esi, 0xd4
	lea edi, [ebp-0x428]
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_textstyle_10
	movzx eax, byte [ebp-0x418]
	cmp al, 0x28
	jz ItemParse_textstyle_20
	cmp al, 0x2d
	jz ItemParse_textstyle_30
	xor edx, edx
ItemParse_textstyle_60:
	cmp dword [ebp-0x428], 0x3
	jz ItemParse_textstyle_40
	lea eax, [ebp-0x418]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_expected_integer
	mov [esp], ebx
	call PC_SourceError
	xor eax, eax
ItemParse_textstyle_70:
	test eax, eax
	setnz al
	movzx eax, al
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_textstyle_10:
	xor eax, eax
	test eax, eax
	setnz al
	movzx eax, al
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_textstyle_40:
	mov eax, [ebp-0x420]
	mov [esi], eax
	test edx, edx
	jz ItemParse_textstyle_50
	neg eax
	mov [esi], eax
ItemParse_textstyle_50:
	mov eax, 0x1
	test eax, eax
	setnz al
	movzx eax, al
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_textstyle_30:
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_textstyle_10
	mov edx, 0x1
	jmp ItemParse_textstyle_60
ItemParse_textstyle_20:
	mov edx, esi
	mov eax, ebx
	call PC_Int_Expression_Parse
	jmp ItemParse_textstyle_70
	nop


;ItemParse_textfont(itemDef_s*, int)
ItemParse_textfont:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x42c
	mov ebx, [ebp+0xc]
	mov esi, [ebp+0x8]
	add esi, 0xc0
	lea edi, [ebp-0x428]
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_textfont_10
	movzx eax, byte [ebp-0x418]
	cmp al, 0x28
	jz ItemParse_textfont_20
	cmp al, 0x2d
	jz ItemParse_textfont_30
	xor edx, edx
ItemParse_textfont_60:
	cmp dword [ebp-0x428], 0x3
	jz ItemParse_textfont_40
	lea eax, [ebp-0x418]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_expected_integer
	mov [esp], ebx
	call PC_SourceError
	xor eax, eax
ItemParse_textfont_70:
	test eax, eax
	setnz al
	movzx eax, al
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_textfont_10:
	xor eax, eax
	test eax, eax
	setnz al
	movzx eax, al
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_textfont_40:
	mov eax, [ebp-0x420]
	mov [esi], eax
	test edx, edx
	jz ItemParse_textfont_50
	neg eax
	mov [esi], eax
ItemParse_textfont_50:
	mov eax, 0x1
	test eax, eax
	setnz al
	movzx eax, al
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_textfont_30:
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_textfont_10
	mov edx, 0x1
	jmp ItemParse_textfont_60
ItemParse_textfont_20:
	mov edx, esi
	mov eax, ebx
	call PC_Int_Expression_Parse
	jmp ItemParse_textfont_70
	nop


;ItemParse_backcolor(itemDef_s*, int)
ItemParse_backcolor:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x43c
	mov esi, [ebp+0xc]
	mov ebx, [ebp+0x8]
	mov edi, 0x4
ItemParse_backcolor_60:
	lea eax, [ebp-0x42c]
	mov [esp+0x4], eax
	mov [esp], esi
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_backcolor_10
	movzx eax, byte [ebp-0x41c]
	cmp al, 0x28
	jz ItemParse_backcolor_20
	cmp al, 0x2d
	jz ItemParse_backcolor_30
	xor eax, eax
ItemParse_backcolor_100:
	cmp dword [ebp-0x42c], 0x3
	jnz ItemParse_backcolor_40
	test eax, eax
	jz ItemParse_backcolor_50
	mov eax, [ebp-0x420]
	xor eax, 0x80000000
	mov [ebp-0x1c], eax
ItemParse_backcolor_90:
	mov [ebx+0x68], eax
	add ebx, 0x4
	sub edi, 0x1
	jnz ItemParse_backcolor_60
	mov eax, 0x1
	jmp ItemParse_backcolor_70
ItemParse_backcolor_30:
	lea eax, [ebp-0x42c]
	mov [esp+0x4], eax
	mov [esp], esi
	call PC_ReadTokenHandle
	test eax, eax
	jnz ItemParse_backcolor_80
ItemParse_backcolor_10:
	xor eax, eax
ItemParse_backcolor_70:
	add esp, 0x43c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_backcolor_40:
	lea eax, [ebp-0x41c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_expected_float_b
	mov [esp], esi
	call PC_SourceError
	xor eax, eax
	add esp, 0x43c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_backcolor_50:
	mov eax, [ebp-0x420]
	mov [ebp-0x1c], eax
	jmp ItemParse_backcolor_90
ItemParse_backcolor_20:
	lea edx, [ebp-0x1c]
	mov eax, esi
	call PC_Float_Expression_Parse
	test eax, eax
	jz ItemParse_backcolor_10
	mov eax, [ebp-0x1c]
	jmp ItemParse_backcolor_90
ItemParse_backcolor_80:
	mov eax, 0x1
	jmp ItemParse_backcolor_100
	nop


;ItemParse_forecolor(itemDef_s*, int)
ItemParse_forecolor:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x43c
	mov esi, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov ebx, esi
ItemParse_forecolor_60:
	lea eax, [ebp-0x42c]
	mov [esp+0x4], eax
	mov [esp], edi
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_forecolor_10
	movzx eax, byte [ebp-0x41c]
	cmp al, 0x28
	jz ItemParse_forecolor_20
	cmp al, 0x2d
	jz ItemParse_forecolor_30
	xor eax, eax
ItemParse_forecolor_100:
	cmp dword [ebp-0x42c], 0x3
	jnz ItemParse_forecolor_40
	test eax, eax
	jz ItemParse_forecolor_50
	mov eax, [ebp-0x420]
	xor eax, 0x80000000
	mov [ebp-0x1c], eax
ItemParse_forecolor_90:
	mov [ebx+0x58], eax
	mov eax, [esi+0x50]
	or eax, 0x10000
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov dword [esp], 0x0
	call Window_SetDynamicFlags
	add ebx, 0x4
	lea eax, [esi+0x10]
	cmp eax, ebx
	jnz ItemParse_forecolor_60
	mov eax, 0x1
	jmp ItemParse_forecolor_70
ItemParse_forecolor_30:
	lea eax, [ebp-0x42c]
	mov [esp+0x4], eax
	mov [esp], edi
	call PC_ReadTokenHandle
	test eax, eax
	jnz ItemParse_forecolor_80
ItemParse_forecolor_10:
	xor eax, eax
ItemParse_forecolor_70:
	add esp, 0x43c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_forecolor_40:
	lea eax, [ebp-0x41c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_expected_float_b
	mov [esp], edi
	call PC_SourceError
	xor eax, eax
	add esp, 0x43c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_forecolor_50:
	mov eax, [ebp-0x420]
	mov [ebp-0x1c], eax
	jmp ItemParse_forecolor_90
ItemParse_forecolor_20:
	lea edx, [ebp-0x1c]
	mov eax, edi
	call PC_Float_Expression_Parse
	test eax, eax
	jz ItemParse_forecolor_10
	mov eax, [ebp-0x1c]
	jmp ItemParse_forecolor_90
ItemParse_forecolor_80:
	mov eax, 0x1
	jmp ItemParse_forecolor_100


;ItemParse_bordercolor(itemDef_s*, int)
ItemParse_bordercolor:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x43c
	mov esi, [ebp+0xc]
	mov ebx, [ebp+0x8]
	mov edi, 0x4
ItemParse_bordercolor_60:
	lea eax, [ebp-0x42c]
	mov [esp+0x4], eax
	mov [esp], esi
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_bordercolor_10
	movzx eax, byte [ebp-0x41c]
	cmp al, 0x28
	jz ItemParse_bordercolor_20
	cmp al, 0x2d
	jz ItemParse_bordercolor_30
	xor eax, eax
ItemParse_bordercolor_100:
	cmp dword [ebp-0x42c], 0x3
	jnz ItemParse_bordercolor_40
	test eax, eax
	jz ItemParse_bordercolor_50
	mov eax, [ebp-0x420]
	xor eax, 0x80000000
	mov [ebp-0x1c], eax
ItemParse_bordercolor_90:
	mov [ebx+0x78], eax
	add ebx, 0x4
	sub edi, 0x1
	jnz ItemParse_bordercolor_60
	mov eax, 0x1
	jmp ItemParse_bordercolor_70
ItemParse_bordercolor_30:
	lea eax, [ebp-0x42c]
	mov [esp+0x4], eax
	mov [esp], esi
	call PC_ReadTokenHandle
	test eax, eax
	jnz ItemParse_bordercolor_80
ItemParse_bordercolor_10:
	xor eax, eax
ItemParse_bordercolor_70:
	add esp, 0x43c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_bordercolor_40:
	lea eax, [ebp-0x41c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_expected_float_b
	mov [esp], esi
	call PC_SourceError
	xor eax, eax
	add esp, 0x43c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_bordercolor_50:
	mov eax, [ebp-0x420]
	mov [ebp-0x1c], eax
	jmp ItemParse_bordercolor_90
ItemParse_bordercolor_20:
	lea edx, [ebp-0x1c]
	mov eax, esi
	call PC_Float_Expression_Parse
	test eax, eax
	jz ItemParse_bordercolor_10
	mov eax, [ebp-0x1c]
	jmp ItemParse_bordercolor_90
ItemParse_bordercolor_80:
	mov eax, 0x1
	jmp ItemParse_bordercolor_100
	nop


;ItemParse_outlinecolor(itemDef_s*, int)
ItemParse_outlinecolor:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x43c
	mov esi, [ebp+0xc]
	mov ebx, [ebp+0x8]
	add ebx, 0x88
	mov edi, 0x4
ItemParse_outlinecolor_60:
	lea eax, [ebp-0x42c]
	mov [esp+0x4], eax
	mov [esp], esi
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_outlinecolor_10
	movzx eax, byte [ebp-0x41c]
	cmp al, 0x28
	jz ItemParse_outlinecolor_20
	cmp al, 0x2d
	jz ItemParse_outlinecolor_30
	xor eax, eax
ItemParse_outlinecolor_100:
	cmp dword [ebp-0x42c], 0x3
	jnz ItemParse_outlinecolor_40
	test eax, eax
	jz ItemParse_outlinecolor_50
	mov eax, [ebp-0x420]
	xor eax, 0x80000000
	mov [ebp-0x1c], eax
ItemParse_outlinecolor_90:
	mov [ebx], eax
	add ebx, 0x4
	sub edi, 0x1
	jnz ItemParse_outlinecolor_60
	mov eax, 0x1
	jmp ItemParse_outlinecolor_70
ItemParse_outlinecolor_30:
	lea eax, [ebp-0x42c]
	mov [esp+0x4], eax
	mov [esp], esi
	call PC_ReadTokenHandle
	test eax, eax
	jnz ItemParse_outlinecolor_80
ItemParse_outlinecolor_10:
	xor eax, eax
ItemParse_outlinecolor_70:
	add esp, 0x43c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_outlinecolor_40:
	lea eax, [ebp-0x41c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_expected_float_b
	mov [esp], esi
	call PC_SourceError
	xor eax, eax
	add esp, 0x43c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_outlinecolor_50:
	mov eax, [ebp-0x420]
	mov [ebp-0x1c], eax
	jmp ItemParse_outlinecolor_90
ItemParse_outlinecolor_20:
	lea edx, [ebp-0x1c]
	mov eax, esi
	call PC_Float_Expression_Parse
	test eax, eax
	jz ItemParse_outlinecolor_10
	mov eax, [ebp-0x1c]
	jmp ItemParse_outlinecolor_90
ItemParse_outlinecolor_80:
	mov eax, 0x1
	jmp ItemParse_outlinecolor_100


;ItemParse_background(itemDef_s*, int)
ItemParse_background:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x464
	lea eax, [ebp-0x458]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call PC_ReadTokenHandle
	test eax, eax
	jnz ItemParse_background_10
	add esp, 0x464
	pop ebx
	pop ebp
	ret
ItemParse_background_10:
	lea eax, [ebp-0x448]
	mov [esp], eax
	call String_Alloc
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], eax
	lea ebx, [ebp-0x48]
	mov [esp], ebx
	call Q_strncpyz
	mov [esp], ebx
	call Q_strlwr
	mov edx, [ebp+0x8]
	mov eax, [edx+0x130]
	mov [esp+0x4], eax
	mov [esp], ebx
	call Material_RegisterHandle
	mov edx, [ebp+0x8]
	mov [edx+0x98], eax
	mov eax, 0x1
	add esp, 0x464
	pop ebx
	pop ebp
	ret
	nop


;ItemParse_onFocus(itemDef_s*, int)
ItemParse_onFocus:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov eax, [ebp+0xc]
	mov edx, [ebp+0x8]
	add edx, 0x104
	call PC_Script_Parse
	test eax, eax
	setnz al
	movzx eax, al
	leave
	ret
	nop


;ItemParse_leaveFocus(itemDef_s*, int)
ItemParse_leaveFocus:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov eax, [ebp+0xc]
	mov edx, [ebp+0x8]
	add edx, 0x108
	call PC_Script_Parse
	test eax, eax
	setnz al
	movzx eax, al
	leave
	ret
	nop


;ItemParse_mouseEnter(itemDef_s*, int)
ItemParse_mouseEnter:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov eax, [ebp+0xc]
	mov edx, [ebp+0x8]
	add edx, 0xf4
	call PC_Script_Parse
	test eax, eax
	setnz al
	movzx eax, al
	leave
	ret
	nop


;ItemParse_mouseExit(itemDef_s*, int)
ItemParse_mouseExit:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov eax, [ebp+0xc]
	mov edx, [ebp+0x8]
	add edx, 0xf8
	call PC_Script_Parse
	test eax, eax
	setnz al
	movzx eax, al
	leave
	ret
	nop


;ItemParse_mouseEnterText(itemDef_s*, int)
ItemParse_mouseEnterText:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov eax, [ebp+0xc]
	mov edx, [ebp+0x8]
	add edx, 0xec
	call PC_Script_Parse
	test eax, eax
	setnz al
	movzx eax, al
	leave
	ret
	nop


;ItemParse_mouseExitText(itemDef_s*, int)
ItemParse_mouseExitText:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov eax, [ebp+0xc]
	mov edx, [ebp+0x8]
	add edx, 0xf0
	call PC_Script_Parse
	test eax, eax
	setnz al
	movzx eax, al
	leave
	ret
	nop


;ItemParse_action(itemDef_s*, int)
ItemParse_action:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov eax, [ebp+0xc]
	mov edx, [ebp+0x8]
	add edx, 0xfc
	call PC_Script_Parse
	test eax, eax
	setnz al
	movzx eax, al
	leave
	ret
	nop


;ItemParse_accept(itemDef_s*, int)
ItemParse_accept:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov eax, [ebp+0xc]
	mov edx, [ebp+0x8]
	add edx, 0x100
	call PC_Script_Parse
	test eax, eax
	setnz al
	movzx eax, al
	leave
	ret
	nop


;ItemParse_special(itemDef_s*, int)
ItemParse_special:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x42c
	mov ebx, [ebp+0xc]
	mov esi, [ebp+0x8]
	add esi, 0x124
	lea edi, [ebp-0x428]
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_special_10
	movzx eax, byte [ebp-0x418]
	cmp al, 0x28
	jz ItemParse_special_20
	cmp al, 0x2d
	jz ItemParse_special_30
	xor eax, eax
ItemParse_special_60:
	cmp dword [ebp-0x428], 0x3
	jz ItemParse_special_40
	lea eax, [ebp-0x418]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_expected_float_b
	mov [esp], ebx
	call PC_SourceError
	xor eax, eax
ItemParse_special_70:
	test eax, eax
	setnz al
	movzx eax, al
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_special_10:
	xor eax, eax
	test eax, eax
	setnz al
	movzx eax, al
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_special_40:
	test eax, eax
	jnz ItemParse_special_50
	mov eax, [ebp-0x41c]
	mov [esi], eax
	mov eax, 0x1
	test eax, eax
	setnz al
	movzx eax, al
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_special_50:
	mov eax, [ebp-0x41c]
	xor eax, 0x80000000
	mov [esi], eax
	mov eax, 0x1
	test eax, eax
	setnz al
	movzx eax, al
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_special_30:
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_special_10
	mov eax, 0x1
	jmp ItemParse_special_60
ItemParse_special_20:
	mov edx, esi
	mov eax, ebx
	call PC_Float_Expression_Parse
	jmp ItemParse_special_70
	nop


;ItemParse_dvar(itemDef_s*, int)
ItemParse_dvar:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x420
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov edx, ebx
	mov eax, esi
	call Item_ValidateTypeData
	lea eax, [ebp-0x418]
	mov [esp+0x4], eax
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jnz ItemParse_dvar_10
	add esp, 0x420
	pop ebx
	pop esi
	pop ebp
	ret
ItemParse_dvar_10:
	lea eax, [ebp-0x408]
	mov [esp], eax
	call String_Alloc
	mov [esi+0x10c], eax
	mov ebx, [esi+0x12c]
	test ebx, ebx
	jz ItemParse_dvar_20
	mov [esp], esi
	call Item_IsEditFieldDef
	test eax, eax
	jnz ItemParse_dvar_30
ItemParse_dvar_20:
	mov eax, 0x1
	add esp, 0x420
	pop ebx
	pop esi
	pop ebp
	ret
ItemParse_dvar_30:
	mov [esp], esi
	call Item_GetEditFieldDef
	mov edx, 0xbf800000
	mov [eax], edx
	mov [eax+0x4], edx
	mov [eax+0x8], edx
	mov eax, 0x1
	add esp, 0x420
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;ItemParse_maxChars(itemDef_s*, int)
ItemParse_maxChars:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x43c
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov edx, ebx
	mov eax, esi
	call Item_ValidateTypeData
	mov eax, [esi+0x12c]
	test eax, eax
	jz ItemParse_maxChars_10
	lea edi, [ebp-0x42c]
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_maxChars_10
	movzx eax, byte [ebp-0x41c]
	cmp al, 0x28
	jz ItemParse_maxChars_20
	cmp al, 0x2d
	jz ItemParse_maxChars_30
	xor edx, edx
ItemParse_maxChars_60:
	cmp dword [ebp-0x42c], 0x3
	jz ItemParse_maxChars_40
	lea eax, [ebp-0x41c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_expected_integer
	mov [esp], ebx
	call PC_SourceError
	xor eax, eax
	add esp, 0x43c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_maxChars_20:
	lea edx, [ebp-0x1c]
	mov eax, ebx
	call PC_Int_Expression_Parse
	test eax, eax
	jnz ItemParse_maxChars_50
ItemParse_maxChars_10:
	xor eax, eax
	add esp, 0x43c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_maxChars_40:
	mov eax, [ebp-0x424]
	mov [ebp-0x1c], eax
	test edx, edx
	jz ItemParse_maxChars_50
	neg eax
	mov [ebp-0x1c], eax
ItemParse_maxChars_50:
	mov [esp], esi
	call Item_GetEditFieldDef
	mov edx, eax
	test eax, eax
	jz ItemParse_maxChars_10
	mov eax, [ebp-0x1c]
	mov [edx+0x10], eax
	mov eax, 0x1
	add esp, 0x43c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_maxChars_30:
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_maxChars_10
	mov edx, 0x1
	jmp ItemParse_maxChars_60
	nop


;Item_Parse_maxCharsGotoNext(itemDef_s*, int)
Item_Parse_maxCharsGotoNext:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov eax, ebx
	call Item_ValidateTypeData
	mov eax, [ebx+0x12c]
	test eax, eax
	jz Item_Parse_maxCharsGotoNext_10
	mov [esp], ebx
	call Item_GetEditFieldDef
	test eax, eax
	jz Item_Parse_maxCharsGotoNext_10
	mov dword [eax+0x14], 0x1
	mov eax, 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Item_Parse_maxCharsGotoNext_10:
	xor eax, eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;ItemParse_maxPaintChars(itemDef_s*, int)
ItemParse_maxPaintChars:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x43c
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov edx, ebx
	mov eax, esi
	call Item_ValidateTypeData
	mov eax, [esi+0x12c]
	test eax, eax
	jz ItemParse_maxPaintChars_10
	lea edi, [ebp-0x42c]
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_maxPaintChars_10
	movzx eax, byte [ebp-0x41c]
	cmp al, 0x28
	jz ItemParse_maxPaintChars_20
	cmp al, 0x2d
	jz ItemParse_maxPaintChars_30
	xor edx, edx
ItemParse_maxPaintChars_60:
	cmp dword [ebp-0x42c], 0x3
	jz ItemParse_maxPaintChars_40
	lea eax, [ebp-0x41c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_expected_integer
	mov [esp], ebx
	call PC_SourceError
	xor eax, eax
	add esp, 0x43c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_maxPaintChars_20:
	lea edx, [ebp-0x1c]
	mov eax, ebx
	call PC_Int_Expression_Parse
	test eax, eax
	jnz ItemParse_maxPaintChars_50
ItemParse_maxPaintChars_10:
	xor eax, eax
	add esp, 0x43c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_maxPaintChars_40:
	mov eax, [ebp-0x424]
	mov [ebp-0x1c], eax
	test edx, edx
	jz ItemParse_maxPaintChars_50
	neg eax
	mov [ebp-0x1c], eax
ItemParse_maxPaintChars_50:
	mov [esp], esi
	call Item_GetEditFieldDef
	mov edx, eax
	test eax, eax
	jz ItemParse_maxPaintChars_10
	mov eax, [ebp-0x1c]
	mov [edx+0x18], eax
	mov eax, 0x1
	add esp, 0x43c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_maxPaintChars_30:
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_maxPaintChars_10
	mov edx, 0x1
	jmp ItemParse_maxPaintChars_60
	nop


;ItemParse_focusSound(itemDef_s*, int)
ItemParse_focusSound:
	push ebp
	mov ebp, esp
	sub esp, 0x428
	lea eax, [ebp-0x418]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call PC_ReadTokenHandle
	test eax, eax
	jnz ItemParse_focusSound_10
	leave
	ret
ItemParse_focusSound_10:
	lea eax, [ebp-0x408]
	mov [esp], eax
	call String_Alloc
	mov [esp], eax
	call Com_FindSoundAlias
	mov edx, [ebp+0x8]
	mov [edx+0x120], eax
	mov eax, 0x1
	leave
	ret


;ItemParse_dvarFloat(itemDef_s*, int)
ItemParse_dvarFloat:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x42c
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov edx, esi
	mov eax, ebx
	call Item_ValidateTypeData
	mov eax, [ebx+0x12c]
	test eax, eax
	jz ItemParse_dvarFloat_10
	mov [esp], ebx
	call Item_GetEditFieldDef
	mov edi, eax
	test eax, eax
	jz ItemParse_dvarFloat_10
	lea eax, [ebp-0x428]
	mov [esp+0x4], eax
	mov [esp], esi
	call PC_ReadTokenHandle
	test eax, eax
	jnz ItemParse_dvarFloat_20
ItemParse_dvarFloat_10:
	xor eax, eax
ItemParse_dvarFloat_130:
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_dvarFloat_20:
	lea eax, [ebp-0x418]
	mov [esp], eax
	call String_Alloc
	mov [ebx+0x10c], eax
	lea ebx, [edi+0x8]
	lea eax, [ebp-0x428]
	mov [esp+0x4], eax
	mov [esp], esi
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_dvarFloat_10
	movzx eax, byte [ebp-0x418]
	cmp al, 0x28
	jz ItemParse_dvarFloat_30
	cmp al, 0x2d
	jz ItemParse_dvarFloat_40
	xor eax, eax
ItemParse_dvarFloat_150:
	cmp dword [ebp-0x428], 0x3
	jnz ItemParse_dvarFloat_50
	test eax, eax
	jz ItemParse_dvarFloat_60
	mov eax, [ebp-0x41c]
	xor eax, 0x80000000
	mov [ebx], eax
ItemParse_dvarFloat_140:
	lea eax, [ebp-0x428]
	mov [esp+0x4], eax
	mov [esp], esi
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_dvarFloat_10
	movzx eax, byte [ebp-0x418]
	cmp al, 0x28
	jz ItemParse_dvarFloat_70
	cmp al, 0x2d
	jz ItemParse_dvarFloat_80
	xor eax, eax
ItemParse_dvarFloat_170:
	cmp dword [ebp-0x428], 0x3
	jnz ItemParse_dvarFloat_50
	test eax, eax
	jz ItemParse_dvarFloat_90
	mov eax, [ebp-0x41c]
	xor eax, 0x80000000
	mov [edi], eax
ItemParse_dvarFloat_160:
	lea ebx, [edi+0x4]
	lea eax, [ebp-0x428]
	mov [esp+0x4], eax
	mov [esp], esi
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_dvarFloat_10
	movzx eax, byte [ebp-0x418]
	cmp al, 0x28
	jz ItemParse_dvarFloat_100
	cmp al, 0x2d
	jz ItemParse_dvarFloat_110
	xor eax, eax
ItemParse_dvarFloat_180:
	cmp dword [ebp-0x428], 0x3
	jnz ItemParse_dvarFloat_50
	test eax, eax
	jz ItemParse_dvarFloat_120
	mov eax, [ebp-0x41c]
	xor eax, 0x80000000
	mov [ebx], eax
	mov eax, 0x1
	jmp ItemParse_dvarFloat_130
ItemParse_dvarFloat_50:
	lea eax, [ebp-0x418]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_expected_float_b
	mov [esp], esi
	call PC_SourceError
	xor eax, eax
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_dvarFloat_60:
	mov eax, [ebp-0x41c]
	mov [ebx], eax
	jmp ItemParse_dvarFloat_140
ItemParse_dvarFloat_30:
	mov edx, ebx
	mov eax, esi
	call PC_Float_Expression_Parse
	test eax, eax
	jnz ItemParse_dvarFloat_140
	jmp ItemParse_dvarFloat_10
ItemParse_dvarFloat_40:
	lea eax, [ebp-0x428]
	mov [esp+0x4], eax
	mov [esp], esi
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_dvarFloat_10
	mov eax, 0x1
	jmp ItemParse_dvarFloat_150
ItemParse_dvarFloat_90:
	mov eax, [ebp-0x41c]
	mov [edi], eax
	jmp ItemParse_dvarFloat_160
ItemParse_dvarFloat_70:
	mov edx, edi
	mov eax, esi
	call PC_Float_Expression_Parse
	test eax, eax
	jnz ItemParse_dvarFloat_160
	jmp ItemParse_dvarFloat_10
ItemParse_dvarFloat_80:
	lea eax, [ebp-0x428]
	mov [esp+0x4], eax
	mov [esp], esi
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_dvarFloat_10
	mov eax, 0x1
	jmp ItemParse_dvarFloat_170
ItemParse_dvarFloat_120:
	mov eax, [ebp-0x41c]
	mov [ebx], eax
	mov eax, 0x1
	jmp ItemParse_dvarFloat_130
ItemParse_dvarFloat_100:
	mov edx, ebx
	mov eax, esi
	call PC_Float_Expression_Parse
	test eax, eax
	jz ItemParse_dvarFloat_10
	mov eax, 0x1
	jmp ItemParse_dvarFloat_130
ItemParse_dvarFloat_110:
	lea eax, [ebp-0x428]
	mov [esp+0x4], eax
	mov [esp], esi
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_dvarFloat_10
	mov eax, 0x1
	jmp ItemParse_dvarFloat_180
	nop


;ItemParse_dvarStrList(itemDef_s*, int)
ItemParse_dvarStrList:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x42c
	mov ebx, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov edx, edi
	mov eax, ebx
	call Item_ValidateTypeData
	mov eax, [ebx+0x12c]
	test eax, eax
	jz ItemParse_dvarStrList_10
	cmp dword [ebx+0xb4], 0xc
	jz ItemParse_dvarStrList_20
ItemParse_dvarStrList_10:
	xor eax, eax
ItemParse_dvarStrList_80:
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_dvarStrList_20:
	mov [esp], ebx
	call Item_GetMultiDef
	mov esi, eax
	mov dword [eax+0x180], 0x0
	mov dword [eax+0x184], 0x1
	lea eax, [ebp-0x428]
	mov [esp+0x4], eax
	mov [esp], edi
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_dvarStrList_10
	cmp byte [ebp-0x418], 0x7b
	jnz ItemParse_dvarStrList_10
ItemParse_dvarStrList_90:
	xor ebx, ebx
ItemParse_dvarStrList_50:
	lea eax, [ebp-0x428]
	mov [esp+0x4], eax
	mov [esp], edi
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_dvarStrList_30
ItemParse_dvarStrList_70:
	movzx eax, byte [ebp-0x418]
	cmp al, 0x7d
	jz ItemParse_dvarStrList_40
	cmp al, 0x2c
	jz ItemParse_dvarStrList_50
	cmp al, 0x3b
	jz ItemParse_dvarStrList_50
	test ebx, ebx
	jnz ItemParse_dvarStrList_60
	mov ebx, [esi+0x180]
	lea eax, [ebp-0x418]
	mov [esp], eax
	call String_Alloc
	mov [esi+ebx*4], eax
	mov ebx, 0x1
	lea eax, [ebp-0x428]
	mov [esp+0x4], eax
	mov [esp], edi
	call PC_ReadTokenHandle
	test eax, eax
	jnz ItemParse_dvarStrList_70
ItemParse_dvarStrList_30:
	mov dword [esp+0x4], _cstring_end_of_file_insi
	mov [esp], edi
	call PC_SourceError
	xor eax, eax
	jmp ItemParse_dvarStrList_80
ItemParse_dvarStrList_60:
	mov ebx, [esi+0x180]
	lea eax, [ebp-0x418]
	mov [esp], eax
	call String_Alloc
	mov [esi+ebx*4+0x80], eax
	mov eax, [esi+0x180]
	add eax, 0x1
	mov [esi+0x180], eax
	cmp eax, 0x1f
	jle ItemParse_dvarStrList_90
	jmp ItemParse_dvarStrList_10
ItemParse_dvarStrList_40:
	mov eax, 0x1
	jmp ItemParse_dvarStrList_80


;ItemParse_dvarFloatList(itemDef_s*, int)
ItemParse_dvarFloatList:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x83c
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov edx, esi
	mov eax, ebx
	call Item_ValidateTypeData
	mov eax, [ebx+0x12c]
	test eax, eax
	jz ItemParse_dvarFloatList_10
	cmp dword [ebx+0xb4], 0xc
	jz ItemParse_dvarFloatList_20
ItemParse_dvarFloatList_10:
	xor eax, eax
ItemParse_dvarFloatList_90:
	add esp, 0x83c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_dvarFloatList_20:
	mov [esp], ebx
	call Item_GetMultiDef
	mov edi, eax
	mov dword [eax+0x180], 0x0
	mov dword [eax+0x184], 0x0
	lea eax, [ebp-0x428]
	mov [esp+0x4], eax
	mov [esp], esi
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_dvarFloatList_10
	cmp byte [ebp-0x418], 0x7b
	jnz ItemParse_dvarFloatList_10
ItemParse_dvarFloatList_50:
	lea eax, [ebp-0x428]
	mov [esp+0x4], eax
	mov [esp], esi
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_dvarFloatList_30
	movzx eax, byte [ebp-0x418]
	cmp al, 0x7d
	jz ItemParse_dvarFloatList_40
	cmp al, 0x2c
	jz ItemParse_dvarFloatList_50
	cmp al, 0x3b
	jz ItemParse_dvarFloatList_50
	mov ebx, [edi+0x180]
	lea eax, [ebp-0x418]
	mov [esp], eax
	call String_Alloc
	mov [edi+ebx*4], eax
	mov eax, [edi+0x180]
	lea ebx, [edi+eax*4+0x100]
	lea eax, [ebp-0x838]
	mov [esp+0x4], eax
	mov [esp], esi
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_dvarFloatList_10
	movzx eax, byte [ebp-0x828]
	cmp al, 0x28
	jz ItemParse_dvarFloatList_60
	cmp al, 0x2d
	jz ItemParse_dvarFloatList_70
	xor eax, eax
ItemParse_dvarFloatList_120:
	cmp dword [ebp-0x838], 0x3
	jz ItemParse_dvarFloatList_80
	lea eax, [ebp-0x828]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_expected_float_b
	mov [esp], esi
	call PC_SourceError
	xor eax, eax
	jmp ItemParse_dvarFloatList_90
ItemParse_dvarFloatList_80:
	test eax, eax
	jz ItemParse_dvarFloatList_100
	mov eax, [ebp-0x82c]
	xor eax, 0x80000000
	mov [ebx], eax
ItemParse_dvarFloatList_110:
	mov eax, [edi+0x180]
	add eax, 0x1
	mov [edi+0x180], eax
	cmp eax, 0x1f
	jle ItemParse_dvarFloatList_50
	jmp ItemParse_dvarFloatList_10
ItemParse_dvarFloatList_100:
	mov eax, [ebp-0x82c]
	mov [ebx], eax
	jmp ItemParse_dvarFloatList_110
ItemParse_dvarFloatList_60:
	mov edx, ebx
	mov eax, esi
	call PC_Float_Expression_Parse
	test eax, eax
	jnz ItemParse_dvarFloatList_110
	jmp ItemParse_dvarFloatList_10
ItemParse_dvarFloatList_30:
	mov dword [esp+0x4], _cstring_end_of_file_insi
	mov [esp], esi
	call PC_SourceError
	xor eax, eax
	jmp ItemParse_dvarFloatList_90
ItemParse_dvarFloatList_40:
	mov eax, 0x1
	jmp ItemParse_dvarFloatList_90
ItemParse_dvarFloatList_70:
	lea eax, [ebp-0x838]
	mov [esp+0x4], eax
	mov [esp], esi
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_dvarFloatList_10
	mov eax, 0x1
	jmp ItemParse_dvarFloatList_120
	nop


;ItemParse_dvarEnumList(itemDef_s*, int)
ItemParse_dvarEnumList:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x420
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov edx, ebx
	mov eax, esi
	call Item_ValidateTypeData
	cmp dword [esi+0xb4], 0xd
	jz ItemParse_dvarEnumList_10
ItemParse_dvarEnumList_30:
	xor eax, eax
ItemParse_dvarEnumList_40:
	add esp, 0x420
	pop ebx
	pop esi
	pop ebp
	ret
ItemParse_dvarEnumList_10:
	mov eax, [esi+0x12c]
	test eax, eax
	jz ItemParse_dvarEnumList_20
	mov dword [esp+0x4], _cstring_enumdvarlist_alr
	mov [esp], ebx
	call PC_SourceError
	xor eax, eax
	add esp, 0x420
	pop ebx
	pop esi
	pop ebp
	ret
ItemParse_dvarEnumList_20:
	lea eax, [ebp-0x418]
	mov [esp+0x4], eax
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_dvarEnumList_30
	lea eax, [ebp-0x408]
	mov [esp], eax
	call String_Alloc
	mov [esi+0x12c], eax
	mov eax, 0x1
	jmp ItemParse_dvarEnumList_40


;ItemParse_ownerdrawFlag(itemDef_s*, int)
ItemParse_ownerdrawFlag:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x430
	mov ebx, [ebp+0xc]
	lea esi, [ebp-0x41c]
	mov [esp+0x4], esi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_ownerdrawFlag_10
	movzx eax, byte [ebp-0x40c]
	cmp al, 0x28
	jz ItemParse_ownerdrawFlag_20
	cmp al, 0x2d
	jz ItemParse_ownerdrawFlag_30
	xor edx, edx
ItemParse_ownerdrawFlag_70:
	cmp dword [ebp-0x41c], 0x3
	jz ItemParse_ownerdrawFlag_40
	lea eax, [ebp-0x40c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_expected_integer
	mov [esp], ebx
	call PC_SourceError
	xor eax, eax
	add esp, 0x430
	pop ebx
	pop esi
	pop ebp
	ret
ItemParse_ownerdrawFlag_30:
	mov [esp+0x4], esi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jnz ItemParse_ownerdrawFlag_50
ItemParse_ownerdrawFlag_10:
	xor eax, eax
	add esp, 0x430
	pop ebx
	pop esi
	pop ebp
	ret
ItemParse_ownerdrawFlag_20:
	lea edx, [ebp-0xc]
	mov eax, ebx
	call PC_Int_Expression_Parse
	test eax, eax
	jz ItemParse_ownerdrawFlag_10
ItemParse_ownerdrawFlag_60:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x44]
	or eax, [ebp-0xc]
	mov [edx+0x44], eax
	mov eax, 0x1
	add esp, 0x430
	pop ebx
	pop esi
	pop ebp
	ret
ItemParse_ownerdrawFlag_40:
	mov eax, [ebp-0x414]
	mov [ebp-0xc], eax
	test edx, edx
	jz ItemParse_ownerdrawFlag_60
	neg eax
	mov [ebp-0xc], eax
	jmp ItemParse_ownerdrawFlag_60
ItemParse_ownerdrawFlag_50:
	mov edx, 0x1
	jmp ItemParse_ownerdrawFlag_70
	nop


;ItemParse_enableDvar(itemDef_s*, int)
ItemParse_enableDvar:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	mov eax, [ebp+0xc]
	lea edx, [ebx+0x118]
	call PC_Script_Parse
	test eax, eax
	jz ItemParse_enableDvar_10
	or dword [ebx+0x11c], 0x1
	mov eax, 0x1
ItemParse_enableDvar_10:
	add esp, 0x4
	pop ebx
	pop ebp
	ret


;ItemParse_dvarTest(itemDef_s*, int)
ItemParse_dvarTest:
	push ebp
	mov ebp, esp
	sub esp, 0x428
	lea eax, [ebp-0x418]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call PC_ReadTokenHandle
	test eax, eax
	jnz ItemParse_dvarTest_10
	leave
	ret
ItemParse_dvarTest_10:
	lea eax, [ebp-0x408]
	mov [esp], eax
	call String_Alloc
	mov edx, [ebp+0x8]
	mov [edx+0x110], eax
	mov eax, 0x1
	leave
	ret


;ItemParse_disableDvar(itemDef_s*, int)
ItemParse_disableDvar:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	mov eax, [ebp+0xc]
	lea edx, [ebx+0x118]
	call PC_Script_Parse
	test eax, eax
	jz ItemParse_disableDvar_10
	or dword [ebx+0x11c], 0x2
	mov eax, 0x1
ItemParse_disableDvar_10:
	add esp, 0x4
	pop ebx
	pop ebp
	ret


;ItemParse_showDvar(itemDef_s*, int)
ItemParse_showDvar:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	mov eax, [ebp+0xc]
	lea edx, [ebx+0x118]
	call PC_Script_Parse
	test eax, eax
	jz ItemParse_showDvar_10
	or dword [ebx+0x11c], 0x4
	mov eax, 0x1
ItemParse_showDvar_10:
	add esp, 0x4
	pop ebx
	pop ebp
	ret


;ItemParse_hideDvar(itemDef_s*, int)
ItemParse_hideDvar:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	mov eax, [ebp+0xc]
	lea edx, [ebx+0x118]
	call PC_Script_Parse
	test eax, eax
	jz ItemParse_hideDvar_10
	or dword [ebx+0x11c], 0x8
	mov eax, 0x1
ItemParse_hideDvar_10:
	add esp, 0x4
	pop ebx
	pop ebp
	ret


;ItemParse_focusDvar(itemDef_s*, int)
ItemParse_focusDvar:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x4
	mov ebx, [ebp+0x8]
	mov eax, [ebp+0xc]
	lea edx, [ebx+0x118]
	call PC_Script_Parse
	test eax, eax
	jz ItemParse_focusDvar_10
	or dword [ebx+0x11c], 0x10
	mov eax, 0x1
ItemParse_focusDvar_10:
	add esp, 0x4
	pop ebx
	pop ebp
	ret


;ItemParse_doubleClick(itemDef_s*, int)
ItemParse_doubleClick:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov edx, esi
	mov eax, ebx
	call Item_ValidateTypeData
	mov eax, [ebx+0x12c]
	test eax, eax
	jz ItemParse_doubleClick_10
	mov [esp], ebx
	call Item_GetListBoxDef
	test eax, eax
	jz ItemParse_doubleClick_10
	lea edx, [eax+0x120]
	mov eax, esi
	call PC_Script_Parse
	test eax, eax
	jnz ItemParse_doubleClick_20
ItemParse_doubleClick_10:
	xor eax, eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
ItemParse_doubleClick_20:
	mov eax, 0x1
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;ItemParse_execKey(itemDef_s*, int)
ItemParse_execKey:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x430
	mov ebx, [ebp+0xc]
	lea eax, [ebp-0x41c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_execKey_10
	movzx esi, byte [ebp-0x40c]
	lea edx, [ebp-0xc]
	mov eax, ebx
	call PC_Script_Parse
	test eax, eax
	jnz ItemParse_execKey_20
ItemParse_execKey_10:
	xor eax, eax
	add esp, 0x430
	pop ebx
	pop esi
	pop ebp
	ret
ItemParse_execKey_20:
	mov dword [esp+0x4], 0x4
	mov dword [esp], 0xc
	call UI_Alloc
	movsx edx, si
	mov [eax], edx
	mov edx, [ebp-0xc]
	mov [eax+0x4], edx
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x114]
	mov [eax+0x8], edx
	mov [ecx+0x114], eax
	mov eax, 0x1
	add esp, 0x430
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;ItemParse_execKeyInt(itemDef_s*, int)
ItemParse_execKeyInt:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x430
	mov ebx, [ebp+0xc]
	lea esi, [ebp-0x420]
	mov [esp+0x4], esi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_execKeyInt_10
	movzx eax, byte [ebp-0x410]
	cmp al, 0x28
	jz ItemParse_execKeyInt_20
	cmp al, 0x2d
	jz ItemParse_execKeyInt_30
	xor edx, edx
ItemParse_execKeyInt_70:
	cmp dword [ebp-0x420], 0x3
	jz ItemParse_execKeyInt_40
	lea eax, [ebp-0x410]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_expected_integer
	mov [esp], ebx
	call PC_SourceError
	xor eax, eax
	add esp, 0x430
	pop ebx
	pop esi
	pop ebp
	ret
ItemParse_execKeyInt_30:
	mov [esp+0x4], esi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jnz ItemParse_execKeyInt_50
ItemParse_execKeyInt_10:
	xor eax, eax
	add esp, 0x430
	pop ebx
	pop esi
	pop ebp
	ret
ItemParse_execKeyInt_20:
	lea edx, [ebp-0xc]
	mov eax, ebx
	call PC_Int_Expression_Parse
	test eax, eax
	jz ItemParse_execKeyInt_10
ItemParse_execKeyInt_60:
	lea edx, [ebp-0x10]
	mov eax, ebx
	call PC_Script_Parse
	test eax, eax
	jz ItemParse_execKeyInt_10
	mov dword [esp+0x4], 0x4
	mov dword [esp], 0xc
	call UI_Alloc
	mov edx, [ebp-0xc]
	mov [eax], edx
	mov edx, [ebp-0x10]
	mov [eax+0x4], edx
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x114]
	mov [eax+0x8], edx
	mov [ecx+0x114], eax
	mov eax, 0x1
	add esp, 0x430
	pop ebx
	pop esi
	pop ebp
	ret
ItemParse_execKeyInt_40:
	mov eax, [ebp-0x418]
	mov [ebp-0xc], eax
	test edx, edx
	jz ItemParse_execKeyInt_60
	neg eax
	mov [ebp-0xc], eax
	jmp ItemParse_execKeyInt_60
ItemParse_execKeyInt_50:
	mov edx, 0x1
	jmp ItemParse_execKeyInt_70


;ItemParse_execExp(itemDef_s*, int)
ItemParse_execExp:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x42c
	mov edi, [ebp+0xc]
	lea esi, [ebp-0x428]
	mov [esp+0x4], esi
	mov [esp], edi
	call PC_ReadTokenHandle
	test eax, eax
	jnz ItemParse_execExp_10
ItemParse_execExp_50:
	xor eax, eax
ItemParse_execExp_160:
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_execExp_10:
	lea eax, [ebp-0x418]
	mov [esp], eax
	call String_Alloc
	mov ebx, eax
	mov dword [esp+0x4], _cstring_visible
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz ItemParse_execExp_20
	mov dword [esp+0x4], _cstring_text
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz ItemParse_execExp_30
	mov dword [esp], 0x960
	call Z_MallocInternal
	mov edx, [ebp+0x8]
	mov [edx+0x140], eax
	mov dword [esp+0x8], 0xc8
	mov eax, edx
	add eax, 0x13c
	jmp ItemParse_execExp_40
ItemParse_execExp_20:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x50]
	or eax, 0x4
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x0
	call Window_SetDynamicFlags
	mov dword [esp], 0x960
	call Z_MallocInternal
	mov edx, [ebp+0x8]
	mov [edx+0x138], eax
	mov dword [esp+0x8], 0xc8
	mov eax, edx
	add eax, 0x134
ItemParse_execExp_40:
	mov [esp+0x4], eax
	mov [esp], edi
	call parse_expression
	test al, al
	jz ItemParse_execExp_50
	mov eax, 0x1
ItemParse_execExp_140:
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_execExp_30:
	mov dword [esp+0x4], _cstring_material
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jz ItemParse_execExp_60
	mov dword [esp+0x4], _cstring_rect
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz ItemParse_execExp_70
	mov [esp+0x4], esi
	mov [esp], edi
	call PC_ReadTokenHandle
	test eax, eax
	jnz ItemParse_execExp_80
	mov dword [esp+0x4], _cstring_error_line_ended
	mov dword [esp], 0x10
	call Com_PrintError
	jmp ItemParse_execExp_50
ItemParse_execExp_60:
	mov dword [esp], 0x960
	call Z_MallocInternal
	mov edx, [ebp+0x8]
	mov [edx+0x148], eax
	mov dword [esp+0x8], 0xc8
	mov eax, edx
	add eax, 0x144
	jmp ItemParse_execExp_40
ItemParse_execExp_70:
	mov dword [esp+0x4], _cstring_forecolor
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz ItemParse_execExp_50
	mov [esp+0x4], esi
	mov [esp], edi
	call PC_ReadTokenHandle
	test eax, eax
	jnz ItemParse_execExp_90
	mov dword [esp+0x4], _cstring_error_line_ended1
	mov dword [esp], 0x10
	call Com_PrintError
	jmp ItemParse_execExp_50
ItemParse_execExp_80:
	lea eax, [ebp-0x418]
	mov [esp], eax
	call String_Alloc
	mov ebx, eax
	mov dword [esp+0x4], _cstring_x
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz ItemParse_execExp_100
	mov dword [esp+0x4], _cstring_y
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jz ItemParse_execExp_110
ItemParse_execExp_130:
	mov dword [esp+0x4], _cstring_w
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz ItemParse_execExp_120
	mov dword [esp], 0x960
	call Z_MallocInternal
	mov edx, [ebp+0x8]
	mov [edx+0x160], eax
	mov dword [esp+0x8], 0xc8
	mov eax, edx
	add eax, 0x15c
	jmp ItemParse_execExp_40
ItemParse_execExp_100:
	mov dword [esp], 0x960
	call Z_MallocInternal
	mov edx, [ebp+0x8]
	mov [edx+0x150], eax
	mov dword [esp+0x8], 0xc8
	mov eax, edx
	add eax, 0x14c
ItemParse_execExp_180:
	mov [esp+0x4], eax
	mov [esp], edi
	call parse_expression
	test al, al
	jz ItemParse_execExp_130
	mov eax, 0x1
	jmp ItemParse_execExp_140
ItemParse_execExp_90:
	lea eax, [ebp-0x418]
	mov [esp], eax
	call String_Alloc
	mov ebx, eax
	mov dword [esp+0x4], _cstring_a
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz ItemParse_execExp_150
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_expected_a
	mov dword [esp], 0x10
	call Com_PrintError
	xor eax, eax
	jmp ItemParse_execExp_160
ItemParse_execExp_120:
	mov dword [esp+0x4], _cstring_h
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz ItemParse_execExp_170
	mov dword [esp], 0x960
	call Z_MallocInternal
	mov edx, [ebp+0x8]
	mov [edx+0x168], eax
	mov dword [esp+0x8], 0xc8
	mov eax, edx
	add eax, 0x164
	jmp ItemParse_execExp_40
ItemParse_execExp_150:
	mov dword [esp], 0x960
	call Z_MallocInternal
	mov edx, [ebp+0x8]
	mov [edx+0x170], eax
	mov dword [esp+0x8], 0xc8
	mov eax, edx
	add eax, 0x16c
	jmp ItemParse_execExp_40
ItemParse_execExp_170:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_expected_x
	mov dword [esp], 0x10
	call Com_PrintError
	xor eax, eax
	jmp ItemParse_execExp_160
ItemParse_execExp_110:
	mov dword [esp], 0x960
	call Z_MallocInternal
	mov edx, [ebp+0x8]
	mov [edx+0x158], eax
	mov dword [esp+0x8], 0xc8
	mov eax, edx
	add eax, 0x154
	jmp ItemParse_execExp_180


;ItemParse_gameMsgWindowIndex(itemDef_s*, int)
ItemParse_gameMsgWindowIndex:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x42c
	mov ebx, [ebp+0xc]
	mov esi, [ebp+0x8]
	add esi, 0xd8
	lea edi, [ebp-0x428]
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_gameMsgWindowIndex_10
	movzx eax, byte [ebp-0x418]
	cmp al, 0x28
	jz ItemParse_gameMsgWindowIndex_20
	cmp al, 0x2d
	jz ItemParse_gameMsgWindowIndex_30
	xor edx, edx
ItemParse_gameMsgWindowIndex_60:
	cmp dword [ebp-0x428], 0x3
	jz ItemParse_gameMsgWindowIndex_40
	lea eax, [ebp-0x418]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_expected_integer
	mov [esp], ebx
	call PC_SourceError
	xor eax, eax
ItemParse_gameMsgWindowIndex_70:
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_gameMsgWindowIndex_10:
	xor eax, eax
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_gameMsgWindowIndex_40:
	mov eax, [ebp-0x420]
	mov [esi], eax
	test edx, edx
	jz ItemParse_gameMsgWindowIndex_50
	neg eax
	mov [esi], eax
ItemParse_gameMsgWindowIndex_50:
	mov eax, 0x1
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_gameMsgWindowIndex_30:
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_gameMsgWindowIndex_10
	mov edx, 0x1
	jmp ItemParse_gameMsgWindowIndex_60
ItemParse_gameMsgWindowIndex_20:
	mov edx, esi
	mov eax, ebx
	call PC_Int_Expression_Parse
	jmp ItemParse_gameMsgWindowIndex_70


;ItemParse_gameMsgWindowMode(itemDef_s*, int)
ItemParse_gameMsgWindowMode:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x42c
	mov ebx, [ebp+0xc]
	mov esi, [ebp+0x8]
	add esi, 0xdc
	lea edi, [ebp-0x428]
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_gameMsgWindowMode_10
	movzx eax, byte [ebp-0x418]
	cmp al, 0x28
	jz ItemParse_gameMsgWindowMode_20
	cmp al, 0x2d
	jz ItemParse_gameMsgWindowMode_30
	xor edx, edx
ItemParse_gameMsgWindowMode_60:
	cmp dword [ebp-0x428], 0x3
	jz ItemParse_gameMsgWindowMode_40
	lea eax, [ebp-0x418]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_expected_integer
	mov [esp], ebx
	call PC_SourceError
	xor eax, eax
ItemParse_gameMsgWindowMode_70:
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_gameMsgWindowMode_10:
	xor eax, eax
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_gameMsgWindowMode_40:
	mov eax, [ebp-0x420]
	mov [esi], eax
	test edx, edx
	jz ItemParse_gameMsgWindowMode_50
	neg eax
	mov [esi], eax
ItemParse_gameMsgWindowMode_50:
	mov eax, 0x1
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_gameMsgWindowMode_30:
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_gameMsgWindowMode_10
	mov edx, 0x1
	jmp ItemParse_gameMsgWindowMode_60
ItemParse_gameMsgWindowMode_20:
	mov edx, esi
	mov eax, ebx
	call PC_Int_Expression_Parse
	jmp ItemParse_gameMsgWindowMode_70
	add [eax], al


;ItemParse_selectBorder(itemDef_s*, int)
ItemParse_selectBorder:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x43c
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov edx, esi
	mov eax, ebx
	call Item_ValidateTypeData
	mov [esp], ebx
	call Item_GetListBoxDef
	test eax, eax
	jz ItemParse_selectBorder_10
	lea ebx, [eax+0x130]
	mov edi, 0x4
ItemParse_selectBorder_60:
	lea eax, [ebp-0x42c]
	mov [esp+0x4], eax
	mov [esp], esi
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_selectBorder_10
	movzx eax, byte [ebp-0x41c]
	cmp al, 0x28
	jz ItemParse_selectBorder_20
	cmp al, 0x2d
	jz ItemParse_selectBorder_30
	xor eax, eax
ItemParse_selectBorder_100:
	cmp dword [ebp-0x42c], 0x3
	jnz ItemParse_selectBorder_40
	test eax, eax
	jz ItemParse_selectBorder_50
	mov eax, [ebp-0x420]
	xor eax, 0x80000000
	mov [ebp-0x1c], eax
ItemParse_selectBorder_90:
	mov [ebx], eax
	add ebx, 0x4
	sub edi, 0x1
	jnz ItemParse_selectBorder_60
	mov eax, 0x1
	jmp ItemParse_selectBorder_70
ItemParse_selectBorder_30:
	lea eax, [ebp-0x42c]
	mov [esp+0x4], eax
	mov [esp], esi
	call PC_ReadTokenHandle
	test eax, eax
	jnz ItemParse_selectBorder_80
ItemParse_selectBorder_10:
	xor eax, eax
ItemParse_selectBorder_70:
	add esp, 0x43c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_selectBorder_40:
	lea eax, [ebp-0x41c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_expected_float_b
	mov [esp], esi
	call PC_SourceError
	xor eax, eax
	add esp, 0x43c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_selectBorder_50:
	mov eax, [ebp-0x420]
	mov [ebp-0x1c], eax
	jmp ItemParse_selectBorder_90
ItemParse_selectBorder_20:
	lea edx, [ebp-0x1c]
	mov eax, esi
	call PC_Float_Expression_Parse
	test eax, eax
	jz ItemParse_selectBorder_10
	mov eax, [ebp-0x1c]
	jmp ItemParse_selectBorder_90
ItemParse_selectBorder_80:
	mov eax, 0x1
	jmp ItemParse_selectBorder_100
	nop


;ItemParse_disableColor(itemDef_s*, int)
ItemParse_disableColor:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x43c
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov edx, esi
	mov eax, ebx
	call Item_ValidateTypeData
	mov [esp], ebx
	call Item_GetListBoxDef
	test eax, eax
	jz ItemParse_disableColor_10
	lea ebx, [eax+0x140]
	mov edi, 0x4
ItemParse_disableColor_60:
	lea eax, [ebp-0x42c]
	mov [esp+0x4], eax
	mov [esp], esi
	call PC_ReadTokenHandle
	test eax, eax
	jz ItemParse_disableColor_10
	movzx eax, byte [ebp-0x41c]
	cmp al, 0x28
	jz ItemParse_disableColor_20
	cmp al, 0x2d
	jz ItemParse_disableColor_30
	xor eax, eax
ItemParse_disableColor_100:
	cmp dword [ebp-0x42c], 0x3
	jnz ItemParse_disableColor_40
	test eax, eax
	jz ItemParse_disableColor_50
	mov eax, [ebp-0x420]
	xor eax, 0x80000000
	mov [ebp-0x1c], eax
ItemParse_disableColor_90:
	mov [ebx], eax
	add ebx, 0x4
	sub edi, 0x1
	jnz ItemParse_disableColor_60
	mov eax, 0x1
	jmp ItemParse_disableColor_70
ItemParse_disableColor_30:
	lea eax, [ebp-0x42c]
	mov [esp+0x4], eax
	mov [esp], esi
	call PC_ReadTokenHandle
	test eax, eax
	jnz ItemParse_disableColor_80
ItemParse_disableColor_10:
	xor eax, eax
ItemParse_disableColor_70:
	add esp, 0x43c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_disableColor_40:
	lea eax, [ebp-0x41c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_expected_float_b
	mov [esp], esi
	call PC_SourceError
	xor eax, eax
	add esp, 0x43c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_disableColor_50:
	mov eax, [ebp-0x420]
	mov [ebp-0x1c], eax
	jmp ItemParse_disableColor_90
ItemParse_disableColor_20:
	lea edx, [ebp-0x1c]
	mov eax, esi
	call PC_Float_Expression_Parse
	test eax, eax
	jz ItemParse_disableColor_10
	mov eax, [ebp-0x1c]
	jmp ItemParse_disableColor_90
ItemParse_disableColor_80:
	mov eax, 0x1
	jmp ItemParse_disableColor_100
	nop


;ItemParse_selectIcon(itemDef_s*, int)
ItemParse_selectIcon:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x46c
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov edx, ebx
	mov eax, esi
	call Item_ValidateTypeData
	mov [esp], esi
	call Item_GetListBoxDef
	mov edi, eax
	test eax, eax
	jz ItemParse_selectIcon_10
	lea eax, [ebp-0x468]
	mov [esp+0x4], eax
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jnz ItemParse_selectIcon_20
ItemParse_selectIcon_10:
	xor eax, eax
	add esp, 0x46c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ItemParse_selectIcon_20:
	lea eax, [ebp-0x458]
	mov [esp], eax
	call String_Alloc
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], eax
	lea ebx, [ebp-0x58]
	mov [esp], ebx
	call Q_strncpyz
	mov [esp], ebx
	call Q_strlwr
	mov eax, [esi+0x130]
	mov [esp+0x4], eax
	mov [esp], ebx
	call Material_RegisterHandle
	mov [edi+0x150], eax
	mov eax, 0x1
	add esp, 0x46c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;MenuParse_name(menuDef_t*, int)
MenuParse_name:
	push ebp
	mov ebp, esp
	sub esp, 0x428
	lea eax, [ebp-0x418]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call PC_ReadTokenHandle
	test eax, eax
	jnz MenuParse_name_10
	leave
	ret
MenuParse_name_10:
	lea eax, [ebp-0x408]
	mov [esp], eax
	call String_Alloc
	mov edx, [ebp+0x8]
	mov [edx], eax
	mov [esp], eax
	call Q_strlwr
	mov eax, 0x1
	leave
	ret


;MenuParse_fullscreen(menuDef_t*, int)
MenuParse_fullscreen:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x42c
	mov ebx, [ebp+0xc]
	mov esi, [ebp+0x8]
	add esi, 0xa0
	lea edi, [ebp-0x428]
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz MenuParse_fullscreen_10
	movzx eax, byte [ebp-0x418]
	cmp al, 0x28
	jz MenuParse_fullscreen_20
	cmp al, 0x2d
	jz MenuParse_fullscreen_30
	xor edx, edx
MenuParse_fullscreen_60:
	cmp dword [ebp-0x428], 0x3
	jz MenuParse_fullscreen_40
	lea eax, [ebp-0x418]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_expected_integer
	mov [esp], ebx
	call PC_SourceError
	xor eax, eax
MenuParse_fullscreen_70:
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MenuParse_fullscreen_10:
	xor eax, eax
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MenuParse_fullscreen_40:
	mov eax, [ebp-0x420]
	mov [esi], eax
	test edx, edx
	jz MenuParse_fullscreen_50
	neg eax
	mov [esi], eax
MenuParse_fullscreen_50:
	mov eax, 0x1
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MenuParse_fullscreen_30:
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz MenuParse_fullscreen_10
	mov edx, 0x1
	jmp MenuParse_fullscreen_60
MenuParse_fullscreen_20:
	mov edx, esi
	mov eax, ebx
	call PC_Int_Expression_Parse
	jmp MenuParse_fullscreen_70


;MenuParse_rect(menuDef_t*, int)
MenuParse_rect:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0xc]
	mov edx, [ebp+0x8]
	add edx, 0x4
	pop ebp
	jmp PC_Rect_Parse


;MenuParse_style(menuDef_t*, int)
MenuParse_style:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x42c
	mov ebx, [ebp+0xc]
	mov esi, [ebp+0x8]
	add esi, 0x38
	lea edi, [ebp-0x428]
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz MenuParse_style_10
	movzx eax, byte [ebp-0x418]
	cmp al, 0x28
	jz MenuParse_style_20
	cmp al, 0x2d
	jz MenuParse_style_30
	xor edx, edx
MenuParse_style_60:
	cmp dword [ebp-0x428], 0x3
	jz MenuParse_style_40
	lea eax, [ebp-0x418]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_expected_integer
	mov [esp], ebx
	call PC_SourceError
	xor eax, eax
MenuParse_style_70:
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MenuParse_style_10:
	xor eax, eax
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MenuParse_style_40:
	mov eax, [ebp-0x420]
	mov [esi], eax
	test edx, edx
	jz MenuParse_style_50
	neg eax
	mov [esi], eax
MenuParse_style_50:
	mov eax, 0x1
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MenuParse_style_30:
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz MenuParse_style_10
	mov edx, 0x1
	jmp MenuParse_style_60
MenuParse_style_20:
	mov edx, esi
	mov eax, ebx
	call PC_Int_Expression_Parse
	jmp MenuParse_style_70
	nop


;MenuParse_visible(menuDef_t*, int)
MenuParse_visible:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x42c
	mov esi, [ebp+0x8]
	mov edi, [ebp+0xc]
	lea eax, [ebp-0x428]
	mov [esp+0x4], eax
	mov [esp], edi
	call PC_ReadTokenHandle
	test eax, eax
	jnz MenuParse_visible_10
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MenuParse_visible_10:
	lea eax, [ebp-0x418]
	mov [esp], eax
	call String_Alloc
	mov ebx, eax
	mov dword [esp+0x4], _cstring_when
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz MenuParse_visible_20
MenuParse_visible_60:
	mov eax, [esi+0x50]
	or eax, 0x4
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov dword [esp], 0x0
	call Window_SetDynamicFlags
	mov dword [esp], 0x960
	call Z_MallocInternal
	mov [esi+0xd8], eax
	mov dword [esp+0x8], 0xc8
	lea eax, [esi+0xd4]
	mov [esp+0x4], eax
	mov [esp], edi
	call parse_expression
	test al, al
	jnz MenuParse_visible_30
MenuParse_visible_50:
	mov [esp], ebx
	call atoi
	test eax, eax
	jnz MenuParse_visible_40
MenuParse_visible_30:
	mov eax, 0x1
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MenuParse_visible_20:
	mov dword [esp+0x4], _cstring_if
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz MenuParse_visible_50
	jmp MenuParse_visible_60
MenuParse_visible_40:
	mov eax, [esi+0x50]
	or eax, 0x4
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov dword [esp], 0x0
	call Window_SetDynamicFlags
	mov eax, 0x1
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;MenuParse_onOpen(menuDef_t*, int)
MenuParse_onOpen:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0xc]
	mov edx, [ebp+0x8]
	add edx, 0xc4
	pop ebp
	jmp PC_Script_Parse
	nop


;MenuParse_onClose(menuDef_t*, int)
MenuParse_onClose:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0xc]
	mov edx, [ebp+0x8]
	add edx, 0xc8
	pop ebp
	jmp PC_Script_Parse
	nop


;MenuParse_onESC(menuDef_t*, int)
MenuParse_onESC:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0xc]
	mov edx, [ebp+0x8]
	add edx, 0xcc
	pop ebp
	jmp PC_Script_Parse
	nop


;MenuParse_border(menuDef_t*, int)
MenuParse_border:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x42c
	mov ebx, [ebp+0xc]
	mov esi, [ebp+0x8]
	add esi, 0x3c
	lea edi, [ebp-0x428]
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz MenuParse_border_10
	movzx eax, byte [ebp-0x418]
	cmp al, 0x28
	jz MenuParse_border_20
	cmp al, 0x2d
	jz MenuParse_border_30
	xor edx, edx
MenuParse_border_60:
	cmp dword [ebp-0x428], 0x3
	jz MenuParse_border_40
	lea eax, [ebp-0x418]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_expected_integer
	mov [esp], ebx
	call PC_SourceError
	xor eax, eax
MenuParse_border_70:
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MenuParse_border_10:
	xor eax, eax
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MenuParse_border_40:
	mov eax, [ebp-0x420]
	mov [esi], eax
	test edx, edx
	jz MenuParse_border_50
	neg eax
	mov [esi], eax
MenuParse_border_50:
	mov eax, 0x1
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MenuParse_border_30:
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz MenuParse_border_10
	mov edx, 0x1
	jmp MenuParse_border_60
MenuParse_border_20:
	mov edx, esi
	mov eax, ebx
	call PC_Int_Expression_Parse
	jmp MenuParse_border_70
	nop


;MenuParse_borderSize(menuDef_t*, int)
MenuParse_borderSize:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x42c
	mov ebx, [ebp+0xc]
	mov esi, [ebp+0x8]
	add esi, 0x48
	lea edi, [ebp-0x428]
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz MenuParse_borderSize_10
	movzx eax, byte [ebp-0x418]
	cmp al, 0x28
	jz MenuParse_borderSize_20
	cmp al, 0x2d
	jz MenuParse_borderSize_30
	xor eax, eax
MenuParse_borderSize_60:
	cmp dword [ebp-0x428], 0x3
	jz MenuParse_borderSize_40
	lea eax, [ebp-0x418]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_expected_float_b
	mov [esp], ebx
	call PC_SourceError
	xor eax, eax
MenuParse_borderSize_70:
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MenuParse_borderSize_10:
	xor eax, eax
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MenuParse_borderSize_40:
	test eax, eax
	jnz MenuParse_borderSize_50
	mov eax, [ebp-0x41c]
	mov [esi], eax
	mov eax, 0x1
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MenuParse_borderSize_50:
	mov eax, [ebp-0x41c]
	xor eax, 0x80000000
	mov [esi], eax
	mov eax, 0x1
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MenuParse_borderSize_30:
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz MenuParse_borderSize_10
	mov eax, 0x1
	jmp MenuParse_borderSize_60
MenuParse_borderSize_20:
	mov edx, esi
	mov eax, ebx
	call PC_Float_Expression_Parse
	jmp MenuParse_borderSize_70
	nop


;MenuParse_backcolor(menuDef_t*, int)
MenuParse_backcolor:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x43c
	mov esi, [ebp+0xc]
	mov ebx, [ebp+0x8]
	add ebx, 0x68
	mov edi, 0x4
MenuParse_backcolor_60:
	lea eax, [ebp-0x42c]
	mov [esp+0x4], eax
	mov [esp], esi
	call PC_ReadTokenHandle
	test eax, eax
	jz MenuParse_backcolor_10
	movzx eax, byte [ebp-0x41c]
	cmp al, 0x28
	jz MenuParse_backcolor_20
	cmp al, 0x2d
	jz MenuParse_backcolor_30
	xor eax, eax
MenuParse_backcolor_100:
	cmp dword [ebp-0x42c], 0x3
	jnz MenuParse_backcolor_40
	test eax, eax
	jz MenuParse_backcolor_50
	mov eax, [ebp-0x420]
	xor eax, 0x80000000
	mov [ebp-0x1c], eax
MenuParse_backcolor_90:
	mov [ebx], eax
	add ebx, 0x4
	sub edi, 0x1
	jnz MenuParse_backcolor_60
	mov eax, 0x1
	jmp MenuParse_backcolor_70
MenuParse_backcolor_30:
	lea eax, [ebp-0x42c]
	mov [esp+0x4], eax
	mov [esp], esi
	call PC_ReadTokenHandle
	test eax, eax
	jnz MenuParse_backcolor_80
MenuParse_backcolor_10:
	xor eax, eax
MenuParse_backcolor_70:
	add esp, 0x43c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MenuParse_backcolor_40:
	lea eax, [ebp-0x41c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_expected_float_b
	mov [esp], esi
	call PC_SourceError
	xor eax, eax
	add esp, 0x43c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MenuParse_backcolor_50:
	mov eax, [ebp-0x420]
	mov [ebp-0x1c], eax
	jmp MenuParse_backcolor_90
MenuParse_backcolor_20:
	lea edx, [ebp-0x1c]
	mov eax, esi
	call PC_Float_Expression_Parse
	test eax, eax
	jz MenuParse_backcolor_10
	mov eax, [ebp-0x1c]
	jmp MenuParse_backcolor_90
MenuParse_backcolor_80:
	mov eax, 0x1
	jmp MenuParse_backcolor_100
	nop


;MenuParse_forecolor(menuDef_t*, int)
MenuParse_forecolor:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x43c
	mov esi, [ebp+0xc]
	mov ebx, [ebp+0x8]
	add ebx, 0x58
	mov edi, 0x4
MenuParse_forecolor_60:
	lea eax, [ebp-0x42c]
	mov [esp+0x4], eax
	mov [esp], esi
	call PC_ReadTokenHandle
	test eax, eax
	jz MenuParse_forecolor_10
	movzx eax, byte [ebp-0x41c]
	cmp al, 0x28
	jz MenuParse_forecolor_20
	cmp al, 0x2d
	jz MenuParse_forecolor_30
	xor eax, eax
MenuParse_forecolor_100:
	cmp dword [ebp-0x42c], 0x3
	jnz MenuParse_forecolor_40
	test eax, eax
	jz MenuParse_forecolor_50
	mov eax, [ebp-0x420]
	xor eax, 0x80000000
	mov [ebp-0x1c], eax
MenuParse_forecolor_90:
	mov [ebx], eax
	add ebx, 0x4
	sub edi, 0x1
	jnz MenuParse_forecolor_60
	mov edx, [ebp+0x8]
	mov eax, [edx+0x50]
	or eax, 0x10000
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x0
	call Window_SetDynamicFlags
	mov eax, 0x1
	jmp MenuParse_forecolor_70
MenuParse_forecolor_30:
	lea edx, [ebp-0x42c]
	mov [esp+0x4], edx
	mov [esp], esi
	call PC_ReadTokenHandle
	test eax, eax
	jnz MenuParse_forecolor_80
MenuParse_forecolor_10:
	xor eax, eax
MenuParse_forecolor_70:
	add esp, 0x43c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MenuParse_forecolor_40:
	lea eax, [ebp-0x41c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_expected_float_b
	mov [esp], esi
	call PC_SourceError
	xor eax, eax
	add esp, 0x43c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MenuParse_forecolor_50:
	mov eax, [ebp-0x420]
	mov [ebp-0x1c], eax
	jmp MenuParse_forecolor_90
MenuParse_forecolor_20:
	lea edx, [ebp-0x1c]
	mov eax, esi
	call PC_Float_Expression_Parse
	test eax, eax
	jz MenuParse_forecolor_10
	mov eax, [ebp-0x1c]
	jmp MenuParse_forecolor_90
MenuParse_forecolor_80:
	mov eax, 0x1
	jmp MenuParse_forecolor_100


;MenuParse_bordercolor(menuDef_t*, int)
MenuParse_bordercolor:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x43c
	mov esi, [ebp+0xc]
	mov ebx, [ebp+0x8]
	add ebx, 0x78
	mov edi, 0x4
MenuParse_bordercolor_60:
	lea eax, [ebp-0x42c]
	mov [esp+0x4], eax
	mov [esp], esi
	call PC_ReadTokenHandle
	test eax, eax
	jz MenuParse_bordercolor_10
	movzx eax, byte [ebp-0x41c]
	cmp al, 0x28
	jz MenuParse_bordercolor_20
	cmp al, 0x2d
	jz MenuParse_bordercolor_30
	xor eax, eax
MenuParse_bordercolor_100:
	cmp dword [ebp-0x42c], 0x3
	jnz MenuParse_bordercolor_40
	test eax, eax
	jz MenuParse_bordercolor_50
	mov eax, [ebp-0x420]
	xor eax, 0x80000000
	mov [ebp-0x1c], eax
MenuParse_bordercolor_90:
	mov [ebx], eax
	add ebx, 0x4
	sub edi, 0x1
	jnz MenuParse_bordercolor_60
	mov eax, 0x1
	jmp MenuParse_bordercolor_70
MenuParse_bordercolor_30:
	lea eax, [ebp-0x42c]
	mov [esp+0x4], eax
	mov [esp], esi
	call PC_ReadTokenHandle
	test eax, eax
	jnz MenuParse_bordercolor_80
MenuParse_bordercolor_10:
	xor eax, eax
MenuParse_bordercolor_70:
	add esp, 0x43c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MenuParse_bordercolor_40:
	lea eax, [ebp-0x41c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_expected_float_b
	mov [esp], esi
	call PC_SourceError
	xor eax, eax
	add esp, 0x43c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MenuParse_bordercolor_50:
	mov eax, [ebp-0x420]
	mov [ebp-0x1c], eax
	jmp MenuParse_bordercolor_90
MenuParse_bordercolor_20:
	lea edx, [ebp-0x1c]
	mov eax, esi
	call PC_Float_Expression_Parse
	test eax, eax
	jz MenuParse_bordercolor_10
	mov eax, [ebp-0x1c]
	jmp MenuParse_bordercolor_90
MenuParse_bordercolor_80:
	mov eax, 0x1
	jmp MenuParse_bordercolor_100
	nop


;MenuParse_focuscolor(menuDef_t*, int)
MenuParse_focuscolor:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x43c
	mov esi, [ebp+0xc]
	mov ebx, [ebp+0x8]
	add ebx, 0xe8
	mov edi, 0x4
MenuParse_focuscolor_60:
	lea eax, [ebp-0x42c]
	mov [esp+0x4], eax
	mov [esp], esi
	call PC_ReadTokenHandle
	test eax, eax
	jz MenuParse_focuscolor_10
	movzx eax, byte [ebp-0x41c]
	cmp al, 0x28
	jz MenuParse_focuscolor_20
	cmp al, 0x2d
	jz MenuParse_focuscolor_30
	xor eax, eax
MenuParse_focuscolor_100:
	cmp dword [ebp-0x42c], 0x3
	jnz MenuParse_focuscolor_40
	test eax, eax
	jz MenuParse_focuscolor_50
	mov eax, [ebp-0x420]
	xor eax, 0x80000000
	mov [ebp-0x1c], eax
MenuParse_focuscolor_90:
	mov [ebx], eax
	add ebx, 0x4
	sub edi, 0x1
	jnz MenuParse_focuscolor_60
	mov eax, 0x1
	jmp MenuParse_focuscolor_70
MenuParse_focuscolor_30:
	lea eax, [ebp-0x42c]
	mov [esp+0x4], eax
	mov [esp], esi
	call PC_ReadTokenHandle
	test eax, eax
	jnz MenuParse_focuscolor_80
MenuParse_focuscolor_10:
	xor eax, eax
MenuParse_focuscolor_70:
	add esp, 0x43c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MenuParse_focuscolor_40:
	lea eax, [ebp-0x41c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_expected_float_b
	mov [esp], esi
	call PC_SourceError
	xor eax, eax
	add esp, 0x43c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MenuParse_focuscolor_50:
	mov eax, [ebp-0x420]
	mov [ebp-0x1c], eax
	jmp MenuParse_focuscolor_90
MenuParse_focuscolor_20:
	lea edx, [ebp-0x1c]
	mov eax, esi
	call PC_Float_Expression_Parse
	test eax, eax
	jz MenuParse_focuscolor_10
	mov eax, [ebp-0x1c]
	jmp MenuParse_focuscolor_90
MenuParse_focuscolor_80:
	mov eax, 0x1
	jmp MenuParse_focuscolor_100


;MenuParse_disablecolor(menuDef_t*, int)
MenuParse_disablecolor:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x43c
	mov esi, [ebp+0xc]
	mov ebx, [ebp+0x8]
	add ebx, 0xf8
	mov edi, 0x4
MenuParse_disablecolor_60:
	lea eax, [ebp-0x42c]
	mov [esp+0x4], eax
	mov [esp], esi
	call PC_ReadTokenHandle
	test eax, eax
	jz MenuParse_disablecolor_10
	movzx eax, byte [ebp-0x41c]
	cmp al, 0x28
	jz MenuParse_disablecolor_20
	cmp al, 0x2d
	jz MenuParse_disablecolor_30
	xor eax, eax
MenuParse_disablecolor_100:
	cmp dword [ebp-0x42c], 0x3
	jnz MenuParse_disablecolor_40
	test eax, eax
	jz MenuParse_disablecolor_50
	mov eax, [ebp-0x420]
	xor eax, 0x80000000
	mov [ebp-0x1c], eax
MenuParse_disablecolor_90:
	mov [ebx], eax
	add ebx, 0x4
	sub edi, 0x1
	jnz MenuParse_disablecolor_60
	mov eax, 0x1
	jmp MenuParse_disablecolor_70
MenuParse_disablecolor_30:
	lea eax, [ebp-0x42c]
	mov [esp+0x4], eax
	mov [esp], esi
	call PC_ReadTokenHandle
	test eax, eax
	jnz MenuParse_disablecolor_80
MenuParse_disablecolor_10:
	xor eax, eax
MenuParse_disablecolor_70:
	add esp, 0x43c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MenuParse_disablecolor_40:
	lea eax, [ebp-0x41c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_expected_float_b
	mov [esp], esi
	call PC_SourceError
	xor eax, eax
	add esp, 0x43c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MenuParse_disablecolor_50:
	mov eax, [ebp-0x420]
	mov [ebp-0x1c], eax
	jmp MenuParse_disablecolor_90
MenuParse_disablecolor_20:
	lea edx, [ebp-0x1c]
	mov eax, esi
	call PC_Float_Expression_Parse
	test eax, eax
	jz MenuParse_disablecolor_10
	mov eax, [ebp-0x1c]
	jmp MenuParse_disablecolor_90
MenuParse_disablecolor_80:
	mov eax, 0x1
	jmp MenuParse_disablecolor_100


;MenuParse_outlinecolor(menuDef_t*, int)
MenuParse_outlinecolor:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x43c
	mov esi, [ebp+0xc]
	mov ebx, [ebp+0x8]
	add ebx, 0x88
	mov edi, 0x4
MenuParse_outlinecolor_60:
	lea eax, [ebp-0x42c]
	mov [esp+0x4], eax
	mov [esp], esi
	call PC_ReadTokenHandle
	test eax, eax
	jz MenuParse_outlinecolor_10
	movzx eax, byte [ebp-0x41c]
	cmp al, 0x28
	jz MenuParse_outlinecolor_20
	cmp al, 0x2d
	jz MenuParse_outlinecolor_30
	xor eax, eax
MenuParse_outlinecolor_100:
	cmp dword [ebp-0x42c], 0x3
	jnz MenuParse_outlinecolor_40
	test eax, eax
	jz MenuParse_outlinecolor_50
	mov eax, [ebp-0x420]
	xor eax, 0x80000000
	mov [ebp-0x1c], eax
MenuParse_outlinecolor_90:
	mov [ebx], eax
	add ebx, 0x4
	sub edi, 0x1
	jnz MenuParse_outlinecolor_60
	mov eax, 0x1
	jmp MenuParse_outlinecolor_70
MenuParse_outlinecolor_30:
	lea eax, [ebp-0x42c]
	mov [esp+0x4], eax
	mov [esp], esi
	call PC_ReadTokenHandle
	test eax, eax
	jnz MenuParse_outlinecolor_80
MenuParse_outlinecolor_10:
	xor eax, eax
MenuParse_outlinecolor_70:
	add esp, 0x43c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MenuParse_outlinecolor_40:
	lea eax, [ebp-0x41c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_expected_float_b
	mov [esp], esi
	call PC_SourceError
	xor eax, eax
	add esp, 0x43c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MenuParse_outlinecolor_50:
	mov eax, [ebp-0x420]
	mov [ebp-0x1c], eax
	jmp MenuParse_outlinecolor_90
MenuParse_outlinecolor_20:
	lea edx, [ebp-0x1c]
	mov eax, esi
	call PC_Float_Expression_Parse
	test eax, eax
	jz MenuParse_outlinecolor_10
	mov eax, [ebp-0x1c]
	jmp MenuParse_outlinecolor_90
MenuParse_outlinecolor_80:
	mov eax, 0x1
	jmp MenuParse_outlinecolor_100


;MenuParse_background(menuDef_t*, int)
MenuParse_background:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x464
	lea eax, [ebp-0x458]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call PC_ReadTokenHandle
	test eax, eax
	jnz MenuParse_background_10
	add esp, 0x464
	pop ebx
	pop ebp
	ret
MenuParse_background_10:
	lea eax, [ebp-0x448]
	mov [esp], eax
	call String_Alloc
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], eax
	lea ebx, [ebp-0x48]
	mov [esp], ebx
	call Q_strncpyz
	mov [esp], ebx
	call Q_strlwr
	mov edx, [ebp+0x8]
	mov eax, [edx+0xe4]
	mov [esp+0x4], eax
	mov [esp], ebx
	call Material_RegisterHandle
	mov edx, [ebp+0x8]
	mov [edx+0x98], eax
	mov eax, 0x1
	add esp, 0x464
	pop ebx
	pop ebp
	ret
	nop


;MenuParse_ownerdraw(menuDef_t*, int)
MenuParse_ownerdraw:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x42c
	mov ebx, [ebp+0xc]
	mov esi, [ebp+0x8]
	add esi, 0x40
	lea edi, [ebp-0x428]
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz MenuParse_ownerdraw_10
	movzx eax, byte [ebp-0x418]
	cmp al, 0x28
	jz MenuParse_ownerdraw_20
	cmp al, 0x2d
	jz MenuParse_ownerdraw_30
	xor edx, edx
MenuParse_ownerdraw_60:
	cmp dword [ebp-0x428], 0x3
	jz MenuParse_ownerdraw_40
	lea eax, [ebp-0x418]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_expected_integer
	mov [esp], ebx
	call PC_SourceError
	xor eax, eax
MenuParse_ownerdraw_70:
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MenuParse_ownerdraw_10:
	xor eax, eax
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MenuParse_ownerdraw_40:
	mov eax, [ebp-0x420]
	mov [esi], eax
	test edx, edx
	jz MenuParse_ownerdraw_50
	neg eax
	mov [esi], eax
MenuParse_ownerdraw_50:
	mov eax, 0x1
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MenuParse_ownerdraw_30:
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz MenuParse_ownerdraw_10
	mov edx, 0x1
	jmp MenuParse_ownerdraw_60
MenuParse_ownerdraw_20:
	mov edx, esi
	mov eax, ebx
	call PC_Int_Expression_Parse
	jmp MenuParse_ownerdraw_70
	nop


;MenuParse_ownerdrawFlag(menuDef_t*, int)
MenuParse_ownerdrawFlag:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x430
	mov ebx, [ebp+0xc]
	lea esi, [ebp-0x41c]
	mov [esp+0x4], esi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz MenuParse_ownerdrawFlag_10
	movzx eax, byte [ebp-0x40c]
	cmp al, 0x28
	jz MenuParse_ownerdrawFlag_20
	cmp al, 0x2d
	jz MenuParse_ownerdrawFlag_30
	xor edx, edx
MenuParse_ownerdrawFlag_70:
	cmp dword [ebp-0x41c], 0x3
	jz MenuParse_ownerdrawFlag_40
	lea eax, [ebp-0x40c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_expected_integer
	mov [esp], ebx
	call PC_SourceError
	xor eax, eax
	add esp, 0x430
	pop ebx
	pop esi
	pop ebp
	ret
MenuParse_ownerdrawFlag_30:
	mov [esp+0x4], esi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jnz MenuParse_ownerdrawFlag_50
MenuParse_ownerdrawFlag_10:
	xor eax, eax
	add esp, 0x430
	pop ebx
	pop esi
	pop ebp
	ret
MenuParse_ownerdrawFlag_20:
	lea edx, [ebp-0xc]
	mov eax, ebx
	call PC_Int_Expression_Parse
	test eax, eax
	jz MenuParse_ownerdrawFlag_10
MenuParse_ownerdrawFlag_60:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x44]
	or eax, [ebp-0xc]
	mov [edx+0x44], eax
	mov eax, 0x1
	add esp, 0x430
	pop ebx
	pop esi
	pop ebp
	ret
MenuParse_ownerdrawFlag_40:
	mov eax, [ebp-0x414]
	mov [ebp-0xc], eax
	test edx, edx
	jz MenuParse_ownerdrawFlag_60
	neg eax
	mov [ebp-0xc], eax
	jmp MenuParse_ownerdrawFlag_60
MenuParse_ownerdrawFlag_50:
	mov edx, 0x1
	jmp MenuParse_ownerdrawFlag_70
	nop


;MenuParse_outOfBounds(menuDef_t*, int)
MenuParse_outOfBounds:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [ebp+0x8]
	mov eax, [edx+0x4c]
	or eax, 0x2000000
	mov [esp+0x4], eax
	mov [esp], edx
	call Window_SetStaticFlags
	mov eax, 0x1
	leave
	ret


;MenuParse_soundLoop(menuDef_t*, int)
MenuParse_soundLoop:
	push ebp
	mov ebp, esp
	sub esp, 0x428
	lea eax, [ebp-0x418]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call PC_ReadTokenHandle
	test eax, eax
	jz MenuParse_soundLoop_10
	cmp byte [ebp-0x408], 0x0
	jnz MenuParse_soundLoop_20
	mov eax, 0x1
MenuParse_soundLoop_10:
	leave
	ret
MenuParse_soundLoop_20:
	lea eax, [ebp-0x408]
	mov [esp], eax
	call String_Alloc
	mov edx, [ebp+0x8]
	mov [edx+0xe0], eax
	mov eax, 0x1
	jmp MenuParse_soundLoop_10


;MenuParse_itemDef(menuDef_t*, int)
MenuParse_itemDef:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x42c
	mov eax, [ebp+0x8]
	cmp dword [eax+0xa4], 0xff
	jle MenuParse_itemDef_10
MenuParse_itemDef_120:
	mov eax, 0x1
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MenuParse_itemDef_10:
	mov dword [esp+0x4], 0x4
	mov dword [esp], 0x174
	call UI_Alloc
	mov edi, eax
	mov ecx, [ebp+0x8]
	mov ebx, [ecx+0xe4]
	mov dword [esp+0x8], 0x174
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	mov dword [edi+0xd0], 0x3f0ccccd
	mov [edi+0x130], ebx
	mov dword [esp+0x8], 0x9c
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call memset
	mov eax, 0x3f800000
	mov [edi+0x48], eax
	mov [edi+0x64], eax
	mov [edi+0x60], eax
	mov [edi+0x5c], eax
	mov [edi+0x58], eax
	lea eax, [ebp-0x428]
	mov [esp+0x4], eax
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call PC_ReadTokenHandle
	test eax, eax
	jz MenuParse_itemDef_20
	cmp byte [ebp-0x418], 0x7b
	jz MenuParse_itemDef_30
MenuParse_itemDef_20:
	mov eax, edi
	call Menu_FreeItemMemory
	xor eax, eax
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MenuParse_itemDef_70:
	lea esi, [ebp-0x418]
MenuParse_itemDef_80:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_unknown_menu_ite
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call PC_SourceError
MenuParse_itemDef_30:
	lea eax, [ebp-0x428]
	mov [esp+0x4], eax
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call PC_ReadTokenHandle
	test eax, eax
	jz MenuParse_itemDef_40
	movzx eax, byte [ebp-0x418]
	cmp al, 0x7d
	jz MenuParse_itemDef_50
	cmp al, 0x3b
	jz MenuParse_itemDef_30
	test al, al
	jnz MenuParse_itemDef_60
	xor esi, esi
	xor eax, eax
MenuParse_itemDef_100:
	lea eax, [esi+eax]
	and eax, 0xff
	mov ebx, [eax*4+itemParseKeywordHash]
	test ebx, ebx
	jz MenuParse_itemDef_70
	lea esi, [ebp-0x418]
	mov [esp+0x4], esi
	mov eax, [ebx]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz MenuParse_itemDef_80
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], edi
	call dword [ebx+0x4]
	test eax, eax
	jnz MenuParse_itemDef_30
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_couldnt_parse_me
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call PC_SourceError
	jmp MenuParse_itemDef_20
MenuParse_itemDef_60:
	xor esi, esi
	mov ebx, 0xf0f
MenuParse_itemDef_90:
	movsx eax, al
	mov [esp], eax
	call tolower
	imul eax, ebx
	add esi, eax
	movzx eax, byte [ebp+ebx-0x1326]
	add ebx, 0x1
	test al, al
	jnz MenuParse_itemDef_90
	mov eax, esi
	sar eax, 0x8
	jmp MenuParse_itemDef_100
MenuParse_itemDef_40:
	mov dword [esp+0x4], _cstring_end_of_file_insi
	mov eax, [ebp+0xc]
	mov [esp], eax
	call PC_SourceError
	jmp MenuParse_itemDef_20
MenuParse_itemDef_50:
	cmp dword [edi+0xb4], 0x6
	jz MenuParse_itemDef_110
MenuParse_itemDef_130:
	mov eax, [ebp+0x8]
	mov [edi+0xe8], eax
	mov edx, [eax+0xa4]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x118]
	mov [eax+edx*4], edi
	add dword [ecx+0xa4], 0x1
	jmp MenuParse_itemDef_120
MenuParse_itemDef_110:
	mov dword [edi+0x128], 0x0
	mov [esp], edi
	call Item_GetListBoxDef
	test eax, eax
	jz MenuParse_itemDef_130
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x0
	jmp MenuParse_itemDef_130
	nop


;MenuParse_execExp(menuDef_t*, int)
MenuParse_execExp:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x830
	mov esi, [ebp+0xc]
	lea eax, [ebp-0x828]
	mov [esp+0x4], eax
	mov [esp], esi
	call PC_ReadTokenHandle
	test eax, eax
	jnz MenuParse_execExp_10
MenuParse_execExp_30:
	xor eax, eax
MenuParse_execExp_80:
	add esp, 0x830
	pop ebx
	pop esi
	pop ebp
	ret
MenuParse_execExp_10:
	lea eax, [ebp-0x818]
	mov [esp], eax
	call String_Alloc
	mov ebx, eax
	mov dword [esp+0x4], _cstring_visible
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz MenuParse_execExp_20
	mov dword [esp+0x4], _cstring_rect
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz MenuParse_execExp_30
	lea eax, [ebp-0x418]
	mov [esp+0x4], eax
	mov [esp], esi
	call PC_ReadTokenHandle
	test eax, eax
	jz MenuParse_execExp_40
	mov dword [esp+0x4], _cstring_x
	lea ebx, [ebp-0x408]
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz MenuParse_execExp_50
	mov dword [esp], 0x960
	call Z_MallocInternal
	mov edx, [ebp+0x8]
	mov [edx+0x10c], eax
	mov dword [esp+0x8], 0xc8
	mov eax, edx
	add eax, 0x108
	jmp MenuParse_execExp_60
MenuParse_execExp_20:
	lea eax, [ebp-0x418]
	mov [esp+0x4], eax
	mov [esp], esi
	call PC_ReadTokenHandle
	test eax, eax
	jnz MenuParse_execExp_70
	mov dword [esp+0x4], _cstring_error_line_ended2
	mov dword [esp], 0x10
	call Com_PrintError
	xor eax, eax
	jmp MenuParse_execExp_80
MenuParse_execExp_70:
	mov dword [esp+0x4], _cstring_when
	lea ebx, [ebp-0x408]
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz MenuParse_execExp_90
	mov edx, [ebp+0x8]
	mov eax, [edx+0x50]
	or eax, 0x4
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x0
	call Window_SetDynamicFlags
	mov dword [esp], 0x960
	call Z_MallocInternal
	mov edx, [ebp+0x8]
	mov [edx+0xd8], eax
	mov dword [esp+0x8], 0xc8
	mov eax, edx
	add eax, 0xd4
MenuParse_execExp_60:
	mov [esp+0x4], eax
	mov [esp], esi
	call parse_expression
	test al, al
	jz MenuParse_execExp_30
	mov eax, 0x1
	jmp MenuParse_execExp_80
MenuParse_execExp_90:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_expected_w
	mov dword [esp], 0x10
	call Com_PrintError
	xor eax, eax
	jmp MenuParse_execExp_80
MenuParse_execExp_40:
	mov dword [esp+0x4], _cstring_error_line_ended
	mov dword [esp], 0x10
	call Com_PrintError
	jmp MenuParse_execExp_30
MenuParse_execExp_50:
	mov dword [esp+0x4], _cstring_y
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz MenuParse_execExp_100
	mov dword [esp], 0x960
	call Z_MallocInternal
	mov edx, [ebp+0x8]
	mov [edx+0x114], eax
	mov dword [esp+0x8], 0xc8
	mov eax, edx
	add eax, 0x110
	jmp MenuParse_execExp_60
MenuParse_execExp_100:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_expected_x1
	mov dword [esp], 0x10
	call Com_PrintError
	jmp MenuParse_execExp_30
	nop


;MenuParse_popup(menuDef_t*, int)
MenuParse_popup:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [ebp+0x8]
	mov eax, [edx+0x4c]
	or eax, 0x1000000
	mov [esp+0x4], eax
	mov [esp], edx
	call Window_SetStaticFlags
	mov eax, 0x1
	leave
	ret


;MenuParse_fadeClamp(menuDef_t*, int)
MenuParse_fadeClamp:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x42c
	mov ebx, [ebp+0xc]
	mov esi, [ebp+0x8]
	add esi, 0xb4
	lea edi, [ebp-0x428]
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz MenuParse_fadeClamp_10
	movzx eax, byte [ebp-0x418]
	cmp al, 0x28
	jz MenuParse_fadeClamp_20
	cmp al, 0x2d
	jz MenuParse_fadeClamp_30
	xor eax, eax
MenuParse_fadeClamp_60:
	cmp dword [ebp-0x428], 0x3
	jz MenuParse_fadeClamp_40
	lea eax, [ebp-0x418]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_expected_float_b
	mov [esp], ebx
	call PC_SourceError
	xor eax, eax
MenuParse_fadeClamp_70:
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MenuParse_fadeClamp_10:
	xor eax, eax
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MenuParse_fadeClamp_40:
	test eax, eax
	jnz MenuParse_fadeClamp_50
	mov eax, [ebp-0x41c]
	mov [esi], eax
	mov eax, 0x1
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MenuParse_fadeClamp_50:
	mov eax, [ebp-0x41c]
	xor eax, 0x80000000
	mov [esi], eax
	mov eax, 0x1
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MenuParse_fadeClamp_30:
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz MenuParse_fadeClamp_10
	mov eax, 0x1
	jmp MenuParse_fadeClamp_60
MenuParse_fadeClamp_20:
	mov edx, esi
	mov eax, ebx
	call PC_Float_Expression_Parse
	jmp MenuParse_fadeClamp_70


;MenuParse_fadeCycle(menuDef_t*, int)
MenuParse_fadeCycle:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x42c
	mov ebx, [ebp+0xc]
	mov esi, [ebp+0x8]
	add esi, 0xb0
	lea edi, [ebp-0x428]
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz MenuParse_fadeCycle_10
	movzx eax, byte [ebp-0x418]
	cmp al, 0x28
	jz MenuParse_fadeCycle_20
	cmp al, 0x2d
	jz MenuParse_fadeCycle_30
	xor edx, edx
MenuParse_fadeCycle_60:
	cmp dword [ebp-0x428], 0x3
	jz MenuParse_fadeCycle_40
	lea eax, [ebp-0x418]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_expected_integer
	mov [esp], ebx
	call PC_SourceError
	xor eax, eax
MenuParse_fadeCycle_70:
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MenuParse_fadeCycle_10:
	xor eax, eax
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MenuParse_fadeCycle_40:
	mov eax, [ebp-0x420]
	mov [esi], eax
	test edx, edx
	jz MenuParse_fadeCycle_50
	neg eax
	mov [esi], eax
MenuParse_fadeCycle_50:
	mov eax, 0x1
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MenuParse_fadeCycle_30:
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz MenuParse_fadeCycle_10
	mov edx, 0x1
	jmp MenuParse_fadeCycle_60
MenuParse_fadeCycle_20:
	mov edx, esi
	mov eax, ebx
	call PC_Int_Expression_Parse
	jmp MenuParse_fadeCycle_70


;MenuParse_fadeAmount(menuDef_t*, int)
MenuParse_fadeAmount:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x42c
	mov ebx, [ebp+0xc]
	mov esi, [ebp+0x8]
	add esi, 0xb8
	lea edi, [ebp-0x428]
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz MenuParse_fadeAmount_10
	movzx eax, byte [ebp-0x418]
	cmp al, 0x28
	jz MenuParse_fadeAmount_20
	cmp al, 0x2d
	jz MenuParse_fadeAmount_30
	xor eax, eax
MenuParse_fadeAmount_60:
	cmp dword [ebp-0x428], 0x3
	jz MenuParse_fadeAmount_40
	lea eax, [ebp-0x418]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_expected_float_b
	mov [esp], ebx
	call PC_SourceError
	xor eax, eax
MenuParse_fadeAmount_70:
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MenuParse_fadeAmount_10:
	xor eax, eax
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MenuParse_fadeAmount_40:
	test eax, eax
	jnz MenuParse_fadeAmount_50
	mov eax, [ebp-0x41c]
	mov [esi], eax
	mov eax, 0x1
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MenuParse_fadeAmount_50:
	mov eax, [ebp-0x41c]
	xor eax, 0x80000000
	mov [esi], eax
	mov eax, 0x1
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MenuParse_fadeAmount_30:
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz MenuParse_fadeAmount_10
	mov eax, 0x1
	jmp MenuParse_fadeAmount_60
MenuParse_fadeAmount_20:
	mov edx, esi
	mov eax, ebx
	call PC_Float_Expression_Parse
	jmp MenuParse_fadeAmount_70


;MenuParse_fadeInAmount(menuDef_t*, int)
MenuParse_fadeInAmount:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x42c
	mov ebx, [ebp+0xc]
	mov esi, [ebp+0x8]
	add esi, 0xbc
	lea edi, [ebp-0x428]
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz MenuParse_fadeInAmount_10
	movzx eax, byte [ebp-0x418]
	cmp al, 0x28
	jz MenuParse_fadeInAmount_20
	cmp al, 0x2d
	jz MenuParse_fadeInAmount_30
	xor eax, eax
MenuParse_fadeInAmount_60:
	cmp dword [ebp-0x428], 0x3
	jz MenuParse_fadeInAmount_40
	lea eax, [ebp-0x418]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_expected_float_b
	mov [esp], ebx
	call PC_SourceError
	xor eax, eax
MenuParse_fadeInAmount_70:
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MenuParse_fadeInAmount_10:
	xor eax, eax
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MenuParse_fadeInAmount_40:
	test eax, eax
	jnz MenuParse_fadeInAmount_50
	mov eax, [ebp-0x41c]
	mov [esi], eax
	mov eax, 0x1
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MenuParse_fadeInAmount_50:
	mov eax, [ebp-0x41c]
	xor eax, 0x80000000
	mov [esi], eax
	mov eax, 0x1
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MenuParse_fadeInAmount_30:
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz MenuParse_fadeInAmount_10
	mov eax, 0x1
	jmp MenuParse_fadeInAmount_60
MenuParse_fadeInAmount_20:
	mov edx, esi
	mov eax, ebx
	call PC_Float_Expression_Parse
	jmp MenuParse_fadeInAmount_70


;MenuParse_execKey(menuDef_t*, int)
MenuParse_execKey:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x430
	mov ebx, [ebp+0xc]
	lea eax, [ebp-0x41c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz MenuParse_execKey_10
	movzx esi, byte [ebp-0x40c]
	lea edx, [ebp-0xc]
	mov eax, ebx
	call PC_Script_Parse
	test eax, eax
	jnz MenuParse_execKey_20
MenuParse_execKey_10:
	xor eax, eax
	add esp, 0x430
	pop ebx
	pop esi
	pop ebp
	ret
MenuParse_execKey_20:
	mov dword [esp+0x4], 0x4
	mov dword [esp], 0xc
	call UI_Alloc
	movsx edx, si
	mov [eax], edx
	mov edx, [ebp-0xc]
	mov [eax+0x4], edx
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0xd0]
	mov [eax+0x8], edx
	mov [ecx+0xd0], eax
	mov eax, 0x1
	add esp, 0x430
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;MenuParse_execKeyInt(menuDef_t*, int)
MenuParse_execKeyInt:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x430
	mov ebx, [ebp+0xc]
	lea esi, [ebp-0x420]
	mov [esp+0x4], esi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz MenuParse_execKeyInt_10
	movzx eax, byte [ebp-0x410]
	cmp al, 0x28
	jz MenuParse_execKeyInt_20
	cmp al, 0x2d
	jz MenuParse_execKeyInt_30
	xor edx, edx
MenuParse_execKeyInt_70:
	cmp dword [ebp-0x420], 0x3
	jz MenuParse_execKeyInt_40
	lea eax, [ebp-0x410]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_expected_integer
	mov [esp], ebx
	call PC_SourceError
	xor eax, eax
	add esp, 0x430
	pop ebx
	pop esi
	pop ebp
	ret
MenuParse_execKeyInt_30:
	mov [esp+0x4], esi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jnz MenuParse_execKeyInt_50
MenuParse_execKeyInt_10:
	xor eax, eax
	add esp, 0x430
	pop ebx
	pop esi
	pop ebp
	ret
MenuParse_execKeyInt_20:
	lea edx, [ebp-0xc]
	mov eax, ebx
	call PC_Int_Expression_Parse
	test eax, eax
	jz MenuParse_execKeyInt_10
MenuParse_execKeyInt_60:
	lea edx, [ebp-0x10]
	mov eax, ebx
	call PC_Script_Parse
	test eax, eax
	jz MenuParse_execKeyInt_10
	mov dword [esp+0x4], 0x4
	mov dword [esp], 0xc
	call UI_Alloc
	mov edx, [ebp-0xc]
	mov [eax], edx
	mov edx, [ebp-0x10]
	mov [eax+0x4], edx
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0xd0]
	mov [eax+0x8], edx
	mov [ecx+0xd0], eax
	mov eax, 0x1
	add esp, 0x430
	pop ebx
	pop esi
	pop ebp
	ret
MenuParse_execKeyInt_40:
	mov eax, [ebp-0x418]
	mov [ebp-0xc], eax
	test edx, edx
	jz MenuParse_execKeyInt_60
	neg eax
	mov [ebp-0xc], eax
	jmp MenuParse_execKeyInt_60
MenuParse_execKeyInt_50:
	mov edx, 0x1
	jmp MenuParse_execKeyInt_70


;MenuParse_blurWorld(menuDef_t*, int)
MenuParse_blurWorld:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x42c
	mov edi, [ebp+0xc]
	mov esi, [ebp+0x8]
	add esi, 0xc0
	lea ebx, [ebp-0x428]
	mov [esp+0x4], ebx
	mov [esp], edi
	call PC_ReadTokenHandle
	test eax, eax
	jz MenuParse_blurWorld_10
	movzx eax, byte [ebp-0x418]
	cmp al, 0x28
	jz MenuParse_blurWorld_20
	cmp al, 0x2d
	jz MenuParse_blurWorld_30
	xor eax, eax
MenuParse_blurWorld_110:
	cmp dword [ebp-0x428], 0x3
	jz MenuParse_blurWorld_40
	lea eax, [ebp-0x418]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_expected_float_b
	mov [esp], edi
	call PC_SourceError
	xor eax, eax
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MenuParse_blurWorld_30:
	mov [esp+0x4], ebx
	mov [esp], edi
	call PC_ReadTokenHandle
	test eax, eax
	jnz MenuParse_blurWorld_50
MenuParse_blurWorld_10:
	xor eax, eax
MenuParse_blurWorld_80:
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MenuParse_blurWorld_20:
	mov edx, esi
	mov eax, edi
	call PC_Float_Expression_Parse
	test eax, eax
	jz MenuParse_blurWorld_10
MenuParse_blurWorld_100:
	mov eax, [ebp+0x8]
	movss xmm0, dword [eax+0xc0]
	ucomiss xmm0, [_float_0_00000000]
	jp MenuParse_blurWorld_60
	jb MenuParse_blurWorld_70
MenuParse_blurWorld_60:
	mov eax, 0x1
	add esp, 0x42c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
MenuParse_blurWorld_70:
	cvtss2sd xmm0, xmm0
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_blur_must_be__0_
	mov [esp], edi
	call PC_SourceError
	xor eax, eax
	jmp MenuParse_blurWorld_80
MenuParse_blurWorld_40:
	test eax, eax
	jz MenuParse_blurWorld_90
	mov eax, [ebp-0x41c]
	xor eax, 0x80000000
	mov [esi], eax
	jmp MenuParse_blurWorld_100
MenuParse_blurWorld_90:
	mov eax, [ebp-0x41c]
	mov [esi], eax
	jmp MenuParse_blurWorld_100
MenuParse_blurWorld_50:
	mov eax, 0x1
	jmp MenuParse_blurWorld_110


;MenuParse_legacySplitScreenScale(menuDef_t*, int)
MenuParse_legacySplitScreenScale:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [ebp+0x8]
	mov eax, [edx+0x4c]
	or eax, 0x4000000
	mov [esp+0x4], eax
	mov [esp], edx
	call Window_SetStaticFlags
	mov eax, 0x1
	leave
	ret


;MenuParse_hiddenDuringScope(menuDef_t*, int)
MenuParse_hiddenDuringScope:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [ebp+0x8]
	mov eax, [edx+0x4c]
	or eax, 0x20000000
	mov [esp+0x4], eax
	mov [esp], edx
	call Window_SetStaticFlags
	mov eax, 0x1
	leave
	ret


;MenuParse_hiddenDuringFlashbang(menuDef_t*, int)
MenuParse_hiddenDuringFlashbang:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [ebp+0x8]
	mov eax, [edx+0x4c]
	or eax, 0x10000000
	mov [esp+0x4], eax
	mov [esp], edx
	call Window_SetStaticFlags
	mov eax, 0x1
	leave
	ret


;MenuParse_hiddenDuringUI(menuDef_t*, int)
MenuParse_hiddenDuringUI:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [ebp+0x8]
	mov eax, [edx+0x4c]
	or eax, 0x40000000
	mov [esp+0x4], eax
	mov [esp], edx
	call Window_SetStaticFlags
	mov eax, 0x1
	leave
	ret


;MenuParse_allowedBinding(menuDef_t*, int)
MenuParse_allowedBinding:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x420
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov ecx, [esi+0xdc]
	test ecx, ecx
	jz MenuParse_allowedBinding_10
	mov dword [esp+0x4], _cstring_only_one_allowed
	mov [esp], ebx
	call PC_SourceError
MenuParse_allowedBinding_10:
	lea eax, [ebp-0x418]
	mov [esp+0x4], eax
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz MenuParse_allowedBinding_20
	lea eax, [ebp-0x408]
	mov [esp], eax
	call String_Alloc
	mov [esi+0xdc], eax
	mov eax, 0x1
MenuParse_allowedBinding_20:
	add esp, 0x420
	pop ebx
	pop esi
	pop ebp
	ret


;Menu_FreeItemMemory(itemDef_s*)
Menu_FreeItemMemory:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, eax
	lea eax, [eax+0x134]
	mov [esp], eax
	call free_expression
	lea eax, [ebx+0x144]
	mov [esp], eax
	call free_expression
	lea eax, [ebx+0x13c]
	mov [esp], eax
	call free_expression
	lea eax, [ebx+0x14c]
	mov [esp], eax
	call free_expression
	lea eax, [ebx+0x154]
	mov [esp], eax
	call free_expression
	lea eax, [ebx+0x15c]
	mov [esp], eax
	call free_expression
	lea eax, [ebx+0x164]
	mov [esp], eax
	call free_expression
	lea eax, [ebx+0x16c]
	mov [esp], eax
	call free_expression
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;PC_SourceError(int, char*, ...)
PC_SourceError:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0xb4
	lea eax, [ebp+0x10]
	mov [ebp-0x10], eax
	mov [esp+0xc], eax
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1000
	mov dword [esp], _ZZ14PC_SourceErroriPczE6string
	call vsnprintf
	mov byte [ebp-0x90], 0x0
	mov dword [ebp-0xc], 0x0
	lea eax, [ebp-0xc]
	mov [esp+0x8], eax
	lea ebx, [ebp-0x90]
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call PC_SourceFileAndLine
	mov dword [esp+0x10], _ZZ14PC_SourceErroriPczE6string
	mov eax, [ebp-0xc]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_menu_load_error_
	mov dword [esp], 0xd
	call Com_PrintError
	add esp, 0xb4
	pop ebx
	pop ebp
	ret
	nop


;PC_Int_Expression_Parse(int, int*)
PC_Int_Expression_Parse:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x446c
	mov esi, eax
	mov [ebp-0x445c], edx
	mov dword [ebp-0x448], 0x0
	mov dword [ebp-0x444], 0x0
	mov dword [ebp-0x440], 0x0
	mov byte [ebp-0x43c], 0x0
	xor edi, edi
PC_Int_Expression_Parse_80:
	lea eax, [ebp-0x438]
	mov [esp+0x4], eax
	mov [esp], esi
	call PC_ReadTokenHandle
	test eax, eax
	jz PC_Int_Expression_Parse_10
PC_Int_Expression_Parse_70:
	cmp dword [ebp-0x438], 0x3
	jz PC_Int_Expression_Parse_20
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x428]
	mov [esp], ebx
	call Eval_OperatorForToken
	test al, al
	jz PC_Int_Expression_Parse_30
	mov eax, [ebp-0x1c]
	cmp eax, 0x1
	jz PC_Int_Expression_Parse_40
	test eax, eax
	jnz PC_Int_Expression_Parse_50
	add edi, 0x1
	cmp edi, 0x10
	jg PC_Int_Expression_Parse_60
PC_Int_Expression_Parse_50:
	mov [esp+0x4], eax
	lea eax, [ebp-0x4448]
	mov [esp], eax
	call Eval_PushOperator
	lea eax, [ebp-0x438]
	mov [esp+0x4], eax
	mov [esp], esi
	call PC_ReadTokenHandle
	test eax, eax
	jnz PC_Int_Expression_Parse_70
PC_Int_Expression_Parse_10:
	xor eax, eax
PC_Int_Expression_Parse_110:
	lea esp, [ebp-0xc]
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PC_Int_Expression_Parse_20:
	mov eax, [ebp-0x430]
	mov [esp+0x4], eax
	lea eax, [ebp-0x4448]
	mov [esp], eax
	call Eval_PushInteger
	test al, al
	jnz PC_Int_Expression_Parse_80
PC_Int_Expression_Parse_100:
	mov dword [esp+0x4], _cstring_error_evaluating
	mov [esp], esi
	call PC_SourceError
	xor eax, eax
	lea esp, [ebp-0xc]
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PC_Int_Expression_Parse_40:
	test edi, edi
	jz PC_Int_Expression_Parse_90
	sub edi, 0x1
	jmp PC_Int_Expression_Parse_50
PC_Int_Expression_Parse_30:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_expected_operato
	mov [esp], esi
	call PC_SourceError
	jmp PC_Int_Expression_Parse_10
PC_Int_Expression_Parse_60:
	mov dword [esp+0x4], _cstring_too_much_recursi
	mov [esp], esi
	call PC_SourceError
	xor eax, eax
	lea esp, [ebp-0xc]
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PC_Int_Expression_Parse_90:
	lea ebx, [ebp-0x4448]
	mov [esp], ebx
	call Eval_AnyMissingOperands
	test al, al
	jnz PC_Int_Expression_Parse_100
	lea eax, [ebp-0x4458]
	mov [esp+0x4], ebx
	mov [esp], eax
	call Eval_Solve
	sub esp, 0x4
	mov eax, [ebp-0x4458]
	mov [ebp-0x28], eax
	mov edx, [ebp-0x4454]
	mov [ebp-0x24], edx
	mov eax, [ebp-0x4450]
	mov [ebp-0x20], eax
	mov eax, [ebp-0x445c]
	mov [eax], edx
	mov eax, 0x1
	jmp PC_Int_Expression_Parse_110


;PC_Script_Parse(int, char const**)
PC_Script_Parse:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x183c
	mov [ebp-0x182c], eax
	mov [ebp-0x1830], edx
	lea ebx, [ebp-0x1828]
	mov dword [esp+0x8], 0x1400
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call memset
	lea eax, [ebp-0x428]
	mov [esp+0x4], eax
	mov edx, [ebp-0x182c]
	mov [esp], edx
	call PC_ReadTokenHandle
	test eax, eax
	jnz PC_Script_Parse_10
PC_Script_Parse_20:
	xor eax, eax
PC_Script_Parse_80:
	add esp, 0x183c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PC_Script_Parse_10:
	mov dword [esp+0x4], _cstring_
	lea ecx, [ebp-0x418]
	mov [esp], ecx
	call Q_stricmp
	test eax, eax
	jnz PC_Script_Parse_20
	xor esi, esi
	jmp PC_Script_Parse_30
PC_Script_Parse_60:
	lea eax, [ebp-0x418]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_s
	call va
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1400
	mov [esp], ebx
	call Q_strncat
PC_Script_Parse_70:
	cld
	mov ecx, 0xffffffff
	mov edi, ebx
	mov eax, esi
	repne scasb
	not ecx
	cmp ecx, 0x1400
	ja PC_Script_Parse_40
	mov dword [esp+0x8], _cstring_space
	mov dword [esp+0x4], 0x1400
	mov [esp], ebx
	call Q_strncat
PC_Script_Parse_30:
	lea eax, [ebp-0x428]
	mov [esp+0x4], eax
	mov edx, [ebp-0x182c]
	mov [esp], edx
	call PC_ReadTokenHandle
	test eax, eax
	jz PC_Script_Parse_20
	mov dword [esp+0x4], _cstring_1
	lea ecx, [ebp-0x418]
	mov [esp], ecx
	call Q_stricmp
	test eax, eax
	jz PC_Script_Parse_50
	cld
	mov ecx, 0xffffffff
	mov edi, ebx
	mov eax, esi
	repne scasb
	mov edx, ecx
	not edx
	mov ecx, 0xffffffff
	lea edi, [ebp-0x418]
	repne scasb
	not ecx
	lea ecx, [ecx+edx-0x2]
	cmp ecx, 0x1400
	ja PC_Script_Parse_40
	cmp byte [ebp-0x418], 0x0
	jz PC_Script_Parse_60
	cmp byte [ebp-0x417], 0x0
	jnz PC_Script_Parse_60
	lea edx, [ebp-0x418]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x1400
	mov [esp], ebx
	call Q_strncat
	jmp PC_Script_Parse_70
PC_Script_Parse_40:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_action_block_too
	mov dword [esp], 0x10
	call Com_PrintError
	xor eax, eax
	add esp, 0x183c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PC_Script_Parse_50:
	mov [esp], ebx
	call String_Alloc
	mov edx, [ebp-0x1830]
	mov [edx], eax
	mov eax, 0x1
	jmp PC_Script_Parse_80


;Item_ValidateTypeData(itemDef_s*, int)
Item_ValidateTypeData:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, eax
	mov ecx, [eax+0x12c]
	test ecx, ecx
	jz Item_ValidateTypeData_10
	mov ecx, [eax+0xb8]
	mov eax, [eax+0xb4]
	cmp ecx, eax
	jz Item_ValidateTypeData_20
	mov [esp+0xc], eax
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_attempting_to_ch
	mov [esp], edx
	call PC_SourceError
Item_ValidateTypeData_20:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
Item_ValidateTypeData_10:
	mov eax, [eax+0xb4]
	mov [ebx+0xb8], eax
	cmp eax, 0x6
	jz Item_ValidateTypeData_30
	cmp eax, 0x4
	jz Item_ValidateTypeData_40
	cmp eax, 0x9
	jz Item_ValidateTypeData_40
	cmp eax, 0x10
	jz Item_ValidateTypeData_40
	cmp eax, 0x12
	jz Item_ValidateTypeData_40
	cmp eax, 0xb
	jz Item_ValidateTypeData_40
	cmp eax, 0xe
	jz Item_ValidateTypeData_40
	cmp eax, 0xa
	jz Item_ValidateTypeData_40
	test eax, eax
	jz Item_ValidateTypeData_40
	cmp eax, 0x11
	jz Item_ValidateTypeData_40
	cmp eax, 0xc
	jnz Item_ValidateTypeData_20
	mov dword [esp+0x4], 0x4
	mov dword [esp], 0x188
	call UI_Alloc
	mov [ebx+0x12c], eax
	jmp Item_ValidateTypeData_20
Item_ValidateTypeData_40:
	mov dword [esp+0x4], 0x4
	mov dword [esp], 0x20
	call UI_Alloc
	mov [ebx+0x12c], eax
	mov eax, [ebx+0xb4]
	cmp eax, 0x4
	jz Item_ValidateTypeData_50
	cmp eax, 0x10
	jz Item_ValidateTypeData_50
	cmp eax, 0x9
	jz Item_ValidateTypeData_50
	cmp eax, 0x12
	jz Item_ValidateTypeData_50
	cmp eax, 0x11
	jnz Item_ValidateTypeData_20
Item_ValidateTypeData_50:
	mov [esp], ebx
	call Item_GetEditFieldDef
	mov edx, [eax+0x18]
	test edx, edx
	jnz Item_ValidateTypeData_20
	mov dword [eax+0x18], 0x100
	jmp Item_ValidateTypeData_20
Item_ValidateTypeData_30:
	mov dword [esp+0x4], 0x4
	mov dword [esp], 0x154
	call UI_Alloc
	mov [ebx+0x12c], eax
	jmp Item_ValidateTypeData_20


;UI_LoadMenu_FastFile(char const*, int)
UI_LoadMenu_FastFile:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0x14
	call DB_FindXAssetHeader
	leave
	ret
	nop


;UI_LoadMenus_FastFile(char const*, int)
UI_LoadMenus_FastFile:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0x14
	call DB_FindXAssetHeader
	leave
	ret
	nop


;UI_LoadMenus_LoadObj(char const*, int)
UI_LoadMenus_LoadObj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edi, [ebp+0x8]
	mov dword [esp+0x8], 0xc1c
	mov dword [esp+0x4], 0x0
	mov dword [esp], g_load
	call memset
	mov dword [g_load+0x18], g_load+0x41c
	mov dword [esp+0x8], 0x0
	lea esi, [ebp-0x20]
	mov [esp+0x4], esi
	mov [esp], edi
	call FS_FOpenFileByMode
	mov ebx, eax
	mov eax, [ebp-0x20]
	test eax, eax
	jz UI_LoadMenus_LoadObj_10
UI_LoadMenus_LoadObj_70:
	cmp ebx, 0x7fff
	jg UI_LoadMenus_LoadObj_20
UI_LoadMenus_LoadObj_80:
	mov eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov dword [esp], menuBuf
	call FS_Read
	mov byte [ebx+menuBuf], 0x0
	mov eax, [ebp-0x20]
	mov [esp], eax
	call FS_FCloseFile
	mov dword [esp], menuBuf
	call Com_Compress
	mov dword [ebp-0x1c], menuBuf
	mov [esp], edi
	call Com_BeginParseSession
	lea esi, [ebp-0x1c]
UI_LoadMenus_LoadObj_40:
	mov [esp], esi
	call Com_Parse
	mov ebx, eax
	test eax, eax
	jz UI_LoadMenus_LoadObj_30
	movzx eax, byte [eax]
	test al, al
	jz UI_LoadMenus_LoadObj_30
	cmp al, 0x7d
	jz UI_LoadMenus_LoadObj_30
	mov dword [esp+0x4], _cstring_1
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jz UI_LoadMenus_LoadObj_30
	mov dword [esp+0x4], _cstring_loadmenu
	mov [esp], ebx
	call Q_stricmp
	test eax, eax
	jnz UI_LoadMenus_LoadObj_40
	mov [esp], esi
	call Com_Parse
	cmp byte [eax], 0x7b
	jz UI_LoadMenus_LoadObj_50
UI_LoadMenus_LoadObj_30:
	call Com_EndParseSession
	mov eax, g_load+0x10
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
UI_LoadMenus_LoadObj_60:
	test ebx, ebx
	jz UI_LoadMenus_LoadObj_30
	cmp byte [ebx], 0x0
	jz UI_LoadMenus_LoadObj_30
	mov edx, [ebp+0xc]
	mov eax, ebx
	call UI_ParseMenuInternal
UI_LoadMenus_LoadObj_50:
	mov [esp], esi
	call Com_Parse
	mov ebx, eax
	mov dword [esp+0x4], _cstring_1
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz UI_LoadMenus_LoadObj_60
	jmp UI_LoadMenus_LoadObj_40
UI_LoadMenus_LoadObj_10:
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_3warning_menu_fi
	mov dword [esp], 0xd
	call Com_Printf
	mov dword [esp+0x8], 0x0
	mov [esp+0x4], esi
	mov dword [esp], _cstring_uidefaultmenu
	call FS_FOpenFileByMode
	mov ebx, eax
	mov ecx, [ebp-0x20]
	test ecx, ecx
	jnz UI_LoadMenus_LoadObj_70
	mov dword [esp+0x4], _cstring_defaultmenu_file
	mov dword [esp], 0x2
	call Com_Error
	jmp UI_LoadMenus_LoadObj_70
UI_LoadMenus_LoadObj_20:
	mov eax, [ebp-0x20]
	mov [esp], eax
	call FS_FCloseFile
	mov dword [esp+0x10], 0x8000
	mov [esp+0xc], ebx
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_1menu_file_too_l
	mov dword [esp], 0x2
	call Com_Error
	jmp UI_LoadMenus_LoadObj_80
	nop


;UI_LoadMenu_LoadObj(char const*, int)
UI_LoadMenu_LoadObj:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov dword [esp+0x8], 0xc1c
	mov dword [esp+0x4], 0x0
	mov dword [esp], g_load
	call memset
	mov dword [g_load+0x18], g_load+0x41c
	mov edx, ebx
	mov eax, esi
	call UI_ParseMenuInternal
	test al, al
	jz UI_LoadMenu_LoadObj_10
UI_LoadMenu_LoadObj_20:
	mov eax, g_load+0x10
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
UI_LoadMenu_LoadObj_10:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_warning_menu_fil
	mov dword [esp], 0xd
	call Com_PrintWarning
	mov edx, ebx
	mov eax, _cstring_uidefaultmenu
	call UI_ParseMenuInternal
	test al, al
	jnz UI_LoadMenu_LoadObj_20
	mov dword [esp+0x4], _cstring_defaultmenu_file
	mov dword [esp], 0x2
	call Com_Error
	mov eax, g_load+0x10
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;PC_Float_Expression_Parse(int, float*)
PC_Float_Expression_Parse:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x446c
	mov esi, eax
	mov [ebp-0x445c], edx
	mov dword [ebp-0x448], 0x0
	mov dword [ebp-0x444], 0x0
	mov dword [ebp-0x440], 0x0
	mov byte [ebp-0x43c], 0x0
	xor edi, edi
PC_Float_Expression_Parse_80:
	lea eax, [ebp-0x438]
	mov [esp+0x4], eax
	mov [esp], esi
	call PC_ReadTokenHandle
	test eax, eax
	jz PC_Float_Expression_Parse_10
PC_Float_Expression_Parse_70:
	cmp dword [ebp-0x438], 0x3
	jz PC_Float_Expression_Parse_20
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x428]
	mov [esp], ebx
	call Eval_OperatorForToken
	test al, al
	jz PC_Float_Expression_Parse_30
	mov eax, [ebp-0x1c]
	cmp eax, 0x1
	jz PC_Float_Expression_Parse_40
	test eax, eax
	jnz PC_Float_Expression_Parse_50
	add edi, 0x1
	cmp edi, 0x10
	jg PC_Float_Expression_Parse_60
PC_Float_Expression_Parse_50:
	mov [esp+0x4], eax
	lea eax, [ebp-0x4448]
	mov [esp], eax
	call Eval_PushOperator
	lea eax, [ebp-0x438]
	mov [esp+0x4], eax
	mov [esp], esi
	call PC_ReadTokenHandle
	test eax, eax
	jnz PC_Float_Expression_Parse_70
PC_Float_Expression_Parse_10:
	xor eax, eax
PC_Float_Expression_Parse_110:
	lea esp, [ebp-0xc]
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PC_Float_Expression_Parse_20:
	cvtss2sd xmm0, [ebp-0x42c]
	movsd [esp+0x4], xmm0
	lea eax, [ebp-0x4448]
	mov [esp], eax
	call Eval_PushNumber
	test al, al
	jnz PC_Float_Expression_Parse_80
PC_Float_Expression_Parse_100:
	mov dword [esp+0x4], _cstring_error_evaluating
	mov [esp], esi
	call PC_SourceError
	xor eax, eax
	lea esp, [ebp-0xc]
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PC_Float_Expression_Parse_40:
	test edi, edi
	jz PC_Float_Expression_Parse_90
	sub edi, 0x1
	jmp PC_Float_Expression_Parse_50
PC_Float_Expression_Parse_30:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_expected_operato
	mov [esp], esi
	call PC_SourceError
	jmp PC_Float_Expression_Parse_10
PC_Float_Expression_Parse_60:
	mov dword [esp+0x4], _cstring_too_much_recursi
	mov [esp], esi
	call PC_SourceError
	xor eax, eax
	lea esp, [ebp-0xc]
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PC_Float_Expression_Parse_90:
	lea ebx, [ebp-0x4448]
	mov [esp], ebx
	call Eval_AnyMissingOperands
	test al, al
	jnz PC_Float_Expression_Parse_100
	lea eax, [ebp-0x4458]
	mov [esp+0x4], ebx
	mov [esp], eax
	call Eval_Solve
	sub esp, 0x4
	mov eax, [ebp-0x4458]
	mov [ebp-0x28], eax
	mov eax, [ebp-0x4454]
	mov [ebp-0x24], eax
	mov eax, [ebp-0x4450]
	mov [ebp-0x20], eax
	cvtsd2ss xmm0, [ebp-0x24]
	mov eax, [ebp-0x445c]
	movss [eax], xmm0
	mov eax, 0x1
	jmp PC_Float_Expression_Parse_110
	nop


;PC_Rect_Parse(int, rectDef_s*)
PC_Rect_Parse:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x44c
	mov ebx, eax
	mov esi, edx
	lea edi, [ebp-0x428]
	mov [esp+0x4], edi
	mov [esp], eax
	call PC_ReadTokenHandle
	test eax, eax
	jz PC_Rect_Parse_10
	movzx eax, byte [ebp-0x418]
	cmp al, 0x28
	jz PC_Rect_Parse_20
	cmp al, 0x2d
	jz PC_Rect_Parse_30
	xor eax, eax
PC_Rect_Parse_230:
	cmp dword [ebp-0x428], 0x3
	jz PC_Rect_Parse_40
PC_Rect_Parse_70:
	lea eax, [ebp-0x418]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_expected_float_b
	mov [esp], ebx
	call PC_SourceError
PC_Rect_Parse_10:
	xor eax, eax
PC_Rect_Parse_200:
	add esp, 0x44c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PC_Rect_Parse_20:
	mov edx, esi
	mov eax, ebx
	call PC_Float_Expression_Parse
	test eax, eax
	jz PC_Rect_Parse_10
PC_Rect_Parse_220:
	lea eax, [esi+0x4]
	mov [ebp-0x43c], eax
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz PC_Rect_Parse_10
	movzx eax, byte [ebp-0x418]
	cmp al, 0x28
	jz PC_Rect_Parse_50
	cmp al, 0x2d
	jz PC_Rect_Parse_60
	xor eax, eax
PC_Rect_Parse_250:
	cmp dword [ebp-0x428], 0x3
	jnz PC_Rect_Parse_70
	test eax, eax
	jz PC_Rect_Parse_80
	mov eax, [ebp-0x41c]
	xor eax, 0x80000000
	mov edx, [ebp-0x43c]
	mov [edx], eax
PC_Rect_Parse_240:
	lea eax, [esi+0x8]
	mov [ebp-0x438], eax
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz PC_Rect_Parse_10
	movzx eax, byte [ebp-0x418]
	cmp al, 0x28
	jz PC_Rect_Parse_90
	cmp al, 0x2d
	jz PC_Rect_Parse_100
	xor eax, eax
PC_Rect_Parse_270:
	cmp dword [ebp-0x428], 0x3
	jnz PC_Rect_Parse_70
	test eax, eax
	jz PC_Rect_Parse_110
	mov eax, [ebp-0x41c]
	xor eax, 0x80000000
	mov edx, [ebp-0x438]
	mov [edx], eax
PC_Rect_Parse_260:
	lea eax, [esi+0xc]
	mov [ebp-0x434], eax
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz PC_Rect_Parse_10
	movzx eax, byte [ebp-0x418]
	cmp al, 0x28
	jz PC_Rect_Parse_120
	cmp al, 0x2d
	jz PC_Rect_Parse_130
	xor eax, eax
PC_Rect_Parse_320:
	cmp dword [ebp-0x428], 0x3
	jnz PC_Rect_Parse_70
	test eax, eax
	jz PC_Rect_Parse_140
	mov eax, [ebp-0x41c]
	xor eax, 0x80000000
	mov edx, [ebp-0x434]
	mov [edx], eax
PC_Rect_Parse_310:
	lea eax, [esi+0x10]
	mov [ebp-0x430], eax
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadLineHandle
	test eax, eax
	jz PC_Rect_Parse_150
	cmp byte [ebp-0x418], 0x2d
	jz PC_Rect_Parse_160
	xor edx, edx
PC_Rect_Parse_340:
	cmp dword [ebp-0x428], 0x3
	jnz PC_Rect_Parse_170
	mov eax, [ebp-0x420]
	mov ecx, [ebp-0x430]
	mov [ecx], eax
	test edx, edx
	jz PC_Rect_Parse_180
	neg eax
	mov [ecx], eax
PC_Rect_Parse_180:
	lea edx, [esi+0x14]
	mov [ebp-0x42c], edx
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadLineHandle
	test eax, eax
	jnz PC_Rect_Parse_190
PC_Rect_Parse_330:
	mov dword [esi+0x14], 0x0
	mov eax, 0x1
	jmp PC_Rect_Parse_200
PC_Rect_Parse_40:
	test eax, eax
	jz PC_Rect_Parse_210
	mov eax, [ebp-0x41c]
	xor eax, 0x80000000
	mov [esi], eax
	jmp PC_Rect_Parse_220
PC_Rect_Parse_210:
	mov eax, [ebp-0x41c]
	mov [esi], eax
	jmp PC_Rect_Parse_220
PC_Rect_Parse_30:
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz PC_Rect_Parse_10
	mov eax, 0x1
	jmp PC_Rect_Parse_230
PC_Rect_Parse_80:
	mov eax, [ebp-0x41c]
	mov ecx, [ebp-0x43c]
	mov [ecx], eax
	jmp PC_Rect_Parse_240
PC_Rect_Parse_50:
	mov edx, [ebp-0x43c]
	mov eax, ebx
	call PC_Float_Expression_Parse
	test eax, eax
	jz PC_Rect_Parse_10
	jmp PC_Rect_Parse_240
PC_Rect_Parse_60:
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz PC_Rect_Parse_10
	mov eax, 0x1
	jmp PC_Rect_Parse_250
PC_Rect_Parse_110:
	mov eax, [ebp-0x41c]
	mov ecx, [ebp-0x438]
	mov [ecx], eax
	jmp PC_Rect_Parse_260
PC_Rect_Parse_90:
	mov edx, [ebp-0x438]
	mov eax, ebx
	call PC_Float_Expression_Parse
	test eax, eax
	jz PC_Rect_Parse_10
	jmp PC_Rect_Parse_260
PC_Rect_Parse_100:
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz PC_Rect_Parse_10
	mov eax, 0x1
	jmp PC_Rect_Parse_270
PC_Rect_Parse_170:
	lea eax, [ebp-0x418]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_expected_integer
	mov [esp], ebx
	call PC_SourceError
PC_Rect_Parse_150:
	mov dword [esi+0x10], 0x0
	jmp PC_Rect_Parse_180
PC_Rect_Parse_190:
	cmp byte [ebp-0x418], 0x2d
	jz PC_Rect_Parse_280
	xor edx, edx
PC_Rect_Parse_350:
	cmp dword [ebp-0x428], 0x3
	jnz PC_Rect_Parse_290
	mov eax, [ebp-0x420]
	mov ecx, [ebp-0x42c]
	mov [ecx], eax
	test edx, edx
	jz PC_Rect_Parse_300
	neg eax
	mov edx, [ebp-0x42c]
	mov [edx], eax
PC_Rect_Parse_300:
	mov eax, 0x1
	jmp PC_Rect_Parse_200
PC_Rect_Parse_140:
	mov eax, [ebp-0x41c]
	mov ecx, [ebp-0x434]
	mov [ecx], eax
	jmp PC_Rect_Parse_310
PC_Rect_Parse_120:
	mov edx, [ebp-0x434]
	mov eax, ebx
	call PC_Float_Expression_Parse
	test eax, eax
	jz PC_Rect_Parse_10
	jmp PC_Rect_Parse_310
PC_Rect_Parse_130:
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadTokenHandle
	test eax, eax
	jz PC_Rect_Parse_10
	mov eax, 0x1
	jmp PC_Rect_Parse_320
PC_Rect_Parse_290:
	lea eax, [ebp-0x418]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_expected_integer
	mov [esp], ebx
	call PC_SourceError
	jmp PC_Rect_Parse_330
PC_Rect_Parse_160:
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadLineHandle
	test eax, eax
	jz PC_Rect_Parse_150
	mov edx, 0x1
	jmp PC_Rect_Parse_340
PC_Rect_Parse_280:
	mov [esp+0x4], edi
	mov [esp], ebx
	call PC_ReadLineHandle
	test eax, eax
	jz PC_Rect_Parse_330
	mov edx, 0x1
	jmp PC_Rect_Parse_350


;UI_ParseMenuInternal(char const*, int)
UI_ParseMenuInternal:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xc6c
	mov ebx, eax
	mov [ebp-0xc60], edx
	mov dword [ebp-0x20], _cstring_pc
	mov dword [ebp-0x1c], 0x0
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_loading_s
	mov dword [esp], 0xd
	call Com_Printf
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov [esp], ebx
	call PC_LoadSourceHandle
	mov edi, eax
	test eax, eax
	jnz UI_ParseMenuInternal_10
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_couldnt_find_men
	mov dword [esp], 0xd
	call Com_PrintError
	xor eax, eax
	add esp, 0xc6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
UI_ParseMenuInternal_190:
	mov eax, [esi]
	test eax, eax
	jz UI_ParseMenuInternal_20
	mov ebx, [esi+0xa4]
	shl ebx, 0x2
	mov dword [esp+0x4], 0x4
	mov [esp], ebx
	call UI_Alloc
	mov [esi+0x118], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], g_load+0x1c
	mov [esp], eax
	call memcpy
	mov eax, [esi+0xa0]
	test eax, eax
	jz UI_ParseMenuInternal_30
	xor eax, eax
	mov [esi+0x4], eax
	mov [esi+0x8], eax
	mov dword [esi+0xc], 0x44200000
	mov dword [esi+0x10], 0x43f00000
UI_ParseMenuInternal_30:
	mov [esp+0x4], esi
	mov dword [esp], 0x0
	call Menu_UpdatePosition
	cmp dword [g_load+0x14], 0x1ff
	jle UI_ParseMenuInternal_40
	mov dword [esp+0x4], _cstring_menu_new_exe_err
	mov dword [esp], 0x2
	call Com_Error
UI_ParseMenuInternal_40:
	mov edx, [g_load+0x14]
	mov eax, [g_load+0x18]
	mov [eax+edx*4], esi
	add dword [g_load+0x14], 0x1
UI_ParseMenuInternal_10:
	lea eax, [ebp-0x840]
	mov [esp+0x4], eax
	mov [esp], edi
	call PC_ReadTokenHandle
	test eax, eax
	jz UI_ParseMenuInternal_50
	mov dword [esp+0x4], _cstring_1
	lea eax, [ebp-0x830]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz UI_ParseMenuInternal_10
	mov dword [esp+0x4], _cstring_
	lea eax, [ebp-0x830]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz UI_ParseMenuInternal_10
	mov dword [esp+0x4], _cstring_assetglobaldef
	lea eax, [ebp-0x830]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz UI_ParseMenuInternal_60
	lea eax, [ebp-0x430]
	mov [esp+0x4], eax
	mov [esp], edi
	call PC_ReadTokenHandle
	test eax, eax
	jnz UI_ParseMenuInternal_70
UI_ParseMenuInternal_50:
	mov [esp], edi
	call PC_FreeSourceHandle
	mov eax, 0x1
UI_ParseMenuInternal_120:
	add esp, 0xc6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
UI_ParseMenuInternal_60:
	mov dword [esp+0x4], _cstring_menudef
	lea eax, [ebp-0x830]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz UI_ParseMenuInternal_80
	mov dword [esp+0x4], 0x4
	mov dword [esp], 0x11c
	call UI_Alloc
	mov esi, eax
	mov dword [esp+0x8], 0x11c
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	mov dword [esp+0x8], 0xffffffff
	mov [esp+0x4], esi
	mov dword [esp], 0x0
	call Menu_SetCursorItem
	mov eax, [g_load+0x8]
	mov [esi+0xb8], eax
	mov eax, [g_load+0xc]
	mov [esi+0xbc], eax
	mov eax, [g_load]
	mov [esi+0xb4], eax
	mov eax, [g_load+0x4]
	mov [esi+0xb0], eax
	mov eax, [ebp-0xc60]
	mov [esi+0xe4], eax
	mov dword [esi+0x118], g_load+0x1c
	mov dword [esp+0x8], 0x9c
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call memset
	mov eax, 0x3f800000
	mov [esi+0x48], eax
	mov [esi+0x64], eax
	mov [esi+0x60], eax
	mov [esi+0x5c], eax
	mov [esi+0x58], eax
	lea eax, [ebp-0xc50]
	mov [esp+0x4], eax
	mov [esp], edi
	call PC_ReadTokenHandle
	test eax, eax
	jz UI_ParseMenuInternal_90
	cmp byte [ebp-0xc40], 0x7b
	jz UI_ParseMenuInternal_100
UI_ParseMenuInternal_90:
	mov edx, [esi+0xa4]
	test edx, edx
	jg UI_ParseMenuInternal_110
UI_ParseMenuInternal_230:
	lea eax, [esi+0xd4]
	mov [esp], eax
	call free_expression
	lea eax, [esi+0x108]
	mov [esp], eax
	call free_expression
	lea eax, [esi+0x110]
	mov [esp], eax
	call free_expression
	mov [esp], edi
	call PC_FreeSourceHandle
	mov eax, 0x1
	jmp UI_ParseMenuInternal_120
UI_ParseMenuInternal_80:
	lea eax, [ebp-0x830]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_unknown_token_s_
	mov [esp], edi
	call PC_SourceError
	jmp UI_ParseMenuInternal_10
UI_ParseMenuInternal_70:
	mov dword [esp+0x4], _cstring_
	lea eax, [ebp-0x420]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz UI_ParseMenuInternal_50
UI_ParseMenuInternal_130:
	lea eax, [ebp-0x430]
	mov [esp+0x4], eax
	mov [esp], edi
	call PC_ReadTokenHandle
	test eax, eax
	jz UI_ParseMenuInternal_50
	mov dword [esp+0x4], _cstring_2
	lea eax, [ebp-0x420]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz UI_ParseMenuInternal_130
	mov dword [esp+0x4], _cstring_1
	lea eax, [ebp-0x420]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz UI_ParseMenuInternal_10
	mov dword [esp+0x4], _cstring_fadeclamp
	lea eax, [ebp-0x420]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz UI_ParseMenuInternal_140
	lea eax, [ebp-0xc50]
	mov [esp+0x4], eax
	mov [esp], edi
	call PC_ReadTokenHandle
	test eax, eax
	jz UI_ParseMenuInternal_50
	movzx eax, byte [ebp-0xc40]
	cmp al, 0x28
	jz UI_ParseMenuInternal_150
	cmp al, 0x2d
	jz UI_ParseMenuInternal_160
	xor eax, eax
UI_ParseMenuInternal_400:
	cmp dword [ebp-0xc50], 0x3
	jz UI_ParseMenuInternal_170
UI_ParseMenuInternal_330:
	lea eax, [ebp-0xc40]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_expected_float_b
	mov [esp], edi
	call PC_SourceError
	jmp UI_ParseMenuInternal_50
UI_ParseMenuInternal_210:
	lea eax, [ebp-0xc40]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_unknown_menu_key
	mov [esp], edi
	call PC_SourceError
UI_ParseMenuInternal_100:
	mov dword [esp+0x8], 0x410
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0xc50]
	mov [esp], eax
	call memset
	lea eax, [ebp-0xc50]
	mov [esp+0x4], eax
	mov [esp], edi
	call PC_ReadTokenHandle
	test eax, eax
	jz UI_ParseMenuInternal_180
	movzx eax, byte [ebp-0xc40]
	cmp al, 0x7d
	jz UI_ParseMenuInternal_190
	cmp al, 0x3b
	jz UI_ParseMenuInternal_100
	test al, al
	jnz UI_ParseMenuInternal_200
	mov dword [ebp-0xc5c], 0x0
	xor eax, eax
UI_ParseMenuInternal_250:
	add eax, [ebp-0xc5c]
	and eax, 0x7f
	mov ebx, [eax*4+menuParseKeywordHash]
	test ebx, ebx
	jz UI_ParseMenuInternal_210
	lea eax, [ebp-0xc40]
	mov [esp+0x4], eax
	mov eax, [ebx]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz UI_ParseMenuInternal_210
	mov [esp+0x4], edi
	mov [esp], esi
	call dword [ebx+0x4]
	test eax, eax
	jnz UI_ParseMenuInternal_100
	lea eax, [ebp-0xc40]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_couldnt_parse_me1
	mov [esp], edi
	call PC_SourceError
	jmp UI_ParseMenuInternal_90
UI_ParseMenuInternal_110:
	xor ebx, ebx
UI_ParseMenuInternal_220:
	mov eax, [esi+0x118]
	mov eax, [eax+ebx*4]
	call Menu_FreeItemMemory
	add ebx, 0x1
	cmp ebx, [esi+0xa4]
	jl UI_ParseMenuInternal_220
	jmp UI_ParseMenuInternal_230
UI_ParseMenuInternal_200:
	mov dword [ebp-0xc5c], 0x0
	mov ebx, 0x80
UI_ParseMenuInternal_240:
	movsx eax, al
	mov [esp], eax
	call tolower
	imul eax, ebx
	add [ebp-0xc5c], eax
	movzx eax, byte [ebp+ebx-0xcbf]
	add ebx, 0x1
	test al, al
	jnz UI_ParseMenuInternal_240
	mov eax, [ebp-0xc5c]
	sar eax, 0x8
	jmp UI_ParseMenuInternal_250
UI_ParseMenuInternal_140:
	mov dword [esp+0x4], _cstring_fadecycle
	lea eax, [ebp-0x420]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz UI_ParseMenuInternal_260
	lea eax, [ebp-0xc50]
	mov [esp+0x4], eax
	mov [esp], edi
	call PC_ReadTokenHandle
	test eax, eax
	jz UI_ParseMenuInternal_50
	movzx eax, byte [ebp-0xc40]
	cmp al, 0x28
	jz UI_ParseMenuInternal_270
	cmp al, 0x2d
	jz UI_ParseMenuInternal_280
	xor edx, edx
UI_ParseMenuInternal_410:
	cmp dword [ebp-0xc50], 0x3
	jnz UI_ParseMenuInternal_290
	mov eax, [ebp-0xc48]
	mov [g_load+0x4], eax
	test edx, edx
	jz UI_ParseMenuInternal_130
	neg eax
	mov [g_load+0x4], eax
	jmp UI_ParseMenuInternal_130
UI_ParseMenuInternal_260:
	mov dword [esp+0x4], _cstring_fadeamount
	lea eax, [ebp-0x420]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz UI_ParseMenuInternal_300
	lea eax, [ebp-0xc50]
	mov [esp+0x4], eax
	mov [esp], edi
	call PC_ReadTokenHandle
	test eax, eax
	jz UI_ParseMenuInternal_50
	movzx eax, byte [ebp-0xc40]
	cmp al, 0x28
	jz UI_ParseMenuInternal_310
	cmp al, 0x2d
	jz UI_ParseMenuInternal_320
	xor eax, eax
UI_ParseMenuInternal_430:
	cmp dword [ebp-0xc50], 0x3
	jnz UI_ParseMenuInternal_330
	test eax, eax
	jz UI_ParseMenuInternal_340
	mov eax, [ebp-0xc44]
	xor eax, 0x80000000
	mov [g_load+0x8], eax
	jmp UI_ParseMenuInternal_130
UI_ParseMenuInternal_180:
	mov dword [esp+0x4], _cstring_end_of_file_insi1
	mov [esp], edi
	call PC_SourceError
	jmp UI_ParseMenuInternal_90
UI_ParseMenuInternal_300:
	mov dword [esp+0x4], _cstring_fadeinamount
	lea eax, [ebp-0x420]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz UI_ParseMenuInternal_350
	lea eax, [ebp-0xc50]
	mov [esp+0x4], eax
	mov [esp], edi
	call PC_ReadTokenHandle
	test eax, eax
	jz UI_ParseMenuInternal_50
	movzx eax, byte [ebp-0xc40]
	cmp al, 0x28
	jz UI_ParseMenuInternal_360
	cmp al, 0x2d
	jz UI_ParseMenuInternal_370
	xor eax, eax
UI_ParseMenuInternal_440:
	cmp dword [ebp-0xc50], 0x3
	jnz UI_ParseMenuInternal_330
	test eax, eax
	jz UI_ParseMenuInternal_380
	mov eax, [ebp-0xc44]
	xor eax, 0x80000000
	mov [g_load+0xc], eax
	jmp UI_ParseMenuInternal_130
UI_ParseMenuInternal_170:
	test eax, eax
	jz UI_ParseMenuInternal_390
	mov eax, [ebp-0xc44]
	xor eax, 0x80000000
	mov [g_load], eax
	jmp UI_ParseMenuInternal_130
UI_ParseMenuInternal_350:
	lea eax, [ebp-0x420]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_unknown_token_s_1
	mov [esp], edi
	call PC_SourceError
	jmp UI_ParseMenuInternal_130
UI_ParseMenuInternal_290:
	lea eax, [ebp-0xc40]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_expected_integer
	mov [esp], edi
	call PC_SourceError
	jmp UI_ParseMenuInternal_50
UI_ParseMenuInternal_390:
	mov eax, [ebp-0xc44]
	mov [g_load], eax
	jmp UI_ParseMenuInternal_130
UI_ParseMenuInternal_160:
	lea eax, [ebp-0xc50]
	mov [esp+0x4], eax
	mov [esp], edi
	call PC_ReadTokenHandle
	test eax, eax
	jz UI_ParseMenuInternal_50
	mov eax, 0x1
	jmp UI_ParseMenuInternal_400
UI_ParseMenuInternal_150:
	mov edx, g_load
	mov eax, edi
	call PC_Float_Expression_Parse
	test eax, eax
	jnz UI_ParseMenuInternal_130
	jmp UI_ParseMenuInternal_50
UI_ParseMenuInternal_280:
	lea eax, [ebp-0xc50]
	mov [esp+0x4], eax
	mov [esp], edi
	call PC_ReadTokenHandle
	test eax, eax
	jz UI_ParseMenuInternal_50
	mov edx, 0x1
	jmp UI_ParseMenuInternal_410
UI_ParseMenuInternal_270:
	mov edx, g_load+0x4
	mov eax, edi
	call PC_Int_Expression_Parse
	test eax, eax
	jnz UI_ParseMenuInternal_130
	jmp UI_ParseMenuInternal_50
UI_ParseMenuInternal_20:
	mov dword [esp+0x4], _cstring_menu_has_no_name
	mov [esp], edi
	call PC_SourceError
	mov eax, [esi+0xa4]
	test eax, eax
	jle UI_ParseMenuInternal_230
	xor ebx, ebx
UI_ParseMenuInternal_420:
	mov eax, [esi+0x118]
	mov eax, [eax+ebx*4]
	call Menu_FreeItemMemory
	add ebx, 0x1
	cmp ebx, [esi+0xa4]
	jl UI_ParseMenuInternal_420
	jmp UI_ParseMenuInternal_230
UI_ParseMenuInternal_340:
	mov eax, [ebp-0xc44]
	mov [g_load+0x8], eax
	jmp UI_ParseMenuInternal_130
UI_ParseMenuInternal_320:
	lea eax, [ebp-0xc50]
	mov [esp+0x4], eax
	mov [esp], edi
	call PC_ReadTokenHandle
	test eax, eax
	jz UI_ParseMenuInternal_50
	mov eax, 0x1
	jmp UI_ParseMenuInternal_430
UI_ParseMenuInternal_380:
	mov eax, [ebp-0xc44]
	mov [g_load+0xc], eax
	jmp UI_ParseMenuInternal_130
UI_ParseMenuInternal_370:
	lea eax, [ebp-0xc50]
	mov [esp+0x4], eax
	mov [esp], edi
	call PC_ReadTokenHandle
	test eax, eax
	jz UI_ParseMenuInternal_50
	mov eax, 0x1
	jmp UI_ParseMenuInternal_440
UI_ParseMenuInternal_360:
	mov edx, g_load+0xc
	mov eax, edi
	call PC_Float_Expression_Parse
	test eax, eax
	jnz UI_ParseMenuInternal_130
	jmp UI_ParseMenuInternal_50
UI_ParseMenuInternal_310:
	mov edx, g_load+0x8
	mov eax, edi
	call PC_Float_Expression_Parse
	test eax, eax
	jnz UI_ParseMenuInternal_130
	jmp UI_ParseMenuInternal_50


;UI_LoadMenu(char const*, int)
UI_LoadMenu:
	push ebp
	mov ebp, esp
	mov eax, useFastFile
	mov eax, [eax]
	mov ecx, UI_LoadMenu_FastFile
	cmp byte [eax+0xc], 0x0
	mov eax, UI_LoadMenu_LoadObj
	cmovz ecx, eax
	pop ebp
	jmp ecx


;UI_LoadMenus(char const*, int)
UI_LoadMenus:
	push ebp
	mov ebp, esp
	mov eax, useFastFile
	mov eax, [eax]
	mov ecx, UI_LoadMenus_FastFile
	cmp byte [eax+0xc], 0x0
	mov eax, UI_LoadMenus_LoadObj
	cmovz ecx, eax
	pop ebp
	jmp ecx


;UI_MapLoadInfo(char const*)
UI_MapLoadInfo:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x17c
	mov eax, [ebp+0x8]
	cmp byte [eax], 0x0
	jnz UI_MapLoadInfo_10
UI_MapLoadInfo_80:
	add esp, 0x17c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
UI_MapLoadInfo_10:
	mov ecx, eax
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], ecx
	call FS_ReadFile
	test eax, eax
	js UI_MapLoadInfo_20
	mov eax, [ebp-0x1c]
	mov [ebp-0x20], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call Com_BeginParseSession
	mov dword [esp], 0x1
	call Com_SetCSV
	jmp UI_MapLoadInfo_30
UI_MapLoadInfo_60:
	lea edi, [ebp-0x160]
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov [esp], edi
	call memcpy
	lea eax, [ebp-0x20]
	mov [esp], eax
	call Com_ParseOnLine
	cmp byte [eax], 0x0
	jz UI_MapLoadInfo_40
UI_MapLoadInfo_70:
	mov dword [esp+0x4], 0x3
	mov [esp], eax
	call Material_RegisterHandle
	mov ebx, eax
	mov [esp+0xc], edi
	mov dword [esp+0x8], _cstring_s1
	mov dword [esp+0x4], 0x40
	lea eax, [ebp-0x60]
	mov [esp], eax
	call Com_sprintf
	lea ecx, [ebp-0x60]
	mov [esp], ecx
	call Q_strlwr
	lea eax, [ebp-0x60]
	mov [esp+0x4], eax
	mov [esp], ebx
	call Material_Duplicate
UI_MapLoadInfo_30:
	lea eax, [ebp-0x20]
	mov [esp], eax
	call Com_Parse
	mov esi, eax
	cmp byte [eax], 0x0
	jz UI_MapLoadInfo_50
	cld
	mov ecx, 0xffffffff
	mov edi, eax
	xor eax, eax
	repne scasb
	mov ebx, ecx
	not ebx
	lea edi, [ebx-0x1]
	cmp ebx, 0xff
	jbe UI_MapLoadInfo_60
	call Com_EndParseSession
	mov dword [esp+0x10], 0xff
	mov [esp+0xc], edi
	lea edi, [ebp-0x160]
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_key_s_is_i__i_ch
	mov dword [esp], 0x2
	call Com_Error
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov [esp], edi
	call memcpy
	lea eax, [ebp-0x20]
	mov [esp], eax
	call Com_ParseOnLine
	cmp byte [eax], 0x0
	jnz UI_MapLoadInfo_70
UI_MapLoadInfo_40:
	call Com_EndParseSession
	mov ecx, [ebp+0x8]
	mov [esp+0xc], ecx
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_key_s_missing_va
	mov dword [esp], 0x2
	call Com_Error
UI_MapLoadInfo_50:
	call Com_EndParseSession
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call FS_FreeFile
	add esp, 0x17c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
UI_MapLoadInfo_20:
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_warning_could_no
	mov dword [esp], 0xd
	call Com_PrintWarning
	jmp UI_MapLoadInfo_80
	nop


;Menus_FreeAllMemory(UiContext*)
Menus_FreeAllMemory:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0x8]
	mov edx, [eax+0xa30]
	test edx, edx
	jle Menus_FreeAllMemory_10
	mov edi, eax
	mov dword [ebp-0x1c], 0x0
	jmp Menus_FreeAllMemory_20
Menus_FreeAllMemory_30:
	lea eax, [esi+0xd4]
	mov [esp], eax
	call free_expression
	lea eax, [esi+0x108]
	mov [esp], eax
	call free_expression
	lea eax, [esi+0x110]
	mov [esp], eax
	call free_expression
	add dword [ebp-0x1c], 0x1
	add edi, 0x4
	mov eax, [ebp-0x1c]
	mov edx, [ebp+0x8]
	cmp [edx+0xa30], eax
	jle Menus_FreeAllMemory_10
Menus_FreeAllMemory_20:
	mov esi, [edi+0x30]
	mov eax, [esi+0xa4]
	test eax, eax
	jle Menus_FreeAllMemory_30
	xor ebx, ebx
Menus_FreeAllMemory_40:
	mov eax, [esi+0x118]
	mov eax, [eax+ebx*4]
	call Menu_FreeItemMemory
	add ebx, 0x1
	cmp ebx, [esi+0xa4]
	jl Menus_FreeAllMemory_40
	jmp Menus_FreeAllMemory_30
Menus_FreeAllMemory_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Item_SetupKeywordHash()
Item_SetupKeywordHash:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov dword [esp+0x8], 0x400
	mov dword [esp+0x4], 0x0
	mov dword [esp], itemParseKeywordHash
	call memset
	mov dword [ebp-0x20], 0x0
	jmp Item_SetupKeywordHash_10
Item_SetupKeywordHash_30:
	xor edi, edi
	xor eax, eax
	add eax, edi
	and eax, 0xff
	mov edx, [ebp-0x1c]
	mov [eax*4+itemParseKeywordHash], edx
	add dword [ebp-0x20], 0x1
	cmp dword [ebp-0x20], 0x47
	jz Item_SetupKeywordHash_20
Item_SetupKeywordHash_10:
	mov eax, [ebp-0x20]
	shl eax, 0x3
	lea edx, [eax+itemParseKeywords]
	mov [ebp-0x1c], edx
	mov esi, [eax+itemParseKeywords]
	movzx eax, byte [esi]
	test al, al
	jz Item_SetupKeywordHash_30
	xor edi, edi
	mov ebx, 0xf0f
Item_SetupKeywordHash_40:
	movsx eax, al
	mov [esp], eax
	call tolower
	imul eax, ebx
	add edi, eax
	movzx eax, byte [esi+ebx-0xf0e]
	add ebx, 0x1
	test al, al
	jnz Item_SetupKeywordHash_40
	mov eax, edi
	sar eax, 0x8
	add eax, edi
	and eax, 0xff
	mov edx, [ebp-0x1c]
	mov [eax*4+itemParseKeywordHash], edx
	add dword [ebp-0x20], 0x1
	cmp dword [ebp-0x20], 0x47
	jnz Item_SetupKeywordHash_10
Item_SetupKeywordHash_20:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Menu_SetupKeywordHash()
Menu_SetupKeywordHash:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov dword [esp+0x8], 0x200
	mov dword [esp+0x4], 0x0
	mov dword [esp], menuParseKeywordHash
	call memset
	mov dword [ebp-0x20], 0x0
	jmp Menu_SetupKeywordHash_10
Menu_SetupKeywordHash_30:
	xor edi, edi
	xor eax, eax
	add eax, edi
	and eax, 0x7f
	mov edx, [ebp-0x1c]
	mov [eax*4+menuParseKeywordHash], edx
	add dword [ebp-0x20], 0x1
	cmp dword [ebp-0x20], 0x24
	jz Menu_SetupKeywordHash_20
Menu_SetupKeywordHash_10:
	mov eax, [ebp-0x20]
	shl eax, 0x3
	lea edx, [eax+menuParseKeywords]
	mov [ebp-0x1c], edx
	mov esi, [eax+menuParseKeywords]
	movzx eax, byte [esi]
	test al, al
	jz Menu_SetupKeywordHash_30
	xor edi, edi
	mov ebx, 0x80
Menu_SetupKeywordHash_40:
	movsx eax, al
	mov [esp], eax
	call tolower
	imul eax, ebx
	add edi, eax
	movzx eax, byte [esi+ebx-0x7f]
	add ebx, 0x1
	test al, al
	jnz Menu_SetupKeywordHash_40
	mov eax, edi
	sar eax, 0x8
	add eax, edi
	and eax, 0x7f
	mov edx, [ebp-0x1c]
	mov [eax*4+menuParseKeywordHash], edx
	add dword [ebp-0x20], 0x1
	cmp dword [ebp-0x20], 0x24
	jnz Menu_SetupKeywordHash_10
Menu_SetupKeywordHash_20:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Initialized global or static variables of ui_shared_obj:
SECTION .data


;Initialized constant data of ui_shared_obj:
SECTION .rdata
itemParseKeywords: dd _cstring_name, ItemParse_name, _cstring_text, ItemParse_text, _cstring_textfile, ItemParse_textfile, _cstring_textsavegame, ItemParse_textsavegame, _cstring_textcinematicsub, ItemParse_textcinematicsubtitle, _cstring_group, ItemParse_group, _cstring_rect, ItemParse_rect, _cstring_origin, ItemParse_origin, _cstring_style, ItemParse_style, _cstring_decoration, ItemParse_decoration, _cstring_notselectable, ItemParse_notselectable, _cstring_noscrollbars, ItemParse_noScrollBars, _cstring_usepaging, ItemParse_usePaging, _cstring_autowrapped, ItemParse_autowrapped, _cstring_horizontalscroll, ItemParse_horizontalscroll, _cstring_type, ItemParse_type, _cstring_elementwidth, ItemParse_elementwidth, _cstring_elementheight, ItemParse_elementheight, _cstring_feeder, ItemParse_feeder, _cstring_elementtype, ItemParse_elementtype, _cstring_columns, ItemParse_columns, _cstring_border, ItemParse_border, _cstring_bordersize, ItemParse_bordersize, _cstring_visible, ItemParse_visible, _cstring_ownerdraw, ItemParse_ownerdraw, _cstring_align, ItemParse_align, _cstring_textalign, ItemParse_textalign, _cstring_textalignx, ItemParse_textalignx, _cstring_textaligny, ItemParse_textaligny, _cstring_textscale, ItemParse_textscale, _cstring_textstyle, ItemParse_textstyle, _cstring_textfont, ItemParse_textfont, _cstring_backcolor, ItemParse_backcolor, _cstring_forecolor, ItemParse_forecolor, _cstring_bordercolor, ItemParse_bordercolor, _cstring_outlinecolor, ItemParse_outlinecolor, _cstring_background, ItemParse_background, _cstring_onfocus, ItemParse_onFocus, _cstring_leavefocus, ItemParse_leaveFocus, _cstring_mouseenter, ItemParse_mouseEnter, _cstring_mouseexit, ItemParse_mouseExit, _cstring_mouseentertext, ItemParse_mouseEnterText, _cstring_mouseexittext, ItemParse_mouseExitText, _cstring_action, ItemParse_action, _cstring_accept, ItemParse_accept, _cstring_special, ItemParse_special, _cstring_dvar, ItemParse_dvar, _cstring_maxchars, ItemParse_maxChars, _cstring_maxcharsgotonext, Item_Parse_maxCharsGotoNext, _cstring_maxpaintchars, ItemParse_maxPaintChars, _cstring_focussound, ItemParse_focusSound, _cstring_dvarfloat, ItemParse_dvarFloat, _cstring_dvarstrlist, ItemParse_dvarStrList, _cstring_dvarfloatlist, ItemParse_dvarFloatList, _cstring_dvarenumlist, ItemParse_dvarEnumList, _cstring_ownerdrawflag, ItemParse_ownerdrawFlag, _cstring_enabledvar, ItemParse_enableDvar, _cstring_dvartest, ItemParse_dvarTest, _cstring_disabledvar, ItemParse_disableDvar, _cstring_showdvar, ItemParse_showDvar, _cstring_hidedvar, ItemParse_hideDvar, _cstring_focusdvar, ItemParse_focusDvar, _cstring_doubleclick, ItemParse_doubleClick, _cstring_execkey, ItemParse_execKey, _cstring_execkeyint, ItemParse_execKeyInt, _cstring_exp, ItemParse_execExp, _cstring_gamemsgwindowind, ItemParse_gameMsgWindowIndex, _cstring_gamemsgwindowmod, ItemParse_gameMsgWindowMode, _cstring_selectborder, ItemParse_selectBorder, _cstring_disablecolor, ItemParse_disableColor, _cstring_selecticon, ItemParse_selectIcon, 0x0, 0x0
menuParseKeywords: dd _cstring_name, MenuParse_name, _cstring_fullscreen, MenuParse_fullscreen, _cstring_rect, MenuParse_rect, _cstring_style, MenuParse_style, _cstring_visible, MenuParse_visible, _cstring_onopen, MenuParse_onOpen, _cstring_onclose, MenuParse_onClose, _cstring_onesc, MenuParse_onESC, _cstring_border, MenuParse_border, _cstring_bordersize1, MenuParse_borderSize, _cstring_backcolor, MenuParse_backcolor, _cstring_forecolor, MenuParse_forecolor, _cstring_bordercolor, MenuParse_bordercolor, _cstring_focuscolor, MenuParse_focuscolor, _cstring_disablecolor, MenuParse_disablecolor, _cstring_outlinecolor, MenuParse_outlinecolor, _cstring_background, MenuParse_background, _cstring_ownerdraw, MenuParse_ownerdraw, _cstring_ownerdrawflag, MenuParse_ownerdrawFlag, _cstring_outofboundsclick, MenuParse_outOfBounds, _cstring_soundloop, MenuParse_soundLoop, _cstring_itemdef, MenuParse_itemDef, _cstring_exp, MenuParse_execExp, _cstring_popup, MenuParse_popup, _cstring_fadeclamp, MenuParse_fadeClamp, _cstring_fadecycle, MenuParse_fadeCycle, _cstring_fadeamount, MenuParse_fadeAmount, _cstring_fadeinamount, MenuParse_fadeInAmount, _cstring_execkey, MenuParse_execKey, _cstring_execkeyint, MenuParse_execKeyInt, _cstring_blurworld, MenuParse_blurWorld, _cstring_legacysplitscree, MenuParse_legacySplitScreenScale, _cstring_hiddenduringscop, MenuParse_hiddenDuringScope, _cstring_hiddenduringflas, MenuParse_hiddenDuringFlashbang, _cstring_hiddenduringui, MenuParse_hiddenDuringUI, _cstring_allowedbinding, MenuParse_allowedBinding


;Zero initialized global or static variables of ui_shared_obj:
SECTION .bss
menuBuf: resb 0x8000
g_load: resb 0xc20
menuParseKeywordHash: resb 0x200
itemParseKeywordHash: resb 0x400
menuBuf1: resb 0x1000
_ZZ14PC_SourceErroriPczE6string: resb 0x1060


;All cstrings:
SECTION .rdata
_cstring_menu_file_s_is_l:		db "Menu file %s is larger than the %i byte buffer used to parse menu files",0ah,0
_cstring_savegameinfo:		db "savegameinfo",0
_cstring_cinematicsubtitl:		db "cinematicsubtitle",0
_cstring_expected_integer:		db "expected integer but found %s",0ah,0
_cstring_expected_float_b:		db "expected float but found %s",0ah,0
_cstring_when:		db "when",0
_cstring_if:		db "if",0
_cstring_expected_item_al:		db "expected ITEM_ALIGN_* value",0ah,0
_cstring_end_of_file_insi:		db "end of file inside menu item",0ah,0
_cstring_enumdvarlist_alr:		db "enumDvarList already given",0
_cstring_visible:		db "visible",0
_cstring_text:		db "text",0
_cstring_material:		db "material",0
_cstring_rect:		db "rect",0
_cstring_error_line_ended:		db "ERROR: line ended early after ",22h,"exp rect",22h,0ah,0
_cstring_forecolor:		db "forecolor",0
_cstring_error_line_ended1:		db "ERROR: line ended early after ",22h,"exp forecolor",22h,0ah,0
_cstring_x:		db "X",0
_cstring_y:		db "Y",0
_cstring_w:		db "W",0
_cstring_a:		db "A",0
_cstring_error_expected_a:		db "ERROR: Expected ",27h,"A",27h," after ",22h,"exp forecolor",22h," but found ",22h,"%s",22h,0ah,0
_cstring_h:		db "H",0
_cstring_error_expected_x:		db "ERROR: Expected ",27h,"X",27h,", ",27h,"Y",27h,", ",27h,"W",27h,", or ",27h,"H",27h," after ",22h,"exp rect",22h," but found ",22h,"%s",22h,0ah,0
_cstring_unknown_menu_ite:		db "unknown menu item keyword %s",0
_cstring_couldnt_parse_me:		db "couldn",27h,"t parse menu item keyword %s",0
_cstring_error_line_ended2:		db "ERROR: line ended early after ",22h,"visible",22h,0ah,0
_cstring_error_expected_w:		db "ERROR: Expected ",27h,"when",27h," after ",22h,"visible",22h," but found ",22h,"%s",22h,0ah,0
_cstring_error_expected_x1:		db "ERROR: Expected ",27h,"X",27h," or ",27h,"Y",27h," after ",22h,"exp rect",22h," but found ",22h,"%s",22h,0ah,0
_cstring_blur_must_be__0_:		db "blur must be >= 0; %g is invalid",0
_cstring_only_one_allowed:		db "Only one ",27h,"allowedBinding",27h," is supported",0
_cstring_menu_load_error_:		db "Menu load error: %s, line %d: %s",0ah,0
_cstring_error_evaluating:		db "error evaluating expression",0ah,0
_cstring_expected_operato:		db "expected operator but found %s",0ah,0
_cstring_too_much_recursi:		db "too much recursive macro expansion",0ah,0
_cstring_:		db "{",0
_cstring_s:		db 22h,"%s",22h,0
_cstring_space:		db " ",0
_cstring_1:		db "}",0
_cstring_action_block_too:		db "action block too long that starts with: %s",0ah,0
_cstring_attempting_to_ch:		db "Attempting to change type from %d to %d.",0ah,"Move the type definition higher up in the itemDef.",0ah,0
_cstring_loadmenu:		db "loadmenu",0
_cstring_3warning_menu_fi:		db "^3WARNING: menu file not found: %s",0ah,0
_cstring_uidefaultmenu:		db "ui/default.menu",0
_cstring_defaultmenu_file:		db 015h,"default.menu file not found. This is a default menu that you should have.",0ah,0
_cstring_1menu_file_too_l:		db 015h,"^1menu file too large: %s is %i, max allowed is %i",0
_cstring_warning_menu_fil:		db "WARNING: menu file not found: %s",0ah,0
_cstring_pc:		db "PC",0
_cstring_loading_s:		db 09h,"Loading ",27h,"%s",27h,"...",0ah,0
_cstring_couldnt_find_men:		db "Couldn",27h,"t find menu file ",27h,"%s",27h,0ah,0
_cstring_menu_new_exe_err:		db 015h,"Menu_New: ",014h,"EXE_ERR_OUT_OF_MEMORY",0
_cstring_assetglobaldef:		db "assetGlobalDef",0
_cstring_menudef:		db "menudef",0
_cstring_unknown_token_s_:		db "Unknown token %s in menu file.  Expected ",22h,"menudef",22h," or ",22h,"assetglobaldef",22h,".",0ah,0
_cstring_2:		db ";",0
_cstring_fadeclamp:		db "fadeClamp",0
_cstring_unknown_menu_key:		db "unknown menu keyword %s",0
_cstring_couldnt_parse_me1:		db "couldn",27h,"t parse menu keyword %s",0
_cstring_fadecycle:		db "fadeCycle",0
_cstring_fadeamount:		db "fadeAmount",0
_cstring_end_of_file_insi1:		db "end of file inside menu",0ah,0
_cstring_fadeinamount:		db "fadeInAmount",0
_cstring_unknown_token_s_1:		db "Unknown token %s in assetGlobalDef.  Valid commands are ",27h,"fadeClamp",27h,", ",27h,"fadeCycle",27h,", ",27h,"fadeAmount",27h,", and ",27h,"fadeInAmount",27h,0ah,0
_cstring_menu_has_no_name:		db "menu has no name",0
_cstring_s1:		db "$%s",0
_cstring_key_s_is_i__i_ch:		db "key ",27h,"%s",27h," is %i > %i characters long",0
_cstring_key_s_missing_va:		db "key ",27h,"%s",27h," missing value in ",27h,"%s",27h,0ah,0
_cstring_warning_could_no:		db "WARNING: Could not find ",27h,"%s",27h,".",0ah,0
_cstring_name:		db "name",0
_cstring_textfile:		db "textfile",0
_cstring_textsavegame:		db "textsavegame",0
_cstring_textcinematicsub:		db "textcinematicsubtitle",0
_cstring_group:		db "group",0
_cstring_origin:		db "origin",0
_cstring_style:		db "style",0
_cstring_decoration:		db "decoration",0
_cstring_notselectable:		db "notselectable",0
_cstring_noscrollbars:		db "noscrollbars",0
_cstring_usepaging:		db "usepaging",0
_cstring_autowrapped:		db "autowrapped",0
_cstring_horizontalscroll:		db "horizontalscroll",0
_cstring_type:		db "type",0
_cstring_elementwidth:		db "elementwidth",0
_cstring_elementheight:		db "elementheight",0
_cstring_feeder:		db "feeder",0
_cstring_elementtype:		db "elementtype",0
_cstring_columns:		db "columns",0
_cstring_border:		db "border",0
_cstring_bordersize:		db "bordersize",0
_cstring_ownerdraw:		db "ownerdraw",0
_cstring_align:		db "align",0
_cstring_textalign:		db "textalign",0
_cstring_textalignx:		db "textalignx",0
_cstring_textaligny:		db "textaligny",0
_cstring_textscale:		db "textscale",0
_cstring_textstyle:		db "textstyle",0
_cstring_textfont:		db "textfont",0
_cstring_backcolor:		db "backcolor",0
_cstring_bordercolor:		db "bordercolor",0
_cstring_outlinecolor:		db "outlinecolor",0
_cstring_background:		db "background",0
_cstring_onfocus:		db "onFocus",0
_cstring_leavefocus:		db "leaveFocus",0
_cstring_mouseenter:		db "mouseEnter",0
_cstring_mouseexit:		db "mouseExit",0
_cstring_mouseentertext:		db "mouseEnterText",0
_cstring_mouseexittext:		db "mouseExitText",0
_cstring_action:		db "action",0
_cstring_accept:		db "accept",0
_cstring_special:		db "special",0
_cstring_dvar:		db "dvar",0
_cstring_maxchars:		db "maxChars",0
_cstring_maxcharsgotonext:		db "maxCharsGotoNext",0
_cstring_maxpaintchars:		db "maxPaintChars",0
_cstring_focussound:		db "focusSound",0
_cstring_dvarfloat:		db "dvarFloat",0
_cstring_dvarstrlist:		db "dvarStrList",0
_cstring_dvarfloatlist:		db "dvarFloatList",0
_cstring_dvarenumlist:		db "dvarEnumList",0
_cstring_ownerdrawflag:		db "ownerdrawFlag",0
_cstring_enabledvar:		db "enableDvar",0
_cstring_dvartest:		db "dvarTest",0
_cstring_disabledvar:		db "disableDvar",0
_cstring_showdvar:		db "showDvar",0
_cstring_hidedvar:		db "hideDvar",0
_cstring_focusdvar:		db "focusDvar",0
_cstring_doubleclick:		db "doubleclick",0
_cstring_execkey:		db "execKey",0
_cstring_execkeyint:		db "execKeyInt",0
_cstring_exp:		db "exp",0
_cstring_gamemsgwindowind:		db "gamemsgwindowindex",0
_cstring_gamemsgwindowmod:		db "gamemsgwindowmode",0
_cstring_selectborder:		db "selectBorder",0
_cstring_disablecolor:		db "disablecolor",0
_cstring_selecticon:		db "selectIcon",0
_cstring_fullscreen:		db "fullscreen",0
_cstring_onopen:		db "onOpen",0
_cstring_onclose:		db "onClose",0
_cstring_onesc:		db "onESC",0
_cstring_bordersize1:		db "borderSize",0
_cstring_focuscolor:		db "focuscolor",0
_cstring_outofboundsclick:		db "outOfBoundsClick",0
_cstring_soundloop:		db "soundLoop",0
_cstring_itemdef:		db "itemDef",0
_cstring_popup:		db "popup",0
_cstring_blurworld:		db "blurWorld",0
_cstring_legacysplitscree:		db "legacySplitScreenScale",0
_cstring_hiddenduringscop:		db "hiddenDuringScope",0
_cstring_hiddenduringflas:		db "hiddenDuringFlashbang",0
_cstring_hiddenduringui:		db "hiddenDuringUI",0
_cstring_allowedbinding:		db "allowedBinding",0



;All constant floats and doubles:
SECTION .rdata
_float_0_00000000:		dd 0x0	; 0

