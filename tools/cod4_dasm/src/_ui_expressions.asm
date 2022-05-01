;Imports of ui_expressions:
	extern _Z21CL_IsCgameInitializedi
	extern _Z14Com_PrintErroriPKcz
	extern _Z9I_stricmpPKcS0_
	extern _Z25CG_GetHudAlphaAmmoCounteri
	extern _Z18CG_GetHudAlphaDPadi
	extern _Z21CG_GetHudAlphaCompassi
	extern cgArray
	extern uiscript_debug
	extern _Z10Com_PrintfiPKcz
	extern _Z14CG_GetTeamName6team_t
	extern _Z31CL_ControllerIndexFromClientNumi
	extern _Z19LiveStorage_GetStatii
	extern atoi
	extern floorf
	extern snprintf
	extern useFastFile
	extern _Z20StringTable_GetAssetPKcPPK11StringTable
	extern _Z18StringTable_LookupPK11StringTableiPKci
	extern _Z11Com_sprintfPciPKcz
	extern __maskrune
	extern _Z2vaPKcz
	extern _Z12Dvar_GetBoolPKc
	extern _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t
	extern _Z9Com_Error11errorParm_tPKcz
	extern _Z16Com_PrintWarningiPKcz
	extern memset
	extern g_expOperatorNames
	extern atof
	extern validOperations
	extern _Z16Sys_Millisecondsv
	extern memcpy
	extern cosf
	extern clientUIActives
	extern cgsArray
	extern _Z17CG_IsIntermissioni
	extern sinf
	extern _Z13CL_IsUIActivei
	extern _Z28Con_IsValidGameMessageWindowi
	extern g_gametype
	extern _Z25UI_GetGameTypeDisplayNamePKc
	extern _Z24CG_IsScoreboardDisplayedi
	extern _Z22CG_IsSelectingLocationi
	extern _Z14CG_Flashbangedi
	extern _Z19CG_ScopeIsOverlayedi
	extern _Z29Con_IsGameMessageWindowActiveii
	extern _Z17UI_GetScoreAtRankii
	extern _Z21CG_ActionSlotIsUsableij
	extern _Z13CG_JavelinADSi
	extern _Z25CG_GetGametypeDescriptioni
	extern _Z23CG_UICheckWeapLockBlinkif
	extern _Z27CG_UICheckWeapLockAttackTopi
	extern _Z30CG_UICheckWeapLockAttackDirecti
	extern _Z22UI_GetLocalVarsContexti
	extern _Z15UILocalVar_FindP17UILocalVarContextPKc
	extern _Z17UILocalVar_GetIntPK10UILocalVar
	extern _Z18UILocalVar_GetBoolPK10UILocalVar
	extern _Z21Dvar_GetVariantStringPKc
	extern _Z19UILocalVar_GetFloatPK10UILocalVar
	extern _Z20CG_GetPlayerTeamNamei
	extern _Z12Dvar_FindVarPKc
	extern _Z37UI_GetKeyBindingLocalizedStringSingleiPKcPc
	extern _Z20UILocalVar_GetStringPK10UILocalVarPci
	extern _Z25Menu_IsMenuOpenAndVisibleiPKc
	extern _Z28CG_GetPlayerOpposingTeamNamei
	extern _Z15CG_IsPlayerDeadi
	extern _Z25CG_GetPlayerClipAmmoCounti
	extern _Z28CG_LookingThroughNightVisioni
	extern _Z20UI_GetOurClientScorei

;Exports of ui_expressions:
	global g_releaseBuildStatement
	global s_operatorPrecedence
	global _ZZ25SecondsToCountdownDisplayiiP7OperandE12resultString
	global _Z10GetHudFadeiP7OperandS0_
	global _ZZ13GetKeyBindingiP7OperandS0_E12resultString
	global _Z15GetFieldForTeami6team_tP7OperandS1_
	global _Z25GetPlayerStatRangeBitsSetiP11OperandListP7Operand
	global _ZZ20SecondsToTimeDisplayiP7OperandS0_E12resultString
	global _Z20SecondsToTimeDisplayiP7OperandS0_
	global _Z11TableLookupiP11OperandListP7Operand
	global _Z14LocalizeStringP11OperandListP7Operand
	global _Z18EvaluateExpressioniPK11statement_sP7Operand
	global _ZZ25GetExpressionResultStringiPK11statement_sE12lastWarnTime
	global _ZZ25GetExpressionResultStringiPK11statement_sE12resultString
	global _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc
	global _Z12GetSourceIntP7Operand
	global _Z16IsExpressionTrueiPK11statement_s
	global _Z18GetExpressionFloatiPK11statement_s
	global _Z20GetOperationFunction13operationEnumP7OperandS1_
	global _Z25GetExpressionResultStringiPK11statement_s
	global _Z5RunOpiP13OperatorStackP12OperandStack


SECTION .text


;GetHudFade(int, Operand*, Operand*)
_Z10GetHudFadeiP7OperandS0_:
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
	call _Z21CL_IsCgameInitializedi
	test eax, eax
	jz _Z10GetHudFadeiP7OperandS0__10
	mov dword [esi], 0x1
	mov eax, [edi]
	cmp eax, 0x2
	jz _Z10GetHudFadeiP7OperandS0__20
	cmp eax, 0x1
	jz _Z10GetHudFadeiP7OperandS0__30
	cmp eax, 0x2
	jz _Z10GetHudFadeiP7OperandS0__40
	test eax, eax
	jz _Z10GetHudFadeiP7OperandS0__50
	mov eax, _cstring_null
_Z10GetHudFadeiP7OperandS0__90:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_must_use_a
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [esi+0x4], 0x0
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z10GetHudFadeiP7OperandS0__140:
	mov eax, [edi]
	cmp eax, 0x1
	jz _Z10GetHudFadeiP7OperandS0__60
	cmp eax, 0x2
	jz _Z10GetHudFadeiP7OperandS0__70
	test eax, eax
	jz _Z10GetHudFadeiP7OperandS0__80
	mov eax, _cstring_null
_Z10GetHudFadeiP7OperandS0__150:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_argument_t
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
_Z10GetHudFadeiP7OperandS0__10:
	mov dword [esi+0x4], 0x0
_Z10GetHudFadeiP7OperandS0__120:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z10GetHudFadeiP7OperandS0__50:
	mov eax, _cstring_int
	jmp _Z10GetHudFadeiP7OperandS0__90
_Z10GetHudFadeiP7OperandS0__20:
	mov dword [esp+0x4], _cstring_dpad
	mov eax, [edi+0x4]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z10GetHudFadeiP7OperandS0__100
	mov dword [esp+0x4], _cstring_weapon
	mov eax, [edi+0x4]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z10GetHudFadeiP7OperandS0__110
	mov [esp], ebx
	call _Z25CG_GetHudAlphaAmmoCounteri
	fstp dword [esi+0x4]
	jmp _Z10GetHudFadeiP7OperandS0__120
_Z10GetHudFadeiP7OperandS0__30:
	mov eax, _cstring_float
	jmp _Z10GetHudFadeiP7OperandS0__90
_Z10GetHudFadeiP7OperandS0__40:
	mov eax, _cstring_string
	jmp _Z10GetHudFadeiP7OperandS0__90
_Z10GetHudFadeiP7OperandS0__100:
	mov [esp], ebx
	call _Z18CG_GetHudAlphaDPadi
	fstp dword [esi+0x4]
	jmp _Z10GetHudFadeiP7OperandS0__120
_Z10GetHudFadeiP7OperandS0__110:
	mov dword [esp+0x4], _cstring_compass
	mov eax, [edi+0x4]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z10GetHudFadeiP7OperandS0__130
	mov [esp], ebx
	call _Z21CG_GetHudAlphaCompassi
	fstp dword [esi+0x4]
	jmp _Z10GetHudFadeiP7OperandS0__120
_Z10GetHudFadeiP7OperandS0__130:
	mov dword [esp+0x4], _cstring_scoreboard
	mov eax, [edi+0x4]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z10GetHudFadeiP7OperandS0__140
	mov dword [esi+0x4], 0x3f800000
	jmp _Z10GetHudFadeiP7OperandS0__120
_Z10GetHudFadeiP7OperandS0__60:
	mov eax, _cstring_float
	jmp _Z10GetHudFadeiP7OperandS0__150
_Z10GetHudFadeiP7OperandS0__80:
	mov eax, _cstring_int
	jmp _Z10GetHudFadeiP7OperandS0__150
_Z10GetHudFadeiP7OperandS0__70:
	mov eax, _cstring_string
	jmp _Z10GetHudFadeiP7OperandS0__150
	nop


;GetFieldForTeam(int, team_t, Operand*, Operand*)
_Z15GetFieldForTeami6team_tP7OperandS1_:
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
	jz _Z15GetFieldForTeami6team_tP7OperandS1__10
	cmp eax, 0x1
	jz _Z15GetFieldForTeami6team_tP7OperandS1__20
	cmp eax, 0x2
	jz _Z15GetFieldForTeami6team_tP7OperandS1__30
	test eax, eax
	jz _Z15GetFieldForTeami6team_tP7OperandS1__40
	mov eax, _cstring_null
_Z15GetFieldForTeami6team_tP7OperandS1__50:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_must_use_a1
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [esi], 0x2
	mov dword [esi+0x4], _cstring_null
_Z15GetFieldForTeami6team_tP7OperandS1__70:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15GetFieldForTeami6team_tP7OperandS1__20:
	mov eax, _cstring_float
	jmp _Z15GetFieldForTeami6team_tP7OperandS1__50
_Z15GetFieldForTeami6team_tP7OperandS1__40:
	mov eax, _cstring_int
	jmp _Z15GetFieldForTeami6team_tP7OperandS1__50
_Z15GetFieldForTeami6team_tP7OperandS1__30:
	mov eax, _cstring_string
	jmp _Z15GetFieldForTeami6team_tP7OperandS1__50
_Z15GetFieldForTeami6team_tP7OperandS1__10:
	mov dword [esp+0x4], _cstring_score
	mov eax, [ecx+0x4]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z15GetFieldForTeami6team_tP7OperandS1__60
	mov dword [esi], 0x0
	mov eax, cgArray
	mov edx, [eax+edi*4+0x4f8ac]
	mov [esi+0x4], edx
	mov eax, uiscript_debug
	mov eax, [eax]
	mov esi, [eax+0xc]
	test esi, esi
	jz _Z15GetFieldForTeami6team_tP7OperandS1__70
	mov [esp+0x10], edx
	mov eax, [ebx+0x4]
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_teami_s___i
	mov dword [esp], 0xd
	call _Z10Com_PrintfiPKcz
	jmp _Z15GetFieldForTeami6team_tP7OperandS1__70
_Z15GetFieldForTeami6team_tP7OperandS1__60:
	mov dword [esp+0x4], _cstring_name
	mov eax, [ebx+0x4]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z15GetFieldForTeami6team_tP7OperandS1__80
	mov dword [esi], 0x2
	mov [esp], edi
	call _Z14CG_GetTeamName6team_t
	mov edx, eax
	mov [esi+0x4], eax
	mov eax, uiscript_debug
	mov eax, [eax]
	mov ecx, [eax+0xc]
	test ecx, ecx
	jz _Z15GetFieldForTeami6team_tP7OperandS1__70
	mov [esp+0x10], edx
	mov eax, [ebx+0x4]
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_teami_s___s
	mov dword [esp], 0xd
	call _Z10Com_PrintfiPKcz
	jmp _Z15GetFieldForTeami6team_tP7OperandS1__70
