;Imports of g_hudelem:
	extern _Z15Scr_ObjectErrorPKc
	extern _Z26Scr_ConstructMessageStringiiPKcPcj
	extern _Z22G_LocalizedStringIndexPKc
	extern _Z9Scr_ErrorPKc
	extern _Z18SV_SetConfigstringiPKc
	extern _Z15Scr_GetNumParamv
	extern _Z13Scr_GetStringj
	extern _Z15G_MaterialIndexPKc
	extern _Z10Scr_GetIntj
	extern _Z2vaPKcz
	extern _Z14Scr_ParamErrorjPKc
	extern _Z13Scr_GetEntityj
	extern _Z16Com_PrintWarningiPKcz
	extern _Z12Scr_GetFloatj
	extern level
	extern _Z16BG_LerpHudColorsPK9hudelem_siP15hudelem_color_t
	extern floorf
	extern _Z15Scr_FreeHudElemP14game_hudelem_s
	extern _Z10Com_PrintfiPKcz
	extern _Z12SV_MapExistsPKc
	extern _Z28Scr_GetGameTypeNameForScriptPKc
	extern _Z13Scr_AddStringPKc
	extern _Z13Scr_GetVectorjPf
	extern _Z13Scr_AddVectorPKf
	extern _Z12Scr_AddFloatf
	extern _Z14Scr_GetIStringj
	extern _Z11Scr_AddBooli
	extern _Z9I_stricmpPKcS0_
	extern sprintf
	extern strncat
	extern ceilf
	extern _Z14Scr_AddHudElemP14game_hudelem_s
	extern strcmp
	extern itemRegistered
	extern memset
	extern _Z18Scr_GetConstStringj
	extern scr_const
	extern _Z19Scr_GetGenericFieldPh11fieldtype_ti
	extern _Z19Scr_SetGenericFieldPh11fieldtype_ti
	extern memcpy
	extern _Z17Scr_AddClassFieldjPKcj
	extern _Z13Scr_SetStringPtj

;Exports of g_hudelem:
	global _Z13HECmd_SetText12scr_entref_t
	global _Z30HECmd_ClearAllTextAfterHudElem12scr_entref_t
	global _Z17HECmd_SetMaterial12scr_entref_t
	global _Z18HECmd_SetTargetEnt12scr_entref_t
	global _Z20HECmd_ClearTargetEnt12scr_entref_t
	global _Z14HECmd_SetTimer12scr_entref_t
	global _Z16HECmd_SetTimerUp12scr_entref_t
	global _Z20HECmd_SetTenthsTimer12scr_entref_t
	global _Z22HECmd_SetTenthsTimerUp12scr_entref_t
	global _Z14HECmd_SetClock12scr_entref_t
	global _Z16HECmd_SetClockUp12scr_entref_t
	global _Z14HECmd_SetValue12scr_entref_t
	global _Z17HECmd_SetWaypoint12scr_entref_t
	global _Z18HECmd_FadeOverTime12scr_entref_t
	global _Z19HECmd_ScaleOverTime12scr_entref_t
	global _Z18HECmd_MoveOverTime12scr_entref_t
	global _Z11HECmd_Reset12scr_entref_t
	global _Z13HECmd_Destroy12scr_entref_t
	global _Z16HECmd_SetPulseFX12scr_entref_t
	global _Z25HECmd_SetPlayerNameString12scr_entref_t
	global _Z22HECmd_SetMapNameString12scr_entref_t
	global _Z23HECmd_SetGameTypeString12scr_entref_t
	global _Z20HudElem_SetFontScaleP14game_hudelem_si
	global _Z15HudElem_SetFontP14game_hudelem_si
	global _Z15HudElem_GetFontP14game_hudelem_si
	global _Z17HudElem_SetAlignXP14game_hudelem_si
	global _Z17HudElem_GetAlignXP14game_hudelem_si
	global _Z17HudElem_SetAlignYP14game_hudelem_si
	global _Z17HudElem_GetAlignYP14game_hudelem_si
	global _Z20HudElem_SetHorzAlignP14game_hudelem_si
	global _Z20HudElem_GetHorzAlignP14game_hudelem_si
	global _Z20HudElem_SetVertAlignP14game_hudelem_si
	global _Z20HudElem_GetVertAlignP14game_hudelem_si
	global _Z16HudElem_SetColorP14game_hudelem_si
	global _Z16HudElem_GetColorP14game_hudelem_si
	global _Z16HudElem_SetAlphaP14game_hudelem_si
	global _Z16HudElem_GetAlphaP14game_hudelem_si
	global _Z26HudElem_SetLocalizedStringP14game_hudelem_si
	global _Z25HudElem_SetFlagForegroundP14game_hudelem_si
	global _Z25HudElem_GetFlagForegroundP14game_hudelem_si
	global _Z27HudElem_SetFlagHideWhenDeadP14game_hudelem_si
	global _Z27HudElem_GetFlagHideWhenDeadP14game_hudelem_si
	global _Z29HudElem_SetFlagHideWhenInMenuP14game_hudelem_si
	global _Z29HudElem_GetFlagHideWhenInMenuP14game_hudelem_si
	global _Z20HudElem_SetGlowColorP14game_hudelem_si
	global _Z20HudElem_GetGlowColorP14game_hudelem_si
	global _Z20HudElem_SetGlowAlphaP14game_hudelem_si
	global _Z20HudElem_GetGlowAlphaP14game_hudelem_si
	global _Z18HudElem_SetBooleanP14game_hudelem_si
	global g_he_vertalign
	global g_he_horzalign
	global g_he_aligny
	global g_he_alignx
	global g_he_font
	global _Z21HudElem_SetEnumStringP14game_hudelem_sPK20game_hudelem_field_tPPKci
	global _Z23HECmd_SetTimer_Internal12scr_entref_t9he_type_tPKc
	global _Z23HECmd_SetClock_Internal12scr_entref_t9he_type_tPKc
	global _Z15GScr_NewHudElemv
	global _Z17HudElem_GetMethodPPKc
	global _Z18HudElem_DestroyAllv
	global _Z19GScr_NewTeamHudElemv
	global _Z19Scr_GetHudElemFieldii
	global _Z19Scr_SetHudElemFieldii
	global _Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t
	global _Z21GScr_NewClientHudElemv
	global _Z24HudElem_ClientDisconnectP9gentity_s
	global _Z25GScr_AddFieldsForHudElemsv
	global _Z27Scr_FreeHudElemConstStringsP14game_hudelem_s
	global g_hudelems


SECTION .text


;HECmd_SetText(scr_entref_t)
_Z13HECmd_SetText12scr_entref_t:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x420
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	sub ax, 0x1
	jz _Z13HECmd_SetText12scr_entref_t_10
	mov dword [esp], _cstring_not_a_hud_elemen
	call _Z15Scr_ObjectErrorPKc
	xor esi, esi
_Z13HECmd_SetText12scr_entref_t_20:
	mov dword [esi+0x38], 0x0
	mov dword [esi+0x3c], 0x0
	mov dword [esi+0x40], 0x0
	xor eax, eax
	mov [esi+0x58], eax
	mov [esi+0x5c], eax
	mov dword [esi+0x60], 0x0
	mov dword [esi+0x64], 0x0
	mov dword [esi+0x48], 0x0
	mov dword [esi+0x4c], 0x0
	mov dword [esi+0x50], 0x0
	mov dword [esi+0x54], 0x0
	mov dword [esi+0x70], 0x0
	mov dword [esi+0x74], 0x0
	mov [esi+0x78], eax
	mov dword [esi+0x7c], 0x0
	mov dword [esp+0x10], 0x400
	lea ebx, [ebp-0x408]
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_hud_elem_string
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	call _Z26Scr_ConstructMessageStringiiPKcPcj
	mov dword [esi], 0x1
	mov [esp], ebx
	call _Z22G_LocalizedStringIndexPKc
	mov [esi+0x7c], eax
	add esp, 0x420
	pop ebx
	pop esi
	pop ebp
	ret
_Z13HECmd_SetText12scr_entref_t_10:
	movzx edx, dx
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*2]
	lea esi, [eax*4+g_hudelems]
	jmp _Z13HECmd_SetText12scr_entref_t_20
	nop


;HECmd_ClearAllTextAfterHudElem(scr_entref_t)
_Z30HECmd_ClearAllTextAfterHudElem12scr_entref_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	sub ax, 0x1
	jz _Z30HECmd_ClearAllTextAfterHudElem12scr_entref_t_10
	mov dword [esp], _cstring_not_a_hud_elemen
	call _Z15Scr_ObjectErrorPKc
	xor ebx, ebx
	mov eax, [ebx+0x7c]
	test eax, eax
	jz _Z30HECmd_ClearAllTextAfterHudElem12scr_entref_t_20
_Z30HECmd_ClearAllTextAfterHudElem12scr_entref_t_40:
	mov edx, [ebx+0x7c]
	lea eax, [edx+0x1]
	cmp eax, 0x1ff
	jle _Z30HECmd_ClearAllTextAfterHudElem12scr_entref_t_30
_Z30HECmd_ClearAllTextAfterHudElem12scr_entref_t_50:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z30HECmd_ClearAllTextAfterHudElem12scr_entref_t_10:
	movzx edx, dx
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*2]
	lea ebx, [eax*4+g_hudelems]
	mov eax, [ebx+0x7c]
	test eax, eax
	jnz _Z30HECmd_ClearAllTextAfterHudElem12scr_entref_t_40
_Z30HECmd_ClearAllTextAfterHudElem12scr_entref_t_20:
	mov dword [esp], _cstring_hud_elem_doesnt_
	call _Z9Scr_ErrorPKc
	mov edx, [ebx+0x7c]
	lea eax, [edx+0x1]
	cmp eax, 0x1ff
	jg _Z30HECmd_ClearAllTextAfterHudElem12scr_entref_t_50
_Z30HECmd_ClearAllTextAfterHudElem12scr_entref_t_30:
	lea ebx, [edx+0x136]
_Z30HECmd_ClearAllTextAfterHudElem12scr_entref_t_60:
	mov dword [esp+0x4], _cstring_null
	mov [esp], ebx
	call _Z18SV_SetConfigstringiPKc
	add ebx, 0x1
	cmp ebx, 0x335
	jnz _Z30HECmd_ClearAllTextAfterHudElem12scr_entref_t_60
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;HECmd_SetMaterial(scr_entref_t)
_Z17HECmd_SetMaterial12scr_entref_t:
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
	jz _Z17HECmd_SetMaterial12scr_entref_t_10
	mov dword [esp], _cstring_not_a_hud_elemen
	call _Z15Scr_ObjectErrorPKc
	xor ebx, ebx
_Z17HECmd_SetMaterial12scr_entref_t_60:
	call _Z15Scr_GetNumParamv
	mov esi, eax
	cmp eax, 0x1
	jz _Z17HECmd_SetMaterial12scr_entref_t_20
	cmp eax, 0x3
	jz _Z17HECmd_SetMaterial12scr_entref_t_20
	mov dword [esp], _cstring_usage_hudelem_se
	call _Z9Scr_ErrorPKc
