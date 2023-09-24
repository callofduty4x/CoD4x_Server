;Imports of g_hudelem:
	extern Scr_ObjectError
	extern Scr_ConstructMessageString
	extern G_LocalizedStringIndex
	extern Scr_Error
	extern SV_SetConfigstring
	extern Scr_GetNumParam
	extern Scr_GetString
	extern G_MaterialIndex
	extern Scr_GetInt
	extern va
	extern Scr_ParamError
	extern Scr_GetEntity
	extern Com_PrintWarning
	extern Scr_GetFloat
	extern level
	extern BG_LerpHudColors
	extern floorf
	extern Scr_FreeHudElem
	extern Com_Printf
	extern SV_MapExists
	extern Scr_GetGameTypeNameForScript
	extern Scr_AddString
	extern Scr_GetVector
	extern Scr_AddVector
	extern Scr_AddFloat
	extern Scr_GetIString
	extern Scr_AddBool
	extern Q_stricmp
	extern sprintf
	extern strncat
	extern ceilf
	extern Scr_AddHudElem
	extern strcmp
	extern itemRegistered
	extern memset
	extern Scr_GetConstString
	extern scr_const
	extern Scr_GetGenericField
	extern Scr_SetGenericField
	extern memcpy
	extern Scr_AddClassField
	extern Scr_SetString
	extern HECmd_SetText
	extern HECmd_ScaleOverTime
	extern HECmd_SetPulseFX

;Exports of g_hudelem:
	global HECmd_ClearAllTextAfterHudElem
	global HECmd_SetMaterial
	global HECmd_SetTargetEnt
	global HECmd_ClearTargetEnt
	global HECmd_SetTimer
	global HECmd_SetTimerUp
	global HECmd_SetTenthsTimer
	global HECmd_SetTenthsTimerUp
	global HECmd_SetClock
	global HECmd_SetClockUp
	global HECmd_SetValue
	global HECmd_SetWaypoint
	global HECmd_FadeOverTime
	global HECmd_MoveOverTime
	global HECmd_Reset
	global HECmd_Destroy
	global HECmd_SetPlayerNameString
	global HECmd_SetMapNameString
	global HECmd_SetGameTypeString
	global HudElem_SetFontScale
	global HudElem_SetFont
	global HudElem_GetFont
	global HudElem_SetAlignX
	global HudElem_GetAlignX
	global HudElem_SetAlignY
	global HudElem_GetAlignY
	global HudElem_SetHorzAlign
	global HudElem_GetHorzAlign
	global HudElem_SetVertAlign
	global HudElem_GetVertAlign
	global HudElem_SetColor
	global HudElem_GetColor
	global HudElem_SetAlpha
	global HudElem_GetAlpha
	global HudElem_SetLocalizedString
	global HudElem_SetFlagForeground
	global HudElem_GetFlagForeground
	global HudElem_SetFlagHideWhenDead
	global HudElem_GetFlagHideWhenDead
	global HudElem_SetFlagHideWhenInMenu
	global HudElem_GetFlagHideWhenInMenu
	global HudElem_SetGlowColor
	global HudElem_GetGlowColor
	global HudElem_SetGlowAlpha
	global HudElem_GetGlowAlpha
	global HudElem_SetBoolean
	global g_he_vertalign
	global g_he_horzalign
	global g_he_aligny
	global g_he_alignx
	global g_he_font
	global HudElem_SetEnumString
	global HECmd_SetTimer_Internal
	global HECmd_SetClock_Internal
	global HudElem_GetMethod
	global GScr_NewTeamHudElem
	global Scr_GetHudElemField
	global Scr_SetHudElemField
	global GScr_AddFieldsForHudElems
	global Scr_FreeHudElemConstStrings
	global g_hudelems


SECTION .text


;HECmd_ClearAllTextAfterHudElem(scr_entref_t)
HECmd_ClearAllTextAfterHudElem:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	sub ax, 0x1
	jz HECmd_ClearAllTextAfterHudElem_10
	mov dword [esp], _cstring_not_a_hud_elemen
	call Scr_ObjectError
	xor ebx, ebx
	mov eax, [ebx+0x7c]
	test eax, eax
	jz HECmd_ClearAllTextAfterHudElem_20
HECmd_ClearAllTextAfterHudElem_40:
	mov edx, [ebx+0x7c]
	lea eax, [edx+0x1]
	cmp eax, 0x1ff
	jle HECmd_ClearAllTextAfterHudElem_30
HECmd_ClearAllTextAfterHudElem_50:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
HECmd_ClearAllTextAfterHudElem_10:
	movzx edx, dx
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*2]
	lea ebx, [eax*4+g_hudelems]
	mov eax, [ebx+0x7c]
	test eax, eax
	jnz HECmd_ClearAllTextAfterHudElem_40
HECmd_ClearAllTextAfterHudElem_20:
	mov dword [esp], _cstring_hud_elem_doesnt_
	call Scr_Error
	mov edx, [ebx+0x7c]
	lea eax, [edx+0x1]
	cmp eax, 0x1ff
	jg HECmd_ClearAllTextAfterHudElem_50
HECmd_ClearAllTextAfterHudElem_30:
	lea ebx, [edx+0x136]
HECmd_ClearAllTextAfterHudElem_60:
	mov dword [esp+0x4], _cstring_null
	mov [esp], ebx
	call SV_SetConfigstring
	add ebx, 0x1
	cmp ebx, 0x335
	jnz HECmd_ClearAllTextAfterHudElem_60
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;HECmd_SetMaterial(scr_entref_t)
HECmd_SetMaterial:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	sub ax, 0x1
	jz HECmd_SetMaterial_10
	mov dword [esp], _cstring_not_a_hud_elemen
	call Scr_ObjectError
	xor ebx, ebx
HECmd_SetMaterial_60:
	call Scr_GetNumParam
	mov esi, eax
	cmp eax, 0x1
	jz HECmd_SetMaterial_20
	cmp eax, 0x3
	jz HECmd_SetMaterial_20
	mov dword [esp], _cstring_usage_hudelem_se
	call Scr_Error
HECmd_SetMaterial_20:
	mov dword [esp], 0x0
	call Scr_GetString
	mov [esp], eax
	call G_MaterialIndex
	mov [ebp-0x1c], eax
	cmp esi, 0x1
	jz HECmd_SetMaterial_30
	mov dword [esp], 0x1
	call Scr_GetInt
	mov edi, eax
	test eax, eax
	js HECmd_SetMaterial_40
HECmd_SetMaterial_80:
	mov dword [esp], 0x2
	call Scr_GetInt
	mov esi, eax
	test eax, eax
	js HECmd_SetMaterial_50
HECmd_SetMaterial_70:
	xor eax, eax
	mov [ebx+0x58], eax
	mov [ebx+0x5c], eax
	mov dword [ebx+0x60], 0x0
	mov dword [ebx+0x64], 0x0
	mov dword [ebx+0x48], 0x0
	mov dword [ebx+0x4c], 0x0
	mov dword [ebx+0x50], 0x0
	mov dword [ebx+0x54], 0x0
	mov dword [ebx+0x70], 0x0
	mov dword [ebx+0x74], 0x0
	mov [ebx+0x78], eax
	mov dword [ebx+0x7c], 0x0
	mov dword [ebx], 0x6
	mov eax, [ebp-0x1c]
	mov [ebx+0x40], eax
	mov [ebx+0x38], edi
	mov [ebx+0x3c], esi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
HECmd_SetMaterial_10:
	movzx edx, dx
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*2]
	lea ebx, [eax*4+g_hudelems]
	jmp HECmd_SetMaterial_60
HECmd_SetMaterial_30:
	xor edi, edi
	xor si, si
	jmp HECmd_SetMaterial_70
HECmd_SetMaterial_50:
	mov [esp+0x4], eax
	mov dword [esp], _cstring_height_i__0
	call va
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call Scr_ParamError
	jmp HECmd_SetMaterial_70
HECmd_SetMaterial_40:
	mov [esp+0x4], eax
	mov dword [esp], _cstring_width_i__0
	call va
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call Scr_ParamError
	jmp HECmd_SetMaterial_80


;HECmd_SetTargetEnt(scr_entref_t)
HECmd_SetTargetEnt:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	sub ax, 0x1
	jz HECmd_SetTargetEnt_10
	mov dword [esp], _cstring_not_a_hud_elemen
	call Scr_ObjectError
	xor ebx, ebx
HECmd_SetTargetEnt_30:
	mov dword [esp], 0x0
	call Scr_GetEntity
	mov edx, [eax]
	mov [ebx+0x10], edx
	test byte [eax+0xf6], 0x10
	jnz HECmd_SetTargetEnt_20
;	mov dword [esp+0x4], _cstring_settargetent_cal
;	mov dword [esp], 0xf
;	call Com_PrintWarning
HECmd_SetTargetEnt_20:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
HECmd_SetTargetEnt_10:
	movzx edx, dx
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*2]
	lea ebx, [eax*4+g_hudelems]
	jmp HECmd_SetTargetEnt_30


;HECmd_ClearTargetEnt(scr_entref_t)
HECmd_ClearTargetEnt:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	sub ax, 0x1
	jz HECmd_ClearTargetEnt_10
	mov dword [esp], _cstring_not_a_hud_elemen
	call Scr_ObjectError
	xor eax, eax
	mov dword [eax+0x10], 0x3ff
	leave
	ret
HECmd_ClearTargetEnt_10:
	movzx edx, dx
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*2]
	lea eax, [eax*4+g_hudelems]
	mov dword [eax+0x10], 0x3ff
	leave
	ret
	nop


;HECmd_SetTimer(scr_entref_t)
HECmd_SetTimer:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov ecx, _cstring_settimer
	mov edx, 0x7
	pop ebp
	jmp HECmd_SetTimer_Internal


;HECmd_SetTimerUp(scr_entref_t)
HECmd_SetTimerUp:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov ecx, _cstring_settimerup
	mov edx, 0x8
	pop ebp
	jmp HECmd_SetTimer_Internal


