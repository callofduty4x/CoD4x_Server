;Imports of ui_expressions:
	extern CL_IsCgameInitialized
	extern Com_PrintError
	extern Q_stricmp
	extern CG_GetHudAlphaAmmoCounter
	extern CG_GetHudAlphaDPad
	extern CG_GetHudAlphaCompass
	extern cgArray
	extern uiscript_debug
	extern Com_Printf
	extern CG_GetTeamName
	extern CL_ControllerIndexFromClientNum
	extern LiveStorage_GetStat
	extern atoi
	extern floorf
	extern snprintf
	extern useFastFile
	extern StringTable_GetAsset
	extern StringTable_Lookup
	extern Com_sprintf
	extern __maskrune
	extern va
	extern Cvar_VariableBooleanValue
	extern SEH_LocalizeTextMessage
	extern Com_Error
	extern Com_PrintWarning
	extern memset
	extern g_expOperatorNames
	extern atof
	extern validOperations
	extern Sys_Milliseconds
	extern memcpy
	extern cosf
	extern clientUIActives
	extern cgsArray
	extern CG_IsIntermission
	extern sinf
	extern CL_IsUIActive
	extern Con_IsValidGameMessageWindow
	extern g_gametype
	extern UI_GetGameTypeDisplayName
	extern CG_IsScoreboardDisplayed
	extern CG_IsSelectingLocation
	extern CG_Flashbanged
	extern CG_ScopeIsOverlayed
	extern Con_IsGameMessageWindowActive
	extern UI_GetScoreAtRank
	extern CG_ActionSlotIsUsable
	extern CG_JavelinADS
	extern CG_GetGametypeDescription
	extern CG_UICheckWeapLockBlink
	extern CG_UICheckWeapLockAttackTop
	extern CG_UICheckWeapLockAttackDirect
	extern UI_GetLocalVarsContext
	extern UILocalVar_Find
	extern UILocalVar_GetInt
	extern UILocalVar_GetBool
	extern Cvar_GetVariantString
	extern UILocalVar_GetFloat
	extern CG_GetPlayerTeamName
	extern Cvar_FindVar
	extern UI_GetKeyBindingLocalizedStringSingle
	extern UILocalVar_GetString
	extern Menu_IsMenuOpenAndVisible
	extern CG_GetPlayerOpposingTeamName
	extern CG_IsPlayerDead
	extern CG_GetPlayerClipAmmoCount
	extern CG_LookingThroughNightVision
	extern UI_GetOurClientScore

;Exports of ui_expressions:
	global g_releaseBuildStatement
	global s_operatorPrecedence
	global _ZZ25SecondsToCountdownDisplayiiP7OperandE12resultString
	global GetHudFade
	global _ZZ13GetKeyBindingiP7OperandS0_E12resultString
	global GetFieldForTeam
	global GetPlayerStatRangeBitsSet
	global _ZZ20SecondsToTimeDisplayiP7OperandS0_E12resultString
	global SecondsToTimeDisplay
	global TableLookup
	global LocalizeString
	global EvaluateExpression
	global _ZZ25GetExpressionResultStringiPK11statement_sE12lastWarnTime
	global _ZZ25GetExpressionResultStringiPK11statement_sE12resultString
	global RunLogicOp
	global GetSourceInt
	global IsExpressionTrue
	global GetExpressionFloat
	global GetOperationFunction
	global GetExpressionResultString
	global RunOp


SECTION .text


;GetHudFade(int, Operand*, Operand*)
GetHudFade:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, eax
	mov edi, edx
	mov esi, ecx
	mov [esp], eax
	call CL_IsCgameInitialized
	test eax, eax
	jz GetHudFade_10
	mov dword [esi], 0x1
	mov eax, [edi]
	cmp eax, 0x2
	jz GetHudFade_20
	cmp eax, 0x1
	jz GetHudFade_30
	cmp eax, 0x2
	jz GetHudFade_40
	test eax, eax
	jz GetHudFade_50
	mov eax, _cstring_null
GetHudFade_90:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_must_use_a
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [esi+0x4], 0x0
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
GetHudFade_140:
	mov eax, [edi]
	cmp eax, 0x1
	jz GetHudFade_60
	cmp eax, 0x2
	jz GetHudFade_70
	test eax, eax
	jz GetHudFade_80
	mov eax, _cstring_null
GetHudFade_150:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_argument_t
	mov dword [esp], 0xd
	call Com_PrintError
GetHudFade_10:
	mov dword [esi+0x4], 0x0
GetHudFade_120:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
GetHudFade_50:
	mov eax, _cstring_int
	jmp GetHudFade_90
GetHudFade_20:
	mov dword [esp+0x4], _cstring_dpad
	mov eax, [edi+0x4]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz GetHudFade_100
	mov dword [esp+0x4], _cstring_weapon
	mov eax, [edi+0x4]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz GetHudFade_110
	mov [esp], ebx
	call CG_GetHudAlphaAmmoCounter
	fstp dword [esi+0x4]
	jmp GetHudFade_120
GetHudFade_30:
	mov eax, _cstring_float
	jmp GetHudFade_90
GetHudFade_40:
	mov eax, _cstring_string
	jmp GetHudFade_90
GetHudFade_100:
	mov [esp], ebx
	call CG_GetHudAlphaDPad
	fstp dword [esi+0x4]
	jmp GetHudFade_120
GetHudFade_110:
	mov dword [esp+0x4], _cstring_compass
	mov eax, [edi+0x4]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz GetHudFade_130
	mov [esp], ebx
	call CG_GetHudAlphaCompass
	fstp dword [esi+0x4]
	jmp GetHudFade_120
GetHudFade_130:
	mov dword [esp+0x4], _cstring_scoreboard
	mov eax, [edi+0x4]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz GetHudFade_140
	mov dword [esi+0x4], 0x3f800000
	jmp GetHudFade_120
GetHudFade_60:
	mov eax, _cstring_float
	jmp GetHudFade_150
GetHudFade_80:
	mov eax, _cstring_int
	jmp GetHudFade_150
GetHudFade_70:
	mov eax, _cstring_string
	jmp GetHudFade_150
	nop


;GetFieldForTeam(int, team_t, Operand*, Operand*)
GetFieldForTeam:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, edx
	mov ebx, ecx
	mov esi, [ebp+0x8]
	mov eax, [ecx]
	cmp eax, 0x2
	jz GetFieldForTeam_10
	cmp eax, 0x1
	jz GetFieldForTeam_20
	cmp eax, 0x2
	jz GetFieldForTeam_30
	test eax, eax
	jz GetFieldForTeam_40
	mov eax, _cstring_null
GetFieldForTeam_50:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_must_use_a1
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [esi], 0x2
	mov dword [esi+0x4], _cstring_null
GetFieldForTeam_70:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
GetFieldForTeam_20:
	mov eax, _cstring_float
	jmp GetFieldForTeam_50
GetFieldForTeam_40:
	mov eax, _cstring_int
	jmp GetFieldForTeam_50
GetFieldForTeam_30:
	mov eax, _cstring_string
	jmp GetFieldForTeam_50
GetFieldForTeam_10:
	mov dword [esp+0x4], _cstring_score
	mov eax, [ecx+0x4]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz GetFieldForTeam_60
	mov dword [esi], 0x0
	mov eax, cgArray
	mov edx, [eax+edi*4+0x4f8ac]
	mov [esi+0x4], edx
	mov eax, uiscript_debug
	mov eax, [eax]
	mov esi, [eax+0xc]
	test esi, esi
	jz GetFieldForTeam_70
	mov [esp+0x10], edx
	mov eax, [ebx+0x4]
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_teami_s___i
	mov dword [esp], 0xd
	call Com_Printf
	jmp GetFieldForTeam_70
GetFieldForTeam_60:
	mov dword [esp+0x4], _cstring_name
	mov eax, [ebx+0x4]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz GetFieldForTeam_80
	mov dword [esi], 0x2
	mov [esp], edi
	call CG_GetTeamName
	mov edx, eax
	mov [esi+0x4], eax
	mov eax, uiscript_debug
	mov eax, [eax]
	mov ecx, [eax+0xc]
	test ecx, ecx
	jz GetFieldForTeam_70
	mov [esp+0x10], edx
	mov eax, [ebx+0x4]
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_teami_s___s
	mov dword [esp], 0xd
	call Com_Printf
	jmp GetFieldForTeam_70
GetFieldForTeam_80:
	mov eax, [ebx+0x4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_unknown_te
	mov dword [esp], 0xd
	call Com_Printf
	mov dword [esi], 0x0
	mov dword [esi+0x4], 0x0
	jmp GetFieldForTeam_70


;GetPlayerStatRangeBitsSet(int, OperandList*, Operand*)
GetPlayerStatRangeBitsSet:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov esi, eax
	mov ebx, edx
	mov [ebp-0x24], ecx
	mov eax, [edx+0x50]
	cmp eax, 0x3
	jz GetPlayerStatRangeBitsSet_10
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_ui_expression_er
	mov dword [esp], 0xd
	call Com_PrintError
	mov eax, [ebp-0x24]
	mov dword [eax], 0x0
	mov dword [eax+0x4], 0x0
GetPlayerStatRangeBitsSet_110:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
GetPlayerStatRangeBitsSet_10:
	mov eax, [edx]
	cmp eax, 0x2
	jz GetPlayerStatRangeBitsSet_20
	sub eax, 0x1
	jz GetPlayerStatRangeBitsSet_30
	mov eax, [edx+0x4]
	mov [ebp-0x20], eax
GetPlayerStatRangeBitsSet_140:
	lea eax, [ebx+0x8]
	mov edx, [ebx+0x8]
	cmp edx, 0x2
	jz GetPlayerStatRangeBitsSet_40
	sub edx, 0x1
	jz GetPlayerStatRangeBitsSet_50
	mov eax, [eax+0x4]
	mov [ebp-0x1c], eax
GetPlayerStatRangeBitsSet_130:
	lea eax, [ebx+0x10]
	mov edx, [ebx+0x10]
	cmp edx, 0x2
	jz GetPlayerStatRangeBitsSet_60
	sub edx, 0x1
	jz GetPlayerStatRangeBitsSet_70
	mov edi, [eax+0x4]
GetPlayerStatRangeBitsSet_120:
	mov edx, [ebp-0x1c]
	cmp [ebp-0x20], edx
	jle GetPlayerStatRangeBitsSet_80
	mov [esp+0xc], edx
	mov eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_ui_expression_er1
	mov dword [esp], 0xd
	call Com_PrintError
	mov edx, [ebp-0x24]
	mov dword [edx], 0x0
	mov dword [edx+0x4], 0x0
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
GetPlayerStatRangeBitsSet_80:
	mov edx, [ebp-0x24]
	mov dword [edx], 0x0
	mov dword [edx+0x4], 0x0
	mov [esp], esi
	call CL_ControllerIndexFromClientNum
	mov esi, eax
	mov ebx, [ebp-0x20]
GetPlayerStatRangeBitsSet_100:
	mov [esp+0x4], ebx
	mov [esp], esi
	call LiveStorage_GetStat
	test eax, edi
	jnz GetPlayerStatRangeBitsSet_90
	add ebx, 0x1
	cmp [ebp-0x1c], ebx
	jge GetPlayerStatRangeBitsSet_100
GetPlayerStatRangeBitsSet_150:
	mov eax, uiscript_debug
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz GetPlayerStatRangeBitsSet_110
	mov edx, [ebp-0x24]
	mov eax, [edx+0x4]
	mov [esp+0x14], eax
	mov [esp+0x10], edi
	mov eax, [ebp-0x1c]
	mov [esp+0xc], eax
	mov edx, [ebp-0x20]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_statrangeanybits
	mov dword [esp], 0xd
	call Com_Printf
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
GetPlayerStatRangeBitsSet_70:
	cvttss2si edi, [eax+0x4]
	jmp GetPlayerStatRangeBitsSet_120
GetPlayerStatRangeBitsSet_50:
	cvttss2si eax, [eax+0x4]
	mov [ebp-0x1c], eax
	jmp GetPlayerStatRangeBitsSet_130
GetPlayerStatRangeBitsSet_30:
	cvttss2si edx, [edx+0x4]
	mov [ebp-0x20], edx
	jmp GetPlayerStatRangeBitsSet_140
GetPlayerStatRangeBitsSet_90:
	mov eax, [ebp-0x24]
	mov dword [eax+0x4], 0x1
	jmp GetPlayerStatRangeBitsSet_150
GetPlayerStatRangeBitsSet_60:
	mov eax, [eax+0x4]
	mov [esp], eax
	call atoi
	mov edi, eax
	jmp GetPlayerStatRangeBitsSet_120
GetPlayerStatRangeBitsSet_40:
	mov eax, [eax+0x4]
	mov [esp], eax
	call atoi
	mov [ebp-0x1c], eax
	jmp GetPlayerStatRangeBitsSet_130
GetPlayerStatRangeBitsSet_20:
	mov eax, [edx+0x4]
	mov [esp], eax
	call atoi
	mov [ebp-0x20], eax
	jmp GetPlayerStatRangeBitsSet_140
	nop


;SecondsToTimeDisplay(int, Operand*, Operand*)
SecondsToTimeDisplay:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov eax, [ebp+0xc]
	mov edi, [ebp+0x10]
	mov edx, [eax]
	cmp edx, 0x1
	jz SecondsToTimeDisplay_10
	test edx, edx
	jnz SecondsToTimeDisplay_20
	mov eax, [eax+0x4]
SecondsToTimeDisplay_40:
	cvtsi2ss xmm0, eax
	divss xmm0, dword [_float_60_00000000]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x1c]
	cvttss2si ecx, [ebp-0x1c]
	mov esi, 0x88888889
	mov eax, ecx
	imul esi
	add edx, ecx
	sar edx, 0x5
	mov ebx, ecx
	sar ebx, 0x1f
	sub edx, ebx
	lea eax, [edx*4]
	shl edx, 0x6
	sub edx, eax
	mov eax, ecx
	sub eax, edx
	mov [esp+0x14], eax
	mov edx, 0xb60b60b7
	mov eax, ecx
	imul edx
	add edx, ecx
	sar edx, 0xa
	sub edx, ebx
	mov [ebp-0x2c], edx
	lea ebx, [edx+edx*2]
	mov eax, ebx
	shl eax, 0x4
	sub eax, ebx
	shl eax, 0x5
	sub ecx, eax
	mov eax, ecx
	imul esi
	lea eax, [edx+ecx]
	sar eax, 0x5
	sar ecx, 0x1f
	sub eax, ecx
	mov [esp+0x10], eax
	mov eax, [ebp-0x2c]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_id_ih_im
	mov dword [esp+0x4], 0x80
	mov dword [esp], _ZZ20SecondsToTimeDisplayiP7OperandS0_E12resultString
	call snprintf
	mov dword [edi], 0x2
	mov dword [edi+0x4], _ZZ20SecondsToTimeDisplayiP7OperandS0_E12resultString
	mov eax, uiscript_debug
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jnz SecondsToTimeDisplay_30
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SecondsToTimeDisplay_20:
	mov eax, [eax+0x4]
	mov [esp], eax
	call atoi
	jmp SecondsToTimeDisplay_40
SecondsToTimeDisplay_30:
	mov dword [ebp+0x10], _ZZ20SecondsToTimeDisplayiP7OperandS0_E12resultString
	mov dword [ebp+0xc], _cstring_secondstotime__s
	mov dword [ebp+0x8], 0xd
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Com_Printf
SecondsToTimeDisplay_10:
	cvttss2si eax, [eax+0x4]
	jmp SecondsToTimeDisplay_40


;TableLookup(int, OperandList*, Operand*)
TableLookup:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov edi, edx
	mov [ebp-0x54], ecx
	mov eax, useFastFile
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz TableLookup_10
	mov dword [ecx], 0x2
	mov dword [ecx+0x4], _cstring_null
TableLookup_150:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
TableLookup_10:
	mov eax, [edx+0x50]
	cmp eax, 0x4
	jz TableLookup_20
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_ui_expression_er2
	mov dword [esp], 0xd
	call Com_PrintError
	mov edx, [ebp-0x54]
	mov dword [edx], 0x2
	mov dword [edx+0x4], _cstring_null
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
TableLookup_20:
	mov ecx, [edx]
	mov ebx, [edx+0x4]
	mov esi, ecx
	cmp ecx, 0x2
	jz TableLookup_30
	mov eax, [currentTempOperand]
	mov edx, eax
	shl edx, 0x8
	add edx, s_tempOperandValueAsString
	mov [ebp-0x3c], edx
	add eax, 0x1
	and eax, 0x8000000f
	js TableLookup_40
TableLookup_390:
	mov [currentTempOperand], eax
	test esi, esi
	jz TableLookup_50
	sub esi, 0x1
	jz TableLookup_60
TableLookup_320:
	mov edx, [ebp-0x3c]
TableLookup_280:
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], edx
	call StringTable_GetAsset
	mov edx, [ebp-0x54]
	mov dword [edx], 0x2
	lea eax, [edi+0x18]
	mov [ebp-0x38], eax
	mov eax, [edi+0x18]
	cmp eax, 0x1
	jz TableLookup_70
	test eax, eax
	jnz TableLookup_80
	mov eax, [ebp-0x38]
	mov eax, [eax+0x4]
	mov [ebp-0x50], eax
TableLookup_290:
	mov ecx, [edi+0x10]
	mov ebx, [edi+0x14]
	mov esi, ecx
	cmp ecx, 0x2
	jz TableLookup_90
	mov eax, [currentTempOperand]
	mov edx, eax
	shl edx, 0x8
	add edx, s_tempOperandValueAsString
	mov [ebp-0x34], edx
	add eax, 0x1
	and eax, 0x8000000f
	js TableLookup_100
TableLookup_380:
	mov [currentTempOperand], eax
	test esi, esi
	jz TableLookup_110
	sub esi, 0x1
	jz TableLookup_120
TableLookup_310:
	mov ebx, [ebp-0x34]
TableLookup_90:
	lea edx, [edi+0x8]
	mov [ebp-0x30], edx
	mov eax, [edi+0x8]
	cmp eax, 0x1
	jz TableLookup_130
	test eax, eax
	jnz TableLookup_140
	mov edx, [ebp-0x30]
	mov eax, [edx+0x4]
TableLookup_300:
	mov edx, [ebp-0x50]
	mov [esp+0xc], edx
	mov [esp+0x8], ebx
	mov [esp+0x4], eax
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call StringTable_Lookup
	mov [ebp-0x4c], eax
	mov edx, [ebp-0x54]
	mov [edx+0x4], eax
	mov eax, uiscript_debug
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz TableLookup_150
	mov edx, [ebp-0x38]
	mov eax, [edx]
	cmp eax, 0x1
	jz TableLookup_160
	test eax, eax
	jnz TableLookup_170
	mov edx, [ebp-0x38]
	mov edx, [edx+0x4]
	mov [ebp-0x48], edx
TableLookup_370:
	mov ecx, [edi+0x10]
	mov ebx, [edi+0x14]
	mov esi, ecx
	cmp ecx, 0x2
	jz TableLookup_180
	mov eax, [currentTempOperand]
	mov edx, eax
	shl edx, 0x8
	add edx, s_tempOperandValueAsString
	mov [ebp-0x2c], edx
	add eax, 0x1
	and eax, 0x8000000f
	js TableLookup_190
TableLookup_410:
	mov [currentTempOperand], eax
	test esi, esi
	jz TableLookup_200
	sub esi, 0x1
	jz TableLookup_210
TableLookup_400:
	mov edx, [ebp-0x2c]
	mov [ebp-0x44], edx