_Z17HECmd_SetMaterial12scr_entref_t_20:
	mov dword [esp], 0x0
	call _Z13Scr_GetStringj
	mov [esp], eax
	call _Z15G_MaterialIndexPKc
	mov [ebp-0x1c], eax
	cmp esi, 0x1
	jz _Z17HECmd_SetMaterial12scr_entref_t_30
	mov dword [esp], 0x1
	call _Z10Scr_GetIntj
	mov edi, eax
	test eax, eax
	js _Z17HECmd_SetMaterial12scr_entref_t_40
_Z17HECmd_SetMaterial12scr_entref_t_80:
	mov dword [esp], 0x2
	call _Z10Scr_GetIntj
	mov esi, eax
	test eax, eax
	js _Z17HECmd_SetMaterial12scr_entref_t_50
_Z17HECmd_SetMaterial12scr_entref_t_70:
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
_Z17HECmd_SetMaterial12scr_entref_t_10:
	movzx edx, dx
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*2]
	lea ebx, [eax*4+g_hudelems]
	jmp _Z17HECmd_SetMaterial12scr_entref_t_60
_Z17HECmd_SetMaterial12scr_entref_t_30:
	xor edi, edi
	xor si, si
	jmp _Z17HECmd_SetMaterial12scr_entref_t_70
_Z17HECmd_SetMaterial12scr_entref_t_50:
	mov [esp+0x4], eax
	mov dword [esp], _cstring_height_i__0
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call _Z14Scr_ParamErrorjPKc
	jmp _Z17HECmd_SetMaterial12scr_entref_t_70
_Z17HECmd_SetMaterial12scr_entref_t_40:
	mov [esp+0x4], eax
	mov dword [esp], _cstring_width_i__0
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call _Z14Scr_ParamErrorjPKc
	jmp _Z17HECmd_SetMaterial12scr_entref_t_80


;HECmd_SetTargetEnt(scr_entref_t)
_Z18HECmd_SetTargetEnt12scr_entref_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	sub ax, 0x1
	jz _Z18HECmd_SetTargetEnt12scr_entref_t_10
	mov dword [esp], _cstring_not_a_hud_elemen
	call _Z15Scr_ObjectErrorPKc
	xor ebx, ebx
_Z18HECmd_SetTargetEnt12scr_entref_t_30:
	mov dword [esp], 0x0
	call _Z13Scr_GetEntityj
	mov edx, [eax]
	mov [ebx+0x10], edx
	test byte [eax+0xf6], 0x10
	jnz _Z18HECmd_SetTargetEnt12scr_entref_t_20
	mov dword [esp+0x4], _cstring_settargetent_cal
	mov dword [esp], 0xf
	call _Z16Com_PrintWarningiPKcz
_Z18HECmd_SetTargetEnt12scr_entref_t_20:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z18HECmd_SetTargetEnt12scr_entref_t_10:
	movzx edx, dx
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*2]
	lea ebx, [eax*4+g_hudelems]
	jmp _Z18HECmd_SetTargetEnt12scr_entref_t_30


;HECmd_ClearTargetEnt(scr_entref_t)
_Z20HECmd_ClearTargetEnt12scr_entref_t:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	sub ax, 0x1
	jz _Z20HECmd_ClearTargetEnt12scr_entref_t_10
	mov dword [esp], _cstring_not_a_hud_elemen
	call _Z15Scr_ObjectErrorPKc
	xor eax, eax
	mov dword [eax+0x10], 0x3ff
	leave
	ret
_Z20HECmd_ClearTargetEnt12scr_entref_t_10:
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
_Z14HECmd_SetTimer12scr_entref_t:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov ecx, _cstring_settimer
	mov edx, 0x7
	pop ebp
	jmp _Z23HECmd_SetTimer_Internal12scr_entref_t9he_type_tPKc


;HECmd_SetTimerUp(scr_entref_t)
_Z16HECmd_SetTimerUp12scr_entref_t:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov ecx, _cstring_settimerup
	mov edx, 0x8
	pop ebp
	jmp _Z23HECmd_SetTimer_Internal12scr_entref_t9he_type_tPKc


;HECmd_SetTenthsTimer(scr_entref_t)
_Z20HECmd_SetTenthsTimer12scr_entref_t:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov ecx, _cstring_settenthstimer
	mov edx, 0x9
	pop ebp
	jmp _Z23HECmd_SetTimer_Internal12scr_entref_t9he_type_tPKc


;HECmd_SetTenthsTimerUp(scr_entref_t)
_Z22HECmd_SetTenthsTimerUp12scr_entref_t:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov ecx, _cstring_settenthstimerup
	mov edx, 0xa
	pop ebp
	jmp _Z23HECmd_SetTimer_Internal12scr_entref_t9he_type_tPKc


;HECmd_SetClock(scr_entref_t)
_Z14HECmd_SetClock12scr_entref_t:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov ecx, _cstring_setclock
	mov edx, 0xb
	pop ebp
	jmp _Z23HECmd_SetClock_Internal12scr_entref_t9he_type_tPKc


;HECmd_SetClockUp(scr_entref_t)
_Z16HECmd_SetClockUp12scr_entref_t:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov ecx, _cstring_setclockup
	mov edx, 0xc
	pop ebp
	jmp _Z23HECmd_SetClock_Internal12scr_entref_t9he_type_tPKc


;HECmd_SetValue(scr_entref_t)
_Z14HECmd_SetValue12scr_entref_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	sub ax, 0x1
	jz _Z14HECmd_SetValue12scr_entref_t_10
	mov dword [esp], _cstring_not_a_hud_elemen
	call _Z15Scr_ObjectErrorPKc
	xor ebx, ebx
_Z14HECmd_SetValue12scr_entref_t_20:
	mov dword [esp], 0x0
	call _Z12Scr_GetFloatj
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
_Z14HECmd_SetValue12scr_entref_t_10:
	movzx edx, dx
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*2]
	lea ebx, [eax*4+g_hudelems]
	jmp _Z14HECmd_SetValue12scr_entref_t_20


;HECmd_SetWaypoint(scr_entref_t)
_Z17HECmd_SetWaypoint12scr_entref_t:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	sub ax, 0x1
	jz _Z17HECmd_SetWaypoint12scr_entref_t_10
	mov dword [esp], _cstring_not_a_hud_elemen
	call _Z15Scr_ObjectErrorPKc
	xor esi, esi
_Z17HECmd_SetWaypoint12scr_entref_t_30:
	call _Z15Scr_GetNumParamv
	mov ebx, eax
	mov dword [esp], 0x0
	call _Z10Scr_GetIntj
	mov dword [esi], 0xd
	cvtsi2ss xmm0, eax
	movss [esi+0x78], xmm0
	sub ebx, 0x1
	jz _Z17HECmd_SetWaypoint12scr_entref_t_20
	mov dword [esp], 0x1
	call _Z13Scr_GetStringj
	mov [esp], eax
	call _Z15G_MaterialIndexPKc
	mov [esi+0x44], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z17HECmd_SetWaypoint12scr_entref_t_10:
	movzx edx, dx
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*2]
	lea esi, [eax*4+g_hudelems]
	jmp _Z17HECmd_SetWaypoint12scr_entref_t_30
_Z17HECmd_SetWaypoint12scr_entref_t_20:
	mov dword [esi+0x44], 0x0
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;HECmd_FadeOverTime(scr_entref_t)
_Z18HECmd_FadeOverTime12scr_entref_t:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	sub ax, 0x1
	jz _Z18HECmd_FadeOverTime12scr_entref_t_10
	mov dword [esp], _cstring_not_a_hud_elemen
	call _Z15Scr_ObjectErrorPKc
	xor esi, esi
	mov dword [esp], 0x0
	call _Z12Scr_GetFloatj
	fstp dword [ebp-0xc]
	movss xmm0, dword [ebp-0xc]
	ucomiss xmm0, [_float_0_00000000]
	jbe _Z18HECmd_FadeOverTime12scr_entref_t_20
_Z18HECmd_FadeOverTime12scr_entref_t_50:
	ucomiss xmm0, [_float_60_00000000]
	ja _Z18HECmd_FadeOverTime12scr_entref_t_30
_Z18HECmd_FadeOverTime12scr_entref_t_40:
	lea eax, [esi+0x28]
	mov [esp+0x8], eax
	mov ebx, level
	mov eax, [ebx+0x1ec]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z16BG_LerpHudColorsPK9hudelem_siP15hudelem_color_t
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
_Z18HECmd_FadeOverTime12scr_entref_t_30:
	cvtss2sd xmm0, xmm0
	movsd [esp+0x4], xmm0
	mov dword [esp], _cstring_fade_time_g__60
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z14Scr_ParamErrorjPKc
	jmp _Z18HECmd_FadeOverTime12scr_entref_t_40
_Z18HECmd_FadeOverTime12scr_entref_t_10:
	movzx edx, dx
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*2]
	lea esi, [eax*4+g_hudelems]
	mov dword [esp], 0x0
	call _Z12Scr_GetFloatj
	fstp dword [ebp-0xc]
	movss xmm0, dword [ebp-0xc]
	ucomiss xmm0, [_float_0_00000000]
	ja _Z18HECmd_FadeOverTime12scr_entref_t_50
_Z18HECmd_FadeOverTime12scr_entref_t_20:
	jp _Z18HECmd_FadeOverTime12scr_entref_t_50
	cvtss2sd xmm0, xmm0
	movsd [esp+0x4], xmm0
	mov dword [esp], _cstring_fade_time_g__0
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z14Scr_ParamErrorjPKc
	jmp _Z18HECmd_FadeOverTime12scr_entref_t_40


;HECmd_ScaleOverTime(scr_entref_t)
_Z19HECmd_ScaleOverTime12scr_entref_t:
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
	jz _Z19HECmd_ScaleOverTime12scr_entref_t_10
	mov dword [esp], _cstring_not_a_hud_elemen
	call _Z15Scr_ObjectErrorPKc
	xor edi, edi
_Z19HECmd_ScaleOverTime12scr_entref_t_60:
	call _Z15Scr_GetNumParamv
	cmp eax, 0x3
	jz _Z19HECmd_ScaleOverTime12scr_entref_t_20
	mov dword [esp], _cstring_hudelem_scaleove
	call _Z9Scr_ErrorPKc
_Z19HECmd_ScaleOverTime12scr_entref_t_20:
	mov dword [esp], 0x0
	call _Z12Scr_GetFloatj
	fstp dword [ebp-0x1c]
	movss xmm0, dword [ebp-0x1c]
	ucomiss xmm0, [_float_0_00000000]
	jbe _Z19HECmd_ScaleOverTime12scr_entref_t_30
_Z19HECmd_ScaleOverTime12scr_entref_t_70:
	ucomiss xmm0, [_float_60_00000000]
	ja _Z19HECmd_ScaleOverTime12scr_entref_t_40