;HECmd_SetTenthsTimer(scr_entref_t)
HECmd_SetTenthsTimer:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov ecx, _cstring_settenthstimer
	mov edx, 0x9
	pop ebp
	jmp HECmd_SetTimer_Internal


;HECmd_SetTenthsTimerUp(scr_entref_t)
HECmd_SetTenthsTimerUp:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov ecx, _cstring_settenthstimerup
	mov edx, 0xa
	pop ebp
	jmp HECmd_SetTimer_Internal


;HECmd_SetClock(scr_entref_t)
HECmd_SetClock:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov ecx, _cstring_setclock
	mov edx, 0xb
	pop ebp
	jmp HECmd_SetClock_Internal


;HECmd_SetClockUp(scr_entref_t)
HECmd_SetClockUp:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov ecx, _cstring_setclockup
	mov edx, 0xc
	pop ebp
	jmp HECmd_SetClock_Internal


;HECmd_SetValue(scr_entref_t)
HECmd_SetValue:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	sub ax, 0x1
	jz HECmd_SetValue_10
	mov dword [esp], _cstring_not_a_hud_elemen
	call Scr_ObjectError
	xor ebx, ebx
HECmd_SetValue_20:
	mov dword [esp], 0x0
	call Scr_GetFloat
	mov dword [ebx+0x38], 0x0
	mov dword [ebx+0x3c], 0x0
	mov dword [ebx+0x40], 0x0
	xor eax, eax
	mov [ebx+0x58], eax
	mov [ebx+0x5c], eax
	mov dword [ebx+0x60], 0x0
	mov dword [ebx+0x64], 0x0
	mov dword [ebx+0x48], 0x0
	mov dword [ebx+0x4c], 0x0
	mov dword [ebx+0x50], 0x0
	mov dword [ebx+0x54], 0x0
	mov dword [ebx+0x70], 0x0
	mov dword [ebx+0x74], 0x0
	mov dword [ebx+0x7c], 0x0
	mov dword [ebx], 0x2
	fstp dword [ebx+0x78]
	add esp, 0x14
	pop ebx
	pop ebp
	ret
HECmd_SetValue_10:
	movzx edx, dx
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*2]
	lea ebx, [eax*4+g_hudelems]
	jmp HECmd_SetValue_20


;HECmd_SetWaypoint(scr_entref_t)
HECmd_SetWaypoint:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	sub ax, 0x1
	jz HECmd_SetWaypoint_10
	mov dword [esp], _cstring_not_a_hud_elemen
	call Scr_ObjectError
	xor esi, esi
HECmd_SetWaypoint_30:
	call Scr_GetNumParam
	mov ebx, eax
	mov dword [esp], 0x0
	call Scr_GetInt
	mov dword [esi], 0xd
	cvtsi2ss xmm0, eax
	movss [esi+0x78], xmm0
	sub ebx, 0x1
	jz HECmd_SetWaypoint_20
	mov dword [esp], 0x1
	call Scr_GetString
	mov [esp], eax
	call G_MaterialIndex
	mov [esi+0x44], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
HECmd_SetWaypoint_10:
	movzx edx, dx
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*2]
	lea esi, [eax*4+g_hudelems]
	jmp HECmd_SetWaypoint_30
HECmd_SetWaypoint_20:
	mov dword [esi+0x44], 0x0
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;HECmd_FadeOverTime(scr_entref_t)
HECmd_FadeOverTime:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	sub ax, 0x1
	jz HECmd_FadeOverTime_10
	mov dword [esp], _cstring_not_a_hud_elemen
	call Scr_ObjectError
	xor esi, esi
	mov dword [esp], 0x0
	call Scr_GetFloat
	fstp dword [ebp-0xc]
	movss xmm0, dword [ebp-0xc]
	ucomiss xmm0, [_float_0_00000000]
	jbe HECmd_FadeOverTime_20
HECmd_FadeOverTime_50:
	ucomiss xmm0, [_float_60_00000000]
	ja HECmd_FadeOverTime_30
HECmd_FadeOverTime_40:
	lea eax, [esi+0x28]
	mov [esp+0x8], eax
	mov ebx, level
	mov eax, [ebx+0x1ec]
	mov [esp+0x4], eax
	mov [esp], esi
	call BG_LerpHudColors
	mov eax, [ebx+0x1ec]
	mov [esi+0x2c], eax
	movss xmm0, dword [ebp-0xc]
	mulss xmm0, [_float_1000_00000000]
	movss [ebp-0xc], xmm0
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x10]
	cvttss2si eax, [ebp-0x10]
	mov [esi+0x30], eax
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
HECmd_FadeOverTime_30:
	cvtss2sd xmm0, xmm0
	movsd [esp+0x4], xmm0
	mov dword [esp], _cstring_fade_time_g__60
	call va
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Scr_ParamError
	jmp HECmd_FadeOverTime_40
HECmd_FadeOverTime_10:
	movzx edx, dx
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*2]
	lea esi, [eax*4+g_hudelems]
	mov dword [esp], 0x0
	call Scr_GetFloat
	fstp dword [ebp-0xc]
	movss xmm0, dword [ebp-0xc]
	ucomiss xmm0, [_float_0_00000000]
	ja HECmd_FadeOverTime_50
HECmd_FadeOverTime_20:
	jp HECmd_FadeOverTime_50
	cvtss2sd xmm0, xmm0
	movsd [esp+0x4], xmm0
	mov dword [esp], _cstring_fade_time_g__0
	call va
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Scr_ParamError
	jmp HECmd_FadeOverTime_40


;HECmd_MoveOverTime(scr_entref_t)
HECmd_MoveOverTime:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	sub ax, 0x1
	jz HECmd_MoveOverTime_10
	mov dword [esp], _cstring_not_a_hud_elemen
	call Scr_ObjectError
	xor ebx, ebx
	mov dword [esp], 0x0
	call Scr_GetFloat
	fstp dword [ebp-0xc]
	movss xmm0, dword [ebp-0xc]
	ucomiss xmm0, [_float_0_00000000]
	jbe HECmd_MoveOverTime_20
HECmd_MoveOverTime_50:
	ucomiss xmm0, [_float_60_00000000]
	ja HECmd_MoveOverTime_30
HECmd_MoveOverTime_40:
	mov eax, level
	mov eax, [eax+0x1ec]
	mov [ebx+0x68], eax
	movss xmm0, dword [ebp-0xc]
	mulss xmm0, [_float_1000_00000000]
	movss [ebp-0xc], xmm0
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x10]
	cvttss2si eax, [ebp-0x10]
	mov [ebx+0x6c], eax
	mov eax, [ebx+0x4]
	mov [ebx+0x58], eax
	mov eax, [ebx+0x8]
	mov [ebx+0x5c], eax
	mov eax, [ebx+0x1c]
	mov [ebx+0x60], eax
	mov eax, [ebx+0x20]
	mov [ebx+0x64], eax
	add esp, 0x24
	pop ebx
	pop ebp
	ret
HECmd_MoveOverTime_30:
	cvtss2sd xmm0, xmm0
	movsd [esp+0x4], xmm0
	mov dword [esp], _cstring_move_time_g__60
	call va
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Scr_ParamError
	jmp HECmd_MoveOverTime_40
HECmd_MoveOverTime_10:
	movzx edx, dx
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*2]
	lea ebx, [eax*4+g_hudelems]
	mov dword [esp], 0x0
	call Scr_GetFloat
	fstp dword [ebp-0xc]
	movss xmm0, dword [ebp-0xc]
	ucomiss xmm0, [_float_0_00000000]
	ja HECmd_MoveOverTime_50
HECmd_MoveOverTime_20:
	jp HECmd_MoveOverTime_50
	cvtss2sd xmm0, xmm0
	movsd [esp+0x4], xmm0
	mov dword [esp], _cstring_move_time_g__0
	call va
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Scr_ParamError
	jmp HECmd_MoveOverTime_40


;HECmd_Reset(scr_entref_t)
HECmd_Reset:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	sub ax, 0x1
	jz HECmd_Reset_10
	mov dword [esp], _cstring_not_a_hud_elemen
	call Scr_ObjectError
	xor edx, edx
HECmd_Reset_20:
	mov dword [edx], 0x1
	xor eax, eax
	mov [edx+0x4], eax
	mov [edx+0x8], eax
	mov [edx+0xc], eax
	mov dword [edx+0x10], 0x3ff
	mov dword [edx+0x18], 0x0
	mov dword [edx+0x1c], 0x0
	mov dword [edx+0x20], 0x0
	mov dword [edx+0x24], 0xffffffff
	mov dword [edx+0x84], 0x0
	mov dword [edx+0x28], 0x0
	mov dword [edx+0x2c], 0x0
	mov dword [edx+0x30], 0x0
	mov dword [edx+0x34], 0x0
	mov [edx+0x80], eax
	mov dword [edx+0x9c], 0x0
	mov dword [edx+0x88], 0x0
	mov dword [edx+0x8c], 0x0
	mov dword [edx+0x90], 0x0
	mov dword [edx+0x94], 0x0
	mov dword [edx+0x98], 0x0
	mov dword [edx+0x68], 0x0
	mov dword [edx+0x6c], 0x0
	mov [edx+0x14], eax
	mov dword [edx+0xa8], 0x1
	mov dword [edx+0x38], 0x0
	mov dword [edx+0x3c], 0x0
	mov dword [edx+0x40], 0x0
	mov [edx+0x58], eax
	mov [edx+0x5c], eax
	mov dword [edx+0x60], 0x0
	mov dword [edx+0x64], 0x0
	mov dword [edx+0x48], 0x0
	mov dword [edx+0x4c], 0x0
	mov dword [edx+0x50], 0x0
	mov dword [edx+0x54], 0x0
	mov dword [edx+0x70], 0x0
	mov dword [edx+0x74], 0x0
	mov [edx+0x78], eax
	mov dword [edx+0x7c], 0x0
	leave
	ret
HECmd_Reset_10:
	movzx edx, dx
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*2]
	lea edx, [eax*4+g_hudelems]
	jmp HECmd_Reset_20