_Z15GetFieldForTeami6team_tP7OperandS1__80:
	mov eax, [ebx+0x4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_unknown_te
	mov dword [esp], 0xd
	call _Z10Com_PrintfiPKcz
	mov dword [esi], 0x0
	mov dword [esi+0x4], 0x0
	jmp _Z15GetFieldForTeami6team_tP7OperandS1__70


;GetPlayerStatRangeBitsSet(int, OperandList*, Operand*)
_Z25GetPlayerStatRangeBitsSetiP11OperandListP7Operand:
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
	jz _Z25GetPlayerStatRangeBitsSetiP11OperandListP7Operand_10
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_ui_expression_er
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov eax, [ebp-0x24]
	mov dword [eax], 0x0
	mov dword [eax+0x4], 0x0
_Z25GetPlayerStatRangeBitsSetiP11OperandListP7Operand_110:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25GetPlayerStatRangeBitsSetiP11OperandListP7Operand_10:
	mov eax, [edx]
	cmp eax, 0x2
	jz _Z25GetPlayerStatRangeBitsSetiP11OperandListP7Operand_20
	sub eax, 0x1
	jz _Z25GetPlayerStatRangeBitsSetiP11OperandListP7Operand_30
	mov eax, [edx+0x4]
	mov [ebp-0x20], eax
_Z25GetPlayerStatRangeBitsSetiP11OperandListP7Operand_140:
	lea eax, [ebx+0x8]
	mov edx, [ebx+0x8]
	cmp edx, 0x2
	jz _Z25GetPlayerStatRangeBitsSetiP11OperandListP7Operand_40
	sub edx, 0x1
	jz _Z25GetPlayerStatRangeBitsSetiP11OperandListP7Operand_50
	mov eax, [eax+0x4]
	mov [ebp-0x1c], eax
_Z25GetPlayerStatRangeBitsSetiP11OperandListP7Operand_130:
	lea eax, [ebx+0x10]
	mov edx, [ebx+0x10]
	cmp edx, 0x2
	jz _Z25GetPlayerStatRangeBitsSetiP11OperandListP7Operand_60
	sub edx, 0x1
	jz _Z25GetPlayerStatRangeBitsSetiP11OperandListP7Operand_70
	mov edi, [eax+0x4]
_Z25GetPlayerStatRangeBitsSetiP11OperandListP7Operand_120:
	mov edx, [ebp-0x1c]
	cmp [ebp-0x20], edx
	jle _Z25GetPlayerStatRangeBitsSetiP11OperandListP7Operand_80
	mov [esp+0xc], edx
	mov eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_ui_expression_er1
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov edx, [ebp-0x24]
	mov dword [edx], 0x0
	mov dword [edx+0x4], 0x0
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25GetPlayerStatRangeBitsSetiP11OperandListP7Operand_80:
	mov edx, [ebp-0x24]
	mov dword [edx], 0x0
	mov dword [edx+0x4], 0x0
	mov [esp], esi
	call _Z31CL_ControllerIndexFromClientNumi
	mov esi, eax
	mov ebx, [ebp-0x20]
_Z25GetPlayerStatRangeBitsSetiP11OperandListP7Operand_100:
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z19LiveStorage_GetStatii
	test eax, edi
	jnz _Z25GetPlayerStatRangeBitsSetiP11OperandListP7Operand_90
	add ebx, 0x1
	cmp [ebp-0x1c], ebx
	jge _Z25GetPlayerStatRangeBitsSetiP11OperandListP7Operand_100
_Z25GetPlayerStatRangeBitsSetiP11OperandListP7Operand_150:
	mov eax, uiscript_debug
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz _Z25GetPlayerStatRangeBitsSetiP11OperandListP7Operand_110
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
	call _Z10Com_PrintfiPKcz
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25GetPlayerStatRangeBitsSetiP11OperandListP7Operand_70:
	cvttss2si edi, [eax+0x4]
	jmp _Z25GetPlayerStatRangeBitsSetiP11OperandListP7Operand_120
_Z25GetPlayerStatRangeBitsSetiP11OperandListP7Operand_50:
	cvttss2si eax, [eax+0x4]
	mov [ebp-0x1c], eax
	jmp _Z25GetPlayerStatRangeBitsSetiP11OperandListP7Operand_130
_Z25GetPlayerStatRangeBitsSetiP11OperandListP7Operand_30:
	cvttss2si edx, [edx+0x4]
	mov [ebp-0x20], edx
	jmp _Z25GetPlayerStatRangeBitsSetiP11OperandListP7Operand_140
_Z25GetPlayerStatRangeBitsSetiP11OperandListP7Operand_90:
	mov eax, [ebp-0x24]
	mov dword [eax+0x4], 0x1
	jmp _Z25GetPlayerStatRangeBitsSetiP11OperandListP7Operand_150
_Z25GetPlayerStatRangeBitsSetiP11OperandListP7Operand_60:
	mov eax, [eax+0x4]
	mov [esp], eax
	call atoi
	mov edi, eax
	jmp _Z25GetPlayerStatRangeBitsSetiP11OperandListP7Operand_120
_Z25GetPlayerStatRangeBitsSetiP11OperandListP7Operand_40:
	mov eax, [eax+0x4]
	mov [esp], eax
	call atoi
	mov [ebp-0x1c], eax
	jmp _Z25GetPlayerStatRangeBitsSetiP11OperandListP7Operand_130
_Z25GetPlayerStatRangeBitsSetiP11OperandListP7Operand_20:
	mov eax, [edx+0x4]
	mov [esp], eax
	call atoi
	mov [ebp-0x20], eax
	jmp _Z25GetPlayerStatRangeBitsSetiP11OperandListP7Operand_140
	nop


;SecondsToTimeDisplay(int, Operand*, Operand*)
_Z20SecondsToTimeDisplayiP7OperandS0_:
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
	jz _Z20SecondsToTimeDisplayiP7OperandS0__10
	test edx, edx
	jnz _Z20SecondsToTimeDisplayiP7OperandS0__20
	mov eax, [eax+0x4]
_Z20SecondsToTimeDisplayiP7OperandS0__40:
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
	jnz _Z20SecondsToTimeDisplayiP7OperandS0__30
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20SecondsToTimeDisplayiP7OperandS0__20:
	mov eax, [eax+0x4]
	mov [esp], eax
	call atoi
	jmp _Z20SecondsToTimeDisplayiP7OperandS0__40
_Z20SecondsToTimeDisplayiP7OperandS0__30:
	mov dword [ebp+0x10], _ZZ20SecondsToTimeDisplayiP7OperandS0_E12resultString
	mov dword [ebp+0xc], _cstring_secondstotime__s
	mov dword [ebp+0x8], 0xd
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z10Com_PrintfiPKcz
_Z20SecondsToTimeDisplayiP7OperandS0__10:
	cvttss2si eax, [eax+0x4]
	jmp _Z20SecondsToTimeDisplayiP7OperandS0__40


;TableLookup(int, OperandList*, Operand*)
_Z11TableLookupiP11OperandListP7Operand:
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
	jnz _Z11TableLookupiP11OperandListP7Operand_10
	mov dword [ecx], 0x2
	mov dword [ecx+0x4], _cstring_null
_Z11TableLookupiP11OperandListP7Operand_150:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11TableLookupiP11OperandListP7Operand_10:
	mov eax, [edx+0x50]
	cmp eax, 0x4
	jz _Z11TableLookupiP11OperandListP7Operand_20
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_ui_expression_er2
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov edx, [ebp-0x54]
	mov dword [edx], 0x2
	mov dword [edx+0x4], _cstring_null
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11TableLookupiP11OperandListP7Operand_20:
	mov ecx, [edx]
	mov ebx, [edx+0x4]
	mov esi, ecx
	cmp ecx, 0x2
	jz _Z11TableLookupiP11OperandListP7Operand_30
	mov eax, [currentTempOperand]
	mov edx, eax
	shl edx, 0x8
	add edx, s_tempOperandValueAsString
	mov [ebp-0x3c], edx
	add eax, 0x1
	and eax, 0x8000000f
	js _Z11TableLookupiP11OperandListP7Operand_40
_Z11TableLookupiP11OperandListP7Operand_390:
	mov [currentTempOperand], eax
	test esi, esi
	jz _Z11TableLookupiP11OperandListP7Operand_50
	sub esi, 0x1
	jz _Z11TableLookupiP11OperandListP7Operand_60
_Z11TableLookupiP11OperandListP7Operand_320:
	mov edx, [ebp-0x3c]
_Z11TableLookupiP11OperandListP7Operand_280:
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z20StringTable_GetAssetPKcPPK11StringTable
	mov edx, [ebp-0x54]
	mov dword [edx], 0x2
	lea eax, [edi+0x18]
	mov [ebp-0x38], eax
	mov eax, [edi+0x18]
	cmp eax, 0x1
	jz _Z11TableLookupiP11OperandListP7Operand_70
	test eax, eax
	jnz _Z11TableLookupiP11OperandListP7Operand_80
	mov eax, [ebp-0x38]
	mov eax, [eax+0x4]
	mov [ebp-0x50], eax
_Z11TableLookupiP11OperandListP7Operand_290:
	mov ecx, [edi+0x10]
	mov ebx, [edi+0x14]
	mov esi, ecx
	cmp ecx, 0x2
	jz _Z11TableLookupiP11OperandListP7Operand_90
	mov eax, [currentTempOperand]
	mov edx, eax
	shl edx, 0x8
	add edx, s_tempOperandValueAsString
	mov [ebp-0x34], edx
	add eax, 0x1
	and eax, 0x8000000f
	js _Z11TableLookupiP11OperandListP7Operand_100
_Z11TableLookupiP11OperandListP7Operand_380:
	mov [currentTempOperand], eax
	test esi, esi
	jz _Z11TableLookupiP11OperandListP7Operand_110
	sub esi, 0x1
	jz _Z11TableLookupiP11OperandListP7Operand_120
_Z11TableLookupiP11OperandListP7Operand_310:
	mov ebx, [ebp-0x34]
_Z11TableLookupiP11OperandListP7Operand_90:
	lea edx, [edi+0x8]
	mov [ebp-0x30], edx
	mov eax, [edi+0x8]
	cmp eax, 0x1
	jz _Z11TableLookupiP11OperandListP7Operand_130
	test eax, eax
	jnz _Z11TableLookupiP11OperandListP7Operand_140
	mov edx, [ebp-0x30]
	mov eax, [edx+0x4]
_Z11TableLookupiP11OperandListP7Operand_300:
	mov edx, [ebp-0x50]
	mov [esp+0xc], edx
	mov [esp+0x8], ebx
	mov [esp+0x4], eax
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z18StringTable_LookupPK11StringTableiPKci
	mov [ebp-0x4c], eax
	mov edx, [ebp-0x54]
	mov [edx+0x4], eax
	mov eax, uiscript_debug
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz _Z11TableLookupiP11OperandListP7Operand_150
	mov edx, [ebp-0x38]
	mov eax, [edx]
	cmp eax, 0x1
	jz _Z11TableLookupiP11OperandListP7Operand_160
	test eax, eax
	jnz _Z11TableLookupiP11OperandListP7Operand_170
	mov edx, [ebp-0x38]
	mov edx, [edx+0x4]
	mov [ebp-0x48], edx
_Z11TableLookupiP11OperandListP7Operand_370:
	mov ecx, [edi+0x10]
	mov ebx, [edi+0x14]
	mov esi, ecx
	cmp ecx, 0x2
	jz _Z11TableLookupiP11OperandListP7Operand_180
	mov eax, [currentTempOperand]
	mov edx, eax
	shl edx, 0x8
	add edx, s_tempOperandValueAsString
	mov [ebp-0x2c], edx
	add eax, 0x1
	and eax, 0x8000000f
	js _Z11TableLookupiP11OperandListP7Operand_190
_Z11TableLookupiP11OperandListP7Operand_410:
	mov [currentTempOperand], eax
	test esi, esi
	jz _Z11TableLookupiP11OperandListP7Operand_200
	sub esi, 0x1
	jz _Z11TableLookupiP11OperandListP7Operand_210
_Z11TableLookupiP11OperandListP7Operand_400:
	mov edx, [ebp-0x2c]
	mov [ebp-0x44], edx
_Z11TableLookupiP11OperandListP7Operand_360:
	mov edx, [ebp-0x30]
	mov eax, [edx]
	cmp eax, 0x1
	jz _Z11TableLookupiP11OperandListP7Operand_220
	test eax, eax
	jnz _Z11TableLookupiP11OperandListP7Operand_230
	mov edx, [ebp-0x30]
	mov edx, [edx+0x4]
	mov [ebp-0x40], edx
_Z11TableLookupiP11OperandListP7Operand_350:
	mov ecx, [edi]
	mov ebx, [edi+0x4]
	mov esi, ecx
	cmp ecx, 0x2
	jz _Z11TableLookupiP11OperandListP7Operand_240
	mov eax, [currentTempOperand]
	mov edx, eax
	shl edx, 0x8
	lea edi, [edx+s_tempOperandValueAsString]
	add eax, 0x1
	and eax, 0x8000000f
	js _Z11TableLookupiP11OperandListP7Operand_250
_Z11TableLookupiP11OperandListP7Operand_420:
	mov [currentTempOperand], eax
	test esi, esi
	jz _Z11TableLookupiP11OperandListP7Operand_260
	sub esi, 0x1
	jz _Z11TableLookupiP11OperandListP7Operand_270
_Z11TableLookupiP11OperandListP7Operand_330:
	mov eax, edi
_Z11TableLookupiP11OperandListP7Operand_340:
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
	call _Z10Com_PrintfiPKcz
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11TableLookupiP11OperandListP7Operand_30:
	mov edx, ebx
	jmp _Z11TableLookupiP11OperandListP7Operand_280
_Z11TableLookupiP11OperandListP7Operand_70:
	mov edx, [ebp-0x38]
	cvttss2si edx, [edx+0x4]
	mov [ebp-0x50], edx
	jmp _Z11TableLookupiP11OperandListP7Operand_290
_Z11TableLookupiP11OperandListP7Operand_130:
	cvttss2si eax, [edx+0x4]
	jmp _Z11TableLookupiP11OperandListP7Operand_300
_Z11TableLookupiP11OperandListP7Operand_80:
	mov edx, [ebp-0x38]
	mov eax, [edx+0x4]
	mov [esp], eax
	call atoi
	mov [ebp-0x50], eax
	jmp _Z11TableLookupiP11OperandListP7Operand_290
_Z11TableLookupiP11OperandListP7Operand_140:
	mov edx, [ebp-0x30]
	mov eax, [edx+0x4]
	mov [esp], eax
	call atoi
	jmp _Z11TableLookupiP11OperandListP7Operand_300
_Z11TableLookupiP11OperandListP7Operand_110:
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_i
	mov dword [esp+0x4], 0x100
	mov eax, [ebp-0x34]
	mov [esp], eax
	call _Z11Com_sprintfPciPKcz
	jmp _Z11TableLookupiP11OperandListP7Operand_310
_Z11TableLookupiP11OperandListP7Operand_50:
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_i
	mov dword [esp+0x4], 0x100
	mov eax, [ebp-0x3c]
	mov [esp], eax
	call _Z11Com_sprintfPciPKcz
	jmp _Z11TableLookupiP11OperandListP7Operand_320
_Z11TableLookupiP11OperandListP7Operand_120:
	mov [ebp-0x5c], ebx
	movss xmm0, dword [ebp-0x5c]
	cvtss2sd xmm0, xmm0
	movsd [esp+0xc], xmm0
	mov dword [esp+0x8], _cstring_f
	mov dword [esp+0x4], 0x100
	mov eax, [ebp-0x34]
	mov [esp], eax
	call _Z11Com_sprintfPciPKcz
	jmp _Z11TableLookupiP11OperandListP7Operand_310
_Z11TableLookupiP11OperandListP7Operand_60:
	mov [ebp-0x5c], ebx
	movss xmm0, dword [ebp-0x5c]
	cvtss2sd xmm0, xmm0
	movsd [esp+0xc], xmm0
	mov dword [esp+0x8], _cstring_f
	mov dword [esp+0x4], 0x100
	mov eax, [ebp-0x3c]
	mov [esp], eax
	call _Z11Com_sprintfPciPKcz
	jmp _Z11TableLookupiP11OperandListP7Operand_320
_Z11TableLookupiP11OperandListP7Operand_270:
	mov [ebp-0x5c], ebx
	movss xmm0, dword [ebp-0x5c]
	cvtss2sd xmm0, xmm0
	movsd [esp+0xc], xmm0
	mov dword [esp+0x8], _cstring_f
	mov dword [esp+0x4], 0x100
	mov [esp], edi
	call _Z11Com_sprintfPciPKcz
	jmp _Z11TableLookupiP11OperandListP7Operand_330
_Z11TableLookupiP11OperandListP7Operand_240:
	mov eax, ebx
	jmp _Z11TableLookupiP11OperandListP7Operand_340
_Z11TableLookupiP11OperandListP7Operand_220:
	cvttss2si eax, [edx+0x4]
	mov [ebp-0x40], eax
	jmp _Z11TableLookupiP11OperandListP7Operand_350
_Z11TableLookupiP11OperandListP7Operand_180:
	mov [ebp-0x44], ebx
	jmp _Z11TableLookupiP11OperandListP7Operand_360
_Z11TableLookupiP11OperandListP7Operand_160:
	cvttss2si eax, [edx+0x4]
	mov [ebp-0x48], eax
	jmp _Z11TableLookupiP11OperandListP7Operand_370
_Z11TableLookupiP11OperandListP7Operand_100:
	sub eax, 0x1
	or eax, 0xfffffff0
	add eax, 0x1
	jmp _Z11TableLookupiP11OperandListP7Operand_380
_Z11TableLookupiP11OperandListP7Operand_40:
	sub eax, 0x1
	or eax, 0xfffffff0
	add eax, 0x1
	jmp _Z11TableLookupiP11OperandListP7Operand_390
_Z11TableLookupiP11OperandListP7Operand_170:
	mov edx, [ebp-0x38]
	mov eax, [edx+0x4]
	mov [esp], eax
	call atoi
	mov [ebp-0x48], eax
	jmp _Z11TableLookupiP11OperandListP7Operand_370
_Z11TableLookupiP11OperandListP7Operand_260:
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_i
	mov dword [esp+0x4], 0x100
	mov [esp], edi
	call _Z11Com_sprintfPciPKcz
	jmp _Z11TableLookupiP11OperandListP7Operand_330
_Z11TableLookupiP11OperandListP7Operand_200:
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_i
	mov dword [esp+0x4], 0x100
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call _Z11Com_sprintfPciPKcz
	jmp _Z11TableLookupiP11OperandListP7Operand_400
_Z11TableLookupiP11OperandListP7Operand_230:
	mov edx, [ebp-0x30]
	mov eax, [edx+0x4]
	mov [esp], eax
	call atoi
	mov [ebp-0x40], eax
	jmp _Z11TableLookupiP11OperandListP7Operand_350
_Z11TableLookupiP11OperandListP7Operand_190:
	sub eax, 0x1
	or eax, 0xfffffff0
	add eax, 0x1
	jmp _Z11TableLookupiP11OperandListP7Operand_410
_Z11TableLookupiP11OperandListP7Operand_250:
	sub eax, 0x1
	or eax, 0xfffffff0
	add eax, 0x1
	jmp _Z11TableLookupiP11OperandListP7Operand_420
_Z11TableLookupiP11OperandListP7Operand_210:
	mov [ebp-0x5c], ebx
	movss xmm0, dword [ebp-0x5c]
	cvtss2sd xmm0, xmm0
	movsd [esp+0xc], xmm0
	mov dword [esp+0x8], _cstring_f
	mov dword [esp+0x4], 0x100
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call _Z11Com_sprintfPciPKcz
	jmp _Z11TableLookupiP11OperandListP7Operand_400


;LocalizeString(OperandList*, Operand*)
_Z14LocalizeStringP11OperandListP7Operand:
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
	jle _Z14LocalizeStringP11OperandListP7Operand_10
	mov dword [ebp-0x428], 0x0
	mov dword [ebp-0x424], 0x0
	mov [ebp-0x434], eax
	cmp dword [eax], 0x2
	jz _Z14LocalizeStringP11OperandListP7Operand_20
_Z14LocalizeStringP11OperandListP7Operand_190:
	mov ecx, [eax]
	mov ebx, [eax+0x4]
	mov esi, ecx
	cmp ecx, 0x2
	jz _Z14LocalizeStringP11OperandListP7Operand_30
	mov eax, [currentTempOperand]
	mov edx, eax
	shl edx, 0x8
	lea edi, [edx+s_tempOperandValueAsString]
	add eax, 0x1
	and eax, 0x8000000f
	js _Z14LocalizeStringP11OperandListP7Operand_40
_Z14LocalizeStringP11OperandListP7Operand_380:
	mov [currentTempOperand], eax
	test esi, esi
	jz _Z14LocalizeStringP11OperandListP7Operand_50
	sub esi, 0x1
	jz _Z14LocalizeStringP11OperandListP7Operand_60
_Z14LocalizeStringP11OperandListP7Operand_370:
	mov [ebp-0x41c], edi
_Z14LocalizeStringP11OperandListP7Operand_360:
	cld
	xor eax, eax
	mov ecx, 0xffffffff
	repne scasb
	not ecx
	mov esi, ecx
	sub esi, 0x1
	jz _Z14LocalizeStringP11OperandListP7Operand_70
	xor edi, edi
	jmp _Z14LocalizeStringP11OperandListP7Operand_80
_Z14LocalizeStringP11OperandListP7Operand_110:
	movsx edx, byte [ebx]
	test edx, 0xffffff80
	jnz _Z14LocalizeStringP11OperandListP7Operand_90
_Z14LocalizeStringP11OperandListP7Operand_120:
	mov eax, [0xd5cc084]
	mov eax, [eax+edx*4+0x34]
	shr eax, 0x8
	and eax, 0x1
	test eax, eax
	jnz _Z14LocalizeStringP11OperandListP7Operand_100
_Z14LocalizeStringP11OperandListP7Operand_130:
	add edi, 0x1
	cmp esi, edi
	jz _Z14LocalizeStringP11OperandListP7Operand_70
_Z14LocalizeStringP11OperandListP7Operand_80:
	mov eax, [ebp-0x41c]
	lea ebx, [edi+eax]
	movzx edx, byte [ebx]
	lea eax, [edx-0x14]
	cmp al, 0x2
	ja _Z14LocalizeStringP11OperandListP7Operand_110
	movsx eax, dl
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_bad_escape
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	movsx edx, byte [ebx]
	test edx, 0xffffff80
	jz _Z14LocalizeStringP11OperandListP7Operand_120
_Z14LocalizeStringP11OperandListP7Operand_90:
	mov dword [esp+0x4], 0x100
	mov [esp], edx
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	test eax, eax
	jz _Z14LocalizeStringP11OperandListP7Operand_130
_Z14LocalizeStringP11OperandListP7Operand_100:
	mov edx, [ebp-0x41c]
	mov [esp+0x4], edx
	mov dword [esp], _cstring_nonlocalized_ui_
	call _Z2vaPKcz
	mov ebx, eax
	mov dword [esp], _cstring_loc_warnings
	call _Z12Dvar_GetBoolPKc
	test al, al
	jnz _Z14LocalizeStringP11OperandListP7Operand_140
_Z14LocalizeStringP11OperandListP7Operand_70:
	mov edx, [ebp-0x424]
	lea eax, [esi+edx+0x1]
	cmp eax, 0x3ff
	ja _Z14LocalizeStringP11OperandListP7Operand_150
_Z14LocalizeStringP11OperandListP7Operand_350:
	test esi, esi
	jz _Z14LocalizeStringP11OperandListP7Operand_160
	mov edx, [ebp-0x424]
	mov byte [ebp+edx-0x418], 0x15
	add edx, 0x1
	mov [ebp-0x424], edx
_Z14LocalizeStringP11OperandListP7Operand_340:
	lea edi, [ebp-0x418]
	add edi, [ebp-0x424]
	xor ebx, ebx
_Z14LocalizeStringP11OperandListP7Operand_170:
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
	jnz _Z14LocalizeStringP11OperandListP7Operand_170
	add [ebp-0x424], ebx
_Z14LocalizeStringP11OperandListP7Operand_160:
	add dword [ebp-0x428], 0x1
	add dword [ebp-0x434], 0x8
	mov eax, [ebp-0x428]
	mov edx, [ebp-0x42c]
	cmp eax, [edx+0x50]
	jge _Z14LocalizeStringP11OperandListP7Operand_180
	mov eax, [ebp-0x434]
	cmp dword [eax], 0x2
	jnz _Z14LocalizeStringP11OperandListP7Operand_190
_Z14LocalizeStringP11OperandListP7Operand_20:
	mov ecx, [eax]
	mov ebx, [eax+0x4]
	mov esi, ecx
	cmp ecx, 0x2
	jz _Z14LocalizeStringP11OperandListP7Operand_200
	mov eax, [currentTempOperand]
	mov edx, eax
	shl edx, 0x8
	lea edi, [edx+s_tempOperandValueAsString]
	add eax, 0x1
	and eax, 0x8000000f
	js _Z14LocalizeStringP11OperandListP7Operand_210
_Z14LocalizeStringP11OperandListP7Operand_450:
	mov [currentTempOperand], eax
	test esi, esi
	jz _Z14LocalizeStringP11OperandListP7Operand_220
	sub esi, 0x1
	jz _Z14LocalizeStringP11OperandListP7Operand_230
_Z14LocalizeStringP11OperandListP7Operand_420:
	mov [ebp-0x420], edi
_Z14LocalizeStringP11OperandListP7Operand_390:
	cld
	xor eax, eax
	mov ecx, 0xffffffff
	repne scasb
	not ecx
	lea edi, [ecx-0x1]
	cmp edi, 0x1
	jbe _Z14LocalizeStringP11OperandListP7Operand_160
	mov eax, [ebp-0x420]
	cmp byte [eax], 0x40
	jz _Z14LocalizeStringP11OperandListP7Operand_240
	mov [esp+0x4], eax
	mov dword [esp], _cstring_illegal_localize
	call _Z2vaPKcz
	mov ebx, eax
	mov dword [esp], _cstring_loc_warnings
	call _Z12Dvar_GetBoolPKc
	test al, al
	jnz _Z14LocalizeStringP11OperandListP7Operand_250
_Z14LocalizeStringP11OperandListP7Operand_240:
	cmp edi, 0x1
	jle _Z14LocalizeStringP11OperandListP7Operand_260
	mov esi, 0x1
	jmp _Z14LocalizeStringP11OperandListP7Operand_270
_Z14LocalizeStringP11OperandListP7Operand_300:
	mov eax, [0xd5cc084]
	test dword [eax+edx*4+0x34], 0x500
	setnz al
	movzx eax, al
_Z14LocalizeStringP11OperandListP7Operand_310:
	test eax, eax
	jnz _Z14LocalizeStringP11OperandListP7Operand_280
	cmp byte [ebx], 0x5f
	jz _Z14LocalizeStringP11OperandListP7Operand_280
	mov edx, [ebp-0x420]
	mov [esp+0x4], edx
	mov dword [esp], _cstring_illegal_localize1
	call _Z2vaPKcz
	mov ebx, eax
	mov dword [esp], _cstring_loc_warnings
	call _Z12Dvar_GetBoolPKc
	test al, al
	jnz _Z14LocalizeStringP11OperandListP7Operand_290
_Z14LocalizeStringP11OperandListP7Operand_280:
	add esi, 0x1
	cmp edi, esi
	jz _Z14LocalizeStringP11OperandListP7Operand_260
_Z14LocalizeStringP11OperandListP7Operand_270:
	mov ebx, [ebp-0x420]
	add ebx, esi
	movsx edx, byte [ebx]
	test edx, 0xffffff80
	jz _Z14LocalizeStringP11OperandListP7Operand_300
	mov dword [esp+0x4], 0x500
	mov [esp], edx
	call __maskrune
	test eax, eax
	setnz al
	movzx eax, al
	jmp _Z14LocalizeStringP11OperandListP7Operand_310
_Z14LocalizeStringP11OperandListP7Operand_260:
	mov eax, [ebp-0x420]
	add eax, 0x1
	mov [ebp-0x41c], eax
	lea esi, [edi-0x1]
	mov edx, [ebp-0x424]
	lea eax, [esi+edx+0x1]
	cmp eax, 0x3ff
	ja _Z14LocalizeStringP11OperandListP7Operand_320
_Z14LocalizeStringP11OperandListP7Operand_410:
	mov eax, [ebp-0x424]
	test eax, eax
	jz _Z14LocalizeStringP11OperandListP7Operand_330
	mov edx, [ebp-0x424]
	mov byte [ebp+edx-0x418], 0x14
	add edx, 0x1
	mov [ebp-0x424], edx
_Z14LocalizeStringP11OperandListP7Operand_330:
	test esi, esi
	jnz _Z14LocalizeStringP11OperandListP7Operand_340
	jmp _Z14LocalizeStringP11OperandListP7Operand_160
_Z14LocalizeStringP11OperandListP7Operand_10:
	mov dword [ebp-0x424], 0x0
_Z14LocalizeStringP11OperandListP7Operand_180:
	mov edx, [ebp-0x424]
	mov byte [ebp+edx-0x418], 0x0
	mov eax, [ebp-0x430]
	mov dword [eax], 0x2
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_ui_string
	lea edx, [ebp-0x418]
	mov [esp], edx
	call _Z23SEH_LocalizeTextMessagePKcS0_15msgLocErrType_t
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
_Z14LocalizeStringP11OperandListP7Operand_150:
	mov dword [esp+0xc], 0x400
	mov eax, [ebp-0x41c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_s_is_too_l
	mov dword [esp], 0x7
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z14LocalizeStringP11OperandListP7Operand_350
_Z14LocalizeStringP11OperandListP7Operand_30:
	mov [ebp-0x41c], ebx
	mov edi, ebx
	jmp _Z14LocalizeStringP11OperandListP7Operand_360
_Z14LocalizeStringP11OperandListP7Operand_50:
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_i
	mov dword [esp+0x4], 0x100
	mov [esp], edi
	call _Z11Com_sprintfPciPKcz
	jmp _Z14LocalizeStringP11OperandListP7Operand_370
_Z14LocalizeStringP11OperandListP7Operand_40:
	sub eax, 0x1
	or eax, 0xfffffff0
	add eax, 0x1
	jmp _Z14LocalizeStringP11OperandListP7Operand_380
_Z14LocalizeStringP11OperandListP7Operand_200:
	mov [ebp-0x420], ebx
	mov edi, ebx
	jmp _Z14LocalizeStringP11OperandListP7Operand_390
_Z14LocalizeStringP11OperandListP7Operand_290:
	mov dword [esp], _cstring_loc_warningsaser
	call _Z12Dvar_GetBoolPKc
	test al, al
	jnz _Z14LocalizeStringP11OperandListP7Operand_400
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_warning_s
	mov dword [esp], 0xd
	call _Z16Com_PrintWarningiPKcz
	jmp _Z14LocalizeStringP11OperandListP7Operand_280
_Z14LocalizeStringP11OperandListP7Operand_320:
	mov dword [esp+0xc], 0x400
	mov eax, [ebp-0x41c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_s_is_too_l
	mov dword [esp], 0x7
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z14LocalizeStringP11OperandListP7Operand_410
_Z14LocalizeStringP11OperandListP7Operand_220:
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_i
	mov dword [esp+0x4], 0x100
	mov [esp], edi
	call _Z11Com_sprintfPciPKcz
	jmp _Z14LocalizeStringP11OperandListP7Operand_420
_Z14LocalizeStringP11OperandListP7Operand_60:
	mov [ebp-0x43c], ebx
	movss xmm0, dword [ebp-0x43c]
	cvtss2sd xmm0, xmm0
	movsd [esp+0xc], xmm0
	mov dword [esp+0x8], _cstring_f
	mov dword [esp+0x4], 0x100
	mov [esp], edi
	call _Z11Com_sprintfPciPKcz
	jmp _Z14LocalizeStringP11OperandListP7Operand_370
_Z14LocalizeStringP11OperandListP7Operand_400:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_s
	mov dword [esp], 0x7
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z14LocalizeStringP11OperandListP7Operand_280
_Z14LocalizeStringP11OperandListP7Operand_250:
	mov dword [esp], _cstring_loc_warningsaser
	call _Z12Dvar_GetBoolPKc
	test al, al
	jz _Z14LocalizeStringP11OperandListP7Operand_430
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_s
	mov dword [esp], 0x7
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z14LocalizeStringP11OperandListP7Operand_240
_Z14LocalizeStringP11OperandListP7Operand_140:
	mov dword [esp], _cstring_loc_warningsaser
	call _Z12Dvar_GetBoolPKc
	test al, al
	jnz _Z14LocalizeStringP11OperandListP7Operand_440
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_warning_s
	mov dword [esp], 0xd
	call _Z16Com_PrintWarningiPKcz
	jmp _Z14LocalizeStringP11OperandListP7Operand_70
_Z14LocalizeStringP11OperandListP7Operand_210:
	sub eax, 0x1
	or eax, 0xfffffff0
	add eax, 0x1
	jmp _Z14LocalizeStringP11OperandListP7Operand_450
_Z14LocalizeStringP11OperandListP7Operand_230:
	mov [ebp-0x43c], ebx
	movss xmm0, dword [ebp-0x43c]
	cvtss2sd xmm0, xmm0
	movsd [esp+0xc], xmm0
	mov dword [esp+0x8], _cstring_f
	mov dword [esp+0x4], 0x100
	mov [esp], edi
	call _Z11Com_sprintfPciPKcz
	jmp _Z14LocalizeStringP11OperandListP7Operand_420
_Z14LocalizeStringP11OperandListP7Operand_430:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_warning_s
	mov dword [esp], 0xd
	call _Z16Com_PrintWarningiPKcz
	jmp _Z14LocalizeStringP11OperandListP7Operand_240
_Z14LocalizeStringP11OperandListP7Operand_440:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_s
	mov dword [esp], 0x7
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z14LocalizeStringP11OperandListP7Operand_70
	nop


;EvaluateExpression(int, statement_s const*, Operand*)
_Z18EvaluateExpressioniPK11statement_sP7Operand:
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
	jle _Z18EvaluateExpressioniPK11statement_sP7Operand_10
	xor edi, edi
_Z18EvaluateExpressioniPK11statement_sP7Operand_100:
	mov eax, [esi+0x4]
	mov ebx, [eax+edi*4]
	mov eax, [ebx]
	cmp eax, 0x1
	jz _Z18EvaluateExpressioniPK11statement_sP7Operand_20
	test eax, eax
	jnz _Z18EvaluateExpressioniPK11statement_sP7Operand_30
	mov ecx, [ebx+0x4]
	mov [ebp-0x14cc], ecx
	cmp ecx, 0x10
	jz _Z18EvaluateExpressioniPK11statement_sP7Operand_40
	mov edx, [ebp-0x1c]
	mov eax, edx
	sub eax, 0x1
	mov [ebp-0x14d8], eax
	js _Z18EvaluateExpressioniPK11statement_sP7Operand_50
	test edx, edx
	jz _Z18EvaluateExpressioniPK11statement_sP7Operand_50
	cmp dword [ebp-0x14cc], 0x1
	jnz _Z18EvaluateExpressioniPK11statement_sP7Operand_60
	mov ecx, [ebp-0x14d8]
	mov eax, [ebp+ecx*4-0x10c]
	mov eax, [eax*4+s_operatorPrecedence]
	cmp eax, [s_operatorPrecedence+0x4]
	jge _Z18EvaluateExpressioniPK11statement_sP7Operand_50
_Z18EvaluateExpressioniPK11statement_sP7Operand_80:
	lea eax, [ebp-0x14c0]
	mov [esp+0x8], eax
	lea ecx, [ebp-0x10c]
	mov [esp+0x4], ecx
	mov eax, [ebp-0x14d0]
	mov [esp], eax
	call _Z5RunOpiP13OperatorStackP12OperandStack
	mov edx, [ebp-0x14d8]
	test edx, edx
	js _Z18EvaluateExpressioniPK11statement_sP7Operand_40
	mov edx, [ebp-0x1c]
	test edx, edx
	jz _Z18EvaluateExpressioniPK11statement_sP7Operand_70
	lea eax, [edx-0x1]
	mov [ebp-0x14d8], eax
	mov ecx, eax
	mov eax, [ebp+ecx*4-0x10c]
	mov eax, [eax*4+s_operatorPrecedence]
	cmp eax, [s_operatorPrecedence+0x4]
	jl _Z18EvaluateExpressioniPK11statement_sP7Operand_80
_Z18EvaluateExpressioniPK11statement_sP7Operand_50:
	cmp edx, 0x3c
	jz _Z18EvaluateExpressioniPK11statement_sP7Operand_90
_Z18EvaluateExpressioniPK11statement_sP7Operand_70:
	mov eax, [ebx+0x4]
	mov [ebp+edx*4-0x10c], eax
	lea eax, [edx+0x1]
	mov [ebp-0x1c], eax
_Z18EvaluateExpressioniPK11statement_sP7Operand_30:
	add edi, 0x1
	cmp edi, [esi]
	jl _Z18EvaluateExpressioniPK11statement_sP7Operand_100
_Z18EvaluateExpressioniPK11statement_sP7Operand_10:
	mov ebx, [ebp-0x1c]
	test ebx, ebx
	jnz _Z18EvaluateExpressioniPK11statement_sP7Operand_110
_Z18EvaluateExpressioniPK11statement_sP7Operand_130:
	mov eax, [ebp-0x110]
	cmp eax, 0x1
	jle _Z18EvaluateExpressioniPK11statement_sP7Operand_120
	mov dword [esp+0x4], _cstring_error_stray_oper
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x14d4], 0x0
_Z18EvaluateExpressioniPK11statement_sP7Operand_170:
	mov eax, [ebp-0x14d4]
	add esp, 0x14ec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18EvaluateExpressioniPK11statement_sP7Operand_110:
	lea eax, [ebp-0x14c0]
	mov [esp+0x8], eax
	lea ecx, [ebp-0x10c]
	mov [esp+0x4], ecx
	mov eax, [ebp-0x14d0]
	mov [esp], eax
	call _Z5RunOpiP13OperatorStackP12OperandStack
	mov ecx, [ebp-0x1c]
	test ecx, ecx
	jnz _Z18EvaluateExpressioniPK11statement_sP7Operand_110
	jmp _Z18EvaluateExpressioniPK11statement_sP7Operand_130
_Z18EvaluateExpressioniPK11statement_sP7Operand_20:
	mov eax, [ebp-0x110]
	cmp eax, 0x3c
	jz _Z18EvaluateExpressioniPK11statement_sP7Operand_140
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
	jmp _Z18EvaluateExpressioniPK11statement_sP7Operand_30
_Z18EvaluateExpressioniPK11statement_sP7Operand_40:
	mov edx, [ebp-0x1c]
	jmp _Z18EvaluateExpressioniPK11statement_sP7Operand_50
_Z18EvaluateExpressioniPK11statement_sP7Operand_120:
	test eax, eax
	jz _Z18EvaluateExpressioniPK11statement_sP7Operand_150
	cmp dword [ebp-0x1470], 0x1
	jg _Z18EvaluateExpressioniPK11statement_sP7Operand_160
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
_Z18EvaluateExpressioniPK11statement_sP7Operand_160:
	mov dword [esp+0x4], _cstring_error_more_than_
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
_Z18EvaluateExpressioniPK11statement_sP7Operand_150:
	mov dword [ebp-0x14d4], 0x0
	mov eax, [ebp-0x14d4]
	add esp, 0x14ec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18EvaluateExpressioniPK11statement_sP7Operand_90:
	mov dword [esp+0x4], _cstring_invalid_expressi
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x14d4], 0x0
	jmp _Z18EvaluateExpressioniPK11statement_sP7Operand_170
_Z18EvaluateExpressioniPK11statement_sP7Operand_140:
	mov dword [esp+0x4], _cstring_invalid_expressi1
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x14d4], 0x0
	jmp _Z18EvaluateExpressioniPK11statement_sP7Operand_170