_Z19HECmd_ScaleOverTime12scr_entref_t_50:
	mov dword [esp], 0x1
	call _Z10Scr_GetIntj
	mov esi, eax
	mov dword [esp], 0x2
	call _Z10Scr_GetIntj
	mov ebx, eax
	mov eax, level
	mov eax, [eax+0x1ec]
	mov [edi+0x50], eax
	movss xmm0, dword [ebp-0x1c]
	mulss xmm0, [_float_1000_00000000]
	movss [ebp-0x1c], xmm0
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x20]
	cvttss2si eax, [ebp-0x20]
	mov [edi+0x54], eax
	mov eax, [edi+0x38]
	mov [edi+0x48], eax
	mov eax, [edi+0x3c]
	mov [edi+0x4c], eax
	mov [edi+0x38], esi
	mov [edi+0x3c], ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19HECmd_ScaleOverTime12scr_entref_t_40:
	cvtss2sd xmm0, xmm0
	movsd [esp+0x4], xmm0
	mov dword [esp], _cstring_scale_time_g__60
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z14Scr_ParamErrorjPKc
	jmp _Z19HECmd_ScaleOverTime12scr_entref_t_50
_Z19HECmd_ScaleOverTime12scr_entref_t_10:
	movzx edx, dx
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*2]
	lea edi, [eax*4+g_hudelems]
	jmp _Z19HECmd_ScaleOverTime12scr_entref_t_60
_Z19HECmd_ScaleOverTime12scr_entref_t_30:
	jp _Z19HECmd_ScaleOverTime12scr_entref_t_70
	cvtss2sd xmm0, xmm0
	movsd [esp+0x4], xmm0
	mov dword [esp], _cstring_scale_time_g__0
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z14Scr_ParamErrorjPKc
	jmp _Z19HECmd_ScaleOverTime12scr_entref_t_50


;HECmd_MoveOverTime(scr_entref_t)
_Z18HECmd_MoveOverTime12scr_entref_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	sub ax, 0x1
	jz _Z18HECmd_MoveOverTime12scr_entref_t_10
	mov dword [esp], _cstring_not_a_hud_elemen
	call _Z15Scr_ObjectErrorPKc
	xor ebx, ebx
	mov dword [esp], 0x0
	call _Z12Scr_GetFloatj
	fstp dword [ebp-0xc]
	movss xmm0, dword [ebp-0xc]
	ucomiss xmm0, [_float_0_00000000]
	jbe _Z18HECmd_MoveOverTime12scr_entref_t_20
_Z18HECmd_MoveOverTime12scr_entref_t_50:
	ucomiss xmm0, [_float_60_00000000]
	ja _Z18HECmd_MoveOverTime12scr_entref_t_30
_Z18HECmd_MoveOverTime12scr_entref_t_40:
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
_Z18HECmd_MoveOverTime12scr_entref_t_30:
	cvtss2sd xmm0, xmm0
	movsd [esp+0x4], xmm0
	mov dword [esp], _cstring_move_time_g__60
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z14Scr_ParamErrorjPKc
	jmp _Z18HECmd_MoveOverTime12scr_entref_t_40
_Z18HECmd_MoveOverTime12scr_entref_t_10:
	movzx edx, dx
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*2]
	lea ebx, [eax*4+g_hudelems]
	mov dword [esp], 0x0
	call _Z12Scr_GetFloatj
	fstp dword [ebp-0xc]
	movss xmm0, dword [ebp-0xc]
	ucomiss xmm0, [_float_0_00000000]
	ja _Z18HECmd_MoveOverTime12scr_entref_t_50
_Z18HECmd_MoveOverTime12scr_entref_t_20:
	jp _Z18HECmd_MoveOverTime12scr_entref_t_50
	cvtss2sd xmm0, xmm0
	movsd [esp+0x4], xmm0
	mov dword [esp], _cstring_move_time_g__0
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z14Scr_ParamErrorjPKc
	jmp _Z18HECmd_MoveOverTime12scr_entref_t_40


;HECmd_Reset(scr_entref_t)
_Z11HECmd_Reset12scr_entref_t:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	sub ax, 0x1
	jz _Z11HECmd_Reset12scr_entref_t_10
	mov dword [esp], _cstring_not_a_hud_elemen
	call _Z15Scr_ObjectErrorPKc
	xor edx, edx
_Z11HECmd_Reset12scr_entref_t_20:
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
_Z11HECmd_Reset12scr_entref_t_10:
	movzx edx, dx
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*2]
	lea edx, [eax*4+g_hudelems]
	jmp _Z11HECmd_Reset12scr_entref_t_20


;HECmd_Destroy(scr_entref_t)
_Z13HECmd_Destroy12scr_entref_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	sub ax, 0x1
	jz _Z13HECmd_Destroy12scr_entref_t_10
	mov dword [esp], _cstring_not_a_hud_elemen
	call _Z15Scr_ObjectErrorPKc
	xor ebx, ebx
	mov [esp], ebx
	call _Z15Scr_FreeHudElemP14game_hudelem_s
	mov dword [ebx], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z13HECmd_Destroy12scr_entref_t_10:
	movzx edx, dx
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*2]
	lea ebx, [eax*4+g_hudelems]
	mov [esp], ebx
	call _Z15Scr_FreeHudElemP14game_hudelem_s
	mov dword [ebx], 0x0
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;HECmd_SetPulseFX(scr_entref_t)
_Z16HECmd_SetPulseFX12scr_entref_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [ebp+0x8]
	call _Z15Scr_GetNumParamv
	cmp eax, 0x3
	jz _Z16HECmd_SetPulseFX12scr_entref_t_10
	mov dword [esp], _cstring_usage_hudelem_se1
	call _Z9Scr_ErrorPKc
_Z16HECmd_SetPulseFX12scr_entref_t_10:
	mov eax, ebx
	shr ebx, 0x10
	sub bx, 0x1
	jz _Z16HECmd_SetPulseFX12scr_entref_t_20
	mov dword [esp], _cstring_not_a_hud_elemen
	call _Z15Scr_ObjectErrorPKc
	xor esi, esi
	mov edi, level
	mov eax, [edi+0x1ec]
	mov [esi+0x88], eax
	mov dword [esp], 0x0
	call _Z10Scr_GetIntj
	mov ebx, eax
	test eax, eax
	js _Z16HECmd_SetPulseFX12scr_entref_t_30
_Z16HECmd_SetPulseFX12scr_entref_t_70:
	mov [esi+0x8c], ebx
	mov dword [esp], 0x1
	call _Z10Scr_GetIntj
	mov ebx, eax
	test eax, eax
	js _Z16HECmd_SetPulseFX12scr_entref_t_40
_Z16HECmd_SetPulseFX12scr_entref_t_80:
	mov [esi+0x90], ebx
	mov dword [esp], 0x2
	call _Z10Scr_GetIntj
	mov ebx, eax
	test eax, eax
	js _Z16HECmd_SetPulseFX12scr_entref_t_50
_Z16HECmd_SetPulseFX12scr_entref_t_90:
	mov [esi+0x94], ebx
	mov ecx, [esi+0xa0]
	lea eax, [ecx+ecx*2]
	mov edx, eax
	shl edx, 0x6
	add eax, edx
	mov edx, eax
	shl edx, 0x6
	add eax, edx
	lea ecx, [eax+ecx]
	add ecx, [edi]
	mov eax, [ecx+0x658]
	add eax, 0x1
	mov [ecx+0x658], eax
	mov edx, eax
	and edx, 0x8000001f
	js _Z16HECmd_SetPulseFX12scr_entref_t_60
	mov eax, 0x1
	test edx, edx
	cmovnz eax, edx
	mov [ecx+0x658], eax
	mov [esi+0x98], eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16HECmd_SetPulseFX12scr_entref_t_20:
	movzx edx, ax
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*2]
	lea esi, [eax*4+g_hudelems]
	mov edi, level
	mov eax, [edi+0x1ec]
	mov [esi+0x88], eax
	mov dword [esp], 0x0
	call _Z10Scr_GetIntj
	mov ebx, eax
	test eax, eax
	jns _Z16HECmd_SetPulseFX12scr_entref_t_70
_Z16HECmd_SetPulseFX12scr_entref_t_30:
	mov [esp+0x4], eax
	mov dword [esp], _cstring_time_i_must_be_g
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z14Scr_ParamErrorjPKc
	mov [esi+0x8c], ebx
	mov dword [esp], 0x1
	call _Z10Scr_GetIntj
	mov ebx, eax
	test eax, eax
	jns _Z16HECmd_SetPulseFX12scr_entref_t_80
_Z16HECmd_SetPulseFX12scr_entref_t_40:
	mov [esp+0x4], eax
	mov dword [esp], _cstring_time_i_must_be_g
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call _Z14Scr_ParamErrorjPKc
	mov [esi+0x90], ebx
	mov dword [esp], 0x2
	call _Z10Scr_GetIntj
	mov ebx, eax
	test eax, eax
	jns _Z16HECmd_SetPulseFX12scr_entref_t_90
_Z16HECmd_SetPulseFX12scr_entref_t_50:
	mov [esp+0x4], eax
	mov dword [esp], _cstring_time_i_must_be_g
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov dword [esp], 0x2
	call _Z14Scr_ParamErrorjPKc
	jmp _Z16HECmd_SetPulseFX12scr_entref_t_90
_Z16HECmd_SetPulseFX12scr_entref_t_60:
	sub edx, 0x1
	or edx, 0xffffffe0
	add edx, 0x1
	mov eax, 0x1
	test edx, edx
	cmovnz eax, edx
	mov [ecx+0x658], eax
	mov [esi+0x98], eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;HECmd_SetPlayerNameString(scr_entref_t)
_Z25HECmd_SetPlayerNameString12scr_entref_t:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	sub ax, 0x1
	jz _Z25HECmd_SetPlayerNameString12scr_entref_t_10
	mov dword [esp], _cstring_not_a_hud_elemen
	call _Z15Scr_ObjectErrorPKc
	xor ebx, ebx
_Z25HECmd_SetPlayerNameString12scr_entref_t_40:
	mov dword [esp], 0x0
	call _Z13Scr_GetEntityj
	mov edx, eax
	test eax, eax
	jz _Z25HECmd_SetPlayerNameString12scr_entref_t_20
	mov ecx, [eax+0x15c]
	test ecx, ecx
	jz _Z25HECmd_SetPlayerNameString12scr_entref_t_30
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
_Z25HECmd_SetPlayerNameString12scr_entref_t_50:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z25HECmd_SetPlayerNameString12scr_entref_t_10:
	movzx edx, dx
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*2]
	lea ebx, [eax*4+g_hudelems]
	jmp _Z25HECmd_SetPlayerNameString12scr_entref_t_40
_Z25HECmd_SetPlayerNameString12scr_entref_t_20:
	mov dword [esp+0x4], _cstring_invalid_entity_p
	mov dword [esp], 0x17
	call _Z10Com_PrintfiPKcz
	jmp _Z25HECmd_SetPlayerNameString12scr_entref_t_50
_Z25HECmd_SetPlayerNameString12scr_entref_t_30:
	mov dword [esp+0x4], _cstring_invalid_entity_p1
	mov dword [esp], 0x17
	call _Z10Com_PrintfiPKcz
	jmp _Z25HECmd_SetPlayerNameString12scr_entref_t_50
	nop