TableLookup_360:
	mov edx, [ebp-0x30]
	mov eax, [edx]
	cmp eax, 0x1
	jz TableLookup_220
	test eax, eax
	jnz TableLookup_230
	mov edx, [ebp-0x30]
	mov edx, [edx+0x4]
	mov [ebp-0x40], edx
TableLookup_350:
	mov ecx, [edi]
	mov ebx, [edi+0x4]
	mov esi, ecx
	cmp ecx, 0x2
	jz TableLookup_240
	mov eax, [currentTempOperand]
	mov edx, eax
	shl edx, 0x8
	lea edi, [edx+s_tempOperandValueAsString]
	add eax, 0x1
	and eax, 0x8000000f
	js TableLookup_250
TableLookup_420:
	mov [currentTempOperand], eax
	test esi, esi
	jz TableLookup_260
	sub esi, 0x1
	jz TableLookup_270
TableLookup_330:
	mov eax, edi
TableLookup_340:
	mov edx, [ebp-0x4c]
	mov [esp+0x18], edx
	mov edx, [ebp-0x48]
	mov [esp+0x14], edx
	mov edx, [ebp-0x44]
	mov [esp+0x10], edx
	mov edx, [ebp-0x40]
	mov [esp+0xc], edx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_tablelookup_s_i_
	mov dword [esp], 0xd
	call Com_Printf
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
TableLookup_30:
	mov edx, ebx
	jmp TableLookup_280
TableLookup_70:
	mov edx, [ebp-0x38]
	cvttss2si edx, [edx+0x4]
	mov [ebp-0x50], edx
	jmp TableLookup_290
TableLookup_130:
	cvttss2si eax, [edx+0x4]
	jmp TableLookup_300
TableLookup_80:
	mov edx, [ebp-0x38]
	mov eax, [edx+0x4]
	mov [esp], eax
	call atoi
	mov [ebp-0x50], eax
	jmp TableLookup_290
TableLookup_140:
	mov edx, [ebp-0x30]
	mov eax, [edx+0x4]
	mov [esp], eax
	call atoi
	jmp TableLookup_300
TableLookup_110:
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_i
	mov dword [esp+0x4], 0x100
	mov eax, [ebp-0x34]
	mov [esp], eax
	call Com_sprintf
	jmp TableLookup_310
TableLookup_50:
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_i
	mov dword [esp+0x4], 0x100
	mov eax, [ebp-0x3c]
	mov [esp], eax
	call Com_sprintf
	jmp TableLookup_320
TableLookup_120:
	mov [ebp-0x5c], ebx
	movss xmm0, dword [ebp-0x5c]
	cvtss2sd xmm0, xmm0
	movsd [esp+0xc], xmm0
	mov dword [esp+0x8], _cstring_f
	mov dword [esp+0x4], 0x100
	mov eax, [ebp-0x34]
	mov [esp], eax
	call Com_sprintf
	jmp TableLookup_310
TableLookup_60:
	mov [ebp-0x5c], ebx
	movss xmm0, dword [ebp-0x5c]
	cvtss2sd xmm0, xmm0
	movsd [esp+0xc], xmm0
	mov dword [esp+0x8], _cstring_f
	mov dword [esp+0x4], 0x100
	mov eax, [ebp-0x3c]
	mov [esp], eax
	call Com_sprintf
	jmp TableLookup_320
TableLookup_270:
	mov [ebp-0x5c], ebx
	movss xmm0, dword [ebp-0x5c]
	cvtss2sd xmm0, xmm0
	movsd [esp+0xc], xmm0
	mov dword [esp+0x8], _cstring_f
	mov dword [esp+0x4], 0x100
	mov [esp], edi
	call Com_sprintf
	jmp TableLookup_330
TableLookup_240:
	mov eax, ebx
	jmp TableLookup_340
TableLookup_220:
	cvttss2si eax, [edx+0x4]
	mov [ebp-0x40], eax
	jmp TableLookup_350
TableLookup_180:
	mov [ebp-0x44], ebx
	jmp TableLookup_360
TableLookup_160:
	cvttss2si eax, [edx+0x4]
	mov [ebp-0x48], eax
	jmp TableLookup_370
TableLookup_100:
	sub eax, 0x1
	or eax, 0xfffffff0
	add eax, 0x1
	jmp TableLookup_380
TableLookup_40:
	sub eax, 0x1
	or eax, 0xfffffff0
	add eax, 0x1
	jmp TableLookup_390
TableLookup_170:
	mov edx, [ebp-0x38]
	mov eax, [edx+0x4]
	mov [esp], eax
	call atoi
	mov [ebp-0x48], eax
	jmp TableLookup_370
TableLookup_260:
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_i
	mov dword [esp+0x4], 0x100
	mov [esp], edi
	call Com_sprintf
	jmp TableLookup_330
TableLookup_200:
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_i
	mov dword [esp+0x4], 0x100
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call Com_sprintf
	jmp TableLookup_400
TableLookup_230:
	mov edx, [ebp-0x30]
	mov eax, [edx+0x4]
	mov [esp], eax
	call atoi
	mov [ebp-0x40], eax
	jmp TableLookup_350
TableLookup_190:
	sub eax, 0x1
	or eax, 0xfffffff0
	add eax, 0x1
	jmp TableLookup_410
TableLookup_250:
	sub eax, 0x1
	or eax, 0xfffffff0
	add eax, 0x1
	jmp TableLookup_420
TableLookup_210:
	mov [ebp-0x5c], ebx
	movss xmm0, dword [ebp-0x5c]
	cvtss2sd xmm0, xmm0
	movsd [esp+0xc], xmm0
	mov dword [esp+0x8], _cstring_f
	mov dword [esp+0x4], 0x100
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call Com_sprintf
	jmp TableLookup_400


;LocalizeString(OperandList*, Operand*)
LocalizeString:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x45c
	mov [ebp-0x42c], eax
	mov [ebp-0x430], edx
	mov edx, [eax+0x50]
	test edx, edx
	jle LocalizeString_10
	mov dword [ebp-0x428], 0x0
	mov dword [ebp-0x424], 0x0
	mov [ebp-0x434], eax
	cmp dword [eax], 0x2
	jz LocalizeString_20
LocalizeString_190:
	mov ecx, [eax]
	mov ebx, [eax+0x4]
	mov esi, ecx
	cmp ecx, 0x2
	jz LocalizeString_30
	mov eax, [currentTempOperand]
	mov edx, eax
	shl edx, 0x8
	lea edi, [edx+s_tempOperandValueAsString]
	add eax, 0x1
	and eax, 0x8000000f
	js LocalizeString_40
LocalizeString_380:
	mov [currentTempOperand], eax
	test esi, esi
	jz LocalizeString_50
	sub esi, 0x1
	jz LocalizeString_60
LocalizeString_370:
	mov [ebp-0x41c], edi
LocalizeString_360:
	cld
	xor eax, eax
	mov ecx, 0xffffffff
	repne scasb
	not ecx
	mov esi, ecx
	sub esi, 0x1
	jz LocalizeString_70
	xor edi, edi
	jmp LocalizeString_80
LocalizeString_110:
	movsx edx, byte [ebx]
	test edx, 0xffffff80
	jnz LocalizeString_90
LocalizeString_120:
	mov eax, [0xd5cc084]
	mov eax, [eax+edx*4+0x34]
	shr eax, 0x8
	and eax, 0x1
	test eax, eax
	jnz LocalizeString_100
LocalizeString_130:
	add edi, 0x1
	cmp esi, edi
	jz LocalizeString_70
LocalizeString_80:
	mov eax, [ebp-0x41c]
	lea ebx, [edi+eax]
	movzx edx, byte [ebx]
	lea eax, [edx-0x14]
	cmp al, 0x2
	ja LocalizeString_110
	movsx eax, dl
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_bad_escape
	mov dword [esp], 0xd
	call Com_PrintError
	movsx edx, byte [ebx]
	test edx, 0xffffff80
	jz LocalizeString_120
LocalizeString_90:
	mov dword [esp+0x4], 0x100
	mov [esp], edx
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	test eax, eax
	jz LocalizeString_130
LocalizeString_100:
	mov edx, [ebp-0x41c]
	mov [esp+0x4], edx
	mov dword [esp], _cstring_nonlocalized_ui_
	call va
	mov ebx, eax
	mov dword [esp], _cstring_loc_warnings
	call Cvar_VariableBooleanValue
	test al, al
	jnz LocalizeString_140
LocalizeString_70:
	mov edx, [ebp-0x424]
	lea eax, [esi+edx+0x1]
	cmp eax, 0x3ff
	ja LocalizeString_150
LocalizeString_350:
	test esi, esi
	jz LocalizeString_160
	mov edx, [ebp-0x424]
	mov byte [ebp+edx-0x418], 0x15
	add edx, 0x1
	mov [ebp-0x424], edx
LocalizeString_340:
	lea edi, [ebp-0x418]
	add edi, [ebp-0x424]
	xor ebx, ebx
LocalizeString_170:
	mov eax, [ebp-0x41c]
	movzx ecx, byte [eax+ebx]
	lea edx, [ecx-0x14]
	mov eax, 0x2e
	cmp dl, 0x2
	cmova eax, ecx
	mov [edi], al
	add ebx, 0x1
	add edi, 0x1
	cmp esi, ebx
	jnz LocalizeString_170
	add [ebp-0x424], ebx
LocalizeString_160:
	add dword [ebp-0x428], 0x1
	add dword [ebp-0x434], 0x8
	mov eax, [ebp-0x428]
	mov edx, [ebp-0x42c]
	cmp eax, [edx+0x50]
	jge LocalizeString_180
	mov eax, [ebp-0x434]
	cmp dword [eax], 0x2
	jnz LocalizeString_190
LocalizeString_20:
	mov ecx, [eax]
	mov ebx, [eax+0x4]
	mov esi, ecx
	cmp ecx, 0x2
	jz LocalizeString_200
	mov eax, [currentTempOperand]
	mov edx, eax
	shl edx, 0x8
	lea edi, [edx+s_tempOperandValueAsString]
	add eax, 0x1
	and eax, 0x8000000f
	js LocalizeString_210
LocalizeString_450:
	mov [currentTempOperand], eax
	test esi, esi
	jz LocalizeString_220
	sub esi, 0x1
	jz LocalizeString_230
LocalizeString_420:
	mov [ebp-0x420], edi
LocalizeString_390:
	cld
	xor eax, eax
	mov ecx, 0xffffffff
	repne scasb
	not ecx
	lea edi, [ecx-0x1]
	cmp edi, 0x1
	jbe LocalizeString_160
	mov eax, [ebp-0x420]
	cmp byte [eax], 0x40
	jz LocalizeString_240
	mov [esp+0x4], eax
	mov dword [esp], _cstring_illegal_localize
	call va
	mov ebx, eax
	mov dword [esp], _cstring_loc_warnings
	call Cvar_VariableBooleanValue
	test al, al
	jnz LocalizeString_250
LocalizeString_240:
	cmp edi, 0x1
	jle LocalizeString_260
	mov esi, 0x1
	jmp LocalizeString_270
LocalizeString_300:
	mov eax, [0xd5cc084]
	test dword [eax+edx*4+0x34], 0x500
	setnz al
	movzx eax, al
LocalizeString_310:
	test eax, eax
	jnz LocalizeString_280
	cmp byte [ebx], 0x5f
	jz LocalizeString_280
	mov edx, [ebp-0x420]
	mov [esp+0x4], edx
	mov dword [esp], _cstring_illegal_localize1
	call va
	mov ebx, eax
	mov dword [esp], _cstring_loc_warnings
	call Cvar_VariableBooleanValue
	test al, al
	jnz LocalizeString_290
LocalizeString_280:
	add esi, 0x1
	cmp edi, esi
	jz LocalizeString_260
LocalizeString_270:
	mov ebx, [ebp-0x420]
	add ebx, esi
	movsx edx, byte [ebx]
	test edx, 0xffffff80
	jz LocalizeString_300
	mov dword [esp+0x4], 0x500
	mov [esp], edx
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	jmp LocalizeString_310
LocalizeString_260:
	mov eax, [ebp-0x420]
	add eax, 0x1
	mov [ebp-0x41c], eax
	lea esi, [edi-0x1]
	mov edx, [ebp-0x424]
	lea eax, [esi+edx+0x1]
	cmp eax, 0x3ff
	ja LocalizeString_320
LocalizeString_410:
	mov eax, [ebp-0x424]
	test eax, eax
	jz LocalizeString_330
	mov edx, [ebp-0x424]
	mov byte [ebp+edx-0x418], 0x14
	add edx, 0x1
	mov [ebp-0x424], edx
LocalizeString_330:
	test esi, esi
	jnz LocalizeString_340
	jmp LocalizeString_160
LocalizeString_10:
	mov dword [ebp-0x424], 0x0
LocalizeString_180:
	mov edx, [ebp-0x424]
	mov byte [ebp+edx-0x418], 0x0
	mov eax, [ebp-0x430]
	mov dword [eax], 0x2
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_ui_string
	lea edx, [ebp-0x418]
	mov [esp], edx
	call SEH_LocalizeTextMessage
	mov edx, _cstring_null
	test eax, eax
	cmovnz edx, eax
	mov eax, [ebp-0x430]
	mov [eax+0x4], edx
	add esp, 0x45c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
LocalizeString_150:
	mov dword [esp+0xc], 0x400
	mov eax, [ebp-0x41c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_s_is_too_l
	mov dword [esp], 0x7
	call Com_Error
	jmp LocalizeString_350
LocalizeString_30:
	mov [ebp-0x41c], ebx
	mov edi, ebx
	jmp LocalizeString_360
LocalizeString_50:
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_i
	mov dword [esp+0x4], 0x100
	mov [esp], edi
	call Com_sprintf
	jmp LocalizeString_370
LocalizeString_40:
	sub eax, 0x1
	or eax, 0xfffffff0
	add eax, 0x1
	jmp LocalizeString_380
LocalizeString_200:
	mov [ebp-0x420], ebx
	mov edi, ebx
	jmp LocalizeString_390
LocalizeString_290:
	mov dword [esp], _cstring_loc_warningsaser
	call Cvar_VariableBooleanValue
	test al, al
	jnz LocalizeString_400
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_warning_s
	mov dword [esp], 0xd
	call Com_PrintWarning
	jmp LocalizeString_280
LocalizeString_320:
	mov dword [esp+0xc], 0x400
	mov eax, [ebp-0x41c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_s_is_too_l
	mov dword [esp], 0x7
	call Com_Error
	jmp LocalizeString_410
LocalizeString_220:
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_i
	mov dword [esp+0x4], 0x100
	mov [esp], edi
	call Com_sprintf
	jmp LocalizeString_420
LocalizeString_60:
	mov [ebp-0x43c], ebx
	movss xmm0, dword [ebp-0x43c]
	cvtss2sd xmm0, xmm0
	movsd [esp+0xc], xmm0
	mov dword [esp+0x8], _cstring_f
	mov dword [esp+0x4], 0x100
	mov [esp], edi
	call Com_sprintf
	jmp LocalizeString_370
LocalizeString_400:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_s
	mov dword [esp], 0x7
	call Com_Error
	jmp LocalizeString_280
LocalizeString_250:
	mov dword [esp], _cstring_loc_warningsaser
	call Cvar_VariableBooleanValue
	test al, al
	jz LocalizeString_430
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_s
	mov dword [esp], 0x7
	call Com_Error
	jmp LocalizeString_240
LocalizeString_140:
	mov dword [esp], _cstring_loc_warningsaser
	call Cvar_VariableBooleanValue
	test al, al
	jnz LocalizeString_440
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_warning_s
	mov dword [esp], 0xd
	call Com_PrintWarning
	jmp LocalizeString_70
LocalizeString_210:
	sub eax, 0x1
	or eax, 0xfffffff0
	add eax, 0x1
	jmp LocalizeString_450
LocalizeString_230:
	mov [ebp-0x43c], ebx
	movss xmm0, dword [ebp-0x43c]
	cvtss2sd xmm0, xmm0
	movsd [esp+0xc], xmm0
	mov dword [esp+0x8], _cstring_f
	mov dword [esp+0x4], 0x100
	mov [esp], edi
	call Com_sprintf
	jmp LocalizeString_420
LocalizeString_430:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_warning_s
	mov dword [esp], 0xd
	call Com_PrintWarning
	jmp LocalizeString_240
LocalizeString_440:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_s
	mov dword [esp], 0x7
	call Com_Error
	jmp LocalizeString_70
	nop


;EvaluateExpression(int, statement_s const*, Operand*)
EvaluateExpression:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x14ec
	mov [ebp-0x14d0], eax
	mov esi, edx
	mov [ebp-0x14d4], ecx
	mov [g_releaseBuildStatement], edx
	mov dword [esp+0x8], 0x13b4
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0x14c0]
	mov [esp], eax
	call memset
	mov dword [ebp-0x1c], 0x0
	mov eax, [esi]
	test eax, eax
	jle EvaluateExpression_10
	xor edi, edi
EvaluateExpression_100:
	mov eax, [esi+0x4]
	mov ebx, [eax+edi*4]
	mov eax, [ebx]
	cmp eax, 0x1
	jz EvaluateExpression_20
	test eax, eax
	jnz EvaluateExpression_30
	mov ecx, [ebx+0x4]
	mov [ebp-0x14cc], ecx
	cmp ecx, 0x10
	jz EvaluateExpression_40
	mov edx, [ebp-0x1c]
	mov eax, edx
	sub eax, 0x1
	mov [ebp-0x14d8], eax
	js EvaluateExpression_50
	test edx, edx
	jz EvaluateExpression_50
	cmp dword [ebp-0x14cc], 0x1
	jnz EvaluateExpression_60
	mov ecx, [ebp-0x14d8]
	mov eax, [ebp+ecx*4-0x10c]
	mov eax, [eax*4+s_operatorPrecedence]
	cmp eax, [s_operatorPrecedence+0x4]
	jge EvaluateExpression_50
EvaluateExpression_80:
	lea eax, [ebp-0x14c0]
	mov [esp+0x8], eax
	lea ecx, [ebp-0x10c]
	mov [esp+0x4], ecx
	mov eax, [ebp-0x14d0]
	mov [esp], eax
	call RunOp
	mov edx, [ebp-0x14d8]
	test edx, edx
	js EvaluateExpression_40
	mov edx, [ebp-0x1c]
	test edx, edx
	jz EvaluateExpression_70
	lea eax, [edx-0x1]
	mov [ebp-0x14d8], eax
	mov ecx, eax
	mov eax, [ebp+ecx*4-0x10c]
	mov eax, [eax*4+s_operatorPrecedence]
	cmp eax, [s_operatorPrecedence+0x4]
	jl EvaluateExpression_80
EvaluateExpression_50:
	cmp edx, 0x3c
	jz EvaluateExpression_90
EvaluateExpression_70:
	mov eax, [ebx+0x4]
	mov [ebp+edx*4-0x10c], eax
	lea eax, [edx+0x1]
	mov [ebp-0x1c], eax
EvaluateExpression_30:
	add edi, 0x1
	cmp edi, [esi]
	jl EvaluateExpression_100
EvaluateExpression_10:
	mov ebx, [ebp-0x1c]
	test ebx, ebx
	jnz EvaluateExpression_110
EvaluateExpression_130:
	mov eax, [ebp-0x110]
	cmp eax, 0x1
	jle EvaluateExpression_120
	mov dword [esp+0x4], _cstring_error_stray_oper
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [ebp-0x14d4], 0x0
EvaluateExpression_170:
	mov eax, [ebp-0x14d4]
	add esp, 0x14ec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
EvaluateExpression_110:
	lea eax, [ebp-0x14c0]
	mov [esp+0x8], eax
	lea ecx, [ebp-0x10c]
	mov [esp+0x4], ecx
	mov eax, [ebp-0x14d0]
	mov [esp], eax
	call RunOp
	mov ecx, [ebp-0x1c]
	test ecx, ecx
	jnz EvaluateExpression_110
	jmp EvaluateExpression_130
EvaluateExpression_20:
	mov eax, [ebp-0x110]
	cmp eax, 0x3c
	jz EvaluateExpression_140
	lea ecx, [eax+eax*4]
	lea ecx, [eax+ecx*4]
	mov eax, [ebx+0x4]
	mov edx, [ebx+0x8]
	mov [ebp+ecx*4-0x14c0], eax
	mov [ebp+ecx*4-0x14bc], edx
	mov eax, [ebp-0x110]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*4]
	mov dword [ebp+edx*4-0x1470], 0x1
	add dword [ebp-0x110], 0x1
	jmp EvaluateExpression_30