_Z18EvaluateExpressioniPK11statement_sP7Operand_60:
	mov eax, [ebp-0x14d8]
	mov eax, [ebp+eax*4-0x10c]
	mov [ebp-0x14e0], eax
	mov ecx, [eax*4+s_operatorPrecedence]
	mov [ebp-0x14dc], ecx
	mov eax, [ebp-0x14cc]
	cmp ecx, [eax*4+s_operatorPrecedence]
	jge _Z18EvaluateExpressioniPK11statement_sP7Operand_180
	cmp ecx, 0x5
	jz _Z18EvaluateExpressioniPK11statement_sP7Operand_180
_Z18EvaluateExpressioniPK11statement_sP7Operand_190:
	lea ecx, [ebp-0x14c0]
	mov [esp+0x8], ecx
	lea eax, [ebp-0x10c]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x14d0]
	mov [esp], ecx
	call _Z5RunOpiP13OperatorStackP12OperandStack
	mov eax, [ebp-0x14d8]
	test eax, eax
	js _Z18EvaluateExpressioniPK11statement_sP7Operand_40
	mov edx, [ebp-0x1c]
	test edx, edx
	jz _Z18EvaluateExpressioniPK11statement_sP7Operand_70
	lea ecx, [edx-0x1]
	mov [ebp-0x14d8], ecx
	jmp _Z18EvaluateExpressioniPK11statement_sP7Operand_60
_Z18EvaluateExpressioniPK11statement_sP7Operand_180:
	cmp dword [ebp-0x14cc], 0x6
	ja _Z18EvaluateExpressioniPK11statement_sP7Operand_50
	mov eax, 0x1
	movzx ecx, byte [ebp-0x14cc]
	shl eax, cl
	test al, 0x58
	jz _Z18EvaluateExpressioniPK11statement_sP7Operand_50
	mov eax, [ebp-0x14e0]
	cmp [ebp-0x14cc], eax
	jz _Z18EvaluateExpressioniPK11statement_sP7Operand_190
	jmp _Z18EvaluateExpressioniPK11statement_sP7Operand_50
	nop


;RunLogicOp(int, operationEnum, OperandStack*, Operand, Operand, char const*)
_Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc:
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
	jz _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_10
	mov ecx, [ebp+0x1c]
	mov ebx, [ebp+0x20]
	mov esi, ecx
	cmp ecx, 0x2
	jz _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_20
	mov eax, [currentTempOperand]
	mov edx, eax
	shl edx, 0x8
	lea edi, [edx+s_tempOperandValueAsString]
	add eax, 0x1
	and eax, 0x8000000f
	js _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_30
_Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_580:
	mov [currentTempOperand], eax
	test esi, esi
	jz _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_40
	sub esi, 0x1
	jz _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_50
_Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_510:
	mov [ebp-0x38], edi
	mov eax, [ebp+0x1c]
	cmp eax, 0x1
	jz _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_60
_Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_420:
	cmp eax, 0x2
	jz _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_70
	test eax, eax
	jz _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_80
	mov dword [ebp-0x34], _cstring_null
_Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_460:
	mov ecx, [ebp+0x14]
	mov ebx, [ebp+0x18]
	mov esi, ecx
	cmp ecx, 0x2
	jz _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_90
_Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_430:
	mov eax, [currentTempOperand]
	mov edx, eax
	shl edx, 0x8
	lea edi, [edx+s_tempOperandValueAsString]
	add eax, 0x1
	and eax, 0x8000000f
	js _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_100
_Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_590:
	mov [currentTempOperand], eax
	test esi, esi
	jz _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_110
	sub esi, 0x1
	jz _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_120
_Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_500:
	mov edx, edi
	mov eax, [ebp+0x14]
	cmp eax, 0x1
	jz _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_130
_Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_440:
	cmp eax, 0x2
	jz _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_140
	test eax, eax
	jz _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_150
	mov eax, _cstring_null
_Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_450:
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
	call _Z10Com_PrintfiPKcz
_Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_10:
	lea esi, [ebp+0x1c]
	mov [esp+0x8], esi
	lea ebx, [ebp+0x14]
	mov [esp+0x4], ebx
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call _Z20GetOperationFunction13operationEnumP7OperandS1_
	mov edx, eax
	test eax, eax
	jz _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_160
	lea eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov [esp], ebx
	call edx
_Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_390:
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
	jz _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_170
	mov ecx, [ebp-0x20]
	mov ebx, [ebp-0x1c]
	mov esi, ecx
	cmp ecx, 0x2
	jz _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_180
	mov eax, [currentTempOperand]
	mov edx, eax
	shl edx, 0x8
	lea edi, [edx+s_tempOperandValueAsString]
	add eax, 0x1
	and eax, 0x8000000f
	js _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_190
_Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_560:
	mov [currentTempOperand], eax
	test esi, esi
	jz _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_200
	sub esi, 0x1
	jz _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_210
_Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_490:
	mov edx, edi
	mov eax, [ebp-0x20]
	cmp eax, 0x1
	jz _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_220
_Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_400:
	cmp eax, 0x2
	jz _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_230
	test eax, eax
	jz _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_240
	mov eax, _cstring_null
_Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_410:
	mov [esp+0xc], edx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_result_is_a_s_s
	mov dword [esp], 0xd
	call _Z10Com_PrintfiPKcz
_Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_170:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_160:
	mov ecx, [ebp+0x1c]
	mov ebx, [ebp+0x20]
	mov esi, ecx
	cmp ecx, 0x2
	jz _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_250
	mov eax, [currentTempOperand]
	mov edx, eax
	shl edx, 0x8
	lea edi, [edx+s_tempOperandValueAsString]
	add eax, 0x1
	and eax, 0x8000000f
	js _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_260
_Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_480:
	mov [currentTempOperand], eax
	test esi, esi
	jz _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_270
	sub esi, 0x1
	jz _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_280
_Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_470:
	mov [ebp-0x30], edi
_Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_550:
	mov eax, [ebp+0x1c]
	cmp eax, 0x1
	jz _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_290
	cmp eax, 0x2
	jz _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_300
	test eax, eax
	jz _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_310
	mov dword [ebp-0x2c], _cstring_null
_Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_540:
	mov ecx, [ebp+0x14]
	mov ebx, [ebp+0x18]
	mov esi, ecx
	cmp ecx, 0x2
	jz _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_320
	mov eax, [currentTempOperand]
	mov edx, eax
	shl edx, 0x8
	lea edi, [edx+s_tempOperandValueAsString]
	add eax, 0x1
	and eax, 0x8000000f
	js _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_330
_Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_600:
	mov [currentTempOperand], eax
	test esi, esi
	jz _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_340
	sub esi, 0x1
	jz _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_350
_Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_570:
	mov edx, edi
	mov eax, [ebp+0x14]
	cmp eax, 0x1
	jz _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_360
_Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_520:
	cmp eax, 0x2
	jz _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_370
	test eax, eax
	jz _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_380
	mov eax, _cstring_null
_Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_530:
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
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_390
_Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_180:
	mov edx, ebx
	mov eax, [ebp-0x20]
	cmp eax, 0x1
	jnz _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_400
_Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_220:
	mov eax, _cstring_float
	jmp _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_410
_Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_240:
	mov eax, _cstring_int
	jmp _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_410
_Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_20:
	mov [ebp-0x38], ebx
	mov eax, [ebp+0x1c]
	cmp eax, 0x1
	jnz _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_420
_Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_60:
	mov dword [ebp-0x34], _cstring_float
	mov ecx, [ebp+0x14]
	mov ebx, [ebp+0x18]
	mov esi, ecx
	cmp ecx, 0x2
	jnz _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_430
_Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_90:
	mov edx, ebx
	mov eax, [ebp+0x14]
	cmp eax, 0x1
	jnz _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_440
_Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_130:
	mov eax, _cstring_float
	jmp _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_450
_Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_80:
	mov dword [ebp-0x34], _cstring_int
	jmp _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_460
_Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_270:
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_i
	mov dword [esp+0x4], 0x100
	mov [esp], edi
	call _Z11Com_sprintfPciPKcz
	jmp _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_470
_Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_260:
	sub eax, 0x1
	or eax, 0xfffffff0
	add eax, 0x1
	jmp _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_480
_Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_200:
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_i
	mov dword [esp+0x4], 0x100
	mov [esp], edi
	call _Z11Com_sprintfPciPKcz
	jmp _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_490
_Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_230:
	mov eax, _cstring_string
	jmp _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_410
_Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_150:
	mov eax, _cstring_int
	jmp _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_450
_Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_110:
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_i
	mov dword [esp+0x4], 0x100
	mov [esp], edi
	call _Z11Com_sprintfPciPKcz
	jmp _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_500
_Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_40:
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_i
	mov dword [esp+0x4], 0x100
	mov [esp], edi
	call _Z11Com_sprintfPciPKcz
	jmp _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_510
_Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_70:
	mov dword [ebp-0x34], _cstring_string
	jmp _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_460
_Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_140:
	mov eax, _cstring_string
	jmp _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_450
_Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_320:
	mov edx, ebx
	mov eax, [ebp+0x14]
	cmp eax, 0x1
	jnz _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_520
_Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_360:
	mov eax, _cstring_float
	jmp _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_530
_Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_290:
	mov dword [ebp-0x2c], _cstring_float
	jmp _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_540
_Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_250:
	mov [ebp-0x30], ebx
	jmp _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_550
_Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_190:
	sub eax, 0x1
	or eax, 0xfffffff0
	add eax, 0x1
	jmp _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_560
_Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_310:
	mov dword [ebp-0x2c], _cstring_int
	jmp _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_540
_Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_380:
	mov eax, _cstring_int
	jmp _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_530
_Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_340:
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_i
	mov dword [esp+0x4], 0x100
	mov [esp], edi
	call _Z11Com_sprintfPciPKcz
	jmp _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_570
_Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_30:
	sub eax, 0x1
	or eax, 0xfffffff0
	add eax, 0x1
	jmp _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_580
_Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_100:
	sub eax, 0x1
	or eax, 0xfffffff0
	add eax, 0x1
	jmp _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_590
_Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_370:
	mov eax, _cstring_string
	jmp _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_530
_Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_300:
	mov dword [ebp-0x2c], _cstring_string
	jmp _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_540
_Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_330:
	sub eax, 0x1
	or eax, 0xfffffff0
	add eax, 0x1
	jmp _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_600
_Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_210:
	mov [ebp-0x3c], ebx
	movss xmm0, dword [ebp-0x3c]
	cvtss2sd xmm0, xmm0
	movsd [esp+0xc], xmm0
	mov dword [esp+0x8], _cstring_f
	mov dword [esp+0x4], 0x100
	mov [esp], edi
	call _Z11Com_sprintfPciPKcz
	jmp _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_490
_Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_120:
	mov [ebp-0x3c], ebx
	movss xmm0, dword [ebp-0x3c]
	cvtss2sd xmm0, xmm0
	movsd [esp+0xc], xmm0
	mov dword [esp+0x8], _cstring_f
	mov dword [esp+0x4], 0x100
	mov [esp], edi
	call _Z11Com_sprintfPciPKcz
	jmp _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_500
_Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_50:
	mov [ebp-0x3c], ebx
	movss xmm0, dword [ebp-0x3c]
	cvtss2sd xmm0, xmm0
	movsd [esp+0xc], xmm0
	mov dword [esp+0x8], _cstring_f
	mov dword [esp+0x4], 0x100
	mov [esp], edi
	call _Z11Com_sprintfPciPKcz
	jmp _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_510
_Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_350:
	mov [ebp-0x3c], ebx
	movss xmm0, dword [ebp-0x3c]
	cvtss2sd xmm0, xmm0
	movsd [esp+0xc], xmm0
	mov dword [esp+0x8], _cstring_f
	mov dword [esp+0x4], 0x100
	mov [esp], edi
	call _Z11Com_sprintfPciPKcz
	jmp _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_570
_Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_280:
	mov [ebp-0x3c], ebx
	movss xmm0, dword [ebp-0x3c]
	cvtss2sd xmm0, xmm0
	movsd [esp+0xc], xmm0
	mov dword [esp+0x8], _cstring_f
	mov dword [esp+0x4], 0x100
	mov [esp], edi
	call _Z11Com_sprintfPciPKcz
	jmp _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc_470
	nop


;GetSourceInt(Operand*)
_Z12GetSourceIntP7Operand:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [eax]
	cmp edx, 0x1
	jz _Z12GetSourceIntP7Operand_10
	test edx, edx
	jnz _Z12GetSourceIntP7Operand_20
	mov eax, [eax+0x4]
	pop ebp
	ret
_Z12GetSourceIntP7Operand_20:
	mov eax, [eax+0x4]
	mov [ebp+0x8], eax
	pop ebp
	jmp atoi
_Z12GetSourceIntP7Operand_10:
	cvttss2si eax, [eax+0x4]
	pop ebp
	ret
	nop


;IsExpressionTrue(int, statement_s const*)
_Z16IsExpressionTrueiPK11statement_s:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	lea ecx, [ebp-0x10]
	call _Z18EvaluateExpressioniPK11statement_sP7Operand
	test eax, eax
	jz _Z16IsExpressionTrueiPK11statement_s_10
	mov eax, [ebp-0x10]
	cmp eax, 0x1
	jz _Z16IsExpressionTrueiPK11statement_s_20
	test eax, eax
	jnz _Z16IsExpressionTrueiPK11statement_s_30
	mov eax, [ebp-0xc]
_Z16IsExpressionTrueiPK11statement_s_40:
	test eax, eax
	setnz al
	movzx eax, al
_Z16IsExpressionTrueiPK11statement_s_10:
	leave
	ret
_Z16IsExpressionTrueiPK11statement_s_20:
	cvttss2si eax, [ebp-0xc]
	jmp _Z16IsExpressionTrueiPK11statement_s_40
_Z16IsExpressionTrueiPK11statement_s_30:
	mov eax, [ebp-0xc]
	mov [esp], eax
	call atoi
	jmp _Z16IsExpressionTrueiPK11statement_s_40
	nop


;GetExpressionFloat(int, statement_s const*)
_Z18GetExpressionFloatiPK11statement_s:
	push ebp
	mov ebp, esp
	sub esp, 0x48
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	lea ecx, [ebp-0x10]
	call _Z18EvaluateExpressioniPK11statement_sP7Operand
	test eax, eax
	jz _Z18GetExpressionFloatiPK11statement_s_10
	mov eax, [ebp-0x10]
	cmp eax, 0x1
	jz _Z18GetExpressionFloatiPK11statement_s_20
	test eax, eax
	jnz _Z18GetExpressionFloatiPK11statement_s_30
	cvtsi2ss xmm0, dword [ebp-0xc]
	movss [ebp-0x2c], xmm0
	mov eax, [ebp-0x2c]
	mov [ebp-0x2c], eax
	fld dword [ebp-0x2c]
	leave
	ret
_Z18GetExpressionFloatiPK11statement_s_20:
	mov eax, [ebp-0xc]
	mov [ebp-0x2c], eax
	fld dword [ebp-0x2c]
	leave
	ret
_Z18GetExpressionFloatiPK11statement_s_30:
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
_Z18GetExpressionFloatiPK11statement_s_10:
	xor eax, eax
	mov [ebp-0x2c], eax
	fld dword [ebp-0x2c]
	leave
	ret
	nop
	add [eax], al


;GetOperationFunction(operationEnum, Operand*, Operand*)
_Z20GetOperationFunction13operationEnumP7OperandS1_:
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
	jz _Z20GetOperationFunction13operationEnumP7OperandS1__10
	xor ecx, ecx
	jmp _Z20GetOperationFunction13operationEnumP7OperandS1__20
_Z20GetOperationFunction13operationEnumP7OperandS1__30:
	add ecx, 0x1
	mov eax, [edx+0x10]
	add edx, 0x10
	test eax, eax
	jz _Z20GetOperationFunction13operationEnumP7OperandS1__10
_Z20GetOperationFunction13operationEnumP7OperandS1__20:
	cmp eax, edi
	jnz _Z20GetOperationFunction13operationEnumP7OperandS1__30
	mov eax, [edx+0x4]
	cmp eax, [esi]
	jnz _Z20GetOperationFunction13operationEnumP7OperandS1__30
	mov eax, [edx+0x8]
	mov ebx, [ebp+0x10]
	cmp eax, [ebx]
	jnz _Z20GetOperationFunction13operationEnumP7OperandS1__30
	shl ecx, 0x4
	mov edx, validOperations
	mov eax, [ecx+edx+0xc]
	jmp _Z20GetOperationFunction13operationEnumP7OperandS1__40
_Z20GetOperationFunction13operationEnumP7OperandS1__10:
	cmp dword [esi], 0x2
	jz _Z20GetOperationFunction13operationEnumP7OperandS1__50
	mov edx, [ebp+0x10]
	cmp dword [edx], 0x2
	jz _Z20GetOperationFunction13operationEnumP7OperandS1__60
_Z20GetOperationFunction13operationEnumP7OperandS1__120:
	mov edx, validOperations
	mov eax, [edx]
	test eax, eax
	jz _Z20GetOperationFunction13operationEnumP7OperandS1__70
	xor ecx, ecx
	jmp _Z20GetOperationFunction13operationEnumP7OperandS1__80
_Z20GetOperationFunction13operationEnumP7OperandS1__90:
	add ecx, 0x1
	mov eax, [edx+0x10]
	add edx, 0x10
	test eax, eax
	jz _Z20GetOperationFunction13operationEnumP7OperandS1__70
_Z20GetOperationFunction13operationEnumP7OperandS1__80:
	cmp eax, edi
	jnz _Z20GetOperationFunction13operationEnumP7OperandS1__90
	mov eax, [edx+0x4]
	cmp eax, [esi]
	jnz _Z20GetOperationFunction13operationEnumP7OperandS1__90
	mov eax, [edx+0x8]
	mov ebx, [ebp+0x10]
	cmp eax, [ebx]
	jnz _Z20GetOperationFunction13operationEnumP7OperandS1__90
	shl ecx, 0x4
	mov ebx, validOperations
	mov eax, [ecx+ebx+0xc]
	jmp _Z20GetOperationFunction13operationEnumP7OperandS1__40
_Z20GetOperationFunction13operationEnumP7OperandS1__70:
	xor eax, eax
_Z20GetOperationFunction13operationEnumP7OperandS1__40:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20GetOperationFunction13operationEnumP7OperandS1__50:
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
	jp _Z20GetOperationFunction13operationEnumP7OperandS1__100
	jz _Z20GetOperationFunction13operationEnumP7OperandS1__110
_Z20GetOperationFunction13operationEnumP7OperandS1__100:
	mov eax, [esi+0x4]
	mov [esp], eax
	call atof
	fstp qword [ebp-0x30]
	cvtsd2ss xmm0, [ebp-0x30]
	movss [ebp-0x3c], xmm0
	mov eax, 0x1
_Z20GetOperationFunction13operationEnumP7OperandS1__150:
	mov [ebp-0x40], eax
	mov eax, [ebp-0x40]
	mov edx, [ebp-0x3c]
	mov [esi], eax
	mov [esi+0x4], edx
	mov edx, [ebp+0x10]
	cmp dword [edx], 0x2
	jnz _Z20GetOperationFunction13operationEnumP7OperandS1__120
_Z20GetOperationFunction13operationEnumP7OperandS1__60:
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
	jp _Z20GetOperationFunction13operationEnumP7OperandS1__130
	jz _Z20GetOperationFunction13operationEnumP7OperandS1__140
_Z20GetOperationFunction13operationEnumP7OperandS1__130:
	mov ebx, [ebp+0x10]
	mov eax, [ebx+0x4]
	mov [esp], eax
	call atof
	fstp qword [ebp-0x20]
	cvtsd2ss xmm0, [ebp-0x20]
	movss [ebp-0x44], xmm0
	mov eax, 0x1
_Z20GetOperationFunction13operationEnumP7OperandS1__160:
	mov [ebp-0x48], eax
	mov ecx, [ebp-0x48]
	mov ebx, [ebp-0x44]
	mov eax, [ebp+0x10]
	mov [eax], ecx
	mov [eax+0x4], ebx
	jmp _Z20GetOperationFunction13operationEnumP7OperandS1__120
_Z20GetOperationFunction13operationEnumP7OperandS1__110:
	mov eax, [esi+0x4]
	mov [esp], eax
	call atoi
	mov [ebp-0x3c], eax
	xor eax, eax
	jmp _Z20GetOperationFunction13operationEnumP7OperandS1__150
_Z20GetOperationFunction13operationEnumP7OperandS1__140:
	mov edx, [ebp+0x10]
	mov eax, [edx+0x4]
	mov [esp], eax
	call atoi
	mov [ebp-0x44], eax
	xor eax, eax
	jmp _Z20GetOperationFunction13operationEnumP7OperandS1__160
	add [eax], al


;GetExpressionResultString(int, statement_s const*)
_Z25GetExpressionResultStringiPK11statement_s:
	push ebp
	mov ebp, esp
	sub esp, 0x38
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	lea ecx, [ebp-0x10]
	call _Z18EvaluateExpressioniPK11statement_sP7Operand
	test eax, eax
	jz _Z25GetExpressionResultStringiPK11statement_s_10
	mov eax, [ebp-0x10]
	cmp eax, 0x1
	jz _Z25GetExpressionResultStringiPK11statement_s_20
	cmp eax, 0x2
	jz _Z25GetExpressionResultStringiPK11statement_s_30
	test eax, eax
	jnz _Z25GetExpressionResultStringiPK11statement_s_10
	mov eax, [ebp-0xc]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_i
	mov dword [esp+0x4], 0x100
	mov dword [esp], _ZZ25GetExpressionResultStringiPK11statement_sE12resultString
	call _Z11Com_sprintfPciPKcz
_Z25GetExpressionResultStringiPK11statement_s_60:
	test eax, eax
	js _Z25GetExpressionResultStringiPK11statement_s_40
_Z25GetExpressionResultStringiPK11statement_s_50:
	mov eax, _ZZ25GetExpressionResultStringiPK11statement_sE12resultString
	leave
	ret
_Z25GetExpressionResultStringiPK11statement_s_10:
	mov eax, _cstring_null
	leave
	ret
_Z25GetExpressionResultStringiPK11statement_s_20:
	cvtss2sd xmm0, [ebp-0xc]
	movsd [esp+0xc], xmm0
	mov dword [esp+0x8], _cstring_f
	mov dword [esp+0x4], 0x100
	mov dword [esp], _ZZ25GetExpressionResultStringiPK11statement_sE12resultString
	call _Z11Com_sprintfPciPKcz
	test eax, eax
	jns _Z25GetExpressionResultStringiPK11statement_s_50
_Z25GetExpressionResultStringiPK11statement_s_40:
	call _Z16Sys_Millisecondsv
	sub eax, [_ZZ25GetExpressionResultStringiPK11statement_sE12lastWarnTime]
	cmp eax, 0x1388
	jle _Z25GetExpressionResultStringiPK11statement_s_50
	call _Z16Sys_Millisecondsv
	mov [_ZZ25GetExpressionResultStringiPK11statement_sE12lastWarnTime], eax
	mov dword [esp+0xc], _ZZ25GetExpressionResultStringiPK11statement_sE12resultString
	mov dword [esp+0x8], 0x100
	mov dword [esp+0x4], _cstring_warning_expressi
	mov dword [esp], 0xd
	call _Z16Com_PrintWarningiPKcz
	mov eax, _ZZ25GetExpressionResultStringiPK11statement_sE12resultString
	leave
	ret
_Z25GetExpressionResultStringiPK11statement_s_30:
	mov eax, [ebp-0xc]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_s
	mov dword [esp+0x4], 0x100
	mov dword [esp], _ZZ25GetExpressionResultStringiPK11statement_sE12resultString
	call _Z11Com_sprintfPciPKcz
	jmp _Z25GetExpressionResultStringiPK11statement_s_60


;RunOp(int, OperatorStack*, OperandStack*)
_Z5RunOpiP13OperatorStackP12OperandStack:
_Z5RunOpiP13OperatorStackP12OperandStack_250:
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
	jle _Z5RunOpiP13OperatorStackP12OperandStack_10
	mov eax, g_expOperatorNames
	mov eax, [eax+esi*4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_evaluating_s
	mov dword [esp], 0xd
	call _Z10Com_PrintfiPKcz
_Z5RunOpiP13OperatorStackP12OperandStack_10:
	cmp esi, 0x50
	ja _Z5RunOpiP13OperatorStackP12OperandStack_20
	jmp dword [esi*4+_Z5RunOpiP13OperatorStackP12OperandStack_jumptab_0]
_Z5RunOpiP13OperatorStackP12OperandStack_3400:
	mov eax, [edi+0x13b0]
	test eax, eax
	jle _Z5RunOpiP13OperatorStackP12OperandStack_30
	lea edx, [eax-0x1]
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	lea eax, [edi+eax*4]
	mov ecx, [eax+0x50]
	cmp ecx, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_40
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x1d4], 0x0
	mov dword [ebp-0x15c], 0x0
	mov ecx, [edi+0x13b0]
_Z5RunOpiP13OperatorStackP12OperandStack_2230:
	test ecx, ecx
	jle _Z5RunOpiP13OperatorStackP12OperandStack_50
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_60
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
_Z5RunOpiP13OperatorStackP12OperandStack_2220:
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
	call _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc
_Z5RunOpiP13OperatorStackP12OperandStack_20:
	add esp, 0x22c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z5RunOpiP13OperatorStackP12OperandStack_3960:
	mov dword [ebp-0x28], 0x0
	mov dword [ebp-0x24], 0x0
_Z5RunOpiP13OperatorStackP12OperandStack_70:
	mov eax, [edi+0x13b0]
	lea ecx, [eax+eax*4]
	lea ecx, [eax+ecx*4]
	mov eax, [ebp-0x28]
	mov edx, [ebp-0x24]
	mov [edi+ecx*4], eax
	mov [edi+ecx*4+0x4], edx
_Z5RunOpiP13OperatorStackP12OperandStack_2850:
	mov eax, [edi+0x13b0]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*4]
	mov dword [edi+edx*4+0x50], 0x1
_Z5RunOpiP13OperatorStackP12OperandStack_1640:
	add dword [edi+0x13b0], 0x1
	add esp, 0x22c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z5RunOpiP13OperatorStackP12OperandStack_3970:
	mov dword [ebp-0x28], 0x0
	mov dword [ebp-0x24], 0x0
	mov eax, 0x1
	mov edx, cgArray
	test byte [edx+0x46150], 0x2
	cmovz eax, [ebp-0x24]
	mov [ebp-0x24], eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_3980:
	mov edx, [edi+0x13b0]
	test edx, edx
	jle _Z5RunOpiP13OperatorStackP12OperandStack_80
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov dword [esp+0x8], 0x54
	mov [esp+0x4], eax
	lea edx, [ebp-0x7c]
	mov [esp], edx
	call memcpy
	sub dword [edi+0x13b0], 0x1
_Z5RunOpiP13OperatorStackP12OperandStack_3150:
	lea ecx, [ebp-0x28]
	lea edx, [ebp-0x7c]
	mov eax, [ebp+0x8]
	call _Z25GetPlayerStatRangeBitsSetiP11OperandListP7Operand
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_3990:
	mov ecx, [edi+0x13b0]
	test ecx, ecx
	jle _Z5RunOpiP13OperatorStackP12OperandStack_90
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_100
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
_Z5RunOpiP13OperatorStackP12OperandStack_2150:
	mov eax, [ebp-0x20]
	cmp eax, 0x2
	jz _Z5RunOpiP13OperatorStackP12OperandStack_110
	cmp eax, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_120
	cmp eax, 0x2
	jz _Z5RunOpiP13OperatorStackP12OperandStack_130
	test eax, eax
	jz _Z5RunOpiP13OperatorStackP12OperandStack_140
	mov eax, _cstring_null
_Z5RunOpiP13OperatorStackP12OperandStack_2860:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_must_use_a2
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x28], 0x2
	mov dword [ebp-0x24], _cstring_null
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_4000:
	mov ecx, [edi+0x13b0]
	test ecx, ecx
	jle _Z5RunOpiP13OperatorStackP12OperandStack_150
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_160
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
_Z5RunOpiP13OperatorStackP12OperandStack_2270:
	mov eax, [ebp-0x20]
	cmp eax, 0x2
	jz _Z5RunOpiP13OperatorStackP12OperandStack_170
	sub eax, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_180
	mov eax, [ebp-0x1c]
_Z5RunOpiP13OperatorStackP12OperandStack_2840:
	lea edx, [eax-0x1]
	cmp edx, 0x3
	jbe _Z5RunOpiP13OperatorStackP12OperandStack_190
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], _cstring_ui_expression_er3
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x28], 0x0
	mov dword [ebp-0x24], 0x0
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_4010:
	mov ecx, [edi+0x13b0]
	test ecx, ecx
	jle _Z5RunOpiP13OperatorStackP12OperandStack_200
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_210
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
_Z5RunOpiP13OperatorStackP12OperandStack_2160:
	lea ecx, [ebp-0x28]
	lea edx, [ebp-0x20]
	mov eax, [ebp+0x8]
	call _Z10GetHudFadeiP7OperandS0_
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_3410:
	mov edx, [edi+0x13b0]
	mov [ebp-0x16c], edx
	test edx, edx
	jle _Z5RunOpiP13OperatorStackP12OperandStack_220
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
	jz _Z5RunOpiP13OperatorStackP12OperandStack_230
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_20
_Z5RunOpiP13OperatorStackP12OperandStack_3390:
	xor esi, esi
_Z5RunOpiP13OperatorStackP12OperandStack_260:
	mov eax, [ebx+0xf0]
	test eax, eax
	jz _Z5RunOpiP13OperatorStackP12OperandStack_240
	mov esi, [ebx+eax*4-0x4]
	mov [esp+0x8], edi
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z5RunOpiP13OperatorStackP12OperandStack_250
	lea eax, [esi-0x17]
	cmp eax, 0x3a
	jbe _Z5RunOpiP13OperatorStackP12OperandStack_20
	cmp esi, 0x10
	jnz _Z5RunOpiP13OperatorStackP12OperandStack_260
_Z5RunOpiP13OperatorStackP12OperandStack_3170:
	cmp eax, 0x3a
	jbe _Z5RunOpiP13OperatorStackP12OperandStack_20
	cmp esi, 0x10
	jz _Z5RunOpiP13OperatorStackP12OperandStack_20
	mov dword [esp+0x4], _cstring_error_found__but
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_20
_Z5RunOpiP13OperatorStackP12OperandStack_3640:
	mov ecx, [edi+0x13b0]
	test ecx, ecx
	jle _Z5RunOpiP13OperatorStackP12OperandStack_270
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_280
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
_Z5RunOpiP13OperatorStackP12OperandStack_2460:
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
	jz _Z5RunOpiP13OperatorStackP12OperandStack_290
	mov edx, [eax+0xe9f50]
_Z5RunOpiP13OperatorStackP12OperandStack_350:
	lea ecx, [ebp-0x20]
	lea eax, [ebp-0x28]
	mov [esp], eax
	mov eax, [ebp+0x8]
	call _Z15GetFieldForTeami6team_tP7OperandS1_
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_3650:
	mov ecx, [edi+0x13b0]
	test ecx, ecx
	jle _Z5RunOpiP13OperatorStackP12OperandStack_300
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_310
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
_Z5RunOpiP13OperatorStackP12OperandStack_2140:
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
	jz _Z5RunOpiP13OperatorStackP12OperandStack_290
	mov eax, [eax+0xe9f50]
	cmp eax, 0x2
	jz _Z5RunOpiP13OperatorStackP12OperandStack_320
	cmp eax, 0x3
	jz _Z5RunOpiP13OperatorStackP12OperandStack_330
	sub eax, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_340
_Z5RunOpiP13OperatorStackP12OperandStack_290:
	xor edx, edx
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_350
_Z5RunOpiP13OperatorStackP12OperandStack_3480:
	mov ecx, [edi+0x13b0]
	test ecx, ecx
	jle _Z5RunOpiP13OperatorStackP12OperandStack_360
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_370
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
_Z5RunOpiP13OperatorStackP12OperandStack_2480:
	mov eax, [ebp-0x20]
	cmp eax, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_380
	test eax, eax
	jnz _Z5RunOpiP13OperatorStackP12OperandStack_390
	cvtsi2ss xmm0, dword [ebp-0x1c]
_Z5RunOpiP13OperatorStackP12OperandStack_2760:
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
	jnz _Z5RunOpiP13OperatorStackP12OperandStack_400
	fstp st0
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_3520:
	mov ecx, [edi+0x13b0]
	test ecx, ecx
	jle _Z5RunOpiP13OperatorStackP12OperandStack_410
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_420
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
_Z5RunOpiP13OperatorStackP12OperandStack_2490:
	mov eax, [ebp-0x20]
	cmp eax, 0x2
	jz _Z5RunOpiP13OperatorStackP12OperandStack_430
	cmp eax, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_440
	cmp eax, 0x2
	jz _Z5RunOpiP13OperatorStackP12OperandStack_450
	test eax, eax
	jz _Z5RunOpiP13OperatorStackP12OperandStack_460
	mov eax, _cstring_null