;HECmd_Destroy(scr_entref_t)
HECmd_Destroy:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	sub ax, 0x1
	jz HECmd_Destroy_10
	mov dword [esp], _cstring_not_a_hud_elemen
	call Scr_ObjectError
	xor ebx, ebx
	mov [esp], ebx
	call Scr_FreeHudElem
	mov dword [ebx], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret
HECmd_Destroy_10:
	movzx edx, dx
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*2]
	lea ebx, [eax*4+g_hudelems]
	mov [esp], ebx
	call Scr_FreeHudElem
	mov dword [ebx], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;HECmd_SetPlayerNameString(scr_entref_t)
HECmd_SetPlayerNameString:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	sub ax, 0x1
	jz HECmd_SetPlayerNameString_10
	mov dword [esp], _cstring_not_a_hud_elemen
	call Scr_ObjectError
	xor ebx, ebx
HECmd_SetPlayerNameString_40:
	mov dword [esp], 0x0
	call Scr_GetEntity
	mov edx, eax
	test eax, eax
	jz HECmd_SetPlayerNameString_20
	mov ecx, [eax+0x15c]
	test ecx, ecx
	jz HECmd_SetPlayerNameString_30
	mov dword [ebx+0x38], 0x0
	mov dword [ebx+0x3c], 0x0
	mov dword [ebx+0x40], 0x0
	xor eax, eax
	mov [ebx+0x58], eax
	mov [ebx+0x5c], eax
	mov dword [ebx+0x60], 0x0
	mov dword [ebx+0x64], 0x0
	mov dword [ebx+0x48], 0x0
	mov dword [ebx+0x4c], 0x0
	mov dword [ebx+0x50], 0x0
	mov dword [ebx+0x54], 0x0
	mov dword [ebx+0x70], 0x0
	mov dword [ebx+0x74], 0x0
	mov [ebx+0x78], eax
	mov dword [ebx+0x7c], 0x0
	mov dword [ebx], 0x3
	cvtsi2ss xmm0, dword [edx]
	movss [ebx+0x78], xmm0
HECmd_SetPlayerNameString_50:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
HECmd_SetPlayerNameString_10:
	movzx edx, dx
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*2]
	lea ebx, [eax*4+g_hudelems]
	jmp HECmd_SetPlayerNameString_40
HECmd_SetPlayerNameString_20:
	mov dword [esp+0x4], _cstring_invalid_entity_p
	mov dword [esp], 0x17
	call Com_Printf
	jmp HECmd_SetPlayerNameString_50
HECmd_SetPlayerNameString_30:
	mov dword [esp+0x4], _cstring_invalid_entity_p1
	mov dword [esp], 0x17
	call Com_Printf
	jmp HECmd_SetPlayerNameString_50
	nop


;HECmd_SetMapNameString(scr_entref_t)
HECmd_SetMapNameString:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	sub ax, 0x1
	jz HECmd_SetMapNameString_10
	mov dword [esp], _cstring_not_a_hud_elemen
	call Scr_ObjectError
	xor ebx, ebx
	mov dword [esp], 0x0
	call Scr_GetString
	mov esi, eax
	test eax, eax
	jz HECmd_SetMapNameString_20
HECmd_SetMapNameString_40:
	mov [esp], eax
	call SV_MapExists
	test eax, eax
	jnz HECmd_SetMapNameString_30
	mov dword [esp+0x4], _cstring_invalid_map_name
	mov dword [esp], 0x17
	call Com_Printf
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
HECmd_SetMapNameString_30:
	mov [esp+0x4], esi
	mov dword [esp], 0x11
	call SV_SetConfigstring
	mov dword [ebx+0x38], 0x0
	mov dword [ebx+0x3c], 0x0
	mov dword [ebx+0x40], 0x0
	xor eax, eax
	mov [ebx+0x58], eax
	mov [ebx+0x5c], eax
	mov dword [ebx+0x60], 0x0
	mov dword [ebx+0x64], 0x0
	mov dword [ebx+0x48], 0x0
	mov dword [ebx+0x4c], 0x0
	mov dword [ebx+0x50], 0x0
	mov dword [ebx+0x54], 0x0
	mov dword [ebx+0x70], 0x0
	mov dword [ebx+0x74], 0x0
	mov [ebx+0x78], eax
	mov dword [ebx+0x7c], 0x0
	mov dword [ebx], 0x4
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
HECmd_SetMapNameString_10:
	movzx edx, dx
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*2]
	lea ebx, [eax*4+g_hudelems]
	mov dword [esp], 0x0
	call Scr_GetString
	mov esi, eax
	test eax, eax
	jnz HECmd_SetMapNameString_40
HECmd_SetMapNameString_20:
	mov dword [esp+0x4], _cstring_invalid_mapname_
	mov dword [esp], 0x17
	call Com_Printf
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;HECmd_SetGameTypeString(scr_entref_t)
HECmd_SetGameTypeString:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	sub ax, 0x1
	jz HECmd_SetGameTypeString_10
	mov dword [esp], _cstring_not_a_hud_elemen
	call Scr_ObjectError
	xor ebx, ebx
	mov dword [esp], 0x0
	call Scr_GetString
	mov esi, eax
	test eax, eax
	jz HECmd_SetGameTypeString_20
HECmd_SetGameTypeString_40:
	mov [esp], eax
	call Scr_GetGameTypeNameForScript
	test eax, eax
	jz HECmd_SetGameTypeString_30
	mov [esp+0x4], esi
	mov dword [esp], 0x12
	call SV_SetConfigstring
	mov dword [ebx+0x38], 0x0
	mov dword [ebx+0x3c], 0x0
	mov dword [ebx+0x40], 0x0
	xor eax, eax
	mov [ebx+0x58], eax
	mov [ebx+0x5c], eax
	mov dword [ebx+0x60], 0x0
	mov dword [ebx+0x64], 0x0
	mov dword [ebx+0x48], 0x0
	mov dword [ebx+0x4c], 0x0
	mov dword [ebx+0x50], 0x0
	mov dword [ebx+0x54], 0x0
	mov dword [ebx+0x70], 0x0
	mov dword [ebx+0x74], 0x0
	mov dword [ebx+0x7c], 0x0
	mov dword [ebx], 0x5
	mov dword [ebx+0x78], 0x41900000
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
HECmd_SetGameTypeString_10:
	movzx edx, dx
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*2]
	lea ebx, [eax*4+g_hudelems]
	mov dword [esp], 0x0
	call Scr_GetString
	mov esi, eax
	test eax, eax
	jnz HECmd_SetGameTypeString_40
HECmd_SetGameTypeString_20:
	mov dword [esp+0x4], _cstring_invalid_entity_p2
	mov dword [esp], 0x17
	call Com_Printf
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
HECmd_SetGameTypeString_30:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_invalid_gametype
	mov dword [esp], 0x17
	call Com_Printf
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;HudElem_SetFontScale(game_hudelem_s*, int)
HudElem_SetFontScale:
	push ebp
	mov ebp, esp
	sub esp, 0x38
	mov dword [esp], 0x0
	call Scr_GetFloat
	fstp dword [ebp-0xc]
	movss xmm0, dword [ebp-0xc]
	ucomiss xmm0, [_float_0_00000000]
	jbe HudElem_SetFontScale_10
HudElem_SetFontScale_50:
	ucomiss xmm0, [_float_1_39999998]
	jb HudElem_SetFontScale_20
HudElem_SetFontScale_40:
	ucomiss xmm0, [_float_4_59999990]
	ja HudElem_SetFontScale_30
	mov eax, [ebp+0x8]
	movss [eax+0x14], xmm0
	leave
	ret
HudElem_SetFontScale_30:
	mov dword [esp+0xc], 0x60000000
	mov dword [esp+0x10], 0x40126666
	cvtss2sd xmm0, xmm0
	movsd [esp+0x4], xmm0
	mov dword [esp], _cstring_font_scale_f_is_
	call va
	mov [esp], eax
	call Scr_Error
	movss xmm0, dword [ebp-0xc]
	mov eax, [ebp+0x8]
	movss [eax+0x14], xmm0
	leave
	ret
HudElem_SetFontScale_20:
	jp HudElem_SetFontScale_40
	mov dword [esp+0xc], 0x60000000
	mov dword [esp+0x10], 0x3ff66666
	cvtss2sd xmm0, xmm0
	movsd [esp+0x4], xmm0
	mov dword [esp], _cstring_font_scale_f_is_1
	call va
	mov [esp], eax
	call Scr_Error
	movss xmm0, dword [ebp-0xc]
	mov eax, [ebp+0x8]
	movss [eax+0x14], xmm0
	leave
	ret
HudElem_SetFontScale_10:
	jp HudElem_SetFontScale_50
	cvtss2sd xmm0, xmm0
	movsd [esp+0x4], xmm0
	mov dword [esp], _cstring_font_scale_was_g
	call va
	mov [esp], eax
	call Scr_Error
	movss xmm0, dword [ebp-0xc]
	jmp HudElem_SetFontScale_50
	nop


;HudElem_SetFont(game_hudelem_s*, int)
HudElem_SetFont:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	lea ecx, [edx*4]
	shl edx, 0x5
	sub edx, ecx
	add edx, fields
	mov dword [ebp+0x8], 0x6
	mov ecx, g_he_font
	pop ebp
	jmp HudElem_SetEnumString
	nop


;HudElem_GetFont(game_hudelem_s*, int)
HudElem_GetFont:
	push ebp
	mov ebp, esp
	push ebx
	mov edx, [ebp+0xc]
	lea eax, [edx*4]
	shl edx, 0x5
	sub edx, eax
	add edx, fields
	mov ecx, [edx+0x4]
	mov ebx, [edx+0x10]
	mov eax, [ebp+0x8]
	mov eax, [ecx+eax]
	mov ecx, ebx
	sar eax, cl
	and eax, [edx+0xc]
	mov eax, [eax*4+g_he_font]
	mov [ebp+0x8], eax
	pop ebx
	pop ebp
	jmp Scr_AddString
	nop