EvaluateExpression_40:
	mov edx, [ebp-0x1c]
	jmp EvaluateExpression_50
EvaluateExpression_120:
	test eax, eax
	jz EvaluateExpression_150
	cmp dword [ebp-0x1470], 0x1
	jg EvaluateExpression_160
	mov eax, [ebp-0x14c0]
	mov edx, [ebp-0x14bc]
	mov ecx, [ebp-0x14d4]
	mov [ecx], eax
	mov [ecx+0x4], edx
	mov eax, [ebp-0x14d4]
	add esp, 0x14ec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
EvaluateExpression_160:
	mov dword [esp+0x4], _cstring_error_more_than_
	mov dword [esp], 0xd
	call Com_PrintError
EvaluateExpression_150:
	mov dword [ebp-0x14d4], 0x0
	mov eax, [ebp-0x14d4]
	add esp, 0x14ec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
EvaluateExpression_90:
	mov dword [esp+0x4], _cstring_invalid_expressi
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [ebp-0x14d4], 0x0
	jmp EvaluateExpression_170
EvaluateExpression_140:
	mov dword [esp+0x4], _cstring_invalid_expressi1
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [ebp-0x14d4], 0x0
	jmp EvaluateExpression_170
EvaluateExpression_60:
	mov eax, [ebp-0x14d8]
	mov eax, [ebp+eax*4-0x10c]
	mov [ebp-0x14e0], eax
	mov ecx, [eax*4+s_operatorPrecedence]
	mov [ebp-0x14dc], ecx
	mov eax, [ebp-0x14cc]
	cmp ecx, [eax*4+s_operatorPrecedence]
	jge EvaluateExpression_180
	cmp ecx, 0x5
	jz EvaluateExpression_180
EvaluateExpression_190:
	lea ecx, [ebp-0x14c0]
	mov [esp+0x8], ecx
	lea eax, [ebp-0x10c]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x14d0]
	mov [esp], ecx
	call RunOp
	mov eax, [ebp-0x14d8]
	test eax, eax
	js EvaluateExpression_40
	mov edx, [ebp-0x1c]
	test edx, edx
	jz EvaluateExpression_70
	lea ecx, [edx-0x1]
	mov [ebp-0x14d8], ecx
	jmp EvaluateExpression_60
EvaluateExpression_180:
	cmp dword [ebp-0x14cc], 0x6
	ja EvaluateExpression_50
	mov eax, 0x1
	movzx ecx, byte [ebp-0x14cc]
	shl eax, cl
	test al, 0x58
	jz EvaluateExpression_50
	mov eax, [ebp-0x14e0]
	cmp [ebp-0x14cc], eax
	jz EvaluateExpression_190
	jmp EvaluateExpression_50
	nop


;RunLogicOp(int, operationEnum, OperandStack*, Operand, Operand, char const*)
RunLogicOp:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov eax, uiscript_debug
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz RunLogicOp_10
	mov ecx, [ebp+0x1c]
	mov ebx, [ebp+0x20]
	mov esi, ecx
	cmp ecx, 0x2
	jz RunLogicOp_20
	mov eax, [currentTempOperand]
	mov edx, eax
	shl edx, 0x8
	lea edi, [edx+s_tempOperandValueAsString]
	add eax, 0x1
	and eax, 0x8000000f
	js RunLogicOp_30
RunLogicOp_580:
	mov [currentTempOperand], eax
	test esi, esi
	jz RunLogicOp_40
	sub esi, 0x1
	jz RunLogicOp_50
RunLogicOp_510:
	mov [ebp-0x38], edi
	mov eax, [ebp+0x1c]
	cmp eax, 0x1
	jz RunLogicOp_60
RunLogicOp_420:
	cmp eax, 0x2
	jz RunLogicOp_70
	test eax, eax
	jz RunLogicOp_80
	mov dword [ebp-0x34], _cstring_null
RunLogicOp_460:
	mov ecx, [ebp+0x14]
	mov ebx, [ebp+0x18]
	mov esi, ecx
	cmp ecx, 0x2
	jz RunLogicOp_90
RunLogicOp_430:
	mov eax, [currentTempOperand]
	mov edx, eax
	shl edx, 0x8
	lea edi, [edx+s_tempOperandValueAsString]
	add eax, 0x1
	and eax, 0x8000000f
	js RunLogicOp_100
RunLogicOp_590:
	mov [currentTempOperand], eax
	test esi, esi
	jz RunLogicOp_110
	sub esi, 0x1
	jz RunLogicOp_120
RunLogicOp_500:
	mov edx, edi
	mov eax, [ebp+0x14]
	cmp eax, 0x1
	jz RunLogicOp_130
RunLogicOp_440:
	cmp eax, 0x2
	jz RunLogicOp_140
	test eax, eax
	jz RunLogicOp_150
	mov eax, _cstring_null
RunLogicOp_450:
	mov ecx, [ebp-0x38]
	mov [esp+0x18], ecx
	mov ebx, [ebp-0x34]
	mov [esp+0x14], ebx
	mov [esp+0x10], edx
	mov [esp+0xc], eax
	mov eax, g_expOperatorNames
	mov edx, [ebp+0xc]
	mov eax, [eax+edx*4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_running_s_on_a_s
	mov dword [esp], 0xd
	call Com_Printf
RunLogicOp_10:
	lea esi, [ebp+0x1c]
	mov [esp+0x8], esi
	lea ebx, [ebp+0x14]
	mov [esp+0x4], ebx
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call GetOperationFunction
	mov edx, eax
	test eax, eax
	jz RunLogicOp_160
	lea eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov [esp], ebx
	call edx
RunLogicOp_390:
	mov edx, [ebp+0x10]
	mov eax, [edx+0x13b0]
	lea ecx, [eax+eax*4]
	lea ecx, [eax+ecx*4]
	mov eax, [ebp-0x20]
	mov edx, [ebp-0x1c]
	mov ebx, [ebp+0x10]
	mov [ebx+ecx*4], eax
	mov [ebx+ecx*4+0x4], edx
	mov eax, [ebx+0x13b0]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*4]
	mov dword [ebx+edx*4+0x50], 0x1
	add dword [ebx+0x13b0], 0x1
	mov eax, uiscript_debug
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz RunLogicOp_170
	mov ecx, [ebp-0x20]
	mov ebx, [ebp-0x1c]
	mov esi, ecx
	cmp ecx, 0x2
	jz RunLogicOp_180
	mov eax, [currentTempOperand]
	mov edx, eax
	shl edx, 0x8
	lea edi, [edx+s_tempOperandValueAsString]
	add eax, 0x1
	and eax, 0x8000000f
	js RunLogicOp_190
RunLogicOp_560:
	mov [currentTempOperand], eax
	test esi, esi
	jz RunLogicOp_200
	sub esi, 0x1
	jz RunLogicOp_210
RunLogicOp_490:
	mov edx, edi
	mov eax, [ebp-0x20]
	cmp eax, 0x1
	jz RunLogicOp_220
RunLogicOp_400:
	cmp eax, 0x2
	jz RunLogicOp_230
	test eax, eax
	jz RunLogicOp_240
	mov eax, _cstring_null
RunLogicOp_410:
	mov [esp+0xc], edx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_result_is_a_s_s
	mov dword [esp], 0xd
	call Com_Printf
RunLogicOp_170:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
RunLogicOp_160:
	mov ecx, [ebp+0x1c]
	mov ebx, [ebp+0x20]
	mov esi, ecx
	cmp ecx, 0x2
	jz RunLogicOp_250
	mov eax, [currentTempOperand]
	mov edx, eax
	shl edx, 0x8
	lea edi, [edx+s_tempOperandValueAsString]
	add eax, 0x1
	and eax, 0x8000000f
	js RunLogicOp_260
RunLogicOp_480:
	mov [currentTempOperand], eax
	test esi, esi
	jz RunLogicOp_270
	sub esi, 0x1
	jz RunLogicOp_280
RunLogicOp_470:
	mov [ebp-0x30], edi
RunLogicOp_550:
	mov eax, [ebp+0x1c]
	cmp eax, 0x1
	jz RunLogicOp_290
	cmp eax, 0x2
	jz RunLogicOp_300
	test eax, eax
	jz RunLogicOp_310
	mov dword [ebp-0x2c], _cstring_null
RunLogicOp_540:
	mov ecx, [ebp+0x14]
	mov ebx, [ebp+0x18]
	mov esi, ecx
	cmp ecx, 0x2
	jz RunLogicOp_320
	mov eax, [currentTempOperand]
	mov edx, eax
	shl edx, 0x8
	lea edi, [edx+s_tempOperandValueAsString]
	add eax, 0x1
	and eax, 0x8000000f
	js RunLogicOp_330
RunLogicOp_600:
	mov [currentTempOperand], eax
	test esi, esi
	jz RunLogicOp_340
	sub esi, 0x1
	jz RunLogicOp_350
RunLogicOp_570:
	mov edx, edi
	mov eax, [ebp+0x14]
	cmp eax, 0x1
	jz RunLogicOp_360
RunLogicOp_520:
	cmp eax, 0x2
	jz RunLogicOp_370
	test eax, eax
	jz RunLogicOp_380
	mov eax, _cstring_null
RunLogicOp_530:
	mov ecx, [ebp-0x30]
	mov [esp+0x18], ecx
	mov ebx, [ebp-0x2c]
	mov [esp+0x14], ebx
	mov [esp+0x10], edx
	mov [esp+0xc], eax
	mov eax, [ebp+0x24]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_you_cannot
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp RunLogicOp_390
RunLogicOp_180:
	mov edx, ebx
	mov eax, [ebp-0x20]
	cmp eax, 0x1
	jnz RunLogicOp_400
RunLogicOp_220:
	mov eax, _cstring_float
	jmp RunLogicOp_410
RunLogicOp_240:
	mov eax, _cstring_int
	jmp RunLogicOp_410
RunLogicOp_20:
	mov [ebp-0x38], ebx
	mov eax, [ebp+0x1c]
	cmp eax, 0x1
	jnz RunLogicOp_420
RunLogicOp_60:
	mov dword [ebp-0x34], _cstring_float
	mov ecx, [ebp+0x14]
	mov ebx, [ebp+0x18]
	mov esi, ecx
	cmp ecx, 0x2
	jnz RunLogicOp_430
RunLogicOp_90:
	mov edx, ebx
	mov eax, [ebp+0x14]
	cmp eax, 0x1
	jnz RunLogicOp_440
RunLogicOp_130:
	mov eax, _cstring_float
	jmp RunLogicOp_450
RunLogicOp_80:
	mov dword [ebp-0x34], _cstring_int
	jmp RunLogicOp_460
RunLogicOp_270:
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_i
	mov dword [esp+0x4], 0x100
	mov [esp], edi
	call Com_sprintf
	jmp RunLogicOp_470
RunLogicOp_260:
	sub eax, 0x1
	or eax, 0xfffffff0
	add eax, 0x1
	jmp RunLogicOp_480
RunLogicOp_200:
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_i
	mov dword [esp+0x4], 0x100
	mov [esp], edi
	call Com_sprintf
	jmp RunLogicOp_490
RunLogicOp_230:
	mov eax, _cstring_string
	jmp RunLogicOp_410
RunLogicOp_150:
	mov eax, _cstring_int
	jmp RunLogicOp_450
RunLogicOp_110:
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_i
	mov dword [esp+0x4], 0x100
	mov [esp], edi
	call Com_sprintf
	jmp RunLogicOp_500
RunLogicOp_40:
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_i
	mov dword [esp+0x4], 0x100
	mov [esp], edi
	call Com_sprintf
	jmp RunLogicOp_510
RunLogicOp_70:
	mov dword [ebp-0x34], _cstring_string
	jmp RunLogicOp_460
RunLogicOp_140:
	mov eax, _cstring_string
	jmp RunLogicOp_450
RunLogicOp_320:
	mov edx, ebx
	mov eax, [ebp+0x14]
	cmp eax, 0x1
	jnz RunLogicOp_520
RunLogicOp_360:
	mov eax, _cstring_float
	jmp RunLogicOp_530
RunLogicOp_290:
	mov dword [ebp-0x2c], _cstring_float
	jmp RunLogicOp_540
RunLogicOp_250:
	mov [ebp-0x30], ebx
	jmp RunLogicOp_550
RunLogicOp_190:
	sub eax, 0x1
	or eax, 0xfffffff0
	add eax, 0x1
	jmp RunLogicOp_560
RunLogicOp_310:
	mov dword [ebp-0x2c], _cstring_int
	jmp RunLogicOp_540
RunLogicOp_380:
	mov eax, _cstring_int
	jmp RunLogicOp_530
RunLogicOp_340:
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_i
	mov dword [esp+0x4], 0x100
	mov [esp], edi
	call Com_sprintf
	jmp RunLogicOp_570
RunLogicOp_30:
	sub eax, 0x1
	or eax, 0xfffffff0
	add eax, 0x1
	jmp RunLogicOp_580
RunLogicOp_100:
	sub eax, 0x1
	or eax, 0xfffffff0
	add eax, 0x1
	jmp RunLogicOp_590
RunLogicOp_370:
	mov eax, _cstring_string
	jmp RunLogicOp_530
RunLogicOp_300:
	mov dword [ebp-0x2c], _cstring_string
	jmp RunLogicOp_540
RunLogicOp_330:
	sub eax, 0x1
	or eax, 0xfffffff0
	add eax, 0x1
	jmp RunLogicOp_600
RunLogicOp_210:
	mov [ebp-0x3c], ebx
	movss xmm0, dword [ebp-0x3c]
	cvtss2sd xmm0, xmm0
	movsd [esp+0xc], xmm0
	mov dword [esp+0x8], _cstring_f
	mov dword [esp+0x4], 0x100
	mov [esp], edi
	call Com_sprintf
	jmp RunLogicOp_490
RunLogicOp_120:
	mov [ebp-0x3c], ebx
	movss xmm0, dword [ebp-0x3c]
	cvtss2sd xmm0, xmm0
	movsd [esp+0xc], xmm0
	mov dword [esp+0x8], _cstring_f
	mov dword [esp+0x4], 0x100
	mov [esp], edi
	call Com_sprintf
	jmp RunLogicOp_500
RunLogicOp_50:
	mov [ebp-0x3c], ebx
	movss xmm0, dword [ebp-0x3c]
	cvtss2sd xmm0, xmm0
	movsd [esp+0xc], xmm0
	mov dword [esp+0x8], _cstring_f
	mov dword [esp+0x4], 0x100
	mov [esp], edi
	call Com_sprintf
	jmp RunLogicOp_510
RunLogicOp_350:
	mov [ebp-0x3c], ebx
	movss xmm0, dword [ebp-0x3c]
	cvtss2sd xmm0, xmm0
	movsd [esp+0xc], xmm0
	mov dword [esp+0x8], _cstring_f
	mov dword [esp+0x4], 0x100
	mov [esp], edi
	call Com_sprintf
	jmp RunLogicOp_570
RunLogicOp_280:
	mov [ebp-0x3c], ebx
	movss xmm0, dword [ebp-0x3c]
	cvtss2sd xmm0, xmm0
	movsd [esp+0xc], xmm0
	mov dword [esp+0x8], _cstring_f
	mov dword [esp+0x4], 0x100
	mov [esp], edi
	call Com_sprintf
	jmp RunLogicOp_470
	nop


;GetSourceInt(Operand*)
GetSourceInt:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [eax]
	cmp edx, 0x1
	jz GetSourceInt_10
	test edx, edx
	jnz GetSourceInt_20
	mov eax, [eax+0x4]
	pop ebp
	ret
GetSourceInt_20:
	mov eax, [eax+0x4]
	mov [ebp+0x8], eax
	pop ebp
	jmp atoi
GetSourceInt_10:
	cvttss2si eax, [eax+0x4]
	pop ebp
	ret
	nop


;IsExpressionTrue(int, statement_s const*)
IsExpressionTrue:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	lea ecx, [ebp-0x10]
	call EvaluateExpression
	test eax, eax
	jz IsExpressionTrue_10
	mov eax, [ebp-0x10]
	cmp eax, 0x1
	jz IsExpressionTrue_20
	test eax, eax
	jnz IsExpressionTrue_30
	mov eax, [ebp-0xc]
IsExpressionTrue_40:
	test eax, eax
	setnz al
	movzx eax, al
IsExpressionTrue_10:
	leave
	ret
IsExpressionTrue_20:
	cvttss2si eax, [ebp-0xc]
	jmp IsExpressionTrue_40
IsExpressionTrue_30:
	mov eax, [ebp-0xc]
	mov [esp], eax
	call atoi
	jmp IsExpressionTrue_40
	nop


;GetExpressionFloat(int, statement_s const*)
GetExpressionFloat:
	push ebp
	mov ebp, esp
	sub esp, 0x48
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	lea ecx, [ebp-0x10]
	call EvaluateExpression
	test eax, eax
	jz GetExpressionFloat_10
	mov eax, [ebp-0x10]
	cmp eax, 0x1
	jz GetExpressionFloat_20
	test eax, eax
	jnz GetExpressionFloat_30
	cvtsi2ss xmm0, dword [ebp-0xc]
	movss [ebp-0x2c], xmm0
	mov eax, [ebp-0x2c]
	mov [ebp-0x2c], eax
	fld dword [ebp-0x2c]
	leave
	ret
GetExpressionFloat_20:
	mov eax, [ebp-0xc]
	mov [ebp-0x2c], eax
	fld dword [ebp-0x2c]
	leave
	ret
GetExpressionFloat_30:
	mov eax, [ebp-0xc]
	mov [esp], eax
	call atof
	fstp qword [ebp-0x20]
	cvtsd2ss xmm0, [ebp-0x20]
	movss [ebp-0x2c], xmm0
	mov eax, [ebp-0x2c]
	mov [ebp-0x2c], eax
	fld dword [ebp-0x2c]
	leave
	ret
GetExpressionFloat_10:
	xor eax, eax
	mov [ebp-0x2c], eax
	fld dword [ebp-0x2c]
	leave
	ret
	nop
	add [eax], al


;GetOperationFunction(operationEnum, Operand*, Operand*)
GetOperationFunction:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov dword [ebp-0x40], 0x0
	mov dword [ebp-0x3c], 0x0
	mov dword [ebp-0x48], 0x0
	mov dword [ebp-0x44], 0x0
	mov edi, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov edx, validOperations
	mov eax, [edx]
	test eax, eax
	jz GetOperationFunction_10
	xor ecx, ecx
	jmp GetOperationFunction_20
GetOperationFunction_30:
	add ecx, 0x1
	mov eax, [edx+0x10]
	add edx, 0x10
	test eax, eax
	jz GetOperationFunction_10