_Z5RunOpiP13OperatorStackP12OperandStack_2880:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_must_use_a3
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x28], 0x0
	mov dword [ebp-0x24], 0x0
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_3540:
	mov ecx, [edi+0x13b0]
	test ecx, ecx
	jle _Z5RunOpiP13OperatorStackP12OperandStack_470
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_480
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
_Z5RunOpiP13OperatorStackP12OperandStack_2470:
	mov eax, [ebp-0x20]
	cmp eax, 0x2
	jz _Z5RunOpiP13OperatorStackP12OperandStack_490
	cmp eax, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_500
	cmp eax, 0x2
	jz _Z5RunOpiP13OperatorStackP12OperandStack_510
	test eax, eax
	jz _Z5RunOpiP13OperatorStackP12OperandStack_520
	mov eax, _cstring_null
_Z5RunOpiP13OperatorStackP12OperandStack_2900:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_must_use_a3
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x28], 0x1
	mov dword [ebp-0x24], 0x0
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_3550:
	mov ecx, [edi+0x13b0]
	test ecx, ecx
	jle _Z5RunOpiP13OperatorStackP12OperandStack_530
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_540
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
_Z5RunOpiP13OperatorStackP12OperandStack_2500:
	mov eax, [ebp-0x20]
	cmp eax, 0x2
	jz _Z5RunOpiP13OperatorStackP12OperandStack_550
	cmp eax, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_560
	cmp eax, 0x2
	jz _Z5RunOpiP13OperatorStackP12OperandStack_570
	test eax, eax
	jz _Z5RunOpiP13OperatorStackP12OperandStack_580
	mov eax, _cstring_null
_Z5RunOpiP13OperatorStackP12OperandStack_2890:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_must_use_a3
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x28], 0x2
	mov dword [ebp-0x24], _cstring_null
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_3530:
	mov ecx, [edi+0x13b0]
	test ecx, ecx
	jle _Z5RunOpiP13OperatorStackP12OperandStack_590
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_600
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
_Z5RunOpiP13OperatorStackP12OperandStack_2320:
	mov eax, [ebp-0x20]
	cmp eax, 0x2
	jz _Z5RunOpiP13OperatorStackP12OperandStack_610
	cmp eax, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_620
	cmp eax, 0x2
	jz _Z5RunOpiP13OperatorStackP12OperandStack_630
	test eax, eax
	jz _Z5RunOpiP13OperatorStackP12OperandStack_640
	mov eax, _cstring_null
_Z5RunOpiP13OperatorStackP12OperandStack_2950:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_must_use_a3
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x28], 0x0
	mov dword [ebp-0x24], 0x0
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_3800:
	mov edx, [edi+0x13b0]
	test edx, edx
	jle _Z5RunOpiP13OperatorStackP12OperandStack_650
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov dword [esp+0x8], 0x54
	mov [esp+0x4], eax
	lea ecx, [ebp-0x7c]
	mov [esp], ecx
	call memcpy
	sub dword [edi+0x13b0], 0x1
_Z5RunOpiP13OperatorStackP12OperandStack_3140:
	lea ecx, [ebp-0x28]
	lea edx, [ebp-0x7c]
	mov eax, [ebp+0x8]
	call _Z11TableLookupiP11OperandListP7Operand
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_3810:
	mov edx, [edi+0x13b0]
	test edx, edx
	jle _Z5RunOpiP13OperatorStackP12OperandStack_660
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov dword [esp+0x8], 0x54
	mov [esp+0x4], eax
	lea eax, [ebp-0x7c]
	mov [esp], eax
	call memcpy
	sub dword [edi+0x13b0], 0x1
_Z5RunOpiP13OperatorStackP12OperandStack_3110:
	lea edx, [ebp-0x28]
	lea eax, [ebp-0x7c]
	call _Z14LocalizeStringP11OperandListP7Operand
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_3840:
	mov ecx, [edi+0x13b0]
	test ecx, ecx
	jle _Z5RunOpiP13OperatorStackP12OperandStack_670
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_680
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
_Z5RunOpiP13OperatorStackP12OperandStack_2420:
	mov eax, [ebp-0x20]
	cmp eax, 0x2
	jz _Z5RunOpiP13OperatorStackP12OperandStack_690
	cmp eax, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_700
	cmp eax, 0x2
	jz _Z5RunOpiP13OperatorStackP12OperandStack_710
	test eax, eax
	jz _Z5RunOpiP13OperatorStackP12OperandStack_720
	mov eax, _cstring_null
_Z5RunOpiP13OperatorStackP12OperandStack_2910:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_must_use_a4
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
_Z5RunOpiP13OperatorStackP12OperandStack_3020:
	mov dword [ebp-0x28], 0x1
	mov dword [ebp-0x24], 0x0
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_3860:
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x6
	jg _Z5RunOpiP13OperatorStackP12OperandStack_730
	mov dword [ebp-0x28], 0x0
	mov dword [ebp-0x24], 0x0
_Z5RunOpiP13OperatorStackP12OperandStack_730:
	mov eax, cgArray
	mov edx, [eax+0x24]
	test edx, edx
	jz _Z5RunOpiP13OperatorStackP12OperandStack_740
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
_Z5RunOpiP13OperatorStackP12OperandStack_740:
	mov dword [ebp-0x28], 0x0
	mov [ebp-0x24], edx
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_3870:
	mov ecx, [edi+0x13b0]
	test ecx, ecx
	jle _Z5RunOpiP13OperatorStackP12OperandStack_750
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_760
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
_Z5RunOpiP13OperatorStackP12OperandStack_2390:
	mov eax, [ebp-0x20]
	cmp eax, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_770
	test eax, eax
	jnz _Z5RunOpiP13OperatorStackP12OperandStack_780
	mov ebx, [ebp-0x1c]
_Z5RunOpiP13OperatorStackP12OperandStack_2520:
	mov dword [ebp-0x28], 0x2
	mov dword [ebp-0x24], _ZZ25SecondsToCountdownDisplayiiP7OperandE12resultString
	test ebx, ebx
	js _Z5RunOpiP13OperatorStackP12OperandStack_790
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
	jz _Z5RunOpiP13OperatorStackP12OperandStack_70
	mov dword [esp+0x8], _ZZ25SecondsToCountdownDisplayiiP7OperandE12resultString
	mov dword [esp+0x4], _cstring_secondstocountdo
	mov dword [esp], 0xd
	call _Z10Com_PrintfiPKcz
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_3850:
	mov ecx, [edi+0x13b0]
	test ecx, ecx
	jle _Z5RunOpiP13OperatorStackP12OperandStack_800
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_810
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
_Z5RunOpiP13OperatorStackP12OperandStack_2290:
	lea esi, [ebp-0x150]
	mov eax, [ebp-0x20]
	cmp eax, 0x2
	jz _Z5RunOpiP13OperatorStackP12OperandStack_820
	cmp eax, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_830
	cmp eax, 0x2
	jz _Z5RunOpiP13OperatorStackP12OperandStack_840
	test eax, eax
	jz _Z5RunOpiP13OperatorStackP12OperandStack_850
	mov eax, _cstring_null
_Z5RunOpiP13OperatorStackP12OperandStack_2920:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_must_use_a4
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
_Z5RunOpiP13OperatorStackP12OperandStack_3070:
	mov dword [ebp-0x28], 0x2
	mov dword [ebp-0x24], _cstring_null
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_4020:
	mov dword [ebp-0x28], 0x0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z17CG_IsIntermissioni
	mov edx, eax
	mov [ebp-0x24], eax
	mov eax, uiscript_debug
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz _Z5RunOpiP13OperatorStackP12OperandStack_70
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_isintermission__
	mov dword [esp], 0xd
	call _Z10Com_PrintfiPKcz
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_3420:
	mov ecx, [edi+0x13b0]
	test ecx, ecx
	jle _Z5RunOpiP13OperatorStackP12OperandStack_860
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_870
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
_Z5RunOpiP13OperatorStackP12OperandStack_2430:
	mov dword [ebp-0x28], 0x0
	mov ecx, [ebp-0x20]
	cmp ecx, 0x2
	jz _Z5RunOpiP13OperatorStackP12OperandStack_880
	test ecx, ecx
	jz _Z5RunOpiP13OperatorStackP12OperandStack_890
	cmp ecx, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_900
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_unknown_datatype
	mov dword [esp], 0x10
	call _Z14Com_PrintErroriPKcz
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_3440:
	mov ecx, [edi+0x13b0]
	test ecx, ecx
	jle _Z5RunOpiP13OperatorStackP12OperandStack_910
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_920
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
_Z5RunOpiP13OperatorStackP12OperandStack_2340:
	mov dword [ebp-0x28], 0x0
	mov ecx, [ebp-0x20]
	cmp ecx, 0x2
	jz _Z5RunOpiP13OperatorStackP12OperandStack_930
	test ecx, ecx
	jz _Z5RunOpiP13OperatorStackP12OperandStack_940
	cmp ecx, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_950
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_unknown_datatype
	mov dword [esp], 0x10
	call _Z14Com_PrintErroriPKcz
	xor ecx, ecx
	mov edx, 0xffffffff
_Z5RunOpiP13OperatorStackP12OperandStack_2510:
	mov [ebp-0x24], edx
	mov eax, uiscript_debug
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz _Z5RunOpiP13OperatorStackP12OperandStack_70
	mov [esp+0xc], edx
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_i__i
	mov dword [esp], 0xd
	call _Z10Com_PrintfiPKcz
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_3460:
	mov eax, [edi+0x13b0]
	test eax, eax
	jle _Z5RunOpiP13OperatorStackP12OperandStack_960
	lea edx, [eax-0x1]
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	lea eax, [edi+eax*4]
	mov ecx, [eax+0x50]
	cmp ecx, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_970
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x1d4], 0x0
	xor esi, esi
	mov ecx, [edi+0x13b0]
_Z5RunOpiP13OperatorStackP12OperandStack_2410:
	test ecx, ecx
	jle _Z5RunOpiP13OperatorStackP12OperandStack_980
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_990
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
_Z5RunOpiP13OperatorStackP12OperandStack_2400:
	mov eax, [ebp-0x20]
	cmp eax, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_1000
	test eax, eax
	jnz _Z5RunOpiP13OperatorStackP12OperandStack_1010
	mov ebx, [ebp-0x1c]
_Z5RunOpiP13OperatorStackP12OperandStack_2540:
	cmp esi, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_1020
	test esi, esi
	jnz _Z5RunOpiP13OperatorStackP12OperandStack_1030
	mov ecx, [ebp-0x1d4]
_Z5RunOpiP13OperatorStackP12OperandStack_2530:
	mov dword [ebp-0x28], 0x0
	mov edx, ebx
	sar edx, cl
	mov [ebp-0x24], edx
	mov eax, uiscript_debug
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz _Z5RunOpiP13OperatorStackP12OperandStack_70
	mov [esp+0x10], edx
	mov [esp+0xc], ecx
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_i__i__i
	mov dword [esp], 0xd
	call _Z10Com_PrintfiPKcz
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_3450:
	mov eax, [edi+0x13b0]
	test eax, eax
	jle _Z5RunOpiP13OperatorStackP12OperandStack_1040
	lea edx, [eax-0x1]
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	lea ecx, [edi+eax*4]
	mov eax, [ecx+0x50]
	cmp eax, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_1050
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x1d4], 0x0
	xor esi, esi
	mov ecx, [edi+0x13b0]
_Z5RunOpiP13OperatorStackP12OperandStack_2450:
	test ecx, ecx
	jle _Z5RunOpiP13OperatorStackP12OperandStack_1060
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_1070
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
_Z5RunOpiP13OperatorStackP12OperandStack_2440:
	mov eax, [ebp-0x20]
	cmp eax, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_1080
	test eax, eax
	jnz _Z5RunOpiP13OperatorStackP12OperandStack_1090
	mov ebx, [ebp-0x1c]
_Z5RunOpiP13OperatorStackP12OperandStack_2780:
	cmp esi, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_1100
	test esi, esi
	jnz _Z5RunOpiP13OperatorStackP12OperandStack_1110
	mov ecx, [ebp-0x1d4]
_Z5RunOpiP13OperatorStackP12OperandStack_2770:
	mov dword [ebp-0x28], 0x0
	mov edx, ebx
	shl edx, cl
	mov [ebp-0x24], edx
	mov eax, uiscript_debug
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz _Z5RunOpiP13OperatorStackP12OperandStack_70
	mov [esp+0x10], edx
	mov [esp+0xc], ecx
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_i__i__i1
	mov dword [esp], 0xd
	call _Z10Com_PrintfiPKcz
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_3470:
	mov ecx, [edi+0x13b0]
	test ecx, ecx
	jle _Z5RunOpiP13OperatorStackP12OperandStack_1120
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_1130
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
_Z5RunOpiP13OperatorStackP12OperandStack_2330:
	mov eax, [ebp-0x20]
	cmp eax, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_1140
	test eax, eax
	jnz _Z5RunOpiP13OperatorStackP12OperandStack_1150
	cvtsi2ss xmm0, dword [ebp-0x1c]
_Z5RunOpiP13OperatorStackP12OperandStack_2740:
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
	jnz _Z5RunOpiP13OperatorStackP12OperandStack_1160
	fstp st0
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_3720:
	mov dword [ebp-0x28], 0x0
	mov dword [ebp-0x24], 0x0
	mov eax, uiscript_debug
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz _Z5RunOpiP13OperatorStackP12OperandStack_70
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_privatepartyhost
	mov dword [esp], 0xd
	call _Z10Com_PrintfiPKcz
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_3760:
	mov ecx, [edi+0x13b0]
	test ecx, ecx
	jle _Z5RunOpiP13OperatorStackP12OperandStack_1170
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_1180
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
_Z5RunOpiP13OperatorStackP12OperandStack_2350:
	mov eax, [ebp-0x20]
	cmp eax, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_1190
	test eax, eax
	jnz _Z5RunOpiP13OperatorStackP12OperandStack_1200
	cvtsi2ss xmm0, dword [ebp-0x1c]
_Z5RunOpiP13OperatorStackP12OperandStack_2700:
	mov dword [ebp-0x28], 0x0
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x6
	jg _Z5RunOpiP13OperatorStackP12OperandStack_1210
	mov dword [ebp-0x24], 0x0
_Z5RunOpiP13OperatorStackP12OperandStack_2710:
	mov eax, uiscript_debug
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz _Z5RunOpiP13OperatorStackP12OperandStack_70
	mov eax, [ebp-0x24]
	mov [esp+0x10], eax
	cvtss2sd xmm0, xmm0
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_weaplockblink_2f
	mov dword [esp], 0xd
	call _Z10Com_PrintfiPKcz
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_3770:
	mov dword [ebp-0x28], 0x0
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x6
	jg _Z5RunOpiP13OperatorStackP12OperandStack_1220
	mov dword [ebp-0x24], 0x0
_Z5RunOpiP13OperatorStackP12OperandStack_2720:
	mov eax, uiscript_debug
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz _Z5RunOpiP13OperatorStackP12OperandStack_70
	mov eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_weapattacktop__i
	mov dword [esp], 0xd
	call _Z10Com_PrintfiPKcz
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_3780:
	mov dword [ebp-0x28], 0x0
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x6
	jg _Z5RunOpiP13OperatorStackP12OperandStack_1230
	mov dword [ebp-0x24], 0x0
_Z5RunOpiP13OperatorStackP12OperandStack_2730:
	mov eax, uiscript_debug
	mov eax, [eax]
	mov esi, [eax+0xc]
	test esi, esi
	jz _Z5RunOpiP13OperatorStackP12OperandStack_70
	mov eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_weapattackdirect
	mov dword [esp], 0xd
	call _Z10Com_PrintfiPKcz
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_3790:
	mov ecx, [edi+0x13b0]
	test ecx, ecx
	jle _Z5RunOpiP13OperatorStackP12OperandStack_1240
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_1250
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
_Z5RunOpiP13OperatorStackP12OperandStack_2300:
	lea eax, [ebp-0x28]
	mov [esp+0x8], eax
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z20SecondsToTimeDisplayiP7OperandS0_
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_3560:
	mov ecx, [edi+0x13b0]
	test ecx, ecx
	jle _Z5RunOpiP13OperatorStackP12OperandStack_1260
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_1270
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
_Z5RunOpiP13OperatorStackP12OperandStack_2170:
	mov eax, [ebp-0x20]
	cmp eax, 0x2
	jz _Z5RunOpiP13OperatorStackP12OperandStack_1280
	sub eax, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_1290
	mov ebx, [ebp-0x1c]
_Z5RunOpiP13OperatorStackP12OperandStack_2870:
	mov dword [ebp-0x28], 0x0
	mov esi, [ebp+0x8]
	mov [esp], esi
	call _Z31CL_ControllerIndexFromClientNumi
	mov [esp+0x4], ebx
	mov [esp], eax
	call _Z19LiveStorage_GetStatii
	mov edx, eax
	mov [ebp-0x24], eax
	mov eax, uiscript_debug
	mov eax, [eax]
	mov ecx, [eax+0xc]
	test ecx, ecx
	jz _Z5RunOpiP13OperatorStackP12OperandStack_70
	mov [esp+0xc], edx
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_stat_i___i
	mov dword [esp], 0xd
	call _Z10Com_PrintfiPKcz
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_3570:
	mov dword [ebp-0x28], 0x0
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z13CL_IsUIActivei
	movzx edx, al
	mov [ebp-0x24], edx
	mov eax, uiscript_debug
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz _Z5RunOpiP13OperatorStackP12OperandStack_70
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_ui_active__i
	mov dword [esp], 0xd
	call _Z10Com_PrintfiPKcz
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_3880:
	mov ecx, [edi+0x13b0]
	test ecx, ecx
	jle _Z5RunOpiP13OperatorStackP12OperandStack_1300
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_1310
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
_Z5RunOpiP13OperatorStackP12OperandStack_2360:
	mov dword [ebp-0x28], 0x0
	mov dword [ebp-0x24], 0x0
	mov eax, [ebp-0x20]
	cmp eax, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_1320
	test eax, eax
	jnz _Z5RunOpiP13OperatorStackP12OperandStack_1330
	mov ebx, [ebp-0x1c]
_Z5RunOpiP13OperatorStackP12OperandStack_2750:
	mov [esp], ebx
	call _Z28Con_IsValidGameMessageWindowi
	test al, al
	jnz _Z5RunOpiP13OperatorStackP12OperandStack_1340
	mov dword [esp+0x4], _cstring_ui_script_error_
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_3890:
	mov ecx, [edi+0x13b0]
	test ecx, ecx
	jle _Z5RunOpiP13OperatorStackP12OperandStack_1350
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_1360
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
_Z5RunOpiP13OperatorStackP12OperandStack_2380:
	mov dword [ebp-0x28], 0x0
	mov eax, [ebp-0x20]
	cmp eax, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_1370
	test eax, eax
	jnz _Z5RunOpiP13OperatorStackP12OperandStack_1380
	mov eax, [ebp-0x1c]
	mov [ebp-0x24], eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_3900:
	mov ecx, [edi+0x13b0]
	test ecx, ecx
	jle _Z5RunOpiP13OperatorStackP12OperandStack_1390
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_1400
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
_Z5RunOpiP13OperatorStackP12OperandStack_2370:
	mov dword [ebp-0x28], 0x2
	mov ecx, [ebp-0x20]
	mov ebx, [ebp-0x1c]
	mov esi, ecx
	cmp ecx, 0x2
	jz _Z5RunOpiP13OperatorStackP12OperandStack_1410
	mov eax, [currentTempOperand]
	mov edx, eax
	shl edx, 0x8
	add edx, s_tempOperandValueAsString
	mov [ebp-0x184], edx
	add eax, 0x1
	and eax, 0x8000000f
	js _Z5RunOpiP13OperatorStackP12OperandStack_1420
_Z5RunOpiP13OperatorStackP12OperandStack_3080:
	mov [currentTempOperand], eax
	test esi, esi
	jz _Z5RunOpiP13OperatorStackP12OperandStack_1430
	sub esi, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_1440
_Z5RunOpiP13OperatorStackP12OperandStack_2980:
	mov eax, [ebp-0x184]
	mov [ebp-0x24], eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_3910:
	mov ecx, [edi+0x13b0]
	test ecx, ecx
	jle _Z5RunOpiP13OperatorStackP12OperandStack_1450
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_1460
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
_Z5RunOpiP13OperatorStackP12OperandStack_2180:
	mov dword [ebp-0x28], 0x1
	mov eax, [ebp-0x20]
	cmp eax, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_1470
	test eax, eax
	jnz _Z5RunOpiP13OperatorStackP12OperandStack_1480
	cvtsi2ss xmm0, dword [ebp-0x1c]
	movss [ebp-0x24], xmm0
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_3920:
	mov dword [ebp-0x28], 0x2
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x6
	jg _Z5RunOpiP13OperatorStackP12OperandStack_1490
	mov eax, g_gametype
	mov eax, [eax]
	test eax, eax
	jz _Z5RunOpiP13OperatorStackP12OperandStack_1500
	mov eax, [eax+0xc]
	mov [esp], eax
	call _Z25UI_GetGameTypeDisplayNamePKc
	mov [ebp-0x24], eax