;HudElem_SetAlignX(game_hudelem_s*, int)
HudElem_SetAlignX:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	lea ecx, [edx*4]
	shl edx, 0x5
	sub edx, ecx
	add edx, fields
	mov dword [ebp+0x8], 0x3
	mov ecx, g_he_alignx
	pop ebp
	jmp HudElem_SetEnumString
	nop


;HudElem_GetAlignX(game_hudelem_s*, int)
HudElem_GetAlignX:
	push ebp
	mov ebp, esp
	push ebx
	mov edx, [ebp+0xc]
	lea eax, [edx*4]
	shl edx, 0x5
	sub edx, eax
	add edx, fields
	mov ecx, [edx+0x4]
	mov ebx, [edx+0x10]
	mov eax, [ebp+0x8]
	mov eax, [ecx+eax]
	mov ecx, ebx
	sar eax, cl
	and eax, [edx+0xc]
	mov eax, [eax*4+g_he_alignx]
	mov [ebp+0x8], eax
	pop ebx
	pop ebp
	jmp Scr_AddString
	nop


;HudElem_SetAlignY(game_hudelem_s*, int)
HudElem_SetAlignY:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	lea ecx, [edx*4]
	shl edx, 0x5
	sub edx, ecx
	add edx, fields
	mov dword [ebp+0x8], 0x3
	mov ecx, g_he_aligny
	pop ebp
	jmp HudElem_SetEnumString
	nop


;HudElem_GetAlignY(game_hudelem_s*, int)
HudElem_GetAlignY:
	push ebp
	mov ebp, esp
	push ebx
	mov edx, [ebp+0xc]
	lea eax, [edx*4]
	shl edx, 0x5
	sub edx, eax
	add edx, fields
	mov ecx, [edx+0x4]
	mov ebx, [edx+0x10]
	mov eax, [ebp+0x8]
	mov eax, [ecx+eax]
	mov ecx, ebx
	sar eax, cl
	and eax, [edx+0xc]
	mov eax, [eax*4+g_he_aligny]
	mov [ebp+0x8], eax
	pop ebx
	pop ebp
	jmp Scr_AddString
	nop


;HudElem_SetHorzAlign(game_hudelem_s*, int)
HudElem_SetHorzAlign:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	lea ecx, [edx*4]
	shl edx, 0x5
	sub edx, ecx
	add edx, fields
	mov dword [ebp+0x8], 0x8
	mov ecx, g_he_horzalign
	pop ebp
	jmp HudElem_SetEnumString
	nop


;HudElem_GetHorzAlign(game_hudelem_s*, int)
HudElem_GetHorzAlign:
	push ebp
	mov ebp, esp
	push ebx
	mov edx, [ebp+0xc]
	lea eax, [edx*4]
	shl edx, 0x5
	sub edx, eax
	add edx, fields
	mov ecx, [edx+0x4]
	mov ebx, [edx+0x10]
	mov eax, [ebp+0x8]
	mov eax, [ecx+eax]
	mov ecx, ebx
	sar eax, cl
	and eax, [edx+0xc]
	mov eax, [eax*4+g_he_horzalign]
	mov [ebp+0x8], eax
	pop ebx
	pop ebp
	jmp Scr_AddString
	nop


;HudElem_SetVertAlign(game_hudelem_s*, int)
HudElem_SetVertAlign:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	lea ecx, [edx*4]
	shl edx, 0x5
	sub edx, ecx
	add edx, fields
	mov dword [ebp+0x8], 0x8
	mov ecx, g_he_vertalign
	pop ebp
	jmp HudElem_SetEnumString
	nop


;HudElem_GetVertAlign(game_hudelem_s*, int)
HudElem_GetVertAlign:
	push ebp
	mov ebp, esp
	push ebx
	mov edx, [ebp+0xc]
	lea eax, [edx*4]
	shl edx, 0x5
	sub edx, eax
	add edx, fields
	mov ecx, [edx+0x4]
	mov ebx, [edx+0x10]
	mov eax, [ebp+0x8]
	mov eax, [ecx+eax]
	mov ecx, ebx
	sar eax, cl
	and eax, [edx+0xc]
	mov eax, [eax*4+g_he_vertalign]
	mov [ebp+0x8], eax
	pop ebx
	pop ebp
	jmp Scr_AddString
	nop


;HudElem_SetColor(game_hudelem_s*, int)
HudElem_SetColor:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x44
	mov ebx, [ebp+0x8]
	lea eax, [ebp-0x14]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Scr_GetVector
	movss xmm1, dword [ebp-0x14]
	movaps xmm0, xmm1
	subss xmm0, [_float_1_00000000]
	pxor xmm2, xmm2
	ucomiss xmm0, xmm2
	jb HudElem_SetColor_10
	movss xmm1, dword [_float_1_00000000]
	movss xmm0, dword [_float__1_00000000]
	ucomiss xmm0, xmm2
	jb HudElem_SetColor_20
HudElem_SetColor_70:
	movaps xmm0, xmm2
HudElem_SetColor_80:
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	movss [ebp-0x38], xmm2
	call floorf
	fstp dword [ebp-0x1c]
	cvttss2si eax, [ebp-0x1c]
	mov [ebx+0x24], al
	movss xmm1, dword [ebp-0x10]
	movaps xmm0, xmm1
	subss xmm0, [_float_1_00000000]
	movss xmm2, dword [ebp-0x38]
	ucomiss xmm0, xmm2
	jb HudElem_SetColor_30
	movss xmm1, dword [_float_1_00000000]
	movss xmm0, dword [_float__1_00000000]
HudElem_SetColor_110:
	ucomiss xmm0, xmm2
	jb HudElem_SetColor_40
	movaps xmm0, xmm2
HudElem_SetColor_100:
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	movss [ebp-0x38], xmm2
	call floorf
	fstp dword [ebp-0x20]
	cvttss2si eax, [ebp-0x20]
	mov [ebx+0x25], al
	movss xmm1, dword [ebp-0xc]
	movaps xmm0, xmm1
	subss xmm0, [_float_1_00000000]
	movss xmm2, dword [ebp-0x38]
	ucomiss xmm0, xmm2
	jb HudElem_SetColor_50
	movss xmm1, dword [_float_1_00000000]
	movss xmm0, dword [_float__1_00000000]
	ucomiss xmm0, xmm2
	jb HudElem_SetColor_60
HudElem_SetColor_90:
	movaps xmm0, xmm2
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x24]
	cvttss2si eax, [ebp-0x24]
	mov [ebx+0x26], al
	add esp, 0x44
	pop ebx
	pop ebp
	ret
HudElem_SetColor_10:
	movaps xmm0, xmm2
	subss xmm0, xmm1
	ucomiss xmm0, xmm2
	jae HudElem_SetColor_70
HudElem_SetColor_20:
	movaps xmm0, xmm1
	mulss xmm0, [_float_255_00000000]
	jmp HudElem_SetColor_80
HudElem_SetColor_50:
	movaps xmm0, xmm2
	subss xmm0, xmm1
	ucomiss xmm0, xmm2
	jae HudElem_SetColor_90
HudElem_SetColor_60:
	movaps xmm0, xmm1
	mulss xmm0, [_float_255_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x24]
	cvttss2si eax, [ebp-0x24]
	mov [ebx+0x26], al
	add esp, 0x44
	pop ebx
	pop ebp
	ret
HudElem_SetColor_40:
	movaps xmm0, xmm1
	mulss xmm0, [_float_255_00000000]
	jmp HudElem_SetColor_100
HudElem_SetColor_30:
	movaps xmm0, xmm2
	subss xmm0, xmm1
	jmp HudElem_SetColor_110
	nop


;HudElem_GetColor(game_hudelem_s*, int)
HudElem_GetColor:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov edx, [ebp+0x8]
	movzx eax, byte [edx+0x24]
	cvtsi2ss xmm0, eax
	movss xmm1, dword [_float_0_00392157]
	mulss xmm0, xmm1
	movss [ebp-0x14], xmm0
	movzx eax, byte [edx+0x25]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	movss [ebp-0x10], xmm0
	movzx eax, byte [edx+0x26]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	movss [ebp-0xc], xmm0
	lea eax, [ebp-0x14]
	mov [esp], eax
	call Scr_AddVector
	leave
	ret
	nop


;HudElem_SetAlpha(game_hudelem_s*, int)
HudElem_SetAlpha:
	push ebp
	mov ebp, esp
	sub esp, 0x38
	mov dword [esp], 0x0
	call Scr_GetFloat
	fstp dword [ebp-0x1c]
	movss xmm1, dword [ebp-0x1c]
	movss xmm3, dword [_float_1_00000000]
	movaps xmm0, xmm1
	subss xmm0, xmm3
	pxor xmm2, xmm2
	ucomiss xmm0, xmm2
	jb HudElem_SetAlpha_10
	movaps xmm1, xmm3
	movss xmm0, dword [_float__1_00000000]
	ucomiss xmm0, xmm2
	jb HudElem_SetAlpha_20
HudElem_SetAlpha_30:
	movaps xmm0, xmm2
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0xc]
	cvttss2si edx, [ebp-0xc]
	mov eax, [ebp+0x8]
	mov [eax+0x27], dl
	leave
	ret
HudElem_SetAlpha_10:
	movaps xmm0, xmm2
	subss xmm0, xmm1
	ucomiss xmm0, xmm2
	jae HudElem_SetAlpha_30
HudElem_SetAlpha_20:
	movaps xmm0, xmm1
	mulss xmm0, [_float_255_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0xc]
	cvttss2si edx, [ebp-0xc]
	mov eax, [ebp+0x8]
	mov [eax+0x27], dl
	leave
	ret


;HudElem_GetAlpha(game_hudelem_s*, int)
HudElem_GetAlpha:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	movzx eax, byte [eax+0x27]
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float_0_00392157]
	movss [ebp+0x8], xmm0
	pop ebp
	jmp Scr_AddFloat
	nop


;HudElem_SetLocalizedString(game_hudelem_s*, int)
HudElem_SetLocalizedString:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov dword [esp], 0x0
	call Scr_GetIString
	lea edx, [ebx*4]
	shl ebx, 0x5
	sub ebx, edx
	add esi, [ebx+fields+0x4]
	mov [esp], eax
	call G_LocalizedStringIndex
	mov [esi], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;HudElem_SetFlagForeground(game_hudelem_s*, int)