;HECmd_SetMapNameString(scr_entref_t)
_Z22HECmd_SetMapNameString12scr_entref_t:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	sub ax, 0x1
	jz _Z22HECmd_SetMapNameString12scr_entref_t_10
	mov dword [esp], _cstring_not_a_hud_elemen
	call _Z15Scr_ObjectErrorPKc
	xor ebx, ebx
	mov dword [esp], 0x0
	call _Z13Scr_GetStringj
	mov esi, eax
	test eax, eax
	jz _Z22HECmd_SetMapNameString12scr_entref_t_20
_Z22HECmd_SetMapNameString12scr_entref_t_40:
	mov [esp], eax
	call _Z12SV_MapExistsPKc
	test eax, eax
	jnz _Z22HECmd_SetMapNameString12scr_entref_t_30
	mov dword [esp+0x4], _cstring_invalid_map_name
	mov dword [esp], 0x17
	call _Z10Com_PrintfiPKcz
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z22HECmd_SetMapNameString12scr_entref_t_30:
	mov [esp+0x4], esi
	mov dword [esp], 0x11
	call _Z18SV_SetConfigstringiPKc
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
_Z22HECmd_SetMapNameString12scr_entref_t_10:
	movzx edx, dx
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*2]
	lea ebx, [eax*4+g_hudelems]
	mov dword [esp], 0x0
	call _Z13Scr_GetStringj
	mov esi, eax
	test eax, eax
	jnz _Z22HECmd_SetMapNameString12scr_entref_t_40
_Z22HECmd_SetMapNameString12scr_entref_t_20:
	mov dword [esp+0x4], _cstring_invalid_mapname_
	mov dword [esp], 0x17
	call _Z10Com_PrintfiPKcz
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;HECmd_SetGameTypeString(scr_entref_t)
_Z23HECmd_SetGameTypeString12scr_entref_t:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov eax, [ebp+0x8]
	mov edx, eax
	shr eax, 0x10
	sub ax, 0x1
	jz _Z23HECmd_SetGameTypeString12scr_entref_t_10
	mov dword [esp], _cstring_not_a_hud_elemen
	call _Z15Scr_ObjectErrorPKc
	xor ebx, ebx
	mov dword [esp], 0x0
	call _Z13Scr_GetStringj
	mov esi, eax
	test eax, eax
	jz _Z23HECmd_SetGameTypeString12scr_entref_t_20
_Z23HECmd_SetGameTypeString12scr_entref_t_40:
	mov [esp], eax
	call _Z28Scr_GetGameTypeNameForScriptPKc
	test eax, eax
	jz _Z23HECmd_SetGameTypeString12scr_entref_t_30
	mov [esp+0x4], esi
	mov dword [esp], 0x12
	call _Z18SV_SetConfigstringiPKc
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
_Z23HECmd_SetGameTypeString12scr_entref_t_10:
	movzx edx, dx
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*2]
	lea ebx, [eax*4+g_hudelems]
	mov dword [esp], 0x0
	call _Z13Scr_GetStringj
	mov esi, eax
	test eax, eax
	jnz _Z23HECmd_SetGameTypeString12scr_entref_t_40
_Z23HECmd_SetGameTypeString12scr_entref_t_20:
	mov dword [esp+0x4], _cstring_invalid_entity_p2
	mov dword [esp], 0x17
	call _Z10Com_PrintfiPKcz
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z23HECmd_SetGameTypeString12scr_entref_t_30:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_invalid_gametype
	mov dword [esp], 0x17
	call _Z10Com_PrintfiPKcz
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;HudElem_SetFontScale(game_hudelem_s*, int)
_Z20HudElem_SetFontScaleP14game_hudelem_si:
	push ebp
	mov ebp, esp
	sub esp, 0x38
	mov dword [esp], 0x0
	call _Z12Scr_GetFloatj
	fstp dword [ebp-0xc]
	movss xmm0, dword [ebp-0xc]
	ucomiss xmm0, [_float_0_00000000]
	jbe _Z20HudElem_SetFontScaleP14game_hudelem_si_10
_Z20HudElem_SetFontScaleP14game_hudelem_si_50:
	ucomiss xmm0, [_float_1_39999998]
	jb _Z20HudElem_SetFontScaleP14game_hudelem_si_20
_Z20HudElem_SetFontScaleP14game_hudelem_si_40:
	ucomiss xmm0, [_float_4_59999990]
	ja _Z20HudElem_SetFontScaleP14game_hudelem_si_30
	mov eax, [ebp+0x8]
	movss [eax+0x14], xmm0
	leave
	ret
_Z20HudElem_SetFontScaleP14game_hudelem_si_30:
	mov dword [esp+0xc], 0x60000000
	mov dword [esp+0x10], 0x40126666
	cvtss2sd xmm0, xmm0
	movsd [esp+0x4], xmm0
	mov dword [esp], _cstring_font_scale_f_is_
	call _Z2vaPKcz
	mov [esp], eax
	call _Z9Scr_ErrorPKc
	movss xmm0, dword [ebp-0xc]
	mov eax, [ebp+0x8]
	movss [eax+0x14], xmm0
	leave
	ret
_Z20HudElem_SetFontScaleP14game_hudelem_si_20:
	jp _Z20HudElem_SetFontScaleP14game_hudelem_si_40
	mov dword [esp+0xc], 0x60000000
	mov dword [esp+0x10], 0x3ff66666
	cvtss2sd xmm0, xmm0
	movsd [esp+0x4], xmm0
	mov dword [esp], _cstring_font_scale_f_is_1
	call _Z2vaPKcz
	mov [esp], eax
	call _Z9Scr_ErrorPKc
	movss xmm0, dword [ebp-0xc]
	mov eax, [ebp+0x8]
	movss [eax+0x14], xmm0
	leave
	ret
_Z20HudElem_SetFontScaleP14game_hudelem_si_10:
	jp _Z20HudElem_SetFontScaleP14game_hudelem_si_50
	cvtss2sd xmm0, xmm0
	movsd [esp+0x4], xmm0
	mov dword [esp], _cstring_font_scale_was_g
	call _Z2vaPKcz
	mov [esp], eax
	call _Z9Scr_ErrorPKc
	movss xmm0, dword [ebp-0xc]
	jmp _Z20HudElem_SetFontScaleP14game_hudelem_si_50
	nop


;HudElem_SetFont(game_hudelem_s*, int)
_Z15HudElem_SetFontP14game_hudelem_si:
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
	jmp _Z21HudElem_SetEnumStringP14game_hudelem_sPK20game_hudelem_field_tPPKci
	nop


;HudElem_GetFont(game_hudelem_s*, int)
_Z15HudElem_GetFontP14game_hudelem_si:
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
	jmp _Z13Scr_AddStringPKc
	nop


;HudElem_SetAlignX(game_hudelem_s*, int)
_Z17HudElem_SetAlignXP14game_hudelem_si:
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
	jmp _Z21HudElem_SetEnumStringP14game_hudelem_sPK20game_hudelem_field_tPPKci
	nop


;HudElem_GetAlignX(game_hudelem_s*, int)
_Z17HudElem_GetAlignXP14game_hudelem_si:
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
	jmp _Z13Scr_AddStringPKc
	nop


;HudElem_SetAlignY(game_hudelem_s*, int)
_Z17HudElem_SetAlignYP14game_hudelem_si:
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
	jmp _Z21HudElem_SetEnumStringP14game_hudelem_sPK20game_hudelem_field_tPPKci
	nop


;HudElem_GetAlignY(game_hudelem_s*, int)
_Z17HudElem_GetAlignYP14game_hudelem_si:
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
	jmp _Z13Scr_AddStringPKc
	nop


;HudElem_SetHorzAlign(game_hudelem_s*, int)
_Z20HudElem_SetHorzAlignP14game_hudelem_si:
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
	jmp _Z21HudElem_SetEnumStringP14game_hudelem_sPK20game_hudelem_field_tPPKci
	nop


;HudElem_GetHorzAlign(game_hudelem_s*, int)
_Z20HudElem_GetHorzAlignP14game_hudelem_si:
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
	jmp _Z13Scr_AddStringPKc
	nop


;HudElem_SetVertAlign(game_hudelem_s*, int)
_Z20HudElem_SetVertAlignP14game_hudelem_si:
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
	jmp _Z21HudElem_SetEnumStringP14game_hudelem_sPK20game_hudelem_field_tPPKci
	nop


;HudElem_GetVertAlign(game_hudelem_s*, int)
_Z20HudElem_GetVertAlignP14game_hudelem_si:
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
	jmp _Z13Scr_AddStringPKc
	nop


;HudElem_SetColor(game_hudelem_s*, int)
_Z16HudElem_SetColorP14game_hudelem_si:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x44
	mov ebx, [ebp+0x8]
	lea eax, [ebp-0x14]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z13Scr_GetVectorjPf
	movss xmm1, dword [ebp-0x14]
	movaps xmm0, xmm1
	subss xmm0, [_float_1_00000000]
	pxor xmm2, xmm2
	ucomiss xmm0, xmm2
	jb _Z16HudElem_SetColorP14game_hudelem_si_10
	movss xmm1, dword [_float_1_00000000]
	movss xmm0, dword [_float__1_00000000]
	ucomiss xmm0, xmm2
	jb _Z16HudElem_SetColorP14game_hudelem_si_20
_Z16HudElem_SetColorP14game_hudelem_si_70:
	movaps xmm0, xmm2
_Z16HudElem_SetColorP14game_hudelem_si_80:
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
	jb _Z16HudElem_SetColorP14game_hudelem_si_30
	movss xmm1, dword [_float_1_00000000]
	movss xmm0, dword [_float__1_00000000]
_Z16HudElem_SetColorP14game_hudelem_si_110:
	ucomiss xmm0, xmm2
	jb _Z16HudElem_SetColorP14game_hudelem_si_40
	movaps xmm0, xmm2
_Z16HudElem_SetColorP14game_hudelem_si_100:
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
	jb _Z16HudElem_SetColorP14game_hudelem_si_50
	movss xmm1, dword [_float_1_00000000]
	movss xmm0, dword [_float__1_00000000]
	ucomiss xmm0, xmm2
	jb _Z16HudElem_SetColorP14game_hudelem_si_60
_Z16HudElem_SetColorP14game_hudelem_si_90:
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
_Z16HudElem_SetColorP14game_hudelem_si_10:
	movaps xmm0, xmm2
	subss xmm0, xmm1
	ucomiss xmm0, xmm2
	jae _Z16HudElem_SetColorP14game_hudelem_si_70
_Z16HudElem_SetColorP14game_hudelem_si_20:
	movaps xmm0, xmm1
	mulss xmm0, [_float_255_00000000]
	jmp _Z16HudElem_SetColorP14game_hudelem_si_80
_Z16HudElem_SetColorP14game_hudelem_si_50:
	movaps xmm0, xmm2
	subss xmm0, xmm1
	ucomiss xmm0, xmm2
	jae _Z16HudElem_SetColorP14game_hudelem_si_90