_Z5RunOpiP13OperatorStackP12OperandStack_1520:
	mov eax, _cstring_null
	mov edx, [ebp-0x24]
	test edx, edx
	cmovnz eax, [ebp-0x24]
	mov [ebp-0x24], eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_3930:
	mov dword [ebp-0x28], 0x2
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x6
	jg _Z5RunOpiP13OperatorStackP12OperandStack_1510
	mov eax, g_gametype
	mov eax, [eax]
	mov eax, [eax+0xc]
	mov [ebp-0x24], eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_1520
_Z5RunOpiP13OperatorStackP12OperandStack_3940:
	mov dword [ebp-0x28], 0x2
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x6
	jg _Z5RunOpiP13OperatorStackP12OperandStack_1530
	mov dword [ebp-0x24], _cstring_null
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_3950:
	mov ecx, [edi+0x13b0]
	test ecx, ecx
	jle _Z5RunOpiP13OperatorStackP12OperandStack_1540
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_1550
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
_Z5RunOpiP13OperatorStackP12OperandStack_2130:
	mov dword [ebp-0x28], 0x0
	mov dword [ebp-0x24], 0x0
	mov eax, [ebp-0x20]
	test eax, eax
	jz _Z5RunOpiP13OperatorStackP12OperandStack_1560
	cmp eax, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_1570
	cmp eax, 0x2
	jz _Z5RunOpiP13OperatorStackP12OperandStack_1580
	test eax, eax
	jz _Z5RunOpiP13OperatorStackP12OperandStack_1590
	mov eax, _cstring_null
_Z5RunOpiP13OperatorStackP12OperandStack_3060:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_must_use_a5
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_3430:
	mov eax, [edi+0x13b0]
	test eax, eax
	jle _Z5RunOpiP13OperatorStackP12OperandStack_1600
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
	jle _Z5RunOpiP13OperatorStackP12OperandStack_1610
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
	jg _Z5RunOpiP13OperatorStackP12OperandStack_1620
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	mov [edi+eax*4+0x50], ecx
	mov eax, [edi+0x13b0]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*4]
	lea ebx, [edi+edx*4]
	mov esi, [ebp-0x2c]
	test esi, esi
	jg _Z5RunOpiP13OperatorStackP12OperandStack_1630
	xor eax, eax
_Z5RunOpiP13OperatorStackP12OperandStack_2810:
	mov ecx, [ebp-0x160]
	test ecx, ecx
	jle _Z5RunOpiP13OperatorStackP12OperandStack_1640
	lea ecx, [ebx+eax*8]
	xor ebx, ebx
_Z5RunOpiP13OperatorStackP12OperandStack_1650:
	mov eax, [ebp+ebx*8-0xd0]
	mov edx, [ebp+ebx*8-0xcc]
	mov [ecx], eax
	mov [ecx+0x4], edx
	add ebx, 0x1
	add ecx, 0x8
	cmp ebx, [ebp-0x160]
	jnz _Z5RunOpiP13OperatorStackP12OperandStack_1650
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_1640
_Z5RunOpiP13OperatorStackP12OperandStack_3680:
	mov ecx, [edi+0x13b0]
	test ecx, ecx
	jle _Z5RunOpiP13OperatorStackP12OperandStack_1660
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_1670
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
_Z5RunOpiP13OperatorStackP12OperandStack_2280:
	mov eax, [ebp-0x20]
	cmp eax, 0x2
	jz _Z5RunOpiP13OperatorStackP12OperandStack_1680
	cmp eax, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_1690
	cmp eax, 0x2
	jz _Z5RunOpiP13OperatorStackP12OperandStack_1700
	test eax, eax
	jz _Z5RunOpiP13OperatorStackP12OperandStack_1710
	mov eax, _cstring_null
_Z5RunOpiP13OperatorStackP12OperandStack_2930:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_must_use_a6
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x28], 0x0
	mov dword [ebp-0x24], 0x0
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_3690:
	mov dword [ebp-0x28], 0x0
	mov dword [ebp-0x24], 0x0
	mov eax, uiscript_debug
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz _Z5RunOpiP13OperatorStackP12OperandStack_70
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_writingdata__i
	mov dword [esp], 0xd
	call _Z10Com_PrintfiPKcz
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_3700:
	mov dword [ebp-0x28], 0x0
	mov dword [ebp-0x24], 0x0
	mov eax, uiscript_debug
	mov eax, [eax]
	mov ecx, [eax+0xc]
	test ecx, ecx
	jz _Z5RunOpiP13OperatorStackP12OperandStack_70
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_inlobby__i
	mov dword [esp], 0xd
	call _Z10Com_PrintfiPKcz
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_3710:
	mov dword [ebp-0x28], 0x0
	mov dword [ebp-0x24], 0x0
	mov eax, uiscript_debug
	mov eax, [eax]
	mov edx, [eax+0xc]
	test edx, edx
	jz _Z5RunOpiP13OperatorStackP12OperandStack_70
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_inprivateparty__
	mov dword [esp], 0xd
	call _Z10Com_PrintfiPKcz
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_3500:
	mov edx, [edi+0x13b0]
	test edx, edx
	jle _Z5RunOpiP13OperatorStackP12OperandStack_1720
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov dword [esp+0x8], 0x54
	mov [esp+0x4], eax
	lea ebx, [ebp-0x7c]
	mov [esp], ebx
	call memcpy
	sub dword [edi+0x13b0], 0x1
_Z5RunOpiP13OperatorStackP12OperandStack_3130:
	mov eax, [ebp-0x2c]
	test eax, eax
	jle _Z5RunOpiP13OperatorStackP12OperandStack_1730
	mov eax, [ebp-0x7c]
	cmp eax, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_1740
	test eax, eax
	jnz _Z5RunOpiP13OperatorStackP12OperandStack_1750
	cvtsi2ss xmm1, dword [ebp-0x78]
_Z5RunOpiP13OperatorStackP12OperandStack_2820:
	cmp dword [ebp-0x2c], 0x1
	jle _Z5RunOpiP13OperatorStackP12OperandStack_1760
	mov esi, 0x1
	lea ebx, [ebp-0x7c]
	add ebx, 0x8
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_1770
_Z5RunOpiP13OperatorStackP12OperandStack_1790:
	test eax, eax
	jnz _Z5RunOpiP13OperatorStackP12OperandStack_1780
	cvtsi2ss xmm0, dword [ebx+0x4]
_Z5RunOpiP13OperatorStackP12OperandStack_1800:
	maxss xmm0, xmm1
	movaps xmm1, xmm0
	add esi, 0x1
	add ebx, 0x8
	cmp [ebp-0x2c], esi
	jle _Z5RunOpiP13OperatorStackP12OperandStack_1760
_Z5RunOpiP13OperatorStackP12OperandStack_1770:
	mov eax, [ebx]
	cmp eax, 0x1
	jnz _Z5RunOpiP13OperatorStackP12OperandStack_1790
	movss xmm0, dword [ebx+0x4]
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_1800
_Z5RunOpiP13OperatorStackP12OperandStack_3510:
	mov dword [ebp-0x28], 0x0
	call _Z16Sys_Millisecondsv
	mov [ebp-0x24], eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_3490:
	mov edx, [edi+0x13b0]
	test edx, edx
	jle _Z5RunOpiP13OperatorStackP12OperandStack_1810
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov dword [esp+0x8], 0x54
	mov [esp+0x4], eax
	lea edx, [ebp-0x7c]
	mov [esp], edx
	call memcpy
	sub dword [edi+0x13b0], 0x1
_Z5RunOpiP13OperatorStackP12OperandStack_3120:
	mov eax, [ebp-0x2c]
	test eax, eax
	jle _Z5RunOpiP13OperatorStackP12OperandStack_1820
	mov eax, [ebp-0x7c]
	cmp eax, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_1830
	test eax, eax
	jnz _Z5RunOpiP13OperatorStackP12OperandStack_1840
	cvtsi2ss xmm1, dword [ebp-0x78]
_Z5RunOpiP13OperatorStackP12OperandStack_2830:
	cmp dword [ebp-0x2c], 0x1
	jle _Z5RunOpiP13OperatorStackP12OperandStack_1760
	mov esi, 0x1
	lea ebx, [ebp-0x7c]
	add ebx, 0x8
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_1850
_Z5RunOpiP13OperatorStackP12OperandStack_1870:
	test eax, eax
	jnz _Z5RunOpiP13OperatorStackP12OperandStack_1860
	cvtsi2ss xmm0, dword [ebx+0x4]
_Z5RunOpiP13OperatorStackP12OperandStack_1880:
	minss xmm0, xmm1
	movaps xmm1, xmm0
	add esi, 0x1
	add ebx, 0x8
	cmp [ebp-0x2c], esi
	jle _Z5RunOpiP13OperatorStackP12OperandStack_1760
_Z5RunOpiP13OperatorStackP12OperandStack_1850:
	mov eax, [ebx]
	cmp eax, 0x1
	jnz _Z5RunOpiP13OperatorStackP12OperandStack_1870
	movss xmm0, dword [ebx+0x4]
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_1880
_Z5RunOpiP13OperatorStackP12OperandStack_3600:
	mov dword [ebp-0x28], 0x0
	mov esi, [ebp+0x8]
	mov [esp], esi
	call _Z24CG_IsScoreboardDisplayedi
	mov edx, eax
	mov [ebp-0x24], eax
	mov eax, uiscript_debug
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz _Z5RunOpiP13OperatorStackP12OperandStack_70
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_scoreboard_visib
	mov dword [esp], 0xd
	call _Z10Com_PrintfiPKcz
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_3610:
	mov dword [ebp-0x28], 0x0
	mov eax, cgArray
	mov edx, [eax+0x5052c]
	mov [ebp-0x24], edx
	mov eax, uiscript_debug
	mov eax, [eax]
	mov esi, [eax+0xc]
	test esi, esi
	jz _Z5RunOpiP13OperatorStackP12OperandStack_70
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_inkillcam__i
	mov dword [esp], 0xd
	call _Z10Com_PrintfiPKcz
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_3620:
	mov ecx, [edi+0x13b0]
	test ecx, ecx
	jle _Z5RunOpiP13OperatorStackP12OperandStack_1890
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_1900
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
_Z5RunOpiP13OperatorStackP12OperandStack_2310:
	mov eax, [ebp-0x20]
	cmp eax, 0x2
	jz _Z5RunOpiP13OperatorStackP12OperandStack_1910
	cmp eax, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_1920
	cmp eax, 0x2
	jz _Z5RunOpiP13OperatorStackP12OperandStack_1930
	test eax, eax
	jz _Z5RunOpiP13OperatorStackP12OperandStack_1940
	mov eax, _cstring_null
_Z5RunOpiP13OperatorStackP12OperandStack_2940:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_must_use_a7
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x28], 0x2
	mov dword [ebp-0x24], _cstring_null
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_3630:
	mov dword [ebp-0x28], 0x0
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z22CG_IsSelectingLocationi
	movzx edx, al
	mov [ebp-0x24], edx
	mov eax, uiscript_debug
	mov eax, [eax]
	mov ebx, [eax+0xc]
	test ebx, ebx
	jz _Z5RunOpiP13OperatorStackP12OperandStack_70
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_selecting_locati
	mov dword [esp], 0xd
	call _Z10Com_PrintfiPKcz
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_3580:
	mov dword [ebp-0x28], 0x0
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z14CG_Flashbangedi
	movzx edx, al
	mov [ebp-0x24], edx
	mov eax, uiscript_debug
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz _Z5RunOpiP13OperatorStackP12OperandStack_70
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_flashbanged__i
	mov dword [esp], 0xd
	call _Z10Com_PrintfiPKcz
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_3590:
	mov dword [ebp-0x28], 0x0
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call _Z19CG_ScopeIsOverlayedi
	movzx edx, al
	mov [ebp-0x24], edx
	mov eax, uiscript_debug
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz _Z5RunOpiP13OperatorStackP12OperandStack_70
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_scoped__i
	mov dword [esp], 0xd
	call _Z10Com_PrintfiPKcz
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_3820:
	mov ecx, [edi+0x13b0]
	test ecx, ecx
	jle _Z5RunOpiP13OperatorStackP12OperandStack_1950
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_1960
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
_Z5RunOpiP13OperatorStackP12OperandStack_2190:
	mov eax, [ebp-0x20]
	cmp eax, 0x2
	jz _Z5RunOpiP13OperatorStackP12OperandStack_1970
	cmp eax, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_1980
	cmp eax, 0x2
	jz _Z5RunOpiP13OperatorStackP12OperandStack_1990
	test eax, eax
	jz _Z5RunOpiP13OperatorStackP12OperandStack_2000
	mov eax, _cstring_null
_Z5RunOpiP13OperatorStackP12OperandStack_2960:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_must_use_a4
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
_Z5RunOpiP13OperatorStackP12OperandStack_3000:
	mov dword [ebp-0x28], 0x0
	mov dword [ebp-0x24], 0x0
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_3830:
	mov ecx, [edi+0x13b0]
	test ecx, ecx
	jle _Z5RunOpiP13OperatorStackP12OperandStack_2010
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_2020
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
_Z5RunOpiP13OperatorStackP12OperandStack_2200:
	mov eax, [ebp-0x20]
	cmp eax, 0x2
	jz _Z5RunOpiP13OperatorStackP12OperandStack_2030
	cmp eax, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_2040
	cmp eax, 0x2
	jz _Z5RunOpiP13OperatorStackP12OperandStack_2050
	test eax, eax
	jz _Z5RunOpiP13OperatorStackP12OperandStack_2060
	mov eax, _cstring_null
_Z5RunOpiP13OperatorStackP12OperandStack_2970:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_must_use_a4
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
_Z5RunOpiP13OperatorStackP12OperandStack_3010:
	mov dword [ebp-0x28], 0x0
	mov dword [ebp-0x24], 0x0
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_3740:
	mov dword [ebp-0x24], 0x0
	mov dword [ebp-0x28], 0x0
	mov eax, uiscript_debug
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz _Z5RunOpiP13OperatorStackP12OperandStack_70
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_aloneinprivatepa
	mov dword [esp], 0xd
	call _Z10Com_PrintfiPKcz
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_3750:
	mov dword [ebp-0x28], 0x0
	mov eax, clientUIActives
	cmp dword [eax+0xc], 0x6
	jg _Z5RunOpiP13OperatorStackP12OperandStack_2070
	mov dword [ebp-0x24], 0x0
_Z5RunOpiP13OperatorStackP12OperandStack_2690:
	mov eax, uiscript_debug
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz _Z5RunOpiP13OperatorStackP12OperandStack_70
	mov eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_adsjavelin__i
	mov dword [esp], 0xd
	call _Z10Com_PrintfiPKcz
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_3660:
	mov ecx, [edi+0x13b0]
	test ecx, ecx
	jle _Z5RunOpiP13OperatorStackP12OperandStack_2080
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_2090
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
_Z5RunOpiP13OperatorStackP12OperandStack_2210:
	lea ecx, [ebp-0x20]
	lea eax, [ebp-0x28]
	mov [esp], eax
	mov edx, 0x2
	mov eax, [ebp+0x8]
	call _Z15GetFieldForTeami6team_tP7OperandS1_
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_3730:
	mov dword [ebp-0x24], 0x0
	mov dword [ebp-0x28], 0x0
	mov eax, uiscript_debug
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz _Z5RunOpiP13OperatorStackP12OperandStack_70
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_privatepartyhost1
	mov dword [esp], 0xd
	call _Z10Com_PrintfiPKcz
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_3670:
	mov ecx, [edi+0x13b0]
	test ecx, ecx
	jle _Z5RunOpiP13OperatorStackP12OperandStack_2100
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	lea eax, [edi+eax*4-0x54]
	mov ebx, [eax+0x50]
	cmp ebx, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_2110
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
_Z5RunOpiP13OperatorStackP12OperandStack_2240:
	lea ecx, [ebp-0x20]
	lea eax, [ebp-0x28]
	mov [esp], eax
	mov edx, 0x1
	mov eax, [ebp+0x8]
	call _Z15GetFieldForTeami6team_tP7OperandS1_
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_340:
	mov edx, 0x2
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_350
_Z5RunOpiP13OperatorStackP12OperandStack_1760:
	mov dword [ebp-0x28], 0x1
	movss [ebp-0x24], xmm1
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_1860:
	mov eax, [ebx+0x4]
	mov [esp], eax
	movss [ebp-0x208], xmm1
	call atof
	fstp qword [ebp-0x1b8]
	cvtsd2ss xmm0, [ebp-0x1b8]
	movss xmm1, dword [ebp-0x208]
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_1880
_Z5RunOpiP13OperatorStackP12OperandStack_1780:
	mov eax, [ebx+0x4]
	mov [esp], eax
	movss [ebp-0x208], xmm1
	call atof
	fstp qword [ebp-0x1a8]
	cvtsd2ss xmm0, [ebp-0x1a8]
	movss xmm1, dword [ebp-0x208]
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_1800
_Z5RunOpiP13OperatorStackP12OperandStack_1340:
	mov [esp+0x4], ebx
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z29Con_IsGameMessageWindowActiveii
	test al, al
	setnz al
	movzx eax, al
	mov [ebp-0x24], eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_1560:
	mov eax, [ebp-0x1c]
	test eax, eax
	jle _Z5RunOpiP13OperatorStackP12OperandStack_2120
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z17UI_GetScoreAtRankii
	test eax, eax
	jz _Z5RunOpiP13OperatorStackP12OperandStack_70
	mov eax, [eax+0x4]
	mov [ebp-0x24], eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_1510:
	mov eax, cgsArray
	add eax, 0x20
	mov [ebp-0x24], eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_1520
_Z5RunOpiP13OperatorStackP12OperandStack_190:
	mov dword [ebp-0x28], 0x0
	mov [esp+0x4], edx
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call _Z21CG_ActionSlotIsUsableij
	test al, al
	setnz al
	movzx eax, al
	mov [ebp-0x24], eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_1550:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2130
_Z5RunOpiP13OperatorStackP12OperandStack_310:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2140
_Z5RunOpiP13OperatorStackP12OperandStack_100:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2150
_Z5RunOpiP13OperatorStackP12OperandStack_210:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2160
_Z5RunOpiP13OperatorStackP12OperandStack_1270:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2170
_Z5RunOpiP13OperatorStackP12OperandStack_1460:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2180
_Z5RunOpiP13OperatorStackP12OperandStack_1960:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2190
_Z5RunOpiP13OperatorStackP12OperandStack_2020:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2200
_Z5RunOpiP13OperatorStackP12OperandStack_2090:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2210
_Z5RunOpiP13OperatorStackP12OperandStack_60:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2220
_Z5RunOpiP13OperatorStackP12OperandStack_40:
	mov ecx, [eax]
	mov ebx, [eax+0x4]
	mov [ebp-0x1d8], ecx
	mov [ebp-0x1d4], ebx
	mov [ebp-0x15c], ecx
	mov [edi+0x13b0], edx
	mov ecx, edx
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2230
_Z5RunOpiP13OperatorStackP12OperandStack_2110:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2240
_Z5RunOpiP13OperatorStackP12OperandStack_230:
	mov edx, eax
	mov eax, [eax]
	mov edx, [edx+0x4]
	mov [ebp-0x1d8], eax
	mov [ebp-0x1d4], edx
	mov ebx, eax
	mov [edi+0x13b0], ecx
	test ecx, ecx
	jle _Z5RunOpiP13OperatorStackP12OperandStack_2250
	mov edx, [ebp-0x214]
	lea eax, [edx+edi-0x54]
	mov ecx, [eax+0x50]
	cmp ecx, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_2260
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_error_invalid_op
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
_Z5RunOpiP13OperatorStackP12OperandStack_2990:
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
	call _Z10RunLogicOpi13operationEnumP12OperandStack7OperandS2_PKc
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_20
_Z5RunOpiP13OperatorStackP12OperandStack_160:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2270
_Z5RunOpiP13OperatorStackP12OperandStack_1670:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2280
_Z5RunOpiP13OperatorStackP12OperandStack_810:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2290
_Z5RunOpiP13OperatorStackP12OperandStack_1250:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2300
_Z5RunOpiP13OperatorStackP12OperandStack_1900:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2310
_Z5RunOpiP13OperatorStackP12OperandStack_600:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2320
_Z5RunOpiP13OperatorStackP12OperandStack_1130:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2330
_Z5RunOpiP13OperatorStackP12OperandStack_920:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2340
_Z5RunOpiP13OperatorStackP12OperandStack_1180:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2350
_Z5RunOpiP13OperatorStackP12OperandStack_1310:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2360
_Z5RunOpiP13OperatorStackP12OperandStack_1400:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2370
_Z5RunOpiP13OperatorStackP12OperandStack_1360:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2380
_Z5RunOpiP13OperatorStackP12OperandStack_760:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2390
_Z5RunOpiP13OperatorStackP12OperandStack_990:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2400
_Z5RunOpiP13OperatorStackP12OperandStack_970:
	mov ecx, [eax]
	mov ebx, [eax+0x4]
	mov [ebp-0x1d8], ecx
	mov [ebp-0x1d4], ebx
	mov esi, ecx
	mov [edi+0x13b0], edx
	mov ecx, edx
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2410
_Z5RunOpiP13OperatorStackP12OperandStack_680:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2420
_Z5RunOpiP13OperatorStackP12OperandStack_870:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2430
_Z5RunOpiP13OperatorStackP12OperandStack_1070:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2440
_Z5RunOpiP13OperatorStackP12OperandStack_1050:
	mov ebx, [ecx]
	mov esi, [ecx+0x4]
	mov [ebp-0x1d8], ebx
	mov [ebp-0x1d4], esi
	mov esi, ebx
	mov [edi+0x13b0], edx
	mov ecx, edx
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2450
_Z5RunOpiP13OperatorStackP12OperandStack_280:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2460
_Z5RunOpiP13OperatorStackP12OperandStack_480:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2470
_Z5RunOpiP13OperatorStackP12OperandStack_370:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2480
_Z5RunOpiP13OperatorStackP12OperandStack_420:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2490
_Z5RunOpiP13OperatorStackP12OperandStack_540:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	lea eax, [ecx-0x1]
	mov [edi+0x13b0], eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2500