HudElem_SetFlagForeground:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0xc]
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	mov ebx, [eax+fields+0x4]
	add ebx, [ebp+0x8]
	mov dword [esp], 0x0
	call Scr_GetInt
	test eax, eax
	jz HudElem_SetFlagForeground_10
	or dword [ebx], 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret
HudElem_SetFlagForeground_10:
	and dword [ebx], 0xfffffffe
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;HudElem_GetFlagForeground(game_hudelem_s*, int)
HudElem_GetFlagForeground:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	test byte [eax+0x9c], 0x1
	jz HudElem_GetFlagForeground_10
	mov dword [ebp+0x8], 0x1
	pop ebp
	jmp Scr_AddBool
HudElem_GetFlagForeground_10:
	mov dword [ebp+0x8], 0x0
	pop ebp
	jmp Scr_AddBool
	nop


;HudElem_SetFlagHideWhenDead(game_hudelem_s*, int)
HudElem_SetFlagHideWhenDead:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0xc]
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	mov ebx, [eax+fields+0x4]
	add ebx, [ebp+0x8]
	mov dword [esp], 0x0
	call Scr_GetInt
	test eax, eax
	jz HudElem_SetFlagHideWhenDead_10
	or dword [ebx], 0x2
	add esp, 0x14
	pop ebx
	pop ebp
	ret
HudElem_SetFlagHideWhenDead_10:
	and dword [ebx], 0xfffffffd
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;HudElem_GetFlagHideWhenDead(game_hudelem_s*, int)
HudElem_GetFlagHideWhenDead:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	test byte [eax+0x9c], 0x2
	jz HudElem_GetFlagHideWhenDead_10
	mov dword [ebp+0x8], 0x1
	pop ebp
	jmp Scr_AddBool
HudElem_GetFlagHideWhenDead_10:
	mov dword [ebp+0x8], 0x0
	pop ebp
	jmp Scr_AddBool
	nop


;HudElem_SetFlagHideWhenInMenu(game_hudelem_s*, int)
HudElem_SetFlagHideWhenInMenu:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0xc]
	lea edx, [eax*4]
	shl eax, 0x5
	sub eax, edx
	mov ebx, [eax+fields+0x4]
	add ebx, [ebp+0x8]
	mov dword [esp], 0x0
	call Scr_GetInt
	test eax, eax
	jz HudElem_SetFlagHideWhenInMenu_10
	or dword [ebx], 0x4
	add esp, 0x14
	pop ebx
	pop ebp
	ret
HudElem_SetFlagHideWhenInMenu_10:
	and dword [ebx], 0xfffffffb
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;HudElem_GetFlagHideWhenInMenu(game_hudelem_s*, int)
HudElem_GetFlagHideWhenInMenu:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	test byte [eax+0x9c], 0x4
	jz HudElem_GetFlagHideWhenInMenu_10
	mov dword [ebp+0x8], 0x1
	pop ebp
	jmp Scr_AddBool
HudElem_GetFlagHideWhenInMenu_10:
	mov dword [ebp+0x8], 0x0
	pop ebp
	jmp Scr_AddBool
	nop


;HudElem_SetGlowColor(game_hudelem_s*, int)
HudElem_SetGlowColor:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x44
	mov ebx, [ebp+0x8]
	lea eax, [ebp-0x14]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Scr_GetVector
	movss xmm1, dword [ebp-0x14]
	movaps xmm0, xmm1
	subss xmm0, [_float_1_00000000]
	pxor xmm2, xmm2
	ucomiss xmm0, xmm2
	jb HudElem_SetGlowColor_10
	movss xmm1, dword [_float_1_00000000]
	movss xmm0, dword [_float__1_00000000]
	ucomiss xmm0, xmm2
	jb HudElem_SetGlowColor_20
HudElem_SetGlowColor_70:
	movaps xmm0, xmm2
HudElem_SetGlowColor_80:
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	movss [ebp-0x38], xmm2
	call floorf
	fstp dword [ebp-0x1c]
	cvttss2si eax, [ebp-0x1c]
	mov [ebx+0x84], al
	movss xmm1, dword [ebp-0x10]
	movaps xmm0, xmm1
	subss xmm0, [_float_1_00000000]
	movss xmm2, dword [ebp-0x38]
	ucomiss xmm0, xmm2
	jb HudElem_SetGlowColor_30
	movss xmm1, dword [_float_1_00000000]
	movss xmm0, dword [_float__1_00000000]
HudElem_SetGlowColor_110:
	ucomiss xmm0, xmm2
	jb HudElem_SetGlowColor_40
	movaps xmm0, xmm2
HudElem_SetGlowColor_100:
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	movss [ebp-0x38], xmm2
	call floorf
	fstp dword [ebp-0x20]
	cvttss2si eax, [ebp-0x20]
	mov [ebx+0x85], al
	movss xmm1, dword [ebp-0xc]
	movaps xmm0, xmm1
	subss xmm0, [_float_1_00000000]
	movss xmm2, dword [ebp-0x38]
	ucomiss xmm0, xmm2
	jb HudElem_SetGlowColor_50
	movss xmm1, dword [_float_1_00000000]
	movss xmm0, dword [_float__1_00000000]
	ucomiss xmm0, xmm2
	jb HudElem_SetGlowColor_60
HudElem_SetGlowColor_90:
	movaps xmm0, xmm2
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x24]
	cvttss2si eax, [ebp-0x24]
	mov [ebx+0x86], al
	add esp, 0x44
	pop ebx
	pop ebp
	ret
HudElem_SetGlowColor_10:
	movaps xmm0, xmm2
	subss xmm0, xmm1
	ucomiss xmm0, xmm2
	jae HudElem_SetGlowColor_70
HudElem_SetGlowColor_20:
	movaps xmm0, xmm1
	mulss xmm0, [_float_255_00000000]
	jmp HudElem_SetGlowColor_80
HudElem_SetGlowColor_50:
	movaps xmm0, xmm2
	subss xmm0, xmm1
	ucomiss xmm0, xmm2
	jae HudElem_SetGlowColor_90
HudElem_SetGlowColor_60:
	movaps xmm0, xmm1
	mulss xmm0, [_float_255_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x24]
	cvttss2si eax, [ebp-0x24]
	mov [ebx+0x86], al
	add esp, 0x44
	pop ebx
	pop ebp
	ret
HudElem_SetGlowColor_40:
	movaps xmm0, xmm1
	mulss xmm0, [_float_255_00000000]
	jmp HudElem_SetGlowColor_100
HudElem_SetGlowColor_30:
	movaps xmm0, xmm2
	subss xmm0, xmm1
	jmp HudElem_SetGlowColor_110
	nop


;HudElem_GetGlowColor(game_hudelem_s*, int)
HudElem_GetGlowColor:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov edx, [ebp+0x8]
	movzx eax, byte [edx+0x84]
	cvtsi2ss xmm0, eax
	movss xmm1, dword [_float_0_00392157]
	mulss xmm0, xmm1
	movss [ebp-0x14], xmm0
	movzx eax, byte [edx+0x85]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	movss [ebp-0x10], xmm0
	movzx eax, byte [edx+0x86]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	movss [ebp-0xc], xmm0
	lea eax, [ebp-0x14]
	mov [esp], eax
	call Scr_AddVector
	leave
	ret


;HudElem_SetGlowAlpha(game_hudelem_s*, int)
HudElem_SetGlowAlpha:
	push ebp
	mov ebp, esp
	sub esp, 0x38
	mov dword [esp], 0x0
	call Scr_GetFloat
	fstp dword [ebp-0x1c]
	movss xmm1, dword [ebp-0x1c]
	movss xmm3, dword [_float_1_00000000]
	movaps xmm0, xmm1
	subss xmm0, xmm3
	pxor xmm2, xmm2
	ucomiss xmm0, xmm2
	jb HudElem_SetGlowAlpha_10
	movaps xmm1, xmm3
	movss xmm0, dword [_float__1_00000000]
	ucomiss xmm0, xmm2
	jb HudElem_SetGlowAlpha_20
HudElem_SetGlowAlpha_30:
	movaps xmm0, xmm2
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0xc]
	cvttss2si edx, [ebp-0xc]
	mov eax, [ebp+0x8]
	mov [eax+0x87], dl
	leave
	ret
HudElem_SetGlowAlpha_10:
	movaps xmm0, xmm2
	subss xmm0, xmm1
	ucomiss xmm0, xmm2
	jae HudElem_SetGlowAlpha_30
HudElem_SetGlowAlpha_20:
	movaps xmm0, xmm1
	mulss xmm0, [_float_255_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0xc]
	cvttss2si edx, [ebp-0xc]
	mov eax, [ebp+0x8]
	mov [eax+0x87], dl
	leave
	ret


;HudElem_GetGlowAlpha(game_hudelem_s*, int)
HudElem_GetGlowAlpha:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	movzx eax, byte [eax+0x87]
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float_0_00392157]
	movss [ebp+0x8], xmm0
	pop ebp
	jmp Scr_AddFloat


;HudElem_SetBoolean(game_hudelem_s*, int)
HudElem_SetBoolean:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0xc]
	mov dword [esp], 0x0
	call Scr_GetInt
	lea edx, [ebx*4]
	shl ebx, 0x5
	sub ebx, edx
	mov ecx, [ebx+fields+0x4]
	mov edx, [ebp+0x8]
	mov [ecx+edx], eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;HudElem_SetEnumString(game_hudelem_s*, game_hudelem_field_t const*, char const**, int)
HudElem_SetEnumString:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x82c
	mov edi, edx
	mov [ebp-0x820], ecx
	mov edx, [edx+0x4]
	add eax, edx
	mov [ebp-0x81c], eax
	mov dword [esp], 0x0
	call Scr_GetString
	mov esi, eax
	mov edx, [ebp+0x8]
	test edx, edx
	jle HudElem_SetEnumString_10
	xor ebx, ebx