_Z16HudElem_SetColorP14game_hudelem_si_60:
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
_Z16HudElem_SetColorP14game_hudelem_si_40:
	movaps xmm0, xmm1
	mulss xmm0, [_float_255_00000000]
	jmp _Z16HudElem_SetColorP14game_hudelem_si_100
_Z16HudElem_SetColorP14game_hudelem_si_30:
	movaps xmm0, xmm2
	subss xmm0, xmm1
	jmp _Z16HudElem_SetColorP14game_hudelem_si_110
	nop


;HudElem_GetColor(game_hudelem_s*, int)
_Z16HudElem_GetColorP14game_hudelem_si:
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
	call _Z13Scr_AddVectorPKf
	leave
	ret
	nop


;HudElem_SetAlpha(game_hudelem_s*, int)
_Z16HudElem_SetAlphaP14game_hudelem_si:
	push ebp
	mov ebp, esp
	sub esp, 0x38
	mov dword [esp], 0x0
	call _Z12Scr_GetFloatj
	fstp dword [ebp-0x1c]
	movss xmm1, dword [ebp-0x1c]
	movss xmm3, dword [_float_1_00000000]
	movaps xmm0, xmm1
	subss xmm0, xmm3
	pxor xmm2, xmm2
	ucomiss xmm0, xmm2
	jb _Z16HudElem_SetAlphaP14game_hudelem_si_10
	movaps xmm1, xmm3
	movss xmm0, dword [_float__1_00000000]
	ucomiss xmm0, xmm2
	jb _Z16HudElem_SetAlphaP14game_hudelem_si_20
_Z16HudElem_SetAlphaP14game_hudelem_si_30:
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
_Z16HudElem_SetAlphaP14game_hudelem_si_10:
	movaps xmm0, xmm2
	subss xmm0, xmm1
	ucomiss xmm0, xmm2
	jae _Z16HudElem_SetAlphaP14game_hudelem_si_30
_Z16HudElem_SetAlphaP14game_hudelem_si_20:
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
_Z16HudElem_GetAlphaP14game_hudelem_si:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	movzx eax, byte [eax+0x27]
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float_0_00392157]
	movss [ebp+0x8], xmm0
	pop ebp
	jmp _Z12Scr_AddFloatf
	nop


;HudElem_SetLocalizedString(game_hudelem_s*, int)
_Z26HudElem_SetLocalizedStringP14game_hudelem_si:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov dword [esp], 0x0
	call _Z14Scr_GetIStringj
	lea edx, [ebx*4]
	shl ebx, 0x5
	sub ebx, edx
	add esi, [ebx+fields+0x4]
	mov [esp], eax
	call _Z22G_LocalizedStringIndexPKc
	mov [esi], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;HudElem_SetFlagForeground(game_hudelem_s*, int)
_Z25HudElem_SetFlagForegroundP14game_hudelem_si:
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
	call _Z10Scr_GetIntj
	test eax, eax
	jz _Z25HudElem_SetFlagForegroundP14game_hudelem_si_10
	or dword [ebx], 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z25HudElem_SetFlagForegroundP14game_hudelem_si_10:
	and dword [ebx], 0xfffffffe
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;HudElem_GetFlagForeground(game_hudelem_s*, int)
_Z25HudElem_GetFlagForegroundP14game_hudelem_si:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	test byte [eax+0x9c], 0x1
	jz _Z25HudElem_GetFlagForegroundP14game_hudelem_si_10
	mov dword [ebp+0x8], 0x1
	pop ebp
	jmp _Z11Scr_AddBooli
_Z25HudElem_GetFlagForegroundP14game_hudelem_si_10:
	mov dword [ebp+0x8], 0x0
	pop ebp
	jmp _Z11Scr_AddBooli
	nop


;HudElem_SetFlagHideWhenDead(game_hudelem_s*, int)
_Z27HudElem_SetFlagHideWhenDeadP14game_hudelem_si:
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
	call _Z10Scr_GetIntj
	test eax, eax
	jz _Z27HudElem_SetFlagHideWhenDeadP14game_hudelem_si_10
	or dword [ebx], 0x2
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z27HudElem_SetFlagHideWhenDeadP14game_hudelem_si_10:
	and dword [ebx], 0xfffffffd
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;HudElem_GetFlagHideWhenDead(game_hudelem_s*, int)
_Z27HudElem_GetFlagHideWhenDeadP14game_hudelem_si:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	test byte [eax+0x9c], 0x2
	jz _Z27HudElem_GetFlagHideWhenDeadP14game_hudelem_si_10
	mov dword [ebp+0x8], 0x1
	pop ebp
	jmp _Z11Scr_AddBooli
_Z27HudElem_GetFlagHideWhenDeadP14game_hudelem_si_10:
	mov dword [ebp+0x8], 0x0
	pop ebp
	jmp _Z11Scr_AddBooli
	nop


;HudElem_SetFlagHideWhenInMenu(game_hudelem_s*, int)
_Z29HudElem_SetFlagHideWhenInMenuP14game_hudelem_si:
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
	call _Z10Scr_GetIntj
	test eax, eax
	jz _Z29HudElem_SetFlagHideWhenInMenuP14game_hudelem_si_10
	or dword [ebx], 0x4
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z29HudElem_SetFlagHideWhenInMenuP14game_hudelem_si_10:
	and dword [ebx], 0xfffffffb
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;HudElem_GetFlagHideWhenInMenu(game_hudelem_s*, int)
_Z29HudElem_GetFlagHideWhenInMenuP14game_hudelem_si:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	test byte [eax+0x9c], 0x4
	jz _Z29HudElem_GetFlagHideWhenInMenuP14game_hudelem_si_10
	mov dword [ebp+0x8], 0x1
	pop ebp
	jmp _Z11Scr_AddBooli
_Z29HudElem_GetFlagHideWhenInMenuP14game_hudelem_si_10:
	mov dword [ebp+0x8], 0x0
	pop ebp
	jmp _Z11Scr_AddBooli
	nop


;HudElem_SetGlowColor(game_hudelem_s*, int)
_Z20HudElem_SetGlowColorP14game_hudelem_si:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x44
	mov ebx, [ebp+0x8]
	lea eax, [ebp-0x14]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z13Scr_GetVectorjPf
	movss xmm1, dword [ebp-0x14]
	movaps xmm0, xmm1
	subss xmm0, [_float_1_00000000]
	pxor xmm2, xmm2
	ucomiss xmm0, xmm2
	jb _Z20HudElem_SetGlowColorP14game_hudelem_si_10
	movss xmm1, dword [_float_1_00000000]
	movss xmm0, dword [_float__1_00000000]
	ucomiss xmm0, xmm2
	jb _Z20HudElem_SetGlowColorP14game_hudelem_si_20
_Z20HudElem_SetGlowColorP14game_hudelem_si_70:
	movaps xmm0, xmm2
_Z20HudElem_SetGlowColorP14game_hudelem_si_80:
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
	jb _Z20HudElem_SetGlowColorP14game_hudelem_si_30
	movss xmm1, dword [_float_1_00000000]
	movss xmm0, dword [_float__1_00000000]
_Z20HudElem_SetGlowColorP14game_hudelem_si_110:
	ucomiss xmm0, xmm2
	jb _Z20HudElem_SetGlowColorP14game_hudelem_si_40
	movaps xmm0, xmm2
_Z20HudElem_SetGlowColorP14game_hudelem_si_100:
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
	jb _Z20HudElem_SetGlowColorP14game_hudelem_si_50
	movss xmm1, dword [_float_1_00000000]
	movss xmm0, dword [_float__1_00000000]
	ucomiss xmm0, xmm2
	jb _Z20HudElem_SetGlowColorP14game_hudelem_si_60
_Z20HudElem_SetGlowColorP14game_hudelem_si_90:
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
_Z20HudElem_SetGlowColorP14game_hudelem_si_10:
	movaps xmm0, xmm2
	subss xmm0, xmm1
	ucomiss xmm0, xmm2
	jae _Z20HudElem_SetGlowColorP14game_hudelem_si_70
_Z20HudElem_SetGlowColorP14game_hudelem_si_20:
	movaps xmm0, xmm1
	mulss xmm0, [_float_255_00000000]
	jmp _Z20HudElem_SetGlowColorP14game_hudelem_si_80
_Z20HudElem_SetGlowColorP14game_hudelem_si_50:
	movaps xmm0, xmm2
	subss xmm0, xmm1
	ucomiss xmm0, xmm2
	jae _Z20HudElem_SetGlowColorP14game_hudelem_si_90
_Z20HudElem_SetGlowColorP14game_hudelem_si_60:
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
_Z20HudElem_SetGlowColorP14game_hudelem_si_40:
	movaps xmm0, xmm1
	mulss xmm0, [_float_255_00000000]
	jmp _Z20HudElem_SetGlowColorP14game_hudelem_si_100
_Z20HudElem_SetGlowColorP14game_hudelem_si_30:
	movaps xmm0, xmm2
	subss xmm0, xmm1
	jmp _Z20HudElem_SetGlowColorP14game_hudelem_si_110
	nop


;HudElem_GetGlowColor(game_hudelem_s*, int)
_Z20HudElem_GetGlowColorP14game_hudelem_si:
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
	call _Z13Scr_AddVectorPKf
	leave
	ret


;HudElem_SetGlowAlpha(game_hudelem_s*, int)
_Z20HudElem_SetGlowAlphaP14game_hudelem_si:
	push ebp
	mov ebp, esp
	sub esp, 0x38
	mov dword [esp], 0x0
	call _Z12Scr_GetFloatj
	fstp dword [ebp-0x1c]
	movss xmm1, dword [ebp-0x1c]
	movss xmm3, dword [_float_1_00000000]
	movaps xmm0, xmm1
	subss xmm0, xmm3
	pxor xmm2, xmm2
	ucomiss xmm0, xmm2
	jb _Z20HudElem_SetGlowAlphaP14game_hudelem_si_10
	movaps xmm1, xmm3
	movss xmm0, dword [_float__1_00000000]
	ucomiss xmm0, xmm2
	jb _Z20HudElem_SetGlowAlphaP14game_hudelem_si_20
_Z20HudElem_SetGlowAlphaP14game_hudelem_si_30:
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
_Z20HudElem_SetGlowAlphaP14game_hudelem_si_10:
	movaps xmm0, xmm2
	subss xmm0, xmm1
	ucomiss xmm0, xmm2
	jae _Z20HudElem_SetGlowAlphaP14game_hudelem_si_30
_Z20HudElem_SetGlowAlphaP14game_hudelem_si_20:
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
_Z20HudElem_GetGlowAlphaP14game_hudelem_si:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	movzx eax, byte [eax+0x87]
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float_0_00392157]
	movss [ebp+0x8], xmm0
	pop ebp
	jmp _Z12Scr_AddFloatf