_Z5RunOpiP13OperatorStackP12OperandStack_790:
	mov dword [ebp-0x24], _cstring_null
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_890:
	xor eax, eax
	cmp dword [ebp-0x1c], 0x0
	setz al
	mov [ebp-0x24], eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_940:
	mov ecx, [ebp-0x1c]
	mov edx, ecx
	not edx
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2510
_Z5RunOpiP13OperatorStackP12OperandStack_770:
	cvttss2si ebx, [ebp-0x1c]
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2520
_Z5RunOpiP13OperatorStackP12OperandStack_1370:
	cvttss2si eax, [ebp-0x1c]
	mov [ebp-0x24], eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_1020:
	cvttss2si ecx, [ebp-0x1d4]
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2530
_Z5RunOpiP13OperatorStackP12OperandStack_1000:
	cvttss2si ebx, [ebp-0x1c]
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2540
_Z5RunOpiP13OperatorStackP12OperandStack_880:
	mov ebx, [ebp-0x20]
	mov esi, [ebp-0x1c]
	mov [ebp-0x168], ebx
	cmp ebx, 0x2
	jz _Z5RunOpiP13OperatorStackP12OperandStack_2550
	mov eax, [currentTempOperand]
	mov edx, eax
	shl edx, 0x8
	add edx, s_tempOperandValueAsString
	mov [ebp-0x174], edx
	add eax, 0x1
	and eax, 0x8000000f
	js _Z5RunOpiP13OperatorStackP12OperandStack_2560
_Z5RunOpiP13OperatorStackP12OperandStack_3230:
	mov [currentTempOperand], eax
	mov eax, [ebp-0x168]
	test eax, eax
	jz _Z5RunOpiP13OperatorStackP12OperandStack_2570
	cmp dword [ebp-0x168], 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_2580
_Z5RunOpiP13OperatorStackP12OperandStack_3200:
	mov edx, [ebp-0x174]
	cmp ecx, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_2590
	cmp ecx, 0x2
	jz _Z5RunOpiP13OperatorStackP12OperandStack_2600
	test ecx, ecx
	jz _Z5RunOpiP13OperatorStackP12OperandStack_2610
	mov eax, _cstring_null
_Z5RunOpiP13OperatorStackP12OperandStack_3100:
	mov [esp+0xc], edx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_you_cannot1
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x24], 0x0
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_930:
	mov ebx, [ebp-0x20]
	mov esi, [ebp-0x1c]
	mov [ebp-0x164], ebx
	cmp ebx, 0x2
	jz _Z5RunOpiP13OperatorStackP12OperandStack_2620
	mov eax, [currentTempOperand]
	mov edx, eax
	shl edx, 0x8
	add edx, s_tempOperandValueAsString
	mov [ebp-0x170], edx
	add eax, 0x1
	and eax, 0x8000000f
	js _Z5RunOpiP13OperatorStackP12OperandStack_2630
_Z5RunOpiP13OperatorStackP12OperandStack_3260:
	mov [currentTempOperand], eax
	mov eax, [ebp-0x164]
	test eax, eax
	jz _Z5RunOpiP13OperatorStackP12OperandStack_2640
	cmp dword [ebp-0x164], 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_2650
_Z5RunOpiP13OperatorStackP12OperandStack_3210:
	mov edx, [ebp-0x170]
	cmp ecx, 0x1
	jz _Z5RunOpiP13OperatorStackP12OperandStack_2660
	cmp ecx, 0x2
	jz _Z5RunOpiP13OperatorStackP12OperandStack_2670
	test ecx, ecx
	jz _Z5RunOpiP13OperatorStackP12OperandStack_2680
	mov eax, _cstring_null
_Z5RunOpiP13OperatorStackP12OperandStack_3090:
	mov [esp+0xc], edx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_you_cannot2
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x24], 0x0
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_1410:
	mov eax, ebx
	mov [ebp-0x24], eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_2070:
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z13CG_JavelinADSi
	movzx eax, al
	mov [ebp-0x24], eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2690
_Z5RunOpiP13OperatorStackP12OperandStack_1490:
	mov eax, cgsArray
	add eax, 0x20
	mov [esp], eax
	call _Z25UI_GetGameTypeDisplayNamePKc
	mov [ebp-0x24], eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_1520
_Z5RunOpiP13OperatorStackP12OperandStack_1530:
	mov esi, [ebp+0x8]
	mov [esp], esi
	call _Z25CG_GetGametypeDescriptioni
	mov edx, _cstring_null
	test eax, eax
	cmovnz edx, eax
	mov [ebp-0x24], edx
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_1190:
	movss xmm0, dword [ebp-0x1c]
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2700
_Z5RunOpiP13OperatorStackP12OperandStack_1210:
	movss [esp+0x4], xmm0
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	movss [ebp-0x1f8], xmm0
	call _Z23CG_UICheckWeapLockBlinkif
	movzx eax, al
	mov [ebp-0x24], eax
	movss xmm0, dword [ebp-0x1f8]
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2710
_Z5RunOpiP13OperatorStackP12OperandStack_1220:
	mov esi, [ebp+0x8]
	mov [esp], esi
	call _Z27CG_UICheckWeapLockAttackTopi
	movzx eax, al
	mov [ebp-0x24], eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2720
_Z5RunOpiP13OperatorStackP12OperandStack_1230:
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z30CG_UICheckWeapLockAttackDirecti
	movzx eax, al
	mov [ebp-0x24], eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2730
_Z5RunOpiP13OperatorStackP12OperandStack_1140:
	movss xmm0, dword [ebp-0x1c]
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2740
_Z5RunOpiP13OperatorStackP12OperandStack_1160:
	fstp dword [ebp-0x20c]
	movss xmm1, dword [ebp-0x20c]
	cvtss2sd xmm1, xmm1
	movsd [esp+0x10], xmm1
	cvtss2sd xmm0, xmm0
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_sin_f___f
	mov dword [esp], 0xd
	call _Z10Com_PrintfiPKcz
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_1320:
	cvttss2si ebx, [ebp-0x1c]
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2750
_Z5RunOpiP13OperatorStackP12OperandStack_380:
	movss xmm0, dword [ebp-0x1c]
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2760
_Z5RunOpiP13OperatorStackP12OperandStack_1100:
	cvttss2si ecx, [ebp-0x1d4]
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2770
_Z5RunOpiP13OperatorStackP12OperandStack_1080:
	cvttss2si ebx, [ebp-0x1c]
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2780
_Z5RunOpiP13OperatorStackP12OperandStack_400:
	fstp dword [ebp-0x20c]
	movss xmm1, dword [ebp-0x20c]
	cvtss2sd xmm1, xmm1
	movsd [esp+0x10], xmm1
	cvtss2sd xmm0, xmm0
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_cos_f___f
	mov dword [esp], 0xd
	call _Z10Com_PrintfiPKcz
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_1470:
	movss xmm0, dword [ebp-0x1c]
	movss [ebp-0x24], xmm0
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_1630:
	mov ecx, 0x1
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2790
_Z5RunOpiP13OperatorStackP12OperandStack_2800:
	add ecx, 0x1
_Z5RunOpiP13OperatorStackP12OperandStack_2790:
	mov eax, [ebp+ecx*8-0x84]
	mov edx, [ebp+ecx*8-0x80]
	mov [ebx+ecx*8-0x8], eax
	mov [ebx+ecx*8-0x4], edx
	cmp [ebp-0x2c], ecx
	jg _Z5RunOpiP13OperatorStackP12OperandStack_2800
	mov eax, ecx
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2810
_Z5RunOpiP13OperatorStackP12OperandStack_1740:
	movss xmm1, dword [ebp-0x78]
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2820
_Z5RunOpiP13OperatorStackP12OperandStack_1830:
	movss xmm1, dword [ebp-0x78]
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2830
_Z5RunOpiP13OperatorStackP12OperandStack_180:
	cvttss2si eax, [ebp-0x1c]
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2840
_Z5RunOpiP13OperatorStackP12OperandStack_1620:
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_ui_script_error_1
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x1dc], 0x0
	mov edx, [edi+0x13b0]
	mov dword [ebp-0x1e0], 0x0
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*4]
	mov edx, [ebp-0x1e0]
	mov ecx, [ebp-0x1dc]
	mov [edi+eax*4], edx
	mov [edi+eax*4+0x4], ecx
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2850
_Z5RunOpiP13OperatorStackP12OperandStack_120:
	mov eax, _cstring_float
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2860
_Z5RunOpiP13OperatorStackP12OperandStack_1290:
	cvttss2si ebx, [ebp-0x1c]
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2870
_Z5RunOpiP13OperatorStackP12OperandStack_1500:
	mov dword [ebp-0x24], _cstring_null
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_1520
_Z5RunOpiP13OperatorStackP12OperandStack_440:
	mov eax, _cstring_float
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2880
_Z5RunOpiP13OperatorStackP12OperandStack_560:
	mov eax, _cstring_float
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2890
_Z5RunOpiP13OperatorStackP12OperandStack_500:
	mov eax, _cstring_float
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2900
_Z5RunOpiP13OperatorStackP12OperandStack_700:
	mov eax, _cstring_float
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2910
_Z5RunOpiP13OperatorStackP12OperandStack_830:
	mov eax, _cstring_float
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2920
_Z5RunOpiP13OperatorStackP12OperandStack_1690:
	mov eax, _cstring_float
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2930
_Z5RunOpiP13OperatorStackP12OperandStack_1920:
	mov eax, _cstring_float
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2940
_Z5RunOpiP13OperatorStackP12OperandStack_620:
	mov eax, _cstring_float
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2950
_Z5RunOpiP13OperatorStackP12OperandStack_1980:
	mov eax, _cstring_float
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2960
_Z5RunOpiP13OperatorStackP12OperandStack_2040:
	mov eax, _cstring_float
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2970
_Z5RunOpiP13OperatorStackP12OperandStack_2060:
	mov eax, _cstring_int
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2970
_Z5RunOpiP13OperatorStackP12OperandStack_1710:
	mov eax, _cstring_int
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2930
_Z5RunOpiP13OperatorStackP12OperandStack_1940:
	mov eax, _cstring_int
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2940
_Z5RunOpiP13OperatorStackP12OperandStack_1200:
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call atof
	fstp qword [ebp-0x190]
	cvtsd2ss xmm0, [ebp-0x190]
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2700
_Z5RunOpiP13OperatorStackP12OperandStack_1150:
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call atof
	fstp qword [ebp-0x1d0]
	cvtsd2ss xmm0, [ebp-0x1d0]
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2740
_Z5RunOpiP13OperatorStackP12OperandStack_1430:
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_i
	mov dword [esp+0x4], 0x100
	mov ecx, [ebp-0x184]
	mov [esp], ecx
	call _Z11Com_sprintfPciPKcz
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2980
_Z5RunOpiP13OperatorStackP12OperandStack_1030:
	mov esi, [ebp-0x1d4]
	mov [esp], esi
	call atoi
	mov ecx, eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2530
_Z5RunOpiP13OperatorStackP12OperandStack_1010:
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call atoi
	mov ebx, eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2540
_Z5RunOpiP13OperatorStackP12OperandStack_780:
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call atoi
	mov ebx, eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2520
_Z5RunOpiP13OperatorStackP12OperandStack_1380:
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call atoi
	mov [ebp-0x24], eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_460:
	mov eax, _cstring_int
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2880
_Z5RunOpiP13OperatorStackP12OperandStack_580:
	mov eax, _cstring_int
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2890
_Z5RunOpiP13OperatorStackP12OperandStack_720:
	mov eax, _cstring_int
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2910
_Z5RunOpiP13OperatorStackP12OperandStack_1330:
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call atoi
	mov ebx, eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2750
_Z5RunOpiP13OperatorStackP12OperandStack_390:
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call atof
	fstp qword [ebp-0x1c8]
	cvtsd2ss xmm0, [ebp-0x1c8]
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2760
_Z5RunOpiP13OperatorStackP12OperandStack_520:
	mov eax, _cstring_int
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2900
_Z5RunOpiP13OperatorStackP12OperandStack_1110:
	mov esi, [ebp-0x1d4]
	mov [esp], esi
	call atoi
	mov ecx, eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2770
_Z5RunOpiP13OperatorStackP12OperandStack_1090:
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call atoi
	mov ebx, eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2780
_Z5RunOpiP13OperatorStackP12OperandStack_1480:
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call atof
	fstp qword [ebp-0x180]
	cvtsd2ss xmm0, [ebp-0x180]
	movss [ebp-0x24], xmm0
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_140:
	mov eax, _cstring_int
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2860
_Z5RunOpiP13OperatorStackP12OperandStack_640:
	mov eax, _cstring_int
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2950
_Z5RunOpiP13OperatorStackP12OperandStack_2000:
	mov eax, _cstring_int
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2960
_Z5RunOpiP13OperatorStackP12OperandStack_850:
	mov eax, _cstring_int
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2920
_Z5RunOpiP13OperatorStackP12OperandStack_1840:
	mov eax, [ebp-0x78]
	mov [esp], eax
	call atof
	fstp qword [ebp-0x1c0]
	cvtsd2ss xmm1, [ebp-0x1c0]
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2830
_Z5RunOpiP13OperatorStackP12OperandStack_1750:
	mov eax, [ebp-0x78]
	mov [esp], eax
	call atof
	fstp qword [ebp-0x1b0]
	cvtsd2ss xmm1, [ebp-0x1b0]
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2820
_Z5RunOpiP13OperatorStackP12OperandStack_840:
	mov eax, _cstring_string
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2920
_Z5RunOpiP13OperatorStackP12OperandStack_2050:
	mov eax, _cstring_string
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2970
_Z5RunOpiP13OperatorStackP12OperandStack_1700:
	mov eax, _cstring_string
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2930
_Z5RunOpiP13OperatorStackP12OperandStack_450:
	mov eax, _cstring_string
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2880
_Z5RunOpiP13OperatorStackP12OperandStack_570:
	mov eax, _cstring_string
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2890
_Z5RunOpiP13OperatorStackP12OperandStack_710:
	mov eax, _cstring_string
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2910
_Z5RunOpiP13OperatorStackP12OperandStack_510:
	mov eax, _cstring_string
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2900
_Z5RunOpiP13OperatorStackP12OperandStack_2260:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	mov eax, [ebp-0x16c]
	sub eax, 0x2
	mov [edi+0x13b0], eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2990
_Z5RunOpiP13OperatorStackP12OperandStack_630:
	mov eax, _cstring_string
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2950
_Z5RunOpiP13OperatorStackP12OperandStack_1990:
	mov eax, _cstring_string
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2960
_Z5RunOpiP13OperatorStackP12OperandStack_130:
	mov eax, _cstring_string
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2860
_Z5RunOpiP13OperatorStackP12OperandStack_1930:
	mov eax, _cstring_string
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2940
_Z5RunOpiP13OperatorStackP12OperandStack_1970:
	mov ebx, [ebp-0x1c]
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z22UI_GetLocalVarsContexti
	mov [esp+0x4], ebx
	mov [esp], eax
	call _Z15UILocalVar_FindP17UILocalVarContextPKc
	test eax, eax
	jz _Z5RunOpiP13OperatorStackP12OperandStack_3000
	mov dword [ebp-0x28], 0x0
	mov [esp], eax
	call _Z17UILocalVar_GetIntPK10UILocalVar
	mov edx, eax
	mov [ebp-0x24], eax
	mov eax, uiscript_debug
	mov eax, [eax]
	mov ecx, [eax+0xc]
	test ecx, ecx
	jz _Z5RunOpiP13OperatorStackP12OperandStack_70
	mov [esp+0xc], edx
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_localvarint_s___
	mov dword [esp], 0xd
	call _Z10Com_PrintfiPKcz
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_2030:
	mov ebx, [ebp-0x1c]
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z22UI_GetLocalVarsContexti
	mov [esp+0x4], ebx
	mov [esp], eax
	call _Z15UILocalVar_FindP17UILocalVarContextPKc
	test eax, eax
	jz _Z5RunOpiP13OperatorStackP12OperandStack_3010
	mov dword [ebp-0x28], 0x0
	mov [esp], eax
	call _Z18UILocalVar_GetBoolPK10UILocalVar
	movzx edx, al
	mov [ebp-0x24], edx
	mov eax, uiscript_debug
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz _Z5RunOpiP13OperatorStackP12OperandStack_70
	mov [esp+0xc], edx
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_localvarbool_s__
	mov dword [esp], 0xd
	call _Z10Com_PrintfiPKcz
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_490:
	mov dword [ebp-0x28], 0x1
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z21Dvar_GetVariantStringPKc
	mov [esp], eax
	call atof
	fstp qword [ebp-0x1a0]
	cvtsd2ss xmm0, [ebp-0x1a0]
	movss [ebp-0x24], xmm0
	mov eax, uiscript_debug
	mov eax, [eax]
	mov esi, [eax+0xc]
	test esi, esi
	jz _Z5RunOpiP13OperatorStackP12OperandStack_70
	cvtss2sd xmm0, xmm0
	movsd [esp+0xc], xmm0
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_dvarfloat_s___f
	mov dword [esp], 0xd
	call _Z10Com_PrintfiPKcz
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_690:
	mov ebx, [ebp-0x1c]
	mov esi, [ebp+0x8]
	mov [esp], esi
	call _Z22UI_GetLocalVarsContexti
	mov [esp+0x4], ebx
	mov [esp], eax
	call _Z15UILocalVar_FindP17UILocalVarContextPKc
	test eax, eax
	jz _Z5RunOpiP13OperatorStackP12OperandStack_3020
	mov dword [ebp-0x28], 0x1
	mov [esp], eax
	call _Z19UILocalVar_GetFloatPK10UILocalVar
	fstp dword [ebp-0x194]
	movss xmm0, dword [ebp-0x194]
	movss [ebp-0x24], xmm0
	mov eax, uiscript_debug
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz _Z5RunOpiP13OperatorStackP12OperandStack_70
	cvtss2sd xmm1, xmm0
	movsd [esp+0xc], xmm1
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_localvarfloat_s_
	mov dword [esp], 0xd
	call _Z10Com_PrintfiPKcz
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_1910:
	mov dword [esp+0x4], _cstring_teamname
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z5RunOpiP13OperatorStackP12OperandStack_3030
	mov dword [ebp-0x28], 0x2
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z20CG_GetPlayerTeamNamei
_Z5RunOpiP13OperatorStackP12OperandStack_3190:
	mov edx, eax
	mov [ebp-0x24], eax
	mov eax, uiscript_debug
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz _Z5RunOpiP13OperatorStackP12OperandStack_70
	mov [esp+0xc], edx
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_player_s___s
	mov dword [esp], 0xd
	call _Z10Com_PrintfiPKcz
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_610:
	mov dword [ebp-0x28], 0x0
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z21Dvar_GetVariantStringPKc
	mov [esp], eax
	call atoi
	mov edx, eax
	mov [ebp-0x24], eax
	mov eax, uiscript_debug
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz _Z5RunOpiP13OperatorStackP12OperandStack_70
	mov [esp+0xc], edx
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_dvarbool_s___i
	mov dword [esp], 0xd
	call _Z10Com_PrintfiPKcz
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_430:
	mov dword [ebp-0x28], 0x0
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z21Dvar_GetVariantStringPKc
	mov [esp], eax
	call atoi
	mov edx, eax
	mov [ebp-0x24], eax
	mov eax, uiscript_debug
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz _Z5RunOpiP13OperatorStackP12OperandStack_70
	mov [esp+0xc], edx
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_dvarint_s___i
	mov dword [esp], 0xd
	call _Z10Com_PrintfiPKcz
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_550:
	mov dword [ebp-0x28], 0x2
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z12Dvar_FindVarPKc
	test eax, eax
	jz _Z5RunOpiP13OperatorStackP12OperandStack_3040
	cmp byte [eax+0xa], 0x7
	jz _Z5RunOpiP13OperatorStackP12OperandStack_3050
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z21Dvar_GetVariantStringPKc
	mov [ebp-0x24], eax