HudElem_SetEnumString_30:
	mov edx, [ebp-0x820]
	mov eax, [edx+ebx*4]
	mov [esp+0x4], eax
	mov [esp], esi
	call Q_stricmp
	test eax, eax
	jz HudElem_SetEnumString_20
	add ebx, 0x1
	cmp [ebp+0x8], ebx
	jnz HudElem_SetEnumString_30
HudElem_SetEnumString_10:
	mov eax, [edi]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_s_is_not_a_valid
	lea esi, [ebp-0x818]
	mov [esp], esi
	call sprintf
	mov eax, [ebp+0x8]
	test eax, eax
	jg HudElem_SetEnumString_40
HudElem_SetEnumString_60:
	mov [esp], esi
	call Scr_Error
	add esp, 0x82c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
HudElem_SetEnumString_40:
	xor ebx, ebx
HudElem_SetEnumString_50:
	mov edx, [ebp-0x820]
	mov eax, [edx+ebx*4]
	mov [esp+0x4], eax
	mov dword [esp], _cstring__s
	call va
	mov dword [esp+0x8], 0x800
	mov [esp+0x4], eax
	mov [esp], esi
	call strncat
	mov byte [ebp-0x19], 0x0
	add ebx, 0x1
	cmp [ebp+0x8], ebx
	jnz HudElem_SetEnumString_50
	jmp HudElem_SetEnumString_60
HudElem_SetEnumString_20:
	mov ecx, [edi+0x10]
	mov eax, [edi+0xc]
	shl eax, cl
	not eax
	mov edx, [ebp-0x81c]
	and eax, [edx]
	mov [edx], eax
	mov ecx, [edi+0x10]
	shl ebx, cl
	or eax, ebx
	mov [edx], eax
	add esp, 0x82c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;HECmd_SetTimer_Internal(scr_entref_t, he_type_t, char const*)
HECmd_SetTimer_Internal:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edi, edx
	mov esi, ecx
	mov edx, eax
	shr eax, 0x10
	sub ax, 0x1
	jz HECmd_SetTimer_Internal_10
	mov dword [esp], _cstring_not_a_hud_elemen
	call Scr_ObjectError
	xor ebx, ebx
HECmd_SetTimer_Internal_40:
	call Scr_GetNumParam
	sub eax, 0x1
	jz HECmd_SetTimer_Internal_20
	mov [esp+0x4], esi
	mov dword [esp], _cstring_usage_hudelem_st
	call va
	mov [esp], eax
	call Scr_Error
HECmd_SetTimer_Internal_20:
	mov dword [esp], 0x0
	call Scr_GetFloat
	fstp dword [ebp-0x2c]
	movss xmm0, dword [ebp-0x2c]
	mulss xmm0, [_float_1000_00000000]
	movss [esp], xmm0
	call ceilf
	fstp dword [ebp-0x1c]
	cvttss2si esi, [ebp-0x1c]
	test esi, esi
	jle HECmd_SetTimer_Internal_30
HECmd_SetTimer_Internal_50:
	mov dword [ebx+0x38], 0x0
	mov dword [ebx+0x3c], 0x0
	mov dword [ebx+0x40], 0x0
	xor eax, eax
	mov [ebx+0x58], eax
	mov [ebx+0x5c], eax
	mov dword [ebx+0x60], 0x0
	mov dword [ebx+0x64], 0x0
	mov dword [ebx+0x48], 0x0
	mov dword [ebx+0x4c], 0x0
	mov dword [ebx+0x50], 0x0
	mov dword [ebx+0x54], 0x0
	mov dword [ebx+0x70], 0x0
	mov dword [ebx+0x74], 0x0
	mov [ebx+0x78], eax
	mov dword [ebx+0x7c], 0x0
	mov [ebx], edi
	mov eax, level
	add esi, [eax+0x1ec]
	mov [ebx+0x70], esi
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
HECmd_SetTimer_Internal_10:
	movzx edx, dx
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*2]
	lea ebx, [eax*4+g_hudelems]
	jmp HECmd_SetTimer_Internal_40
HECmd_SetTimer_Internal_30:
	cmp edi, 0x8
	jz HECmd_SetTimer_Internal_50
	cvtsi2ss xmm0, esi
	mulss xmm0, [_float_0_00100000]
	cvtss2sd xmm0, xmm0
	movsd [esp+0x4], xmm0
	mov dword [esp], _cstring_time_g_should_be
	call va
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Scr_ParamError
	jmp HECmd_SetTimer_Internal_50
	nop


;HECmd_SetClock_Internal(scr_entref_t, he_type_t, char const*)
HECmd_SetClock_Internal:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov [ebp-0x28], edx
	mov edi, ecx
	mov edx, eax
	shr eax, 0x10
	sub ax, 0x1
	jz HECmd_SetClock_Internal_10
	mov dword [esp], _cstring_not_a_hud_elemen
	call Scr_ObjectError
	xor ebx, ebx
HECmd_SetClock_Internal_80:
	call Scr_GetNumParam
	mov esi, eax
	cmp eax, 0x3
	jz HECmd_SetClock_Internal_20
	cmp eax, 0x5
	jz HECmd_SetClock_Internal_20
	mov [esp+0x4], edi
	mov dword [esp], _cstring_usage_hudelem_st1
	call va
	mov [esp], eax
	call Scr_Error
HECmd_SetClock_Internal_20:
	mov dword [esp], 0x0
	call Scr_GetFloat
	fstp dword [ebp-0x3c]
	movss xmm0, dword [ebp-0x3c]
	mulss xmm0, [_float_1000_00000000]
	movss [esp], xmm0
	call ceilf
	fstp dword [ebp-0x2c]
	cvttss2si edi, [ebp-0x2c]
	test edi, edi
	jle HECmd_SetClock_Internal_30
HECmd_SetClock_Internal_100:
	mov dword [esp], 0x1
	call Scr_GetFloat
	fstp dword [ebp-0x3c]
	movss xmm0, dword [ebp-0x3c]
	mulss xmm0, [_float_1000_00000000]
	movss [esp], xmm0
	call ceilf
	fstp dword [ebp-0x30]
	cvttss2si eax, [ebp-0x30]
	mov [ebp-0x24], eax
	test eax, eax
	jle HECmd_SetClock_Internal_40
HECmd_SetClock_Internal_110:
	mov dword [esp], 0x2
	call Scr_GetString
	mov [esp], eax
	call G_MaterialIndex
	mov [ebp-0x20], eax
	cmp esi, 0x3
	jz HECmd_SetClock_Internal_50
	mov dword [esp], 0x3
	call Scr_GetInt
	mov [ebp-0x1c], eax
	test eax, eax
	js HECmd_SetClock_Internal_60
HECmd_SetClock_Internal_120:
	mov dword [esp], 0x4
	call Scr_GetInt
	mov esi, eax
	test eax, eax
	js HECmd_SetClock_Internal_70
HECmd_SetClock_Internal_90:
	mov dword [ebx+0x38], 0x0
	mov dword [ebx+0x3c], 0x0
	mov dword [ebx+0x40], 0x0
	xor eax, eax
	mov [ebx+0x58], eax
	mov [ebx+0x5c], eax
	mov dword [ebx+0x60], 0x0
	mov dword [ebx+0x64], 0x0
	mov dword [ebx+0x48], 0x0
	mov dword [ebx+0x4c], 0x0
	mov dword [ebx+0x50], 0x0
	mov dword [ebx+0x54], 0x0
	mov dword [ebx+0x70], 0x0
	mov dword [ebx+0x74], 0x0
	mov [ebx+0x78], eax
	mov dword [ebx+0x7c], 0x0
	mov eax, [ebp-0x28]
	mov [ebx], eax
	mov eax, level
	add edi, [eax+0x1ec]
	mov [ebx+0x70], edi
	mov eax, [ebp-0x24]
	mov [ebx+0x74], eax
	mov eax, [ebp-0x20]
	mov [ebx+0x40], eax
	mov eax, [ebp-0x1c]
	mov [ebx+0x38], eax
	mov [ebx+0x3c], esi
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
HECmd_SetClock_Internal_10:
	movzx edx, dx
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*2]
	lea ebx, [eax*4+g_hudelems]
	jmp HECmd_SetClock_Internal_80
HECmd_SetClock_Internal_50:
	mov dword [ebp-0x1c], 0x0
	xor si, si
	jmp HECmd_SetClock_Internal_90
HECmd_SetClock_Internal_30:
	cmp dword [ebp-0x28], 0xc
	jz HECmd_SetClock_Internal_100
	cvtsi2ss xmm0, edi
	mulss xmm0, [_float_0_00100000]
	cvtss2sd xmm0, xmm0
	movsd [esp+0x4], xmm0
	mov dword [esp], _cstring_time_g_should_be
	call va
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Scr_ParamError
	jmp HECmd_SetClock_Internal_100
HECmd_SetClock_Internal_70:
	mov [esp+0x4], eax
	mov dword [esp], _cstring_height_i__0
	call va
	mov [esp+0x4], eax
	mov dword [esp], 0x4
	call Scr_ParamError
	jmp HECmd_SetClock_Internal_90
HECmd_SetClock_Internal_40:
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float_0_00100000]
	cvtss2sd xmm0, xmm0
	movsd [esp+0x4], xmm0
	mov dword [esp], _cstring_duration_g_shoul
	call va
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call Scr_ParamError
	jmp HECmd_SetClock_Internal_110
HECmd_SetClock_Internal_60:
	mov [esp+0x4], eax
	mov dword [esp], _cstring_width_i__0
	call va
	mov [esp+0x4], eax
	mov dword [esp], 0x3
	call Scr_ParamError
	jmp HECmd_SetClock_Internal_120


;HudElem_GetMethod(char const**)
HudElem_GetMethod:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov [ebp-0x1c], eax
	xor esi, esi
	mov ebx, methods
	xor edi, edi
	mov edx, eax
	jmp HudElem_GetMethod_10
HudElem_GetMethod_30:
	add esi, 0x1
	add edi, 0xc
	add ebx, 0xc
	cmp esi, 0x16
	jz HudElem_GetMethod_20
	mov edx, [ebp-0x1c]