GetOperationFunction_20:
	cmp eax, edi
	jnz GetOperationFunction_30
	mov eax, [edx+0x4]
	cmp eax, [esi]
	jnz GetOperationFunction_30
	mov eax, [edx+0x8]
	mov ebx, [ebp+0x10]
	cmp eax, [ebx]
	jnz GetOperationFunction_30
	shl ecx, 0x4
	mov edx, validOperations
	mov eax, [ecx+edx+0xc]
	jmp GetOperationFunction_40
GetOperationFunction_10:
	cmp dword [esi], 0x2
	jz GetOperationFunction_50
	mov edx, [ebp+0x10]
	cmp dword [edx], 0x2
	jz GetOperationFunction_60
GetOperationFunction_120:
	mov edx, validOperations
	mov eax, [edx]
	test eax, eax
	jz GetOperationFunction_70
	xor ecx, ecx
	jmp GetOperationFunction_80
GetOperationFunction_90:
	add ecx, 0x1
	mov eax, [edx+0x10]
	add edx, 0x10
	test eax, eax
	jz GetOperationFunction_70
GetOperationFunction_80:
	cmp eax, edi
	jnz GetOperationFunction_90
	mov eax, [edx+0x4]
	cmp eax, [esi]
	jnz GetOperationFunction_90
	mov eax, [edx+0x8]
	mov ebx, [ebp+0x10]
	cmp eax, [ebx]
	jnz GetOperationFunction_90
	shl ecx, 0x4
	mov ebx, validOperations
	mov eax, [ecx+ebx+0xc]
	jmp GetOperationFunction_40
GetOperationFunction_70:
	xor eax, eax
GetOperationFunction_40:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
GetOperationFunction_50:
	mov eax, [esi+0x4]
	mov [esp], eax
	call atoi
	mov ebx, eax
	mov eax, [esi+0x4]
	mov [esp], eax
	call atof
	fstp qword [ebp-0x38]
	cvtsi2sd xmm0, ebx
	ucomisd xmm0, [ebp-0x38]
	jp GetOperationFunction_100
	jz GetOperationFunction_110
GetOperationFunction_100:
	mov eax, [esi+0x4]
	mov [esp], eax
	call atof
	fstp qword [ebp-0x30]
	cvtsd2ss xmm0, [ebp-0x30]
	movss [ebp-0x3c], xmm0
	mov eax, 0x1
GetOperationFunction_150:
	mov [ebp-0x40], eax
	mov eax, [ebp-0x40]
	mov edx, [ebp-0x3c]
	mov [esi], eax
	mov [esi+0x4], edx
	mov edx, [ebp+0x10]
	cmp dword [edx], 0x2
	jnz GetOperationFunction_120
GetOperationFunction_60:
	mov eax, [edx+0x4]
	mov [esp], eax
	call atoi
	mov ebx, eax
	mov ecx, [ebp+0x10]
	mov eax, [ecx+0x4]
	mov [esp], eax
	call atof
	fstp qword [ebp-0x28]
	cvtsi2sd xmm0, ebx
	ucomisd xmm0, [ebp-0x28]
	jp GetOperationFunction_130
	jz GetOperationFunction_140
GetOperationFunction_130:
	mov ebx, [ebp+0x10]
	mov eax, [ebx+0x4]
	mov [esp], eax
	call atof
	fstp qword [ebp-0x20]
	cvtsd2ss xmm0, [ebp-0x20]
	movss [ebp-0x44], xmm0
	mov eax, 0x1
GetOperationFunction_160:
	mov [ebp-0x48], eax
	mov ecx, [ebp-0x48]
	mov ebx, [ebp-0x44]
	mov eax, [ebp+0x10]
	mov [eax], ecx
	mov [eax+0x4], ebx
	jmp GetOperationFunction_120
GetOperationFunction_110:
	mov eax, [esi+0x4]
	mov [esp], eax
	call atoi
	mov [ebp-0x3c], eax
	xor eax, eax
	jmp GetOperationFunction_150
GetOperationFunction_140:
	mov edx, [ebp+0x10]
	mov eax, [edx+0x4]
	mov [esp], eax
	call atoi
	mov [ebp-0x44], eax
	xor eax, eax
	jmp GetOperationFunction_160
	add [eax], al


;GetExpressionResultString(int, statement_s const*)
GetExpressionResultString:
	push ebp
	mov ebp, esp
	sub esp, 0x38
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	lea ecx, [ebp-0x10]
	call EvaluateExpression
	test eax, eax
	jz GetExpressionResultString_10
	mov eax, [ebp-0x10]
	cmp eax, 0x1
	jz GetExpressionResultString_20
	cmp eax, 0x2
	jz GetExpressionResultString_30
	test eax, eax
	jnz GetExpressionResultString_10
	mov eax, [ebp-0xc]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_i
	mov dword [esp+0x4], 0x100
	mov dword [esp], _ZZ25GetExpressionResultStringiPK11statement_sE12resultString
	call Com_sprintf
GetExpressionResultString_60:
	test eax, eax
	js GetExpressionResultString_40
GetExpressionResultString_50:
	mov eax, _ZZ25GetExpressionResultStringiPK11statement_sE12resultString
	leave
	ret
GetExpressionResultString_10:
	mov eax, _cstring_null
	leave
	ret
GetExpressionResultString_20:
	cvtss2sd xmm0, [ebp-0xc]
	movsd [esp+0xc], xmm0
	mov dword [esp+0x8], _cstring_f
	mov dword [esp+0x4], 0x100
	mov dword [esp], _ZZ25GetExpressionResultStringiPK11statement_sE12resultString
	call Com_sprintf
	test eax, eax
	jns GetExpressionResultString_50
GetExpressionResultString_40:
	call Sys_Milliseconds
	sub eax, [_ZZ25GetExpressionResultStringiPK11statement_sE12lastWarnTime]
	cmp eax, 0x1388
	jle GetExpressionResultString_50
	call Sys_Milliseconds
	mov [_ZZ25GetExpressionResultStringiPK11statement_sE12lastWarnTime], eax
	mov dword [esp+0xc], _ZZ25GetExpressionResultStringiPK11statement_sE12resultString
	mov dword [esp+0x8], 0x100
	mov dword [esp+0x4], _cstring_warning_expressi
	mov dword [esp], 0xd
	call Com_PrintWarning
	mov eax, _ZZ25GetExpressionResultStringiPK11statement_sE12resultString
	leave
	ret
GetExpressionResultString_30:
	mov eax, [ebp-0xc]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_s
	mov dword [esp+0x4], 0x100
	mov dword [esp], _ZZ25GetExpressionResultStringiPK11statement_sE12resultString
	call Com_sprintf
	jmp GetExpressionResultString_60


;RunOp(int, OperatorStack*, OperandStack*)
RunOp:
RunOp_250:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x22c
	mov dword [ebp-0x1e0], 0x0
	mov dword [ebp-0x1dc], 0x0
	mov ebx, [ebp+0xc]
	mov edi, [ebp+0x10]
	mov eax, [ebx+0xf0]
	sub eax, 0x1
	mov esi, [ebx+eax*4]
	mov [ebx+0xf0], eax
	mov eax, uiscript_debug
	mov eax, [eax]
	cmp dword [eax+0xc], 0x1
	jle RunOp_10
	mov eax, g_expOperatorNames
	mov eax, [eax+esi*4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_evaluating_s
	mov dword [esp], 0xd
	call Com_Printf
RunOp_10:
	cmp esi, 0x50
	ja RunOp_20
	jmp dword [esi*4+RunOp_jumptab_0]
RunOp_3400:
	mov eax, [edi+0x13b0]
	test eax, eax
	jle RunOp_30
	lea edx, [eax-0x1]
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	lea eax, [edi+eax*4]
	mov ecx, [eax+0x50]
	cmp ecx, 0x1
	jz RunOp_40
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [ebp-0x1d4], 0x0
	mov dword [ebp-0x15c], 0x0
	mov ecx, [edi+0x13b0]
RunOp_2230:
	test ecx, ecx
	jle RunOp_50
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz RunOp_60
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
RunOp_2220:
	mov eax, g_expOperatorNames
	mov eax, [eax+esi*4]
	mov ebx, [ebp-0x15c]
	mov [ebp-0x1d8], ebx
	mov [esp+0x1c], eax
	mov eax, [ebp-0x1d8]
	mov edx, [ebp-0x1d4]
	mov [esp+0x14], eax
	mov [esp+0x18], edx
	mov eax, [ebp-0x20]
	mov edx, [ebp-0x1c]
	mov [esp+0xc], eax
	mov [esp+0x10], edx
	mov [esp+0x8], edi
	mov [esp+0x4], esi
	mov edx, [ebp+0x8]
	mov [esp], edx
	call RunLogicOp
RunOp_20:
	add esp, 0x22c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
RunOp_3960:
	mov dword [ebp-0x28], 0x0
	mov dword [ebp-0x24], 0x0
RunOp_70:
	mov eax, [edi+0x13b0]
	lea ecx, [eax+eax*4]
	lea ecx, [eax+ecx*4]
	mov eax, [ebp-0x28]
	mov edx, [ebp-0x24]
	mov [edi+ecx*4], eax
	mov [edi+ecx*4+0x4], edx
RunOp_2850:
	mov eax, [edi+0x13b0]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*4]
	mov dword [edi+edx*4+0x50], 0x1
RunOp_1640:
	add dword [edi+0x13b0], 0x1
	add esp, 0x22c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
RunOp_3970:
	mov dword [ebp-0x28], 0x0
	mov dword [ebp-0x24], 0x0
	mov eax, 0x1
	mov edx, cgArray
	test byte [edx+0x46150], 0x2
	cmovz eax, [ebp-0x24]
	mov [ebp-0x24], eax
	jmp RunOp_70
RunOp_3980:
	mov edx, [edi+0x13b0]
	test edx, edx
	jle RunOp_80
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov dword [esp+0x8], 0x54
	mov [esp+0x4], eax
	lea edx, [ebp-0x7c]
	mov [esp], edx
	call memcpy
	sub dword [edi+0x13b0], 0x1
RunOp_3150:
	lea ecx, [ebp-0x28]
	lea edx, [ebp-0x7c]
	mov eax, [ebp+0x8]
	call GetPlayerStatRangeBitsSet
	jmp RunOp_70
RunOp_3990:
	mov ecx, [edi+0x13b0]
	test ecx, ecx
	jle RunOp_90
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz RunOp_100
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
RunOp_2150:
	mov eax, [ebp-0x20]
	cmp eax, 0x2
	jz RunOp_110
	cmp eax, 0x1
	jz RunOp_120
	cmp eax, 0x2
	jz RunOp_130
	test eax, eax
	jz RunOp_140
	mov eax, _cstring_null
RunOp_2860:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_must_use_a2
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [ebp-0x28], 0x2
	mov dword [ebp-0x24], _cstring_null
	jmp RunOp_70
RunOp_4000:
	mov ecx, [edi+0x13b0]
	test ecx, ecx
	jle RunOp_150
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz RunOp_160
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
RunOp_2270:
	mov eax, [ebp-0x20]
	cmp eax, 0x2
	jz RunOp_170
	sub eax, 0x1
	jz RunOp_180
	mov eax, [ebp-0x1c]
RunOp_2840:
	lea edx, [eax-0x1]
	cmp edx, 0x3
	jbe RunOp_190
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], _cstring_ui_expression_er3
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [ebp-0x28], 0x0
	mov dword [ebp-0x24], 0x0
	jmp RunOp_70
RunOp_4010:
	mov ecx, [edi+0x13b0]
	test ecx, ecx
	jle RunOp_200
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz RunOp_210
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
RunOp_2160:
	lea ecx, [ebp-0x28]
	lea edx, [ebp-0x20]
	mov eax, [ebp+0x8]
	call GetHudFade
	jmp RunOp_70
RunOp_3410:
	mov edx, [edi+0x13b0]
	mov [ebp-0x16c], edx
	test edx, edx
	jle RunOp_220
	mov ecx, edx
	sub ecx, 0x1
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	shl eax, 0x2
	mov [ebp-0x214], eax
	add eax, edi
	mov [ebp-0x210], eax
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz RunOp_230
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call Com_PrintError
	jmp RunOp_20
RunOp_3390:
	xor esi, esi
RunOp_260:
	mov eax, [ebx+0xf0]
	test eax, eax
	jz RunOp_240
	mov esi, [ebx+eax*4-0x4]
	mov [esp+0x8], edi
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call RunOp_250
	lea eax, [esi-0x17]
	cmp eax, 0x3a
	jbe RunOp_20
	cmp esi, 0x10
	jnz RunOp_260
RunOp_3170:
	cmp eax, 0x3a
	jbe RunOp_20
	cmp esi, 0x10
	jz RunOp_20
	mov dword [esp+0x4], _cstring_error_found__but
	mov dword [esp], 0xd
	call Com_PrintError
	jmp RunOp_20
RunOp_3640:
	mov ecx, [edi+0x13b0]
	test ecx, ecx
	jle RunOp_270
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz RunOp_280
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
RunOp_2460:
	mov ebx, cgArray
	mov edx, [ebx]
	lea eax, [edx+edx*8]
	mov ecx, eax
	shl ecx, 0x4
	add eax, ecx
	lea eax, [edx+eax*2]
	lea eax, [ebx+eax*4]
	mov esi, [eax+0xe9f34]
	test esi, esi
	jz RunOp_290
	mov edx, [eax+0xe9f50]
RunOp_350:
	lea ecx, [ebp-0x20]
	lea eax, [ebp-0x28]
	mov [esp], eax
	mov eax, [ebp+0x8]
	call GetFieldForTeam
	jmp RunOp_70
RunOp_3650:
	mov ecx, [edi+0x13b0]
	test ecx, ecx
	jle RunOp_300
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz RunOp_310
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
RunOp_2140:
	mov ebx, cgArray
	mov edx, [ebx]
	lea eax, [edx+edx*8]
	mov ecx, eax
	shl ecx, 0x4
	add eax, ecx
	lea eax, [edx+eax*2]
	lea eax, [ebx+eax*4]
	mov ebx, [eax+0xe9f34]
	test ebx, ebx
	jz RunOp_290
	mov eax, [eax+0xe9f50]
	cmp eax, 0x2
	jz RunOp_320
	cmp eax, 0x3
	jz RunOp_330
	sub eax, 0x1
	jz RunOp_340
RunOp_290:
	xor edx, edx
	jmp RunOp_350
RunOp_3480:
	mov ecx, [edi+0x13b0]
	test ecx, ecx
	jle RunOp_360
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz RunOp_370
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
RunOp_2480:
	mov eax, [ebp-0x20]
	cmp eax, 0x1
	jz RunOp_380
	test eax, eax
	jnz RunOp_390
	cvtsi2ss xmm0, dword [ebp-0x1c]
RunOp_2760:
	mov dword [ebp-0x28], 0x1
	movss [esp], xmm0
	movss [ebp-0x1f8], xmm0
	call cosf
	fst dword [ebp-0x24]
	mov eax, uiscript_debug
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	movss xmm0, dword [ebp-0x1f8]
	jnz RunOp_400
	fstp st0
	jmp RunOp_70
RunOp_3520:
	mov ecx, [edi+0x13b0]
	test ecx, ecx
	jle RunOp_410
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz RunOp_420
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
RunOp_2490:
	mov eax, [ebp-0x20]
	cmp eax, 0x2
	jz RunOp_430
	cmp eax, 0x1
	jz RunOp_440
	cmp eax, 0x2
	jz RunOp_450
	test eax, eax
	jz RunOp_460
	mov eax, _cstring_null
RunOp_2880:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_must_use_a3
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [ebp-0x28], 0x0
	mov dword [ebp-0x24], 0x0
	jmp RunOp_70
RunOp_3540:
	mov ecx, [edi+0x13b0]
	test ecx, ecx
	jle RunOp_470
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz RunOp_480
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
RunOp_2470:
	mov eax, [ebp-0x20]
	cmp eax, 0x2
	jz RunOp_490
	cmp eax, 0x1
	jz RunOp_500
	cmp eax, 0x2
	jz RunOp_510
	test eax, eax
	jz RunOp_520
	mov eax, _cstring_null
RunOp_2900:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_must_use_a3
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [ebp-0x28], 0x1
	mov dword [ebp-0x24], 0x0
	jmp RunOp_70
RunOp_3550:
	mov ecx, [edi+0x13b0]
	test ecx, ecx
	jle RunOp_530
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz RunOp_540
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
RunOp_2500:
	mov eax, [ebp-0x20]
	cmp eax, 0x2
	jz RunOp_550
	cmp eax, 0x1
	jz RunOp_560
	cmp eax, 0x2
	jz RunOp_570
	test eax, eax
	jz RunOp_580
	mov eax, _cstring_null
RunOp_2890:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_must_use_a3
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [ebp-0x28], 0x2
	mov dword [ebp-0x24], _cstring_null
	jmp RunOp_70
RunOp_3530:
	mov ecx, [edi+0x13b0]
	test ecx, ecx
	jle RunOp_590
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz RunOp_600
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
RunOp_2320:
	mov eax, [ebp-0x20]
	cmp eax, 0x2
	jz RunOp_610
	cmp eax, 0x1
	jz RunOp_620
	cmp eax, 0x2
	jz RunOp_630
	test eax, eax
	jz RunOp_640
	mov eax, _cstring_null
RunOp_2950:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_must_use_a3
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [ebp-0x28], 0x0
	mov dword [ebp-0x24], 0x0
	jmp RunOp_70
RunOp_3800:
	mov edx, [edi+0x13b0]
	test edx, edx
	jle RunOp_650
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov dword [esp+0x8], 0x54
	mov [esp+0x4], eax
	lea ecx, [ebp-0x7c]
	mov [esp], ecx
	call memcpy
	sub dword [edi+0x13b0], 0x1
RunOp_3140:
	lea ecx, [ebp-0x28]
	lea edx, [ebp-0x7c]
	mov eax, [ebp+0x8]
	call TableLookup
	jmp RunOp_70
RunOp_3810:
	mov edx, [edi+0x13b0]
	test edx, edx
	jle RunOp_660
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov dword [esp+0x8], 0x54
	mov [esp+0x4], eax
	lea eax, [ebp-0x7c]
	mov [esp], eax
	call memcpy
	sub dword [edi+0x13b0], 0x1
RunOp_3110:
	lea edx, [ebp-0x28]
	lea eax, [ebp-0x7c]
	call LocalizeString
	jmp RunOp_70
RunOp_3840:
	mov ecx, [edi+0x13b0]
	test ecx, ecx
	jle RunOp_670
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz RunOp_680
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
RunOp_2420:
	mov eax, [ebp-0x20]
	cmp eax, 0x2
	jz RunOp_690
	cmp eax, 0x1
	jz RunOp_700
	cmp eax, 0x2
	jz RunOp_710
	test eax, eax
	jz RunOp_720
	mov eax, _cstring_null
RunOp_2910:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_must_use_a4
	mov dword [esp], 0xd
	call Com_PrintError
RunOp_3020:
	mov dword [ebp-0x28], 0x1
	mov dword [ebp-0x24], 0x0
	jmp RunOp_70
RunOp_3860:
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x6
	jg RunOp_730
	mov dword [ebp-0x28], 0x0
	mov dword [ebp-0x24], 0x0
RunOp_730:
	mov eax, cgArray
	mov edx, [eax+0x24]
	test edx, edx
	jz RunOp_740
	mov eax, cgsArray
	mov ecx, [eax+0x184]
	sub ecx, [edx+0x8]
	mov edx, 0x10624dd3
	mov eax, ecx
	imul edx
	sar edx, 0x6
	mov eax, ecx
	sar eax, 0x1f
	sub edx, eax