_Z5RunOpiP13OperatorStackP12OperandStack_3280:
	mov eax, uiscript_debug
	mov eax, [eax]
	mov ebx, [eax+0xc]
	test ebx, ebx
	jz _Z5RunOpiP13OperatorStackP12OperandStack_70
	mov eax, [ebp-0x24]
	mov [esp+0xc], eax
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_dvarstring_s___s
	mov dword [esp], 0xd
	call _Z10Com_PrintfiPKcz
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_1280:
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call atoi
	mov ebx, eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2870
_Z5RunOpiP13OperatorStackP12OperandStack_110:
	mov dword [esp+0x8], _ZZ13GetKeyBindingiP7OperandS0_E12resultString
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z37UI_GetKeyBindingLocalizedStringSingleiPKcPc
	mov dword [ebp-0x28], 0x2
	mov dword [ebp-0x24], _ZZ13GetKeyBindingiP7OperandS0_E12resultString
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_170:
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call atoi
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2840
_Z5RunOpiP13OperatorStackP12OperandStack_1570:
	mov eax, _cstring_float
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_3060
_Z5RunOpiP13OperatorStackP12OperandStack_820:
	mov ebx, [ebp-0x1c]
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z22UI_GetLocalVarsContexti
	mov [esp+0x4], ebx
	mov [esp], eax
	call _Z15UILocalVar_FindP17UILocalVarContextPKc
	test eax, eax
	jz _Z5RunOpiP13OperatorStackP12OperandStack_3070
	mov dword [ebp-0x28], 0x2
	mov dword [esp+0x8], 0x20
	mov [esp+0x4], esi
	mov [esp], eax
	call _Z20UILocalVar_GetStringPK10UILocalVarPci
	mov edx, eax
	mov [ebp-0x24], eax
	mov eax, uiscript_debug
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz _Z5RunOpiP13OperatorStackP12OperandStack_70
	mov [esp+0xc], edx
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_localvarstring_s
	mov dword [esp], 0xd
	call _Z10Com_PrintfiPKcz
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_1680:
	mov dword [ebp-0x28], 0x0
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z25Menu_IsMenuOpenAndVisibleiPKc
	movzx edx, al
	mov [ebp-0x24], edx
	mov eax, uiscript_debug
	mov eax, [eax]
	mov ecx, [eax+0xc]
	test ecx, ecx
	jz _Z5RunOpiP13OperatorStackP12OperandStack_70
	mov [esp+0xc], edx
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_ismenuopen_s___i
	mov dword [esp], 0xd
	call _Z10Com_PrintfiPKcz
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_320:
	mov edx, 0x1
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_350
_Z5RunOpiP13OperatorStackP12OperandStack_1420:
	sub eax, 0x1
	or eax, 0xfffffff0
	add eax, 0x1
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_3080
_Z5RunOpiP13OperatorStackP12OperandStack_1590:
	mov eax, _cstring_int
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_3060
_Z5RunOpiP13OperatorStackP12OperandStack_2620:
	mov edx, esi
_Z5RunOpiP13OperatorStackP12OperandStack_2670:
	mov eax, _cstring_string
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_3090
_Z5RunOpiP13OperatorStackP12OperandStack_2550:
	mov edx, esi
_Z5RunOpiP13OperatorStackP12OperandStack_2600:
	mov eax, _cstring_string
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_3100
_Z5RunOpiP13OperatorStackP12OperandStack_590:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2320
_Z5RunOpiP13OperatorStackP12OperandStack_1120:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2330
_Z5RunOpiP13OperatorStackP12OperandStack_530:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2500
_Z5RunOpiP13OperatorStackP12OperandStack_660:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [edi+0x13b0], 0x1
	mov dword [esp+0x8], 0x54
	mov [esp+0x4], edi
	lea esi, [ebp-0x7c]
	mov [esp], esi
	call memcpy
	mov dword [ebp-0x2c], 0x1
	mov dword [ebp-0x7c], 0x0
	mov dword [ebp-0x78], 0x0
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_3110
_Z5RunOpiP13OperatorStackP12OperandStack_1600:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [edi+0x13b0], 0x1
	lea eax, [ebp-0xd0]
	mov dword [esp+0x8], 0x54
	mov [esp+0x4], edi
	mov [esp], eax
	call memcpy
	mov dword [ebp-0xd0], 0x0
	mov dword [ebp-0xcc], 0x0
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_20
_Z5RunOpiP13OperatorStackP12OperandStack_1810:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [edi+0x13b0], 0x1
	mov dword [esp+0x8], 0x54
	mov [esp+0x4], edi
	lea eax, [ebp-0x7c]
	mov [esp], eax
	call memcpy
	mov dword [ebp-0x2c], 0x1
	mov dword [ebp-0x7c], 0x0
	mov dword [ebp-0x78], 0x0
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_3120
_Z5RunOpiP13OperatorStackP12OperandStack_1950:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2190
_Z5RunOpiP13OperatorStackP12OperandStack_2010:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2200
_Z5RunOpiP13OperatorStackP12OperandStack_1060:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2440
_Z5RunOpiP13OperatorStackP12OperandStack_1040:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov edx, [edi]
	mov [ebp-0x1d8], edx
	mov dword [ebp-0x1d4], 0x0
	xor esi, esi
	mov ecx, [edi+0x13b0]
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2450
_Z5RunOpiP13OperatorStackP12OperandStack_1720:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [edi+0x13b0], 0x1
	mov dword [esp+0x8], 0x54
	mov [esp+0x4], edi
	lea ecx, [ebp-0x7c]
	mov [esp], ecx
	call memcpy
	mov dword [ebp-0x2c], 0x1
	mov dword [ebp-0x7c], 0x0
	mov dword [ebp-0x78], 0x0
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_3130
_Z5RunOpiP13OperatorStackP12OperandStack_90:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2150
_Z5RunOpiP13OperatorStackP12OperandStack_200:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2160
_Z5RunOpiP13OperatorStackP12OperandStack_1580:
	mov eax, _cstring_string
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_3060
_Z5RunOpiP13OperatorStackP12OperandStack_330:
	mov edx, 0x3
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_350
_Z5RunOpiP13OperatorStackP12OperandStack_650:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [edi+0x13b0], 0x1
	mov dword [esp+0x8], 0x54
	mov [esp+0x4], edi
	lea edx, [ebp-0x7c]
	mov [esp], edx
	call memcpy
	mov dword [ebp-0x2c], 0x1
	mov dword [ebp-0x7c], 0x0
	mov dword [ebp-0x78], 0x0
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_3140
_Z5RunOpiP13OperatorStackP12OperandStack_900:
	pxor xmm0, xmm0
	ucomiss xmm0, [ebp-0x1c]
	setz al
	setnp dl
	and al, dl
	movzx eax, al
	mov [ebp-0x24], eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_1300:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2360
_Z5RunOpiP13OperatorStackP12OperandStack_1390:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2370
_Z5RunOpiP13OperatorStackP12OperandStack_220:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_20
_Z5RunOpiP13OperatorStackP12OperandStack_150:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2270
_Z5RunOpiP13OperatorStackP12OperandStack_1540:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2130
_Z5RunOpiP13OperatorStackP12OperandStack_300:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2140
_Z5RunOpiP13OperatorStackP12OperandStack_360:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2480
_Z5RunOpiP13OperatorStackP12OperandStack_410:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2490
_Z5RunOpiP13OperatorStackP12OperandStack_270:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2460
_Z5RunOpiP13OperatorStackP12OperandStack_470:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2470
_Z5RunOpiP13OperatorStackP12OperandStack_1820:
	mov dword [esp+0x4], _cstring_ui_expression_er4
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x28], 0x1
	mov dword [ebp-0x24], 0x0
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_80:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [edi+0x13b0], 0x1
	mov dword [esp+0x8], 0x54
	mov [esp+0x4], edi
	lea eax, [ebp-0x7c]
	mov [esp], eax
	call memcpy
	mov dword [ebp-0x2c], 0x1
	mov dword [ebp-0x7c], 0x0
	mov dword [ebp-0x78], 0x0
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_3150
_Z5RunOpiP13OperatorStackP12OperandStack_2080:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2210
_Z5RunOpiP13OperatorStackP12OperandStack_50:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2220
_Z5RunOpiP13OperatorStackP12OperandStack_670:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2420
_Z5RunOpiP13OperatorStackP12OperandStack_860:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2430
_Z5RunOpiP13OperatorStackP12OperandStack_2120:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_rank_must_
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_1730:
	mov dword [esp+0x4], _cstring_ui_expression_er5
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [ebp-0x28], 0x1
	mov dword [ebp-0x24], 0x0
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_1260:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2170
_Z5RunOpiP13OperatorStackP12OperandStack_1450:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2180
_Z5RunOpiP13OperatorStackP12OperandStack_910:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2340
_Z5RunOpiP13OperatorStackP12OperandStack_1170:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2350
_Z5RunOpiP13OperatorStackP12OperandStack_1350:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2380
_Z5RunOpiP13OperatorStackP12OperandStack_750:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2390
_Z5RunOpiP13OperatorStackP12OperandStack_980:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2400
_Z5RunOpiP13OperatorStackP12OperandStack_960:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov eax, [edi]
	mov [ebp-0x1d8], eax
	mov dword [ebp-0x1d4], 0x0
	xor esi, esi
	mov ecx, [edi+0x13b0]
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2410
_Z5RunOpiP13OperatorStackP12OperandStack_1660:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2280
_Z5RunOpiP13OperatorStackP12OperandStack_800:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2290
_Z5RunOpiP13OperatorStackP12OperandStack_1240:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2300
_Z5RunOpiP13OperatorStackP12OperandStack_1890:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2310
_Z5RunOpiP13OperatorStackP12OperandStack_30:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov eax, [edi]
	mov [ebp-0x1d8], eax
	mov dword [ebp-0x1d4], 0x0
	mov dword [ebp-0x15c], 0x0
	mov ecx, [edi+0x13b0]
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2230
_Z5RunOpiP13OperatorStackP12OperandStack_2100:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [edi+0x13b0], 0x1
	mov dword [edi+0x50], 0x1
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x0
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2240
_Z5RunOpiP13OperatorStackP12OperandStack_950:
	cvttss2si ecx, [ebp-0x1c]
	mov edx, ecx
	not edx
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2510
_Z5RunOpiP13OperatorStackP12OperandStack_2250:
	test eax, eax
	jnz _Z5RunOpiP13OperatorStackP12OperandStack_3160
	neg edx
	mov [ebp-0x1d4], edx
_Z5RunOpiP13OperatorStackP12OperandStack_3250:
	mov [ebp-0x1d8], ebx
	lea eax, [ecx+ecx*4]
	lea eax, [ecx+eax*4]
	mov ecx, [ebp-0x1d8]
	mov ebx, [ebp-0x1d4]
	mov [edi+eax*4], ecx
	mov [edi+eax*4+0x4], ebx
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2850
_Z5RunOpiP13OperatorStackP12OperandStack_1610:
	mov dword [esp+0x4], _cstring_error_invalid_op1
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	mov dword [edi+0x13b0], 0x1
	mov dword [esp+0x8], 0x54
	mov [esp+0x4], edi
	lea ebx, [ebp-0x7c]
	mov [esp], ebx
	call memcpy
	mov dword [ebp-0x2c], 0x1
	mov dword [ebp-0x7c], 0x0
	mov dword [ebp-0x78], 0x0
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_20
_Z5RunOpiP13OperatorStackP12OperandStack_240:
	lea eax, [esi-0x17]
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_3170
_Z5RunOpiP13OperatorStackP12OperandStack_3030:
	mov dword [esp+0x4], _cstring_otherteamname
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z5RunOpiP13OperatorStackP12OperandStack_3180
	mov dword [ebp-0x28], 0x2
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z28CG_GetPlayerOpposingTeamNamei
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_3190
_Z5RunOpiP13OperatorStackP12OperandStack_1440:
	mov [ebp-0x20c], ebx
	movss xmm0, dword [ebp-0x20c]
	cvtss2sd xmm0, xmm0
	movsd [esp+0xc], xmm0
	mov dword [esp+0x8], _cstring_f
	mov dword [esp+0x4], 0x100
	mov eax, [ebp-0x184]
	mov [esp], eax
	call _Z11Com_sprintfPciPKcz
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_2980
_Z5RunOpiP13OperatorStackP12OperandStack_2570:
	mov [esp+0xc], esi
	mov dword [esp+0x8], _cstring_i
	mov dword [esp+0x4], 0x100
	mov edx, [ebp-0x174]
	mov [esp], edx
	call _Z11Com_sprintfPciPKcz
	mov ecx, [ebp-0x20]
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_3200
_Z5RunOpiP13OperatorStackP12OperandStack_2640:
	mov [esp+0xc], esi
	mov dword [esp+0x8], _cstring_i
	mov dword [esp+0x4], 0x100
	mov edx, [ebp-0x170]
	mov [esp], edx
	call _Z11Com_sprintfPciPKcz
	mov ecx, [ebp-0x20]
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_3210
_Z5RunOpiP13OperatorStackP12OperandStack_2590:
	mov eax, _cstring_float
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_3100
_Z5RunOpiP13OperatorStackP12OperandStack_2610:
	mov eax, _cstring_int
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_3100
_Z5RunOpiP13OperatorStackP12OperandStack_2660:
	mov eax, _cstring_float
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_3090
_Z5RunOpiP13OperatorStackP12OperandStack_2680:
	mov eax, _cstring_int
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_3090
_Z5RunOpiP13OperatorStackP12OperandStack_3180:
	mov dword [esp+0x4], _cstring_dead
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z5RunOpiP13OperatorStackP12OperandStack_3220
	mov dword [ebp-0x28], 0x0
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call _Z15CG_IsPlayerDeadi
_Z5RunOpiP13OperatorStackP12OperandStack_3310:
	movzx edx, al
	mov [ebp-0x24], edx
	mov eax, uiscript_debug
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz _Z5RunOpiP13OperatorStackP12OperandStack_70
	mov [esp+0xc], edx
_Z5RunOpiP13OperatorStackP12OperandStack_3340:
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_player_s___i
	mov dword [esp], 0xd
	call _Z10Com_PrintfiPKcz
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
_Z5RunOpiP13OperatorStackP12OperandStack_2560:
	sub eax, 0x1
	or eax, 0xfffffff0
	add eax, 0x1
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_3230
_Z5RunOpiP13OperatorStackP12OperandStack_3160:
	cmp eax, 0x1
	jnz _Z5RunOpiP13OperatorStackP12OperandStack_3240
	xor dword [ebp-0x1d4], 0x80000000
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_3250
_Z5RunOpiP13OperatorStackP12OperandStack_2630:
	sub eax, 0x1
	or eax, 0xfffffff0
	add eax, 0x1
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_3260
_Z5RunOpiP13OperatorStackP12OperandStack_3050:
	mov ecx, [eax+0xc]
	mov eax, [currentTempOperand]
	mov edx, eax
	shl edx, 0x8
	lea ebx, [edx+s_tempOperandValueAsString]
	add eax, 0x1
	and eax, 0x8000000f
	jns _Z5RunOpiP13OperatorStackP12OperandStack_3270
	sub eax, 0x1
	or eax, 0xfffffff0
	add eax, 0x1
_Z5RunOpiP13OperatorStackP12OperandStack_3270:
	mov [currentTempOperand], eax
	mov [esp+0xc], ecx
	mov dword [esp+0x8], _cstring_s
	mov dword [esp+0x4], 0x100
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
	mov [ebp-0x24], ebx
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_3280
_Z5RunOpiP13OperatorStackP12OperandStack_3040:
	mov dword [ebp-0x24], _cstring_null
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_3280
_Z5RunOpiP13OperatorStackP12OperandStack_3240:
	mov ebx, [ebp-0x1d4]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_trying_to_
	mov dword [esp], 0xd
	call _Z14Com_PrintErroriPKcz
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_20
_Z5RunOpiP13OperatorStackP12OperandStack_2580:
	mov [ebp-0x20c], esi
	movss xmm0, dword [ebp-0x20c]
	cvtss2sd xmm0, xmm0
	movsd [esp+0xc], xmm0
	mov dword [esp+0x8], _cstring_f
	mov dword [esp+0x4], 0x100
	mov eax, [ebp-0x174]
	mov [esp], eax
	call _Z11Com_sprintfPciPKcz
	mov ecx, [ebp-0x20]
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_3200
_Z5RunOpiP13OperatorStackP12OperandStack_2650:
	mov [ebp-0x20c], esi
	movss xmm0, dword [ebp-0x20c]
	cvtss2sd xmm0, xmm0
	movsd [esp+0xc], xmm0
	mov dword [esp+0x8], _cstring_f
	mov dword [esp+0x4], 0x100
	mov eax, [ebp-0x170]
	mov [esp], eax
	call _Z11Com_sprintfPciPKcz
	mov ecx, [ebp-0x20]
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_3210
_Z5RunOpiP13OperatorStackP12OperandStack_3220:
	mov dword [esp+0x4], _cstring_clipammo
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z5RunOpiP13OperatorStackP12OperandStack_3290
	mov dword [ebp-0x28], 0x0
	mov esi, [ebp+0x8]
	mov [esp], esi
	call _Z25CG_GetPlayerClipAmmoCounti
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_3190
_Z5RunOpiP13OperatorStackP12OperandStack_3290:
	mov dword [esp+0x4], _cstring_nightvision
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z5RunOpiP13OperatorStackP12OperandStack_3300
	mov dword [ebp-0x28], 0x0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z28CG_LookingThroughNightVisioni
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_3310
_Z5RunOpiP13OperatorStackP12OperandStack_3300:
	mov dword [esp+0x4], _cstring_score
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z5RunOpiP13OperatorStackP12OperandStack_3320
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z20UI_GetOurClientScorei
	test eax, eax
	jz _Z5RunOpiP13OperatorStackP12OperandStack_3330
	mov eax, [eax+0x4]
	mov [ebp-0x24], eax
_Z5RunOpiP13OperatorStackP12OperandStack_3360:
	mov dword [ebp-0x28], 0x0
	mov eax, uiscript_debug
	mov eax, [eax]
	mov eax, [eax+0xc]
	test eax, eax
	jz _Z5RunOpiP13OperatorStackP12OperandStack_70
	mov eax, [ebp-0x24]
	mov [esp+0xc], eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_3340
_Z5RunOpiP13OperatorStackP12OperandStack_3320:
	mov dword [esp+0x4], _cstring_deaths
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z5RunOpiP13OperatorStackP12OperandStack_3350
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z20UI_GetOurClientScorei
	test eax, eax
	jz _Z5RunOpiP13OperatorStackP12OperandStack_3330
	mov eax, [eax+0xc]
	mov [ebp-0x24], eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_3360
_Z5RunOpiP13OperatorStackP12OperandStack_3330:
	mov dword [ebp-0x24], 0x0
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_3360
_Z5RunOpiP13OperatorStackP12OperandStack_3350:
	mov dword [esp+0x4], _cstring_kills
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z5RunOpiP13OperatorStackP12OperandStack_3370
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call _Z20UI_GetOurClientScorei
	test eax, eax
	jz _Z5RunOpiP13OperatorStackP12OperandStack_3330
	mov eax, [eax+0x14]
	mov [ebp-0x24], eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_3360
_Z5RunOpiP13OperatorStackP12OperandStack_3370:
	mov dword [esp+0x4], _cstring_ping
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z5RunOpiP13OperatorStackP12OperandStack_3380
	mov esi, [ebp+0x8]
	mov [esp], esi
	call _Z20UI_GetOurClientScorei
	test eax, eax
	jz _Z5RunOpiP13OperatorStackP12OperandStack_3330
	mov eax, [eax+0x8]
	mov [ebp-0x24], eax
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_3360
_Z5RunOpiP13OperatorStackP12OperandStack_3380:
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_unknown_pl
	mov dword [esp], 0xd
	call _Z10Com_PrintfiPKcz
	mov dword [ebp-0x28], 0x0
	mov dword [ebp-0x24], 0x0
	jmp _Z5RunOpiP13OperatorStackP12OperandStack_70
	
	
_Z5RunOpiP13OperatorStackP12OperandStack_jumptab_0:
	dd _Z5RunOpiP13OperatorStackP12OperandStack_20
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3390
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3400
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3400
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3400
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3400
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3410
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3420
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3400
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3400
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3400
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3400
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3400
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3400
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3400
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3400
	dd _Z5RunOpiP13OperatorStackP12OperandStack_20
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3430
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3400
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3400
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3440
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3450
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3460
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3470
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3480
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3490
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3500
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3510
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3520
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3530
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3540
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3550
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3560
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3570
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3580
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3590
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3600
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3610
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3620
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3630
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3640
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3650
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3660
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3670
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3680
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3690
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3700
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3710
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3720
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3730
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3740
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3750
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3760
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3770
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3780
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3790
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3800
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3810
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3820
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3830
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3840
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3850
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3860
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3870
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3880
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3890
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3900
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3910
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3920
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3930
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3940
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3950
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3960
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3970
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3980
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3990
	dd _Z5RunOpiP13OperatorStackP12OperandStack_4000
	dd _Z5RunOpiP13OperatorStackP12OperandStack_4010
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3960
	dd _Z5RunOpiP13OperatorStackP12OperandStack_3960
	dd _Z5RunOpiP13OperatorStackP12OperandStack_4020


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