;HudElem_SetBoolean(game_hudelem_s*, int)
_Z18HudElem_SetBooleanP14game_hudelem_si:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0xc]
	mov dword [esp], 0x0
	call _Z10Scr_GetIntj
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
_Z21HudElem_SetEnumStringP14game_hudelem_sPK20game_hudelem_field_tPPKci:
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
	call _Z13Scr_GetStringj
	mov esi, eax
	mov edx, [ebp+0x8]
	test edx, edx
	jle _Z21HudElem_SetEnumStringP14game_hudelem_sPK20game_hudelem_field_tPPKci_10
	xor ebx, ebx
_Z21HudElem_SetEnumStringP14game_hudelem_sPK20game_hudelem_field_tPPKci_30:
	mov edx, [ebp-0x820]
	mov eax, [edx+ebx*4]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z21HudElem_SetEnumStringP14game_hudelem_sPK20game_hudelem_field_tPPKci_20
	add ebx, 0x1
	cmp [ebp+0x8], ebx
	jnz _Z21HudElem_SetEnumStringP14game_hudelem_sPK20game_hudelem_field_tPPKci_30
_Z21HudElem_SetEnumStringP14game_hudelem_sPK20game_hudelem_field_tPPKci_10:
	mov eax, [edi]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_s_is_not_a_valid
	lea esi, [ebp-0x818]
	mov [esp], esi
	call sprintf
	mov eax, [ebp+0x8]
	test eax, eax
	jg _Z21HudElem_SetEnumStringP14game_hudelem_sPK20game_hudelem_field_tPPKci_40
_Z21HudElem_SetEnumStringP14game_hudelem_sPK20game_hudelem_field_tPPKci_60:
	mov [esp], esi
	call _Z9Scr_ErrorPKc
	add esp, 0x82c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21HudElem_SetEnumStringP14game_hudelem_sPK20game_hudelem_field_tPPKci_40:
	xor ebx, ebx
_Z21HudElem_SetEnumStringP14game_hudelem_sPK20game_hudelem_field_tPPKci_50:
	mov edx, [ebp-0x820]
	mov eax, [edx+ebx*4]
	mov [esp+0x4], eax
	mov dword [esp], _cstring__s
	call _Z2vaPKcz
	mov dword [esp+0x8], 0x800
	mov [esp+0x4], eax
	mov [esp], esi
	call strncat
	mov byte [ebp-0x19], 0x0
	add ebx, 0x1
	cmp [ebp+0x8], ebx
	jnz _Z21HudElem_SetEnumStringP14game_hudelem_sPK20game_hudelem_field_tPPKci_50
	jmp _Z21HudElem_SetEnumStringP14game_hudelem_sPK20game_hudelem_field_tPPKci_60
_Z21HudElem_SetEnumStringP14game_hudelem_sPK20game_hudelem_field_tPPKci_20:
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
_Z23HECmd_SetTimer_Internal12scr_entref_t9he_type_tPKc:
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
	jz _Z23HECmd_SetTimer_Internal12scr_entref_t9he_type_tPKc_10
	mov dword [esp], _cstring_not_a_hud_elemen
	call _Z15Scr_ObjectErrorPKc
	xor ebx, ebx
_Z23HECmd_SetTimer_Internal12scr_entref_t9he_type_tPKc_40:
	call _Z15Scr_GetNumParamv
	sub eax, 0x1
	jz _Z23HECmd_SetTimer_Internal12scr_entref_t9he_type_tPKc_20
	mov [esp+0x4], esi
	mov dword [esp], _cstring_usage_hudelem_st
	call _Z2vaPKcz
	mov [esp], eax
	call _Z9Scr_ErrorPKc
_Z23HECmd_SetTimer_Internal12scr_entref_t9he_type_tPKc_20:
	mov dword [esp], 0x0
	call _Z12Scr_GetFloatj
	fstp dword [ebp-0x2c]
	movss xmm0, dword [ebp-0x2c]
	mulss xmm0, [_float_1000_00000000]
	movss [esp], xmm0
	call ceilf
	fstp dword [ebp-0x1c]
	cvttss2si esi, [ebp-0x1c]
	test esi, esi
	jle _Z23HECmd_SetTimer_Internal12scr_entref_t9he_type_tPKc_30
_Z23HECmd_SetTimer_Internal12scr_entref_t9he_type_tPKc_50:
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
_Z23HECmd_SetTimer_Internal12scr_entref_t9he_type_tPKc_10:
	movzx edx, dx
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*2]
	lea ebx, [eax*4+g_hudelems]
	jmp _Z23HECmd_SetTimer_Internal12scr_entref_t9he_type_tPKc_40
_Z23HECmd_SetTimer_Internal12scr_entref_t9he_type_tPKc_30:
	cmp edi, 0x8
	jz _Z23HECmd_SetTimer_Internal12scr_entref_t9he_type_tPKc_50
	cvtsi2ss xmm0, esi
	mulss xmm0, [_float_0_00100000]
	cvtss2sd xmm0, xmm0
	movsd [esp+0x4], xmm0
	mov dword [esp], _cstring_time_g_should_be
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z14Scr_ParamErrorjPKc
	jmp _Z23HECmd_SetTimer_Internal12scr_entref_t9he_type_tPKc_50
	nop


;HECmd_SetClock_Internal(scr_entref_t, he_type_t, char const*)
_Z23HECmd_SetClock_Internal12scr_entref_t9he_type_tPKc:
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
	jz _Z23HECmd_SetClock_Internal12scr_entref_t9he_type_tPKc_10
	mov dword [esp], _cstring_not_a_hud_elemen
	call _Z15Scr_ObjectErrorPKc
	xor ebx, ebx
_Z23HECmd_SetClock_Internal12scr_entref_t9he_type_tPKc_80:
	call _Z15Scr_GetNumParamv
	mov esi, eax
	cmp eax, 0x3
	jz _Z23HECmd_SetClock_Internal12scr_entref_t9he_type_tPKc_20
	cmp eax, 0x5
	jz _Z23HECmd_SetClock_Internal12scr_entref_t9he_type_tPKc_20
	mov [esp+0x4], edi
	mov dword [esp], _cstring_usage_hudelem_st1
	call _Z2vaPKcz
	mov [esp], eax
	call _Z9Scr_ErrorPKc
_Z23HECmd_SetClock_Internal12scr_entref_t9he_type_tPKc_20:
	mov dword [esp], 0x0
	call _Z12Scr_GetFloatj
	fstp dword [ebp-0x3c]
	movss xmm0, dword [ebp-0x3c]
	mulss xmm0, [_float_1000_00000000]
	movss [esp], xmm0
	call ceilf
	fstp dword [ebp-0x2c]
	cvttss2si edi, [ebp-0x2c]
	test edi, edi
	jle _Z23HECmd_SetClock_Internal12scr_entref_t9he_type_tPKc_30
_Z23HECmd_SetClock_Internal12scr_entref_t9he_type_tPKc_100:
	mov dword [esp], 0x1
	call _Z12Scr_GetFloatj
	fstp dword [ebp-0x3c]
	movss xmm0, dword [ebp-0x3c]
	mulss xmm0, [_float_1000_00000000]
	movss [esp], xmm0
	call ceilf
	fstp dword [ebp-0x30]
	cvttss2si eax, [ebp-0x30]
	mov [ebp-0x24], eax
	test eax, eax
	jle _Z23HECmd_SetClock_Internal12scr_entref_t9he_type_tPKc_40
_Z23HECmd_SetClock_Internal12scr_entref_t9he_type_tPKc_110:
	mov dword [esp], 0x2
	call _Z13Scr_GetStringj
	mov [esp], eax
	call _Z15G_MaterialIndexPKc
	mov [ebp-0x20], eax
	cmp esi, 0x3
	jz _Z23HECmd_SetClock_Internal12scr_entref_t9he_type_tPKc_50
	mov dword [esp], 0x3
	call _Z10Scr_GetIntj
	mov [ebp-0x1c], eax
	test eax, eax
	js _Z23HECmd_SetClock_Internal12scr_entref_t9he_type_tPKc_60
_Z23HECmd_SetClock_Internal12scr_entref_t9he_type_tPKc_120:
	mov dword [esp], 0x4
	call _Z10Scr_GetIntj
	mov esi, eax
	test eax, eax
	js _Z23HECmd_SetClock_Internal12scr_entref_t9he_type_tPKc_70
_Z23HECmd_SetClock_Internal12scr_entref_t9he_type_tPKc_90:
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
_Z23HECmd_SetClock_Internal12scr_entref_t9he_type_tPKc_10:
	movzx edx, dx
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	lea eax, [edx+eax*2]
	lea ebx, [eax*4+g_hudelems]
	jmp _Z23HECmd_SetClock_Internal12scr_entref_t9he_type_tPKc_80
_Z23HECmd_SetClock_Internal12scr_entref_t9he_type_tPKc_50:
	mov dword [ebp-0x1c], 0x0
	xor si, si
	jmp _Z23HECmd_SetClock_Internal12scr_entref_t9he_type_tPKc_90
_Z23HECmd_SetClock_Internal12scr_entref_t9he_type_tPKc_30:
	cmp dword [ebp-0x28], 0xc
	jz _Z23HECmd_SetClock_Internal12scr_entref_t9he_type_tPKc_100
	cvtsi2ss xmm0, edi
	mulss xmm0, [_float_0_00100000]
	cvtss2sd xmm0, xmm0
	movsd [esp+0x4], xmm0
	mov dword [esp], _cstring_time_g_should_be
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z14Scr_ParamErrorjPKc
	jmp _Z23HECmd_SetClock_Internal12scr_entref_t9he_type_tPKc_100
_Z23HECmd_SetClock_Internal12scr_entref_t9he_type_tPKc_70:
	mov [esp+0x4], eax
	mov dword [esp], _cstring_height_i__0
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov dword [esp], 0x4
	call _Z14Scr_ParamErrorjPKc
	jmp _Z23HECmd_SetClock_Internal12scr_entref_t9he_type_tPKc_90
_Z23HECmd_SetClock_Internal12scr_entref_t9he_type_tPKc_40:
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float_0_00100000]
	cvtss2sd xmm0, xmm0
	movsd [esp+0x4], xmm0
	mov dword [esp], _cstring_duration_g_shoul
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call _Z14Scr_ParamErrorjPKc
	jmp _Z23HECmd_SetClock_Internal12scr_entref_t9he_type_tPKc_110
_Z23HECmd_SetClock_Internal12scr_entref_t9he_type_tPKc_60:
	mov [esp+0x4], eax
	mov dword [esp], _cstring_width_i__0
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov dword [esp], 0x3
	call _Z14Scr_ParamErrorjPKc
	jmp _Z23HECmd_SetClock_Internal12scr_entref_t9he_type_tPKc_120


;GScr_NewHudElem()
_Z15GScr_NewHudElemv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	xor eax, eax
	mov edx, g_hudelems
	jmp _Z15GScr_NewHudElemv_10
_Z15GScr_NewHudElemv_30:
	add eax, 0x1
	add edx, 0xac
	cmp eax, 0x400
	jz _Z15GScr_NewHudElemv_20
_Z15GScr_NewHudElemv_10:
	mov ecx, [edx]
	test ecx, ecx
	jnz _Z15GScr_NewHudElemv_30
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
	mov dword [edx+g_hudelems+0xa4], 0x0