RunOp_740:
	mov dword [ebp-0x28], 0x0
	mov [ebp-0x24], edx
	jmp RunOp_70
RunOp_3870:
	mov ecx, [edi+0x13b0]
	test ecx, ecx
	jle RunOp_750
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz RunOp_760
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
RunOp_2390:
	mov eax, [ebp-0x20]
	cmp eax, 0x1
	jz RunOp_770
	test eax, eax
	jnz RunOp_780
	mov ebx, [ebp-0x1c]
RunOp_2520:
	mov dword [ebp-0x28], 0x2
	mov dword [ebp-0x24], _ZZ25SecondsToCountdownDisplayiiP7OperandE12resultString
	test ebx, ebx
	js RunOp_790
	mov edx, 0x88888889
	mov eax, ebx
	imul edx
	add edx, ebx
	sar edx, 0x5
	mov eax, ebx
	sar eax, 0x1f
	sub edx, eax
	lea ecx, [edx*4]
	mov eax, edx
	shl eax, 0x6
	sub eax, ecx
	sub ebx, eax
	mov [esp+0x10], ebx
	mov [esp+0xc], edx
	mov dword [esp+0x8], _cstring_2i02i
	mov dword [esp+0x4], 0x80
	mov dword [esp], _ZZ25SecondsToCountdownDisplayiiP7OperandE12resultString
	call snprintf
	mov eax, uiscript_debug
	mov eax, [eax]
	mov ebx, [eax+0xc]
	test ebx, ebx
	jz RunOp_70
	mov dword [esp+0x8], _ZZ25SecondsToCountdownDisplayiiP7OperandE12resultString
	mov dword [esp+0x4], _cstring_secondstocountdo
	mov dword [esp], 0xd
	call Com_Printf
	jmp RunOp_70
RunOp_3850:
	mov ecx, [edi+0x13b0]
	test ecx, ecx
	jle RunOp_800
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz RunOp_810
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
RunOp_2290:
	lea esi, [ebp-0x150]
	mov eax, [ebp-0x20]
	cmp eax, 0x2
	jz RunOp_820
	cmp eax, 0x1
	jz RunOp_830
	cmp eax, 0x2
	jz RunOp_840
	test eax, eax
	jz RunOp_850
	mov eax, _cstring_null
RunOp_2920:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_must_use_a4
	mov dword [esp], 0xd
	call Com_PrintError
RunOp_3070:
	mov dword [ebp-0x28], 0x2
	mov dword [ebp-0x24], _cstring_null
	jmp RunOp_70
RunOp_4020:
	mov dword [ebp-0x28], 0x0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_IsIntermission
	mov edx, eax
	mov [ebp-0x24], eax
	mov eax, uiscript_debug
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz RunOp_70
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_isintermission__
	mov dword [esp], 0xd
	call Com_Printf
	jmp RunOp_70
RunOp_3420:
	mov ecx, [edi+0x13b0]
	test ecx, ecx
	jle RunOp_860
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz RunOp_870
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
RunOp_2430:
	mov dword [ebp-0x28], 0x0
	mov ecx, [ebp-0x20]
	cmp ecx, 0x2
	jz RunOp_880
	test ecx, ecx
	jz RunOp_890
	cmp ecx, 0x1
	jz RunOp_900
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_unknown_datatype
	mov dword [esp], 0x10
	call Com_PrintError
	jmp RunOp_70
RunOp_3440:
	mov ecx, [edi+0x13b0]
	test ecx, ecx
	jle RunOp_910
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz RunOp_920
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
RunOp_2340:
	mov dword [ebp-0x28], 0x0
	mov ecx, [ebp-0x20]
	cmp ecx, 0x2
	jz RunOp_930
	test ecx, ecx
	jz RunOp_940
	cmp ecx, 0x1
	jz RunOp_950
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_unknown_datatype
	mov dword [esp], 0x10
	call Com_PrintError
	xor ecx, ecx
	mov edx, 0xffffffff
RunOp_2510:
	mov [ebp-0x24], edx
	mov eax, uiscript_debug
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz RunOp_70
	mov [esp+0xc], edx
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_i__i
	mov dword [esp], 0xd
	call Com_Printf
	jmp RunOp_70
RunOp_3460:
	mov eax, [edi+0x13b0]
	test eax, eax
	jle RunOp_960
	lea edx, [eax-0x1]
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	lea eax, [edi+eax*4]
	mov ecx, [eax+0x50]
	cmp ecx, 0x1
	jz RunOp_970
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [ebp-0x1d4], 0x0
	xor esi, esi
	mov ecx, [edi+0x13b0]
RunOp_2410:
	test ecx, ecx
	jle RunOp_980
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz RunOp_990
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
RunOp_2400:
	mov eax, [ebp-0x20]
	cmp eax, 0x1
	jz RunOp_1000
	test eax, eax
	jnz RunOp_1010
	mov ebx, [ebp-0x1c]
RunOp_2540:
	cmp esi, 0x1
	jz RunOp_1020
	test esi, esi
	jnz RunOp_1030
	mov ecx, [ebp-0x1d4]
RunOp_2530:
	mov dword [ebp-0x28], 0x0
	mov edx, ebx
	sar edx, cl
	mov [ebp-0x24], edx
	mov eax, uiscript_debug
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz RunOp_70
	mov [esp+0x10], edx
	mov [esp+0xc], ecx
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_i__i__i
	mov dword [esp], 0xd
	call Com_Printf
	jmp RunOp_70
RunOp_3450:
	mov eax, [edi+0x13b0]
	test eax, eax
	jle RunOp_1040
	lea edx, [eax-0x1]
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	lea ecx, [edi+eax*4]
	mov eax, [ecx+0x50]
	cmp eax, 0x1
	jz RunOp_1050
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [ebp-0x1d4], 0x0
	xor esi, esi
	mov ecx, [edi+0x13b0]
RunOp_2450:
	test ecx, ecx
	jle RunOp_1060
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz RunOp_1070
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
RunOp_2440:
	mov eax, [ebp-0x20]
	cmp eax, 0x1
	jz RunOp_1080
	test eax, eax
	jnz RunOp_1090
	mov ebx, [ebp-0x1c]
RunOp_2780:
	cmp esi, 0x1
	jz RunOp_1100
	test esi, esi
	jnz RunOp_1110
	mov ecx, [ebp-0x1d4]
RunOp_2770:
	mov dword [ebp-0x28], 0x0
	mov edx, ebx
	shl edx, cl
	mov [ebp-0x24], edx
	mov eax, uiscript_debug
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz RunOp_70
	mov [esp+0x10], edx
	mov [esp+0xc], ecx
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_i__i__i1
	mov dword [esp], 0xd
	call Com_Printf
	jmp RunOp_70
RunOp_3470:
	mov ecx, [edi+0x13b0]
	test ecx, ecx
	jle RunOp_1120
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz RunOp_1130
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
RunOp_2330:
	mov eax, [ebp-0x20]
	cmp eax, 0x1
	jz RunOp_1140
	test eax, eax
	jnz RunOp_1150
	cvtsi2ss xmm0, dword [ebp-0x1c]
RunOp_2740:
	mov dword [ebp-0x28], 0x1
	movss [esp], xmm0
	movss [ebp-0x1f8], xmm0
	call sinf
	fst dword [ebp-0x24]
	mov eax, uiscript_debug
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	movss xmm0, dword [ebp-0x1f8]
	jnz RunOp_1160
	fstp st0
	jmp RunOp_70
RunOp_3720:
	mov dword [ebp-0x28], 0x0
	mov dword [ebp-0x24], 0x0
	mov eax, uiscript_debug
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz RunOp_70
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_privatepartyhost
	mov dword [esp], 0xd
	call Com_Printf
	jmp RunOp_70
RunOp_3760:
	mov ecx, [edi+0x13b0]
	test ecx, ecx
	jle RunOp_1170
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz RunOp_1180
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
RunOp_2350:
	mov eax, [ebp-0x20]
	cmp eax, 0x1
	jz RunOp_1190
	test eax, eax
	jnz RunOp_1200
	cvtsi2ss xmm0, dword [ebp-0x1c]
RunOp_2700:
	mov dword [ebp-0x28], 0x0
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x6
	jg RunOp_1210
	mov dword [ebp-0x24], 0x0
RunOp_2710:
	mov eax, uiscript_debug
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz RunOp_70
	mov eax, [ebp-0x24]
	mov [esp+0x10], eax
	cvtss2sd xmm0, xmm0
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_weaplockblink_2f
	mov dword [esp], 0xd
	call Com_Printf
	jmp RunOp_70
RunOp_3770:
	mov dword [ebp-0x28], 0x0
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x6
	jg RunOp_1220
	mov dword [ebp-0x24], 0x0
RunOp_2720:
	mov eax, uiscript_debug
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz RunOp_70
	mov eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_weapattacktop__i
	mov dword [esp], 0xd
	call Com_Printf
	jmp RunOp_70
RunOp_3780:
	mov dword [ebp-0x28], 0x0
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x6
	jg RunOp_1230
	mov dword [ebp-0x24], 0x0
RunOp_2730:
	mov eax, uiscript_debug
	mov eax, [eax]
	mov esi, [eax+0xc]
	test esi, esi
	jz RunOp_70
	mov eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_weapattackdirect
	mov dword [esp], 0xd
	call Com_Printf
	jmp RunOp_70
RunOp_3790:
	mov ecx, [edi+0x13b0]
	test ecx, ecx
	jle RunOp_1240
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz RunOp_1250
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
RunOp_2300:
	lea eax, [ebp-0x28]
	mov [esp+0x8], eax
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call SecondsToTimeDisplay
	jmp RunOp_70
RunOp_3560:
	mov ecx, [edi+0x13b0]
	test ecx, ecx
	jle RunOp_1260
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz RunOp_1270
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
RunOp_2170:
	mov eax, [ebp-0x20]
	cmp eax, 0x2
	jz RunOp_1280
	sub eax, 0x1
	jz RunOp_1290
	mov ebx, [ebp-0x1c]
RunOp_2870:
	mov dword [ebp-0x28], 0x0
	mov esi, [ebp+0x8]
	mov [esp], esi
	call CL_ControllerIndexFromClientNum
	mov [esp+0x4], ebx
	mov [esp], eax
	call LiveStorage_GetStat
	mov edx, eax
	mov [ebp-0x24], eax
	mov eax, uiscript_debug
	mov eax, [eax]
	mov ecx, [eax+0xc]
	test ecx, ecx
	jz RunOp_70
	mov [esp+0xc], edx
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_stat_i___i
	mov dword [esp], 0xd
	call Com_Printf
	jmp RunOp_70
RunOp_3570:
	mov dword [ebp-0x28], 0x0
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CL_IsUIActive
	movzx edx, al
	mov [ebp-0x24], edx
	mov eax, uiscript_debug
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz RunOp_70
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_ui_active__i
	mov dword [esp], 0xd
	call Com_Printf
	jmp RunOp_70
RunOp_3880:
	mov ecx, [edi+0x13b0]
	test ecx, ecx
	jle RunOp_1300
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz RunOp_1310
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
RunOp_2360:
	mov dword [ebp-0x28], 0x0
	mov dword [ebp-0x24], 0x0
	mov eax, [ebp-0x20]
	cmp eax, 0x1
	jz RunOp_1320
	test eax, eax
	jnz RunOp_1330
	mov ebx, [ebp-0x1c]
RunOp_2750:
	mov [esp], ebx
	call Con_IsValidGameMessageWindow
	test al, al
	jnz RunOp_1340
	mov dword [esp+0x4], _cstring_ui_script_error_
	mov dword [esp], 0xd
	call Com_PrintError
	jmp RunOp_70
RunOp_3890:
	mov ecx, [edi+0x13b0]
	test ecx, ecx
	jle RunOp_1350
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz RunOp_1360
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
RunOp_2380:
	mov dword [ebp-0x28], 0x0
	mov eax, [ebp-0x20]
	cmp eax, 0x1
	jz RunOp_1370
	test eax, eax
	jnz RunOp_1380
	mov eax, [ebp-0x1c]
	mov [ebp-0x24], eax
	jmp RunOp_70
RunOp_3900:
	mov ecx, [edi+0x13b0]
	test ecx, ecx
	jle RunOp_1390
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz RunOp_1400
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
RunOp_2370:
	mov dword [ebp-0x28], 0x2
	mov ecx, [ebp-0x20]
	mov ebx, [ebp-0x1c]
	mov esi, ecx
	cmp ecx, 0x2
	jz RunOp_1410
	mov eax, [currentTempOperand]
	mov edx, eax
	shl edx, 0x8
	add edx, s_tempOperandValueAsString
	mov [ebp-0x184], edx
	add eax, 0x1
	and eax, 0x8000000f
	js RunOp_1420
RunOp_3080:
	mov [currentTempOperand], eax
	test esi, esi
	jz RunOp_1430
	sub esi, 0x1
	jz RunOp_1440
RunOp_2980:
	mov eax, [ebp-0x184]
	mov [ebp-0x24], eax
	jmp RunOp_70
RunOp_3910:
	mov ecx, [edi+0x13b0]
	test ecx, ecx
	jle RunOp_1450
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz RunOp_1460
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
RunOp_2180:
	mov dword [ebp-0x28], 0x1
	mov eax, [ebp-0x20]
	cmp eax, 0x1
	jz RunOp_1470
	test eax, eax
	jnz RunOp_1480
	cvtsi2ss xmm0, dword [ebp-0x1c]
	movss [ebp-0x24], xmm0
	jmp RunOp_70
RunOp_3920:
	mov dword [ebp-0x28], 0x2
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x6
	jg RunOp_1490
	mov eax, g_gametype
	mov eax, [eax]
	test eax, eax
	jz RunOp_1500
	mov eax, [eax+0xc]
	mov [esp], eax
	call UI_GetGameTypeDisplayName
	mov [ebp-0x24], eax
RunOp_1520:
	mov eax, _cstring_null
	mov edx, [ebp-0x24]
	test edx, edx
	cmovnz eax, [ebp-0x24]
	mov [ebp-0x24], eax
	jmp RunOp_70
RunOp_3930:
	mov dword [ebp-0x28], 0x2
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x6
	jg RunOp_1510
	mov eax, g_gametype
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [ebp-0x24], eax
	jmp RunOp_1520
RunOp_3940:
	mov dword [ebp-0x28], 0x2
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x6
	jg RunOp_1530
	mov dword [ebp-0x24], _cstring_null
	jmp RunOp_70
RunOp_3950:
	mov ecx, [edi+0x13b0]
	test ecx, ecx
	jle RunOp_1540
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz RunOp_1550
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
RunOp_2130:
	mov dword [ebp-0x28], 0x0
	mov dword [ebp-0x24], 0x0
	mov eax, [ebp-0x20]
	test eax, eax
	jz RunOp_1560
	cmp eax, 0x1
	jz RunOp_1570
	cmp eax, 0x2
	jz RunOp_1580
	test eax, eax
	jz RunOp_1590
	mov eax, _cstring_null
RunOp_3060:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_must_use_a5
	mov dword [esp], 0xd
	call Com_PrintError
	jmp RunOp_70
RunOp_3430:
	mov eax, [edi+0x13b0]
	test eax, eax
	jle RunOp_1600
	lea ebx, [eax-0x1]
	lea eax, [ebx+ebx*4]
	lea eax, [ebx+eax*4]
	lea edx, [ebp-0xd0]
	lea esi, [edi+eax*4]
	mov dword [esp+0x8], 0x54
	mov [esp+0x4], esi
	mov [esp], edx
	call memcpy
	mov ecx, [ebp-0x80]
	mov [ebp-0x160], ecx
	mov [edi+0x13b0], ebx
	test ebx, ebx
	jle RunOp_1610
	lea eax, [esi-0x54]
	mov dword [esp+0x8], 0x54
	mov [esp+0x4], eax
	lea esi, [ebp-0x7c]
	mov [esp], esi
	call memcpy
	mov edx, [edi+0x13b0]
	sub edx, 0x1
	mov [edi+0x13b0], edx
	mov ecx, [ebp-0x160]
	add ecx, [ebp-0x2c]
	cmp ecx, 0xa
	jg RunOp_1620
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	mov [edi+eax*4+0x50], ecx
	mov eax, [edi+0x13b0]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*4]
	lea ebx, [edi+edx*4]
	mov esi, [ebp-0x2c]
	test esi, esi
	jg RunOp_1630
	xor eax, eax
RunOp_2810:
	mov ecx, [ebp-0x160]
	test ecx, ecx
	jle RunOp_1640
	lea ecx, [ebx+eax*8]
	xor ebx, ebx
RunOp_1650:
	mov eax, [ebp+ebx*8-0xd0]
	mov edx, [ebp+ebx*8-0xcc]
	mov [ecx], eax
	mov [ecx+0x4], edx
	add ebx, 0x1
	add ecx, 0x8
	cmp ebx, [ebp-0x160]
	jnz RunOp_1650
	jmp RunOp_1640
RunOp_3680:
	mov ecx, [edi+0x13b0]
	test ecx, ecx
	jle RunOp_1660
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz RunOp_1670
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
RunOp_2280:
	mov eax, [ebp-0x20]
	cmp eax, 0x2
	jz RunOp_1680
	cmp eax, 0x1
	jz RunOp_1690
	cmp eax, 0x2
	jz RunOp_1700
	test eax, eax
	jz RunOp_1710
	mov eax, _cstring_null
RunOp_2930:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_must_use_a6
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [ebp-0x28], 0x0
	mov dword [ebp-0x24], 0x0
	jmp RunOp_70
RunOp_3690:
	mov dword [ebp-0x28], 0x0
	mov dword [ebp-0x24], 0x0
	mov eax, uiscript_debug
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz RunOp_70
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_writingdata__i
	mov dword [esp], 0xd
	call Com_Printf
	jmp RunOp_70
RunOp_3700:
	mov dword [ebp-0x28], 0x0
	mov dword [ebp-0x24], 0x0
	mov eax, uiscript_debug
	mov eax, [eax]
	mov ecx, [eax+0xc]
	test ecx, ecx
	jz RunOp_70
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_inlobby__i
	mov dword [esp], 0xd
	call Com_Printf
	jmp RunOp_70
RunOp_3710:
	mov dword [ebp-0x28], 0x0
	mov dword [ebp-0x24], 0x0
	mov eax, uiscript_debug
	mov eax, [eax]
	mov edx, [eax+0xc]
	test edx, edx
	jz RunOp_70
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_inprivateparty__
	mov dword [esp], 0xd
	call Com_Printf
	jmp RunOp_70
RunOp_3500:
	mov edx, [edi+0x13b0]
	test edx, edx
	jle RunOp_1720
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov dword [esp+0x8], 0x54
	mov [esp+0x4], eax
	lea ebx, [ebp-0x7c]
	mov [esp], ebx
	call memcpy
	sub dword [edi+0x13b0], 0x1
RunOp_3130:
	mov eax, [ebp-0x2c]
	test eax, eax
	jle RunOp_1730
	mov eax, [ebp-0x7c]
	cmp eax, 0x1
	jz RunOp_1740
	test eax, eax
	jnz RunOp_1750
	cvtsi2ss xmm1, dword [ebp-0x78]
RunOp_2820:
	cmp dword [ebp-0x2c], 0x1
	jle RunOp_1760
	mov esi, 0x1
	lea ebx, [ebp-0x7c]
	add ebx, 0x8
	jmp RunOp_1770