HudElem_GetMethod_10:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], edx
	call strcmp
	test eax, eax
	jnz HudElem_GetMethod_30
	mov eax, [edi+methods]
	mov edx, [ebp+0x8]
	mov [edx], eax
	mov eax, [edi+methods+0x4]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
HudElem_GetMethod_20:
	xor eax, eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;GScr_NewTeamHudElem()
GScr_NewTeamHudElem:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov dword [esp], 0x0
	call Scr_GetConstString
	mov edx, scr_const
	cmp ax, [edx+0xc]
	jz GScr_NewTeamHudElem_10
	cmp ax, [edx+0xe]
	jz GScr_NewTeamHudElem_20
	cmp ax, [edx+0x140]
	jz GScr_NewTeamHudElem_30
	mov dword [esp], 0x0
	call Scr_GetString
	mov [esp+0x4], eax
	mov dword [esp], _cstring_team_s_should_be
	call va
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call Scr_ParamError
	xor ebx, ebx
GScr_NewTeamHudElem_70:
	xor eax, eax
	mov edx, g_hudelems
	jmp GScr_NewTeamHudElem_40
GScr_NewTeamHudElem_60:
	add eax, 0x1
	add edx, 0xac
	cmp eax, 0x400
	jz GScr_NewTeamHudElem_50
GScr_NewTeamHudElem_40:
	mov ecx, [edx]
	test ecx, ecx
	jnz GScr_NewTeamHudElem_60
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*4]
	lea edx, [eax+edx*2]
	shl edx, 0x2
	lea ecx, [edx+g_hudelems]
	mov dword [edx+g_hudelems], 0x1
	xor eax, eax
	mov [ecx+0x4], eax
	mov [ecx+0x8], eax
	mov [ecx+0xc], eax
	mov dword [ecx+0x10], 0x3ff
	mov dword [ecx+0x18], 0x0
	mov dword [ecx+0x1c], 0x0
	mov dword [ecx+0x20], 0x0
	mov dword [ecx+0x24], 0xffffffff
	mov dword [ecx+0x84], 0x0
	mov dword [ecx+0x28], 0x0
	mov dword [ecx+0x2c], 0x0
	mov dword [ecx+0x30], 0x0
	mov dword [ecx+0x34], 0x0
	mov [ecx+0x80], eax
	mov dword [ecx+0x9c], 0x0
	mov dword [ecx+0x88], 0x0
	mov dword [ecx+0x8c], 0x0
	mov dword [ecx+0x90], 0x0
	mov dword [ecx+0x94], 0x0
	mov dword [ecx+0x98], 0x0
	mov dword [ecx+0x68], 0x0
	mov dword [ecx+0x6c], 0x0
	mov [ecx+0x14], eax
	mov dword [ecx+0xa8], 0x1
	mov dword [ecx+0x38], 0x0
	mov dword [ecx+0x3c], 0x0
	mov dword [ecx+0x40], 0x0
	mov [ecx+0x58], eax
	mov [ecx+0x5c], eax
	mov dword [ecx+0x60], 0x0
	mov dword [ecx+0x64], 0x0
	mov dword [ecx+0x48], 0x0
	mov dword [ecx+0x4c], 0x0
	mov dword [ecx+0x50], 0x0
	mov dword [ecx+0x54], 0x0
	mov dword [ecx+0x70], 0x0
	mov dword [ecx+0x74], 0x0
	mov [ecx+0x78], eax
	mov dword [ecx+0x7c], 0x0
	mov dword [edx+g_hudelems+0xa0], 0x3ff
	mov [edx+g_hudelems+0xa4], ebx
GScr_NewTeamHudElem_80:
	mov [esp], ecx
	call Scr_AddHudElem
	add esp, 0x14
	pop ebx
	pop ebp
	ret
GScr_NewTeamHudElem_30:
	mov ebx, 0x3
	jmp GScr_NewTeamHudElem_70
GScr_NewTeamHudElem_10:
	mov ebx, 0x2
	jmp GScr_NewTeamHudElem_70
GScr_NewTeamHudElem_20:
	mov ebx, 0x1
	jmp GScr_NewTeamHudElem_70
GScr_NewTeamHudElem_50:
	mov dword [esp], _cstring_out_of_hudelems
	call Scr_Error
	xor ecx, ecx
	jmp GScr_NewTeamHudElem_80
	nop


;Scr_GetHudElemField(int, int)
Scr_GetHudElemField:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov edx, [ebp+0x8]
	mov ebx, [ebp+0xc]
	lea ecx, [ebx*4]
	mov eax, ebx
	shl eax, 0x5
	sub eax, ecx
	lea esi, [eax+fields]
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*2]
	lea edx, [eax*4+g_hudelems]
	mov ecx, [esi+0x18]
	test ecx, ecx
	jz Scr_GetHudElemField_10
	mov [ebp+0x8], edx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp ecx
Scr_GetHudElemField_10:
	mov eax, [esi+0x4]
	mov [esp+0x8], eax
	mov eax, [esi+0x8]
	mov [esp+0x4], eax
	mov [esp], edx
	call Scr_GetGenericField
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;Scr_SetHudElemField(int, int)
Scr_SetHudElemField:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov edx, [ebp+0x8]
	mov ebx, [ebp+0xc]
	lea ecx, [ebx*4]
	mov eax, ebx
	shl eax, 0x5
	sub eax, ecx
	lea esi, [eax+fields]
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*2]
	lea edx, [eax*4+g_hudelems]
	mov ecx, [esi+0x14]
	test ecx, ecx
	jz Scr_SetHudElemField_10
	mov [ebp+0x8], edx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp ecx
Scr_SetHudElemField_10:
	mov eax, [esi+0x4]
	mov [esp+0x8], eax
	mov eax, [esi+0x8]
	mov [esp+0x4], eax
	mov [esp], edx
	call Scr_SetGenericField
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;GScr_AddFieldsForHudElems()
GScr_AddFieldsForHudElems:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [fields]
	test ebx, ebx
	jz GScr_AddFieldsForHudElems_10
	xor edi, edi
	mov esi, fields+0x1c
GScr_AddFieldsForHudElems_20:
	mov ecx, edi
	sar ecx, 0x2
	lea eax, [ecx+ecx*8]
	mov edx, eax
	shl edx, 0x6
	add eax, edx
	lea eax, [ecx+eax*8]
	mov edx, eax
	shl edx, 0xf
	add eax, edx
	lea eax, [ecx+eax*8]
	neg eax
	movzx eax, ax
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov dword [esp], 0x1
	call Scr_AddClassField
	mov ebx, [esi]
	add edi, 0x1c
	add esi, 0x1c
	test ebx, ebx
	jnz GScr_AddFieldsForHudElems_20
GScr_AddFieldsForHudElems_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Scr_FreeHudElemConstStrings(game_hudelem_s*)
Scr_FreeHudElemConstStrings:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov ecx, [fields]
	test ecx, ecx
	jz Scr_FreeHudElemConstStrings_10
	mov ebx, fields+0x8
	jmp Scr_FreeHudElemConstStrings_20
Scr_FreeHudElemConstStrings_30:
	mov eax, [ebx+0x14]
	add ebx, 0x1c
	test eax, eax
	jz Scr_FreeHudElemConstStrings_10
Scr_FreeHudElemConstStrings_20:
	cmp dword [ebx], 0x3
	jnz Scr_FreeHudElemConstStrings_30
	mov dword [esp+0x4], 0x0
	mov eax, esi
	add eax, [ebx-0x4]
	mov [esp], eax
	call Scr_SetString
	mov eax, [ebx+0x14]
	add ebx, 0x1c
	test eax, eax
	jnz Scr_FreeHudElemConstStrings_20