_Z15GScr_NewHudElemv_40:
	mov [esp], ecx
	call _Z14Scr_AddHudElemP14game_hudelem_s
	leave
	ret
_Z15GScr_NewHudElemv_20:
	mov dword [esp], _cstring_out_of_hudelems
	call _Z9Scr_ErrorPKc
	xor ecx, ecx
	jmp _Z15GScr_NewHudElemv_40
	nop


;HudElem_GetMethod(char const**)
_Z17HudElem_GetMethodPPKc:
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
	jmp _Z17HudElem_GetMethodPPKc_10
_Z17HudElem_GetMethodPPKc_30:
	add esi, 0x1
	add edi, 0xc
	add ebx, 0xc
	cmp esi, 0x16
	jz _Z17HudElem_GetMethodPPKc_20
	mov edx, [ebp-0x1c]
_Z17HudElem_GetMethodPPKc_10:
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], edx
	call strcmp
	test eax, eax
	jnz _Z17HudElem_GetMethodPPKc_30
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
_Z17HudElem_GetMethodPPKc_20:
	xor eax, eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;HudElem_DestroyAll()
_Z18HudElem_DestroyAllv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, g_hudelems
	jmp _Z18HudElem_DestroyAllv_10
_Z18HudElem_DestroyAllv_30:
	add ebx, 0xac
	cmp ebx, itemRegistered
	jz _Z18HudElem_DestroyAllv_20
_Z18HudElem_DestroyAllv_10:
	mov eax, [ebx]
	test eax, eax
	jz _Z18HudElem_DestroyAllv_30
	mov [esp], ebx
	call _Z15Scr_FreeHudElemP14game_hudelem_s
	mov dword [ebx], 0x0
	add ebx, 0xac
	cmp ebx, itemRegistered
	jnz _Z18HudElem_DestroyAllv_10
_Z18HudElem_DestroyAllv_20:
	mov dword [esp+0x8], 0x2b000
	mov dword [esp+0x4], 0x0
	mov dword [esp], g_hudelems
	call memset
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;GScr_NewTeamHudElem()
_Z19GScr_NewTeamHudElemv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov dword [esp], 0x0
	call _Z18Scr_GetConstStringj
	mov edx, scr_const
	cmp ax, [edx+0xc]
	jz _Z19GScr_NewTeamHudElemv_10
	cmp ax, [edx+0xe]
	jz _Z19GScr_NewTeamHudElemv_20
	cmp ax, [edx+0x140]
	jz _Z19GScr_NewTeamHudElemv_30
	mov dword [esp], 0x0
	call _Z13Scr_GetStringj
	mov [esp+0x4], eax
	mov dword [esp], _cstring_team_s_should_be
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z14Scr_ParamErrorjPKc
	xor ebx, ebx
_Z19GScr_NewTeamHudElemv_70:
	xor eax, eax
	mov edx, g_hudelems
	jmp _Z19GScr_NewTeamHudElemv_40
_Z19GScr_NewTeamHudElemv_60:
	add eax, 0x1
	add edx, 0xac
	cmp eax, 0x400
	jz _Z19GScr_NewTeamHudElemv_50
_Z19GScr_NewTeamHudElemv_40:
	mov ecx, [edx]
	test ecx, ecx
	jnz _Z19GScr_NewTeamHudElemv_60
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
_Z19GScr_NewTeamHudElemv_80:
	mov [esp], ecx
	call _Z14Scr_AddHudElemP14game_hudelem_s
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z19GScr_NewTeamHudElemv_30:
	mov ebx, 0x3
	jmp _Z19GScr_NewTeamHudElemv_70
_Z19GScr_NewTeamHudElemv_10:
	mov ebx, 0x2
	jmp _Z19GScr_NewTeamHudElemv_70
_Z19GScr_NewTeamHudElemv_20:
	mov ebx, 0x1
	jmp _Z19GScr_NewTeamHudElemv_70
_Z19GScr_NewTeamHudElemv_50:
	mov dword [esp], _cstring_out_of_hudelems
	call _Z9Scr_ErrorPKc
	xor ecx, ecx
	jmp _Z19GScr_NewTeamHudElemv_80
	nop


;Scr_GetHudElemField(int, int)
_Z19Scr_GetHudElemFieldii:
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
	jz _Z19Scr_GetHudElemFieldii_10
	mov [ebp+0x8], edx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp ecx
_Z19Scr_GetHudElemFieldii_10:
	mov eax, [esi+0x4]
	mov [esp+0x8], eax
	mov eax, [esi+0x8]
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z19Scr_GetGenericFieldPh11fieldtype_ti
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;Scr_SetHudElemField(int, int)
_Z19Scr_SetHudElemFieldii:
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
	jz _Z19Scr_SetHudElemFieldii_10
	mov [ebp+0x8], edx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp ecx
_Z19Scr_SetHudElemFieldii_10:
	mov eax, [esi+0x4]
	mov [esp+0x8], eax
	mov eax, [esi+0x8]
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z19Scr_SetGenericFieldPh11fieldtype_ti
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;HudElem_UpdateClient(gclient_s*, int, hudelem_update_t)
_Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0x10]
	mov edx, eax
	shr edx, 1
	and eax, 0x1
	mov [ebp-0x28], eax
	and edx, 0x1
	mov [ebp-0x24], edx
	jz _Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_10
	test eax, eax
	jz _Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_20
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	mov ebx, g_hudelems+0xa8
	mov edi, [ebp+0x8]
	add edi, 0x8a0
	mov esi, [ebp+0x8]
	add esi, 0x1c00
	jmp _Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_30
_Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_50:
	add ebx, 0xac
	cmp ebx, itemRegistered+0xa8
	jz _Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_40
_Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_30:
	mov eax, [ebx-0xa8]
	test eax, eax
	jz _Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_50
	mov eax, [ebx-0x4]
	test eax, eax
	jz _Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_60
	mov edx, [ebp+0x8]
	cmp eax, [edx+0x3010]
	jnz _Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_50
_Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_60:
	mov eax, [ebx-0x8]
	cmp eax, 0x3ff
	jz _Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_70
	cmp [ebp+0xc], eax
	jnz _Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_50
_Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_70:
	mov eax, [ebx]
	test eax, eax
	jz _Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_80
	lea edx, [esi+0x4]
	cmp dword [ebp-0x20], 0x1e
	jg _Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_50
	add dword [ebp-0x20], 0x1
	add esi, 0xa0
_Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_130:
	lea eax, [ebx-0xa8]
	mov dword [esp+0x8], 0xa0
	mov [esp+0x4], eax
	mov [esp], edx
	call memcpy
	add ebx, 0xac
	cmp ebx, itemRegistered+0xa8
	jnz _Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_30
_Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_40:
	mov edi, [ebp-0x28]
	test edi, edi
	jz _Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_90
	cmp dword [ebp-0x20], 0x1e
	jle _Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_100
_Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_90:
	mov esi, [ebp-0x24]
	test esi, esi
	jz _Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_110
	cmp dword [ebp-0x1c], 0x1e
	jg _Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_110
	mov edx, [ebp-0x1c]
	lea eax, [edx+edx*4]
	shl eax, 0x5
	mov edx, [ebp+0x8]
	mov ecx, [eax+edx+0x8a4]
	test ecx, ecx
	jnz _Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_120
_Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_110:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_80:
	lea edx, [edi+0x4]
	cmp dword [ebp-0x1c], 0x1e
	jg _Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_50
	add dword [ebp-0x1c], 0x1
	add edi, 0xa0
	jmp _Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_130
_Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_100:
	mov edx, [ebp-0x20]
	lea eax, [edx+edx*4]
	shl eax, 0x5
	mov edx, [ebp+0x8]
	mov ebx, [eax+edx+0x1c04]
	test ebx, ebx
	jz _Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_90
	lea esi, [eax+edx+0x1c04]
	mov ebx, [ebp-0x20]
_Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_140:
	lea eax, [ebx+ebx*4]
	shl eax, 0x5
	mov edx, [ebp+0x8]
	lea eax, [eax+edx+0x1c04]
	mov dword [esp+0x8], 0xa0
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	add ebx, 0x1
	cmp ebx, 0x1f
	jz _Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_90
	mov eax, [esi+0xa0]
	add esi, 0xa0
	test eax, eax
	jnz _Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_140
	jmp _Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_90
_Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_120:
	lea esi, [eax+edx+0x8a4]
	mov ebx, [ebp-0x1c]
_Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_150:
	lea eax, [ebx+ebx*4]
	shl eax, 0x5
	mov edx, [ebp+0x8]
	lea eax, [eax+edx+0x8a4]
	mov dword [esp+0x8], 0xa0
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	add ebx, 0x1
	cmp ebx, 0x1f
	jz _Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_110
	mov eax, [esi+0xa0]
	add esi, 0xa0
	test eax, eax
	jnz _Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_150
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_10:
	mov eax, [ebp-0x28]
	test eax, eax
	jz _Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_160
	mov dword [ebp-0x20], 0x0
	mov ebx, g_hudelems+0xa8
	mov esi, [ebp+0x8]
	add esi, 0x1c04
_Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_180:
	mov eax, [ebx-0xa8]
	test eax, eax
	jnz _Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_170
_Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_250:
	add ebx, 0xac
	cmp ebx, itemRegistered+0xa8
	jnz _Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_180
	mov dword [ebp-0x1c], 0x0
	jmp _Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_40
_Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_20:
	mov dword [ebp-0x1c], 0x0
	mov ebx, g_hudelems+0xa8
	mov esi, [ebp+0x8]
	add esi, 0x8a4
_Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_200:
	mov eax, [ebx-0xa8]
	test eax, eax
	jnz _Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_190
_Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_220:
	add ebx, 0xac
	cmp ebx, itemRegistered+0xa8
	jnz _Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_200
	jmp _Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_90
_Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_190:
	mov eax, [ebx-0x4]
	test eax, eax
	jz _Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_210
	mov edx, [ebp+0x8]
	cmp eax, [edx+0x3010]
	jnz _Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_220
_Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_210:
	mov eax, [ebx-0x8]
	cmp eax, 0x3ff
	jz _Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_230
	cmp eax, [ebp+0xc]
	jnz _Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_220
_Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_230:
	mov eax, [ebx]
	test eax, eax
	jnz _Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_220
	mov edx, esi
	cmp dword [ebp-0x1c], 0x1e
	jg _Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_220
	add dword [ebp-0x1c], 0x1
	add esi, 0xa0
	lea eax, [ebx-0xa8]
	mov dword [esp+0x8], 0xa0
	mov [esp+0x4], eax
	mov [esp], edx
	call memcpy
	jmp _Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_220
_Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_170:
	mov eax, [ebx-0x4]
	test eax, eax
	jz _Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_240
	mov edx, [ebp+0x8]
	cmp eax, [edx+0x3010]
	jnz _Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_250
_Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_240:
	mov eax, [ebx-0x8]
	cmp eax, 0x3ff
	jz _Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_260
	cmp eax, [ebp+0xc]
	jnz _Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_250
_Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_260:
	mov edi, [ebx]
	test edi, edi
	jz _Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_250
	mov edx, esi
	cmp dword [ebp-0x20], 0x1e
	jg _Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_250
	add dword [ebp-0x20], 0x1
	add esi, 0xa0
	lea eax, [ebx-0xa8]
	mov dword [esp+0x8], 0xa0
	mov [esp+0x4], eax
	mov [esp], edx
	call memcpy
	jmp _Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_250
_Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_160:
	mov eax, g_hudelems+0xa8
_Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_270:
	add eax, 0xac
	cmp eax, itemRegistered+0xa8
	jnz _Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_270
	mov dword [ebp-0x1c], 0x0
	jmp _Z20HudElem_UpdateClientP9gclient_si16hudelem_update_t_90
	nop


;GScr_NewClientHudElem()
_Z21GScr_NewClientHudElemv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov dword [esp], 0x0
	call _Z13Scr_GetEntityj
	mov ebx, eax
	mov eax, [eax+0x15c]
	test eax, eax
	jz _Z21GScr_NewClientHudElemv_10
_Z21GScr_NewClientHudElemv_50:
	mov ebx, [ebx]
	xor eax, eax
	mov edx, g_hudelems
	jmp _Z21GScr_NewClientHudElemv_20
_Z21GScr_NewClientHudElemv_40:
	add eax, 0x1
	add edx, 0xac
	cmp eax, 0x400
	jz _Z21GScr_NewClientHudElemv_30
_Z21GScr_NewClientHudElemv_20:
	mov ecx, [edx]
	test ecx, ecx
	jnz _Z21GScr_NewClientHudElemv_40
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
	mov [edx+g_hudelems+0xa0], ebx
	mov dword [edx+g_hudelems+0xa4], 0x0
_Z21GScr_NewClientHudElemv_60:
	mov [esp], ecx
	call _Z14Scr_AddHudElemP14game_hudelem_s
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z21GScr_NewClientHudElemv_10:
	mov dword [esp+0x4], _cstring_not_a_client
	mov dword [esp], 0x0
	call _Z14Scr_ParamErrorjPKc
	jmp _Z21GScr_NewClientHudElemv_50
_Z21GScr_NewClientHudElemv_30:
	mov dword [esp], _cstring_out_of_hudelems
	call _Z9Scr_ErrorPKc
	xor ecx, ecx
	jmp _Z21GScr_NewClientHudElemv_60
	nop


;HudElem_ClientDisconnect(gentity_s*)
_Z24HudElem_ClientDisconnectP9gentity_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	mov ebx, g_hudelems
	mov esi, itemRegistered
	jmp _Z24HudElem_ClientDisconnectP9gentity_s_10
_Z24HudElem_ClientDisconnectP9gentity_s_30:
	add ebx, 0xac
	cmp esi, ebx
	jz _Z24HudElem_ClientDisconnectP9gentity_s_20
_Z24HudElem_ClientDisconnectP9gentity_s_10:
	mov eax, [ebx]
	test eax, eax
	jz _Z24HudElem_ClientDisconnectP9gentity_s_30
	mov eax, [ebx+0xa0]
	cmp eax, [edi]
	jnz _Z24HudElem_ClientDisconnectP9gentity_s_30
	mov [esp], ebx
	call _Z15Scr_FreeHudElemP14game_hudelem_s
	mov dword [ebx], 0x0
	add ebx, 0xac
	cmp esi, ebx
	jnz _Z24HudElem_ClientDisconnectP9gentity_s_10
_Z24HudElem_ClientDisconnectP9gentity_s_20:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;GScr_AddFieldsForHudElems()
_Z25GScr_AddFieldsForHudElemsv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [fields]
	test ebx, ebx
	jz _Z25GScr_AddFieldsForHudElemsv_10
	xor edi, edi
	mov esi, fields+0x1c
_Z25GScr_AddFieldsForHudElemsv_20:
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
	call _Z17Scr_AddClassFieldjPKcj
	mov ebx, [esi]
	add edi, 0x1c
	add esi, 0x1c
	test ebx, ebx
	jnz _Z25GScr_AddFieldsForHudElemsv_20
_Z25GScr_AddFieldsForHudElemsv_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Scr_FreeHudElemConstStrings(game_hudelem_s*)
_Z27Scr_FreeHudElemConstStringsP14game_hudelem_s:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov ecx, [fields]
	test ecx, ecx
	jz _Z27Scr_FreeHudElemConstStringsP14game_hudelem_s_10
	mov ebx, fields+0x8
	jmp _Z27Scr_FreeHudElemConstStringsP14game_hudelem_s_20
_Z27Scr_FreeHudElemConstStringsP14game_hudelem_s_30:
	mov eax, [ebx+0x14]
	add ebx, 0x1c
	test eax, eax
	jz _Z27Scr_FreeHudElemConstStringsP14game_hudelem_s_10
_Z27Scr_FreeHudElemConstStringsP14game_hudelem_s_20:
	cmp dword [ebx], 0x3
	jnz _Z27Scr_FreeHudElemConstStringsP14game_hudelem_s_30
	mov dword [esp+0x4], 0x0
	mov eax, esi
	add eax, [ebx-0x4]
	mov [esp], eax
	call _Z13Scr_SetStringPtj
	mov eax, [ebx+0x14]
	add ebx, 0x1c
	test eax, eax
	jnz _Z27Scr_FreeHudElemConstStringsP14game_hudelem_s_20
_Z27Scr_FreeHudElemConstStringsP14game_hudelem_s_10:
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
methods: dd _cstring_settext, _Z13HECmd_SetText12scr_entref_t, 0x0, _cstring_clearalltextafte, _Z30HECmd_ClearAllTextAfterHudElem12scr_entref_t, 0x0, _cstring_setshader, _Z17HECmd_SetMaterial12scr_entref_t, 0x0, _cstring_settargetent, _Z18HECmd_SetTargetEnt12scr_entref_t, 0x0, _cstring_cleartargetent, _Z20HECmd_ClearTargetEnt12scr_entref_t, 0x0, _cstring_settimer1, _Z14HECmd_SetTimer12scr_entref_t, 0x0, _cstring_settimerup1, _Z16HECmd_SetTimerUp12scr_entref_t, 0x0, _cstring_settenthstimer1, _Z20HECmd_SetTenthsTimer12scr_entref_t, 0x0, _cstring_settenthstimerup1, _Z22HECmd_SetTenthsTimerUp12scr_entref_t, 0x0, _cstring_setclock1, _Z14HECmd_SetClock12scr_entref_t, 0x0, _cstring_setclockup1, _Z16HECmd_SetClockUp12scr_entref_t, 0x0, _cstring_setvalue, _Z14HECmd_SetValue12scr_entref_t, 0x0, _cstring_setwaypoint, _Z17HECmd_SetWaypoint12scr_entref_t, 0x0, _cstring_fadeovertime, _Z18HECmd_FadeOverTime12scr_entref_t, 0x0, _cstring_scaleovertime, _Z19HECmd_ScaleOverTime12scr_entref_t, 0x0, _cstring_moveovertime, _Z18HECmd_MoveOverTime12scr_entref_t, 0x0, _cstring_reset, _Z11HECmd_Reset12scr_entref_t, 0x0, _cstring_destroy, _Z13HECmd_Destroy12scr_entref_t, 0x0, _cstring_setpulsefx, _Z16HECmd_SetPulseFX12scr_entref_t, 0x0, _cstring_setplayernamestr, _Z25HECmd_SetPlayerNameString12scr_entref_t, 0x0, _cstring_setmapnamestring, _Z22HECmd_SetMapNameString12scr_entref_t, 0x0, _cstring_setgametypestrin, _Z23HECmd_SetGameTypeString12scr_entref_t, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
fields: dd _cstring_x, 0x4, 0x1, 0x0, 0x0, 0x0, 0x0, _cstring_y, 0x8, 0x1, 0x0, 0x0, 0x0, 0x0, _cstring_z, 0xc, 0x1, 0x0, 0x0, 0x0, 0x0, _cstring_fontscale, 0x14, 0x1, 0xffffffff, 0x0, _Z20HudElem_SetFontScaleP14game_hudelem_si, 0x0, _cstring_font, 0x18, 0x0, 0xffffffff, 0x0, _Z15HudElem_SetFontP14game_hudelem_si, _Z15HudElem_GetFontP14game_hudelem_si, _cstring_alignx, 0x1c, 0x0, 0x3, 0x2, _Z17HudElem_SetAlignXP14game_hudelem_si, _Z17HudElem_GetAlignXP14game_hudelem_si, _cstring_aligny, 0x1c, 0x0, 0x3, 0x0, _Z17HudElem_SetAlignYP14game_hudelem_si, _Z17HudElem_GetAlignYP14game_hudelem_si, _cstring_horzalign, 0x20, 0x0, 0x7, 0x3, _Z20HudElem_SetHorzAlignP14game_hudelem_si, _Z20HudElem_GetHorzAlignP14game_hudelem_si, _cstring_vertalign, 0x20, 0x0, 0x7, 0x0, _Z20HudElem_SetVertAlignP14game_hudelem_si, _Z20HudElem_GetVertAlignP14game_hudelem_si, _cstring_color, 0x24, 0x0, 0xffffffff, 0x0, _Z16HudElem_SetColorP14game_hudelem_si, _Z16HudElem_GetColorP14game_hudelem_si, _cstring_alpha, 0x24, 0x0, 0xffffffff, 0x0, _Z16HudElem_SetAlphaP14game_hudelem_si, _Z16HudElem_GetAlphaP14game_hudelem_si, _cstring_label, 0x34, 0x0, 0xffffffff, 0x0, _Z26HudElem_SetLocalizedStringP14game_hudelem_si, 0x0, _cstring_sort, 0x80, 0x1, 0x0, 0x0, 0x0, 0x0, _cstring_foreground, 0x9c, 0x0, 0xffffffff, 0x0, _Z25HudElem_SetFlagForegroundP14game_hudelem_si, _Z25HudElem_GetFlagForegroundP14game_hudelem_si, _cstring_hidewhendead, 0x9c, 0x0, 0xffffffff, 0x0, _Z27HudElem_SetFlagHideWhenDeadP14game_hudelem_si, _Z27HudElem_GetFlagHideWhenDeadP14game_hudelem_si, _cstring_hidewheninmenu, 0x9c, 0x0, 0xffffffff, 0x0, _Z29HudElem_SetFlagHideWhenInMenuP14game_hudelem_si, _Z29HudElem_GetFlagHideWhenInMenuP14game_hudelem_si, _cstring_glowcolor, 0x84, 0x0, 0xffffffff, 0x0, _Z20HudElem_SetGlowColorP14game_hudelem_si, _Z20HudElem_GetGlowColorP14game_hudelem_si, _cstring_glowalpha, 0x84, 0x0, 0xffffffff, 0x0, _Z20HudElem_SetGlowAlphaP14game_hudelem_si, _Z20HudElem_GetGlowAlphaP14game_hudelem_si, _cstring_archived, 0xa8, 0x0, 0xffffffff, 0x0, _Z18HudElem_SetBooleanP14game_hudelem_si, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


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
_cstring_settargetent_cal:		db "SetTargetEnt() called on a non-broadcasting entity, may not show in client snapshots.",0
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