RunOp_1790:
	test eax, eax
	jnz RunOp_1780
	cvtsi2ss xmm0, dword [ebx+0x4]
RunOp_1800:
	maxss xmm0, xmm1
	movaps xmm1, xmm0
	add esi, 0x1
	add ebx, 0x8
	cmp [ebp-0x2c], esi
	jle RunOp_1760
RunOp_1770:
	mov eax, [ebx]
	cmp eax, 0x1
	jnz RunOp_1790
	movss xmm0, dword [ebx+0x4]
	jmp RunOp_1800
RunOp_3510:
	mov dword [ebp-0x28], 0x0
	call Sys_Milliseconds
	mov [ebp-0x24], eax
	jmp RunOp_70
RunOp_3490:
	mov edx, [edi+0x13b0]
	test edx, edx
	jle RunOp_1810
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov dword [esp+0x8], 0x54
	mov [esp+0x4], eax
	lea edx, [ebp-0x7c]
	mov [esp], edx
	call memcpy
	sub dword [edi+0x13b0], 0x1
RunOp_3120:
	mov eax, [ebp-0x2c]
	test eax, eax
	jle RunOp_1820
	mov eax, [ebp-0x7c]
	cmp eax, 0x1
	jz RunOp_1830
	test eax, eax
	jnz RunOp_1840
	cvtsi2ss xmm1, dword [ebp-0x78]
RunOp_2830:
	cmp dword [ebp-0x2c], 0x1
	jle RunOp_1760
	mov esi, 0x1
	lea ebx, [ebp-0x7c]
	add ebx, 0x8
	jmp RunOp_1850
RunOp_1870:
	test eax, eax
	jnz RunOp_1860
	cvtsi2ss xmm0, dword [ebx+0x4]
RunOp_1880:
	minss xmm0, xmm1
	movaps xmm1, xmm0
	add esi, 0x1
	add ebx, 0x8
	cmp [ebp-0x2c], esi
	jle RunOp_1760
RunOp_1850:
	mov eax, [ebx]
	cmp eax, 0x1
	jnz RunOp_1870
	movss xmm0, dword [ebx+0x4]
	jmp RunOp_1880
RunOp_3600:
	mov dword [ebp-0x28], 0x0
	mov esi, [ebp+0x8]
	mov [esp], esi
	call CG_IsScoreboardDisplayed
	mov edx, eax
	mov [ebp-0x24], eax
	mov eax, uiscript_debug
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz RunOp_70
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_scoreboard_visib
	mov dword [esp], 0xd
	call Com_Printf
	jmp RunOp_70
RunOp_3610:
	mov dword [ebp-0x28], 0x0
	mov eax, cgArray
	mov edx, [eax+0x5052c]
	mov [ebp-0x24], edx
	mov eax, uiscript_debug
	mov eax, [eax]
	mov esi, [eax+0xc]
	test esi, esi
	jz RunOp_70
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_inkillcam__i
	mov dword [esp], 0xd
	call Com_Printf
	jmp RunOp_70
RunOp_3620:
	mov ecx, [edi+0x13b0]
	test ecx, ecx
	jle RunOp_1890
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz RunOp_1900
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
RunOp_2310:
	mov eax, [ebp-0x20]
	cmp eax, 0x2
	jz RunOp_1910
	cmp eax, 0x1
	jz RunOp_1920
	cmp eax, 0x2
	jz RunOp_1930
	test eax, eax
	jz RunOp_1940
	mov eax, _cstring_null
RunOp_2940:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_must_use_a7
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [ebp-0x28], 0x2
	mov dword [ebp-0x24], _cstring_null
	jmp RunOp_70
RunOp_3630:
	mov dword [ebp-0x28], 0x0
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_IsSelectingLocation
	movzx edx, al
	mov [ebp-0x24], edx
	mov eax, uiscript_debug
	mov eax, [eax]
	mov ebx, [eax+0xc]
	test ebx, ebx
	jz RunOp_70
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_selecting_locati
	mov dword [esp], 0xd
	call Com_Printf
	jmp RunOp_70
RunOp_3580:
	mov dword [ebp-0x28], 0x0
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_Flashbanged
	movzx edx, al
	mov [ebp-0x24], edx
	mov eax, uiscript_debug
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz RunOp_70
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_flashbanged__i
	mov dword [esp], 0xd
	call Com_Printf
	jmp RunOp_70
RunOp_3590:
	mov dword [ebp-0x28], 0x0
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call CG_ScopeIsOverlayed
	movzx edx, al
	mov [ebp-0x24], edx
	mov eax, uiscript_debug
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz RunOp_70
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_scoped__i
	mov dword [esp], 0xd
	call Com_Printf
	jmp RunOp_70
RunOp_3820:
	mov ecx, [edi+0x13b0]
	test ecx, ecx
	jle RunOp_1950
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz RunOp_1960
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
RunOp_2190:
	mov eax, [ebp-0x20]
	cmp eax, 0x2
	jz RunOp_1970
	cmp eax, 0x1
	jz RunOp_1980
	cmp eax, 0x2
	jz RunOp_1990
	test eax, eax
	jz RunOp_2000
	mov eax, _cstring_null
RunOp_2960:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_must_use_a4
	mov dword [esp], 0xd
	call Com_PrintError
RunOp_3000:
	mov dword [ebp-0x28], 0x0
	mov dword [ebp-0x24], 0x0
	jmp RunOp_70
RunOp_3830:
	mov ecx, [edi+0x13b0]
	test ecx, ecx
	jle RunOp_2010
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz RunOp_2020
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
RunOp_2200:
	mov eax, [ebp-0x20]
	cmp eax, 0x2
	jz RunOp_2030
	cmp eax, 0x1
	jz RunOp_2040
	cmp eax, 0x2
	jz RunOp_2050
	test eax, eax
	jz RunOp_2060
	mov eax, _cstring_null
RunOp_2970:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_must_use_a4
	mov dword [esp], 0xd
	call Com_PrintError
RunOp_3010:
	mov dword [ebp-0x28], 0x0
	mov dword [ebp-0x24], 0x0
	jmp RunOp_70
RunOp_3740:
	mov dword [ebp-0x24], 0x0
	mov dword [ebp-0x28], 0x0
	mov eax, uiscript_debug
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz RunOp_70
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_aloneinprivatepa
	mov dword [esp], 0xd
	call Com_Printf
	jmp RunOp_70
RunOp_3750:
	mov dword [ebp-0x28], 0x0
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x6
	jg RunOp_2070
	mov dword [ebp-0x24], 0x0
RunOp_2690:
	mov eax, uiscript_debug
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz RunOp_70
	mov eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_adsjavelin__i
	mov dword [esp], 0xd
	call Com_Printf
	jmp RunOp_70
RunOp_3660:
	mov ecx, [edi+0x13b0]
	test ecx, ecx
	jle RunOp_2080
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz RunOp_2090
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
RunOp_2210:
	lea ecx, [ebp-0x20]
	lea eax, [ebp-0x28]
	mov [esp], eax
	mov edx, 0x2
	mov eax, [ebp+0x8]
	call GetFieldForTeam
	jmp RunOp_70
RunOp_3730:
	mov dword [ebp-0x24], 0x0
	mov dword [ebp-0x28], 0x0
	mov eax, uiscript_debug
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz RunOp_70
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_privatepartyhost1
	mov dword [esp], 0xd
	call Com_Printf
	jmp RunOp_70
RunOp_3670:
	mov ecx, [edi+0x13b0]
	test ecx, ecx
	jle RunOp_2100
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz RunOp_2110
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
RunOp_2240:
	lea ecx, [ebp-0x20]
	lea eax, [ebp-0x28]
	mov [esp], eax
	mov edx, 0x1
	mov eax, [ebp+0x8]
	call GetFieldForTeam
	jmp RunOp_70
RunOp_340:
	mov edx, 0x2
	jmp RunOp_350
RunOp_1760:
	mov dword [ebp-0x28], 0x1
	movss [ebp-0x24], xmm1
	jmp RunOp_70
RunOp_1860:
	mov eax, [ebx+0x4]
	mov [esp], eax
	movss [ebp-0x208], xmm1
	call atof
	fstp qword [ebp-0x1b8]
	cvtsd2ss xmm0, [ebp-0x1b8]
	movss xmm1, dword [ebp-0x208]
	jmp RunOp_1880
RunOp_1780:
	mov eax, [ebx+0x4]
	mov [esp], eax
	movss [ebp-0x208], xmm1
	call atof
	fstp qword [ebp-0x1a8]
	cvtsd2ss xmm0, [ebp-0x1a8]
	movss xmm1, dword [ebp-0x208]
	jmp RunOp_1800
RunOp_1340:
	mov [esp+0x4], ebx
	mov edx, [ebp+0x8]
	mov [esp], edx
	call Con_IsGameMessageWindowActive
	test al, al
	setnz al
	movzx eax, al
	mov [ebp-0x24], eax
	jmp RunOp_70
RunOp_1560:
	mov eax, [ebp-0x1c]
	test eax, eax
	jle RunOp_2120
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call UI_GetScoreAtRank
	test eax, eax
	jz RunOp_70
	mov eax, [eax+0x4]
	mov [ebp-0x24], eax
	jmp RunOp_70
RunOp_1510:
	mov eax, cgsArray
	add eax, 0x20
	mov [ebp-0x24], eax
	jmp RunOp_1520
RunOp_190:
	mov dword [ebp-0x28], 0x0
	mov [esp+0x4], edx
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call CG_ActionSlotIsUsable
	test al, al
	setnz al
	movzx eax, al
	mov [ebp-0x24], eax
	jmp RunOp_70
RunOp_1550:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp RunOp_2130
RunOp_310:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp RunOp_2140
RunOp_100:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp RunOp_2150
RunOp_210:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp RunOp_2160
RunOp_1270:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp RunOp_2170
RunOp_1460:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp RunOp_2180
RunOp_1960:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp RunOp_2190
RunOp_2020:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp RunOp_2200
RunOp_2090:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp RunOp_2210
RunOp_60:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp RunOp_2220
RunOp_40:
	mov ecx, [eax]
	mov ebx, [eax+0x4]
	mov [ebp-0x1d8], ecx
	mov [ebp-0x1d4], ebx
	mov [ebp-0x15c], ecx
	mov [edi+0x13b0], edx
	mov ecx, edx
	jmp RunOp_2230
RunOp_2110:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp RunOp_2240
RunOp_230:
	mov edx, eax
	mov eax, [eax]
	mov edx, [edx+0x4]
	mov [ebp-0x1d8], eax
	mov [ebp-0x1d4], edx
	mov ebx, eax
	mov [edi+0x13b0], ecx
	test ecx, ecx
	jle RunOp_2250
	mov edx, [ebp-0x214]
	lea eax, [edx+edi-0x54]
	mov ecx, [eax+0x50]
	cmp ecx, 0x1
	jz RunOp_2260
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
RunOp_2990:
	mov eax, g_expOperatorNames
	mov eax, [eax+0x18]
	mov [ebp-0x1d8], ebx
	mov [esp+0x1c], eax
	mov ecx, [ebp-0x1d8]
	mov ebx, [ebp-0x1d4]
	mov [esp+0x14], ecx
	mov [esp+0x18], ebx
	mov eax, [ebp-0x20]
	mov edx, [ebp-0x1c]
	mov [esp+0xc], eax
	mov [esp+0x10], edx
	mov [esp+0x8], edi
	mov [esp+0x4], esi
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call RunLogicOp
	jmp RunOp_20
RunOp_160:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp RunOp_2270
RunOp_1670:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp RunOp_2280
RunOp_810:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp RunOp_2290
RunOp_1250:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp RunOp_2300
RunOp_1900:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp RunOp_2310
RunOp_600:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp RunOp_2320
RunOp_1130:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp RunOp_2330
RunOp_920:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp RunOp_2340
RunOp_1180:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp RunOp_2350
RunOp_1310:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp RunOp_2360
RunOp_1400:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp RunOp_2370
RunOp_1360:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp RunOp_2380
RunOp_760:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp RunOp_2390
RunOp_990:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp RunOp_2400
RunOp_970:
	mov ecx, [eax]
	mov ebx, [eax+0x4]
	mov [ebp-0x1d8], ecx
	mov [ebp-0x1d4], ebx
	mov esi, ecx
	mov [edi+0x13b0], edx
	mov ecx, edx
	jmp RunOp_2410
RunOp_680:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp RunOp_2420
RunOp_870:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp RunOp_2430
RunOp_1070:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp RunOp_2440
RunOp_1050:
	mov ebx, [ecx]
	mov esi, [ecx+0x4]
	mov [ebp-0x1d8], ebx
	mov [ebp-0x1d4], esi
	mov esi, ebx
	mov [edi+0x13b0], edx
	mov ecx, edx
	jmp RunOp_2450
RunOp_280:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp RunOp_2460
RunOp_480:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp RunOp_2470
RunOp_370:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp RunOp_2480
RunOp_420:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp RunOp_2490
RunOp_540:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp RunOp_2500
RunOp_790:
	mov dword [ebp-0x24], _cstring_null
	jmp RunOp_70
RunOp_890:
	xor eax, eax
	cmp dword [ebp-0x1c], 0x0
	setz al
	mov [ebp-0x24], eax
	jmp RunOp_70
RunOp_940:
	mov ecx, [ebp-0x1c]
	mov edx, ecx
	not edx
	jmp RunOp_2510
RunOp_770:
	cvttss2si ebx, [ebp-0x1c]
	jmp RunOp_2520
RunOp_1370:
	cvttss2si eax, [ebp-0x1c]
	mov [ebp-0x24], eax
	jmp RunOp_70
RunOp_1020:
	cvttss2si ecx, [ebp-0x1d4]
	jmp RunOp_2530
RunOp_1000:
	cvttss2si ebx, [ebp-0x1c]
	jmp RunOp_2540
RunOp_880:
	mov ebx, [ebp-0x20]
	mov esi, [ebp-0x1c]
	mov [ebp-0x168], ebx
	cmp ebx, 0x2
	jz RunOp_2550
	mov eax, [currentTempOperand]
	mov edx, eax
	shl edx, 0x8
	add edx, s_tempOperandValueAsString
	mov [ebp-0x174], edx
	add eax, 0x1
	and eax, 0x8000000f
	js RunOp_2560
RunOp_3230:
	mov [currentTempOperand], eax
	mov eax, [ebp-0x168]
	test eax, eax
	jz RunOp_2570
	cmp dword [ebp-0x168], 0x1
	jz RunOp_2580
RunOp_3200:
	mov edx, [ebp-0x174]
	cmp ecx, 0x1
	jz RunOp_2590
	cmp ecx, 0x2
	jz RunOp_2600
	test ecx, ecx
	jz RunOp_2610
	mov eax, _cstring_null
RunOp_3100:
	mov [esp+0xc], edx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_you_cannot1
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [ebp-0x24], 0x0
	jmp RunOp_70
RunOp_930:
	mov ebx, [ebp-0x20]
	mov esi, [ebp-0x1c]
	mov [ebp-0x164], ebx
	cmp ebx, 0x2
	jz RunOp_2620
	mov eax, [currentTempOperand]
	mov edx, eax
	shl edx, 0x8
	add edx, s_tempOperandValueAsString
	mov [ebp-0x170], edx
	add eax, 0x1
	and eax, 0x8000000f
	js RunOp_2630
RunOp_3260:
	mov [currentTempOperand], eax
	mov eax, [ebp-0x164]
	test eax, eax
	jz RunOp_2640
	cmp dword [ebp-0x164], 0x1
	jz RunOp_2650
RunOp_3210:
	mov edx, [ebp-0x170]
	cmp ecx, 0x1
	jz RunOp_2660
	cmp ecx, 0x2
	jz RunOp_2670
	test ecx, ecx
	jz RunOp_2680
	mov eax, _cstring_null
RunOp_3090:
	mov [esp+0xc], edx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_you_cannot2
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [ebp-0x24], 0x0
	jmp RunOp_70
RunOp_1410:
	mov eax, ebx
	mov [ebp-0x24], eax
	jmp RunOp_70
RunOp_2070:
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_JavelinADS
	movzx eax, al
	mov [ebp-0x24], eax
	jmp RunOp_2690
RunOp_1490:
	mov eax, cgsArray
	add eax, 0x20
	mov [esp], eax
	call UI_GetGameTypeDisplayName
	mov [ebp-0x24], eax
	jmp RunOp_1520
RunOp_1530:
	mov esi, [ebp+0x8]
	mov [esp], esi
	call CG_GetGametypeDescription
	mov edx, _cstring_null
	test eax, eax
	cmovnz edx, eax
	mov [ebp-0x24], edx
	jmp RunOp_70
RunOp_1190:
	movss xmm0, dword [ebp-0x1c]
	jmp RunOp_2700
RunOp_1210:
	movss [esp+0x4], xmm0
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	movss [ebp-0x1f8], xmm0
	call CG_UICheckWeapLockBlink
	movzx eax, al
	mov [ebp-0x24], eax
	movss xmm0, dword [ebp-0x1f8]
	jmp RunOp_2710
RunOp_1220:
	mov esi, [ebp+0x8]
	mov [esp], esi
	call CG_UICheckWeapLockAttackTop
	movzx eax, al
	mov [ebp-0x24], eax
	jmp RunOp_2720
RunOp_1230:
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_UICheckWeapLockAttackDirect
	movzx eax, al
	mov [ebp-0x24], eax
	jmp RunOp_2730
RunOp_1140:
	movss xmm0, dword [ebp-0x1c]
	jmp RunOp_2740
RunOp_1160:
	fstp dword [ebp-0x20c]
	movss xmm1, dword [ebp-0x20c]
	cvtss2sd xmm1, xmm1
	movsd [esp+0x10], xmm1
	cvtss2sd xmm0, xmm0
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_sin_f___f
	mov dword [esp], 0xd
	call Com_Printf
	jmp RunOp_70
RunOp_1320:
	cvttss2si ebx, [ebp-0x1c]
	jmp RunOp_2750
RunOp_380:
	movss xmm0, dword [ebp-0x1c]
	jmp RunOp_2760
RunOp_1100:
	cvttss2si ecx, [ebp-0x1d4]
	jmp RunOp_2770
RunOp_1080:
	cvttss2si ebx, [ebp-0x1c]
	jmp RunOp_2780
RunOp_400:
	fstp dword [ebp-0x20c]
	movss xmm1, dword [ebp-0x20c]
	cvtss2sd xmm1, xmm1
	movsd [esp+0x10], xmm1
	cvtss2sd xmm0, xmm0
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_cos_f___f
	mov dword [esp], 0xd
	call Com_Printf
	jmp RunOp_70
RunOp_1470:
	movss xmm0, dword [ebp-0x1c]
	movss [ebp-0x24], xmm0
	jmp RunOp_70
RunOp_1630:
	mov ecx, 0x1
	jmp RunOp_2790
RunOp_2800:
	add ecx, 0x1
RunOp_2790:
	mov eax, [ebp+ecx*8-0x84]
	mov edx, [ebp+ecx*8-0x80]
	mov [ebx+ecx*8-0x8], eax
	mov [ebx+ecx*8-0x4], edx
	cmp [ebp-0x2c], ecx
	jg RunOp_2800
	mov eax, ecx
	jmp RunOp_2810
RunOp_1740:
	movss xmm1, dword [ebp-0x78]
	jmp RunOp_2820
RunOp_1830:
	movss xmm1, dword [ebp-0x78]
	jmp RunOp_2830
RunOp_180:
	cvttss2si eax, [ebp-0x1c]
	jmp RunOp_2840