Scr_FreeHudElemConstStrings_10:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;Initialized global or static variables of g_hudelem:
SECTION .data
g_he_vertalign: dd _cstring_subtop, _cstring_top, _cstring_middle, _cstring_bottom, _cstring_fullscreen, _cstring_noscale, _cstring_alignto480, _cstring_center_safearea
g_he_horzalign: dd _cstring_subleft, _cstring_left, _cstring_center, _cstring_right, _cstring_fullscreen, _cstring_noscale, _cstring_alignto640, _cstring_center_safearea
g_he_aligny: dd _cstring_top, _cstring_middle, _cstring_bottom
g_he_alignx: dd _cstring_left, _cstring_center, _cstring_right
g_he_font: dd _cstring_default, _cstring_bigfixed, _cstring_smallfixed, _cstring_objective, _cstring_big, _cstring_small, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of g_hudelem:
SECTION .rdata
methods: dd _cstring_settext, HECmd_SetText, 0x0, _cstring_clearalltextafte, HECmd_ClearAllTextAfterHudElem, 0x0, _cstring_setshader, HECmd_SetMaterial, 0x0, _cstring_settargetent, HECmd_SetTargetEnt, 0x0, _cstring_cleartargetent, HECmd_ClearTargetEnt, 0x0, _cstring_settimer1, HECmd_SetTimer, 0x0, _cstring_settimerup1, HECmd_SetTimerUp, 0x0, _cstring_settenthstimer1, HECmd_SetTenthsTimer, 0x0, _cstring_settenthstimerup1, HECmd_SetTenthsTimerUp, 0x0, _cstring_setclock1, HECmd_SetClock, 0x0, _cstring_setclockup1, HECmd_SetClockUp, 0x0, _cstring_setvalue, HECmd_SetValue, 0x0, _cstring_setwaypoint, HECmd_SetWaypoint, 0x0, _cstring_fadeovertime, HECmd_FadeOverTime, 0x0, _cstring_scaleovertime, HECmd_ScaleOverTime, 0x0, _cstring_moveovertime, HECmd_MoveOverTime, 0x0, _cstring_reset, HECmd_Reset, 0x0, _cstring_destroy, HECmd_Destroy, 0x0, _cstring_setpulsefx, HECmd_SetPulseFX, 0x0, _cstring_setplayernamestr, HECmd_SetPlayerNameString, 0x0, _cstring_setmapnamestring, HECmd_SetMapNameString, 0x0, _cstring_setgametypestrin, HECmd_SetGameTypeString, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
fields: dd _cstring_x, 0x4, 0x1, 0x0, 0x0, 0x0, 0x0, _cstring_y, 0x8, 0x1, 0x0, 0x0, 0x0, 0x0, _cstring_z, 0xc, 0x1, 0x0, 0x0, 0x0, 0x0, _cstring_fontscale, 0x14, 0x1, 0xffffffff, 0x0, HudElem_SetFontScale, 0x0, _cstring_font, 0x18, 0x0, 0xffffffff, 0x0, HudElem_SetFont, HudElem_GetFont, _cstring_alignx, 0x1c, 0x0, 0x3, 0x2, HudElem_SetAlignX, HudElem_GetAlignX, _cstring_aligny, 0x1c, 0x0, 0x3, 0x0, HudElem_SetAlignY, HudElem_GetAlignY, _cstring_horzalign, 0x20, 0x0, 0x7, 0x3, HudElem_SetHorzAlign, HudElem_GetHorzAlign, _cstring_vertalign, 0x20, 0x0, 0x7, 0x0, HudElem_SetVertAlign, HudElem_GetVertAlign, _cstring_color, 0x24, 0x0, 0xffffffff, 0x0, HudElem_SetColor, HudElem_GetColor, _cstring_alpha, 0x24, 0x0, 0xffffffff, 0x0, HudElem_SetAlpha, HudElem_GetAlpha, _cstring_label, 0x34, 0x0, 0xffffffff, 0x0, HudElem_SetLocalizedString, 0x0, _cstring_sort, 0x80, 0x1, 0x0, 0x0, 0x0, 0x0, _cstring_foreground, 0x9c, 0x0, 0xffffffff, 0x0, HudElem_SetFlagForeground, HudElem_GetFlagForeground, _cstring_hidewhendead, 0x9c, 0x0, 0xffffffff, 0x0, HudElem_SetFlagHideWhenDead, HudElem_GetFlagHideWhenDead, _cstring_hidewheninmenu, 0x9c, 0x0, 0xffffffff, 0x0, HudElem_SetFlagHideWhenInMenu, HudElem_GetFlagHideWhenInMenu, _cstring_glowcolor, 0x84, 0x0, 0xffffffff, 0x0, HudElem_SetGlowColor, HudElem_GetGlowColor, _cstring_glowalpha, 0x84, 0x0, 0xffffffff, 0x0, HudElem_SetGlowAlpha, HudElem_GetGlowAlpha, _cstring_archived, 0xa8, 0x0, 0xffffffff, 0x0, HudElem_SetBoolean, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Zero initialized global or static variables of g_hudelem:
SECTION .bss
g_hudelems: resb 0x2b000


;All cstrings:
SECTION .rdata
_cstring_not_a_hud_elemen:		db "not a hud element",0
_cstring_hud_elem_string:		db "Hud Elem String",0
_cstring_hud_elem_doesnt_:		db "Hud elem doesn",27h,"t reference any text.  Make sure to call setText before using clearAllTextAfterHudElem.",0
_cstring_null:		db 0
_cstring_usage_hudelem_se:		db "USAGE: <hudelem> setShader(",22h,"materialname",22h,"[, optional_width, optional_height]);",0
_cstring_height_i__0:		db "height %i < 0",0
_cstring_width_i__0:		db "width %i < 0",0
_cstring_settargetent_cal:		db "SetTargetEnt() called on a non-broadcasting entity, may not show in client snapshots.",0ah,0
_cstring_settimer:		db "setTimer",0
_cstring_settimerup:		db "setTimerUp",0
_cstring_settenthstimer:		db "setTenthsTimer",0
_cstring_settenthstimerup:		db "setTenthsTimerUp",0
_cstring_setclock:		db "setClock",0
_cstring_setclockup:		db "setClockUp",0
_cstring_fade_time_g__60:		db "fade time %g > 60",0
_cstring_fade_time_g__0:		db "fade time %g <= 0",0
_cstring_hudelem_scaleove:		db "hudelem scaleOverTime(time_in_seconds, new_width, new_height)",0
_cstring_scale_time_g__60:		db "scale time %g > 60",0
_cstring_scale_time_g__0:		db "scale time %g <= 0",0
_cstring_move_time_g__60:		db "move time %g > 60",0
_cstring_move_time_g__0:		db "move time %g <= 0",0
_cstring_usage_hudelem_se1:		db "USAGE: <hudelem> SetPulseFX( <speed>, <decayStart>, <decayDuration> );",0ah,0
_cstring_time_i_must_be_g:		db "Time (%i) must be greater than zero.",0
_cstring_invalid_entity_p:		db "Invalid entity passed to hudelem setplayernamestring()",0ah,0
_cstring_invalid_entity_p1:		db "Invalid entity passed to hudelem setplayernamestring(), entity is not a client",0ah,0
_cstring_invalid_map_name:		db "Invalid map name passed to hudelem setmapnamestring(), map not found",0ah,0
_cstring_invalid_mapname_:		db "Invalid mapname passed to hudelem setmapnamestring()",0ah,0
_cstring_invalid_entity_p2:		db "Invalid entity passed to hudelem setgametypestring()",0ah,0
_cstring_invalid_gametype:		db "Invalid gametype ",27h,"%s",27h,0ah,0
_cstring_font_scale_f_is_:		db "font scale %f is above the expected maximum %f",0
_cstring_font_scale_f_is_1:		db "font scale %f is below the expected minimum %f",0
_cstring_font_scale_was_g:		db "font scale was %g; should be > 0",0
_cstring_s_is_not_a_valid:		db 22h,"%s",22h," is not a valid value for hudelem field ",22h,"%s",22h,0ah,"Should be one of:",0
_cstring__s:		db " %s",0
_cstring_usage_hudelem_st:		db "USAGE: <hudelem> %s(time_in_seconds);",0ah,0
_cstring_time_g_should_be:		db "time %g should be > 0",0
_cstring_usage_hudelem_st1:		db "USAGE: <hudelem> %s(time_in_seconds, total_clock_time_in_seconds, shadername[, width, height]);",0ah,0
_cstring_duration_g_shoul:		db "duration %g should be > 0",0
_cstring_out_of_hudelems:		db "out of hudelems",0
_cstring_team_s_should_be:		db "team ",22h,"%s",22h," should be ",22h,"allies",22h,", ",22h,"axis",22h,", or ",22h,"spectator",22h,0
_cstring_not_a_client:		db "not a client",0
_cstring_subtop:		db "subtop",0
_cstring_top:		db "top",0
_cstring_middle:		db "middle",0
_cstring_bottom:		db "bottom",0
_cstring_fullscreen:		db "fullscreen",0
_cstring_noscale:		db "noscale",0
_cstring_alignto480:		db "alignto480",0
_cstring_center_safearea:		db "center_safearea",0
_cstring_subleft:		db "subleft",0
_cstring_left:		db "left",0
_cstring_center:		db "center",0
_cstring_right:		db "right",0
_cstring_alignto640:		db "alignto640",0
_cstring_default:		db "default",0
_cstring_bigfixed:		db "bigfixed",0
_cstring_smallfixed:		db "smallfixed",0
_cstring_objective:		db "objective",0
_cstring_big:		db "big",0
_cstring_small:		db "small",0
_cstring_settext:		db "settext",0
_cstring_clearalltextafte:		db "clearalltextafterhudelem",0
_cstring_setshader:		db "setshader",0
_cstring_settargetent:		db "settargetent",0
_cstring_cleartargetent:		db "cleartargetent",0
_cstring_settimer1:		db "settimer",0
_cstring_settimerup1:		db "settimerup",0
_cstring_settenthstimer1:		db "settenthstimer",0
_cstring_settenthstimerup1:		db "settenthstimerup",0
_cstring_setclock1:		db "setclock",0
_cstring_setclockup1:		db "setclockup",0
_cstring_setvalue:		db "setvalue",0
_cstring_setwaypoint:		db "setwaypoint",0
_cstring_fadeovertime:		db "fadeovertime",0
_cstring_scaleovertime:		db "scaleovertime",0
_cstring_moveovertime:		db "moveovertime",0
_cstring_reset:		db "reset",0
_cstring_destroy:		db "destroy",0
_cstring_setpulsefx:		db "setpulsefx",0
_cstring_setplayernamestr:		db "setplayernamestring",0
_cstring_setmapnamestring:		db "setmapnamestring",0
_cstring_setgametypestrin:		db "setgametypestring",0
_cstring_x:		db "x",0
_cstring_y:		db "y",0
_cstring_z:		db "z",0
_cstring_fontscale:		db "fontscale",0
_cstring_font:		db "font",0
_cstring_alignx:		db "alignx",0
_cstring_aligny:		db "aligny",0
_cstring_horzalign:		db "horzalign",0
_cstring_vertalign:		db "vertalign",0
_cstring_color:		db "color",0
_cstring_alpha:		db "alpha",0
_cstring_label:		db "label",0
_cstring_sort:		db "sort",0
_cstring_foreground:		db "foreground",0
_cstring_hidewhendead:		db "hidewhendead",0
_cstring_hidewheninmenu:		db "hidewheninmenu",0
_cstring_glowcolor:		db "glowcolor",0
_cstring_glowalpha:		db "glowalpha",0
_cstring_archived:		db "archived",0



;All constant floats and doubles:
SECTION .rdata
_float_0_00000000:		dd 0x0	; 0
_float_60_00000000:		dd 0x42700000	; 60
_float_1000_00000000:		dd 0x447a0000	; 1000
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_1_39999998:		dd 0x3fb33333	; 1.4
_float_4_59999990:		dd 0x40933333	; 4.6
_float_1_00000000:		dd 0x3f800000	; 1
_float__1_00000000:		dd 0xbf800000	; -1
_float_255_00000000:		dd 0x437f0000	; 255
_float_0_00392157:		dd 0x3b808081	; 0.00392157
_float_0_00100000:		dd 0x3a83126f	; 0.001