RunOp_1620:
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_ui_script_error_1
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [ebp-0x1dc], 0x0
	mov edx, [edi+0x13b0]
	mov dword [ebp-0x1e0], 0x0
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	mov edx, [ebp-0x1e0]
	mov ecx, [ebp-0x1dc]
	mov [edi+eax*4], edx
	mov [edi+eax*4+0x4], ecx
	jmp RunOp_2850
RunOp_120:
	mov eax, _cstring_float
	jmp RunOp_2860
RunOp_1290:
	cvttss2si ebx, [ebp-0x1c]
	jmp RunOp_2870
RunOp_1500:
	mov dword [ebp-0x24], _cstring_null
	jmp RunOp_1520
RunOp_440:
	mov eax, _cstring_float
	jmp RunOp_2880
RunOp_560:
	mov eax, _cstring_float
	jmp RunOp_2890
RunOp_500:
	mov eax, _cstring_float
	jmp RunOp_2900
RunOp_700:
	mov eax, _cstring_float
	jmp RunOp_2910
RunOp_830:
	mov eax, _cstring_float
	jmp RunOp_2920
RunOp_1690:
	mov eax, _cstring_float
	jmp RunOp_2930
RunOp_1920:
	mov eax, _cstring_float
	jmp RunOp_2940
RunOp_620:
	mov eax, _cstring_float
	jmp RunOp_2950
RunOp_1980:
	mov eax, _cstring_float
	jmp RunOp_2960
RunOp_2040:
	mov eax, _cstring_float
	jmp RunOp_2970
RunOp_2060:
	mov eax, _cstring_int
	jmp RunOp_2970
RunOp_1710:
	mov eax, _cstring_int
	jmp RunOp_2930
RunOp_1940:
	mov eax, _cstring_int
	jmp RunOp_2940
RunOp_1200:
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call atof
	fstp qword [ebp-0x190]
	cvtsd2ss xmm0, [ebp-0x190]
	jmp RunOp_2700
RunOp_1150:
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call atof
	fstp qword [ebp-0x1d0]
	cvtsd2ss xmm0, [ebp-0x1d0]
	jmp RunOp_2740
RunOp_1430:
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_i
	mov dword [esp+0x4], 0x100
	mov ecx, [ebp-0x184]
	mov [esp], ecx
	call Com_sprintf
	jmp RunOp_2980
RunOp_1030:
	mov esi, [ebp-0x1d4]
	mov [esp], esi
	call atoi
	mov ecx, eax
	jmp RunOp_2530
RunOp_1010:
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call atoi
	mov ebx, eax
	jmp RunOp_2540
RunOp_780:
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call atoi
	mov ebx, eax
	jmp RunOp_2520
RunOp_1380:
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call atoi
	mov [ebp-0x24], eax
	jmp RunOp_70
RunOp_460:
	mov eax, _cstring_int
	jmp RunOp_2880
RunOp_580:
	mov eax, _cstring_int
	jmp RunOp_2890
RunOp_720:
	mov eax, _cstring_int
	jmp RunOp_2910
RunOp_1330:
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call atoi
	mov ebx, eax
	jmp RunOp_2750
RunOp_390:
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call atof
	fstp qword [ebp-0x1c8]
	cvtsd2ss xmm0, [ebp-0x1c8]
	jmp RunOp_2760
RunOp_520:
	mov eax, _cstring_int
	jmp RunOp_2900
RunOp_1110:
	mov esi, [ebp-0x1d4]
	mov [esp], esi
	call atoi
	mov ecx, eax
	jmp RunOp_2770
RunOp_1090:
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call atoi
	mov ebx, eax
	jmp RunOp_2780
RunOp_1480:
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call atof
	fstp qword [ebp-0x180]
	cvtsd2ss xmm0, [ebp-0x180]
	movss [ebp-0x24], xmm0
	jmp RunOp_70
RunOp_140:
	mov eax, _cstring_int
	jmp RunOp_2860
RunOp_640:
	mov eax, _cstring_int
	jmp RunOp_2950
RunOp_2000:
	mov eax, _cstring_int
	jmp RunOp_2960
RunOp_850:
	mov eax, _cstring_int
	jmp RunOp_2920
RunOp_1840:
	mov eax, [ebp-0x78]
	mov [esp], eax
	call atof
	fstp qword [ebp-0x1c0]
	cvtsd2ss xmm1, [ebp-0x1c0]
	jmp RunOp_2830
RunOp_1750:
	mov eax, [ebp-0x78]
	mov [esp], eax
	call atof
	fstp qword [ebp-0x1b0]
	cvtsd2ss xmm1, [ebp-0x1b0]
	jmp RunOp_2820
RunOp_840:
	mov eax, _cstring_string
	jmp RunOp_2920
RunOp_2050:
	mov eax, _cstring_string
	jmp RunOp_2970
RunOp_1700:
	mov eax, _cstring_string
	jmp RunOp_2930
RunOp_450:
	mov eax, _cstring_string
	jmp RunOp_2880
RunOp_570:
	mov eax, _cstring_string
	jmp RunOp_2890
RunOp_710:
	mov eax, _cstring_string
	jmp RunOp_2910
RunOp_510:
	mov eax, _cstring_string
	jmp RunOp_2900
RunOp_2260:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	mov eax, [ebp-0x16c]
	sub eax, 0x2
	mov [edi+0x13b0], eax
	jmp RunOp_2990
RunOp_630:
	mov eax, _cstring_string
	jmp RunOp_2950
RunOp_1990:
	mov eax, _cstring_string
	jmp RunOp_2960
RunOp_130:
	mov eax, _cstring_string
	jmp RunOp_2860
RunOp_1930:
	mov eax, _cstring_string
	jmp RunOp_2940
RunOp_1970:
	mov ebx, [ebp-0x1c]
	mov edx, [ebp+0x8]
	mov [esp], edx
	call UI_GetLocalVarsContext
	mov [esp+0x4], ebx
	mov [esp], eax
	call UILocalVar_Find
	test eax, eax
	jz RunOp_3000
	mov dword [ebp-0x28], 0x0
	mov [esp], eax
	call UILocalVar_GetInt
	mov edx, eax
	mov [ebp-0x24], eax
	mov eax, uiscript_debug
	mov eax, [eax]
	mov ecx, [eax+0xc]
	test ecx, ecx
	jz RunOp_70
	mov [esp+0xc], edx
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_localvarint_s___
	mov dword [esp], 0xd
	call Com_Printf
	jmp RunOp_70
RunOp_2030:
	mov ebx, [ebp-0x1c]
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call UI_GetLocalVarsContext
	mov [esp+0x4], ebx
	mov [esp], eax
	call UILocalVar_Find
	test eax, eax
	jz RunOp_3010
	mov dword [ebp-0x28], 0x0
	mov [esp], eax
	call UILocalVar_GetBool
	movzx edx, al
	mov [ebp-0x24], edx
	mov eax, uiscript_debug
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz RunOp_70
	mov [esp+0xc], edx
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_localvarbool_s__
	mov dword [esp], 0xd
	call Com_Printf
	jmp RunOp_70
RunOp_490:
	mov dword [ebp-0x28], 0x1
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call Cvar_GetVariantString
	mov [esp], eax
	call atof
	fstp qword [ebp-0x1a0]
	cvtsd2ss xmm0, [ebp-0x1a0]
	movss [ebp-0x24], xmm0
	mov eax, uiscript_debug
	mov eax, [eax]
	mov esi, [eax+0xc]
	test esi, esi
	jz RunOp_70
	cvtss2sd xmm0, xmm0
	movsd [esp+0xc], xmm0
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_dvarfloat_s___f
	mov dword [esp], 0xd
	call Com_Printf
	jmp RunOp_70
RunOp_690:
	mov ebx, [ebp-0x1c]
	mov esi, [ebp+0x8]
	mov [esp], esi
	call UI_GetLocalVarsContext
	mov [esp+0x4], ebx
	mov [esp], eax
	call UILocalVar_Find
	test eax, eax
	jz RunOp_3020
	mov dword [ebp-0x28], 0x1
	mov [esp], eax
	call UILocalVar_GetFloat
	fstp dword [ebp-0x194]
	movss xmm0, dword [ebp-0x194]
	movss [ebp-0x24], xmm0
	mov eax, uiscript_debug
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz RunOp_70
	cvtss2sd xmm1, xmm0
	movsd [esp+0xc], xmm1
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_localvarfloat_s_
	mov dword [esp], 0xd
	call Com_Printf
	jmp RunOp_70
RunOp_1910:
	mov dword [esp+0x4], _cstring_teamname
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz RunOp_3030
	mov dword [ebp-0x28], 0x2
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CG_GetPlayerTeamName
RunOp_3190:
	mov edx, eax
	mov [ebp-0x24], eax
	mov eax, uiscript_debug
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz RunOp_70
	mov [esp+0xc], edx
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_player_s___s
	mov dword [esp], 0xd
	call Com_Printf
	jmp RunOp_70
RunOp_610:
	mov dword [ebp-0x28], 0x0
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call Cvar_GetVariantString
	mov [esp], eax
	call atoi
	mov edx, eax
	mov [ebp-0x24], eax
	mov eax, uiscript_debug
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz RunOp_70
	mov [esp+0xc], edx
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_dvarbool_s___i
	mov dword [esp], 0xd
	call Com_Printf
	jmp RunOp_70
RunOp_430:
	mov dword [ebp-0x28], 0x0
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call Cvar_GetVariantString
	mov [esp], eax
	call atoi
	mov edx, eax
	mov [ebp-0x24], eax
	mov eax, uiscript_debug
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz RunOp_70
	mov [esp+0xc], edx
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_dvarint_s___i
	mov dword [esp], 0xd
	call Com_Printf
	jmp RunOp_70
RunOp_550:
	mov dword [ebp-0x28], 0x2
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call Cvar_FindVar
	test eax, eax
	jz RunOp_3040
	cmp byte [eax+0xa], 0x7
	jz RunOp_3050
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call Cvar_GetVariantString
	mov [ebp-0x24], eax
RunOp_3280:
	mov eax, uiscript_debug
	mov eax, [eax]
	mov ebx, [eax+0xc]
	test ebx, ebx
	jz RunOp_70
	mov eax, [ebp-0x24]
	mov [esp+0xc], eax
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_dvarstring_s___s
	mov dword [esp], 0xd
	call Com_Printf
	jmp RunOp_70
RunOp_1280:
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call atoi
	mov ebx, eax
	jmp RunOp_2870
RunOp_110:
	mov dword [esp+0x8], _ZZ13GetKeyBindingiP7OperandS0_E12resultString
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call UI_GetKeyBindingLocalizedStringSingle
	mov dword [ebp-0x28], 0x2
	mov dword [ebp-0x24], _ZZ13GetKeyBindingiP7OperandS0_E12resultString
	jmp RunOp_70
RunOp_170:
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call atoi
	jmp RunOp_2840
RunOp_1570:
	mov eax, _cstring_float
	jmp RunOp_3060
RunOp_820:
	mov ebx, [ebp-0x1c]
	mov eax, [ebp+0x8]
	mov [esp], eax
	call UI_GetLocalVarsContext
	mov [esp+0x4], ebx
	mov [esp], eax
	call UILocalVar_Find
	test eax, eax
	jz RunOp_3070
	mov dword [ebp-0x28], 0x2
	mov dword [esp+0x8], 0x20
	mov [esp+0x4], esi
	mov [esp], eax
	call UILocalVar_GetString
	mov edx, eax
	mov [ebp-0x24], eax
	mov eax, uiscript_debug
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz RunOp_70
	mov [esp+0xc], edx
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_localvarstring_s
	mov dword [esp], 0xd
	call Com_Printf
	jmp RunOp_70
RunOp_1680:
	mov dword [ebp-0x28], 0x0
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Menu_IsMenuOpenAndVisible
	movzx edx, al
	mov [ebp-0x24], edx
	mov eax, uiscript_debug
	mov eax, [eax]
	mov ecx, [eax+0xc]
	test ecx, ecx
	jz RunOp_70
	mov [esp+0xc], edx
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_ismenuopen_s___i
	mov dword [esp], 0xd
	call Com_Printf
	jmp RunOp_70
RunOp_320:
	mov edx, 0x1
	jmp RunOp_350
RunOp_1420:
	sub eax, 0x1
	or eax, 0xfffffff0
	add eax, 0x1
	jmp RunOp_3080
RunOp_1590:
	mov eax, _cstring_int
	jmp RunOp_3060
RunOp_2620:
	mov edx, esi
RunOp_2670:
	mov eax, _cstring_string
	jmp RunOp_3090
RunOp_2550:
	mov edx, esi
RunOp_2600:
	mov eax, _cstring_string
	jmp RunOp_3100
RunOp_590:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp RunOp_2320
RunOp_1120:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp RunOp_2330
RunOp_530:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp RunOp_2500
RunOp_660:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [edi+0x13b0], 0x1
	mov dword [esp+0x8], 0x54
	mov [esp+0x4], edi
	lea esi, [ebp-0x7c]
	mov [esp], esi
	call memcpy
	mov dword [ebp-0x2c], 0x1
	mov dword [ebp-0x7c], 0x0
	mov dword [ebp-0x78], 0x0
	jmp RunOp_3110
RunOp_1600:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [edi+0x13b0], 0x1
	lea eax, [ebp-0xd0]
	mov dword [esp+0x8], 0x54
	mov [esp+0x4], edi
	mov [esp], eax
	call memcpy
	mov dword [ebp-0xd0], 0x0
	mov dword [ebp-0xcc], 0x0
	jmp RunOp_20
RunOp_1810:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [edi+0x13b0], 0x1
	mov dword [esp+0x8], 0x54
	mov [esp+0x4], edi
	lea eax, [ebp-0x7c]
	mov [esp], eax
	call memcpy
	mov dword [ebp-0x2c], 0x1
	mov dword [ebp-0x7c], 0x0
	mov dword [ebp-0x78], 0x0
	jmp RunOp_3120
RunOp_1950:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp RunOp_2190
RunOp_2010:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp RunOp_2200
RunOp_1060:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp RunOp_2440
RunOp_1040:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov edx, [edi]
	mov [ebp-0x1d8], edx
	mov dword [ebp-0x1d4], 0x0
	xor esi, esi
	mov ecx, [edi+0x13b0]
	jmp RunOp_2450
RunOp_1720:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [edi+0x13b0], 0x1
	mov dword [esp+0x8], 0x54
	mov [esp+0x4], edi
	lea ecx, [ebp-0x7c]
	mov [esp], ecx
	call memcpy
	mov dword [ebp-0x2c], 0x1
	mov dword [ebp-0x7c], 0x0
	mov dword [ebp-0x78], 0x0
	jmp RunOp_3130
RunOp_90:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp RunOp_2150
RunOp_200:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp RunOp_2160
RunOp_1580:
	mov eax, _cstring_string
	jmp RunOp_3060
RunOp_330:
	mov edx, 0x3
	jmp RunOp_350
RunOp_650:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [edi+0x13b0], 0x1
	mov dword [esp+0x8], 0x54
	mov [esp+0x4], edi
	lea edx, [ebp-0x7c]
	mov [esp], edx
	call memcpy
	mov dword [ebp-0x2c], 0x1
	mov dword [ebp-0x7c], 0x0
	mov dword [ebp-0x78], 0x0
	jmp RunOp_3140
RunOp_900:
	pxor xmm0, xmm0
	ucomiss xmm0, [ebp-0x1c]
	setz al
	setnp dl
	and al, dl
	movzx eax, al
	mov [ebp-0x24], eax
	jmp RunOp_70
RunOp_1300:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp RunOp_2360
RunOp_1390:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp RunOp_2370
RunOp_220:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	jmp RunOp_20
RunOp_150:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp RunOp_2270
RunOp_1540:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp RunOp_2130
RunOp_300:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp RunOp_2140
RunOp_360:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp RunOp_2480
RunOp_410:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp RunOp_2490
RunOp_270:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp RunOp_2460
RunOp_470:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp RunOp_2470
RunOp_1820:
	mov dword [esp+0x4], _cstring_ui_expression_er4
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [ebp-0x28], 0x1
	mov dword [ebp-0x24], 0x0
	jmp RunOp_70
RunOp_80:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [edi+0x13b0], 0x1
	mov dword [esp+0x8], 0x54
	mov [esp+0x4], edi
	lea eax, [ebp-0x7c]
	mov [esp], eax
	call memcpy
	mov dword [ebp-0x2c], 0x1
	mov dword [ebp-0x7c], 0x0
	mov dword [ebp-0x78], 0x0
	jmp RunOp_3150
RunOp_2080:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp RunOp_2210
RunOp_50:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp RunOp_2220
RunOp_670:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp RunOp_2420
RunOp_860:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp RunOp_2430
RunOp_2120:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_rank_must_
	mov dword [esp], 0xd
	call Com_PrintError
	jmp RunOp_70
RunOp_1730:
	mov dword [esp+0x4], _cstring_ui_expression_er5
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [ebp-0x28], 0x1
	mov dword [ebp-0x24], 0x0
	jmp RunOp_70
RunOp_1260:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp RunOp_2170
RunOp_1450:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp RunOp_2180
RunOp_910:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp RunOp_2340
RunOp_1170:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp RunOp_2350
RunOp_1350:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp RunOp_2380
RunOp_750:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp RunOp_2390
RunOp_980:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp RunOp_2400
RunOp_960:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov eax, [edi]
	mov [ebp-0x1d8], eax
	mov dword [ebp-0x1d4], 0x0
	xor esi, esi
	mov ecx, [edi+0x13b0]
	jmp RunOp_2410
RunOp_1660:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp RunOp_2280
RunOp_800:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp RunOp_2290
RunOp_1240:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp RunOp_2300
RunOp_1890:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp RunOp_2310
RunOp_30:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov eax, [edi]
	mov [ebp-0x1d8], eax
	mov dword [ebp-0x1d4], 0x0
	mov dword [ebp-0x15c], 0x0
	mov ecx, [edi+0x13b0]
	jmp RunOp_2230
RunOp_2100:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp RunOp_2240
RunOp_950:
	cvttss2si ecx, [ebp-0x1c]
	mov edx, ecx
	not edx
	jmp RunOp_2510
RunOp_2250:
	test eax, eax
	jnz RunOp_3160
	neg edx
	mov [ebp-0x1d4], edx
RunOp_3250:
	mov [ebp-0x1d8], ebx
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	mov ecx, [ebp-0x1d8]
	mov ebx, [ebp-0x1d4]
	mov [edi+eax*4], ecx
	mov [edi+eax*4+0x4], ebx
	jmp RunOp_2850
RunOp_1610:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call Com_PrintError
	mov dword [edi+0x13b0], 0x1
	mov dword [esp+0x8], 0x54
	mov [esp+0x4], edi
	lea ebx, [ebp-0x7c]
	mov [esp], ebx
	call memcpy
	mov dword [ebp-0x2c], 0x1
	mov dword [ebp-0x7c], 0x0
	mov dword [ebp-0x78], 0x0
	jmp RunOp_20
RunOp_240:
	lea eax, [esi-0x17]
	jmp RunOp_3170
RunOp_3030:
	mov dword [esp+0x4], _cstring_otherteamname
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz RunOp_3180
	mov dword [ebp-0x28], 0x2
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call CG_GetPlayerOpposingTeamName
	jmp RunOp_3190
RunOp_1440:
	mov [ebp-0x20c], ebx
	movss xmm0, dword [ebp-0x20c]
	cvtss2sd xmm0, xmm0
	movsd [esp+0xc], xmm0
	mov dword [esp+0x8], _cstring_f
	mov dword [esp+0x4], 0x100
	mov eax, [ebp-0x184]
	mov [esp], eax
	call Com_sprintf
	jmp RunOp_2980
RunOp_2570:
	mov [esp+0xc], esi
	mov dword [esp+0x8], _cstring_i
	mov dword [esp+0x4], 0x100
	mov edx, [ebp-0x174]
	mov [esp], edx
	call Com_sprintf
	mov ecx, [ebp-0x20]
	jmp RunOp_3200
RunOp_2640:
	mov [esp+0xc], esi
	mov dword [esp+0x8], _cstring_i
	mov dword [esp+0x4], 0x100
	mov edx, [ebp-0x170]
	mov [esp], edx
	call Com_sprintf
	mov ecx, [ebp-0x20]
	jmp RunOp_3210
RunOp_2590:
	mov eax, _cstring_float
	jmp RunOp_3100
RunOp_2610:
	mov eax, _cstring_int
	jmp RunOp_3100
RunOp_2660:
	mov eax, _cstring_float
	jmp RunOp_3090
RunOp_2680:
	mov eax, _cstring_int
	jmp RunOp_3090
RunOp_3180:
	mov dword [esp+0x4], _cstring_dead
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz RunOp_3220
	mov dword [ebp-0x28], 0x0
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call CG_IsPlayerDead
RunOp_3310:
	movzx edx, al
	mov [ebp-0x24], edx
	mov eax, uiscript_debug
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz RunOp_70
	mov [esp+0xc], edx
RunOp_3340:
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_player_s___i
	mov dword [esp], 0xd
	call Com_Printf
	jmp RunOp_70
RunOp_2560:
	sub eax, 0x1
	or eax, 0xfffffff0
	add eax, 0x1
	jmp RunOp_3230
RunOp_3160:
	cmp eax, 0x1
	jnz RunOp_3240
	xor dword [ebp-0x1d4], 0x80000000
	jmp RunOp_3250
RunOp_2630:
	sub eax, 0x1
	or eax, 0xfffffff0
	add eax, 0x1
	jmp RunOp_3260
RunOp_3050:
	mov ecx, [eax+0xc]
	mov eax, [currentTempOperand]
	mov edx, eax
	shl edx, 0x8
	lea ebx, [edx+s_tempOperandValueAsString]
	add eax, 0x1
	and eax, 0x8000000f
	jns RunOp_3270
	sub eax, 0x1
	or eax, 0xfffffff0
	add eax, 0x1
RunOp_3270:
	mov [currentTempOperand], eax
	mov [esp+0xc], ecx
	mov dword [esp+0x8], _cstring_s
	mov dword [esp+0x4], 0x100
	mov [esp], ebx
	call Com_sprintf
	mov [ebp-0x24], ebx
	jmp RunOp_3280
RunOp_3040:
	mov dword [ebp-0x24], _cstring_null
	jmp RunOp_3280
RunOp_3240:
	mov ebx, [ebp-0x1d4]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_trying_to_
	mov dword [esp], 0xd
	call Com_PrintError
	jmp RunOp_20
RunOp_2580:
	mov [ebp-0x20c], esi
	movss xmm0, dword [ebp-0x20c]
	cvtss2sd xmm0, xmm0
	movsd [esp+0xc], xmm0
	mov dword [esp+0x8], _cstring_f
	mov dword [esp+0x4], 0x100
	mov eax, [ebp-0x174]
	mov [esp], eax
	call Com_sprintf
	mov ecx, [ebp-0x20]
	jmp RunOp_3200
RunOp_2650:
	mov [ebp-0x20c], esi
	movss xmm0, dword [ebp-0x20c]
	cvtss2sd xmm0, xmm0
	movsd [esp+0xc], xmm0
	mov dword [esp+0x8], _cstring_f
	mov dword [esp+0x4], 0x100
	mov eax, [ebp-0x170]
	mov [esp], eax
	call Com_sprintf
	mov ecx, [ebp-0x20]
	jmp RunOp_3210
RunOp_3220:
	mov dword [esp+0x4], _cstring_clipammo
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz RunOp_3290
	mov dword [ebp-0x28], 0x0
	mov esi, [ebp+0x8]
	mov [esp], esi
	call CG_GetPlayerClipAmmoCount
	jmp RunOp_3190
RunOp_3290:
	mov dword [esp+0x4], _cstring_nightvision
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz RunOp_3300
	mov dword [ebp-0x28], 0x0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CG_LookingThroughNightVision
	jmp RunOp_3310
RunOp_3300:
	mov dword [esp+0x4], _cstring_score
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz RunOp_3320
	mov edx, [ebp+0x8]
	mov [esp], edx
	call UI_GetOurClientScore
	test eax, eax
	jz RunOp_3330
	mov eax, [eax+0x4]
	mov [ebp-0x24], eax
RunOp_3360:
	mov dword [ebp-0x28], 0x0
	mov eax, uiscript_debug
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz RunOp_70
	mov eax, [ebp-0x24]
	mov [esp+0xc], eax
	jmp RunOp_3340
RunOp_3320:
	mov dword [esp+0x4], _cstring_deaths
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz RunOp_3350
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call UI_GetOurClientScore
	test eax, eax
	jz RunOp_3330
	mov eax, [eax+0xc]
	mov [ebp-0x24], eax
	jmp RunOp_3360
RunOp_3330:
	mov dword [ebp-0x24], 0x0
	jmp RunOp_3360
RunOp_3350:
	mov dword [esp+0x4], _cstring_kills
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz RunOp_3370
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call UI_GetOurClientScore
	test eax, eax
	jz RunOp_3330
	mov eax, [eax+0x14]
	mov [ebp-0x24], eax
	jmp RunOp_3360
RunOp_3370:
	mov dword [esp+0x4], _cstring_ping
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jnz RunOp_3380
	mov esi, [ebp+0x8]
	mov [esp], esi
	call UI_GetOurClientScore
	test eax, eax
	jz RunOp_3330
	mov eax, [eax+0x8]
	mov [ebp-0x24], eax
	jmp RunOp_3360
RunOp_3380:
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_unknown_pl
	mov dword [esp], 0xd
	call Com_Printf
	mov dword [ebp-0x28], 0x0
	mov dword [ebp-0x24], 0x0
	jmp RunOp_70
	
	
RunOp_jumptab_0:
	dd RunOp_20
	dd RunOp_3390
	dd RunOp_3400
	dd RunOp_3400
	dd RunOp_3400
	dd RunOp_3400
	dd RunOp_3410
	dd RunOp_3420
	dd RunOp_3400
	dd RunOp_3400
	dd RunOp_3400
	dd RunOp_3400
	dd RunOp_3400
	dd RunOp_3400
	dd RunOp_3400
	dd RunOp_3400
	dd RunOp_20
	dd RunOp_3430
	dd RunOp_3400
	dd RunOp_3400
	dd RunOp_3440
	dd RunOp_3450
	dd RunOp_3460
	dd RunOp_3470
	dd RunOp_3480
	dd RunOp_3490
	dd RunOp_3500
	dd RunOp_3510
	dd RunOp_3520
	dd RunOp_3530
	dd RunOp_3540
	dd RunOp_3550
	dd RunOp_3560
	dd RunOp_3570
	dd RunOp_3580
	dd RunOp_3590
	dd RunOp_3600
	dd RunOp_3610
	dd RunOp_3620
	dd RunOp_3630
	dd RunOp_3640
	dd RunOp_3650
	dd RunOp_3660
	dd RunOp_3670
	dd RunOp_3680
	dd RunOp_3690
	dd RunOp_3700
	dd RunOp_3710
	dd RunOp_3720
	dd RunOp_3730
	dd RunOp_3740
	dd RunOp_3750
	dd RunOp_3760
	dd RunOp_3770
	dd RunOp_3780
	dd RunOp_3790
	dd RunOp_3800
	dd RunOp_3810
	dd RunOp_3820
	dd RunOp_3830
	dd RunOp_3840
	dd RunOp_3850
	dd RunOp_3860
	dd RunOp_3870
	dd RunOp_3880
	dd RunOp_3890
	dd RunOp_3900
	dd RunOp_3910
	dd RunOp_3920
	dd RunOp_3930
	dd RunOp_3940
	dd RunOp_3950
	dd RunOp_3960
	dd RunOp_3970
	dd RunOp_3980
	dd RunOp_3990
	dd RunOp_4000
	dd RunOp_4010
	dd RunOp_3960
	dd RunOp_3960
	dd RunOp_4020


;Initialized global or static variables of ui_expressions:
SECTION .data
s_operatorPrecedence: dd 0x7fffffff, 0x0, 0xb, 0xb, 0xb, 0xd, 0xd, 0x9, 0xf, 0xf, 0xf, 0xf, 0x10, 0x10, 0x19, 0x19, 0x63, 0x50, 0x11, 0x12, 0x9, 0xe, 0xe, 0x5, 0x5, 0x5, 0x5, 0x5, 0x5, 0x5, 0x5, 0x5, 0x5, 0x5, 0x5, 0x5, 0x5, 0x5, 0x5, 0x5, 0x5, 0x5, 0x5, 0x5, 0x5, 0x5, 0x5, 0x5, 0x5, 0x5, 0x5, 0x5, 0x5, 0x5, 0x5, 0x5, 0x5, 0x5, 0x5, 0x5, 0x5, 0x5, 0x5, 0x5, 0x5, 0x5, 0x5, 0x5, 0x5, 0x5, 0x5, 0x5, 0x5, 0x5, 0x5, 0x5, 0x5, 0x5, 0x5, 0x5, 0x5, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of ui_expressions:
SECTION .rdata


;Zero initialized global or static variables of ui_expressions:
SECTION .bss
g_releaseBuildStatement: resb 0x20
s_tempOperandValueAsString: resb 0x1000
currentTempOperand: resb 0x20
_ZZ25SecondsToCountdownDisplayiiP7OperandE12resultString: resb 0x80
_ZZ13GetKeyBindingiP7OperandS0_E12resultString: resb 0x100
_ZZ20SecondsToTimeDisplayiP7OperandS0_E12resultString: resb 0x80
_ZZ25GetExpressionResultStringiPK11statement_sE12lastWarnTime: resb 0x20
_ZZ25GetExpressionResultStringiPK11statement_sE12resultString: resb 0x120


;All cstrings:
SECTION .rdata
_cstring_null:		db 0
_cstring_error_must_use_a:		db "Error: Must use a string as HudFade() parameter, not a %s",0ah,0
_cstring_error_argument_t:		db "Error: Argument to HudFade() must be ",22h,"dpad",22h,", ",22h,"compass",22h,", ",22h,"scoreboard",22h,", or ",22h,"weapon",22h,".",0ah,0
_cstring_int:		db "Int",0
_cstring_dpad:		db "dpad",0
_cstring_weapon:		db "weapon",0
_cstring_float:		db "Float",0
_cstring_string:		db "String",0
_cstring_compass:		db "compass",0
_cstring_scoreboard:		db "scoreboard",0
_cstring_error_must_use_a1:		db "Error: Must use a string as the name of a team parameter, not a %s",0ah,0
_cstring_score:		db "score",0
_cstring_teami_s___i:		db "team(%i)( %s ) = %i",0ah,0
_cstring_name:		db "name",0
_cstring_teami_s___s:		db "team(%i)( %s ) = %s",0ah,0
_cstring_error_unknown_te:		db "ERROR: Unknown team field ",27h,"%s",27h,0ah,0
_cstring_ui_expression_er:		db "UI Expression Error: Expected 3 params to function StatRangeAnyBitsSet, found %i",0ah,0
_cstring_ui_expression_er1:		db "UI Expression Error: minStat %i was greater than maxStat %i in StatRangeAnyBitsSet",0ah,0
_cstring_statrangeanybits:		db "statRangeAnyBitsSet( %i, %i, %i ) = %i",0ah,0
_cstring_id_ih_im:		db "%id %ih %im",0
_cstring_secondstotime__s:		db "secondsToTime() = %s",0ah,0
_cstring_ui_expression_er2:		db "UI Expression Error: Expected 4 params to function StringTableLookup, found %i",0ah,0
_cstring_tablelookup_s_i_:		db "tablelookup( %s, %i, %s, %i ) == %s",0ah,0
_cstring_i:		db "%i",0
_cstring_f:		db "%f",0
_cstring_error_bad_escape:		db "Error: bad escape character (%i) present in string",0
_cstring_nonlocalized_ui_:		db "Non-localized UI strings are not allowed to have letters in them: ",22h,"%s",22h,0
_cstring_loc_warnings:		db "loc_warnings",0
_cstring_illegal_localize:		db "Illegal localized string reference: %s must start with a ",27h,"@",27h,".",0
_cstring_illegal_localize1:		db "Illegal localized string reference: %s must contain only alpha-numeric characters and underscores",0
_cstring_ui_string:		db "ui string",0
_cstring_error_s_is_too_l:		db "Error: %s is too long. Max length is %i",0ah,0
_cstring_loc_warningsaser:		db "loc_warningsAsErrors",0
_cstring_warning_s:		db "WARNING: %s",0ah,0
_cstring_error_s:		db "Error: %s",0
_cstring_error_stray_oper:		db "Error: stray operands in expression",0ah,0
_cstring_error_more_than_:		db "Error: More than one operand in expression result",0ah,0
_cstring_invalid_expressi:		db "Invalid expression - operators are nested too deeply",0ah,0
_cstring_invalid_expressi1:		db "Invalid expression - too many operands",0ah,0
_cstring_running_s_on_a_s:		db "running %s on a %s (%s) and a %s (%s)",0ah,0
_cstring_result_is_a_s_s:		db "result is a %s (%s)",0ah,0
_cstring_error_you_cannot:		db "Error: You cannot %s a ",27h,"%s",27h," (%s) and a ",27h,"%s",27h," (%s)",0ah,0
_cstring_warning_expressi:		db "Warning: Expression result string has been truncated, longer than %d characters: %s...",0ah,0
_cstring_s:		db "%s",0
_cstring_evaluating_s:		db "evaluating %s",0ah,0
_cstring_error_invalid_op:		db "Error: Invalid operand count - expected to find one operand but instead found %i",0ah,0
_cstring_error_must_use_a2:		db "Error: Must use a string as KeyBinding() parameter, not a %s",0ah,0
_cstring_ui_expression_er3:		db "UI Expression Error: ActionSlot() slot ID should be in range (1,%i) not %i.",0ah,0
_cstring_error_found__but:		db "Error: found ",27h,")",27h," but couldn",27h,"t find what it was closing",0ah,0
_cstring_error_must_use_a3:		db "Error: Must use a string as the name of a dvar, not a %s",0ah,0
_cstring_error_must_use_a4:		db "Error: Must use a string as the name of a localVar, not a %s",0ah,0
_cstring_2i02i:		db "%2i:%02i",0
_cstring_secondstocountdo:		db "secondsToCountdown() = %s",0ah,0
_cstring_isintermission__:		db "isIntermission() = %i",0ah,0
_cstring_unknown_datatype:		db "Unknown datatype %i in LogicalNot()",0ah,0
_cstring_i__i:		db "~%i = %i",0ah,0
_cstring_i__i__i:		db "%i >> %i = %i",0ah,0
_cstring_i__i__i1:		db "%i << %i = %i",0ah,0
_cstring_privatepartyhost:		db "PrivatePartyHost() = %i",0ah,0
_cstring_weaplockblink_2f:		db "weaplockblink( %.2f ) = %i",0ah,0
_cstring_weapattacktop__i:		db "weapattacktop() = %i",0ah,0
_cstring_weapattackdirect:		db "weapattackdirect() = %i",0ah,0
_cstring_stat_i___i:		db "stat( %i ) = %i",0ah,0
_cstring_ui_active__i:		db "ui_active() = %i",0ah,0
_cstring_ui_script_error_:		db "UI Script error: gameMsgWndActive was passed an invalid window index",0ah,0
_cstring_error_must_use_a5:		db "Error: Must use an integer for the rank: %s",0ah,0
_cstring_error_must_use_a6:		db "Error: Must use a string as the name of a menu, not a %s",0ah,0
_cstring_writingdata__i:		db "writingdata() = %i",0ah,0
_cstring_inlobby__i:		db "InLobby() = %i",0ah,0
_cstring_inprivateparty__:		db "InPrivateParty() = %i",0ah,0
_cstring_scoreboard_visib:		db "scoreboard_visible() = %i",0ah,0
_cstring_inkillcam__i:		db "InKillcam() = %i",0ah,0
_cstring_error_must_use_a7:		db "Error: Must use a string as the name of a player field, not a %s",0ah,0
_cstring_selecting_locati:		db "selecting_location() = %i",0ah,0
_cstring_flashbanged__i:		db "flashbanged() = %i",0ah,0
_cstring_scoped__i:		db "scoped() = %i",0ah,0
_cstring_aloneinprivatepa:		db "AloneInPrivateParty() = %i",0ah,0
_cstring_adsjavelin__i:		db "adsjavelin() = %i",0ah,0
_cstring_privatepartyhost1:		db "PrivatePartyHostInLobby() = %i",0ah,0
_cstring_error_you_cannot1:		db "Error: You cannot ! a ",27h,"%s",27h," (%s)",0ah,0
_cstring_error_you_cannot2:		db "Error: You cannot ~ a ",27h,"%s",27h," (%s)",0ah,0
_cstring_sin_f___f:		db "sin( %f ) = %f",0ah,0
_cstring_cos_f___f:		db "cos( %f ) = %f",0ah,0
_cstring_ui_script_error_1:		db "UI Script error: No function takes %i parameters",0ah,0
_cstring_localvarint_s___:		db "localVarInt( %s ) = %i",0ah,0
_cstring_localvarbool_s__:		db "localVarBool( %s ) = %i",0ah,0
_cstring_dvarfloat_s___f:		db "dvarfloat( %s ) = %f",0ah,0
_cstring_localvarfloat_s_:		db "localVarFloat( %s ) = %f",0ah,0
_cstring_teamname:		db "teamname",0
_cstring_player_s___s:		db "player( %s ) = %s",0ah,0
_cstring_dvarbool_s___i:		db "dvarbool( %s ) = %i",0ah,0
_cstring_dvarint_s___i:		db "dvarint( %s ) = %i",0ah,0
_cstring_dvarstring_s___s:		db "dvarstring( %s ) = %s",0ah,0
_cstring_localvarstring_s:		db "localVarString( %s ) = %s",0ah,0
_cstring_ismenuopen_s___i:		db "ismenuopen( %s ) = %i",0ah,0
_cstring_error_invalid_op1:		db "Error: Invalid operation - missing parameter inside function or parenthesis",0ah,0
_cstring_ui_expression_er4:		db "UI Expression Error: Expected at least 1 parameter to min()",0ah,0
_cstring_error_rank_must_:		db "Error: rank must be > 0: %i",0ah,0
_cstring_ui_expression_er5:		db "UI Expression Error: Expected at least 1 parameter to max()",0ah,0
_cstring_otherteamname:		db "otherteamname",0
_cstring_dead:		db "dead",0
_cstring_player_s___i:		db "player( %s ) = %i",0ah,0
_cstring_error_trying_to_:		db "Error: trying to negate a string: %s",0ah,0
_cstring_clipammo:		db "clipAmmo",0
_cstring_nightvision:		db "nightvision",0
_cstring_deaths:		db "deaths",0
_cstring_kills:		db "kills",0
_cstring_ping:		db "ping",0
_cstring_error_unknown_pl:		db "ERROR: Unknown player field ",27h,"%s",27h,0ah,0



;All constant floats and doubles:
SECTION .rdata
_float_60_00000000:		dd 0x42700000	; 60
_float_0_50000000:		dd 0x3f000000	; 0.5

