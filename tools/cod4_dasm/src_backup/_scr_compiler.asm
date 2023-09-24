;Imports of scr_compiler:
	extern _Z12FindVariablejj
	extern _Z16Scr_EvalVariablej
	extern _Z14RemoveVariablejj
	extern _Z23GetVariableValueAddressj
	extern _Z12GetValueTypej
	extern _Z13CompileError2PKcS0_z
	extern _Z11GetVariablejj
	extern _Z19Scr_GetSourceBufferPKc
	extern scrParserPub
	extern _Z18SL_ConvertToStringj
	extern CompileError
	extern _Z19SetNewVariableValuejP13VariableValue
	extern _Z9Com_Error11errorParm_tPKcz
	extern _Z15Scr_AllocVectorPKf
	extern var_typename
	extern _Z13AddRefToValuei13VariableUnion
	extern _Z22Scr_EvalBinaryOperatoriP13VariableValueS0_
	extern scrVarPub
	extern memcpy
	extern Hunk_AllocateTempMemoryHigh
	extern _Z16RemoveRefToValuei13VariableUnion
	extern _Z12Scr_CastBoolP13VariableValue
	extern _Z12AddOpcodePosji
	extern _Z15TempMallocAligni
	extern SL_TransferRefToUser
	extern _Z21TempMallocAlignStricti
	extern _Z17RemoveRefToVectorPKf
	extern _Z20SL_RemoveRefToStringj
	extern _Z17SL_AddRefToStringj
	extern _Z10TempMalloci
	extern _Z15RemoveOpcodePosv
	extern _Z16TempMemorySetPosPc
	extern _Z28SL_TransferToCanonicalStringj
	extern _Z27Scr_CreateCanonicalFilenamePKc
	extern _Z10GetObjectAj
	extern _Z14GetNewVariablejj
	extern _Z16SetVariableValuejP13VariableValue
	extern _Z15Scr_GetFunctionPPKcPi
	extern scrAnimPub
	extern _Z17Scr_EmitAnimationPcjj
	extern _Z24Scr_GetClassnumForCharIdc
	extern atoi
	extern _Z12IsObjectFreej
	extern _Z13GetObjectTypej
	extern _Z13Scr_GetMethodPPKcPi
	extern qsort
	extern _Z17IsValidArrayIndexj
	extern _Z2vaPKcz
	extern _Z24GetInternalVariableIndexj
	extern _Z23AddThreadStartOpcodePosj
	extern _Z13Scr_UsingTreePKcj
	extern _Z21Scr_ShutdownAllocNodev
	extern Hunk_ClearTempMemoryHigh
	extern _Z22Scr_LoadScriptInternalPKcP13PrecacheEntryi
	extern _Z16FindFirstSiblingj
	extern _Z15FindNextSiblingj
	extern _Z10FindObjectj
	extern _Z15GetVariableNamej

;Exports of scr_compiler:
	global scrCompileGlob
	global _Z10LinkThreadjP13VariableValueh
	global _Z21SpecifyThreadPositionjjji
	global _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s
	global _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue
	global _Z28EvalBinaryOperatorExpression6sval_uS_S_S_P20VariableCompileValue
	global _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s
	global _Z9EmitValueP20VariableCompileValue
	global _Z10EmitOpcodejii
	global _Z14EmitGetIntegeri6sval_u
	global _Z21Scr_FindLocalVarIndexj6sval_uhP11scr_block_s
	global _Z21EmitContinueStatement6sval_uP11scr_block_s
	global _Z18EmitBreakStatement6sval_uP11scr_block_s
	global _Z12EmitFunction6sval_uS_
	global _Z8EmitCall6sval_uS_hP11scr_block_s
	global _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s
	global _Z20EmitPostFunctionCall6sval_uihP11scr_block_s
	global _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s
	global _Z22EmitVariableExpression6sval_uP11scr_block_s
	global _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s
	global _Z34EmitPrimitiveExpressionFieldObject6sval_uS_P11scr_block_s
	global _Z25EmitVariableExpressionRef6sval_uP11scr_block_s
	global _Z13EmitStatement6sval_uhjP11scr_block_s
	global _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2_
	global _Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS_
	global _Z15EmitIfStatement6sval_uS_S_hjP11scr_block_sPS_
	global _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2_
	global _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s
	global _Z26EmitDeveloperStatementList6sval_uS_P11scr_block_sPS_
	global _Z18EmitThreadInternalj6sval_uS_S_P11scr_block_s
	global _Z13ScriptCompile6sval_ujjP13PrecacheEntryi
	global _Z15CompareCaseInfoPKvS0_
	global scrCompilePub


SECTION .text


;LinkThread(unsigned int, VariableValue*, unsigned char)
_Z10LinkThreadjP13VariableValueh:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov [ebp-0x24], eax
	mov [ebp-0x28], edx
	mov ebx, ecx
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call _Z12FindVariablejj
	test eax, eax
	jnz _Z10LinkThreadjP13VariableValueh_10
_Z10LinkThreadjP13VariableValueh_90:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z10LinkThreadjP13VariableValueh_10:
	mov [esp], eax
	call _Z16Scr_EvalVariablej
	mov [ebp-0x20], eax
	test eax, eax
	jg _Z10LinkThreadjP13VariableValueh_20
_Z10LinkThreadjP13VariableValueh_60:
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x24]
	mov [esp], eax
	call _Z14RemoveVariablejj
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z10LinkThreadjP13VariableValueh_20:
	xor esi, esi
	test bl, bl
	jz _Z10LinkThreadjP13VariableValueh_30
	jmp _Z10LinkThreadjP13VariableValueh_40
_Z10LinkThreadjP13VariableValueh_70:
	test edx, edx
	jz _Z10LinkThreadjP13VariableValueh_50
_Z10LinkThreadjP13VariableValueh_80:
	mov eax, [edi]
	mov ecx, [ebp-0x28]
	mov edx, [ecx]
	mov [eax], edx
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x24]
	mov [esp], ecx
	call _Z14RemoveVariablejj
	add esi, 0x1
	cmp esi, [ebp-0x20]
	jz _Z10LinkThreadjP13VariableValueh_60
_Z10LinkThreadjP13VariableValueh_40:
	lea eax, [esi+0x2]
	mov [ebp-0x1c], eax
	mov [esp+0x4], eax
	mov ecx, [ebp-0x24]
	mov [esp], ecx
	call _Z12FindVariablejj
	mov ebx, eax
	mov [esp], eax
	call _Z23GetVariableValueAddressj
	mov edi, eax
	mov [esp], ebx
	call _Z12GetValueTypej
	mov ecx, [ebp-0x28]
	mov edx, [ecx+0x4]
	cmp edx, 0xc
	jnz _Z10LinkThreadjP13VariableValueh_70
	cmp eax, 0x7
	jnz _Z10LinkThreadjP13VariableValueh_80
_Z10LinkThreadjP13VariableValueh_130:
	mov dword [esp+0x4], _cstring_normal_script_ca
	mov eax, [edi]
	mov [esp], eax
	call _Z13CompileError2PKcS0_z
	jmp _Z10LinkThreadjP13VariableValueh_90
_Z10LinkThreadjP13VariableValueh_110:
	test edx, edx
	jz _Z10LinkThreadjP13VariableValueh_50
_Z10LinkThreadjP13VariableValueh_120:
	mov eax, [edi]
	cmp dword [eax], 0x1
	jz _Z10LinkThreadjP13VariableValueh_100
	mov ecx, [ebp-0x28]
	mov edx, [ecx]
	mov [eax], edx
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x24]
	mov [esp], ecx
	call _Z14RemoveVariablejj
	add esi, 0x1
	cmp esi, [ebp-0x20]
	jz _Z10LinkThreadjP13VariableValueh_60
_Z10LinkThreadjP13VariableValueh_30:
	lea ecx, [esi+0x2]
	mov [ebp-0x1c], ecx
	mov [esp+0x4], ecx
	mov eax, [ebp-0x24]
	mov [esp], eax
	call _Z12FindVariablejj
	mov ebx, eax
	mov [esp], eax
	call _Z23GetVariableValueAddressj
	mov edi, eax
	mov [esp], ebx
	call _Z12GetValueTypej
	mov ecx, [ebp-0x28]
	mov edx, [ecx+0x4]
	cmp edx, 0xc
	jnz _Z10LinkThreadjP13VariableValueh_110
	cmp eax, 0x7
	jnz _Z10LinkThreadjP13VariableValueh_120
	jmp _Z10LinkThreadjP13VariableValueh_130
_Z10LinkThreadjP13VariableValueh_50:
	mov dword [esp+0x4], _cstring_unknown_function
	mov eax, [edi]
	mov [esp], eax
	call _Z13CompileError2PKcS0_z
	jmp _Z10LinkThreadjP13VariableValueh_90
_Z10LinkThreadjP13VariableValueh_100:
	mov dword [esp+0x4], _cstring_unknown_function
	mov [esp], eax
	call _Z13CompileError2PKcS0_z
	jmp _Z10LinkThreadjP13VariableValueh_90


;SpecifyThreadPosition(unsigned int, unsigned int, unsigned int, int)
_Z21SpecifyThreadPositionjjji:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, edx
	mov edi, ecx
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call _Z11GetVariablejj
	mov ebx, eax
	mov [esp], eax
	call _Z16Scr_EvalVariablej
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	mov eax, [ebp-0x1c]
	test eax, eax
	jz _Z21SpecifyThreadPositionjjji_10
	mov eax, [ebp-0x20]
	test eax, eax
	jz _Z21SpecifyThreadPositionjjji_20
	mov [esp], eax
	call _Z19Scr_GetSourceBufferPKc
	mov edx, scrParserPub
	mov edx, [edx]
	lea eax, [eax+eax*2]
	mov ebx, [edx+eax*8+0x4]
	mov [esp], esi
	call _Z18SL_ConvertToStringj
	mov [esp+0xc], ebx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_function_s_alrea
	mov [esp], edi
	call CompileError
	xor ebx, ebx
	mov eax, ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21SpecifyThreadPositionjjji_10:
	mov eax, [ebp+0x8]
	mov [ebp-0x1c], eax
	mov dword [ebp-0x20], 0x0
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z19SetNewVariableValuejP13VariableValue
	mov eax, ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21SpecifyThreadPositionjjji_20:
	mov [esp], esi
	call _Z18SL_ConvertToStringj
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_function_s_alrea1
	mov [esp], edi
	call CompileError
	xor ebx, ebx
	mov eax, ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Scr_CalcLocalVarsVariableExpressionRef(sval_u, scr_block_s*)
_Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s:
_Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_140:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, edx
	mov edx, [eax]
	cmp edx, 0x4
	jz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_10
	cmp edx, 0xd
	jz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_20
_Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_30:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_10:
	mov ebx, [eax+0x4]
	mov eax, [esi]
	test eax, eax
	jnz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_30
	mov edi, [esi+0xc]
	test edi, edi
	jg _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_40
_Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_150:
	cmp edi, 0x3f
	jg _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_50
_Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_180:
	mov [esi+edi*4+0x18], ebx
	add dword [esi+0xc], 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_20:
	mov ebx, [eax+0x4]
	cmp dword [ebx], 0x11
	jnz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_30
	mov eax, [ebx+0x4]
	mov edx, [eax]
	cmp edx, 0x4
	jz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_60
	cmp edx, 0xd
	jnz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_30
	mov ebx, [eax+0x4]
	cmp dword [ebx], 0x11
	jnz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_30
	mov eax, [ebx+0x4]
	mov edx, [eax]
	cmp edx, 0x4
	jz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_70
	cmp edx, 0xd
	jnz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_30
	mov ebx, [eax+0x4]
	cmp dword [ebx], 0x11
	jnz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_30
	mov eax, [ebx+0x4]
	mov edx, [eax]
	cmp edx, 0x4
	jz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_80
	cmp edx, 0xd
	jnz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_30
	mov ebx, [eax+0x4]
	cmp dword [ebx], 0x11
	jnz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_30
	mov eax, [ebx+0x4]
	mov edx, [eax]
	cmp edx, 0x4
	jz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_90
	cmp edx, 0xd
	jnz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_30
	mov ebx, [eax+0x4]
	cmp dword [ebx], 0x11
	jnz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_30
	mov eax, [ebx+0x4]
	mov edx, [eax]
	cmp edx, 0x4
	jz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_100
	cmp edx, 0xd
	jnz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_30
	mov ebx, [eax+0x4]
	cmp dword [ebx], 0x11
	jnz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_30
	mov eax, [ebx+0x4]
	mov edx, [eax]
	cmp edx, 0x4
	jz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_110
	cmp edx, 0xd
	jnz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_30
	mov ebx, [eax+0x4]
	cmp dword [ebx], 0x11
	jnz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_30
	mov eax, [ebx+0x4]
	mov edx, [eax]
	cmp edx, 0x4
	jz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_120
	cmp edx, 0xd
	jnz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_30
	mov ebx, [eax+0x4]
	cmp dword [ebx], 0x11
	jnz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_30
	mov eax, [ebx+0x4]
	mov edx, [eax]
	cmp edx, 0x4
	jz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_130
	cmp edx, 0xd
	jnz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_30
	mov ebx, [eax+0x4]
	cmp dword [ebx], 0x11
	jnz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_30
	mov eax, [ebx+0x4]
	mov edx, esi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_140
_Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_40:
	cmp [esi+0x18], ebx
	jz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_30
	mov ecx, esi
	xor edx, edx
_Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_160:
	add edx, 0x1
	cmp edi, edx
	jz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_150
	mov eax, [ecx+0x1c]
	add ecx, 0x4
	cmp eax, ebx
	jnz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_160
	jmp _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_30
_Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_60:
	mov ebx, [eax+0x4]
	mov eax, [esi]
	test eax, eax
	jnz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_30
	mov edi, [esi+0xc]
	test edi, edi
	jle _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_150
	cmp [esi+0x18], ebx
	jz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_30
	mov ecx, esi
	xor edx, edx
_Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_170:
	add edx, 0x1
	cmp edi, edx
	jz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_150
	mov eax, [ecx+0x1c]
	add ecx, 0x4
	cmp eax, ebx
	jnz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_170
	jmp _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_30
_Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_50:
	mov dword [esp+0x4], _cstring_local_var_stack_
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov edi, [esi+0xc]
	jmp _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_180
_Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_70:
	mov ebx, [eax+0x4]
	mov eax, [esi]
	test eax, eax
	jnz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_30
	mov edi, [esi+0xc]
	test edi, edi
	jle _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_150
	cmp [esi+0x18], ebx
	jz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_30
	mov ecx, esi
	xor edx, edx
_Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_190:
	add edx, 0x1
	cmp edi, edx
	jz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_150
	mov eax, [ecx+0x1c]
	add ecx, 0x4
	cmp eax, ebx
	jnz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_190
	jmp _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_30
_Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_80:
	mov ebx, [eax+0x4]
	mov eax, [esi]
	test eax, eax
	jnz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_30
	mov edi, [esi+0xc]
	test edi, edi
	jle _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_150
	cmp [esi+0x18], ebx
	jz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_30
	mov ecx, esi
	xor edx, edx
	jmp _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_200
_Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_210:
	mov eax, [ecx+0x1c]
	add ecx, 0x4
	cmp eax, ebx
	jz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_30
_Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_200:
	add edx, 0x1
	cmp edi, edx
	jnz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_210
	jmp _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_150
_Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_130:
	mov ebx, [eax+0x4]
	mov edx, [esi]
	test edx, edx
	jnz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_30
	mov edi, [esi+0xc]
	test edi, edi
	jle _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_150
	cmp ebx, [esi+0x18]
	jz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_30
	mov ecx, esi
	xor edx, edx
_Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_220:
	add edx, 0x1
	cmp edx, edi
	jz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_150
	mov eax, [ecx+0x1c]
	add ecx, 0x4
	cmp ebx, eax
	jnz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_220
	jmp _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_30
_Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_120:
	mov ebx, [eax+0x4]
	mov ecx, [esi]
	test ecx, ecx
	jnz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_30
	mov edi, [esi+0xc]
	test edi, edi
	jle _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_150
	cmp ebx, [esi+0x18]
	jz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_30
	mov ecx, esi
	xor edx, edx
_Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_230:
	add edx, 0x1
	cmp edi, edx
	jz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_150
	mov eax, [ecx+0x1c]
	add ecx, 0x4
	cmp eax, ebx
	jnz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_230
	jmp _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_30
_Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_110:
	mov ebx, [eax+0x4]
	mov edi, [esi]
	test edi, edi
	jnz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_30
	mov edi, [esi+0xc]
	test edi, edi
	jle _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_150
	cmp [esi+0x18], ebx
	jz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_30
	mov ecx, esi
	xor edx, edx
_Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_240:
	add edx, 0x1
	cmp edi, edx
	jz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_150
	mov eax, [ecx+0x1c]
	add ecx, 0x4
	cmp eax, ebx
	jnz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_240
	jmp _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_30
_Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_100:
	mov ebx, [eax+0x4]
	mov eax, [esi]
	test eax, eax
	jnz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_30
	mov edi, [esi+0xc]
	test edi, edi
	jle _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_150
	cmp [esi+0x18], ebx
	jz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_30
	mov ecx, esi
	xor edx, edx
_Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_250:
	add edx, 0x1
	cmp edi, edx
	jz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_150
	mov eax, [ecx+0x1c]
	add ecx, 0x4
	cmp eax, ebx
	jnz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_250
	jmp _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_30
_Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_90:
	mov ebx, [eax+0x4]
	mov eax, [esi]
	test eax, eax
	jnz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_30
	mov edi, [esi+0xc]
	test edi, edi
	jle _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_150
	cmp [esi+0x18], ebx
	jz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_30
	mov ecx, esi
	xor edx, edx
_Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_260:
	add edx, 0x1
	cmp edi, edx
	jz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_150
	mov eax, [ecx+0x1c]
	add ecx, 0x4
	cmp eax, ebx
	jnz _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_260
	jmp _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s_30


;EvalPrimitiveExpression(sval_u, VariableCompileValue*)
_Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue:
_Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_140:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov ebx, edx
	mov edx, [eax]
	sub edx, 0x7
	cmp edx, 0x42
	ja _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_10
	jmp dword [edx*4+_Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_jumptab_0]
_Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_10:
	xor eax, eax
_Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_20:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_180:
	mov esi, [eax+0x8]
	mov eax, [eax+0x4]
	mov dword [ebx+0x4], 0x6
	mov [ebx], eax
	mov [ebx+0x8], esi
	mov eax, 0x1
	jmp _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_20
_Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_190:
	mov esi, [eax+0x8]
	mov eax, [eax+0x4]
	mov dword [ebx+0x4], 0x5
	mov [ebx], eax
	mov [ebx+0x8], esi
	mov eax, 0x1
	jmp _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_20
_Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_200:
	mov esi, [eax+0x8]
	mov eax, [eax+0x4]
	neg eax
	mov dword [ebx+0x4], 0x6
	mov [ebx], eax
	mov [ebx+0x8], esi
	mov eax, 0x1
	jmp _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_20
_Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_210:
	mov esi, [eax+0x8]
	mov eax, [eax+0x4]
	xor eax, 0x80000000
	mov dword [ebx+0x4], 0x5
	mov [ebx], eax
	mov [ebx+0x8], esi
	mov eax, 0x1
	jmp _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_20
_Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_220:
	mov esi, [eax+0x8]
	mov eax, [eax+0x4]
	mov dword [ebx+0x4], 0x2
	mov [ebx], eax
	mov [ebx+0x8], esi
	mov eax, 0x1
	jmp _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_20
_Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_230:
	mov esi, [eax+0x8]
	mov eax, [eax+0x4]
	mov dword [ebx+0x4], 0x3
	mov [ebx], eax
	mov [ebx+0x8], esi
	mov eax, 0x1
	jmp _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_20
_Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_240:
	mov eax, [eax+0x4]
	mov dword [ebx+0x4], 0x0
	mov [ebx+0x8], eax
	mov eax, 0x1
	jmp _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_20
_Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_250:
	mov esi, [eax+0x8]
	mov eax, [eax+0x4]
	mov eax, [eax]
	mov edx, eax
	test eax, eax
	jz _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_30
	xor ecx, ecx
_Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_40:
	add ecx, 0x1
	mov edx, [edx+0x4]
	test edx, edx
	jnz _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_40
	cmp ecx, 0x1
	jnz _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_50
	mov eax, [eax]
	mov edi, [eax]
	mov eax, [edi]
	cmp eax, 0x6
	jz _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_60
	cmp eax, 0x31
	jz _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_70
_Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_30:
	xor eax, eax
	movzx eax, al
	jmp _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_20
_Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_260:
	mov eax, [eax+0x4]
	mov dword [ebx+0x4], 0x6
	mov dword [ebx], 0x0
	mov [ebx+0x8], eax
	mov eax, 0x1
	jmp _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_20
_Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_270:
	mov eax, [eax+0x4]
	mov dword [ebx+0x4], 0x6
	mov dword [ebx], 0x1
	mov [ebx+0x8], eax
	mov eax, 0x1
	jmp _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_20
_Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_70:
	mov eax, [edi+0x10]
	mov ecx, [edi+0xc]
	mov edx, [edi+0x8]
	mov esi, [edi+0x4]
	mov [esp+0x4], ebx
	mov [esp], eax
	mov eax, esi
	call _Z28EvalBinaryOperatorExpression6sval_uS_S_S_P20VariableCompileValue
	movzx eax, al
	jmp _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_20
_Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_50:
	cmp ecx, 0x3
	jnz _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_30
	mov [ebp-0x54], eax
	test eax, eax
	jz _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_80
	lea eax, [ebp-0x48]
	mov [ebp-0x58], eax
_Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_100:
	mov edx, [ebp-0x54]
	mov eax, [edx]
	mov edi, [eax]
	mov eax, [edi]
	cmp eax, 0x6
	jz _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_90
	cmp eax, 0x31
	jnz _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_30
	mov eax, [edi+0x10]
	mov [ebp-0x5c], eax
	mov ecx, [edi+0xc]
	mov edx, [edi+0x8]
	mov edi, [edi+0x4]
	mov eax, [ebp-0x58]
	mov [esp+0x4], eax
	mov eax, [ebp-0x5c]
	mov [esp], eax
	mov eax, edi
	call _Z28EvalBinaryOperatorExpression6sval_uS_S_S_P20VariableCompileValue
_Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_150:
	test al, al
	jz _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_30
	add dword [ebp-0x58], 0xc
	mov edx, [ebp-0x54]
	mov edx, [edx+0x4]
	mov [ebp-0x54], edx
	test edx, edx
	jnz _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_100
_Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_80:
	lea edi, [ebp-0x44]
	xor ecx, ecx
	lea eax, [ebp-0x24]
	mov [ebp-0x4c], eax
_Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_130:
	lea edx, [ebp-0x48]
	add edx, ecx
	mov [ebp-0x50], edx
	mov edx, [edi]
	cmp edx, 0x5
	jz _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_110
	cmp edx, 0x6
	jnz _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_120
	cvtsi2ss xmm0, dword [edi-0x4]
	mov eax, [ebp-0x4c]
	movss [eax+0x8], xmm0
_Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_160:
	add edi, 0xc
	add ecx, 0xc
	sub dword [ebp-0x4c], 0x4
	cmp ecx, 0x24
	jnz _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_130
	mov dword [ebx+0x4], 0x4
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _Z15Scr_AllocVectorPKf
	mov [ebx], eax
_Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_170:
	mov [ebx+0x8], esi
	mov eax, 0x1
	movzx eax, al
	jmp _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_20
_Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_60:
	mov esi, [edi+0x4]
	mov edx, ebx
	mov eax, esi
	call _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_140
	movzx eax, al
	jmp _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_20
_Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_90:
	mov edi, [edi+0x4]
	mov edx, [ebp-0x58]
	mov eax, edi
	call _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_140
	jmp _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_150
_Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_110:
	mov eax, [edi-0x4]
	mov edx, [ebp-0x4c]
	mov [edx+0x8], eax
	jmp _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_160
_Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_120:
	mov eax, var_typename
	mov eax, [eax+edx*4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_type_s_is_not_a_
	mov edx, [ebp-0x50]
	mov eax, [edx+0x8]
	mov [esp], eax
	call CompileError
	jmp _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_170
	
	
_Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_jumptab_0:
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_180
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_190
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_200
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_210
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_220
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_230
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_10
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_10
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_10
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_10
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_10
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_10
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_10
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_10
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_10
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_10
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_10
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_10
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_10
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_10
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_10
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_10
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_10
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_10
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_240
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_10
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_10
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_10
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_10
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_10
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_10
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_10
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_10
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_10
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_10
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_10
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_10
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_10
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_10
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_250
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_10
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_10
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_10
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_10
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_10
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_10
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_10
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_10
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_10
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_10
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_10
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_10
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_10
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_10
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_10
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_10
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_10
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_10
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_10
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_10
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_10
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_10
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_10
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_10
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_10
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_260
	dd _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue_270


;EvalBinaryOperatorExpression(sval_u, sval_u, sval_u, sval_u, VariableCompileValue*)
_Z28EvalBinaryOperatorExpression6sval_uS_S_S_P20VariableCompileValue:
_Z28EvalBinaryOperatorExpression6sval_uS_S_S_P20VariableCompileValue_30:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov edi, edx
	mov [ebp-0x3c], ecx
	mov edx, [eax]
	cmp edx, 0x6
	jz _Z28EvalBinaryOperatorExpression6sval_uS_S_S_P20VariableCompileValue_10
	cmp edx, 0x31
	jz _Z28EvalBinaryOperatorExpression6sval_uS_S_S_P20VariableCompileValue_20
_Z28EvalBinaryOperatorExpression6sval_uS_S_S_P20VariableCompileValue_40:
	xor eax, eax
_Z28EvalBinaryOperatorExpression6sval_uS_S_S_P20VariableCompileValue_70:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z28EvalBinaryOperatorExpression6sval_uS_S_S_P20VariableCompileValue_20:
	mov ebx, [eax+0x10]
	mov ecx, [eax+0xc]
	mov edx, [eax+0x8]
	mov esi, [eax+0x4]
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov [esp], ebx
	mov eax, esi
	call _Z28EvalBinaryOperatorExpression6sval_uS_S_S_P20VariableCompileValue_30
_Z28EvalBinaryOperatorExpression6sval_uS_S_S_P20VariableCompileValue_80:
	test al, al
	jz _Z28EvalBinaryOperatorExpression6sval_uS_S_S_P20VariableCompileValue_40
	mov eax, [edi]
	cmp eax, 0x6
	jz _Z28EvalBinaryOperatorExpression6sval_uS_S_S_P20VariableCompileValue_50
	cmp eax, 0x31
	jnz _Z28EvalBinaryOperatorExpression6sval_uS_S_S_P20VariableCompileValue_40
	mov ebx, [edi+0x10]
	mov ecx, [edi+0xc]
	mov edx, [edi+0x8]
	mov esi, [edi+0x4]
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov [esp], ebx
	mov eax, esi
	call _Z28EvalBinaryOperatorExpression6sval_uS_S_S_P20VariableCompileValue_30
_Z28EvalBinaryOperatorExpression6sval_uS_S_S_P20VariableCompileValue_90:
	test al, al
	jz _Z28EvalBinaryOperatorExpression6sval_uS_S_S_P20VariableCompileValue_40
	mov eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov eax, [ebp-0x20]
	mov [esp], eax
	call _Z13AddRefToValuei13VariableUnion
	mov eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call _Z13AddRefToValuei13VariableUnion
	lea eax, [ebp-0x30]
	mov [esp+0x8], eax
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov eax, [ebp-0x3c]
	mov [esp], eax
	call _Z22Scr_EvalBinaryOperatoriP13VariableValueS0_
	mov eax, scrVarPub
	mov eax, [eax+0xc]
	test eax, eax
	jz _Z28EvalBinaryOperatorExpression6sval_uS_S_S_P20VariableCompileValue_60
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CompileError
	xor eax, eax
	jmp _Z28EvalBinaryOperatorExpression6sval_uS_S_S_P20VariableCompileValue_70
_Z28EvalBinaryOperatorExpression6sval_uS_S_S_P20VariableCompileValue_10:
	mov esi, [eax+0x4]
	lea edx, [ebp-0x24]
	mov eax, esi
	call _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue
	jmp _Z28EvalBinaryOperatorExpression6sval_uS_S_S_P20VariableCompileValue_80
_Z28EvalBinaryOperatorExpression6sval_uS_S_S_P20VariableCompileValue_50:
	mov esi, [edi+0x4]
	lea edx, [ebp-0x30]
	mov eax, esi
	call _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue
	jmp _Z28EvalBinaryOperatorExpression6sval_uS_S_S_P20VariableCompileValue_90
_Z28EvalBinaryOperatorExpression6sval_uS_S_S_P20VariableCompileValue_60:
	mov eax, [ebp-0x24]
	mov edx, [ebp-0x20]
	mov ecx, [ebp+0xc]
	mov [ecx], eax
	mov [ecx+0x4], edx
	mov eax, [ebp+0x8]
	mov [ecx+0x8], eax
	mov eax, 0x1
	jmp _Z28EvalBinaryOperatorExpression6sval_uS_S_S_P20VariableCompileValue_70
	nop


;Scr_CalcLocalVarsStatement(sval_u, scr_block_s*)
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s:
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_70:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x20c
	mov ebx, eax
	mov [ebp-0x174], edx
	cmp dword [eax], 0x40
	ja _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	mov eax, [eax]
	jmp dword [eax*4+_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_jumptab_0]
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2770:
	mov eax, [ebp-0x174]
	mov ebx, [eax]
	test ebx, ebx
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_20
	mov ecx, [scrCompileGlob+0x48]
	test ecx, ecx
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_30
	cmp dword [scrCompilePub+0x20024], 0x2
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_30
	mov eax, [scrCompileGlob+0x4c]
	cmp dword [eax], 0x3ff
	jg _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_40
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2530:
	mov edx, [eax]
	mov eax, [scrCompileGlob+0x48]
	mov ecx, [ebp-0x174]
	mov [eax+edx*4], ecx
	mov eax, [scrCompileGlob+0x4c]
	add dword [eax], 0x1
	mov esi, [ebp-0x174]
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1890:
	mov edx, [esi]
	test edx, edx
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	mov dword [esi], 0x1
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10:
	add esp, 0x20c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2640:
	mov esi, [ebx+0x4]
	mov eax, [esi]
	cmp eax, 0x4
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_50
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_560:
	cmp eax, 0xd
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	mov ebx, [esi+0x4]
	cmp dword [ebx], 0x11
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	mov eax, [ebx+0x4]
	mov edx, [ebp-0x174]
	call _Z38Scr_CalcLocalVarsVariableExpressionRef6sval_uP11scr_block_s
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2650:
	mov esi, [ebp-0x174]
	mov eax, [esi]
	test eax, eax
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	mov dword [esi], 0x3
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2660:
	mov edi, [ebx+0x8]
	mov eax, [ebx+0x10]
	test eax, eax
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_60
	mov eax, [ebx+0x10]
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2410:
	mov dword [esp+0x8], 0x118
	mov edx, [ebp-0x174]
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	mov eax, [ebx+0x10]
	mov dword [eax+0x8], 0x0
	mov edx, [ebx+0x10]
	mov eax, edi
	call _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_70
	mov ecx, [ebp-0x174]
	mov eax, [ecx]
	test eax, eax
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	mov ebx, [ebx+0x10]
	mov [ebp-0x5c], ebx
	mov eax, [ecx+0xc]
	mov esi, ebx
	mov [ebx+0x8], eax
	test eax, eax
	jle _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	add ecx, 0x18
	mov [ebp-0xa8], ecx
	mov [ebp-0xa4], ebx
	mov dword [ebp-0x164], 0x0
	add esi, 0x18
	mov [ebp-0x1f4], esi
	mov eax, ebx
	add eax, 0x1c
	mov [ebp-0x1f8], eax
	mov edx, ebx
	add edx, 0x10
	mov [ebp-0x1fc], edx
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_120:
	mov ecx, [ecx]
	mov [ebp-0x168], ecx
	mov esi, [ebp-0x5c]
	mov ebx, [esi+0xc]
	mov [ebp-0x18c], ebx
	cmp [ebp-0x164], ebx
	jl _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_80
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1230:
	cmp ebx, 0x3f
	jg _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_90
	mov eax, [ebp-0x18c]
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1720:
	add eax, 0x1
	mov esi, [ebp-0x5c]
	mov [esi+0xc], eax
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1250:
	cmp [ebp-0x164], ebx
	jge _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_100
	lea eax, [ebx*4]
	mov edx, [ebp-0x5c]
	lea ecx, [eax+edx+0x14]
	lea edx, [eax+edx+0x18]
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_110:
	sub ebx, 0x1
	mov eax, [ecx]
	mov [edx], eax
	sub ecx, 0x4
	sub edx, 0x4
	cmp [ebp-0x164], ebx
	jl _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_110
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_100:
	mov edx, [ebp-0x168]
	mov eax, [ebp-0xa4]
	mov [eax+0x18], edx
	add dword [ebp-0x164], 0x1
	add dword [ebp-0x1fc], 0x4
	add dword [ebp-0x1f8], 0x4
	add dword [ebp-0x1f4], 0x4
	add dword [ebp-0xa8], 0x4
	add eax, 0x4
	mov [ebp-0xa4], eax
	mov esi, [ebp-0x164]
	mov ecx, [ebp-0x174]
	cmp esi, [ecx+0xc]
	jge _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	mov ecx, [ebp-0xa8]
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_120
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2670:
	lea esi, [ebx+0x1c]
	mov eax, [ebx+0xc]
	mov [ebp-0x170], eax
	mov edi, [ebx+0x8]
	mov eax, [ebx+0x18]
	test eax, eax
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_130
	mov eax, [ebx+0x18]
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2450:
	mov dword [esp+0x8], 0x118
	mov edx, [ebp-0x174]
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	mov eax, [ebx+0x18]
	mov dword [eax+0x8], 0x0
	mov edx, [ebx+0x18]
	mov eax, edi
	call _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_70
	mov eax, [ebx+0x18]
	mov ebx, [eax]
	cmp ebx, 0x3
	jle _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_140
	mov dword [ebp-0x15c], 0x0
	mov ebx, 0x3
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1880:
	mov ecx, [esi]
	test ecx, ecx
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_150
	mov eax, [esi]
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2440:
	mov dword [esp+0x8], 0x118
	mov ecx, [ebp-0x174]
	mov [esp+0x4], ecx
	mov [esp], eax
	call memcpy
	mov eax, [esi]
	mov dword [eax+0x8], 0x0
	mov edx, [esi]
	mov eax, [ebp-0x170]
	call _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_70
	mov eax, [esi]
	mov ecx, [eax]
	cmp ebx, ecx
	jge _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_160
	mov ecx, ebx
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1860:
	mov eax, [ebp-0x174]
	mov edx, [eax]
	test edx, edx
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_170
	mov [eax], ecx
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_170:
	mov eax, [ebp-0x15c]
	test eax, eax
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	mov edx, [ebp-0x174]
	mov eax, [edx]
	test eax, eax
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_180
	mov eax, [ebp-0x15c]
	test eax, eax
	jle _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_190
	xor edx, edx
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_200:
	mov eax, [ebp+edx*4-0x2c]
	mov dword [eax], 0x0
	add edx, 0x1
	cmp [ebp-0x15c], edx
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_200
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_190:
	mov ecx, [ebp-0x2c]
	mov [ebp-0x17c], ecx
	mov edi, [ecx+0xc]
	test edi, edi
	jle _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_210
	mov dword [ebp-0x160], 0x0
	mov esi, [ebp-0x160]
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1700:
	mov eax, [ebp-0x17c]
	mov ebx, [eax+esi*4+0x18]
	mov edx, [ebp-0x174]
	mov esi, [edx+0xc]
	test esi, esi
	jg _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_220
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1680:
	cmp dword [ebp-0x15c], 0x1
	jle _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_230
	mov dword [ebp-0x3c], 0x1
	mov edx, [ebp-0x3c]
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_270:
	mov eax, [ebp+edx*4-0x2c]
	mov edi, [eax+0xc]
	test edi, edi
	jle _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_240
	cmp ebx, [eax+0x18]
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_250
	mov ecx, eax
	xor edx, edx
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_260:
	add edx, 0x1
	cmp edi, edx
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_240
	mov eax, [ecx+0x1c]
	add ecx, 0x4
	cmp ebx, eax
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_260
	test edx, edx
	js _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_240
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_250:
	add dword [ebp-0x3c], 0x1
	mov ecx, [ebp-0x3c]
	cmp [ebp-0x15c], ecx
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_230
	mov edx, ecx
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_270
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2680:
	lea edx, [ebx+0x14]
	mov [ebp-0x14c], edx
	mov edi, [ebx+0x8]
	mov esi, [ebx+0x4]
	mov eax, [esi]
	cmp eax, 0x6
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_280
	cmp eax, 0x31
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_290
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2140:
	mov byte [ebp-0x145], 0x0
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2160:
	mov ecx, [scrCompileGlob+0x3c]
	mov [ebp-0x144], ecx
	mov esi, [scrCompileGlob+0x40]
	mov [ebp-0x140], esi
	mov eax, [scrCompileGlob+0x48]
	mov [ebp-0x13c], eax
	mov edx, [scrCompileGlob+0x4c]
	mov [ebp-0x138], edx
	mov dword [ebp-0x1c], 0x0
	mov dword [ebp-0x20], 0x0
	mov dword [esp], 0x1000
	call Hunk_AllocateTempMemoryHigh
	mov esi, eax
	mov [scrCompileGlob+0x48], eax
	lea eax, [ebp-0x20]
	mov [scrCompileGlob+0x4c], eax
	cmp byte [ebp-0x145], 0x0
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_300
	mov dword [ebp-0x130], 0x0
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2090:
	mov ecx, [ebp-0x130]
	mov [scrCompileGlob+0x3c], ecx
	mov eax, [ebp-0x14c]
	mov edx, [eax]
	test edx, edx
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_310
	mov ecx, eax
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2420:
	mov eax, [ecx]
	mov dword [esp+0x8], 0x118
	mov edx, [ebp-0x174]
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	mov ecx, [ebp-0x14c]
	mov eax, [ecx]
	mov dword [eax+0x8], 0x0
	mov edx, [ecx]
	mov eax, edi
	call _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_70
	mov eax, [ebp-0x14c]
	mov ebx, [eax]
	mov eax, [ebx]
	test eax, eax
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_320
	mov eax, [scrCompileGlob+0x48]
	test eax, eax
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_320
	cmp dword [scrCompilePub+0x20024], 0x2
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_320
	mov eax, [scrCompileGlob+0x4c]
	cmp dword [eax], 0x3ff
	jg _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_330
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2510:
	mov edx, [eax]
	mov eax, [scrCompileGlob+0x48]
	mov [eax+edx*4], ebx
	mov eax, [scrCompileGlob+0x4c]
	add dword [eax], 0x1
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_320:
	mov edi, [ebp-0x20]
	test edi, edi
	jle _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_340
	mov dword [ebp-0x90], 0x1
	add esi, 0x4
	mov [ebp-0x1e4], esi
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1050:
	mov edx, [ebp-0x174]
	mov esi, [edx]
	test esi, esi
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_350
	mov ecx, [ebp-0x1e4]
	sub ecx, 0x4
	mov [ebp-0x8c], ecx
	mov esi, [ebp-0x1e4]
	mov eax, [esi-0x4]
	mov dword [eax], 0x0
	mov eax, [esi-0x4]
	mov ebx, [eax+0xc]
	test ebx, ebx
	jle _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_350
	xor edi, edi
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_360
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_370:
	mov edx, eax
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_410:
	mov [edx+ebx*4+0x18], esi
	add dword [edx+0xc], 0x1
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_380:
	add edi, 0x1
	mov esi, [ebp-0x8c]
	mov eax, [esi]
	cmp edi, [eax+0xc]
	jge _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_350
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_360:
	mov esi, [eax+edi*4+0x18]
	mov eax, [ebp-0x174]
	mov ebx, [eax+0xc]
	test ebx, ebx
	jle _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_370
	cmp esi, [eax+0x18]
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_380
	mov edx, eax
	xor ecx, ecx
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_400:
	add ecx, 0x1
	cmp ebx, ecx
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_390
	mov eax, [edx+0x1c]
	add edx, 0x4
	cmp esi, eax
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_400
	test ecx, ecx
	jns _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_380
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_390:
	mov edx, [ebp-0x174]
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_410
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2690:
	lea eax, [ebx+0x20]
	mov [ebp-0x11c], eax
	lea edx, [ebx+0x1c]
	mov [ebp-0x118], edx
	mov ecx, [ebx+0x10]
	mov [ebp-0x16c], ecx
	mov esi, [ebx+0xc]
	mov [ebp-0x170], esi
	mov edi, [ebx+0x8]
	mov esi, [ebx+0x4]
	mov edx, [ebp-0x174]
	mov eax, esi
	call _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_70
	cmp dword [edi], 0x41
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_420
	mov byte [ebp-0x111], 0x1
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2130:
	mov eax, [scrCompileGlob+0x3c]
	mov [ebp-0x110], eax
	mov edx, [scrCompileGlob+0x40]
	mov [ebp-0x10c], edx
	mov ecx, [scrCompileGlob+0x48]
	mov [ebp-0x108], ecx
	mov esi, [scrCompileGlob+0x4c]
	mov [ebp-0x104], esi
	mov dword [ebp-0x1c], 0x0
	mov dword [ebp-0x20], 0x0
	mov dword [esp], 0x1000
	call Hunk_AllocateTempMemoryHigh
	mov esi, eax
	mov [scrCompileGlob+0x48], eax
	lea eax, [ebp-0x20]
	mov [scrCompileGlob+0x4c], eax
	cmp byte [ebp-0x111], 0x0
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_430
	mov dword [ebp-0xf0], 0x0
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2100:
	mov eax, [ebp-0xf0]
	mov [scrCompileGlob+0x3c], eax
	mov edx, [ebp-0x118]
	mov eax, [edx]
	test eax, eax
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_440
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2470:
	mov eax, [edx]
	mov dword [esp+0x8], 0x118
	mov ecx, [ebp-0x174]
	mov [esp+0x4], ecx
	mov [esp], eax
	call memcpy
	mov edx, [ebp-0x118]
	mov eax, [edx]
	mov dword [eax+0x8], 0x0
	mov ecx, [ebp-0x11c]
	mov eax, [ecx]
	test eax, eax
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_450
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2460:
	mov eax, [ecx]
	mov dword [esp+0x8], 0x118
	mov edx, [ebp-0x174]
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	mov ecx, [ebp-0x11c]
	mov eax, [ecx]
	mov dword [eax+0x8], 0x0
	mov eax, [ebp-0x118]
	mov edx, [eax]
	mov eax, [ebp-0x16c]
	call _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_70
	mov edx, [ebp-0x118]
	mov ebx, [edx]
	mov eax, [ebx]
	test eax, eax
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_460
	mov eax, [scrCompileGlob+0x48]
	test eax, eax
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_460
	cmp dword [scrCompilePub+0x20024], 0x2
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_460
	mov eax, [scrCompileGlob+0x4c]
	cmp dword [eax], 0x3ff
	jg _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_470
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2520:
	mov edx, [eax]
	mov eax, [scrCompileGlob+0x48]
	mov [eax+edx*4], ebx
	mov eax, [scrCompileGlob+0x4c]
	add dword [eax], 0x1
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_460:
	mov edi, [ebp-0x20]
	test edi, edi
	jle _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_480
	mov dword [ebp-0x78], 0x1
	add esi, 0x4
	mov [ebp-0x1d4], esi
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_960:
	mov ecx, [ebp-0x174]
	mov ebx, [ecx]
	test ebx, ebx
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_490
	mov esi, [ebp-0x1d4]
	sub esi, 0x4
	mov [ebp-0x74], esi
	mov edx, [ebp-0x1d4]
	mov eax, [edx-0x4]
	mov dword [eax], 0x0
	mov eax, [edx-0x4]
	mov ecx, [eax+0xc]
	test ecx, ecx
	jle _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_490
	xor edi, edi
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_500
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_510:
	mov eax, ecx
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_550:
	mov [eax+ebx*4+0x18], esi
	add dword [eax+0xc], 0x1
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_520:
	add edi, 0x1
	mov ecx, [ebp-0x74]
	mov eax, [ecx]
	cmp edi, [eax+0xc]
	jge _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_490
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_500:
	mov esi, [eax+edi*4+0x18]
	mov ecx, [ebp-0x174]
	mov ebx, [ecx+0xc]
	test ebx, ebx
	jle _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_510
	mov edx, ecx
	cmp esi, [ecx+0x18]
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_520
	xor ecx, ecx
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_540:
	add ecx, 0x1
	cmp ebx, ecx
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_530
	mov eax, [edx+0x1c]
	add edx, 0x4
	cmp esi, eax
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_540
	test ecx, ecx
	jns _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_520
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_530:
	mov eax, [ebp-0x174]
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_550
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2700:
	mov esi, [ebx+0x4]
	mov eax, [esi]
	cmp eax, 0x4
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_560
	mov ebx, [esi+0x4]
	mov eax, [ebp-0x174]
	mov edx, [eax]
	test edx, edx
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	mov edi, [eax+0xc]
	test edi, edi
	jg _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_570
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2170:
	cmp edi, 0x3f
	jg _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_580
	mov ecx, [ebp-0x174]
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2540:
	mov [ecx+edi*4+0x18], ebx
	add dword [ecx+0xc], 0x1
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2710:
	mov esi, [ebx+0x4]
	mov eax, [esi]
	cmp eax, 0x4
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_560
	mov ebx, [esi+0x4]
	mov esi, [ebp-0x174]
	mov eax, [esi]
	test eax, eax
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	mov edi, [esi+0xc]
	test edi, edi
	jg _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_590
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2390:
	cmp edi, 0x3f
	jg _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_600
	mov edx, [ebp-0x174]
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2560:
	mov [edx+edi*4+0x18], ebx
	add dword [edx+0xc], 0x1
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2720:
	mov esi, [ebx+0x4]
	mov eax, [esi]
	mov ebx, [eax+0x4]
	test ebx, ebx
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_610:
	mov eax, [ebx]
	mov edx, [ebp-0x174]
	call _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_70
	mov ebx, [ebx+0x4]
	test ebx, ebx
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_610
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2730:
	lea ecx, [ebx+0xc]
	mov [ebp-0xdc], ecx
	mov esi, [ebx+0x4]
	mov edi, [ebx+0xc]
	test edi, edi
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_620
	mov eax, [ebx+0xc]
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2430:
	mov dword [esp+0x8], 0x118
	mov edx, [ebp-0x174]
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	mov eax, [ebx+0xc]
	mov dword [eax+0x8], 0x0
	mov edi, [ebx+0xc]
	mov eax, [esi]
	mov ebx, [eax+0x4]
	test ebx, ebx
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_630
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_640:
	mov eax, [ebx]
	mov edx, edi
	call _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_70
	mov ebx, [ebx+0x4]
	test ebx, ebx
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_640
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_630:
	mov ecx, [ebp-0x174]
	mov ebx, [ecx]
	test ebx, ebx
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	mov esi, [ebp-0xdc]
	mov esi, [esi]
	mov [ebp-0x54], esi
	mov eax, [ecx+0xc]
	mov [esi+0x8], eax
	test eax, eax
	jle _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	add ecx, 0x18
	mov [ebp-0x70], ecx
	mov [ebp-0x6c], esi
	mov dword [ebp-0xd4], 0x0
	add esi, 0x18
	mov [ebp-0x1b0], esi
	mov eax, [ebp-0x6c]
	add eax, 0x1c
	mov [ebp-0x1b4], eax
	mov edx, [ebp-0x6c]
	add edx, 0x10
	mov [ebp-0x1b8], edx
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_690:
	mov ecx, [ecx]
	mov [ebp-0xd8], ecx
	mov esi, [ebp-0x54]
	mov ebx, [esi+0xc]
	mov [ebp-0x184], ebx
	cmp [ebp-0xd4], ebx
	jl _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_650
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1190:
	cmp ebx, 0x3f
	jg _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_660
	mov eax, [ebp-0x184]
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1710:
	add eax, 0x1
	mov esi, [ebp-0x54]
	mov [esi+0xc], eax
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1210:
	cmp [ebp-0xd4], ebx
	jge _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_670
	lea eax, [ebx*4]
	mov edx, [ebp-0x54]
	lea ecx, [eax+edx+0x14]
	lea edx, [eax+edx+0x18]
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_680:
	sub ebx, 0x1
	mov eax, [ecx]
	mov [edx], eax
	sub ecx, 0x4
	sub edx, 0x4
	cmp [ebp-0xd4], ebx
	jl _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_680
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_670:
	mov edx, [ebp-0xd8]
	mov eax, [ebp-0x6c]
	mov [eax+0x18], edx
	add dword [ebp-0xd4], 0x1
	add dword [ebp-0x1b8], 0x4
	add dword [ebp-0x1b4], 0x4
	add dword [ebp-0x1b0], 0x4
	add dword [ebp-0x70], 0x4
	add eax, 0x4
	mov [ebp-0x6c], eax
	mov esi, [ebp-0xd4]
	mov ecx, [ebp-0x174]
	cmp esi, [ecx+0xc]
	jge _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	mov ecx, [ebp-0x70]
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_690
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2740:
	mov edi, [ebx+0x8]
	mov eax, [edi]
	mov ebx, [eax+0x4]
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_700:
	mov ebx, [ebx+0x4]
	test ebx, ebx
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_730:
	mov eax, [ebx]
	mov esi, [eax]
	mov eax, [ebp-0x174]
	mov edx, [eax]
	test edx, edx
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_700
	mov edi, [eax+0xc]
	test edi, edi
	jg _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_710
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1160:
	cmp edi, 0x3f
	jg _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_720
	mov ecx, [ebp-0x174]
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1660:
	mov [ecx+edi*4+0x18], esi
	add dword [ecx+0xc], 0x1
	mov ebx, [ebx+0x4]
	test ebx, ebx
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_730
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2750:
	mov edi, [ebx+0x8]
	mov esi, [scrCompileGlob+0x3c]
	mov [ebp-0xd0], esi
	mov eax, [scrCompileGlob+0x40]
	mov [ebp-0xcc], eax
	mov dword [ebp-0x1c], 0x0
	mov dword [esp], 0x1000
	call Hunk_AllocateTempMemoryHigh
	mov [ebp-0xc0], eax
	mov [scrCompileGlob+0x3c], eax
	lea eax, [ebp-0x1c]
	mov [scrCompileGlob+0x40], eax
	mov dword [esp], 0x1000
	call Hunk_AllocateTempMemoryHigh
	mov [ebp-0xb4], eax
	mov eax, [edi]
	mov ebx, [eax+0x4]
	test ebx, ebx
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_740
	mov edi, 0x3
	mov dword [ebp-0xb8], 0x0
	mov byte [ebp-0xc5], 0x0
	xor esi, esi
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_780:
	mov ecx, [ebx]
	mov eax, [ecx]
	sub eax, 0x3d
	cmp eax, 0x1
	jbe _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_750
	test esi, esi
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_760
	mov edx, esi
	mov eax, ecx
	call _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_70
	mov eax, [esi]
	test eax, eax
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_760
	cmp eax, 0x2
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_770
	cmp eax, edi
	cmovle edi, eax
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1740:
	xor esi, esi
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_760:
	mov ebx, [ebx+0x4]
	test ebx, ebx
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_780
	cmp byte [ebp-0xc5], 0x0
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_740
	test esi, esi
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_790
	mov eax, [esi]
	test eax, eax
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_800
	mov ebx, [scrCompileGlob+0x3c]
	test ebx, ebx
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_800
	cmp dword [scrCompilePub+0x20024], 0x2
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_800
	mov eax, [scrCompileGlob+0x40]
	cmp dword [eax], 0x3ff
	jg _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_810
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2570:
	mov edx, [eax]
	mov eax, [scrCompileGlob+0x3c]
	mov [eax+edx*4], esi
	mov eax, [scrCompileGlob+0x40]
	add dword [eax], 0x1
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_800:
	cmp dword [ebp-0xb8], 0x3ff
	jg _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_820
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2370:
	mov edx, [ebp-0xb8]
	mov ecx, [ebp-0xb4]
	mov [ecx+edx*4], esi
	add edx, 0x1
	mov [ebp-0xb8], edx
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_790:
	mov esi, [ebp-0x174]
	mov ecx, [esi]
	test ecx, ecx
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_830
	mov [esi], edi
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_830:
	mov eax, [ebp-0x1c]
	mov [ebp-0xc4], eax
	test eax, eax
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_840
	mov edx, [ebp-0x174]
	mov edx, [edx]
	test edx, edx
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_840
	test eax, eax
	jle _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_850
	xor edx, edx
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_860:
	mov ecx, [ebp-0xc0]
	mov eax, [ecx+edx*4]
	mov dword [eax], 0x0
	add edx, 0x1
	cmp [ebp-0xc4], edx
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_860
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_850:
	mov esi, [ebp-0xc0]
	mov esi, [esi]
	mov [ebp-0x194], esi
	mov eax, [esi+0xc]
	test eax, eax
	jle _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_840
	mov dword [ebp-0xbc], 0x0
	mov eax, [ebp-0xbc]
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1990:
	mov edx, [ebp-0x194]
	mov ebx, [edx+eax*4+0x18]
	mov ecx, [ebp-0x174]
	mov esi, [ecx+0xc]
	test esi, esi
	jg _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_870
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1970:
	cmp dword [ebp-0xc4], 0x1
	jle _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_880
	mov dword [ebp-0x48], 0x1
	mov edx, [ebp-0x48]
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_920:
	mov ecx, [ebp-0xc0]
	mov eax, [ecx+edx*4]
	mov edi, [eax+0xc]
	test edi, edi
	jle _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_890
	cmp ebx, [eax+0x18]
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_900
	mov ecx, eax
	xor edx, edx
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_910:
	add edx, 0x1
	cmp edi, edx
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_890
	mov eax, [ecx+0x1c]
	add ecx, 0x4
	cmp ebx, eax
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_910
	test edx, edx
	js _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_890
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_900:
	add dword [ebp-0x48], 0x1
	mov eax, [ebp-0x48]
	cmp [ebp-0xc4], eax
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_880
	mov edx, eax
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_920
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2760:
	mov esi, [ebp-0x174]
	mov eax, [esi]
	test eax, eax
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_930
	mov eax, [scrCompileGlob+0x3c]
	test eax, eax
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_940
	cmp dword [scrCompilePub+0x20024], 0x2
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_940
	mov eax, [scrCompileGlob+0x40]
	cmp dword [eax], 0x3ff
	jg _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_950
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2500:
	mov edx, [eax]
	mov eax, [scrCompileGlob+0x3c]
	mov ecx, [ebp-0x174]
	mov [eax+edx*4], ecx
	mov eax, [scrCompileGlob+0x40]
	add dword [eax], 0x1
	mov esi, [ebp-0x174]
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_930:
	mov edi, [esi]
	test edi, edi
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	mov dword [esi], 0x2
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_490:
	mov eax, [ebp-0x78]
	add dword [ebp-0x78], 0x1
	add dword [ebp-0x1d4], 0x4
	cmp eax, [ebp-0x20]
	jl _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_960
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_480:
	mov esi, [ebp-0x11c]
	mov edx, [esi]
	mov eax, [ebp-0x170]
	call _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_70
	mov eax, [ebp-0x174]
	mov edx, [eax]
	test edx, edx
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_970
	mov eax, [esi]
	mov dword [eax], 0x0
	mov edi, [esi]
	mov eax, [edi+0xc]
	test eax, eax
	jle _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_980
	mov dword [ebp-0x100], 0x0
	mov edx, [ebp-0x100]
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_990
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1000:
	mov eax, ecx
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1040:
	mov [eax+ebx*4+0x18], esi
	add dword [eax+0xc], 0x1
	mov edx, [ebp-0x11c]
	mov edi, [edx]
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1010:
	add dword [ebp-0x100], 0x1
	mov esi, [ebp-0x100]
	cmp esi, [edi+0xc]
	jge _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_980
	mov edx, esi
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_990:
	mov esi, [edi+edx*4+0x18]
	mov ecx, [ebp-0x174]
	mov ebx, [ecx+0xc]
	test ebx, ebx
	jle _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1000
	cmp esi, [ecx+0x18]
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1010
	mov edx, ecx
	xor ecx, ecx
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1030:
	add ecx, 0x1
	cmp ebx, ecx
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1020
	mov eax, [edx+0x1c]
	add edx, 0x4
	cmp esi, eax
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1030
	test ecx, ecx
	jns _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1010
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1020:
	mov eax, [ebp-0x174]
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1040
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_350:
	mov eax, [ebp-0x90]
	add dword [ebp-0x90], 0x1
	add dword [ebp-0x1e4], 0x4
	cmp [ebp-0x20], eax
	jg _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1050
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_340:
	cmp byte [ebp-0x145], 0x0
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1060
	mov eax, [ebp-0x1c]
	mov [ebp-0x134], eax
	test eax, eax
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1060
	mov edx, [ebp-0x174]
	mov ecx, [edx]
	test ecx, ecx
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1070
	test eax, eax
	jle _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1080
	xor edx, edx
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1090:
	mov ecx, [ebp-0x130]
	mov eax, [ecx+edx*4]
	mov dword [eax], 0x0
	add edx, 0x1
	cmp [ebp-0x134], edx
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1090
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1080:
	mov esi, [ebp-0x130]
	mov esi, [esi]
	mov [ebp-0x1a0], esi
	mov edx, [esi+0xc]
	test edx, edx
	jle _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1060
	mov dword [ebp-0x12c], 0x0
	mov eax, [ebp-0x12c]
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2050:
	mov edx, [ebp-0x1a0]
	mov ebx, [edx+eax*4+0x18]
	mov ecx, [ebp-0x174]
	mov esi, [ecx+0xc]
	test esi, esi
	jg _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1100
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2030:
	cmp dword [ebp-0x134], 0x1
	jle _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1110
	mov dword [ebp-0x40], 0x1
	mov edx, [ebp-0x40]
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1150:
	mov ecx, [ebp-0x130]
	mov eax, [ecx+edx*4]
	mov edi, [eax+0xc]
	test edi, edi
	jle _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1120
	cmp ebx, [eax+0x18]
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1130
	mov ecx, eax
	xor edx, edx
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1140:
	add edx, 0x1
	cmp edi, edx
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1120
	mov eax, [ecx+0x1c]
	add ecx, 0x4
	cmp ebx, eax
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1140
	test edx, edx
	js _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1120
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1130:
	add dword [ebp-0x40], 0x1
	mov eax, [ebp-0x40]
	cmp [ebp-0x134], eax
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1110
	mov edx, eax
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1150
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_710:
	mov eax, [ebp-0x174]
	cmp esi, [eax+0x18]
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_700
	mov ecx, eax
	xor edx, edx
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1170:
	add edx, 0x1
	cmp edx, edi
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1160
	mov eax, [ecx+0x1c]
	add ecx, 0x4
	cmp esi, eax
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1170
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_700
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_650:
	mov eax, [ebp-0x6c]
	cmp [eax+0x18], ecx
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1180
	mov edx, [ebp-0x1b8]
	add edx, 0x8
	mov ecx, [ebp-0xd4]
	mov edi, ebx
	mov esi, [ebp-0x1b4]
	sub esi, [ebp-0x1b0]
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1200:
	add ecx, 0x1
	cmp edi, ecx
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1190
	mov eax, [esi+edx]
	add edx, 0x4
	cmp eax, [ebp-0xd8]
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1200
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1930:
	test ecx, ecx
	js _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1190
	mov ebx, ecx
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1210
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_80:
	mov eax, [ebp-0xa4]
	cmp ecx, [eax+0x18]
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1220
	mov edx, [ebp-0x1fc]
	add edx, 0x8
	mov ecx, [ebp-0x164]
	mov edi, ebx
	mov esi, [ebp-0x1f8]
	sub esi, [ebp-0x1f4]
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1240:
	add ecx, 0x1
	cmp edi, ecx
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1230
	mov eax, [esi+edx]
	add edx, 0x4
	cmp [ebp-0x168], eax
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1240
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1940:
	test ecx, ecx
	js _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1230
	mov ebx, ecx
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1250
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1060:
	mov edx, [ebp-0x174]
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1070:
	mov eax, [edx]
	test eax, eax
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1260
	mov ecx, [ebp-0x14c]
	mov ecx, [ecx]
	mov [ebp-0x120], ecx
	mov eax, [edx+0xc]
	mov [ecx+0x8], eax
	test eax, eax
	jle _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1260
	add edx, 0x18
	mov [ebp-0x98], edx
	mov [ebp-0x94], ecx
	mov dword [ebp-0x124], 0x0
	add ecx, 0x18
	mov [ebp-0x1d8], ecx
	mov esi, [ebp-0x94]
	add esi, 0x1c
	mov [ebp-0x1dc], esi
	mov eax, [ebp-0x94]
	add eax, 0x10
	mov [ebp-0x1e0], eax
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1310:
	mov edx, [edx]
	mov [ebp-0x128], edx
	mov ecx, [ebp-0x120]
	mov ebx, [ecx+0xc]
	mov [ebp-0x178], ebx
	cmp [ebp-0x124], ebx
	jl _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1270
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1330:
	cmp ebx, 0x3f
	jg _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1280
	mov eax, [ebp-0x178]
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1910:
	add eax, 0x1
	mov ecx, [ebp-0x120]
	mov [ecx+0xc], eax
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1350:
	cmp [ebp-0x124], ebx
	jge _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1290
	lea eax, [ebx*4]
	mov esi, [ebp-0x120]
	lea ecx, [eax+esi+0x14]
	lea edx, [eax+esi+0x18]
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1300:
	sub ebx, 0x1
	mov eax, [ecx]
	mov [edx], eax
	sub ecx, 0x4
	sub edx, 0x4
	cmp [ebp-0x124], ebx
	jl _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1300
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1290:
	mov edx, [ebp-0x128]
	mov eax, [ebp-0x94]
	mov [eax+0x18], edx
	add dword [ebp-0x124], 0x1
	add dword [ebp-0x1e0], 0x4
	add dword [ebp-0x1dc], 0x4
	add dword [ebp-0x1d8], 0x4
	add dword [ebp-0x98], 0x4
	add eax, 0x4
	mov [ebp-0x94], eax
	mov esi, [ebp-0x124]
	mov ecx, [ebp-0x174]
	cmp esi, [ecx+0xc]
	jge _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1260
	mov edx, [ebp-0x98]
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1310
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1270:
	mov esi, [ebp-0x94]
	cmp edx, [esi+0x18]
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1320
	mov edx, [ebp-0x1e0]
	add edx, 0x8
	mov ecx, [ebp-0x124]
	mov edi, ebx
	mov esi, [ebp-0x1dc]
	sub esi, [ebp-0x1d8]
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1340:
	add ecx, 0x1
	cmp edi, ecx
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1330
	mov eax, [esi+edx]
	add edx, 0x4
	cmp [ebp-0x128], eax
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1340
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2060:
	test ecx, ecx
	js _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1330
	mov ebx, ecx
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1350
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1260:
	mov eax, [ebp-0x144]
	mov [scrCompileGlob+0x3c], eax
	mov edx, [ebp-0x140]
	mov [scrCompileGlob+0x40], edx
	mov ecx, [ebp-0x13c]
	mov [scrCompileGlob+0x48], ecx
	mov esi, [ebp-0x138]
	mov [scrCompileGlob+0x4c], esi
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_740:
	mov edx, [ebp-0xd0]
	mov [scrCompileGlob+0x3c], edx
	mov ecx, [ebp-0xcc]
	mov [scrCompileGlob+0x40], ecx
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_980:
	mov eax, [ebp-0x174]
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_970:
	mov edi, [eax]
	test edi, edi
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1360
	mov edx, [ebp-0x11c]
	mov edx, [edx]
	mov [ebp-0x58], edx
	mov ecx, eax
	mov eax, [eax+0xc]
	mov [edx+0x8], eax
	test eax, eax
	jle _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1360
	add ecx, 0x18
	mov [ebp-0x80], ecx
	mov [ebp-0x7c], edx
	mov dword [ebp-0xf8], 0x0
	add edx, 0x18
	mov [ebp-0x1c8], edx
	mov esi, [ebp-0x7c]
	add esi, 0x1c
	mov [ebp-0x1cc], esi
	mov eax, [ebp-0x7c]
	add eax, 0x10
	mov [ebp-0x1d0], eax
	mov edx, ecx
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1410:
	mov edx, [edx]
	mov [ebp-0xfc], edx
	mov ecx, [ebp-0x58]
	mov ebx, [ecx+0xc]
	mov [ebp-0x188], ebx
	cmp [ebp-0xf8], ebx
	jl _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1370
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1430:
	cmp ebx, 0x3f
	jg _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1380
	mov eax, [ebp-0x188]
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1900:
	add eax, 0x1
	mov ecx, [ebp-0x58]
	mov [ecx+0xc], eax
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1450:
	cmp [ebp-0xf8], ebx
	jge _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1390
	lea eax, [ebx*4]
	mov esi, [ebp-0x58]
	lea ecx, [eax+esi+0x14]
	lea edx, [eax+esi+0x18]
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1400:
	sub ebx, 0x1
	mov eax, [ecx]
	mov [edx], eax
	sub ecx, 0x4
	sub edx, 0x4
	cmp [ebp-0xf8], ebx
	jl _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1400
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1390:
	mov edx, [ebp-0xfc]
	mov eax, [ebp-0x7c]
	mov [eax+0x18], edx
	add dword [ebp-0xf8], 0x1
	add dword [ebp-0x1d0], 0x4
	add dword [ebp-0x1cc], 0x4
	add dword [ebp-0x1c8], 0x4
	add dword [ebp-0x80], 0x4
	add eax, 0x4
	mov [ebp-0x7c], eax
	mov esi, [ebp-0xf8]
	mov ecx, [ebp-0x174]
	cmp [ecx+0xc], esi
	jle _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1360
	mov edx, [ebp-0x80]
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1410
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1370:
	mov esi, [ebp-0x7c]
	cmp [esi+0x18], edx
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1420
	mov edx, [ebp-0x1d0]
	add edx, 0x8
	mov ecx, [ebp-0xf8]
	mov edi, ebx
	mov esi, [ebp-0x1cc]
	sub esi, [ebp-0x1c8]
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1440:
	add ecx, 0x1
	cmp ecx, edi
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1430
	mov eax, [esi+edx]
	add edx, 0x4
	cmp eax, [ebp-0xfc]
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1440
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2080:
	test ecx, ecx
	js _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1430
	mov ebx, ecx
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1450
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1360:
	cmp byte [ebp-0x111], 0x0
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1460
	mov eax, [ebp-0x1c]
	mov [ebp-0xf4], eax
	test eax, eax
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1460
	mov edx, [ebp-0x174]
	mov esi, [edx]
	test esi, esi
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1470
	test eax, eax
	jle _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1480
	xor edx, edx
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1490:
	mov ecx, [ebp-0xf0]
	mov eax, [ecx+edx*4]
	mov dword [eax], 0x0
	add edx, 0x1
	cmp [ebp-0xf4], edx
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1490
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1480:
	mov esi, [ebp-0xf0]
	mov esi, [esi]
	mov [ebp-0x198], esi
	mov ebx, [esi+0xc]
	test ebx, ebx
	jle _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1460
	mov dword [ebp-0xec], 0x0
	mov eax, [ebp-0xec]
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2020:
	mov edx, [ebp-0x198]
	mov ebx, [edx+eax*4+0x18]
	mov ecx, [ebp-0x174]
	mov esi, [ecx+0xc]
	test esi, esi
	jg _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1500
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2000:
	cmp dword [ebp-0xf4], 0x1
	jle _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1510
	mov dword [ebp-0x44], 0x1
	mov edx, [ebp-0x44]
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1550:
	mov ecx, [ebp-0xf0]
	mov eax, [ecx+edx*4]
	mov edi, [eax+0xc]
	test edi, edi
	jle _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1520
	cmp ebx, [eax+0x18]
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1530
	mov ecx, eax
	xor edx, edx
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1540:
	add edx, 0x1
	cmp edx, edi
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1520
	mov eax, [ecx+0x1c]
	add ecx, 0x4
	cmp ebx, eax
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1540
	test edx, edx
	js _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1520
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1530:
	add dword [ebp-0x44], 0x1
	mov eax, [ebp-0x44]
	cmp [ebp-0xf4], eax
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1510
	mov edx, eax
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1550
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1460:
	mov edx, [ebp-0x174]
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1470:
	mov ecx, [edx]
	test ecx, ecx
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1560
	mov ecx, [ebp-0x118]
	mov ecx, [ecx]
	mov [ebp-0xe0], ecx
	mov eax, [edx+0xc]
	mov [ecx+0x8], eax
	test eax, eax
	jle _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1560
	add edx, 0x18
	mov [ebp-0x88], edx
	mov [ebp-0x84], ecx
	mov dword [ebp-0xe4], 0x0
	add ecx, 0x18
	mov [ebp-0x1bc], ecx
	mov esi, [ebp-0x84]
	add esi, 0x1c
	mov [ebp-0x1c0], esi
	mov eax, [ebp-0x84]
	add eax, 0x10
	mov [ebp-0x1c4], eax
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1610:
	mov edx, [edx]
	mov [ebp-0xe8], edx
	mov ecx, [ebp-0xe0]
	mov ebx, [ecx+0xc]
	mov [ebp-0x19c], ebx
	cmp [ebp-0xe4], ebx
	jl _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1570
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1630:
	cmp ebx, 0x3f
	jg _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1580
	mov eax, [ebp-0x19c]
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1920:
	add eax, 0x1
	mov ecx, [ebp-0xe0]
	mov [ecx+0xc], eax
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1650:
	cmp [ebp-0xe4], ebx
	jge _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1590
	lea eax, [ebx*4]
	mov esi, [ebp-0xe0]
	lea ecx, [eax+esi+0x14]
	lea edx, [eax+esi+0x18]
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1600:
	sub ebx, 0x1
	mov eax, [ecx]
	mov [edx], eax
	sub ecx, 0x4
	sub edx, 0x4
	cmp [ebp-0xe4], ebx
	jl _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1600
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1590:
	mov edx, [ebp-0xe8]
	mov eax, [ebp-0x84]
	mov [eax+0x18], edx
	add dword [ebp-0xe4], 0x1
	add dword [ebp-0x1c4], 0x4
	add dword [ebp-0x1c0], 0x4
	add dword [ebp-0x1bc], 0x4
	add dword [ebp-0x88], 0x4
	add eax, 0x4
	mov [ebp-0x84], eax
	mov esi, [ebp-0xe4]
	mov ecx, [ebp-0x174]
	cmp esi, [ecx+0xc]
	jge _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1560
	mov edx, [ebp-0x88]
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1610
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1570:
	mov esi, [ebp-0x84]
	cmp edx, [esi+0x18]
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1620
	mov edx, [ebp-0x1c4]
	add edx, 0x8
	mov ecx, [ebp-0xe4]
	mov edi, ebx
	mov esi, [ebp-0x1c0]
	sub esi, [ebp-0x1bc]
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1640:
	add ecx, 0x1
	cmp edi, ecx
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1630
	mov eax, [esi+edx]
	add edx, 0x4
	cmp [ebp-0xe8], eax
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1640
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2070:
	test ecx, ecx
	js _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1630
	mov ebx, ecx
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1650
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1560:
	mov eax, [ebp-0x110]
	mov [scrCompileGlob+0x3c], eax
	mov edx, [ebp-0x10c]
	mov [scrCompileGlob+0x40], edx
	mov ecx, [ebp-0x108]
	mov [scrCompileGlob+0x48], ecx
	mov esi, [ebp-0x104]
	mov [scrCompileGlob+0x4c], esi
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_720:
	mov dword [esp+0x4], _cstring_local_var_stack_
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov edx, [ebp-0x174]
	mov edi, [edx+0xc]
	mov ecx, edx
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1660
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_750:
	mov dword [esp], 0x118
	call Hunk_AllocateTempMemoryHigh
	mov esi, eax
	mov dword [esp+0x8], 0x118
	mov edx, [ebp-0x174]
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	mov dword [esi+0x8], 0x0
	mov eax, [ebx]
	cmp dword [eax], 0x3d
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1670
	mov [eax+0x8], esi
	mov byte [ebp-0xc5], 0x1
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_760
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_220:
	cmp ebx, [edx+0x18]
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_240
	xor ecx, ecx
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1690:
	add ecx, 0x1
	cmp esi, ecx
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1680
	mov eax, [edx+0x1c]
	add edx, 0x4
	cmp ebx, eax
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1690
	test ecx, ecx
	js _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1680
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_240:
	mov esi, [ebp-0x17c]
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1950:
	add dword [ebp-0x160], 0x1
	mov ecx, [ebp-0x160]
	cmp [esi+0xc], ecx
	jle _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_210
	mov esi, ecx
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1700
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_660:
	mov dword [esp+0x4], _cstring_local_var_stack_
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov ecx, [ebp-0x54]
	mov ecx, [ecx+0xc]
	mov [ebp-0x184], ecx
	mov eax, ecx
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1710
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_90:
	mov dword [esp+0x4], _cstring_local_var_stack_
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov ecx, [ebp-0x5c]
	mov ecx, [ecx+0xc]
	mov [ebp-0x18c], ecx
	mov eax, ecx
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1720
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_770:
	mov dword [esi], 0x0
	cmp dword [ebp-0xb8], 0x3ff
	jg _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1730
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2360:
	mov ecx, [ebp-0xb8]
	mov eax, [ebp-0xb4]
	mov [eax+ecx*4], esi
	add ecx, 0x1
	mov [ebp-0xb8], ecx
	xor edi, edi
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1740
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_840:
	mov eax, [ebp-0xb8]
	test eax, eax
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_740
	mov edx, [ebp-0x174]
	mov eax, [edx]
	test eax, eax
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_740
	mov eax, [ebp-0xb8]
	test eax, eax
	jle _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_740
	mov dword [ebp-0xac], 0x0
	mov ecx, [ebp-0xac]
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1840:
	mov esi, [ebp-0xb4]
	mov ecx, [esi+ecx*4]
	mov [ebp-0x50], ecx
	mov esi, [ebp-0x174]
	mov eax, [esi+0xc]
	mov [ecx+0x8], eax
	test eax, eax
	jle _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1750
	add esi, 0x18
	mov [ebp-0x68], esi
	mov [ebp-0x64], ecx
	mov dword [ebp-0x4c], 0x0
	add ecx, 0x18
	mov [ebp-0x1a4], ecx
	mov eax, [ebp-0x64]
	add eax, 0x1c
	mov [ebp-0x1a8], eax
	mov edx, [ebp-0x64]
	add edx, 0x10
	mov [ebp-0x1ac], edx
	mov ecx, esi
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1810:
	mov ecx, [ecx]
	mov [ebp-0xb0], ecx
	mov eax, [ebp-0x50]
	mov esi, [eax+0xc]
	mov [ebp-0x180], esi
	cmp esi, [ebp-0x4c]
	jle _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1760
	mov edx, [ebp-0x64]
	cmp [edx+0x18], ecx
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1770
	mov edx, [ebp-0x1ac]
	add edx, 0x8
	mov ebx, [ebp-0x4c]
	mov edi, esi
	mov ecx, [ebp-0x1a8]
	sub ecx, [ebp-0x1a4]
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1780:
	add ebx, 0x1
	cmp ebx, edi
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1760
	mov eax, [ecx+edx]
	add edx, 0x4
	cmp eax, [ebp-0xb0]
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1780
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1960:
	test ebx, ebx
	js _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1760
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1830:
	cmp [ebp-0x4c], ebx
	jge _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1790
	lea eax, [ebx*4]
	mov esi, [ebp-0x50]
	lea ecx, [eax+esi+0x14]
	lea edx, [eax+esi+0x18]
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1800:
	sub ebx, 0x1
	mov eax, [ecx]
	mov [edx], eax
	sub ecx, 0x4
	sub edx, 0x4
	cmp [ebp-0x4c], ebx
	jl _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1800
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1790:
	mov edx, [ebp-0xb0]
	mov eax, [ebp-0x64]
	mov [eax+0x18], edx
	add dword [ebp-0x4c], 0x1
	add dword [ebp-0x1ac], 0x4
	add dword [ebp-0x1a8], 0x4
	add dword [ebp-0x1a4], 0x4
	add dword [ebp-0x68], 0x4
	add eax, 0x4
	mov [ebp-0x64], eax
	mov esi, [ebp-0x4c]
	mov ecx, [ebp-0x174]
	cmp [ecx+0xc], esi
	jle _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1750
	mov ecx, [ebp-0x68]
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1810
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1760:
	cmp esi, 0x3f
	jg _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1820
	mov eax, [ebp-0x180]
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1850:
	add eax, 0x1
	mov edx, [ebp-0x50]
	mov [edx+0xc], eax
	mov ebx, esi
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1830
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1750:
	add dword [ebp-0xac], 0x1
	mov eax, [ebp-0xac]
	cmp [ebp-0xb8], eax
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_740
	mov ecx, eax
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1840
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1820:
	mov dword [esp+0x4], _cstring_local_var_stack_
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov ecx, [ebp-0x50]
	mov ecx, [ecx+0xc]
	mov [ebp-0x180], ecx
	mov eax, ecx
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1850
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_160:
	test ecx, ecx
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1860
	mov esi, [ebp-0x15c]
	mov [ebp+esi*4-0x2c], eax
	add esi, 0x1
	mov [ebp-0x15c], esi
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1860
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_140:
	test ebx, ebx
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1870
	mov dword [ebp-0x15c], 0x0
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1880
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_20:
	mov esi, eax
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1890
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1380:
	mov dword [esp+0x4], _cstring_local_var_stack_
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov edx, [ebp-0x58]
	mov edx, [edx+0xc]
	mov [ebp-0x188], edx
	mov eax, edx
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1900
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1280:
	mov dword [esp+0x4], _cstring_local_var_stack_
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov edx, [ebp-0x120]
	mov edx, [edx+0xc]
	mov [ebp-0x178], edx
	mov eax, edx
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1910
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1580:
	mov dword [esp+0x4], _cstring_local_var_stack_
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov edx, [ebp-0xe0]
	mov edx, [edx+0xc]
	mov [ebp-0x19c], edx
	mov eax, edx
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1920
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1180:
	mov ecx, [ebp-0xd4]
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1930
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1220:
	mov ecx, [ebp-0x164]
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1940
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_230:
	mov eax, [ebp-0x174]
	mov [eax+esi*4+0x18], ebx
	add dword [eax+0xc], 0x1
	mov edx, [ebp-0x2c]
	mov [ebp-0x17c], edx
	mov esi, edx
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1950
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1770:
	mov ebx, [ebp-0x4c]
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1960
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_870:
	cmp ebx, [ecx+0x18]
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_890
	mov edx, ecx
	xor ecx, ecx
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1980:
	add ecx, 0x1
	cmp esi, ecx
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1970
	mov eax, [edx+0x1c]
	add edx, 0x4
	cmp ebx, eax
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1980
	test ecx, ecx
	js _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1970
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_890:
	mov eax, [ebp-0x194]
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2320:
	add dword [ebp-0xbc], 0x1
	mov esi, [ebp-0xbc]
	cmp esi, [eax+0xc]
	jge _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_840
	mov eax, esi
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1990
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1500:
	cmp ebx, [ecx+0x18]
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1520
	mov edx, ecx
	xor ecx, ecx
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2010:
	add ecx, 0x1
	cmp ecx, esi
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2000
	mov eax, [edx+0x1c]
	add edx, 0x4
	cmp ebx, eax
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2010
	test ecx, ecx
	js _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2000
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1520:
	mov eax, [ebp-0x198]
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2330:
	add dword [ebp-0xec], 0x1
	mov esi, [ebp-0xec]
	cmp [eax+0xc], esi
	jle _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1460
	mov eax, esi
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2020
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1100:
	cmp ebx, [ecx+0x18]
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1120
	mov edx, ecx
	xor ecx, ecx
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2040:
	add ecx, 0x1
	cmp esi, ecx
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2030
	mov eax, [edx+0x1c]
	add edx, 0x4
	cmp ebx, eax
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2040
	test ecx, ecx
	js _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2030
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1120:
	mov eax, [ebp-0x1a0]
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2340:
	add dword [ebp-0x12c], 0x1
	mov esi, [ebp-0x12c]
	cmp esi, [eax+0xc]
	jge _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1060
	mov eax, esi
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2050
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1320:
	mov ecx, [ebp-0x124]
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2060
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1620:
	mov ecx, [ebp-0xe4]
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2070
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1420:
	mov ecx, [ebp-0xf8]
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2080
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_300:
	mov dword [esp], 0x1000
	call Hunk_AllocateTempMemoryHigh
	mov [ebp-0x130], eax
	lea eax, [ebp-0x1c]
	mov [scrCompileGlob+0x40], eax
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2090
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_430:
	mov dword [esp], 0x1000
	call Hunk_AllocateTempMemoryHigh
	mov [ebp-0xf0], eax
	lea eax, [ebp-0x1c]
	mov [scrCompileGlob+0x40], eax
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2100
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_420:
	mov eax, [edi+0x4]
	mov edx, [eax]
	cmp edx, 0x6
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2110
	cmp edx, 0x31
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2120
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2480:
	mov byte [ebp-0x111], 0x0
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2130
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_280:
	mov esi, [esi+0x4]
	lea edx, [ebp-0x2c]
	mov eax, esi
	call _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2350:
	test al, al
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2140
	mov edx, [ebp-0x28]
	lea eax, [edx-0x5]
	cmp eax, 0x1
	jbe _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2150
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2600:
	mov byte [ebp-0x145], 0x0
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2590:
	mov eax, [ebp-0x2c]
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z16RemoveRefToValuei13VariableUnion
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2160
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_50:
	mov ebx, [esi+0x4]
	mov eax, [ebp-0x174]
	mov edx, [eax]
	test edx, edx
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	mov edi, [eax+0xc]
	test edi, edi
	jle _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2170
	mov esi, [ebp-0x174]
	cmp [esi+0x18], ebx
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	mov ecx, esi
	xor edx, edx
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2180:
	add edx, 0x1
	cmp edi, edx
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2170
	mov eax, [ecx+0x1c]
	add ecx, 0x4
	cmp eax, ebx
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2180
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_180:
	mov eax, edx
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2310:
	mov esi, [eax]
	test esi, esi
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	mov ebx, [ebp-0x15c]
	test ebx, ebx
	jle _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	mov dword [ebp-0x150], 0x0
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2280:
	mov edx, [ebp-0x150]
	mov edx, [ebp+edx*4-0x2c]
	mov [ebp-0x60], edx
	mov ecx, [ebp-0x174]
	mov eax, [ecx+0xc]
	mov [edx+0x8], eax
	test eax, eax
	jle _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2190
	add ecx, 0x18
	mov [ebp-0xa0], ecx
	mov [ebp-0x9c], edx
	mov dword [ebp-0x154], 0x0
	add edx, 0x18
	mov [ebp-0x1e8], edx
	mov esi, [ebp-0x9c]
	add esi, 0x1c
	mov [ebp-0x1ec], esi
	mov eax, [ebp-0x9c]
	add eax, 0x10
	mov [ebp-0x1f0], eax
	mov edx, ecx
	mov edx, [edx]
	mov [ebp-0x158], edx
	mov ecx, [ebp-0x60]
	mov ebx, [ecx+0xc]
	mov [ebp-0x190], ebx
	cmp [ebp-0x154], ebx
	jl _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2200
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2240:
	cmp ebx, 0x3f
	jg _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2210
	mov eax, [ebp-0x190]
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2290:
	add eax, 0x1
	mov ecx, [ebp-0x60]
	mov [ecx+0xc], eax
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2270:
	cmp [ebp-0x154], ebx
	jge _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2220
	lea eax, [ebx*4]
	mov esi, [ebp-0x60]
	lea ecx, [eax+esi+0x14]
	lea edx, [eax+esi+0x18]
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2230:
	sub ebx, 0x1
	mov eax, [ecx]
	mov [edx], eax
	sub ecx, 0x4
	sub edx, 0x4
	cmp [ebp-0x154], ebx
	jl _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2230
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2220:
	mov edx, [ebp-0x158]
	mov eax, [ebp-0x9c]
	mov [eax+0x18], edx
	add dword [ebp-0x154], 0x1
	add dword [ebp-0x1f0], 0x4
	add dword [ebp-0x1ec], 0x4
	add dword [ebp-0x1e8], 0x4
	add dword [ebp-0xa0], 0x4
	add eax, 0x4
	mov [ebp-0x9c], eax
	mov esi, [ebp-0x154]
	mov ecx, [ebp-0x174]
	cmp esi, [ecx+0xc]
	jge _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2190
	mov edx, [ebp-0xa0]
	mov edx, [edx]
	mov [ebp-0x158], edx
	mov ecx, [ebp-0x60]
	mov ebx, [ecx+0xc]
	mov [ebp-0x190], ebx
	cmp [ebp-0x154], ebx
	jge _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2240
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2200:
	mov esi, [ebp-0x9c]
	cmp edx, [esi+0x18]
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2250
	mov edx, [ebp-0x1f0]
	add edx, 0x8
	mov ecx, [ebp-0x154]
	mov edi, ebx
	mov esi, [ebp-0x1ec]
	sub esi, [ebp-0x1e8]
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2260:
	add ecx, 0x1
	cmp edi, ecx
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2240
	mov eax, [esi+edx]
	add edx, 0x4
	cmp [ebp-0x158], eax
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2260
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2300:
	test ecx, ecx
	js _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2240
	mov ebx, ecx
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2270
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2190:
	add dword [ebp-0x150], 0x1
	mov eax, [ebp-0x150]
	cmp [ebp-0x15c], eax
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2280
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2210:
	mov dword [esp+0x4], _cstring_local_var_stack_
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov edx, [ebp-0x60]
	mov edx, [edx+0xc]
	mov [ebp-0x190], edx
	mov eax, edx
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2290
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2250:
	mov ecx, [ebp-0x154]
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2300
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_210:
	mov eax, [ebp-0x174]
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2310
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1870:
	mov [ebp-0x2c], eax
	mov dword [ebp-0x15c], 0x1
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1880
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_880:
	mov edx, [ebp-0x174]
	mov [edx+esi*4+0x18], ebx
	add dword [edx+0xc], 0x1
	mov ecx, [ebp-0xc0]
	mov ecx, [ecx]
	mov [ebp-0x194], ecx
	mov eax, ecx
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2320
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1670:
	mov [eax+0xc], esi
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_760
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1510:
	mov edx, [ebp-0x174]
	mov [edx+esi*4+0x18], ebx
	add dword [edx+0xc], 0x1
	mov ecx, [ebp-0xf0]
	mov ecx, [ecx]
	mov [ebp-0x198], ecx
	mov eax, ecx
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2330
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_940:
	mov esi, [ebp-0x174]
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_930
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_30:
	mov esi, [ebp-0x174]
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1890
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1110:
	mov edx, [ebp-0x174]
	mov [edx+esi*4+0x18], ebx
	add dword [edx+0xc], 0x1
	mov ecx, [ebp-0x130]
	mov ecx, [ecx]
	mov [ebp-0x1a0], ecx
	mov eax, ecx
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2340
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_290:
	mov ebx, [esi+0x10]
	mov ecx, [esi+0xc]
	mov edx, [esi+0x8]
	mov esi, [esi+0x4]
	lea eax, [ebp-0x2c]
	mov [esp+0x4], eax
	mov [esp], ebx
	mov eax, esi
	call _Z28EvalBinaryOperatorExpression6sval_uS_S_S_P20VariableCompileValue
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2350
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_1730:
	mov dword [esp+0x4], _cstring_max_switch_cases
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2360
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_820:
	mov dword [esp+0x4], _cstring_max_switch_cases
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2370
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_570:
	mov ecx, [ebp-0x174]
	cmp ebx, [ecx+0x18]
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	xor edx, edx
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2380:
	add edx, 0x1
	cmp edx, edi
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2170
	mov eax, [ecx+0x1c]
	add ecx, 0x4
	cmp ebx, eax
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2380
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_590:
	mov edx, [ebp-0x174]
	cmp ebx, [edx+0x18]
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	mov ecx, edx
	xor edx, edx
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2400:
	add edx, 0x1
	cmp edx, edi
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2390
	mov eax, [ecx+0x1c]
	add ecx, 0x4
	cmp ebx, eax
	jnz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2400
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_60:
	mov dword [esp], 0x118
	call Hunk_AllocateTempMemoryHigh
	mov [ebx+0x10], eax
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2410
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_310:
	mov dword [esp], 0x118
	call Hunk_AllocateTempMemoryHigh
	mov edx, [ebp-0x14c]
	mov [edx], eax
	mov ecx, [ebp-0x14c]
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2420
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_620:
	mov dword [esp], 0x118
	call Hunk_AllocateTempMemoryHigh
	mov [ebx+0xc], eax
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2430
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_150:
	mov dword [esp], 0x118
	call Hunk_AllocateTempMemoryHigh
	mov [esi], eax
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2440
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_130:
	mov dword [esp], 0x118
	call Hunk_AllocateTempMemoryHigh
	mov [ebx+0x18], eax
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2450
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_450:
	mov dword [esp], 0x118
	call Hunk_AllocateTempMemoryHigh
	mov edx, [ebp-0x11c]
	mov [edx], eax
	mov ecx, [ebp-0x11c]
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2460
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_440:
	mov dword [esp], 0x118
	call Hunk_AllocateTempMemoryHigh
	mov ecx, [ebp-0x118]
	mov [ecx], eax
	mov edx, [ebp-0x118]
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2470
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2110:
	mov esi, [eax+0x4]
	lea edx, [ebp-0x2c]
	mov eax, esi
	call _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2550:
	test al, al
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2480
	mov edx, [ebp-0x28]
	lea eax, [edx-0x5]
	cmp eax, 0x1
	jbe _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2490
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2630:
	mov byte [ebp-0x111], 0x0
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2620:
	mov eax, [ebp-0x2c]
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z16RemoveRefToValuei13VariableUnion
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2130
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_950:
	mov dword [esp+0x4], _cstring_max_switch_cases
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov eax, [scrCompileGlob+0x40]
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2500
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_330:
	mov dword [esp+0x4], _cstring_max_switch_cases
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov eax, [scrCompileGlob+0x4c]
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2510
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_470:
	mov dword [esp+0x4], _cstring_max_switch_cases
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov eax, [scrCompileGlob+0x4c]
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2520
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_40:
	mov dword [esp+0x4], _cstring_max_switch_cases
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov eax, [scrCompileGlob+0x4c]
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2530
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_580:
	mov dword [esp+0x4], _cstring_local_var_stack_
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov edx, [ebp-0x174]
	mov edi, [edx+0xc]
	mov ecx, edx
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2540
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2120:
	mov ebx, [eax+0x10]
	mov ecx, [eax+0xc]
	mov edx, [eax+0x8]
	mov esi, [eax+0x4]
	lea eax, [ebp-0x2c]
	mov [esp+0x4], eax
	mov [esp], ebx
	mov eax, esi
	call _Z28EvalBinaryOperatorExpression6sval_uS_S_S_P20VariableCompileValue
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2550
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_600:
	mov dword [esp+0x4], _cstring_local_var_stack_
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov eax, [ebp-0x174]
	mov edi, [eax+0xc]
	mov edx, eax
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2560
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_810:
	mov dword [esp+0x4], _cstring_max_switch_cases
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov eax, [scrCompileGlob+0x40]
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2570
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2150:
	lea eax, [ebp-0x2c]
	mov [esp], eax
	call _Z12Scr_CastBoolP13VariableValue
	mov ecx, [ebp-0x2c]
	test ecx, ecx
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2580
	mov byte [ebp-0x145], 0x1
	mov edx, [ebp-0x28]
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2590
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2580:
	mov edx, [ebp-0x28]
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2600
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2490:
	lea eax, [ebp-0x2c]
	mov [esp], eax
	call _Z12Scr_CastBoolP13VariableValue
	mov eax, [ebp-0x2c]
	test eax, eax
	jz _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2610
	mov byte [ebp-0x111], 0x1
	mov edx, [ebp-0x28]
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2620
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2610:
	mov edx, [ebp-0x28]
	jmp _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2630
	nop
	
	
_Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_jumptab_0:
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2640
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2650
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2650
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2660
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2670
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2680
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2690
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2700
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2700
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2710
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2720
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2730
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2740
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2750
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_10
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2760
	dd _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s_2770


;EmitValue(VariableCompileValue*)
_Z9EmitValueP20VariableCompileValue:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ecx, eax
	cmp dword [eax+0x4], 0x6
	ja _Z9EmitValueP20VariableCompileValue_10
	mov eax, [eax+0x4]
	jmp dword [eax*4+_Z9EmitValueP20VariableCompileValue_jumptab_0]
_Z9EmitValueP20VariableCompileValue_90:
	mov esi, [ecx+0x8]
	mov ebx, [ecx]
	xor ecx, ecx
	mov edx, 0x1
	mov eax, 0xb
_Z9EmitValueP20VariableCompileValue_50:
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call _Z12AddOpcodePosji
	mov dword [esp], 0x2
	call _Z15TempMallocAligni
	mov [scrCompileGlob], eax
	mov [eax], bx
	cmp dword [scrCompilePub+0x20024], 0x2
	jz _Z9EmitValueP20VariableCompileValue_20
	cmp byte [scrCompileGlob+0x1c], 0x0
	jnz _Z9EmitValueP20VariableCompileValue_30
_Z9EmitValueP20VariableCompileValue_60:
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	call SL_TransferRefToUser
_Z9EmitValueP20VariableCompileValue_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z9EmitValueP20VariableCompileValue_70:
	mov esi, [ecx+0x8]
	xor ecx, ecx
	mov edx, 0x1
	mov eax, 0x2
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call _Z12AddOpcodePosji
	jmp _Z9EmitValueP20VariableCompileValue_10
_Z9EmitValueP20VariableCompileValue_120:
	mov esi, [ecx+0x8]
	mov edx, esi
	mov eax, [ecx]
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z14EmitGetIntegeri6sval_u
_Z9EmitValueP20VariableCompileValue_110:
	mov esi, [ecx+0x8]
	mov ebx, [ecx]
	xor ecx, ecx
	mov edx, 0x1
	mov eax, 0x9
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call _Z12AddOpcodePosji
	mov dword [esp], 0x4
	call _Z21TempMallocAlignStricti
	mov [scrCompileGlob], eax
	mov [eax], ebx
	jmp _Z9EmitValueP20VariableCompileValue_10
_Z9EmitValueP20VariableCompileValue_100:
	mov esi, [ecx+0x8]
	mov edi, [ecx]
	xor ecx, ecx
	mov edx, 0x1
	mov eax, 0xc
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call _Z12AddOpcodePosji
	mov esi, 0x1
_Z9EmitValueP20VariableCompileValue_40:
	mov ebx, [edi+esi*4-0x4]
	mov dword [esp], 0x4
	call _Z21TempMallocAlignStricti
	mov [scrCompileGlob], eax
	mov [eax], ebx
	add esi, 0x1
	cmp esi, 0x4
	jnz _Z9EmitValueP20VariableCompileValue_40
	mov [esp], edi
	call _Z17RemoveRefToVectorPKf
	jmp _Z9EmitValueP20VariableCompileValue_10
_Z9EmitValueP20VariableCompileValue_80:
	mov esi, [ecx+0x8]
	mov ebx, [ecx]
	xor ecx, ecx
	mov edx, 0x1
	mov eax, 0xa
	jmp _Z9EmitValueP20VariableCompileValue_50
_Z9EmitValueP20VariableCompileValue_20:
	cmp byte [scrCompileGlob+0x1c], 0x0
	jnz _Z9EmitValueP20VariableCompileValue_10
	mov [esp], ebx
	call _Z20SL_RemoveRefToStringj
	jmp _Z9EmitValueP20VariableCompileValue_10
_Z9EmitValueP20VariableCompileValue_30:
	mov [esp], ebx
	call _Z17SL_AddRefToStringj
	jmp _Z9EmitValueP20VariableCompileValue_60
	nop
	
	
_Z9EmitValueP20VariableCompileValue_jumptab_0:
	dd _Z9EmitValueP20VariableCompileValue_70
	dd _Z9EmitValueP20VariableCompileValue_10
	dd _Z9EmitValueP20VariableCompileValue_80
	dd _Z9EmitValueP20VariableCompileValue_90
	dd _Z9EmitValueP20VariableCompileValue_100
	dd _Z9EmitValueP20VariableCompileValue_110
	dd _Z9EmitValueP20VariableCompileValue_120


;EmitOpcode(unsigned int, int, int)
_Z10EmitOpcodejii:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov [ebp-0x1c], eax
	mov [ebp-0x20], edx
	mov [ebp-0x24], ecx
	mov edi, [scrCompilePub]
	cmp edi, 0x0
	jz _Z10EmitOpcodejii_10
	mov dword [scrCompilePub], 0x0
	jg _Z10EmitOpcodejii_20
_Z10EmitOpcodejii_10:
	mov eax, [scrCompileGlob+0x10]
	test eax, eax
	jz _Z10EmitOpcodejii_30
	cmp dword [ebp-0x24], 0x2
	jz _Z10EmitOpcodejii_30
	cmp dword [ebp-0x24], 0x3
	jz _Z10EmitOpcodejii_30
	xor edx, edx
	jmp _Z10EmitOpcodejii_40
_Z10EmitOpcodejii_30:
	mov edx, 0x1
_Z10EmitOpcodejii_40:
	mov [scrCompilePub+0x20021], dl
	mov ecx, [ebp-0x20]
	lea edx, [eax+ecx]
	mov [scrCompileGlob+0x10], edx
	cmp edx, [scrCompileGlob+0x14]
	mov eax, [scrCompileGlob+0x14]
	cmovg eax, edx
	mov [scrCompileGlob+0x14], eax
	mov ecx, [ebp-0x24]
	test ecx, ecx
	jz _Z10EmitOpcodejii_50
	cmp [scrCompileGlob+0x18], edx
	mov eax, [scrCompileGlob+0x18]
	cmovl eax, edx
	mov [scrCompileGlob+0x18], eax
_Z10EmitOpcodejii_50:
	mov ecx, scrVarPub
	mov edx, [ecx+0x38]
	mov eax, edx
	shl eax, 0x5
	sub eax, edx
	add eax, [ebp-0x1c]
	mov [ecx+0x38], eax
	mov edx, [scrCompilePub+0x20028]
	test edx, edx
	jz _Z10EmitOpcodejii_60
	mov [scrCompileGlob], edx
	mov eax, [ebp-0x1c]
	sub eax, 0x20
	cmp eax, 0x3e
	jbe _Z10EmitOpcodejii_70
_Z10EmitOpcodejii_60:
	mov [scrCompileGlob+0x4], edx
	mov dword [esp], 0x1
	call _Z10TempMalloci
	mov [scrCompilePub+0x20028], eax
	mov [scrCompileGlob], eax
	movzx edx, byte [ebp-0x1c]
	mov [eax], dl
_Z10EmitOpcodejii_100:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z10EmitOpcodejii_70:
	jmp dword [eax*4+_Z10EmitOpcodejii_jumptab_0]
_Z10EmitOpcodejii_20:
	xor esi, esi
	mov ebx, scrCompileGlob+0x58
_Z10EmitOpcodejii_80:
	mov eax, ebx
	call _Z9EmitValueP20VariableCompileValue
	add esi, 0x1
	add ebx, 0xc
	cmp edi, esi
	jnz _Z10EmitOpcodejii_80
	jmp _Z10EmitOpcodejii_10
_Z10EmitOpcodejii_210:
	movzx eax, byte [edx]
	cmp al, 0x1e
	jz _Z10EmitOpcodejii_90
	movzx eax, al
	lea ebx, [eax-0x18]
	cmp ebx, 0x5
	ja _Z10EmitOpcodejii_60
	call _Z15RemoveOpcodePosv
	mov eax, [scrCompilePub+0x20028]
	mov byte [eax], 0x1f
	mov dword [esp], 0x1
	call _Z10TempMalloci
	mov [scrCompileGlob], eax
	mov [eax], bl
	jmp _Z10EmitOpcodejii_100
_Z10EmitOpcodejii_310:
	cmp byte [edx], 0x5c
	jnz _Z10EmitOpcodejii_60
	call _Z15RemoveOpcodePosv
	mov eax, [scrCompilePub+0x20028]
	mov byte [eax], 0x5f
	jmp _Z10EmitOpcodejii_100
_Z10EmitOpcodejii_300:
	movzx eax, byte [edx]
	cmp al, 0x1e
	jz _Z10EmitOpcodejii_110
	movzx eax, al
	lea ebx, [eax-0x18]
	cmp ebx, 0x5
	ja _Z10EmitOpcodejii_60
	mov byte [edx], 0x5a
	mov dword [esp], 0x1
	call _Z10TempMalloci
	mov [scrCompileGlob], eax
	mov [eax], bl
	jmp _Z10EmitOpcodejii_100
_Z10EmitOpcodejii_290:
	cmp byte [edx], 0xf
	jnz _Z10EmitOpcodejii_60
	call _Z15RemoveOpcodePosv
	mov eax, [scrCompilePub+0x20028]
	mov byte [eax], 0x54
	jmp _Z10EmitOpcodejii_100
_Z10EmitOpcodejii_250:
	cmp byte [edx], 0x16
	jnz _Z10EmitOpcodejii_60
	mov byte [edx], 0x30
	jmp _Z10EmitOpcodejii_100
_Z10EmitOpcodejii_240:
	movzx eax, byte [edx]
	cmp al, 0x26
	jz _Z10EmitOpcodejii_120
	cmp al, 0xd
	jz _Z10EmitOpcodejii_130
	cmp al, 0xe
	jnz _Z10EmitOpcodejii_60
	mov byte [edx], 0x2c
	jmp _Z10EmitOpcodejii_100
_Z10EmitOpcodejii_230:
	movzx eax, byte [edx]
	cmp al, 0x26
	jz _Z10EmitOpcodejii_140
	cmp al, 0xd
	jz _Z10EmitOpcodejii_150
	cmp al, 0xe
	jnz _Z10EmitOpcodejii_60
	mov byte [edx], 0x28
	jmp _Z10EmitOpcodejii_100
_Z10EmitOpcodejii_220:
	movzx eax, byte [edx]
	cmp al, 0x37
	jz _Z10EmitOpcodejii_160
	cmp al, 0x36
	jnz _Z10EmitOpcodejii_60
	call _Z15RemoveOpcodePosv
	mov eax, [scrCompilePub+0x20028]
	mov byte [eax], 0x21
	jmp _Z10EmitOpcodejii_100
_Z10EmitOpcodejii_270:
	cmp byte [edx], 0x4e
	jnz _Z10EmitOpcodejii_60
	mov byte [edx], 0x4f
	jmp _Z10EmitOpcodejii_100
_Z10EmitOpcodejii_280:
	cmp byte [edx], 0xf
	jnz _Z10EmitOpcodejii_60
	call _Z15RemoveOpcodePosv
	mov eax, [scrCompilePub+0x20028]
	mov byte [eax], 0x50
	mov eax, [scrCompileGlob+0x4]
	cmp byte [eax], 0x4e
	jnz _Z10EmitOpcodejii_100
	mov eax, [scrCompilePub+0x20028]
	mov [esp], eax
	call _Z16TempMemorySetPosPc
	mov edx, [scrCompilePub+0x20028]
	lea eax, [edx-0x1]
	mov [scrCompilePub+0x20028], eax
	mov dword [scrCompileGlob+0x4], 0x0
	mov [scrCompileGlob], eax
	mov byte [edx-0x1], 0x4f
	jmp _Z10EmitOpcodejii_100
_Z10EmitOpcodejii_260:
	movzx eax, byte [edx]
	cmp al, 0x37
	jz _Z10EmitOpcodejii_170
	cmp al, 0x36
	jz _Z10EmitOpcodejii_180
	cmp al, 0x2d
	jz _Z10EmitOpcodejii_190
	cmp al, 0x2b
	jz _Z10EmitOpcodejii_200
	cmp al, 0x2c
	jnz _Z10EmitOpcodejii_60
	call _Z15RemoveOpcodePosv
	mov eax, [scrCompilePub+0x20028]
	mov byte [eax], 0x3a
	jmp _Z10EmitOpcodejii_100
_Z10EmitOpcodejii_110:
	mov byte [edx], 0x5a
	jmp _Z10EmitOpcodejii_100
_Z10EmitOpcodejii_120:
	mov byte [edx], 0x2d
	jmp _Z10EmitOpcodejii_100
_Z10EmitOpcodejii_140:
	mov byte [edx], 0x29
	jmp _Z10EmitOpcodejii_100
_Z10EmitOpcodejii_130:
	mov byte [edx], 0x2b
	jmp _Z10EmitOpcodejii_100
_Z10EmitOpcodejii_150:
	mov byte [edx], 0x27
	jmp _Z10EmitOpcodejii_100
_Z10EmitOpcodejii_160:
	call _Z15RemoveOpcodePosv
	mov eax, [scrCompilePub+0x20028]
	mov byte [eax], 0x22
	jmp _Z10EmitOpcodejii_100
_Z10EmitOpcodejii_90:
	call _Z15RemoveOpcodePosv
	mov eax, [scrCompilePub+0x20028]
	mov byte [eax], 0x1f
	jmp _Z10EmitOpcodejii_100
_Z10EmitOpcodejii_170:
	call _Z15RemoveOpcodePosv
	mov eax, [scrCompilePub+0x20028]
	mov byte [eax], 0x3d
	jmp _Z10EmitOpcodejii_100
_Z10EmitOpcodejii_180:
	call _Z15RemoveOpcodePosv
	mov eax, [scrCompilePub+0x20028]
	mov byte [eax], 0x3c
	jmp _Z10EmitOpcodejii_100
_Z10EmitOpcodejii_190:
	call _Z15RemoveOpcodePosv
	mov eax, [scrCompilePub+0x20028]
	mov byte [eax], 0x3b
	jmp _Z10EmitOpcodejii_100
_Z10EmitOpcodejii_200:
	call _Z15RemoveOpcodePosv
	mov eax, [scrCompilePub+0x20028]
	mov byte [eax], 0x38
	jmp _Z10EmitOpcodejii_100
	
	
_Z10EmitOpcodejii_jumptab_0:
	dd _Z10EmitOpcodejii_210
	dd _Z10EmitOpcodejii_60
	dd _Z10EmitOpcodejii_60
	dd _Z10EmitOpcodejii_220
	dd _Z10EmitOpcodejii_60
	dd _Z10EmitOpcodejii_60
	dd _Z10EmitOpcodejii_60
	dd _Z10EmitOpcodejii_60
	dd _Z10EmitOpcodejii_60
	dd _Z10EmitOpcodejii_60
	dd _Z10EmitOpcodejii_230
	dd _Z10EmitOpcodejii_60
	dd _Z10EmitOpcodejii_60
	dd _Z10EmitOpcodejii_60
	dd _Z10EmitOpcodejii_240
	dd _Z10EmitOpcodejii_60
	dd _Z10EmitOpcodejii_60
	dd _Z10EmitOpcodejii_250
	dd _Z10EmitOpcodejii_60
	dd _Z10EmitOpcodejii_60
	dd _Z10EmitOpcodejii_60
	dd _Z10EmitOpcodejii_60
	dd _Z10EmitOpcodejii_60
	dd _Z10EmitOpcodejii_60
	dd _Z10EmitOpcodejii_60
	dd _Z10EmitOpcodejii_260
	dd _Z10EmitOpcodejii_60
	dd _Z10EmitOpcodejii_60
	dd _Z10EmitOpcodejii_60
	dd _Z10EmitOpcodejii_60
	dd _Z10EmitOpcodejii_60
	dd _Z10EmitOpcodejii_60
	dd _Z10EmitOpcodejii_60
	dd _Z10EmitOpcodejii_60
	dd _Z10EmitOpcodejii_60
	dd _Z10EmitOpcodejii_60
	dd _Z10EmitOpcodejii_60
	dd _Z10EmitOpcodejii_60
	dd _Z10EmitOpcodejii_60
	dd _Z10EmitOpcodejii_60
	dd _Z10EmitOpcodejii_60
	dd _Z10EmitOpcodejii_60
	dd _Z10EmitOpcodejii_60
	dd _Z10EmitOpcodejii_60
	dd _Z10EmitOpcodejii_60
	dd _Z10EmitOpcodejii_60
	dd _Z10EmitOpcodejii_60
	dd _Z10EmitOpcodejii_60
	dd _Z10EmitOpcodejii_270
	dd _Z10EmitOpcodejii_60
	dd _Z10EmitOpcodejii_280
	dd _Z10EmitOpcodejii_60
	dd _Z10EmitOpcodejii_60
	dd _Z10EmitOpcodejii_60
	dd _Z10EmitOpcodejii_290
	dd _Z10EmitOpcodejii_60
	dd _Z10EmitOpcodejii_60
	dd _Z10EmitOpcodejii_300
	dd _Z10EmitOpcodejii_60
	dd _Z10EmitOpcodejii_60
	dd _Z10EmitOpcodejii_60
	dd _Z10EmitOpcodejii_60
	dd _Z10EmitOpcodejii_310


;EmitGetInteger(int, sval_u)
_Z14EmitGetIntegeri6sval_u:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, eax
	mov esi, edx
	cmp eax, 0x0
	jl _Z14EmitGetIntegeri6sval_u_10
	jz _Z14EmitGetIntegeri6sval_u_20
	cmp eax, 0xff
	jle _Z14EmitGetIntegeri6sval_u_30
	cmp eax, 0xffff
	jle _Z14EmitGetIntegeri6sval_u_40
_Z14EmitGetIntegeri6sval_u_60:
	xor ecx, ecx
	mov edx, 0x1
	mov eax, 0x8
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call _Z12AddOpcodePosji
	mov dword [esp], 0x4
	call _Z15TempMallocAligni
	mov [scrCompileGlob], eax
	mov [eax], ebx
_Z14EmitGetIntegeri6sval_u_70:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z14EmitGetIntegeri6sval_u_20:
	xor ecx, ecx
	mov edx, 0x1
	mov eax, 0x3
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call _Z12AddOpcodePosji
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z14EmitGetIntegeri6sval_u_10:
	cmp eax, 0xffffff00
	jg _Z14EmitGetIntegeri6sval_u_50
	cmp eax, 0xffff0000
	jle _Z14EmitGetIntegeri6sval_u_60
	xor ecx, ecx
	mov edx, 0x1
	mov eax, 0x7
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call _Z12AddOpcodePosji
	mov dword [esp], 0x2
	call _Z15TempMallocAligni
	mov [scrCompileGlob], eax
	mov edx, ebx
	neg edx
	mov [eax], dx
	jmp _Z14EmitGetIntegeri6sval_u_70
_Z14EmitGetIntegeri6sval_u_30:
	xor ecx, ecx
	mov edx, 0x1
	mov eax, 0x4
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call _Z12AddOpcodePosji
	mov dword [esp], 0x1
	call _Z10TempMalloci
	mov [scrCompileGlob], eax
	mov [eax], bl
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z14EmitGetIntegeri6sval_u_50:
	xor ecx, ecx
	mov edx, 0x1
	mov eax, 0x5
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call _Z12AddOpcodePosji
	mov dword [esp], 0x1
	call _Z10TempMalloci
	mov [scrCompileGlob], eax
	mov edx, ebx
	neg dl
	mov [eax], dl
	jmp _Z14EmitGetIntegeri6sval_u_70
_Z14EmitGetIntegeri6sval_u_40:
	xor ecx, ecx
	mov edx, 0x1
	mov eax, 0x6
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call _Z12AddOpcodePosji
	mov dword [esp], 0x2
	call _Z15TempMallocAligni
	mov [scrCompileGlob], eax
	mov [eax], bx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;Scr_FindLocalVarIndex(unsigned int, sval_u, unsigned char, scr_block_s*)
_Z21Scr_FindLocalVarIndexj6sval_uhP11scr_block_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov [ebp-0x24], eax
	mov [ebp-0x28], edx
	mov [ebp-0x29], cl
	mov esi, [ebp+0x8]
	test esi, esi
	jz _Z21Scr_FindLocalVarIndexj6sval_uhP11scr_block_s_10
	mov eax, [ebp+0x8]
	mov ebx, [eax+0xc]
	test ebx, ebx
	jle _Z21Scr_FindLocalVarIndexj6sval_uhP11scr_block_s_20
	mov edi, [ebp+0x8]
	xor esi, esi
	mov edx, edi
	jmp _Z21Scr_FindLocalVarIndexj6sval_uhP11scr_block_s_30
_Z21Scr_FindLocalVarIndexj6sval_uhP11scr_block_s_50:
	mov eax, [ebp-0x24]
	cmp eax, [edi+0x18]
	jz _Z21Scr_FindLocalVarIndexj6sval_uhP11scr_block_s_40
_Z21Scr_FindLocalVarIndexj6sval_uhP11scr_block_s_80:
	add esi, 0x1
	add edi, 0x4
	mov eax, [ebp+0x8]
	cmp esi, [eax+0xc]
	jge _Z21Scr_FindLocalVarIndexj6sval_uhP11scr_block_s_20
	mov edx, eax
_Z21Scr_FindLocalVarIndexj6sval_uhP11scr_block_s_30:
	cmp esi, [edx+0x4]
	jnz _Z21Scr_FindLocalVarIndexj6sval_uhP11scr_block_s_50
	lea eax, [esi+0x1]
	mov [edx+0x4], eax
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x16
	call _Z10EmitOpcodejii
	mov eax, [edi+0x18]
	mov [ebp-0x1c], eax
	movzx edx, byte [scrCompileGlob+0x1c]
	mov [ebp-0x1d], dl
	mov byte [scrCompileGlob+0x1c], 0x1
	mov dword [esp], 0x2
	call _Z15TempMallocAligni
	mov [scrCompileGlob], eax
	cmp dword [scrCompilePub+0x20024], 0x2
	jz _Z21Scr_FindLocalVarIndexj6sval_uhP11scr_block_s_60
	cmp byte [scrCompileGlob+0x1c], 0x0
	jnz _Z21Scr_FindLocalVarIndexj6sval_uhP11scr_block_s_70
_Z21Scr_FindLocalVarIndexj6sval_uhP11scr_block_s_140:
	mov ebx, [scrCompileGlob]
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z28SL_TransferToCanonicalStringj
	mov [ebx], ax
_Z21Scr_FindLocalVarIndexj6sval_uhP11scr_block_s_130:
	movzx edx, byte [ebp-0x1d]
	mov [scrCompileGlob+0x1c], dl
	mov eax, [ebp-0x24]
	cmp eax, [edi+0x18]
	jnz _Z21Scr_FindLocalVarIndexj6sval_uhP11scr_block_s_80
_Z21Scr_FindLocalVarIndexj6sval_uhP11scr_block_s_40:
	cmp byte [scrCompileGlob+0x1c], 0x0
	jz _Z21Scr_FindLocalVarIndexj6sval_uhP11scr_block_s_90
_Z21Scr_FindLocalVarIndexj6sval_uhP11scr_block_s_160:
	mov ecx, esi
	and ecx, 0x7
	mov eax, 0x1
	mov edx, eax
	shl dl, cl
	mov ebx, esi
	sar ebx, 0x3
	mov eax, [ebp+0x8]
	movzx ecx, byte [ebx+eax+0x10]
	movzx eax, dl
	test ecx, eax
	jnz _Z21Scr_FindLocalVarIndexj6sval_uhP11scr_block_s_100
	cmp byte [ebp-0x29], 0x0
	jnz _Z21Scr_FindLocalVarIndexj6sval_uhP11scr_block_s_110
_Z21Scr_FindLocalVarIndexj6sval_uhP11scr_block_s_120:
	mov edx, [ebp-0x24]
	mov [esp], edx
	call _Z18SL_ConvertToStringj
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_uninitialised_va
	mov eax, [ebp-0x28]
	mov [esp], eax
	call CompileError
	xor eax, eax
_Z21Scr_FindLocalVarIndexj6sval_uhP11scr_block_s_150:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21Scr_FindLocalVarIndexj6sval_uhP11scr_block_s_20:
	cmp byte [ebp-0x29], 0x0
	jz _Z21Scr_FindLocalVarIndexj6sval_uhP11scr_block_s_120
	cmp byte [scrCompileGlob+0x50], 0x0
	jnz _Z21Scr_FindLocalVarIndexj6sval_uhP11scr_block_s_120
	mov edx, [ebp-0x28]
_Z21Scr_FindLocalVarIndexj6sval_uhP11scr_block_s_10:
	mov dword [esp+0x4], _cstring_unreachable_code
	mov [esp], edx
	call CompileError
	xor eax, eax
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21Scr_FindLocalVarIndexj6sval_uhP11scr_block_s_60:
	cmp byte [scrCompileGlob+0x1c], 0x0
	jnz _Z21Scr_FindLocalVarIndexj6sval_uhP11scr_block_s_130
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z20SL_RemoveRefToStringj
	jmp _Z21Scr_FindLocalVarIndexj6sval_uhP11scr_block_s_130
_Z21Scr_FindLocalVarIndexj6sval_uhP11scr_block_s_70:
	mov edx, [ebp-0x1c]
	mov [esp], edx
	call _Z17SL_AddRefToStringj
	jmp _Z21Scr_FindLocalVarIndexj6sval_uhP11scr_block_s_140
_Z21Scr_FindLocalVarIndexj6sval_uhP11scr_block_s_110:
	cmp byte [scrCompileGlob+0x50], 0x0
	jnz _Z21Scr_FindLocalVarIndexj6sval_uhP11scr_block_s_120
	or dl, cl
	mov eax, [ebp+0x8]
	mov [ebx+eax+0x10], dl
_Z21Scr_FindLocalVarIndexj6sval_uhP11scr_block_s_100:
	mov eax, esi
	not eax
	mov edx, [ebp+0x8]
	add eax, [edx+0x4]
	jmp _Z21Scr_FindLocalVarIndexj6sval_uhP11scr_block_s_150
_Z21Scr_FindLocalVarIndexj6sval_uhP11scr_block_s_90:
	mov [esp], eax
	call _Z20SL_RemoveRefToStringj
	jmp _Z21Scr_FindLocalVarIndexj6sval_uhP11scr_block_s_160
	nop


;EmitContinueStatement(sval_u, scr_block_s*)
_Z21EmitContinueStatement6sval_uP11scr_block_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, eax
	mov ebx, edx
	cmp byte [scrCompileGlob+0x34], 0x0
	jz _Z21EmitContinueStatement6sval_uP11scr_block_s_10
	mov eax, [edx]
	test eax, eax
	jnz _Z21EmitContinueStatement6sval_uP11scr_block_s_10
	mov eax, [scrCompileGlob+0x48]
	test eax, eax
	jz _Z21EmitContinueStatement6sval_uP11scr_block_s_20
	cmp dword [scrCompilePub+0x20024], 0x2
	jz _Z21EmitContinueStatement6sval_uP11scr_block_s_20
	mov eax, [scrCompileGlob+0x4c]
	cmp dword [eax], 0x3ff
	jg _Z21EmitContinueStatement6sval_uP11scr_block_s_30
_Z21EmitContinueStatement6sval_uP11scr_block_s_70:
	mov edx, [eax]
	mov eax, [scrCompileGlob+0x48]
	mov [eax+edx*4], ebx
	mov eax, [scrCompileGlob+0x4c]
	add dword [eax], 0x1
_Z21EmitContinueStatement6sval_uP11scr_block_s_20:
	mov edi, [ebx]
	test edi, edi
	jz _Z21EmitContinueStatement6sval_uP11scr_block_s_40
_Z21EmitContinueStatement6sval_uP11scr_block_s_60:
	mov dword [ebx], 0x1
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x62
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call _Z12AddOpcodePosji
	mov dword [esp], 0x4
	call _Z15TempMallocAligni
	mov [scrCompileGlob], eax
	mov dword [eax], 0x0
	cmp dword [scrCompilePub+0x20024], 0x2
	jz _Z21EmitContinueStatement6sval_uP11scr_block_s_50
	mov dword [esp], 0xc
	call Hunk_AllocateTempMemoryHigh
	mov ebx, eax
	mov eax, [scrCompileGlob]
	mov [ebx], eax
	mov dword [esp], 0x0
	call _Z10TempMalloci
	mov [ebx+0x4], eax
	mov eax, [scrCompileGlob+0x38]
	mov [ebx+0x8], eax
	mov [scrCompileGlob+0x38], ebx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21EmitContinueStatement6sval_uP11scr_block_s_10:
	mov dword [esp+0x4], _cstring_illegal_continue
	mov [esp], esi
	call CompileError
_Z21EmitContinueStatement6sval_uP11scr_block_s_50:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21EmitContinueStatement6sval_uP11scr_block_s_40:
	mov eax, [ebx+0x4]
	mov edi, eax
	sub edi, [ebx+0x8]
	jz _Z21EmitContinueStatement6sval_uP11scr_block_s_60
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x17
	call _Z10EmitOpcodejii
	mov dword [esp], 0x1
	call _Z10TempMalloci
	mov [scrCompileGlob], eax
	mov edx, edi
	mov [eax], dl
	mov eax, [ebx+0x8]
	mov [ebx+0x4], eax
	jmp _Z21EmitContinueStatement6sval_uP11scr_block_s_60
_Z21EmitContinueStatement6sval_uP11scr_block_s_30:
	mov dword [esp+0x4], _cstring_max_switch_cases
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov eax, [scrCompileGlob+0x4c]
	jmp _Z21EmitContinueStatement6sval_uP11scr_block_s_70
	nop


;EmitBreakStatement(sval_u, scr_block_s*)
_Z18EmitBreakStatement6sval_uP11scr_block_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, eax
	mov ebx, edx
	cmp byte [scrCompileGlob+0x2c], 0x0
	jz _Z18EmitBreakStatement6sval_uP11scr_block_s_10
	mov eax, [edx]
	test eax, eax
	jnz _Z18EmitBreakStatement6sval_uP11scr_block_s_10
	mov eax, [scrCompileGlob+0x3c]
	test eax, eax
	jz _Z18EmitBreakStatement6sval_uP11scr_block_s_20
	cmp dword [scrCompilePub+0x20024], 0x2
	jz _Z18EmitBreakStatement6sval_uP11scr_block_s_20
	mov eax, [scrCompileGlob+0x40]
	cmp dword [eax], 0x3ff
	jg _Z18EmitBreakStatement6sval_uP11scr_block_s_30
_Z18EmitBreakStatement6sval_uP11scr_block_s_70:
	mov edx, [eax]
	mov eax, [scrCompileGlob+0x3c]
	mov [eax+edx*4], ebx
	mov eax, [scrCompileGlob+0x40]
	add dword [eax], 0x1
_Z18EmitBreakStatement6sval_uP11scr_block_s_20:
	mov edx, [scrCompileGlob+0x44]
	mov eax, [ebx]
	test eax, eax
	jz _Z18EmitBreakStatement6sval_uP11scr_block_s_40
_Z18EmitBreakStatement6sval_uP11scr_block_s_60:
	mov dword [ebx], 0x2
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x62
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call _Z12AddOpcodePosji
	mov dword [esp], 0x4
	call _Z15TempMallocAligni
	mov [scrCompileGlob], eax
	mov dword [eax], 0x0
	cmp dword [scrCompilePub+0x20024], 0x2
	jz _Z18EmitBreakStatement6sval_uP11scr_block_s_50
	mov dword [esp], 0xc
	call Hunk_AllocateTempMemoryHigh
	mov ebx, eax
	mov eax, [scrCompileGlob]
	mov [ebx], eax
	mov dword [esp], 0x0
	call _Z10TempMalloci
	mov [ebx+0x4], eax
	mov eax, [scrCompileGlob+0x30]
	mov [ebx+0x8], eax
	mov [scrCompileGlob+0x30], ebx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18EmitBreakStatement6sval_uP11scr_block_s_10:
	mov dword [esp+0x4], _cstring_illegal_break_st
	mov [esp], esi
	call CompileError
_Z18EmitBreakStatement6sval_uP11scr_block_s_50:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18EmitBreakStatement6sval_uP11scr_block_s_40:
	mov eax, [ebx+0x4]
	mov edi, eax
	sub edi, [edx+0x8]
	jz _Z18EmitBreakStatement6sval_uP11scr_block_s_60
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x17
	call _Z10EmitOpcodejii
	mov dword [esp], 0x1
	call _Z10TempMalloci
	mov [scrCompileGlob], eax
	mov edx, edi
	mov [eax], dl
	mov eax, [ebx+0x8]
	mov [ebx+0x4], eax
	jmp _Z18EmitBreakStatement6sval_uP11scr_block_s_60
_Z18EmitBreakStatement6sval_uP11scr_block_s_30:
	mov dword [esp+0x4], _cstring_max_switch_cases
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov eax, [scrCompileGlob+0x40]
	jmp _Z18EmitBreakStatement6sval_uP11scr_block_s_70
	nop


;EmitFunction(sval_u, sval_u)
_Z12EmitFunction6sval_uS_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov ebx, eax
	mov [ebp-0x2c], edx
	cmp dword [scrCompilePub+0x20024], 0x2
	jz _Z12EmitFunction6sval_uS__10
	cmp dword [eax], 0x14
	jz _Z12EmitFunction6sval_uS__20
	mov eax, [eax+0x4]
	mov [esp], eax
	call _Z18SL_ConvertToStringj
	mov [esp], eax
	call _Z27Scr_CreateCanonicalFilenamePKc
	mov esi, eax
	mov eax, [ebx+0x4]
	cmp byte [scrCompileGlob+0x1c], 0x0
	jz _Z12EmitFunction6sval_uS__30
_Z12EmitFunction6sval_uS__190:
	mov [esp+0x4], esi
	mov eax, [scrCompilePub+0x8]
	mov [esp], eax
	call _Z12FindVariablejj
	mov [esp], eax
	call _Z16Scr_EvalVariablej
	mov [ebp-0x28], eax
	mov [ebp-0x24], edx
	mov edi, [ebp-0x24]
	mov [esp], esi
	call _Z17SL_AddRefToStringj
	cmp byte [scrCompileGlob+0x1c], 0x0
	jz _Z12EmitFunction6sval_uS__40
_Z12EmitFunction6sval_uS__180:
	mov eax, [scrCompileGlob+0x54]
	mov [eax], si
	mov eax, [scrCompileGlob+0x54]
	mov edx, [ebp-0x2c]
	mov [eax+0x4], edx
	mov eax, [scrCompileGlob+0x54]
	mov byte [eax+0x2], 0x0
	add dword [scrCompileGlob+0x54], 0x8
	mov [esp+0x4], esi
	mov eax, [scrCompilePub+0xc]
	mov [esp], eax
	call _Z11GetVariablejj
	mov [esp], eax
	call _Z10GetObjectAj
	mov edx, eax
	test edi, edi
	jnz _Z12EmitFunction6sval_uS__50
	lea edi, [ebx+0x8]
	mov eax, [ebx+0x8]
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z11GetVariablejj
	mov esi, eax
_Z12EmitFunction6sval_uS__110:
	mov ebx, [edi]
	cmp dword [scrCompilePub+0x20024], 0x2
	jz _Z12EmitFunction6sval_uS__60
	cmp byte [scrCompileGlob+0x1c], 0x0
	jnz _Z12EmitFunction6sval_uS__70
_Z12EmitFunction6sval_uS__230:
	mov dword [esp+0x4], 0x2
	mov [esp], ebx
	call SL_TransferRefToUser
_Z12EmitFunction6sval_uS__250:
	mov [esp], esi
	call _Z10GetObjectAj
	mov ebx, eax
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call _Z12FindVariablejj
	test eax, eax
	jnz _Z12EmitFunction6sval_uS__80
_Z12EmitFunction6sval_uS__200:
	mov esi, 0x1
_Z12EmitFunction6sval_uS__170:
	mov dword [esp], 0x4
	call _Z15TempMallocAligni
	mov [scrCompileGlob], eax
	mov [eax], esi
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call _Z11GetVariablejj
	mov esi, eax
	mov [esp], eax
	call _Z16Scr_EvalVariablej
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	mov eax, [ebp-0x1c]
	test eax, eax
	jnz _Z12EmitFunction6sval_uS__90
	mov dword [ebp-0x1c], 0x6
	mov dword [ebp-0x20], 0x0
_Z12EmitFunction6sval_uS__90:
	mov eax, [ebp-0x20]
	add eax, 0x2
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z14GetNewVariablejj
	mov edx, [scrCompileGlob]
	mov [ebp-0x28], edx
	cmp dword [scrCompilePub+0x20024], 0x1
	sbb edx, edx
	and edx, 0xfffffffb
	add edx, 0xc
	mov [ebp-0x24], edx
	lea edx, [ebp-0x28]
	mov [esp+0x4], edx
	mov [esp], eax
	call _Z19SetNewVariableValuejP13VariableValue
	add dword [ebp-0x20], 0x1
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z16SetVariableValuejP13VariableValue
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call _Z12AddOpcodePosji
_Z12EmitFunction6sval_uS__120:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12EmitFunction6sval_uS__50:
	lea edi, [ebx+0x8]
	mov eax, [ebx+0x8]
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z12FindVariablejj
	mov esi, eax
	test eax, eax
	jz _Z12EmitFunction6sval_uS__100
	mov [esp], eax
	call _Z12GetValueTypej
	sub eax, 0x1
	jz _Z12EmitFunction6sval_uS__110
	mov dword [esp+0x4], _cstring_unknown_function
	mov edx, [ebp-0x2c]
	mov [esp], edx
	call CompileError
	jmp _Z12EmitFunction6sval_uS__120
_Z12EmitFunction6sval_uS__10:
	mov eax, [eax+0x4]
	cmp byte [scrCompileGlob+0x1c], 0x0
	jz _Z12EmitFunction6sval_uS__130
_Z12EmitFunction6sval_uS__260:
	cmp dword [ebx], 0x15
	jnz _Z12EmitFunction6sval_uS__120
	mov eax, [ebx+0x8]
	cmp byte [scrCompileGlob+0x1c], 0x0
	jz _Z12EmitFunction6sval_uS__140
_Z12EmitFunction6sval_uS__280:
	sub dword [scrCompilePub+0x4], 0x1
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12EmitFunction6sval_uS__20:
	mov eax, [eax+0x4]
	mov [esp+0x4], eax
	mov eax, [scrCompileGlob+0x8]
	mov [esp], eax
	call _Z11GetVariablejj
	mov esi, eax
	mov ebx, [ebx+0x4]
	cmp dword [scrCompilePub+0x20024], 0x2
	jz _Z12EmitFunction6sval_uS__150
	cmp byte [scrCompileGlob+0x1c], 0x0
	jnz _Z12EmitFunction6sval_uS__160
_Z12EmitFunction6sval_uS__270:
	mov dword [esp+0x4], 0x2
	mov [esp], ebx
	call SL_TransferRefToUser
_Z12EmitFunction6sval_uS__240:
	mov [esp], esi
	call _Z10GetObjectAj
	mov ebx, eax
	xor esi, esi
	jmp _Z12EmitFunction6sval_uS__170
_Z12EmitFunction6sval_uS__40:
	mov [esp], esi
	call _Z20SL_RemoveRefToStringj
	jmp _Z12EmitFunction6sval_uS__180
_Z12EmitFunction6sval_uS__30:
	mov [esp], eax
	call _Z20SL_RemoveRefToStringj
	jmp _Z12EmitFunction6sval_uS__190
_Z12EmitFunction6sval_uS__100:
	mov dword [esp+0x4], _cstring_unknown_function
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call CompileError
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12EmitFunction6sval_uS__80:
	mov [esp], eax
	call _Z16Scr_EvalVariablej
	mov esi, eax
	cmp edx, 0xd
	jz _Z12EmitFunction6sval_uS__100
	test esi, esi
	jz _Z12EmitFunction6sval_uS__200
	cmp edx, 0x7
	jz _Z12EmitFunction6sval_uS__210
	mov edx, [scrCompilePub+0x20024]
	test edx, edx
	jz _Z12EmitFunction6sval_uS__220
_Z12EmitFunction6sval_uS__210:
	mov dword [esp], 0x4
	call _Z15TempMallocAligni
	mov [scrCompileGlob], eax
	mov [eax], esi
	jmp _Z12EmitFunction6sval_uS__120
_Z12EmitFunction6sval_uS__70:
	mov [esp], ebx
	call _Z17SL_AddRefToStringj
	jmp _Z12EmitFunction6sval_uS__230
_Z12EmitFunction6sval_uS__150:
	cmp byte [scrCompileGlob+0x1c], 0x0
	jnz _Z12EmitFunction6sval_uS__240
	mov [esp], ebx
	call _Z20SL_RemoveRefToStringj
	jmp _Z12EmitFunction6sval_uS__240
_Z12EmitFunction6sval_uS__60:
	cmp byte [scrCompileGlob+0x1c], 0x0
	jnz _Z12EmitFunction6sval_uS__250
	mov [esp], ebx
	call _Z20SL_RemoveRefToStringj
	jmp _Z12EmitFunction6sval_uS__250
_Z12EmitFunction6sval_uS__130:
	mov [esp], eax
	call _Z20SL_RemoveRefToStringj
	jmp _Z12EmitFunction6sval_uS__260
_Z12EmitFunction6sval_uS__220:
	mov dword [esp+0x4], _cstring_normal_script_ca
	mov edx, [ebp-0x2c]
	mov [esp], edx
	call CompileError
	jmp _Z12EmitFunction6sval_uS__120
_Z12EmitFunction6sval_uS__160:
	mov [esp], ebx
	call _Z17SL_AddRefToStringj
	jmp _Z12EmitFunction6sval_uS__270
_Z12EmitFunction6sval_uS__140:
	mov [esp], eax
	call _Z20SL_RemoveRefToStringj
	jmp _Z12EmitFunction6sval_uS__280


;EmitCall(sval_u, sval_u, unsigned char, scr_block_s*)
_Z8EmitCall6sval_uS_hP11scr_block_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov [ebp-0x4c], eax
	mov [ebp-0x50], edx
	mov [ebp-0x51], cl
	cmp dword [eax], 0x1a
	jz _Z8EmitCall6sval_uS_hP11scr_block_s_10
	mov edx, eax
	cmp dword [edx], 0x1a
	jz _Z8EmitCall6sval_uS_hP11scr_block_s_20
_Z8EmitCall6sval_uS_hP11scr_block_s_120:
	mov eax, [ebp-0x50]
	mov ebx, [eax]
	test ebx, ebx
	jz _Z8EmitCall6sval_uS_hP11scr_block_s_30
	xor esi, esi
	lea edi, [ebp-0x34]
	jmp _Z8EmitCall6sval_uS_hP11scr_block_s_40
_Z8EmitCall6sval_uS_hP11scr_block_s_60:
	add esi, 0x1
	mov ebx, [ebx+0x4]
	test ebx, ebx
	jz _Z8EmitCall6sval_uS_hP11scr_block_s_50
_Z8EmitCall6sval_uS_hP11scr_block_s_40:
	mov eax, [ebx]
	mov eax, [eax]
	mov ecx, [ebp+0x8]
	mov edx, edi
	call _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s
	test al, al
	jz _Z8EmitCall6sval_uS_hP11scr_block_s_60
	mov eax, edi
	call _Z9EmitValueP20VariableCompileValue
	add esi, 0x1
	mov ebx, [ebx+0x4]
	test ebx, ebx
	jnz _Z8EmitCall6sval_uS_hP11scr_block_s_40
_Z8EmitCall6sval_uS_hP11scr_block_s_50:
	mov edx, [ebp+0x8]
	mov [esp], edx
	xor ecx, ecx
	mov edx, esi
	mov eax, [ebp-0x4c]
	call _Z20EmitPostFunctionCall6sval_uihP11scr_block_s
	mov eax, scrVarPub
	cmp byte [eax+0x6], 0x0
	jnz _Z8EmitCall6sval_uS_hP11scr_block_s_70
_Z8EmitCall6sval_uS_hP11scr_block_s_90:
	cmp byte [ebp-0x51], 0x0
	jz _Z8EmitCall6sval_uS_hP11scr_block_s_80
	xor ecx, ecx
	mov edx, 0xffffffff
	mov eax, 0x58
	call _Z10EmitOpcodejii
_Z8EmitCall6sval_uS_hP11scr_block_s_80:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z8EmitCall6sval_uS_hP11scr_block_s_70:
	mov eax, [ebp-0x50]
	mov ebx, [eax]
	test ebx, ebx
	jz _Z8EmitCall6sval_uS_hP11scr_block_s_90
_Z8EmitCall6sval_uS_hP11scr_block_s_100:
	mov dword [esp+0x4], 0x0
	mov eax, [ebx]
	mov eax, [eax+0x4]
	mov [esp], eax
	call _Z12AddOpcodePosji
	mov ebx, [ebx+0x4]
	test ebx, ebx
	jnz _Z8EmitCall6sval_uS_hP11scr_block_s_100
	jmp _Z8EmitCall6sval_uS_hP11scr_block_s_90
_Z8EmitCall6sval_uS_hP11scr_block_s_30:
	xor esi, esi
	mov edx, [ebp+0x8]
	mov [esp], edx
	xor ecx, ecx
	mov edx, esi
	mov eax, [ebp-0x4c]
	call _Z20EmitPostFunctionCall6sval_uihP11scr_block_s
	mov eax, scrVarPub
	cmp byte [eax+0x6], 0x0
	jz _Z8EmitCall6sval_uS_hP11scr_block_s_90
	jmp _Z8EmitCall6sval_uS_hP11scr_block_s_70
_Z8EmitCall6sval_uS_hP11scr_block_s_10:
	mov ebx, [eax+0x4]
	cmp dword [ebx], 0x12
	jz _Z8EmitCall6sval_uS_hP11scr_block_s_110
_Z8EmitCall6sval_uS_hP11scr_block_s_130:
	mov edx, [ebp-0x4c]
	cmp dword [edx], 0x1a
	jnz _Z8EmitCall6sval_uS_hP11scr_block_s_120
_Z8EmitCall6sval_uS_hP11scr_block_s_20:
	xor ecx, ecx
	mov edx, 0x1
	mov eax, 0x4e
	call _Z10EmitOpcodejii
	jmp _Z8EmitCall6sval_uS_hP11scr_block_s_120
_Z8EmitCall6sval_uS_hP11scr_block_s_110:
	mov ebx, [ebx+0x4]
	cmp dword [ebx], 0x14
	jnz _Z8EmitCall6sval_uS_hP11scr_block_s_130
	mov eax, [ebx+0x4]
	mov [esp+0x4], eax
	mov eax, [scrCompileGlob+0x8]
	mov [esp], eax
	call _Z12FindVariablejj
	test eax, eax
	jnz _Z8EmitCall6sval_uS_hP11scr_block_s_130
	mov esi, [ebx+0x4]
	test esi, esi
	jz _Z8EmitCall6sval_uS_hP11scr_block_s_130
	mov [esp], esi
	call _Z18SL_ConvertToStringj
	mov [ebp-0x1c], eax
	mov eax, [ebp-0x4c]
	mov eax, [eax+0x8]
	mov [ebp-0x48], eax
	mov [esp+0x4], esi
	mov eax, [scrCompilePub+0x10]
	mov [esp], eax
	call _Z12FindVariablejj
	test eax, eax
	jz _Z8EmitCall6sval_uS_hP11scr_block_s_140
	mov [esp], eax
	call _Z16Scr_EvalVariablej
	mov [ebp-0x28], eax
	mov [ebp-0x24], edx
	xor eax, eax
	cmp dword [ebp-0x24], 0x7
	setnz al
	mov [ebp-0x20], eax
	mov edx, [ebp-0x28]
	mov [ebp-0x40], edx
_Z8EmitCall6sval_uS_hP11scr_block_s_200:
	mov ebx, [ebp-0x40]
	test ebx, ebx
	jz _Z8EmitCall6sval_uS_hP11scr_block_s_130
	cmp dword [ebp-0x20], 0x1
	jz _Z8EmitCall6sval_uS_hP11scr_block_s_150
	mov dword [ebp-0x3c], 0x0
_Z8EmitCall6sval_uS_hP11scr_block_s_370:
	mov edx, [ebp-0x50]
	mov ebx, [edx]
	test ebx, ebx
	jz _Z8EmitCall6sval_uS_hP11scr_block_s_160
	mov dword [ebp-0x44], 0x0
	lea edi, [ebp-0x34]
	jmp _Z8EmitCall6sval_uS_hP11scr_block_s_170
_Z8EmitCall6sval_uS_hP11scr_block_s_190:
	add dword [ebp-0x44], 0x1
	mov ebx, [ebx+0x4]
	test ebx, ebx
	jz _Z8EmitCall6sval_uS_hP11scr_block_s_180
_Z8EmitCall6sval_uS_hP11scr_block_s_170:
	mov eax, [ebx]
	mov eax, [eax]
	mov ecx, [ebp+0x8]
	mov edx, edi
	call _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s
	test al, al
	jz _Z8EmitCall6sval_uS_hP11scr_block_s_190
	mov eax, edi
	call _Z9EmitValueP20VariableCompileValue
	jmp _Z8EmitCall6sval_uS_hP11scr_block_s_190
_Z8EmitCall6sval_uS_hP11scr_block_s_140:
	mov dword [ebp-0x20], 0x0
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call _Z15Scr_GetFunctionPPKcPi
	mov [ebp-0x40], eax
	mov [esp+0x4], esi
	mov eax, [scrCompilePub+0x10]
	mov [esp], eax
	call _Z14GetNewVariablejj
	cmp dword [ebp-0x20], 0x1
	sbb edx, edx
	and edx, 0xfffffffb
	add edx, 0xc
	mov [ebp-0x24], edx
	mov edx, [ebp-0x40]
	mov [ebp-0x28], edx
	lea edx, [ebp-0x28]
	mov [esp+0x4], edx
	mov [esp], eax
	call _Z16SetVariableValuejP13VariableValue
	jmp _Z8EmitCall6sval_uS_hP11scr_block_s_200
_Z8EmitCall6sval_uS_hP11scr_block_s_180:
	cmp dword [ebp-0x44], 0xff
	jg _Z8EmitCall6sval_uS_hP11scr_block_s_210
	mov bl, 0x1
	sub ebx, [ebp-0x44]
_Z8EmitCall6sval_uS_hP11scr_block_s_350:
	cmp byte [scrCompileGlob+0x1c], 0x0
	jnz _Z8EmitCall6sval_uS_hP11scr_block_s_220
	mov [esp], esi
	call _Z20SL_RemoveRefToStringj
_Z8EmitCall6sval_uS_hP11scr_block_s_220:
	cmp dword [ebp-0x44], 0x5
	jle _Z8EmitCall6sval_uS_hP11scr_block_s_230
	mov esi, 0x44
_Z8EmitCall6sval_uS_hP11scr_block_s_340:
	mov ecx, 0x1
	mov edx, ebx
	mov eax, esi
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x9
	mov edx, [ebp-0x48]
	mov [esp], edx
	call _Z12AddOpcodePosji
	cmp esi, 0x44
	jz _Z8EmitCall6sval_uS_hP11scr_block_s_240
_Z8EmitCall6sval_uS_hP11scr_block_s_420:
	mov edx, [scrCompilePub+0x20030]
	test edx, edx
	jg _Z8EmitCall6sval_uS_hP11scr_block_s_250
	xor ebx, ebx
_Z8EmitCall6sval_uS_hP11scr_block_s_410:
	cmp edx, 0x400
	jz _Z8EmitCall6sval_uS_hP11scr_block_s_260
_Z8EmitCall6sval_uS_hP11scr_block_s_400:
	mov eax, [ebp-0x40]
	mov [edx*4+scrCompilePub+0x20034], eax
	lea eax, [edx+0x1]
	mov [scrCompilePub+0x20030], eax
_Z8EmitCall6sval_uS_hP11scr_block_s_330:
	mov dword [esp], 0x2
	call _Z15TempMallocAligni
	mov [scrCompileGlob], eax
	mov [eax], bx
	mov eax, scrVarPub
	cmp byte [eax+0x6], 0x0
	jz _Z8EmitCall6sval_uS_hP11scr_block_s_270
	mov edx, [ebp-0x50]
	mov ebx, [edx]
	test ebx, ebx
	jz _Z8EmitCall6sval_uS_hP11scr_block_s_270
_Z8EmitCall6sval_uS_hP11scr_block_s_280:
	mov dword [esp+0x4], 0x0
	mov eax, [ebx]
	mov eax, [eax+0x4]
	mov [esp], eax
	call _Z12AddOpcodePosji
	mov ebx, [ebx+0x4]
	test ebx, ebx
	jnz _Z8EmitCall6sval_uS_hP11scr_block_s_280
_Z8EmitCall6sval_uS_hP11scr_block_s_270:
	cmp byte [ebp-0x51], 0x0
	jz _Z8EmitCall6sval_uS_hP11scr_block_s_290
	xor ecx, ecx
	mov edx, 0xffffffff
	mov eax, 0x58
	call _Z10EmitOpcodejii
_Z8EmitCall6sval_uS_hP11scr_block_s_290:
	cmp dword [ebp-0x20], 0x1
	jnz _Z8EmitCall6sval_uS_hP11scr_block_s_80
	mov dword [scrCompilePub+0x20024], 0x0
	mov eax, scrVarPub
	cmp byte [eax+0x7], 0x0
	jnz _Z8EmitCall6sval_uS_hP11scr_block_s_80
	mov eax, [ebp-0x3c]
	mov [esp], eax
	call _Z16TempMemorySetPosPc
	jmp _Z8EmitCall6sval_uS_hP11scr_block_s_80
_Z8EmitCall6sval_uS_hP11scr_block_s_250:
	mov eax, [ebp-0x40]
	cmp eax, [scrCompilePub+0x20034]
	jz _Z8EmitCall6sval_uS_hP11scr_block_s_300
	xor ebx, ebx
	mov ecx, scrCompilePub
_Z8EmitCall6sval_uS_hP11scr_block_s_320:
	add ebx, 0x1
	cmp edx, ebx
	jz _Z8EmitCall6sval_uS_hP11scr_block_s_310
	mov eax, [ecx+0x20038]
	add ecx, 0x4
	cmp [ebp-0x40], eax
	jnz _Z8EmitCall6sval_uS_hP11scr_block_s_320
	jmp _Z8EmitCall6sval_uS_hP11scr_block_s_330
_Z8EmitCall6sval_uS_hP11scr_block_s_230:
	mov esi, [ebp-0x44]
	add esi, 0x3e
	jmp _Z8EmitCall6sval_uS_hP11scr_block_s_340
_Z8EmitCall6sval_uS_hP11scr_block_s_160:
	mov dword [ebp-0x44], 0x0
	mov ebx, 0x1
	jmp _Z8EmitCall6sval_uS_hP11scr_block_s_350
_Z8EmitCall6sval_uS_hP11scr_block_s_150:
	mov ecx, [scrCompilePub+0x20024]
	test ecx, ecx
	jz _Z8EmitCall6sval_uS_hP11scr_block_s_360
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x3c], 0x0
_Z8EmitCall6sval_uS_hP11scr_block_s_390:
	cmp dword [ebp-0x20], 0x1
	jnz _Z8EmitCall6sval_uS_hP11scr_block_s_370
	cmp byte [ebp-0x51], 0x0
	jnz _Z8EmitCall6sval_uS_hP11scr_block_s_370
	mov dword [esp+0x4], _cstring_return_value_of_
	mov eax, [ebp-0x48]
	mov [esp], eax
	call CompileError
	jmp _Z8EmitCall6sval_uS_hP11scr_block_s_80
_Z8EmitCall6sval_uS_hP11scr_block_s_210:
	mov dword [esp+0x4], _cstring_parameter_count_
	mov eax, [ebp-0x48]
	mov [esp], eax
	call CompileError
	jmp _Z8EmitCall6sval_uS_hP11scr_block_s_80
_Z8EmitCall6sval_uS_hP11scr_block_s_360:
	mov eax, scrVarPub
	cmp byte [eax+0x7], 0x0
	jz _Z8EmitCall6sval_uS_hP11scr_block_s_380
	mov dword [scrCompilePub+0x20024], 0x1
	mov dword [ebp-0x3c], 0x0
_Z8EmitCall6sval_uS_hP11scr_block_s_430:
	mov dword [ebp-0x20], 0x1
	jmp _Z8EmitCall6sval_uS_hP11scr_block_s_390
_Z8EmitCall6sval_uS_hP11scr_block_s_260:
	mov dword [esp+0x4], _cstring_scr_func_table_s
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov edx, [scrCompilePub+0x20030]
	jmp _Z8EmitCall6sval_uS_hP11scr_block_s_400
_Z8EmitCall6sval_uS_hP11scr_block_s_310:
	mov ebx, edx
	jmp _Z8EmitCall6sval_uS_hP11scr_block_s_410
_Z8EmitCall6sval_uS_hP11scr_block_s_300:
	xor ebx, ebx
	jmp _Z8EmitCall6sval_uS_hP11scr_block_s_330
_Z8EmitCall6sval_uS_hP11scr_block_s_240:
	mov dword [esp], 0x1
	call _Z10TempMalloci
	mov [scrCompileGlob], eax
	movzx edx, byte [ebp-0x44]
	mov [eax], dl
	jmp _Z8EmitCall6sval_uS_hP11scr_block_s_420
_Z8EmitCall6sval_uS_hP11scr_block_s_380:
	mov dword [esp], 0x0
	call _Z10TempMalloci
	mov [ebp-0x3c], eax
	mov dword [scrCompilePub+0x20024], 0x2
	jmp _Z8EmitCall6sval_uS_hP11scr_block_s_430
	nop


;EmitOrEvalExpression(sval_u, VariableCompileValue*, scr_block_s*)
_Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s:
_Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_20:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov ebx, eax
	mov edi, edx
	mov esi, ecx
	mov eax, [eax]
	sub eax, 0x6
	cmp eax, 0x2d
	ja _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	jmp dword [eax*4+_Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_jumptab_0]
_Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_270:
	mov eax, [ebx+0x4]
	lea edi, [ebp-0x24]
	mov edx, edi
	call _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_20
	test al, al
	jnz _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_30
_Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_190:
	mov ebx, [ebx+0x8]
	mov [ebp-0x54], ebx
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x5d
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x0
	mov edx, [ebp-0x54]
	mov [esp], edx
	call _Z12AddOpcodePosji
_Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_10:
	xor eax, eax
_Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_40:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_220:
	mov eax, [ebx+0x4]
	call _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s
	movzx eax, al
	jmp _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_40
_Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_260:
	mov eax, [ebx+0x4]
	lea edi, [ebp-0x3c]
	mov edx, edi
	call _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_20
	test al, al
	jnz _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_50
_Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_180:
	mov ebx, [ebx+0x8]
	mov [ebp-0x54], ebx
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x5c
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x54]
	mov [esp], eax
	call _Z12AddOpcodePosji
	xor eax, eax
	jmp _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_40
_Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_250:
	mov eax, [ebx+0x10]
	mov [ebp-0x5c], eax
	mov edx, [ebx+0xc]
	mov [ebp-0x58], edx
	mov eax, [ebx+0x8]
	mov [ebp-0x54], eax
	mov eax, [ebx+0x4]
	lea edx, [ebp-0x24]
	call _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_20
	test al, al
	jz _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_60
	mov ebx, [scrCompilePub]
	cmp ebx, 0x1f
	jg _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_70
	mov ecx, scrCompileGlob+0x50
	lea edx, [ebx+ebx*2]
	shl edx, 0x2
	mov eax, [ebp-0x24]
	mov [edx+ecx+0x8], eax
	mov eax, [ebp-0x20]
	mov [edx+ecx+0xc], eax
	mov eax, [ebp-0x1c]
	mov [edx+ecx+0x10], eax
	lea eax, [ebx+0x1]
	mov [scrCompilePub], eax
_Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_130:
	lea ebx, [ebp-0x30]
	mov ecx, esi
	mov edx, ebx
	mov eax, [ebp-0x54]
	call _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_20
	test al, al
	jnz _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_80
_Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_170:
	movsx eax, byte [ebp-0x58]
	xor ecx, ecx
	mov edx, 0xffffffff
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x0
	mov edx, [ebp-0x5c]
	mov [esp], edx
	call _Z12AddOpcodePosji
	xor eax, eax
	movzx eax, al
	jmp _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_40
_Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_240:
	mov eax, [ebx+0x10]
	mov [ebp-0x5c], eax
	mov edx, [ebx+0xc]
	mov [ebp-0x58], edx
	mov eax, [ebx+0x8]
	mov [ebp-0x54], eax
	mov eax, [ebx+0x4]
	lea ebx, [ebp-0x24]
	mov edx, ebx
	call _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_20
	test al, al
	jnz _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_90
_Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_140:
	xor ecx, ecx
	mov edx, 0xffffffff
	mov eax, 0x60
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x0
	mov edx, [ebp-0x58]
	mov [esp], edx
	call _Z12AddOpcodePosji
	mov dword [esp], 0x2
	call _Z15TempMallocAligni
	mov [scrCompileGlob], eax
	mov word [eax], 0x0
	mov eax, [scrCompileGlob]
	mov [ebp-0x4c], eax
	mov dword [esp], 0x0
	call _Z10TempMalloci
	mov edi, eax
	mov ecx, esi
	mov edx, ebx
	mov eax, [ebp-0x54]
	call _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_20
	test al, al
	jnz _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_100
_Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_160:
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x5b
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x0
	mov edx, [ebp-0x5c]
	mov [esp], edx
	call _Z12AddOpcodePosji
	mov dword [esp], 0x0
	call _Z10TempMalloci
	sub eax, edi
	mov edx, [ebp-0x4c]
	mov [edx], ax
	xor eax, eax
	jmp _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_40
_Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_230:
	mov eax, [ebx+0x10]
	mov [ebp-0x5c], eax
	mov edx, [ebx+0xc]
	mov [ebp-0x58], edx
	mov eax, [ebx+0x8]
	mov [ebp-0x54], eax
	mov eax, [ebx+0x4]
	lea ebx, [ebp-0x3c]
	mov edx, ebx
	call _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_20
	test al, al
	jnz _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_110
_Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_150:
	xor ecx, ecx
	mov edx, 0xffffffff
	mov eax, 0x61
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x0
	mov edx, [ebp-0x58]
	mov [esp], edx
	call _Z12AddOpcodePosji
	mov dword [esp], 0x2
	call _Z15TempMallocAligni
	mov [scrCompileGlob], eax
	mov word [eax], 0x0
	mov eax, [scrCompileGlob]
	mov [ebp-0x50], eax
	mov dword [esp], 0x0
	call _Z10TempMalloci
	mov edi, eax
	lea ebx, [ebp-0x24]
	mov ecx, esi
	mov edx, ebx
	mov eax, [ebp-0x54]
	call _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_20
	test al, al
	jnz _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_120
_Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_200:
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x5b
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x0
	mov edx, [ebp-0x5c]
	mov [esp], edx
	call _Z12AddOpcodePosji
	mov dword [esp], 0x0
	call _Z10TempMalloci
	sub eax, edi
	mov edx, [ebp-0x50]
	mov [edx], ax
	xor eax, eax
	jmp _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_40
_Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_70:
	mov dword [esp+0x4], _cstring_value_stack_size
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call CompileError
	jmp _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_130
_Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_90:
	mov eax, ebx
	call _Z9EmitValueP20VariableCompileValue
	jmp _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_140
_Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_110:
	mov eax, ebx
	call _Z9EmitValueP20VariableCompileValue
	jmp _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_150
_Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_100:
	mov eax, ebx
	call _Z9EmitValueP20VariableCompileValue
	jmp _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_160
_Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_60:
	lea ebx, [ebp-0x3c]
	mov ecx, esi
	mov edx, ebx
	mov eax, [ebp-0x54]
	call _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_20
	test al, al
	jz _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_170
	mov eax, ebx
	call _Z9EmitValueP20VariableCompileValue
	jmp _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_170
_Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_50:
	mov eax, edi
	call _Z9EmitValueP20VariableCompileValue
	jmp _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_180
_Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_30:
	mov eax, edi
	call _Z9EmitValueP20VariableCompileValue
	jmp _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_190
_Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_120:
	mov eax, ebx
	call _Z9EmitValueP20VariableCompileValue
	jmp _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_200
_Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_80:
	sub dword [scrCompilePub], 0x1
	mov [esp+0x8], ebx
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov edx, [ebp-0x58]
	mov [esp], edx
	call _Z22Scr_EvalBinaryOperatoriP13VariableValueS0_
	mov eax, scrVarPub
	mov eax, [eax+0xc]
	test eax, eax
	jz _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_210
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s
	mov eax, [ebp-0x5c]
	mov [esp], eax
	call CompileError
	xor eax, eax
	movzx eax, al
	jmp _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_40
_Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_210:
	mov eax, [ebp-0x24]
	mov edx, [ebp-0x20]
	mov [edi], eax
	mov [edi+0x4], edx
	mov edx, [ebp-0x5c]
	mov [edi+0x8], edx
	mov eax, 0x1
	movzx eax, al
	jmp _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_40
	nop
	
	
_Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_jumptab_0:
	dd _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_220
	dd _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_230
	dd _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_240
	dd _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_250
	dd _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_260
	dd _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s_270


;EmitPostFunctionCall(sval_u, int, unsigned char, scr_block_s*)
_Z20EmitPostFunctionCall6sval_uihP11scr_block_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov ebx, edx
	mov edx, [eax]
	cmp edx, 0x1a
	jz _Z20EmitPostFunctionCall6sval_uihP11scr_block_s_10
	cmp edx, 0x1e
	jz _Z20EmitPostFunctionCall6sval_uihP11scr_block_s_20
_Z20EmitPostFunctionCall6sval_uihP11scr_block_s_40:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20EmitPostFunctionCall6sval_uihP11scr_block_s_10:
	mov edi, [eax+0x8]
	mov eax, [eax+0x4]
	mov edx, [eax]
	cmp edx, 0x12
	jz _Z20EmitPostFunctionCall6sval_uihP11scr_block_s_30
	cmp edx, 0x16
	jnz _Z20EmitPostFunctionCall6sval_uihP11scr_block_s_40
	mov edx, [eax+0x8]
	mov [ebp-0x38], edx
	mov esi, [eax+0x4]
	mov [ebp-0x31], cl
	mov ecx, [ebp+0x8]
	lea edx, [ebp-0x24]
	mov eax, esi
	call _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s
	test al, al
	jnz _Z20EmitPostFunctionCall6sval_uihP11scr_block_s_50
_Z20EmitPostFunctionCall6sval_uihP11scr_block_s_150:
	cmp byte [ebp-0x31], 0x0
	jnz _Z20EmitPostFunctionCall6sval_uihP11scr_block_s_60
	not ebx
	mov ecx, 0x3
	mov edx, ebx
	mov eax, 0x51
	call _Z10EmitOpcodejii
_Z20EmitPostFunctionCall6sval_uihP11scr_block_s_130:
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x38]
	mov [esp], eax
	call _Z12AddOpcodePosji
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	call _Z12AddOpcodePosji
	jmp _Z20EmitPostFunctionCall6sval_uihP11scr_block_s_40
_Z20EmitPostFunctionCall6sval_uihP11scr_block_s_20:
	mov edx, [eax+0xc]
	mov [ebp-0x3c], edx
	mov edi, [eax+0x8]
	mov eax, [eax+0x4]
	mov edx, [eax]
	cmp edx, 0x12
	jz _Z20EmitPostFunctionCall6sval_uihP11scr_block_s_70
	cmp edx, 0x16
	jz _Z20EmitPostFunctionCall6sval_uihP11scr_block_s_80
_Z20EmitPostFunctionCall6sval_uihP11scr_block_s_100:
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call _Z12AddOpcodePosji
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20EmitPostFunctionCall6sval_uihP11scr_block_s_70:
	mov esi, [eax+0x4]
	test cl, cl
	jnz _Z20EmitPostFunctionCall6sval_uihP11scr_block_s_90
	mov edx, 0x1
	sub edx, ebx
	mov ecx, 0x2
	mov eax, 0x54
	call _Z10EmitOpcodejii
_Z20EmitPostFunctionCall6sval_uihP11scr_block_s_140:
	mov dword [esp+0x4], 0x3
	mov eax, [ebp-0x3c]
	mov [esp], eax
	call _Z12AddOpcodePosji
	mov edx, [ebp-0x3c]
	mov eax, esi
	call _Z12EmitFunction6sval_uS_
	mov dword [esp], 0x4
	call _Z15TempMallocAligni
	mov [scrCompileGlob], eax
	mov [eax], ebx
	jmp _Z20EmitPostFunctionCall6sval_uihP11scr_block_s_100
_Z20EmitPostFunctionCall6sval_uihP11scr_block_s_30:
	mov esi, [eax+0x4]
	test cl, cl
	jnz _Z20EmitPostFunctionCall6sval_uihP11scr_block_s_110
	neg ebx
	mov ecx, 0x3
	mov edx, ebx
	mov eax, 0x50
	call _Z10EmitOpcodejii
_Z20EmitPostFunctionCall6sval_uihP11scr_block_s_120:
	mov dword [esp+0x4], 0x3
	mov [esp], edi
	call _Z12AddOpcodePosji
	mov edx, edi
	mov eax, esi
	call _Z12EmitFunction6sval_uS_
	jmp _Z20EmitPostFunctionCall6sval_uihP11scr_block_s_40
_Z20EmitPostFunctionCall6sval_uihP11scr_block_s_110:
	not ebx
	mov ecx, 0x3
	mov edx, ebx
	mov eax, 0x52
	call _Z10EmitOpcodejii
	jmp _Z20EmitPostFunctionCall6sval_uihP11scr_block_s_120
_Z20EmitPostFunctionCall6sval_uihP11scr_block_s_60:
	neg ebx
	lea edx, [ebx-0x2]
	mov ecx, 0x3
	mov eax, 0x53
	call _Z10EmitOpcodejii
	jmp _Z20EmitPostFunctionCall6sval_uihP11scr_block_s_130
_Z20EmitPostFunctionCall6sval_uihP11scr_block_s_90:
	mov edx, ebx
	neg edx
	mov ecx, 0x2
	mov eax, 0x56
	call _Z10EmitOpcodejii
	jmp _Z20EmitPostFunctionCall6sval_uihP11scr_block_s_140
_Z20EmitPostFunctionCall6sval_uihP11scr_block_s_50:
	lea eax, [ebp-0x24]
	call _Z9EmitValueP20VariableCompileValue
	jmp _Z20EmitPostFunctionCall6sval_uihP11scr_block_s_150
_Z20EmitPostFunctionCall6sval_uihP11scr_block_s_80:
	mov edx, [eax+0x8]
	mov [ebp-0x30], edx
	mov esi, [eax+0x4]
	mov [ebp-0x29], cl
	mov ecx, [ebp+0x8]
	lea edx, [ebp-0x24]
	mov eax, esi
	call _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s
	test al, al
	jnz _Z20EmitPostFunctionCall6sval_uihP11scr_block_s_160
_Z20EmitPostFunctionCall6sval_uihP11scr_block_s_190:
	cmp byte [ebp-0x29], 0x0
	jnz _Z20EmitPostFunctionCall6sval_uihP11scr_block_s_170
	mov edx, ebx
	neg edx
	mov ecx, 0x2
	mov eax, 0x55
	call _Z10EmitOpcodejii
_Z20EmitPostFunctionCall6sval_uihP11scr_block_s_180:
	mov dword [esp+0x4], 0x1
	mov eax, [ebp-0x30]
	mov [esp], eax
	call _Z12AddOpcodePosji
	mov dword [esp], 0x4
	call _Z15TempMallocAligni
	mov [scrCompileGlob], eax
	mov [eax], ebx
	jmp _Z20EmitPostFunctionCall6sval_uihP11scr_block_s_100
_Z20EmitPostFunctionCall6sval_uihP11scr_block_s_170:
	mov edx, ebx
	not edx
	mov ecx, 0x2
	mov eax, 0x57
	call _Z10EmitOpcodejii
	jmp _Z20EmitPostFunctionCall6sval_uihP11scr_block_s_180
_Z20EmitPostFunctionCall6sval_uihP11scr_block_s_160:
	lea eax, [ebp-0x24]
	call _Z9EmitValueP20VariableCompileValue
	jmp _Z20EmitPostFunctionCall6sval_uihP11scr_block_s_190
	nop


;EmitOrEvalPrimitiveExpression(sval_u, VariableCompileValue*, scr_block_s*)
_Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s:
_Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_150:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov esi, edx
	mov ebx, ecx
	mov edx, [eax]
	sub edx, 0x11
	cmp edx, 0x3a
	ja _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	jmp dword [edx*4+_Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_jumptab_0]
_Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_10:
	mov edx, esi
	call _Z23EvalPrimitiveExpression6sval_uP20VariableCompileValue
_Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_200:
	movzx eax, al
_Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_20:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_300:
	mov edi, [eax+0x4]
	mov edx, ecx
	mov eax, edi
	call _Z22EmitVariableExpression6sval_uP11scr_block_s
	xor eax, eax
	jmp _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_20
_Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_310:
	mov edx, [eax+0x8]
	mov [ebp-0x48], edx
	mov edi, [eax+0x4]
	xor ecx, ecx
	mov edx, 0x1
	mov eax, 0x15
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x3
	mov eax, [ebp-0x48]
	mov [esp], eax
	call _Z12AddOpcodePosji
	mov edx, [ebp-0x48]
	mov eax, edi
	call _Z12EmitFunction6sval_uS_
	xor eax, eax
	jmp _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_20
_Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_320:
	mov edi, [eax+0x4]
	mov eax, [edi]
	cmp eax, 0x17
	jz _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_30
	cmp eax, 0x18
	jz _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_40
_Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_190:
	xor eax, eax
_Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_50:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_330:
	mov edi, [eax+0x4]
	xor ecx, ecx
	mov edx, 0x1
	mov eax, 0xf
_Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_60:
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	call _Z12AddOpcodePosji
	xor eax, eax
	jmp _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_50
_Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_340:
	mov edi, [eax+0x4]
	xor ecx, ecx
	mov edx, 0x1
	mov eax, 0x10
	jmp _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_60
_Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_350:
	mov edi, [eax+0x4]
	xor ecx, ecx
	mov edx, 0x1
	mov eax, 0x11
	jmp _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_60
_Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_360:
	mov edi, [eax+0x4]
	xor ecx, ecx
	mov edx, 0x1
	mov eax, 0x12
	jmp _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_60
_Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_370:
	mov edx, [eax+0x8]
	mov [ebp-0x48], edx
	mov edi, [eax+0x4]
	mov eax, [edi]
	mov edx, eax
	test eax, eax
	jz _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_70
	xor ecx, ecx
_Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_80:
	add ecx, 0x1
	mov edx, [edx+0x4]
	test edx, edx
	jnz _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_80
	cmp ecx, 0x1
	jz _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_90
	cmp ecx, 0x3
	jnz _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_70
	mov [ebp-0x3c], eax
	test eax, eax
	jz _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_100
_Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_140:
	mov edx, [ebp-0x3c]
	mov eax, [edx]
	mov eax, [eax]
	mov ecx, ebx
	lea edx, [ebp-0x24]
	call _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s
	mov [ebp-0x41], al
	test al, al
	jz _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_110
	mov eax, [scrCompilePub]
	mov [ebp-0x40], eax
	cmp eax, 0x1f
	jg _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_120
	mov ecx, scrCompileGlob+0x50
	lea edx, [eax+eax*2]
	shl edx, 0x2
	mov eax, [ebp-0x24]
	mov [edx+ecx+0x8], eax
	mov eax, [ebp-0x20]
	mov [edx+ecx+0xc], eax
	mov eax, [ebp-0x1c]
	mov [edx+ecx+0x10], eax
	mov eax, [ebp-0x40]
	add eax, 0x1
	mov [scrCompilePub], eax
_Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_110:
	mov eax, [ebp-0x3c]
	mov eax, [eax+0x4]
	mov [ebp-0x3c], eax
	test eax, eax
	jz _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_130
	cmp byte [ebp-0x41], 0x0
	jnz _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_140
	mov edx, [ebp-0x3c]
	mov eax, [edx]
	mov eax, [eax]
	mov ecx, ebx
	lea edx, [ebp-0x30]
	call _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s
	test al, al
	jz _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_110
	lea eax, [ebp-0x30]
	call _Z9EmitValueP20VariableCompileValue
	jmp _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_110
_Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_380:
	mov edx, [eax+0x8]
	mov [ebp-0x48], edx
	mov edi, [eax+0x4]
	lea esi, [ebp-0x30]
	mov edx, esi
	mov eax, edi
	call _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_150
	test al, al
	jnz _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_160
_Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_210:
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x76
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x48]
	mov [esp], eax
	call _Z12AddOpcodePosji
	xor eax, eax
	jmp _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_20
_Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_390:
	mov edi, [eax+0x4]
	xor ecx, ecx
	mov edx, 0x1
	mov eax, 0x25
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	call _Z12AddOpcodePosji
	xor eax, eax
	jmp _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_20
_Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_410:
	mov edi, [eax+0x4]
	mov eax, scrAnimPub
	mov eax, [eax+0x414]
	test eax, eax
	jnz _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_170
	mov dword [esp+0x4], _cstring_using_animtree_w
	mov [esp], edi
	call CompileError
	xor eax, eax
	jmp _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_20
_Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_420:
	mov eax, [eax+0xc]
	mov dword [esp+0x4], _cstring_illegal_function
	mov [esp], eax
	call CompileError
	xor eax, eax
	jmp _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_50
_Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_400:
	mov edx, [eax+0x8]
	mov [ebp-0x48], edx
	mov edi, [eax+0x4]
	xor ecx, ecx
	mov edx, 0x1
	mov eax, 0x13
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x1
	mov eax, [ebp-0x48]
	mov [esp], eax
	call _Z12AddOpcodePosji
	mov dword [esp], 0x4
	call _Z15TempMallocAligni
	mov [scrCompileGlob], eax
	mov dword [eax], 0xffffffff
	cmp dword [scrCompilePub+0x20024], 0x2
	jz _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_180
	mov edx, [ebp-0x48]
	mov [esp+0x8], edx
	mov [esp+0x4], edi
	mov eax, [scrCompileGlob]
	mov [esp], eax
	call _Z17Scr_EmitAnimationPcjj
_Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_180:
	cmp byte [scrCompileGlob+0x1c], 0x0
	jnz _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_190
	mov [esp], edi
	call _Z20SL_RemoveRefToStringj
	xor eax, eax
	jmp _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_50
_Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_40:
	mov eax, [edi+0x10]
	mov ecx, [edi+0xc]
	mov edx, [edi+0x8]
	mov esi, [edi+0x4]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	mov eax, esi
	call _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s
	xor eax, eax
	jmp _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_20
_Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_170:
	mov edx, edi
	call _Z14EmitGetIntegeri6sval_u
	xor eax, eax
	jmp _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_20
_Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_70:
	mov dword [esp+0x4], _cstring_expression_list_
	mov eax, [ebp-0x48]
	mov [esp], eax
	call CompileError
	xor eax, eax
	jmp _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_200
_Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_160:
	mov eax, esi
	call _Z9EmitValueP20VariableCompileValue
	jmp _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_210
_Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_30:
	mov edx, [edi+0x8]
	mov esi, [edi+0x4]
	mov [esp], ecx
	xor ecx, ecx
	mov eax, esi
	call _Z8EmitCall6sval_uS_hP11scr_block_s
	xor eax, eax
	jmp _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_20
_Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_90:
	mov eax, [eax]
	mov eax, [eax]
	mov ecx, ebx
	mov edx, esi
	call _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s
	jmp _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_200
_Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_130:
	cmp byte [ebp-0x41], 0x0
	jz _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_220
_Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_100:
	mov eax, [scrCompilePub]
	sub eax, 0x3
	mov [scrCompilePub], eax
	lea eax, [eax+eax*2]
	lea ecx, [eax*4+scrCompileGlob+0x58]
	xor edi, edi
	lea ebx, [ebp-0x30]
_Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_250:
	mov edx, [ecx+0x4]
	cmp edx, 0x5
	jz _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_230
	cmp edx, 0x6
	jnz _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_240
	cvtsi2ss xmm0, dword [ecx]
	movss [ebx+0x8], xmm0
_Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_260:
	add edi, 0xc
	add ecx, 0xc
	sub ebx, 0x4
	cmp edi, 0x24
	jnz _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_250
	mov dword [esi+0x4], 0x4
	lea edx, [ebp-0x30]
	mov [esp], edx
	call _Z15Scr_AllocVectorPKf
	mov [esi], eax
_Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_290:
	mov eax, [ebp-0x48]
	mov [esi+0x8], eax
	mov eax, 0x1
	jmp _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_200
_Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_230:
	mov eax, [ecx]
	mov [ebx+0x8], eax
	jmp _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_260
_Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_120:
	mov dword [esp+0x4], _cstring_value_stack_size
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call CompileError
	jmp _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_110
_Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_220:
	xor ecx, ecx
	mov edx, 0xfffffffe
	mov eax, 0x7e
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x1
	mov edx, [ebp-0x48]
	mov [esp], edx
	call _Z12AddOpcodePosji
	mov eax, scrVarPub
	cmp byte [eax+0x6], 0x0
	jz _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_270
	mov ebx, [edi]
	test ebx, ebx
	jz _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_270
_Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_280:
	mov dword [esp+0x4], 0x0
	mov eax, [ebx]
	mov eax, [eax+0x4]
	mov [esp], eax
	call _Z12AddOpcodePosji
	mov ebx, [ebx+0x4]
	test ebx, ebx
	jnz _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_280
_Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_270:
	xor eax, eax
	jmp _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_200
_Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_240:
	mov eax, var_typename
	mov eax, [eax+edx*4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_type_s_is_not_a_
	mov eax, [ecx+0x8]
	mov [esp], eax
	call CompileError
	jmp _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_290
	
	
_Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_jumptab_0:
	dd _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_300
	dd _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_310
	dd _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_320
	dd _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_330
	dd _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_340
	dd _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_350
	dd _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_360
	dd _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_370
	dd _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_380
	dd _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_390
	dd _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_400
	dd _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_10
	dd _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_410
	dd _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s_420


;EmitVariableExpression(sval_u, scr_block_s*)
_Z22EmitVariableExpression6sval_uP11scr_block_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov ecx, eax
	mov esi, edx
	mov eax, [eax]
	cmp eax, 0xf
	jz _Z22EmitVariableExpression6sval_uP11scr_block_s_10
	jle _Z22EmitVariableExpression6sval_uP11scr_block_s_20
	cmp eax, 0x35
	jz _Z22EmitVariableExpression6sval_uP11scr_block_s_30
	cmp eax, 0x50
	jz _Z22EmitVariableExpression6sval_uP11scr_block_s_40
_Z22EmitVariableExpression6sval_uP11scr_block_s_60:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22EmitVariableExpression6sval_uP11scr_block_s_20:
	cmp eax, 0x4
	jz _Z22EmitVariableExpression6sval_uP11scr_block_s_50
	cmp eax, 0xd
	jnz _Z22EmitVariableExpression6sval_uP11scr_block_s_60
	mov edx, [ecx+0x10]
	mov [ebp-0x2c], edx
	mov edi, [ecx+0xc]
	mov eax, [ecx+0x8]
	mov [ebp-0x30], eax
	mov ebx, [ecx+0x4]
	mov ecx, esi
	lea edx, [ebp-0x24]
	call _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s
	test al, al
	jnz _Z22EmitVariableExpression6sval_uP11scr_block_s_70
_Z22EmitVariableExpression6sval_uP11scr_block_s_210:
	mov ecx, esi
	lea edx, [ebp-0x24]
	mov eax, ebx
	call _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s
	test al, al
	jnz _Z22EmitVariableExpression6sval_uP11scr_block_s_80
_Z22EmitVariableExpression6sval_uP11scr_block_s_200:
	xor ecx, ecx
	mov edx, 0xffffffff
	mov eax, 0x20
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x0
	mov edx, [ebp-0x2c]
	mov [esp], edx
	call _Z12AddOpcodePosji
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	call _Z12AddOpcodePosji
	jmp _Z22EmitVariableExpression6sval_uP11scr_block_s_60
_Z22EmitVariableExpression6sval_uP11scr_block_s_10:
	mov edi, [ecx+0xc]
	mov eax, [ecx+0x8]
	mov [ebp-0x30], eax
	mov ebx, [ecx+0x4]
	mov ecx, edx
	mov edx, edi
	mov eax, ebx
	call _Z34EmitPrimitiveExpressionFieldObject6sval_uS_P11scr_block_s
	xor ecx, ecx
	mov edx, 0x1
	mov eax, 0x2a
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call _Z12AddOpcodePosji
	mov dword [esp], 0x2
	call _Z15TempMallocAligni
	mov [scrCompileGlob], eax
	cmp dword [scrCompilePub+0x20024], 0x2
	jz _Z22EmitVariableExpression6sval_uP11scr_block_s_90
	cmp byte [scrCompileGlob+0x1c], 0x0
	jnz _Z22EmitVariableExpression6sval_uP11scr_block_s_100
_Z22EmitVariableExpression6sval_uP11scr_block_s_160:
	mov ebx, [scrCompileGlob]
	mov edx, [ebp-0x30]
	mov [esp], edx
	call _Z28SL_TransferToCanonicalStringj
	mov [ebx], ax
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22EmitVariableExpression6sval_uP11scr_block_s_40:
	mov eax, [ecx+0x8]
	mov [ebp-0x30], eax
	mov ebx, [ecx+0x4]
	cmp byte [scrCompilePub+0x20020], 0x0
	jnz _Z22EmitVariableExpression6sval_uP11scr_block_s_110
	mov [esp], ebx
	call _Z18SL_ConvertToStringj
	mov ebx, eax
	movzx eax, byte [eax]
	cmp al, 0x74
	jz _Z22EmitVariableExpression6sval_uP11scr_block_s_120
	cmp al, 0x61
	jz _Z22EmitVariableExpression6sval_uP11scr_block_s_130
	movsx eax, al
	mov [esp], eax
	call _Z24Scr_GetClassnumForCharIdc
	mov esi, eax
	test eax, eax
	js _Z22EmitVariableExpression6sval_uP11scr_block_s_140
	lea eax, [ebx+0x1]
	mov [esp], eax
	call atoi
	mov edi, eax
	test eax, eax
	jnz _Z22EmitVariableExpression6sval_uP11scr_block_s_150
	cmp byte [ebx+0x1], 0x30
	jz _Z22EmitVariableExpression6sval_uP11scr_block_s_150
	mov dword [esp+0x4], _cstring_bad_expression
	mov eax, [ebp-0x30]
	mov [esp], eax
	call CompileError
	jmp _Z22EmitVariableExpression6sval_uP11scr_block_s_60
_Z22EmitVariableExpression6sval_uP11scr_block_s_100:
	mov eax, [ebp-0x30]
	mov [esp], eax
	call _Z17SL_AddRefToStringj
	jmp _Z22EmitVariableExpression6sval_uP11scr_block_s_160
_Z22EmitVariableExpression6sval_uP11scr_block_s_30:
	mov eax, _cstring_self_field_in_as
	cmp byte [scrCompilePub+0x20020], 0x0
	mov edx, _cstring_self_field_can_o
	cmovnz eax, edx
	mov [esp+0x4], eax
	mov eax, [ecx+0x8]
	mov [esp], eax
	call CompileError
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22EmitVariableExpression6sval_uP11scr_block_s_50:
	mov eax, [ecx+0x8]
	mov [ebp-0x30], eax
	mov ebx, [ecx+0x4]
	mov [esp], edx
	xor ecx, ecx
	mov edx, eax
	mov eax, ebx
	call _Z21Scr_FindLocalVarIndexj6sval_uhP11scr_block_s
	mov esi, eax
	cmp eax, 0x5
	jle _Z22EmitVariableExpression6sval_uP11scr_block_s_170
	mov ebx, 0x1e
_Z22EmitVariableExpression6sval_uP11scr_block_s_190:
	xor ecx, ecx
	mov edx, 0x1
	mov eax, ebx
	call _Z10EmitOpcodejii
	cmp ebx, 0x1e
	jz _Z22EmitVariableExpression6sval_uP11scr_block_s_180
_Z22EmitVariableExpression6sval_uP11scr_block_s_220:
	mov dword [esp+0x4], 0x1
	mov eax, [ebp-0x30]
	mov [esp], eax
	call _Z12AddOpcodePosji
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22EmitVariableExpression6sval_uP11scr_block_s_90:
	cmp byte [scrCompileGlob+0x1c], 0x0
	jnz _Z22EmitVariableExpression6sval_uP11scr_block_s_60
	mov edx, [ebp-0x30]
	mov [esp], edx
	call _Z20SL_RemoveRefToStringj
	jmp _Z22EmitVariableExpression6sval_uP11scr_block_s_60
_Z22EmitVariableExpression6sval_uP11scr_block_s_170:
	lea ebx, [eax+0x18]
	jmp _Z22EmitVariableExpression6sval_uP11scr_block_s_190
_Z22EmitVariableExpression6sval_uP11scr_block_s_110:
	mov dword [esp+0x4], _cstring__can_only_be_use
	mov [esp], eax
	call CompileError
	jmp _Z22EmitVariableExpression6sval_uP11scr_block_s_60
_Z22EmitVariableExpression6sval_uP11scr_block_s_80:
	lea eax, [ebp-0x24]
	call _Z9EmitValueP20VariableCompileValue
	jmp _Z22EmitVariableExpression6sval_uP11scr_block_s_200
_Z22EmitVariableExpression6sval_uP11scr_block_s_70:
	lea eax, [ebp-0x24]
	call _Z9EmitValueP20VariableCompileValue
	jmp _Z22EmitVariableExpression6sval_uP11scr_block_s_210
_Z22EmitVariableExpression6sval_uP11scr_block_s_180:
	mov dword [esp], 0x1
	call _Z10TempMalloci
	mov [scrCompileGlob], eax
	mov edx, esi
	mov [eax], dl
	jmp _Z22EmitVariableExpression6sval_uP11scr_block_s_220
_Z22EmitVariableExpression6sval_uP11scr_block_s_150:
	xor ecx, ecx
	mov edx, 0x1
	mov eax, 0x81
	call _Z10EmitOpcodejii
	mov dword [esp], 0x4
	call _Z15TempMallocAligni
	mov [scrCompileGlob], eax
	mov [eax], esi
	mov dword [esp], 0x4
	call _Z15TempMallocAligni
	mov [scrCompileGlob], eax
	mov [eax], edi
	jmp _Z22EmitVariableExpression6sval_uP11scr_block_s_60
_Z22EmitVariableExpression6sval_uP11scr_block_s_140:
	mov dword [esp+0x4], _cstring_bad_expression
	mov edx, [ebp-0x30]
	mov [esp], edx
	call CompileError
	jmp _Z22EmitVariableExpression6sval_uP11scr_block_s_60
_Z22EmitVariableExpression6sval_uP11scr_block_s_130:
	mov dword [esp+0x4], _cstring_argument_express
	mov eax, [ebp-0x30]
	mov [esp], eax
	call CompileError
	jmp _Z22EmitVariableExpression6sval_uP11scr_block_s_60
_Z22EmitVariableExpression6sval_uP11scr_block_s_120:
	lea eax, [ebx+0x1]
	mov [esp], eax
	call atoi
	mov ebx, eax
	lea eax, [eax-0x1]
	cmp eax, 0x7ffe
	ja _Z22EmitVariableExpression6sval_uP11scr_block_s_140
	movzx esi, bx
	mov [esp], esi
	call _Z12IsObjectFreej
	test al, al
	jnz _Z22EmitVariableExpression6sval_uP11scr_block_s_140
	mov [esp], esi
	call _Z13GetObjectTypej
	mov ecx, eax
	cmp eax, 0x16
	ja _Z22EmitVariableExpression6sval_uP11scr_block_s_140
	mov eax, 0x1
	shl eax, cl
	test eax, 0x43c000
	jz _Z22EmitVariableExpression6sval_uP11scr_block_s_140
	xor ecx, ecx
	mov edx, 0x1
	mov eax, 0x82
	call _Z10EmitOpcodejii
	mov dword [esp], 0x2
	call _Z15TempMallocAligni
	mov [scrCompileGlob], eax
	mov [eax], bx
	jmp _Z22EmitVariableExpression6sval_uP11scr_block_s_60
	nop


;EmitMethod(sval_u, sval_u, sval_u, sval_u, unsigned char, scr_block_s*)
_Z10EmitMethod6sval_uS_S_S_hP11scr_block_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov [ebp-0x4c], eax
	mov [ebp-0x50], edx
	mov [ebp-0x54], ecx
	mov edi, [ebp+0x10]
	movzx eax, byte [ebp+0xc]
	mov [ebp-0x55], al
	cmp dword [edx], 0x1a
	jz _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_10
	mov eax, edx
	cmp dword [eax], 0x1a
	jz _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_20
_Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_140:
	mov edx, [ebp-0x54]
	mov ebx, [edx]
	test ebx, ebx
	jz _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_30
	xor esi, esi
	jmp _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_40
_Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_60:
	add esi, 0x1
	mov ebx, [ebx+0x4]
	test ebx, ebx
	jz _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_50
_Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_40:
	mov eax, [ebx]
	mov eax, [eax]
	mov ecx, edi
	lea edx, [ebp-0x34]
	call _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s
	test al, al
	jz _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_60
	lea eax, [ebp-0x34]
	call _Z9EmitValueP20VariableCompileValue
	add esi, 0x1
	mov ebx, [ebx+0x4]
	test ebx, ebx
	jnz _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_40
_Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_50:
	mov ecx, edi
	lea edx, [ebp-0x34]
	mov eax, [ebp-0x4c]
	call _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s
	test al, al
	jnz _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_70
_Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_120:
	mov [esp], edi
	mov ecx, 0x1
	mov edx, esi
	mov eax, [ebp-0x50]
	call _Z20EmitPostFunctionCall6sval_uihP11scr_block_s
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z12AddOpcodePosji
	mov eax, scrVarPub
	cmp byte [eax+0x6], 0x0
	jnz _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_80
_Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_100:
	cmp byte [ebp-0x55], 0x0
	jz _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_90
	xor ecx, ecx
	mov edx, 0xffffffff
	mov eax, 0x58
	call _Z10EmitOpcodejii
_Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_90:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_80:
	mov edx, [ebp-0x54]
	mov ebx, [edx]
	test ebx, ebx
	jz _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_100
_Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_110:
	mov dword [esp+0x4], 0x0
	mov eax, [ebx]
	mov eax, [eax+0x4]
	mov [esp], eax
	call _Z12AddOpcodePosji
	mov ebx, [ebx+0x4]
	test ebx, ebx
	jnz _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_110
	jmp _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_100
_Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_30:
	xor esi, esi
	mov ecx, edi
	lea edx, [ebp-0x34]
	mov eax, [ebp-0x4c]
	call _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s
	test al, al
	jz _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_120
_Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_70:
	lea eax, [ebp-0x34]
	call _Z9EmitValueP20VariableCompileValue
	jmp _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_120
_Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_10:
	mov ebx, [edx+0x4]
	cmp dword [ebx], 0x12
	jz _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_130
_Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_150:
	mov eax, [ebp-0x50]
	cmp dword [eax], 0x1a
	jnz _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_140
_Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_20:
	xor ecx, ecx
	mov edx, 0x1
	mov eax, 0x4e
	call _Z10EmitOpcodejii
	jmp _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_140
_Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_130:
	mov ebx, [ebx+0x4]
	cmp dword [ebx], 0x14
	jnz _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_150
	mov eax, [ebx+0x4]
	mov [esp+0x4], eax
	mov eax, [scrCompileGlob+0x8]
	mov [esp], eax
	call _Z12FindVariablejj
	test eax, eax
	jnz _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_150
	mov ebx, [ebx+0x4]
	mov [ebp-0x44], ebx
	test ebx, ebx
	jz _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_150
	mov [esp], ebx
	call _Z18SL_ConvertToStringj
	mov [ebp-0x20], eax
	mov eax, [ebp-0x50]
	mov eax, [eax+0x8]
	mov [ebp-0x48], eax
	mov edx, [ebp-0x44]
	mov [esp+0x4], edx
	mov eax, [scrCompilePub+0x14]
	mov [esp], eax
	call _Z12FindVariablejj
	test eax, eax
	jz _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_160
	mov [esp], eax
	call _Z16Scr_EvalVariablej
	mov [ebp-0x28], eax
	mov [ebp-0x24], edx
	xor eax, eax
	cmp dword [ebp-0x24], 0x7
	setnz al
	mov [ebp-0x1c], eax
	mov eax, [ebp-0x28]
	mov [ebp-0x40], eax
_Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_320:
	mov eax, [ebp-0x40]
	test eax, eax
	jz _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_150
	cmp dword [ebp-0x1c], 0x1
	jz _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_170
	mov dword [ebp-0x3c], 0x0
_Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_340:
	mov edx, [ebp-0x54]
	mov ebx, [edx]
	test ebx, ebx
	jz _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_180
	xor esi, esi
	jmp _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_190
_Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_210:
	add esi, 0x1
	mov ebx, [ebx+0x4]
	test ebx, ebx
	jz _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_200
_Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_190:
	mov eax, [ebx]
	mov eax, [eax]
	mov ecx, edi
	lea edx, [ebp-0x34]
	call _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s
	test al, al
	jz _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_210
	lea eax, [ebp-0x34]
	call _Z9EmitValueP20VariableCompileValue
	jmp _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_210
_Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_180:
	xor esi, esi
_Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_200:
	mov ecx, edi
	lea edx, [ebp-0x34]
	mov eax, [ebp-0x4c]
	call _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s
	test al, al
	jz _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_220
	lea eax, [ebp-0x34]
	call _Z9EmitValueP20VariableCompileValue
_Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_220:
	cmp esi, 0xff
	jg _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_230
	cmp byte [scrCompileGlob+0x1c], 0x0
	jnz _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_240
	mov edx, [ebp-0x44]
	mov [esp], edx
	call _Z20SL_RemoveRefToStringj
_Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_240:
	cmp esi, 0x5
	jle _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_250
	mov ebx, 0x4b
_Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_400:
	mov edx, esi
	neg edx
	mov ecx, 0x1
	mov eax, ebx
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x9
	mov eax, [ebp-0x48]
	mov [esp], eax
	call _Z12AddOpcodePosji
	cmp ebx, 0x4b
	jz _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_260
_Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_410:
	mov edx, [scrCompilePub+0x20030]
	test edx, edx
	jg _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_270
	xor ebx, ebx
_Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_390:
	cmp edx, 0x400
	jz _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_280
_Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_420:
	mov eax, [ebp-0x40]
	mov [edx*4+scrCompilePub+0x20034], eax
	lea eax, [edx+0x1]
	mov [scrCompilePub+0x20030], eax
_Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_370:
	mov dword [esp], 0x2
	call _Z15TempMallocAligni
	mov [scrCompileGlob], eax
	mov [eax], bx
	mov dword [esp+0x4], 0x0
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z12AddOpcodePosji
	mov eax, scrVarPub
	cmp byte [eax+0x6], 0x0
	jz _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_290
	mov eax, [ebp-0x54]
	mov ebx, [eax]
	test ebx, ebx
	jz _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_290
_Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_300:
	mov dword [esp+0x4], 0x0
	mov eax, [ebx]
	mov eax, [eax+0x4]
	mov [esp], eax
	call _Z12AddOpcodePosji
	mov ebx, [ebx+0x4]
	test ebx, ebx
	jnz _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_300
_Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_290:
	cmp byte [ebp-0x55], 0x0
	jz _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_310
	xor ecx, ecx
	mov edx, 0xffffffff
	mov eax, 0x58
	call _Z10EmitOpcodejii
_Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_310:
	cmp dword [ebp-0x1c], 0x1
	jnz _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_90
	mov dword [scrCompilePub+0x20024], 0x0
	mov eax, scrVarPub
	cmp byte [eax+0x7], 0x0
	jnz _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_90
	mov edx, [ebp-0x3c]
	mov [esp], edx
	call _Z16TempMemorySetPosPc
	jmp _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_90
_Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_160:
	mov dword [ebp-0x1c], 0x0
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z13Scr_GetMethodPPKcPi
	mov [ebp-0x40], eax
	mov edx, [ebp-0x44]
	mov [esp+0x4], edx
	mov eax, [scrCompilePub+0x14]
	mov [esp], eax
	call _Z14GetNewVariablejj
	cmp dword [ebp-0x1c], 0x1
	sbb edx, edx
	and edx, 0xfffffffb
	add edx, 0xc
	mov [ebp-0x24], edx
	mov edx, [ebp-0x40]
	mov [ebp-0x28], edx
	lea edx, [ebp-0x28]
	mov [esp+0x4], edx
	mov [esp], eax
	call _Z16SetVariableValuejP13VariableValue
	jmp _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_320
_Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_230:
	mov dword [esp+0x4], _cstring_parameter_count_
	mov eax, [ebp-0x48]
	mov [esp], eax
	call CompileError
	jmp _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_90
_Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_170:
	mov esi, [scrCompilePub+0x20024]
	test esi, esi
	jz _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_330
	mov dword [ebp-0x1c], 0x0
	mov dword [ebp-0x3c], 0x0
_Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_440:
	cmp dword [ebp-0x1c], 0x1
	jnz _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_340
	cmp byte [ebp-0x55], 0x0
	jnz _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_340
	mov dword [esp+0x4], _cstring_return_value_of_
	mov eax, [ebp-0x48]
	mov [esp], eax
	call CompileError
	jmp _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_90
_Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_270:
	mov eax, [ebp-0x40]
	cmp eax, [scrCompilePub+0x20034]
	jz _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_350
	xor ebx, ebx
	mov ecx, scrCompilePub
	jmp _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_360
_Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_380:
	mov eax, [ecx+0x20038]
	add ecx, 0x4
	cmp [ebp-0x40], eax
	jz _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_370
_Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_360:
	add ebx, 0x1
	cmp ebx, edx
	jnz _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_380
	mov ebx, edx
	jmp _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_390
_Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_250:
	lea ebx, [esi+0x45]
	jmp _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_400
_Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_260:
	mov dword [esp], 0x1
	call _Z10TempMalloci
	mov [scrCompileGlob], eax
	mov edx, esi
	mov [eax], dl
	jmp _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_410
_Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_280:
	mov dword [esp+0x4], _cstring_scr_func_table_s
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov edx, [scrCompilePub+0x20030]
	jmp _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_420
_Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_330:
	mov eax, scrVarPub
	cmp byte [eax+0x7], 0x0
	jz _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_430
	mov dword [scrCompilePub+0x20024], 0x1
	mov dword [ebp-0x3c], 0x0
_Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_450:
	mov dword [ebp-0x1c], 0x1
	jmp _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_440
_Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_350:
	xor ebx, ebx
	jmp _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_370
_Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_430:
	mov dword [esp], 0x0
	call _Z10TempMalloci
	mov [ebp-0x3c], eax
	mov dword [scrCompilePub+0x20024], 0x2
	jmp _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s_450
	nop


;EmitPrimitiveExpressionFieldObject(sval_u, sval_u, scr_block_s*)
_Z34EmitPrimitiveExpressionFieldObject6sval_uS_P11scr_block_s:
_Z34EmitPrimitiveExpressionFieldObject6sval_uS_P11scr_block_s_60:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, eax
	mov eax, [eax]
	sub eax, 0x11
	cmp eax, 0x1d
	ja _Z34EmitPrimitiveExpressionFieldObject6sval_uS_P11scr_block_s_10
	jmp dword [eax*4+_Z34EmitPrimitiveExpressionFieldObject6sval_uS_P11scr_block_s_jumptab_0]
_Z34EmitPrimitiveExpressionFieldObject6sval_uS_P11scr_block_s_120:
	mov esi, [ebx+0x4]
	mov eax, [esi]
	test eax, eax
	jz _Z34EmitPrimitiveExpressionFieldObject6sval_uS_P11scr_block_s_10
	mov ebx, [eax+0x4]
	test ebx, ebx
	jz _Z34EmitPrimitiveExpressionFieldObject6sval_uS_P11scr_block_s_20
_Z34EmitPrimitiveExpressionFieldObject6sval_uS_P11scr_block_s_10:
	mov dword [esp+0x4], _cstring_not_an_object
	mov [esp], edx
	call CompileError
_Z34EmitPrimitiveExpressionFieldObject6sval_uS_P11scr_block_s_30:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z34EmitPrimitiveExpressionFieldObject6sval_uS_P11scr_block_s_70:
	mov esi, [ebx+0x4]
	mov edx, ecx
	mov eax, esi
	call _Z22EmitVariableExpression6sval_uP11scr_block_s
	mov ebx, [ebx+0x8]
_Z34EmitPrimitiveExpressionFieldObject6sval_uS_P11scr_block_s_50:
	xor ecx, ecx
	mov edx, 0xffffffff
	mov eax, 0x59
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call _Z12AddOpcodePosji
	jmp _Z34EmitPrimitiveExpressionFieldObject6sval_uS_P11scr_block_s_30
_Z34EmitPrimitiveExpressionFieldObject6sval_uS_P11scr_block_s_110:
	mov esi, [ebx+0x4]
	xor ecx, ecx
	xor edx, edx
	mov eax, 0xe
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call _Z12AddOpcodePosji
	jmp _Z34EmitPrimitiveExpressionFieldObject6sval_uS_P11scr_block_s_30
_Z34EmitPrimitiveExpressionFieldObject6sval_uS_P11scr_block_s_100:
	mov esi, [ebx+0x4]
	xor ecx, ecx
	xor edx, edx
	mov eax, 0xd
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call _Z12AddOpcodePosji
	jmp _Z34EmitPrimitiveExpressionFieldObject6sval_uS_P11scr_block_s_30
_Z34EmitPrimitiveExpressionFieldObject6sval_uS_P11scr_block_s_90:
	mov esi, [ebx+0x4]
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x26
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call _Z12AddOpcodePosji
	jmp _Z34EmitPrimitiveExpressionFieldObject6sval_uS_P11scr_block_s_30
_Z34EmitPrimitiveExpressionFieldObject6sval_uS_P11scr_block_s_80:
	mov esi, [ebx+0x4]
	mov eax, [esi]
	cmp eax, 0x17
	jz _Z34EmitPrimitiveExpressionFieldObject6sval_uS_P11scr_block_s_40
	cmp eax, 0x18
	jnz _Z34EmitPrimitiveExpressionFieldObject6sval_uS_P11scr_block_s_30
	mov eax, [esi+0x10]
	mov edi, [esi+0xc]
	mov edx, [esi+0x8]
	mov ebx, [esi+0x4]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	mov ecx, edi
	mov eax, ebx
	call _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s
	mov ebx, [esi+0x14]
	jmp _Z34EmitPrimitiveExpressionFieldObject6sval_uS_P11scr_block_s_50
_Z34EmitPrimitiveExpressionFieldObject6sval_uS_P11scr_block_s_20:
	mov eax, [eax]
	mov edx, [eax+0x4]
	mov eax, [eax]
	cmp dword [eax], 0x6
	jnz _Z34EmitPrimitiveExpressionFieldObject6sval_uS_P11scr_block_s_10
	mov edx, [eax+0x8]
	mov eax, [eax+0x4]
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z34EmitPrimitiveExpressionFieldObject6sval_uS_P11scr_block_s_60
_Z34EmitPrimitiveExpressionFieldObject6sval_uS_P11scr_block_s_40:
	mov edx, [esi+0x8]
	mov ebx, [esi+0x4]
	mov [esp], ecx
	xor ecx, ecx
	mov eax, ebx
	call _Z8EmitCall6sval_uS_hP11scr_block_s
	mov edi, [esi+0xc]
	xor ecx, ecx
	mov edx, 0xffffffff
	mov eax, 0x59
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call _Z12AddOpcodePosji
	jmp _Z34EmitPrimitiveExpressionFieldObject6sval_uS_P11scr_block_s_30
	
	
_Z34EmitPrimitiveExpressionFieldObject6sval_uS_P11scr_block_s_jumptab_0:
	dd _Z34EmitPrimitiveExpressionFieldObject6sval_uS_P11scr_block_s_70
	dd _Z34EmitPrimitiveExpressionFieldObject6sval_uS_P11scr_block_s_10
	dd _Z34EmitPrimitiveExpressionFieldObject6sval_uS_P11scr_block_s_80
	dd _Z34EmitPrimitiveExpressionFieldObject6sval_uS_P11scr_block_s_10
	dd _Z34EmitPrimitiveExpressionFieldObject6sval_uS_P11scr_block_s_10
	dd _Z34EmitPrimitiveExpressionFieldObject6sval_uS_P11scr_block_s_10
	dd _Z34EmitPrimitiveExpressionFieldObject6sval_uS_P11scr_block_s_10
	dd _Z34EmitPrimitiveExpressionFieldObject6sval_uS_P11scr_block_s_10
	dd _Z34EmitPrimitiveExpressionFieldObject6sval_uS_P11scr_block_s_10
	dd _Z34EmitPrimitiveExpressionFieldObject6sval_uS_P11scr_block_s_10
	dd _Z34EmitPrimitiveExpressionFieldObject6sval_uS_P11scr_block_s_10
	dd _Z34EmitPrimitiveExpressionFieldObject6sval_uS_P11scr_block_s_10
	dd _Z34EmitPrimitiveExpressionFieldObject6sval_uS_P11scr_block_s_10
	dd _Z34EmitPrimitiveExpressionFieldObject6sval_uS_P11scr_block_s_10
	dd _Z34EmitPrimitiveExpressionFieldObject6sval_uS_P11scr_block_s_10
	dd _Z34EmitPrimitiveExpressionFieldObject6sval_uS_P11scr_block_s_90
	dd _Z34EmitPrimitiveExpressionFieldObject6sval_uS_P11scr_block_s_10
	dd _Z34EmitPrimitiveExpressionFieldObject6sval_uS_P11scr_block_s_100
	dd _Z34EmitPrimitiveExpressionFieldObject6sval_uS_P11scr_block_s_10
	dd _Z34EmitPrimitiveExpressionFieldObject6sval_uS_P11scr_block_s_110
	dd _Z34EmitPrimitiveExpressionFieldObject6sval_uS_P11scr_block_s_10
	dd _Z34EmitPrimitiveExpressionFieldObject6sval_uS_P11scr_block_s_10
	dd _Z34EmitPrimitiveExpressionFieldObject6sval_uS_P11scr_block_s_10
	dd _Z34EmitPrimitiveExpressionFieldObject6sval_uS_P11scr_block_s_10
	dd _Z34EmitPrimitiveExpressionFieldObject6sval_uS_P11scr_block_s_10
	dd _Z34EmitPrimitiveExpressionFieldObject6sval_uS_P11scr_block_s_10
	dd _Z34EmitPrimitiveExpressionFieldObject6sval_uS_P11scr_block_s_10
	dd _Z34EmitPrimitiveExpressionFieldObject6sval_uS_P11scr_block_s_10
	dd _Z34EmitPrimitiveExpressionFieldObject6sval_uS_P11scr_block_s_10
	dd _Z34EmitPrimitiveExpressionFieldObject6sval_uS_P11scr_block_s_120


;EmitVariableExpressionRef(sval_u, scr_block_s*)
_Z25EmitVariableExpressionRef6sval_uP11scr_block_s:
_Z25EmitVariableExpressionRef6sval_uP11scr_block_s_160:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov ecx, eax
	mov esi, edx
	mov eax, [eax]
	cmp eax, 0xf
	jz _Z25EmitVariableExpressionRef6sval_uP11scr_block_s_10
	jle _Z25EmitVariableExpressionRef6sval_uP11scr_block_s_20
	cmp eax, 0x35
	jz _Z25EmitVariableExpressionRef6sval_uP11scr_block_s_30
	cmp eax, 0x50
	jz _Z25EmitVariableExpressionRef6sval_uP11scr_block_s_30
_Z25EmitVariableExpressionRef6sval_uP11scr_block_s_50:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25EmitVariableExpressionRef6sval_uP11scr_block_s_20:
	cmp eax, 0x4
	jz _Z25EmitVariableExpressionRef6sval_uP11scr_block_s_40
	cmp eax, 0xd
	jnz _Z25EmitVariableExpressionRef6sval_uP11scr_block_s_50
	mov eax, [ecx+0x10]
	mov [ebp-0x30], eax
	mov eax, [ecx+0xc]
	mov [ebp-0x2c], eax
	mov edi, [ecx+0x8]
	mov ebx, [ecx+0x4]
	mov ecx, edx
	lea edx, [ebp-0x24]
	mov eax, edi
	call _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s
	test al, al
	jnz _Z25EmitVariableExpressionRef6sval_uP11scr_block_s_60
_Z25EmitVariableExpressionRef6sval_uP11scr_block_s_150:
	mov eax, [ebx]
	cmp eax, 0x11
	jz _Z25EmitVariableExpressionRef6sval_uP11scr_block_s_70
	cmp eax, 0x23
	jz _Z25EmitVariableExpressionRef6sval_uP11scr_block_s_80
	mov dword [esp+0x4], _cstring_not_an_lvalue
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call CompileError
_Z25EmitVariableExpressionRef6sval_uP11scr_block_s_130:
	xor ecx, ecx
	mov edx, 0xffffffff
	mov eax, 0x23
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x30]
	mov [esp], eax
	call _Z12AddOpcodePosji
	mov dword [esp+0x4], 0x1
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call _Z12AddOpcodePosji
	jmp _Z25EmitVariableExpressionRef6sval_uP11scr_block_s_50
_Z25EmitVariableExpressionRef6sval_uP11scr_block_s_10:
	mov eax, [ecx+0xc]
	mov edi, [ecx+0x8]
	mov ebx, [ecx+0x4]
	mov ecx, edx
	mov edx, eax
	mov eax, ebx
	call _Z34EmitPrimitiveExpressionFieldObject6sval_uS_P11scr_block_s
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x2e
	call _Z10EmitOpcodejii
	mov dword [esp], 0x2
	call _Z15TempMallocAligni
	mov [scrCompileGlob], eax
	cmp dword [scrCompilePub+0x20024], 0x2
	jz _Z25EmitVariableExpressionRef6sval_uP11scr_block_s_90
	cmp byte [scrCompileGlob+0x1c], 0x0
	jnz _Z25EmitVariableExpressionRef6sval_uP11scr_block_s_100
_Z25EmitVariableExpressionRef6sval_uP11scr_block_s_110:
	mov ebx, [scrCompileGlob]
	mov [esp], edi
	call _Z28SL_TransferToCanonicalStringj
	mov [ebx], ax
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25EmitVariableExpressionRef6sval_uP11scr_block_s_30:
	mov eax, _cstring_not_an_lvalue
	cmp byte [scrCompilePub+0x20020], 0x0
	mov edx, _cstring__and_self_field_
	cmovnz eax, edx
	mov [esp+0x4], eax
	mov eax, [ecx+0x8]
	mov [esp], eax
	call CompileError
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25EmitVariableExpressionRef6sval_uP11scr_block_s_100:
	mov [esp], edi
	call _Z17SL_AddRefToStringj
	jmp _Z25EmitVariableExpressionRef6sval_uP11scr_block_s_110
_Z25EmitVariableExpressionRef6sval_uP11scr_block_s_40:
	mov edi, [ecx+0x8]
	mov ebx, [ecx+0x4]
	mov [esp], edx
	mov ecx, 0x1
	mov edx, edi
	mov eax, ebx
	call _Z21Scr_FindLocalVarIndexj6sval_uhP11scr_block_s
	mov ebx, eax
	cmp eax, 0x1
	sbb eax, eax
	add eax, 0x37
	xor ecx, ecx
	xor edx, edx
	call _Z10EmitOpcodejii
	test ebx, ebx
	jnz _Z25EmitVariableExpressionRef6sval_uP11scr_block_s_120
_Z25EmitVariableExpressionRef6sval_uP11scr_block_s_140:
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	call _Z12AddOpcodePosji
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25EmitVariableExpressionRef6sval_uP11scr_block_s_90:
	cmp byte [scrCompileGlob+0x1c], 0x0
	jnz _Z25EmitVariableExpressionRef6sval_uP11scr_block_s_50
	mov [esp], edi
	call _Z20SL_RemoveRefToStringj
	jmp _Z25EmitVariableExpressionRef6sval_uP11scr_block_s_50
_Z25EmitVariableExpressionRef6sval_uP11scr_block_s_80:
	mov ebx, [ebx+0x4]
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x14
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	call _Z12AddOpcodePosji
	jmp _Z25EmitVariableExpressionRef6sval_uP11scr_block_s_130
_Z25EmitVariableExpressionRef6sval_uP11scr_block_s_120:
	mov dword [esp], 0x1
	call _Z10TempMalloci
	mov [scrCompileGlob], eax
	mov [eax], bl
	jmp _Z25EmitVariableExpressionRef6sval_uP11scr_block_s_140
_Z25EmitVariableExpressionRef6sval_uP11scr_block_s_60:
	lea eax, [ebp-0x24]
	call _Z9EmitValueP20VariableCompileValue
	jmp _Z25EmitVariableExpressionRef6sval_uP11scr_block_s_150
_Z25EmitVariableExpressionRef6sval_uP11scr_block_s_70:
	mov ebx, [ebx+0x4]
	mov edx, esi
	mov eax, ebx
	call _Z25EmitVariableExpressionRef6sval_uP11scr_block_s_160
	jmp _Z25EmitVariableExpressionRef6sval_uP11scr_block_s_130
	nop


;EmitStatement(sval_u, unsigned char, unsigned int, scr_block_s*)
_Z13EmitStatement6sval_uhjP11scr_block_s:
_Z13EmitStatement6sval_uhjP11scr_block_s_200:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov ebx, eax
	mov esi, ecx
	cmp dword [eax], 0x4e
	ja _Z13EmitStatement6sval_uhjP11scr_block_s_10
	mov eax, [eax]
	jmp dword [eax*4+_Z13EmitStatement6sval_uhjP11scr_block_s_jumptab_0]
_Z13EmitStatement6sval_uhjP11scr_block_s_80:
	mov eax, [ecx+0x4]
	cmp dword [eax], 0x1f
	jnz _Z13EmitStatement6sval_uhjP11scr_block_s_20
	mov eax, [edi]
	cmp eax, 0xf
	jz _Z13EmitStatement6sval_uhjP11scr_block_s_30
	jg _Z13EmitStatement6sval_uhjP11scr_block_s_40
	cmp eax, 0x4
	jz _Z13EmitStatement6sval_uhjP11scr_block_s_20
	cmp eax, 0xd
	jnz _Z13EmitStatement6sval_uhjP11scr_block_s_10
	mov esi, [edi+0x10]
	mov [ebp-0x38], esi
	mov eax, [edi+0xc]
	mov [ebp-0x34], eax
	mov esi, [edi+0x8]
	mov ebx, [edi+0x4]
	lea edi, [ebp-0x24]
	mov ecx, [ebp+0x8]
	mov edx, edi
	mov eax, esi
	call _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s
	test al, al
	jz _Z13EmitStatement6sval_uhjP11scr_block_s_50
	mov eax, edi
	call _Z9EmitValueP20VariableCompileValue
_Z13EmitStatement6sval_uhjP11scr_block_s_50:
	mov eax, [ebx]
	cmp eax, 0x11
	jz _Z13EmitStatement6sval_uhjP11scr_block_s_60
	cmp eax, 0x23
	jz _Z13EmitStatement6sval_uhjP11scr_block_s_70
	mov dword [esp+0x4], _cstring_not_an_lvalue
	mov edx, [ebp-0x34]
	mov [esp], edx
	call CompileError
_Z13EmitStatement6sval_uhjP11scr_block_s_670:
	xor ecx, ecx
	mov edx, 0xffffffff
	mov eax, 0x24
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x0
	mov ecx, [ebp-0x38]
	mov [esp], ecx
	call _Z12AddOpcodePosji
	mov dword [esp+0x4], 0x0
	mov esi, [ebp-0x34]
	mov [esp], esi
	call _Z12AddOpcodePosji
_Z13EmitStatement6sval_uhjP11scr_block_s_10:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13EmitStatement6sval_uhjP11scr_block_s_680:
	mov eax, [ebx+0x10]
	mov [ebp-0x44], eax
	mov edx, [ebx+0xc]
	mov [ebp-0x40], edx
	mov ecx, [ebx+0x8]
	mov [ebp-0x3c], ecx
	mov edi, [ebx+0x4]
	cmp dword [ecx], 0x6
	jz _Z13EmitStatement6sval_uhjP11scr_block_s_80
	mov eax, ecx
_Z13EmitStatement6sval_uhjP11scr_block_s_620:
	lea ebx, [ebp-0x24]
	mov ecx, [ebp+0x8]
	mov edx, ebx
	call _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s
	test al, al
	jnz _Z13EmitStatement6sval_uhjP11scr_block_s_90
_Z13EmitStatement6sval_uhjP11scr_block_s_590:
	mov edx, [ebp+0x8]
	mov eax, edi
	call _Z25EmitVariableExpressionRef6sval_uP11scr_block_s
	xor ecx, ecx
	mov edx, 0xffffffff
	mov eax, 0x39
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x0
	mov ecx, [ebp-0x40]
	mov [esp], ecx
	call _Z12AddOpcodePosji
	jmp _Z13EmitStatement6sval_uhjP11scr_block_s_10
_Z13EmitStatement6sval_uhjP11scr_block_s_690:
	mov edi, [ebx+0x4]
	mov eax, [edi]
	cmp eax, 0x17
	jz _Z13EmitStatement6sval_uhjP11scr_block_s_100
	cmp eax, 0x18
	jnz _Z13EmitStatement6sval_uhjP11scr_block_s_10
	mov eax, [edi+0x10]
	mov ecx, [edi+0xc]
	mov edx, [edi+0x8]
	mov ebx, [edi+0x4]
	mov esi, [ebp+0x8]
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	mov eax, ebx
	call _Z10EmitMethod6sval_uS_S_S_hP11scr_block_s
	jmp _Z13EmitStatement6sval_uhjP11scr_block_s_10
_Z13EmitStatement6sval_uhjP11scr_block_s_700:
	mov eax, [ebx+0x8]
	mov [ebp-0x3c], eax
	mov edi, [ebx+0x4]
	mov edx, [ebp+0x8]
	mov eax, [edx]
	test eax, eax
	jnz _Z13EmitStatement6sval_uhjP11scr_block_s_110
	mov dword [edx], 0x3
	mov ecx, [ebp+0x8]
_Z13EmitStatement6sval_uhjP11scr_block_s_440:
	lea ebx, [ebp-0x24]
	mov edx, ebx
	mov eax, edi
	call _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s
	test al, al
	jnz _Z13EmitStatement6sval_uhjP11scr_block_s_120
_Z13EmitStatement6sval_uhjP11scr_block_s_520:
	xor ecx, ecx
	mov edx, 0xffffffff
	mov eax, 0x1
_Z13EmitStatement6sval_uhjP11scr_block_s_150:
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x0
	mov ecx, [ebp-0x3c]
	mov [esp], ecx
	call _Z12AddOpcodePosji
	jmp _Z13EmitStatement6sval_uhjP11scr_block_s_10
_Z13EmitStatement6sval_uhjP11scr_block_s_740:
	mov ecx, [ebx+0x14]
	mov eax, [ebx+0x10]
	mov [ebp-0x44], eax
	mov eax, [ebx+0xc]
	mov [ebp-0x40], eax
	mov eax, [ebx+0x8]
	mov [ebp-0x3c], eax
	mov edi, [ebx+0x4]
	lea eax, [ebx+0x1c]
	mov [esp+0x18], eax
	lea eax, [ebx+0x18]
	mov [esp+0x14], eax
	mov eax, [ebp+0x8]
	mov [esp+0x10], eax
	mov [esp+0xc], esi
	movzx eax, dl
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov edx, [ebp-0x44]
	mov [esp], edx
	mov ecx, [ebp-0x40]
	mov edx, [ebp-0x3c]
	mov eax, edi
	call _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2_
	jmp _Z13EmitStatement6sval_uhjP11scr_block_s_10
_Z13EmitStatement6sval_uhjP11scr_block_s_750:
	mov ecx, [ebx+0x10]
	mov esi, [ebx+0xc]
	mov eax, [ebx+0x8]
	mov [ebp-0x3c], eax
	mov edi, [ebx+0x4]
	lea eax, [ebx+0x14]
	mov [esp+0x8], eax
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov [esp], ecx
	mov ecx, esi
	mov edx, [ebp-0x3c]
	mov eax, edi
	call _Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS_
	jmp _Z13EmitStatement6sval_uhjP11scr_block_s_10
_Z13EmitStatement6sval_uhjP11scr_block_s_720:
	mov eax, [ebx+0xc]
	mov [ebp-0x40], eax
	mov edx, [ebx+0x8]
	mov [ebp-0x3c], edx
	mov edi, [ebx+0x4]
	lea ebx, [ebp-0x24]
	mov ecx, [ebp+0x8]
	mov edx, ebx
	mov eax, edi
	call _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s
	test al, al
	jnz _Z13EmitStatement6sval_uhjP11scr_block_s_130
_Z13EmitStatement6sval_uhjP11scr_block_s_510:
	xor ecx, ecx
	mov edx, 0xffffffff
	mov eax, 0x4c
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x0
	mov ecx, [ebp-0x40]
	mov [esp], ecx
	call _Z12AddOpcodePosji
	mov dword [esp+0x4], 0x0
	mov esi, [ebp-0x40]
	mov [esp], esi
	call _Z12AddOpcodePosji
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x3c]
	mov [esp], eax
	call _Z12AddOpcodePosji
	jmp _Z13EmitStatement6sval_uhjP11scr_block_s_10
_Z13EmitStatement6sval_uhjP11scr_block_s_730:
	mov ecx, [ebx+0xc]
	mov [ebp-0x40], ecx
	mov eax, [ebx+0x8]
	mov [ebp-0x3c], eax
	mov edi, [ebx+0x4]
	lea eax, [ebx+0x10]
	mov [esp+0xc], eax
	mov ecx, [ebp+0x8]
	mov [esp+0x8], ecx
	mov [esp+0x4], esi
	movzx eax, dl
	mov [esp], eax
	mov ecx, [ebp-0x40]
	mov edx, [ebp-0x3c]
	mov eax, edi
	call _Z15EmitIfStatement6sval_uS_S_hjP11scr_block_sPS_
	jmp _Z13EmitStatement6sval_uhjP11scr_block_s_10
_Z13EmitStatement6sval_uhjP11scr_block_s_710:
	mov edi, [ebx+0x4]
	mov esi, [ebp+0x8]
	mov eax, [esi]
	test eax, eax
	jnz _Z13EmitStatement6sval_uhjP11scr_block_s_140
	mov dword [esi], 0x3
_Z13EmitStatement6sval_uhjP11scr_block_s_140:
	xor ecx, ecx
	xor edx, edx
	xor eax, eax
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	call _Z12AddOpcodePosji
	jmp _Z13EmitStatement6sval_uhjP11scr_block_s_10
_Z13EmitStatement6sval_uhjP11scr_block_s_760:
	mov eax, [ebx+0x18]
	mov ecx, [ebx+0x14]
	mov esi, [ebx+0x10]
	mov [ebp-0x44], esi
	mov edx, [ebx+0xc]
	mov [ebp-0x40], edx
	mov esi, [ebx+0x8]
	mov edi, [ebx+0x4]
	lea edx, [ebx+0x20]
	mov [esp+0x14], edx
	lea edx, [ebx+0x1c]
	mov [esp+0x10], edx
	mov edx, [ebp+0x8]
	mov [esp+0xc], edx
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov ecx, [ebp-0x44]
	mov [esp], ecx
	mov ecx, [ebp-0x40]
	mov edx, esi
	mov eax, edi
	call _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2_
	jmp _Z13EmitStatement6sval_uhjP11scr_block_s_10
_Z13EmitStatement6sval_uhjP11scr_block_s_770:
	mov esi, [ebx+0x8]
	mov edi, [ebx+0x4]
	mov byte [scrCompileGlob+0x50], 0x1
	mov edx, [ebp+0x8]
	mov eax, edi
	call _Z25EmitVariableExpressionRef6sval_uP11scr_block_s
	mov byte [scrCompileGlob+0x50], 0x0
	xor ecx, ecx
	mov edx, 0x1
	mov eax, 0x64
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call _Z12AddOpcodePosji
	xor ecx, ecx
	mov edx, 0xffffffff
	mov eax, 0x39
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call _Z12AddOpcodePosji
	jmp _Z13EmitStatement6sval_uhjP11scr_block_s_10
_Z13EmitStatement6sval_uhjP11scr_block_s_780:
	mov eax, [ebx+0x8]
	mov [ebp-0x3c], eax
	mov edi, [ebx+0x4]
	mov byte [scrCompileGlob+0x50], 0x1
	mov edx, [ebp+0x8]
	mov eax, edi
	call _Z25EmitVariableExpressionRef6sval_uP11scr_block_s
	mov byte [scrCompileGlob+0x50], 0x0
	xor ecx, ecx
	mov edx, 0x1
	mov eax, 0x65
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x0
	mov edx, [ebp-0x3c]
	mov [esp], edx
	call _Z12AddOpcodePosji
	xor ecx, ecx
	mov edx, 0xffffffff
	mov eax, 0x39
	jmp _Z13EmitStatement6sval_uhjP11scr_block_s_150
_Z13EmitStatement6sval_uhjP11scr_block_s_790:
	mov esi, [ebx+0x10]
	mov [ebp-0x44], esi
	mov eax, [ebx+0xc]
	mov [ebp-0x40], eax
	mov edx, [ebx+0x8]
	mov [ebp-0x3c], edx
	mov edi, [ebx+0x4]
	mov byte [scrCompileGlob+0x1c], 0x1
	mov edx, [ebp+0x8]
	mov eax, edi
	call _Z22EmitVariableExpression6sval_uP11scr_block_s
	mov byte [scrCompileGlob+0x1c], 0x0
	lea ebx, [ebp-0x24]
	mov ecx, [ebp+0x8]
	mov edx, ebx
	mov eax, [ebp-0x3c]
	call _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s
	test al, al
	jnz _Z13EmitStatement6sval_uhjP11scr_block_s_160
_Z13EmitStatement6sval_uhjP11scr_block_s_500:
	movsx eax, byte [ebp-0x40]
	xor ecx, ecx
	mov edx, 0xffffffff
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x0
	mov ecx, [ebp-0x44]
	mov [esp], ecx
	call _Z12AddOpcodePosji
	mov edx, [ebp+0x8]
	mov eax, edi
	call _Z25EmitVariableExpressionRef6sval_uP11scr_block_s
	xor ecx, ecx
	mov edx, 0xffffffff
	mov eax, 0x39
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x0
	mov esi, [ebp-0x44]
	mov [esp], esi
	call _Z12AddOpcodePosji
	jmp _Z13EmitStatement6sval_uhjP11scr_block_s_10
_Z13EmitStatement6sval_uhjP11scr_block_s_800:
	mov edi, [ebx+0x4]
	mov [ebp-0x2d], dl
	mov eax, [edi]
	mov ecx, [eax+0x4]
	test ecx, ecx
	jz _Z13EmitStatement6sval_uhjP11scr_block_s_10
_Z13EmitStatement6sval_uhjP11scr_block_s_210:
	mov ebx, [ecx+0x4]
	cmp byte [ebp-0x2d], 0x0
	jz _Z13EmitStatement6sval_uhjP11scr_block_s_170
	test ebx, ebx
	jz _Z13EmitStatement6sval_uhjP11scr_block_s_180
	mov eax, scrVarPub
	cmp byte [eax+0x7], 0x0
	jnz _Z13EmitStatement6sval_uhjP11scr_block_s_170
	mov edx, ebx
_Z13EmitStatement6sval_uhjP11scr_block_s_190:
	mov eax, [edx]
	cmp dword [eax], 0x2d
	jnz _Z13EmitStatement6sval_uhjP11scr_block_s_170
	mov edx, [edx+0x4]
	test edx, edx
	jnz _Z13EmitStatement6sval_uhjP11scr_block_s_190
_Z13EmitStatement6sval_uhjP11scr_block_s_180:
	mov edx, 0x1
_Z13EmitStatement6sval_uhjP11scr_block_s_390:
	mov eax, [ecx]
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	mov ecx, esi
	call _Z13EmitStatement6sval_uhjP11scr_block_s_200
	test ebx, ebx
	jz _Z13EmitStatement6sval_uhjP11scr_block_s_10
	mov ecx, ebx
	jmp _Z13EmitStatement6sval_uhjP11scr_block_s_210
_Z13EmitStatement6sval_uhjP11scr_block_s_860:
	mov eax, [ebx+0x10]
	mov [ebp-0x44], eax
	mov edx, [ebx+0xc]
	mov [ebp-0x40], edx
	mov ecx, [ebx+0x8]
	mov [ebp-0x3c], ecx
	mov edi, [ebx+0x4]
	lea ebx, [ebp-0x24]
	mov ecx, [ebp+0x8]
	mov edx, ebx
	mov eax, [ebp-0x3c]
	call _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s
	test al, al
	jnz _Z13EmitStatement6sval_uhjP11scr_block_s_220
_Z13EmitStatement6sval_uhjP11scr_block_s_540:
	mov ecx, [ebp+0x8]
	mov edx, ebx
	mov eax, edi
	call _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s
	test al, al
	jnz _Z13EmitStatement6sval_uhjP11scr_block_s_230
_Z13EmitStatement6sval_uhjP11scr_block_s_530:
	xor ecx, ecx
	mov edx, 0xfffffffe
	mov eax, 0x7a
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x0
	mov esi, [ebp-0x44]
	mov [esp], esi
	call _Z12AddOpcodePosji
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x40]
	mov [esp], eax
	call _Z12AddOpcodePosji
	jmp _Z13EmitStatement6sval_uhjP11scr_block_s_10
_Z13EmitStatement6sval_uhjP11scr_block_s_870:
	mov ecx, [ebx+0xc]
	mov [ebp-0x40], ecx
	mov eax, [ebx+0x8]
	mov [ebp-0x3c], eax
	mov edi, [ebx+0x4]
	mov ecx, [ebp+0x8]
	mov [esp+0x8], ecx
	mov [esp+0x4], esi
	movzx eax, dl
	mov [esp], eax
	mov ecx, [ebp-0x40]
	mov edx, [ebp-0x3c]
	mov eax, edi
	call _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s
	jmp _Z13EmitStatement6sval_uhjP11scr_block_s_10
_Z13EmitStatement6sval_uhjP11scr_block_s_820:
	mov eax, [ebx+0x10]
	mov [ebp-0x44], eax
	mov edx, [ebx+0xc]
	mov [ebp-0x40], edx
	mov ecx, [ebx+0x8]
	mov [ebp-0x3c], ecx
	mov edi, [ebx+0x4]
	mov eax, [ecx]
	mov ebx, [eax+0x4]
	mov eax, [ebx]
	mov eax, [eax]
	lea esi, [ebp-0x24]
	mov ecx, [ebp+0x8]
	mov edx, esi
	call _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s
	test al, al
	jnz _Z13EmitStatement6sval_uhjP11scr_block_s_240
_Z13EmitStatement6sval_uhjP11scr_block_s_580:
	mov ecx, [ebp+0x8]
	mov edx, esi
	mov eax, edi
	call _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s
	test al, al
	jnz _Z13EmitStatement6sval_uhjP11scr_block_s_250
_Z13EmitStatement6sval_uhjP11scr_block_s_570:
	xor ecx, ecx
	mov edx, 0xfffffffe
	mov eax, 0x78
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x0
	mov esi, [ebp-0x44]
	mov [esp], esi
	call _Z12AddOpcodePosji
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call _Z12AddOpcodePosji
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x40]
	mov [esp], eax
	call _Z12AddOpcodePosji
	mov dword [esp+0x4], 0x0
	mov eax, [ebx]
	mov eax, [eax+0x4]
	mov [esp], eax
	call _Z12AddOpcodePosji
	mov edi, [ebx+0x4]
	test edi, edi
	jz _Z13EmitStatement6sval_uhjP11scr_block_s_260
_Z13EmitStatement6sval_uhjP11scr_block_s_270:
	mov eax, [edi]
	mov esi, [eax+0x4]
	mov eax, [eax]
	mov edx, [ebp+0x8]
	mov [esp], edx
	mov ecx, 0x1
	mov edx, esi
	call _Z21Scr_FindLocalVarIndexj6sval_uhP11scr_block_s
	mov ebx, eax
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x33
	call _Z10EmitOpcodejii
	mov dword [esp], 0x1
	call _Z10TempMalloci
	mov [scrCompileGlob], eax
	mov [eax], bl
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call _Z12AddOpcodePosji
	mov edi, [edi+0x4]
	test edi, edi
	jnz _Z13EmitStatement6sval_uhjP11scr_block_s_270
_Z13EmitStatement6sval_uhjP11scr_block_s_260:
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x34
	call _Z10EmitOpcodejii
	jmp _Z13EmitStatement6sval_uhjP11scr_block_s_10
_Z13EmitStatement6sval_uhjP11scr_block_s_830:
	mov ecx, [ebx+0x10]
	mov [ebp-0x44], ecx
	mov esi, [ebx+0xc]
	mov [ebp-0x40], esi
	mov eax, [ebx+0x8]
	mov [ebp-0x3c], eax
	mov edi, [ebx+0x4]
	mov edx, [eax]
	mov eax, [edx+0x4]
	mov ebx, [eax+0x4]
	test ebx, ebx
	jz _Z13EmitStatement6sval_uhjP11scr_block_s_280
	xor esi, esi
	jmp _Z13EmitStatement6sval_uhjP11scr_block_s_290
_Z13EmitStatement6sval_uhjP11scr_block_s_310:
	add esi, 0x1
	mov ebx, [ebx+0x4]
	test ebx, ebx
	jz _Z13EmitStatement6sval_uhjP11scr_block_s_300
_Z13EmitStatement6sval_uhjP11scr_block_s_290:
	mov eax, [ebx]
	mov eax, [eax]
	mov ecx, [ebp+0x8]
	lea edx, [ebp-0x24]
	call _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s
	test al, al
	jz _Z13EmitStatement6sval_uhjP11scr_block_s_310
	lea eax, [ebp-0x24]
	call _Z9EmitValueP20VariableCompileValue
	jmp _Z13EmitStatement6sval_uhjP11scr_block_s_310
_Z13EmitStatement6sval_uhjP11scr_block_s_840:
	mov edi, [ebx+0x4]
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x4d
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	call _Z12AddOpcodePosji
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call _Z12AddOpcodePosji
	jmp _Z13EmitStatement6sval_uhjP11scr_block_s_10
_Z13EmitStatement6sval_uhjP11scr_block_s_850:
	mov ecx, [ebx+0x10]
	mov [ebp-0x44], ecx
	mov esi, [ebx+0xc]
	mov [ebp-0x40], esi
	mov eax, [ebx+0x8]
	mov [ebp-0x3c], eax
	mov edi, [ebx+0x4]
	xor ecx, ecx
	mov edx, 0x1
	mov eax, 0x7b
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call _Z12AddOpcodePosji
	mov edx, [ebp-0x3c]
	mov ebx, [edx]
	test ebx, ebx
	jz _Z13EmitStatement6sval_uhjP11scr_block_s_320
	xor esi, esi
	jmp _Z13EmitStatement6sval_uhjP11scr_block_s_330
_Z13EmitStatement6sval_uhjP11scr_block_s_350:
	add esi, 0x1
	mov eax, [ebx+0x4]
	test eax, eax
	jz _Z13EmitStatement6sval_uhjP11scr_block_s_340
	mov ebx, eax
_Z13EmitStatement6sval_uhjP11scr_block_s_330:
	mov eax, [ebx]
	mov eax, [eax]
	mov ecx, [ebp+0x8]
	lea edx, [ebp-0x24]
	call _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s
	test al, al
	jz _Z13EmitStatement6sval_uhjP11scr_block_s_350
	lea eax, [ebp-0x24]
	call _Z9EmitValueP20VariableCompileValue
	jmp _Z13EmitStatement6sval_uhjP11scr_block_s_350
_Z13EmitStatement6sval_uhjP11scr_block_s_900:
	mov edi, [ebx+0x4]
	mov edx, [ebp+0x8]
	mov eax, edi
	call _Z18EmitBreakStatement6sval_uP11scr_block_s
	jmp _Z13EmitStatement6sval_uhjP11scr_block_s_10
_Z13EmitStatement6sval_uhjP11scr_block_s_910:
	mov edi, [ebx+0x4]
	mov edx, [ebp+0x8]
	mov eax, edi
	call _Z21EmitContinueStatement6sval_uP11scr_block_s
	jmp _Z13EmitStatement6sval_uhjP11scr_block_s_10
_Z13EmitStatement6sval_uhjP11scr_block_s_920:
	mov edi, [ebx+0x4]
	mov eax, scrVarPub
	cmp byte [eax+0x7], 0x0
	jz _Z13EmitStatement6sval_uhjP11scr_block_s_360
	cmp byte [scrCompileGlob+0x1c], 0x0
	jz _Z13EmitStatement6sval_uhjP11scr_block_s_370
_Z13EmitStatement6sval_uhjP11scr_block_s_600:
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x85
_Z13EmitStatement6sval_uhjP11scr_block_s_460:
	call _Z10EmitOpcodejii
	mov dword [esp], 0x1
	call _Z10TempMalloci
	mov [scrCompileGlob], eax
	mov byte [eax], 0x0
	jmp _Z13EmitStatement6sval_uhjP11scr_block_s_10
_Z13EmitStatement6sval_uhjP11scr_block_s_930:
	mov edi, [ebx+0x4]
	mov eax, scrVarPub
	cmp byte [eax+0x7], 0x0
	jnz _Z13EmitStatement6sval_uhjP11scr_block_s_380
_Z13EmitStatement6sval_uhjP11scr_block_s_360:
	cmp byte [scrCompileGlob+0x1c], 0x0
	jnz _Z13EmitStatement6sval_uhjP11scr_block_s_10
	mov [esp], edi
	call _Z20SL_RemoveRefToStringj
	jmp _Z13EmitStatement6sval_uhjP11scr_block_s_10
_Z13EmitStatement6sval_uhjP11scr_block_s_880:
	mov dword [esp+0x4], _cstring_illegal_case_sta
	mov eax, [ebx+0x8]
	mov [esp], eax
	call CompileError
	jmp _Z13EmitStatement6sval_uhjP11scr_block_s_10
_Z13EmitStatement6sval_uhjP11scr_block_s_890:
	mov dword [esp+0x4], _cstring_illegal_default_
	mov eax, [ebx+0x4]
	mov [esp], eax
	call CompileError
	jmp _Z13EmitStatement6sval_uhjP11scr_block_s_10
_Z13EmitStatement6sval_uhjP11scr_block_s_810:
	mov esi, [ebx+0x8]
	mov edi, [ebx+0x4]
	lea eax, [ebx+0xc]
	mov [esp], eax
	mov ecx, [ebp+0x8]
	mov edx, esi
	mov eax, edi
	call _Z26EmitDeveloperStatementList6sval_uS_P11scr_block_sPS_
	jmp _Z13EmitStatement6sval_uhjP11scr_block_s_10
_Z13EmitStatement6sval_uhjP11scr_block_s_170:
	xor edx, edx
	jmp _Z13EmitStatement6sval_uhjP11scr_block_s_390
_Z13EmitStatement6sval_uhjP11scr_block_s_340:
	neg esi
_Z13EmitStatement6sval_uhjP11scr_block_s_470:
	mov ecx, [ebp+0x8]
	lea edx, [ebp-0x24]
	mov eax, edi
	call _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s
	test al, al
	jnz _Z13EmitStatement6sval_uhjP11scr_block_s_400
_Z13EmitStatement6sval_uhjP11scr_block_s_490:
	lea edx, [esi-0x2]
	xor ecx, ecx
	mov eax, 0x79
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x10
	mov ecx, [ebp-0x44]
	mov [esp], ecx
	call _Z12AddOpcodePosji
	mov dword [esp+0x4], 0x0
	mov eax, [ebx]
	mov eax, [eax+0x4]
	mov [esp], eax
	call _Z12AddOpcodePosji
	mov dword [esp+0x4], 0x0
	mov esi, [ebp-0x40]
	mov [esp], esi
	call _Z12AddOpcodePosji
	jmp _Z13EmitStatement6sval_uhjP11scr_block_s_10
_Z13EmitStatement6sval_uhjP11scr_block_s_300:
	mov dword [ebp-0x2c], 0xfffffffe
	sub [ebp-0x2c], esi
	mov ecx, [ebp-0x3c]
	mov edx, [ecx]
_Z13EmitStatement6sval_uhjP11scr_block_s_480:
	mov ebx, [edx+0x4]
	mov eax, [ebx]
	mov eax, [eax]
	mov ecx, [ebp+0x8]
	lea edx, [ebp-0x24]
	call _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s
	test al, al
	jnz _Z13EmitStatement6sval_uhjP11scr_block_s_410
_Z13EmitStatement6sval_uhjP11scr_block_s_560:
	mov ecx, [ebp+0x8]
	lea edx, [ebp-0x24]
	mov eax, edi
	call _Z29EmitOrEvalPrimitiveExpression6sval_uP20VariableCompileValueP11scr_block_s
	test al, al
	jnz _Z13EmitStatement6sval_uhjP11scr_block_s_420
_Z13EmitStatement6sval_uhjP11scr_block_s_550:
	xor ecx, ecx
	mov edx, [ebp-0x2c]
	mov eax, 0x77
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x44]
	mov [esp], eax
	call _Z12AddOpcodePosji
	mov dword [esp+0x4], 0x0
	mov edx, [ebp-0x44]
	mov [esp], edx
	call _Z12AddOpcodePosji
	mov dword [esp+0x4], 0x0
	mov ecx, [ebp-0x40]
	mov [esp], ecx
	call _Z12AddOpcodePosji
_Z13EmitStatement6sval_uhjP11scr_block_s_430:
	mov dword [esp+0x4], 0x0
	mov eax, [ebx]
	mov eax, [eax+0x4]
	mov [esp], eax
	call _Z12AddOpcodePosji
	mov ebx, [ebx+0x4]
	test ebx, ebx
	jnz _Z13EmitStatement6sval_uhjP11scr_block_s_430
	mov dword [esp], 0x1
	call _Z10TempMalloci
	mov [scrCompileGlob], eax
	mov edx, esi
	mov [eax], dl
	jmp _Z13EmitStatement6sval_uhjP11scr_block_s_260
_Z13EmitStatement6sval_uhjP11scr_block_s_110:
	mov ecx, edx
	jmp _Z13EmitStatement6sval_uhjP11scr_block_s_440
_Z13EmitStatement6sval_uhjP11scr_block_s_380:
	cmp byte [scrCompileGlob+0x1c], 0x0
	jz _Z13EmitStatement6sval_uhjP11scr_block_s_450
_Z13EmitStatement6sval_uhjP11scr_block_s_610:
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x86
	jmp _Z13EmitStatement6sval_uhjP11scr_block_s_460
_Z13EmitStatement6sval_uhjP11scr_block_s_320:
	xor esi, esi
	jmp _Z13EmitStatement6sval_uhjP11scr_block_s_470
_Z13EmitStatement6sval_uhjP11scr_block_s_280:
	xor esi, esi
	mov dword [ebp-0x2c], 0xfffffffe
	jmp _Z13EmitStatement6sval_uhjP11scr_block_s_480
_Z13EmitStatement6sval_uhjP11scr_block_s_400:
	lea eax, [ebp-0x24]
	call _Z9EmitValueP20VariableCompileValue
	jmp _Z13EmitStatement6sval_uhjP11scr_block_s_490
_Z13EmitStatement6sval_uhjP11scr_block_s_160:
	mov eax, ebx
	call _Z9EmitValueP20VariableCompileValue
	jmp _Z13EmitStatement6sval_uhjP11scr_block_s_500
_Z13EmitStatement6sval_uhjP11scr_block_s_130:
	mov eax, ebx
	call _Z9EmitValueP20VariableCompileValue
	jmp _Z13EmitStatement6sval_uhjP11scr_block_s_510
_Z13EmitStatement6sval_uhjP11scr_block_s_120:
	mov eax, ebx
	call _Z9EmitValueP20VariableCompileValue
	jmp _Z13EmitStatement6sval_uhjP11scr_block_s_520
_Z13EmitStatement6sval_uhjP11scr_block_s_230:
	mov eax, ebx
	call _Z9EmitValueP20VariableCompileValue
	jmp _Z13EmitStatement6sval_uhjP11scr_block_s_530
_Z13EmitStatement6sval_uhjP11scr_block_s_220:
	mov eax, ebx
	call _Z9EmitValueP20VariableCompileValue
	jmp _Z13EmitStatement6sval_uhjP11scr_block_s_540
_Z13EmitStatement6sval_uhjP11scr_block_s_420:
	lea eax, [ebp-0x24]
	call _Z9EmitValueP20VariableCompileValue
	jmp _Z13EmitStatement6sval_uhjP11scr_block_s_550
_Z13EmitStatement6sval_uhjP11scr_block_s_410:
	lea eax, [ebp-0x24]
	call _Z9EmitValueP20VariableCompileValue
	jmp _Z13EmitStatement6sval_uhjP11scr_block_s_560
_Z13EmitStatement6sval_uhjP11scr_block_s_250:
	mov eax, esi
	call _Z9EmitValueP20VariableCompileValue
	jmp _Z13EmitStatement6sval_uhjP11scr_block_s_570
_Z13EmitStatement6sval_uhjP11scr_block_s_240:
	mov eax, esi
	call _Z9EmitValueP20VariableCompileValue
	jmp _Z13EmitStatement6sval_uhjP11scr_block_s_580
_Z13EmitStatement6sval_uhjP11scr_block_s_100:
	mov edx, [edi+0x8]
	mov ebx, [edi+0x4]
	mov esi, [ebp+0x8]
	mov [esp], esi
	mov ecx, 0x1
	mov eax, ebx
	call _Z8EmitCall6sval_uS_hP11scr_block_s
	jmp _Z13EmitStatement6sval_uhjP11scr_block_s_10
_Z13EmitStatement6sval_uhjP11scr_block_s_90:
	mov eax, ebx
	call _Z9EmitValueP20VariableCompileValue
	jmp _Z13EmitStatement6sval_uhjP11scr_block_s_590
_Z13EmitStatement6sval_uhjP11scr_block_s_370:
	mov [esp], edi
	call _Z20SL_RemoveRefToStringj
	jmp _Z13EmitStatement6sval_uhjP11scr_block_s_600
_Z13EmitStatement6sval_uhjP11scr_block_s_450:
	mov [esp], edi
	call _Z20SL_RemoveRefToStringj
	jmp _Z13EmitStatement6sval_uhjP11scr_block_s_610
_Z13EmitStatement6sval_uhjP11scr_block_s_20:
	mov eax, [ebp-0x3c]
	jmp _Z13EmitStatement6sval_uhjP11scr_block_s_620
_Z13EmitStatement6sval_uhjP11scr_block_s_40:
	cmp eax, 0x35
	jz _Z13EmitStatement6sval_uhjP11scr_block_s_630
	cmp eax, 0x50
	jnz _Z13EmitStatement6sval_uhjP11scr_block_s_10
_Z13EmitStatement6sval_uhjP11scr_block_s_630:
	mov eax, _cstring_not_an_lvalue
	cmp byte [scrCompilePub+0x20020], 0x0
	mov edx, _cstring__and_self_field_
	cmovnz eax, edx
	mov [esp+0x4], eax
	mov eax, [edi+0x8]
	mov [esp], eax
	call CompileError
	jmp _Z13EmitStatement6sval_uhjP11scr_block_s_10
_Z13EmitStatement6sval_uhjP11scr_block_s_30:
	mov eax, [edi+0xc]
	mov esi, [edi+0x8]
	mov ebx, [edi+0x4]
	mov ecx, [ebp+0x8]
	mov edx, eax
	mov eax, ebx
	call _Z34EmitPrimitiveExpressionFieldObject6sval_uS_P11scr_block_s
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x2f
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x0
	mov edx, [ebp-0x44]
	mov [esp], edx
	call _Z12AddOpcodePosji
	mov dword [esp], 0x2
	call _Z15TempMallocAligni
	mov [scrCompileGlob], eax
	cmp dword [scrCompilePub+0x20024], 0x2
	jz _Z13EmitStatement6sval_uhjP11scr_block_s_640
	cmp byte [scrCompileGlob+0x1c], 0x0
	jnz _Z13EmitStatement6sval_uhjP11scr_block_s_650
_Z13EmitStatement6sval_uhjP11scr_block_s_660:
	mov ebx, [scrCompileGlob]
	mov [esp], esi
	call _Z28SL_TransferToCanonicalStringj
	mov [ebx], ax
	jmp _Z13EmitStatement6sval_uhjP11scr_block_s_10
_Z13EmitStatement6sval_uhjP11scr_block_s_640:
	cmp byte [scrCompileGlob+0x1c], 0x0
	jnz _Z13EmitStatement6sval_uhjP11scr_block_s_10
	mov [esp], esi
	call _Z20SL_RemoveRefToStringj
	jmp _Z13EmitStatement6sval_uhjP11scr_block_s_10
_Z13EmitStatement6sval_uhjP11scr_block_s_650:
	mov [esp], esi
	call _Z17SL_AddRefToStringj
	jmp _Z13EmitStatement6sval_uhjP11scr_block_s_660
_Z13EmitStatement6sval_uhjP11scr_block_s_70:
	mov ebx, [ebx+0x4]
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x14
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	call _Z12AddOpcodePosji
	jmp _Z13EmitStatement6sval_uhjP11scr_block_s_670
_Z13EmitStatement6sval_uhjP11scr_block_s_60:
	mov ebx, [ebx+0x4]
	mov edx, [ebp+0x8]
	mov eax, ebx
	call _Z25EmitVariableExpressionRef6sval_uP11scr_block_s
	jmp _Z13EmitStatement6sval_uhjP11scr_block_s_670
	nop
	
	
_Z13EmitStatement6sval_uhjP11scr_block_s_jumptab_0:
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_10
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_10
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_680
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_10
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_10
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_10
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_10
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_10
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_10
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_10
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_10
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_10
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_10
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_10
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_10
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_10
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_10
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_10
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_10
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_10
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_10
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_10
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_10
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_10
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_10
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_690
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_10
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_700
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_710
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_720
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_10
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_10
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_10
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_10
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_10
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_10
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_10
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_730
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_740
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_750
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_760
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_770
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_780
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_790
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_800
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_810
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_10
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_10
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_10
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_10
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_10
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_10
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_10
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_10
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_10
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_820
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_830
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_840
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_850
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_860
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_870
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_880
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_890
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_900
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_910
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_10
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_10
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_10
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_10
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_10
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_10
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_10
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_10
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_10
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_10
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_10
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_10
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_920
	dd _Z13EmitStatement6sval_uhjP11scr_block_s_930


;EmitIfElseStatement(sval_u, sval_u, sval_u, sval_u, sval_u, unsigned char, unsigned int, scr_block_s*, sval_u*, sval_u*)
_Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	mov [ebp-0x80], edx
	mov [ebp-0x84], ecx
	movzx edx, byte [ebp+0x10]
	mov [ebp-0x85], dl
	lea ebx, [ebp-0x2c]
	mov ecx, [ebp+0x18]
	mov edx, ebx
	call _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s
	test al, al
	jnz _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__10
_Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__490:
	xor ecx, ecx
	mov edx, 0xffffffff
	mov eax, 0x5e
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z12AddOpcodePosji
	mov dword [esp], 0x2
	call _Z15TempMallocAligni
	mov [scrCompileGlob], eax
	mov word [eax], 0x0
	mov ebx, [scrCompileGlob]
	mov [ebp-0x78], ebx
	mov dword [esp], 0x0
	call _Z10TempMalloci
	mov [ebp-0x70], eax
	mov eax, [ebp+0x1c]
	mov edi, [eax]
	mov [ebp-0x44], edi
	mov edx, [ebp+0x18]
	add edx, 0x18
	mov [ebp-0x3c], edx
	mov [ebp-0x40], edx
	mov dword [ebp-0x60], 0x0
_Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__110:
	mov eax, [ebp-0x60]
	cmp eax, [edi+0x8]
	jl _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__20
	mov edx, [ebp+0x18]
	mov eax, [edx+0x4]
	cmp [ebp-0x60], eax
	jge _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__30
_Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__20:
	mov ebx, [ebp-0x40]
	mov ebx, [ebx]
	mov [ebp-0x64], ebx
	mov esi, [edi+0xc]
	mov ecx, esi
	cmp [ebp-0x60], esi
	jge _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__40
	mov eax, [ebp-0x44]
	cmp ebx, [eax+0x18]
	jz _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__50
	mov ebx, [ebp-0x60]
	lea edx, [edi+ebx*4+0x18]
_Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__60:
	add ebx, 0x1
	cmp ebx, esi
	jz _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__40
	mov eax, [edx+0x4]
	add edx, 0x4
	cmp [ebp-0x64], eax
	jnz _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__60
_Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__150:
	test ebx, ebx
	js _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__40
_Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__130:
	mov eax, [edi+0x8]
	cmp ebx, eax
	jl _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__70
	add eax, 0x1
	mov [edi+0x8], eax
_Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__70:
	cmp [ebp-0x60], ebx
	jge _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__80
	lea eax, [ebx*4]
	lea ecx, [eax+edi+0x14]
	lea edx, [eax+edi+0x18]
_Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__90:
	sub ebx, 0x1
	mov eax, [ecx]
	mov [edx], eax
	sub ecx, 0x4
	sub edx, 0x4
	cmp [ebp-0x60], ebx
	jl _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__90
_Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__80:
	mov edx, [ebp-0x64]
	mov eax, [ebp-0x44]
	mov [eax+0x18], edx
	mov edx, [ebp-0x60]
	sar edx, 0x3
	mov ecx, [ebp-0x60]
	and ecx, 0x7
	mov ebx, [ebp+0x18]
	movzx eax, byte [edx+ebx+0x10]
	sar eax, cl
	test al, 0x1
	jz _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__100
	mov eax, 0x1
	shl eax, cl
	or [edx+edi+0x10], al
_Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__100:
	add dword [ebp-0x60], 0x1
	add dword [ebp-0x44], 0x4
	add dword [ebp-0x40], 0x4
	jmp _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__110
_Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__40:
	cmp esi, 0x3f
	jg _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__120
_Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__140:
	lea eax, [ecx+0x1]
	mov [edi+0xc], eax
	mov ebx, esi
	jmp _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__130
_Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__120:
	mov dword [esp+0x4], _cstring_local_var_stack_
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov ecx, [edi+0xc]
	jmp _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__140
_Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__50:
	mov ebx, [ebp-0x60]
	jmp _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__150
_Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__30:
	mov [edi+0x4], eax
	mov dword [edi], 0x0
	mov ebx, [ebp+0x1c]
	mov eax, [ebx]
	movzx edx, byte [ebp-0x85]
	mov [ebp-0x7c], edx
	mov [esp], eax
	mov ecx, [ebp+0x14]
	mov eax, [ebp-0x80]
	call _Z13EmitStatement6sval_uhjP11scr_block_s
	mov eax, [ebp+0x1c]
	mov ebx, [eax]
	mov eax, [ebx]
	test eax, eax
	jnz _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__160
	mov eax, [ebx+0x4]
	mov esi, eax
	sub esi, [ebx+0x8]
	jnz _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__170
_Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__160:
	mov eax, [ebx]
	test eax, eax
	jz _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__180
	mov dword [ebp-0x68], 0x0
_Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__460:
	mov eax, scrVarPub
	mov ebx, [eax+0x38]
	cmp byte [ebp-0x85], 0x0
	jz _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__190
	xor ecx, ecx
	xor edx, edx
	xor eax, eax
	call _Z10EmitOpcodejii
	mov dword [esp], 0x4
	call _Z15TempMallocAligni
	mov [scrCompileGlob], eax
	mov dword [eax], 0x0
	mov dword [esp+0x4], 0x1
	mov edx, [ebp+0x14]
	mov [esp], edx
	call _Z12AddOpcodePosji
	mov dword [ebp-0x74], 0x0
	mov dword [ebp-0x6c], 0x0
_Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__450:
	lea edx, [ebx+0x1]
	mov eax, scrVarPub
	mov [eax+0x38], edx
	mov dword [esp], 0x0
	call _Z10TempMalloci
	sub eax, [ebp-0x70]
	mov ebx, [ebp-0x78]
	mov [ebx], ax
	mov eax, [ebp+0x20]
	mov edi, [eax]
	mov [ebp-0x4c], edi
	mov edx, [ebp-0x3c]
	mov [ebp-0x48], edx
	mov dword [ebp-0x58], 0x0
_Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__290:
	mov eax, [ebp-0x58]
	cmp eax, [edi+0x8]
	jl _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__200
	mov edx, [ebp+0x18]
	mov eax, [edx+0x4]
	cmp [ebp-0x58], eax
	jge _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__210
_Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__200:
	mov ebx, [ebp-0x48]
	mov ebx, [ebx]
	mov [ebp-0x5c], ebx
	mov esi, [edi+0xc]
	mov ecx, esi
	cmp [ebp-0x58], esi
	jge _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__220
	mov eax, ebx
	mov ebx, [ebp-0x4c]
	cmp [ebx+0x18], eax
	jz _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__230
	mov ebx, [ebp-0x58]
	lea edx, [edi+ebx*4+0x18]
_Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__240:
	add ebx, 0x1
	cmp esi, ebx
	jz _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__220
	mov eax, [edx+0x4]
	add edx, 0x4
	cmp eax, [ebp-0x5c]
	jnz _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__240
_Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__330:
	test ebx, ebx
	js _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__220
_Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__310:
	mov eax, [edi+0x8]
	cmp ebx, eax
	jl _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__250
	add eax, 0x1
	mov [edi+0x8], eax
_Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__250:
	cmp [ebp-0x58], ebx
	jge _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__260
	lea eax, [ebx*4]
	lea ecx, [eax+edi+0x14]
	lea edx, [eax+edi+0x18]
_Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__270:
	sub ebx, 0x1
	mov eax, [ecx]
	mov [edx], eax
	sub ecx, 0x4
	sub edx, 0x4
	cmp [ebp-0x58], ebx
	jl _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__270
_Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__260:
	mov edx, [ebp-0x5c]
	mov eax, [ebp-0x4c]
	mov [eax+0x18], edx
	mov edx, [ebp-0x58]
	sar edx, 0x3
	mov ecx, [ebp-0x58]
	and ecx, 0x7
	mov ebx, [ebp+0x18]
	movzx eax, byte [edx+ebx+0x10]
	sar eax, cl
	test al, 0x1
	jz _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__280
	mov eax, 0x1
	shl eax, cl
	or [edx+edi+0x10], al
_Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__280:
	add dword [ebp-0x58], 0x1
	add dword [ebp-0x4c], 0x4
	add dword [ebp-0x48], 0x4
	jmp _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__290
_Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__220:
	cmp esi, 0x3f
	jg _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__300
_Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__320:
	lea eax, [ecx+0x1]
	mov [edi+0xc], eax
	mov ebx, esi
	jmp _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__310
_Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__300:
	mov dword [esp+0x4], _cstring_local_var_stack_
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov ecx, [edi+0xc]
	jmp _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__320
_Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__230:
	mov ebx, [ebp-0x58]
	jmp _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__330
_Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__210:
	mov [edi+0x4], eax
	mov dword [edi], 0x0
	mov ebx, [ebp+0x20]
	mov eax, [ebx]
	mov [esp], eax
	mov ecx, [ebp+0x14]
	mov edx, [ebp-0x7c]
	mov eax, [ebp-0x84]
	call _Z13EmitStatement6sval_uhjP11scr_block_s
	mov eax, [ebp+0x20]
	mov ebx, [eax]
	mov edi, scrVarPub
	mov esi, [edi+0x38]
	mov eax, [ebp-0x7c]
	test eax, eax
	jnz _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__340
	mov ecx, [ebx]
	test ecx, ecx
	jz _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__350
_Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__470:
	lea eax, [esi+0x1]
	mov [edi+0x38], eax
	mov ebx, [ebp+0x20]
	mov eax, [ebx]
	mov edx, [eax]
	test edx, edx
	jnz _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__360
	mov edx, [ebp-0x68]
	mov [ebp+edx*4-0x20], eax
	add edx, 0x1
	mov [ebp-0x68], edx
_Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__360:
	cmp byte [ebp-0x85], 0x0
	jz _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__370
_Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__480:
	mov eax, [ebp-0x68]
	test eax, eax
	jz _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__380
	mov eax, [ebp-0x20]
	mov edi, [eax+0x8]
	cmp dword [ebp-0x68], 0x1
	jle _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__390
	mov edx, 0x1
_Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__400:
	mov eax, [ebp+edx*4-0x20]
	mov eax, [eax+0x8]
	cmp edi, eax
	cmovg edi, eax
	add edx, 0x1
	cmp [ebp-0x68], edx
	jnz _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__400
_Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__390:
	mov eax, [ebp+0x18]
	mov [eax+0x4], edi
	test edi, edi
	jle _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__380
	mov dword [ebp-0x50], 0x0
_Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__440:
	mov ebx, [ebp-0x50]
	sar ebx, 0x3
	mov edx, [ebp+0x18]
	movzx esi, byte [ebx+edx+0x10]
	mov ecx, [ebp-0x50]
	and ecx, 0x7
	mov edx, esi
	movzx eax, dl
	sar eax, cl
	test al, 0x1
	jnz _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__410
	mov eax, [ebp-0x68]
	test eax, eax
	jle _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__420
	mov eax, [ebp-0x20]
	movzx eax, byte [ebx+eax+0x10]
	sar eax, cl
	test al, 0x1
	jz _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__410
	xor edx, edx
_Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__430:
	add edx, 0x1
	cmp [ebp-0x68], edx
	jz _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__420
	mov eax, [ebp+edx*4-0x20]
	movzx eax, byte [ebx+eax+0x10]
	sar eax, cl
	test al, 0x1
	jnz _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__430
_Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__410:
	add dword [ebp-0x50], 0x1
	cmp edi, [ebp-0x50]
	jnz _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__440
_Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__380:
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__190:
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x62
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x1
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z12AddOpcodePosji
	mov dword [esp], 0x4
	call _Z15TempMallocAligni
	mov [scrCompileGlob], eax
	mov dword [eax], 0x0
	mov edx, [scrCompileGlob]
	mov [ebp-0x74], edx
	mov dword [esp], 0x0
	call _Z10TempMalloci
	mov [ebp-0x6c], eax
	jmp _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__450
_Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__180:
	mov [ebp-0x20], ebx
	mov dword [ebp-0x68], 0x1
	jmp _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__460
_Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__350:
	mov eax, [ebx+0x4]
	sub eax, [ebx+0x8]
	mov [ebp-0x54], eax
	jz _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__470
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x17
	call _Z10EmitOpcodejii
	mov dword [esp], 0x1
	call _Z10TempMalloci
	mov [scrCompileGlob], eax
	movzx edx, byte [ebp-0x54]
	mov [eax], dl
	mov eax, [ebx+0x8]
	mov [ebx+0x4], eax
	jmp _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__470
_Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__420:
	mov eax, 0x1
	shl eax, cl
	or esi, eax
	mov eax, esi
	mov edx, [ebp+0x18]
	mov [ebx+edx+0x10], al
	add dword [ebp-0x50], 0x1
	cmp edi, [ebp-0x50]
	jnz _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__440
	jmp _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__380
_Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__340:
	xor ecx, ecx
	xor edx, edx
	xor eax, eax
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x1
	mov edx, [ebp+0x14]
	mov [esp], edx
	call _Z12AddOpcodePosji
	jmp _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__470
_Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__370:
	mov dword [esp], 0x0
	call _Z10TempMalloci
	sub eax, [ebp-0x6c]
	mov ebx, [ebp-0x74]
	mov [ebx], eax
	jmp _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__480
_Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__10:
	mov eax, ebx
	call _Z9EmitValueP20VariableCompileValue
	jmp _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__490
_Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__170:
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x17
	call _Z10EmitOpcodejii
	mov dword [esp], 0x1
	call _Z10TempMalloci
	mov [scrCompileGlob], eax
	mov edx, esi
	mov [eax], dl
	mov eax, [ebx+0x8]
	mov [ebx+0x4], eax
	mov eax, [ebp+0x1c]
	mov ebx, [eax]
	jmp _Z19EmitIfElseStatement6sval_uS_S_S_S_hjP11scr_block_sPS_S2__160


;EmitWhileStatement(sval_u, sval_u, sval_u, sval_u, scr_block_s*, sval_u*)
_Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xac
	mov [ebp-0x80], eax
	mov [ebp-0x84], edx
	mov [ebp-0x88], ecx
	movzx eax, byte [scrCompileGlob+0x2c]
	mov [ebp-0x71], al
	mov edx, [scrCompileGlob+0x30]
	mov [ebp-0x70], edx
	mov byte [scrCompileGlob+0x2c], 0x0
	movzx ecx, byte [scrCompileGlob+0x34]
	mov [ebp-0x69], cl
	mov ebx, [scrCompileGlob+0x38]
	mov [ebp-0x68], ebx
	mov byte [scrCompileGlob+0x34], 0x0
	mov esi, [ebp+0x10]
	mov edi, [esi]
	mov [ebp-0x30], edi
	mov eax, [ebp+0xc]
	add eax, 0x18
	mov [ebp-0x2c], eax
	mov dword [ebp-0x48], 0x0
_Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__100:
	mov eax, [ebp-0x48]
	cmp eax, [edi+0x8]
	jl _Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__10
	mov edx, [ebp+0xc]
	mov eax, [edx+0x4]
	cmp [ebp-0x48], eax
	jge _Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__20
_Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__10:
	mov edx, [ebp-0x2c]
	mov edx, [edx]
	mov [ebp-0x4c], edx
	mov esi, [edi+0xc]
	mov ecx, esi
	cmp [ebp-0x48], esi
	jge _Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__30
	mov ebx, [ebp-0x30]
	cmp edx, [ebx+0x18]
	jz _Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__40
	mov ebx, [ebp-0x48]
	lea edx, [edi+ebx*4+0x18]
_Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__50:
	add ebx, 0x1
	cmp esi, ebx
	jz _Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__30
	mov eax, [edx+0x4]
	add edx, 0x4
	cmp [ebp-0x4c], eax
	jnz _Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__50
_Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__140:
	test ebx, ebx
	js _Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__30
_Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__120:
	mov eax, [edi+0x8]
	cmp ebx, eax
	jl _Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__60
	add eax, 0x1
	mov [edi+0x8], eax
_Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__60:
	cmp [ebp-0x48], ebx
	jge _Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__70
	lea eax, [ebx*4]
	lea ecx, [eax+edi+0x14]
	lea edx, [eax+edi+0x18]
_Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__80:
	sub ebx, 0x1
	mov eax, [ecx]
	mov [edx], eax
	sub ecx, 0x4
	sub edx, 0x4
	cmp [ebp-0x48], ebx
	jl _Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__80
_Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__70:
	mov ebx, [ebp-0x4c]
	mov ecx, [ebp-0x30]
	mov [ecx+0x18], ebx
	mov edx, [ebp-0x48]
	sar edx, 0x3
	mov ecx, [ebp-0x48]
	and ecx, 0x7
	mov esi, [ebp+0xc]
	movzx eax, byte [edx+esi+0x10]
	sar eax, cl
	test al, 0x1
	jz _Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__90
	mov eax, 0x1
	shl eax, cl
	or [edx+edi+0x10], al
_Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__90:
	add dword [ebp-0x48], 0x1
	add dword [ebp-0x30], 0x4
	add dword [ebp-0x2c], 0x4
	jmp _Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__100
_Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__30:
	cmp esi, 0x3f
	jg _Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__110
_Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__130:
	lea eax, [ecx+0x1]
	mov [edi+0xc], eax
	mov ebx, esi
	jmp _Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__120
_Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__110:
	mov dword [esp+0x4], _cstring_local_var_stack_
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov ecx, [edi+0xc]
	jmp _Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__130
_Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__40:
	mov ebx, [ebp-0x48]
	jmp _Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__140
_Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__20:
	mov [edi+0x4], eax
	mov dword [edi], 0x0
	mov ecx, [ebp+0x10]
	mov esi, [ecx]
	mov ebx, [esi+0x4]
	mov [ebp-0x44], ebx
	mov eax, [esi+0x8]
	cmp ebx, eax
	jz _Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__150
	jl _Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__160
_Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__370:
	mov [esi+0x4], eax
	mov ebx, [ebp+0x10]
	mov esi, [ebx]
_Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__150:
	mov eax, [esi+0x4]
	mov esi, [ebp+0xc]
	mov [esi+0x4], eax
	mov dword [esp], 0x0
	call _Z10TempMalloci
	mov [ebp-0x7c], eax
	lea ebx, [ebp-0x28]
	mov ecx, esi
	mov edx, ebx
	mov eax, [ebp-0x80]
	call _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s
	test al, al
	jz _Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__170
	mov eax, [ebp-0x24]
	sub eax, 0x5
	cmp eax, 0x1
	jbe _Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__180
	mov eax, ebx
	call _Z9EmitValueP20VariableCompileValue
_Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__170:
	xor edi, edi
_Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__420:
	mov edx, [scrCompileGlob+0x3c]
	mov [ebp-0x64], edx
	mov ecx, [scrCompileGlob+0x40]
	mov [ebp-0x60], ecx
	mov ebx, [scrCompileGlob+0x44]
	mov [ebp-0x50], ebx
	mov esi, [scrCompileGlob+0x48]
	mov [ebp-0x58], esi
	mov eax, [scrCompileGlob+0x4c]
	mov [ebp-0x54], eax
	mov dword [ebp-0x1c], 0x0
	mov dword [scrCompileGlob+0x48], 0x0
	mov edx, [ebp+0x10]
	mov eax, [edx]
	mov [scrCompileGlob+0x44], eax
	mov ecx, edi
	test cl, cl
	jnz _Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__190
	xor ecx, ecx
	mov edx, 0xffffffff
	mov eax, 0x5e
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x0
	mov ebx, [ebp-0x88]
	mov [esp], ebx
	call _Z12AddOpcodePosji
	mov dword [esp], 0x2
	call _Z15TempMallocAligni
	mov [scrCompileGlob], eax
	mov word [eax], 0x0
	mov esi, [scrCompileGlob]
	mov dword [esp], 0x0
	call _Z10TempMalloci
	mov [ebp-0x78], eax
	mov dword [ebp-0x5c], 0x0
_Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__340:
	mov eax, [ebp-0x5c]
	mov [scrCompileGlob+0x3c], eax
	mov byte [scrCompileGlob+0x2c], 0x1
	mov dword [scrCompileGlob+0x30], 0x0
	mov byte [scrCompileGlob+0x34], 0x1
	mov dword [scrCompileGlob+0x38], 0x0
	mov edx, [ebp+0x10]
	mov eax, [edx]
	mov [esp], eax
	xor ecx, ecx
	xor edx, edx
	mov eax, [ebp-0x84]
	call _Z13EmitStatement6sval_uhjP11scr_block_s
	mov ecx, [ebp+0x10]
	mov eax, [ecx]
	cmp dword [eax], 0x3
	jz _Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__200
	mov dword [eax], 0x0
_Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__200:
	mov byte [scrCompileGlob+0x2c], 0x0
	mov byte [scrCompileGlob+0x34], 0x0
	mov dword [esp], 0x0
	call _Z10TempMalloci
	mov ebx, eax
	mov ecx, [scrCompileGlob+0x38]
	test ecx, ecx
	jz _Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__210
_Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__220:
	mov edx, [ecx]
	mov eax, ebx
	sub eax, [ecx+0x4]
	mov [edx], eax
	mov ecx, [ecx+0x8]
	test ecx, ecx
	jnz _Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__220
_Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__210:
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x63
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z12AddOpcodePosji
	mov ebx, [ebp-0x84]
	cmp dword [ebx], 0x2c
	jz _Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__230
_Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__430:
	mov dword [esp], 0x2
	call _Z15TempMallocAligni
	mov [scrCompileGlob], eax
	mov word [eax], 0x0
	mov dword [esp], 0x0
	call _Z10TempMalloci
	sub eax, [ebp-0x7c]
	mov edx, [scrCompileGlob]
	mov [edx], ax
	test esi, esi
	jz _Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__240
	mov dword [esp], 0x0
	call _Z10TempMalloci
	sub eax, [ebp-0x78]
	mov [esi], ax
_Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__240:
	mov dword [esp], 0x0
	call _Z10TempMalloci
	mov ebx, eax
	mov ecx, [scrCompileGlob+0x30]
	test ecx, ecx
	jz _Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__250
_Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__260:
	mov edx, [ecx]
	mov eax, ebx
	sub eax, [ecx+0x4]
	mov [edx], eax
	mov ecx, [ecx+0x8]
	test ecx, ecx
	jnz _Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__260
_Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__250:
	movzx eax, byte [ebp-0x71]
	mov [scrCompileGlob+0x2c], al
	mov edx, [ebp-0x70]
	mov [scrCompileGlob+0x30], edx
	movzx ecx, byte [ebp-0x69]
	mov [scrCompileGlob+0x34], cl
	mov ebx, [ebp-0x68]
	mov [scrCompileGlob+0x38], ebx
	mov eax, edi
	test al, al
	jz _Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__270
	mov edx, [ebp-0x1c]
	mov [ebp-0x3c], edx
	test edx, edx
	jz _Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__270
	mov ecx, [ebp-0x5c]
	mov eax, [ecx]
	mov edi, [eax+0x8]
	sub edx, 0x1
	jle _Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__280
	mov edx, 0x1
	mov ebx, [ebp-0x5c]
_Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__290:
	mov eax, [ebx+edx*4]
	mov eax, [eax+0x8]
	cmp eax, edi
	cmovl edi, eax
	add edx, 0x1
	cmp [ebp-0x3c], edx
	jnz _Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__290
_Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__280:
	mov esi, [ebp+0xc]
	mov [esi+0x4], edi
	test edi, edi
	jle _Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__270
	mov dword [ebp-0x38], 0x0
_Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__330:
	mov ebx, [ebp-0x38]
	sar ebx, 0x3
	mov eax, [ebp+0xc]
	movzx eax, byte [ebx+eax+0x10]
	mov [ebp-0x99], al
	mov ecx, [ebp-0x38]
	and ecx, 0x7
	movzx eax, al
	sar eax, cl
	test al, 0x1
	jnz _Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__300
	mov eax, [ebp-0x3c]
	test eax, eax
	jle _Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__310
	mov edx, [ebp-0x5c]
	mov eax, [edx]
	movzx eax, byte [ebx+eax+0x10]
	sar eax, cl
	test al, 0x1
	jz _Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__300
	xor edx, edx
_Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__320:
	add edx, 0x1
	cmp [ebp-0x3c], edx
	jz _Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__310
	mov esi, [ebp-0x5c]
	mov esi, [esi+edx*4]
	mov [ebp-0x8c], esi
	movzx eax, byte [ebx+esi+0x10]
	sar eax, cl
	test al, 0x1
	jnz _Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__320
_Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__300:
	add dword [ebp-0x38], 0x1
	cmp [ebp-0x38], edi
	jnz _Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__330
_Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__270:
	mov ecx, [ebp-0x64]
	mov [scrCompileGlob+0x3c], ecx
	mov ebx, [ebp-0x60]
	mov [scrCompileGlob+0x40], ebx
	mov esi, [ebp-0x50]
	mov [scrCompileGlob+0x44], esi
	mov eax, [ebp-0x58]
	mov [scrCompileGlob+0x48], eax
	mov edx, [ebp-0x54]
	mov [scrCompileGlob+0x4c], edx
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__190:
	mov dword [esp], 0x1000
	call Hunk_AllocateTempMemoryHigh
	mov [ebp-0x5c], eax
	lea eax, [ebp-0x1c]
	mov [scrCompileGlob+0x40], eax
	xor esi, esi
	mov dword [ebp-0x78], 0x0
	jmp _Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__340
_Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__160:
	mov ecx, [ebp-0x44]
	lea ecx, [esi+ecx*4+0x18]
	mov [ebp-0x34], ecx
	jmp _Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__350
_Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__380:
	cmp byte [scrCompileGlob+0x1c], 0x0
	jnz _Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__360
_Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__400:
	mov ebx, [scrCompileGlob]
	mov [esp], edi
	call _Z28SL_TransferToCanonicalStringj
	mov [ebx], ax
_Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__390:
	movzx ecx, byte [ebp-0x3d]
	mov [scrCompileGlob+0x1c], cl
	add dword [ebp-0x44], 0x1
	mov eax, [esi+0x8]
	add dword [ebp-0x34], 0x4
	cmp [ebp-0x44], eax
	jge _Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__370
_Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__350:
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x16
	call _Z10EmitOpcodejii
	mov eax, [ebp-0x34]
	mov edi, [eax]
	movzx edx, byte [scrCompileGlob+0x1c]
	mov [ebp-0x3d], dl
	mov byte [scrCompileGlob+0x1c], 0x1
	mov dword [esp], 0x2
	call _Z15TempMallocAligni
	mov [scrCompileGlob], eax
	cmp dword [scrCompilePub+0x20024], 0x2
	jnz _Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__380
	cmp byte [scrCompileGlob+0x1c], 0x0
	jnz _Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__390
	mov [esp], edi
	call _Z20SL_RemoveRefToStringj
	jmp _Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__390
_Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__310:
	mov eax, 0x1
	shl eax, cl
	or [ebp-0x99], al
	movzx eax, byte [ebp-0x99]
	mov edx, [ebp+0xc]
	mov [ebx+edx+0x10], al
	add dword [ebp-0x38], 0x1
	cmp [ebp-0x38], edi
	jnz _Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__330
	jmp _Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__270
_Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__360:
	mov [esp], edi
	call _Z17SL_AddRefToStringj
	jmp _Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__400
_Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__180:
	mov [esp], ebx
	call _Z12Scr_CastBoolP13VariableValue
	mov eax, [ebp-0x28]
	test eax, eax
	jz _Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__410
	mov edi, 0x1
	jmp _Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__420
_Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__230:
	mov dword [esp+0x4], 0x1
	mov eax, [ebx+0xc]
	mov [esp], eax
	call _Z12AddOpcodePosji
	jmp _Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__430
_Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__410:
	mov dword [esp+0x4], _cstring_conditional_expr
	mov eax, [ebp-0x88]
	mov [esp], eax
	call CompileError
	mov edi, 0x1
	jmp _Z18EmitWhileStatement6sval_uS_S_S_P11scr_block_sPS__420
	nop


;EmitIfStatement(sval_u, sval_u, sval_u, unsigned char, unsigned int, scr_block_s*, sval_u*)
_Z15EmitIfStatement6sval_uS_S_hjP11scr_block_sPS_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov [ebp-0x44], edx
	mov edi, ecx
	movzx edx, byte [ebp+0x8]
	mov [ebp-0x45], dl
	lea esi, [ebp-0x24]
	mov ecx, [ebp+0x10]
	mov edx, esi
	call _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s
	test al, al
	jnz _Z15EmitIfStatement6sval_uS_S_hjP11scr_block_sPS__10
_Z15EmitIfStatement6sval_uS_S_hjP11scr_block_sPS__180:
	xor ecx, ecx
	mov edx, 0xffffffff
	mov eax, 0x5e
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call _Z12AddOpcodePosji
	mov dword [esp], 0x2
	call _Z15TempMallocAligni
	mov [scrCompileGlob], eax
	mov word [eax], 0x0
	mov ebx, [scrCompileGlob]
	mov [ebp-0x40], ebx
	mov dword [esp], 0x0
	call _Z10TempMalloci
	mov [ebp-0x3c], eax
	mov eax, [ebp+0x14]
	mov edi, [eax]
	mov [ebp-0x30], edi
	mov edx, [ebp+0x10]
	add edx, 0x18
	mov [ebp-0x2c], edx
	mov dword [ebp-0x34], 0x0
_Z15EmitIfStatement6sval_uS_S_hjP11scr_block_sPS__110:
	mov eax, [ebp-0x34]
	cmp eax, [edi+0x8]
	jl _Z15EmitIfStatement6sval_uS_S_hjP11scr_block_sPS__20
	mov edx, [ebp+0x10]
	mov eax, [edx+0x4]
	cmp [ebp-0x34], eax
	jge _Z15EmitIfStatement6sval_uS_S_hjP11scr_block_sPS__30
_Z15EmitIfStatement6sval_uS_S_hjP11scr_block_sPS__20:
	mov ebx, [ebp-0x2c]
	mov ebx, [ebx]
	mov [ebp-0x38], ebx
	mov esi, [edi+0xc]
	mov ecx, esi
	cmp [ebp-0x34], esi
	jge _Z15EmitIfStatement6sval_uS_S_hjP11scr_block_sPS__40
	mov eax, [ebp-0x30]
	cmp [eax+0x18], ebx
	jz _Z15EmitIfStatement6sval_uS_S_hjP11scr_block_sPS__50
	mov ebx, [ebp-0x34]
	lea edx, [edi+ebx*4+0x18]
_Z15EmitIfStatement6sval_uS_S_hjP11scr_block_sPS__60:
	add ebx, 0x1
	cmp ebx, esi
	jz _Z15EmitIfStatement6sval_uS_S_hjP11scr_block_sPS__40
	mov eax, [edx+0x4]
	add edx, 0x4
	cmp [ebp-0x38], eax
	jnz _Z15EmitIfStatement6sval_uS_S_hjP11scr_block_sPS__60
_Z15EmitIfStatement6sval_uS_S_hjP11scr_block_sPS__150:
	test ebx, ebx
	js _Z15EmitIfStatement6sval_uS_S_hjP11scr_block_sPS__40
_Z15EmitIfStatement6sval_uS_S_hjP11scr_block_sPS__130:
	mov eax, [edi+0x8]
	cmp ebx, eax
	jl _Z15EmitIfStatement6sval_uS_S_hjP11scr_block_sPS__70
	add eax, 0x1
	mov [edi+0x8], eax
_Z15EmitIfStatement6sval_uS_S_hjP11scr_block_sPS__70:
	cmp [ebp-0x34], ebx
	jge _Z15EmitIfStatement6sval_uS_S_hjP11scr_block_sPS__80
	lea eax, [ebx*4]
	lea ecx, [eax+edi+0x14]
	lea edx, [eax+edi+0x18]
_Z15EmitIfStatement6sval_uS_S_hjP11scr_block_sPS__90:
	sub ebx, 0x1
	mov eax, [ecx]
	mov [edx], eax
	sub ecx, 0x4
	sub edx, 0x4
	cmp [ebp-0x34], ebx
	jl _Z15EmitIfStatement6sval_uS_S_hjP11scr_block_sPS__90
_Z15EmitIfStatement6sval_uS_S_hjP11scr_block_sPS__80:
	mov edx, [ebp-0x38]
	mov eax, [ebp-0x30]
	mov [eax+0x18], edx
	mov edx, [ebp-0x34]
	sar edx, 0x3
	mov ecx, [ebp-0x34]
	and ecx, 0x7
	mov ebx, [ebp+0x10]
	movzx eax, byte [edx+ebx+0x10]
	sar eax, cl
	test al, 0x1
	jz _Z15EmitIfStatement6sval_uS_S_hjP11scr_block_sPS__100
	mov eax, 0x1
	shl eax, cl
	or [edx+edi+0x10], al
_Z15EmitIfStatement6sval_uS_S_hjP11scr_block_sPS__100:
	add dword [ebp-0x34], 0x1
	add dword [ebp-0x30], 0x4
	add dword [ebp-0x2c], 0x4
	jmp _Z15EmitIfStatement6sval_uS_S_hjP11scr_block_sPS__110
_Z15EmitIfStatement6sval_uS_S_hjP11scr_block_sPS__40:
	cmp esi, 0x3f
	jg _Z15EmitIfStatement6sval_uS_S_hjP11scr_block_sPS__120
_Z15EmitIfStatement6sval_uS_S_hjP11scr_block_sPS__140:
	lea eax, [ecx+0x1]
	mov [edi+0xc], eax
	mov ebx, esi
	jmp _Z15EmitIfStatement6sval_uS_S_hjP11scr_block_sPS__130
_Z15EmitIfStatement6sval_uS_S_hjP11scr_block_sPS__120:
	mov dword [esp+0x4], _cstring_local_var_stack_
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov ecx, [edi+0xc]
	jmp _Z15EmitIfStatement6sval_uS_S_hjP11scr_block_sPS__140
_Z15EmitIfStatement6sval_uS_S_hjP11scr_block_sPS__50:
	mov ebx, [ebp-0x34]
	jmp _Z15EmitIfStatement6sval_uS_S_hjP11scr_block_sPS__150
_Z15EmitIfStatement6sval_uS_S_hjP11scr_block_sPS__30:
	mov [edi+0x4], eax
	mov dword [edi], 0x0
	mov ebx, [ebp+0x14]
	mov eax, [ebx]
	movzx ebx, byte [ebp-0x45]
	mov [esp], eax
	mov ecx, [ebp+0xc]
	mov edx, ebx
	mov eax, [ebp-0x44]
	call _Z13EmitStatement6sval_uhjP11scr_block_s
	mov eax, [ebp+0x14]
	mov esi, [eax]
	mov edx, scrVarPub
	mov edi, [edx+0x38]
	test ebx, ebx
	jnz _Z15EmitIfStatement6sval_uS_S_hjP11scr_block_sPS__160
	mov eax, [esi]
	test eax, eax
	jnz _Z15EmitIfStatement6sval_uS_S_hjP11scr_block_sPS__170
	mov eax, [esi+0x4]
	mov ebx, eax
	sub ebx, [esi+0x8]
	jz _Z15EmitIfStatement6sval_uS_S_hjP11scr_block_sPS__170
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x17
	call _Z10EmitOpcodejii
	mov dword [esp], 0x1
	call _Z10TempMalloci
	mov [scrCompileGlob], eax
	mov [eax], bl
	mov eax, [esi+0x8]
	mov [esi+0x4], eax
_Z15EmitIfStatement6sval_uS_S_hjP11scr_block_sPS__170:
	lea eax, [edi+0x1]
	mov edx, scrVarPub
	mov [edx+0x38], eax
	mov dword [esp], 0x0
	call _Z10TempMalloci
	sub eax, [ebp-0x3c]
	mov ebx, [ebp-0x40]
	mov [ebx], ax
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15EmitIfStatement6sval_uS_S_hjP11scr_block_sPS__160:
	xor ecx, ecx
	xor edx, edx
	xor eax, eax
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x1
	mov ebx, [ebp+0xc]
	mov [esp], ebx
	call _Z12AddOpcodePosji
	jmp _Z15EmitIfStatement6sval_uS_S_hjP11scr_block_sPS__170
_Z15EmitIfStatement6sval_uS_S_hjP11scr_block_sPS__10:
	mov eax, esi
	call _Z9EmitValueP20VariableCompileValue
	jmp _Z15EmitIfStatement6sval_uS_S_hjP11scr_block_sPS__180


;EmitForStatement(sval_u, sval_u, sval_u, sval_u, sval_u, sval_u, scr_block_s*, sval_u*, sval_u*)
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xec
	mov [ebp-0xb8], edx
	mov [ebp-0xbc], ecx
	movzx edx, byte [scrCompileGlob+0x2c]
	mov [ebp-0xa5], dl
	mov ecx, [scrCompileGlob+0x30]
	mov [ebp-0xa4], ecx
	mov byte [scrCompileGlob+0x2c], 0x0
	movzx ebx, byte [scrCompileGlob+0x34]
	mov [ebp-0x9d], bl
	mov esi, [scrCompileGlob+0x38]
	mov [ebp-0x9c], esi
	mov byte [scrCompileGlob+0x34], 0x0
	mov edx, [ebp+0x14]
	mov [esp], edx
	xor ecx, ecx
	xor edx, edx
	call _Z13EmitStatement6sval_uhjP11scr_block_s
	mov ecx, [ebp+0x18]
	mov edi, [ecx]
	mov [ebp-0x44], edi
	mov ebx, [ebp+0x14]
	add ebx, 0x18
	mov [ebp-0x3c], ebx
	mov [ebp-0x40], ebx
	mov dword [ebp-0x74], 0x0
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__100:
	mov esi, [ebp-0x74]
	cmp esi, [edi+0x8]
	jl _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__10
	mov edx, [ebp+0x14]
	mov eax, [edx+0x4]
	cmp esi, eax
	jge _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__20
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__10:
	mov esi, [ebp-0x40]
	mov esi, [esi]
	mov [ebp-0x78], esi
	mov esi, [edi+0xc]
	mov ecx, esi
	cmp [ebp-0x74], esi
	jge _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__30
	mov edx, [ebp-0x78]
	mov eax, [ebp-0x44]
	cmp edx, [eax+0x18]
	jz _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__40
	mov ebx, [ebp-0x74]
	lea edx, [edi+ebx*4+0x18]
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__50:
	add ebx, 0x1
	cmp ebx, esi
	jz _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__30
	mov eax, [edx+0x4]
	add edx, 0x4
	cmp [ebp-0x78], eax
	jnz _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__50
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__140:
	test ebx, ebx
	js _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__30
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__120:
	mov eax, [edi+0x8]
	cmp ebx, eax
	jl _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__60
	add eax, 0x1
	mov [edi+0x8], eax
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__60:
	cmp [ebp-0x74], ebx
	jge _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__70
	lea eax, [ebx*4]
	lea ecx, [eax+edi+0x14]
	lea edx, [eax+edi+0x18]
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__80:
	sub ebx, 0x1
	mov eax, [ecx]
	mov [edx], eax
	sub ecx, 0x4
	sub edx, 0x4
	cmp [ebp-0x74], ebx
	jl _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__80
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__70:
	mov edx, [ebp-0x78]
	mov eax, [ebp-0x44]
	mov [eax+0x18], edx
	mov edx, [ebp-0x74]
	sar edx, 0x3
	mov ecx, [ebp-0x74]
	and ecx, 0x7
	mov ebx, [ebp+0x14]
	movzx eax, byte [edx+ebx+0x10]
	sar eax, cl
	test al, 0x1
	jz _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__90
	mov eax, 0x1
	shl eax, cl
	or [edx+edi+0x10], al
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__90:
	add dword [ebp-0x74], 0x1
	add dword [ebp-0x44], 0x4
	add dword [ebp-0x40], 0x4
	jmp _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__100
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__30:
	cmp esi, 0x3f
	jg _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__110
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__130:
	lea eax, [ecx+0x1]
	mov [edi+0xc], eax
	mov ebx, esi
	jmp _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__120
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__110:
	mov dword [esp+0x4], _cstring_local_var_stack_
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov ecx, [edi+0xc]
	jmp _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__130
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__40:
	mov ebx, [ebp-0x74]
	jmp _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__140
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__20:
	mov [edi+0x4], eax
	mov dword [edi], 0x0
	mov ecx, [ebp+0x18]
	mov esi, [ecx]
	mov ebx, [esi+0x4]
	mov [ebp-0x70], ebx
	mov eax, [esi+0x8]
	cmp ebx, eax
	jz _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__150
	jl _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__160
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__600:
	mov [esi+0x4], eax
	mov ebx, [ebp+0x18]
	mov esi, [ebx]
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__150:
	mov eax, [esi+0x4]
	mov esi, [ebp+0x14]
	mov [esi+0x4], eax
	mov eax, [ebp+0x1c]
	mov edi, [eax]
	mov [ebp-0x50], edi
	mov edx, [ebp-0x3c]
	mov [ebp-0x4c], edx
	mov dword [ebp-0x64], 0x0
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__260:
	mov esi, [ebp-0x64]
	cmp esi, [edi+0x8]
	jl _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__170
	mov edx, [ebp+0x14]
	mov eax, [edx+0x4]
	cmp esi, eax
	jge _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__180
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__170:
	mov ecx, [ebp-0x4c]
	mov ecx, [ecx]
	mov [ebp-0x68], ecx
	mov esi, [edi+0xc]
	mov ecx, esi
	cmp [ebp-0x64], esi
	jge _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__190
	mov eax, [ebp-0x68]
	mov ebx, [ebp-0x50]
	cmp eax, [ebx+0x18]
	jz _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__200
	mov ebx, [ebp-0x64]
	lea edx, [edi+ebx*4+0x18]
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__210:
	add ebx, 0x1
	cmp esi, ebx
	jz _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__190
	mov eax, [edx+0x4]
	add edx, 0x4
	cmp [ebp-0x68], eax
	jnz _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__210
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__300:
	test ebx, ebx
	js _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__190
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__280:
	mov eax, [edi+0x8]
	cmp ebx, eax
	jl _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__220
	add eax, 0x1
	mov [edi+0x8], eax
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__220:
	cmp [ebp-0x64], ebx
	jge _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__230
	lea eax, [ebx*4]
	lea ecx, [eax+edi+0x14]
	lea edx, [eax+edi+0x18]
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__240:
	sub ebx, 0x1
	mov eax, [ecx]
	mov [edx], eax
	sub ecx, 0x4
	sub edx, 0x4
	cmp [ebp-0x64], ebx
	jl _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__240
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__230:
	mov esi, [ebp-0x68]
	mov ebx, [ebp-0x50]
	mov [ebx+0x18], esi
	mov edx, [ebp-0x64]
	sar edx, 0x3
	mov ecx, [ebp-0x64]
	and ecx, 0x7
	mov ebx, [ebp+0x14]
	movzx eax, byte [edx+ebx+0x10]
	sar eax, cl
	test al, 0x1
	jz _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__250
	mov eax, 0x1
	shl eax, cl
	or [edx+edi+0x10], al
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__250:
	add dword [ebp-0x64], 0x1
	add dword [ebp-0x50], 0x4
	add dword [ebp-0x4c], 0x4
	jmp _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__260
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__190:
	cmp esi, 0x3f
	jg _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__270
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__290:
	lea eax, [ecx+0x1]
	mov [edi+0xc], eax
	mov ebx, esi
	jmp _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__280
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__270:
	mov dword [esp+0x4], _cstring_local_var_stack_
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov ecx, [edi+0xc]
	jmp _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__290
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__200:
	mov ebx, [ebp-0x64]
	jmp _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__300
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__180:
	mov [edi+0x4], eax
	mov dword [edi], 0x0
	mov dword [esp], 0x0
	call _Z10TempMalloci
	mov [ebp-0xb4], eax
	mov ecx, [ebp-0xb8]
	cmp dword [ecx], 0x41
	jz _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__310
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__700:
	mov byte [ebp-0x95], 0x1
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__670:
	mov esi, [scrCompileGlob+0x3c]
	mov [ebp-0x94], esi
	mov eax, [scrCompileGlob+0x40]
	mov [ebp-0x90], eax
	mov edx, [scrCompileGlob+0x44]
	mov [ebp-0x7c], edx
	mov ecx, [scrCompileGlob+0x48]
	mov [ebp-0x84], ecx
	mov ebx, [scrCompileGlob+0x4c]
	mov [ebp-0x80], ebx
	mov dword [ebp-0x1c], 0x0
	mov dword [ebp-0x20], 0x0
	mov dword [esp], 0x1000
	call Hunk_AllocateTempMemoryHigh
	mov [ebp-0x88], eax
	mov [scrCompileGlob+0x48], eax
	lea eax, [ebp-0x20]
	mov [scrCompileGlob+0x4c], eax
	mov esi, [ebp+0x18]
	mov eax, [esi]
	mov [scrCompileGlob+0x44], eax
	cmp byte [ebp-0x95], 0x0
	jnz _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__320
	xor ecx, ecx
	mov edx, 0xffffffff
	mov eax, 0x5e
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z12AddOpcodePosji
	mov dword [esp], 0x2
	call _Z15TempMallocAligni
	mov [scrCompileGlob], eax
	mov word [eax], 0x0
	mov edx, [scrCompileGlob]
	mov [ebp-0xb0], edx
	mov dword [esp], 0x0
	call _Z10TempMalloci
	mov [ebp-0xac], eax
	mov dword [ebp-0x8c], 0x0
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__570:
	mov ecx, [ebp-0x8c]
	mov [scrCompileGlob+0x3c], ecx
	mov byte [scrCompileGlob+0x2c], 0x1
	mov dword [scrCompileGlob+0x30], 0x0
	mov byte [scrCompileGlob+0x34], 0x1
	mov dword [scrCompileGlob+0x38], 0x0
	mov ebx, [ebp+0x18]
	mov eax, [ebx]
	mov [esp], eax
	xor ecx, ecx
	xor edx, edx
	mov eax, [ebp+0x8]
	call _Z13EmitStatement6sval_uhjP11scr_block_s
	mov esi, [ebp+0x18]
	mov ebx, [esi]
	mov eax, [ebx]
	test eax, eax
	jnz _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__330
	mov edi, [scrCompileGlob+0x48]
	test edi, edi
	jz _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__330
	cmp dword [scrCompilePub+0x20024], 0x2
	jz _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__330
	mov eax, [scrCompileGlob+0x4c]
	cmp dword [eax], 0x3ff
	jg _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__340
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__690:
	mov edx, [eax]
	mov eax, [scrCompileGlob+0x48]
	mov [eax+edx*4], ebx
	mov eax, [scrCompileGlob+0x4c]
	add dword [eax], 0x1
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__330:
	mov byte [scrCompileGlob+0x2c], 0x0
	mov byte [scrCompileGlob+0x34], 0x0
	mov dword [esp], 0x0
	call _Z10TempMalloci
	mov ebx, eax
	mov ecx, [scrCompileGlob+0x38]
	test ecx, ecx
	jz _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__350
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__360:
	mov edx, [ecx]
	mov eax, ebx
	sub eax, [ecx+0x4]
	mov [edx], eax
	mov ecx, [ecx+0x8]
	test ecx, ecx
	jnz _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__360
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__350:
	mov eax, [ebp+0x1c]
	mov eax, [eax]
	mov [ebp-0xc0], eax
	mov edx, [ebp-0x20]
	mov [ebp-0x60], edx
	test edx, edx
	jz _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__370
	mov ecx, [ebp-0x88]
	mov eax, [ecx]
	mov edi, [eax+0x8]
	sub edx, 0x1
	jle _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__380
	mov edx, 0x1
	mov ebx, [ebp-0x88]
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__390:
	mov eax, [ebx+edx*4]
	mov eax, [eax+0x8]
	cmp eax, edi
	cmovl edi, eax
	add edx, 0x1
	cmp [ebp-0x60], edx
	jnz _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__390
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__380:
	mov esi, [ebp-0xc0]
	mov [esi+0x4], edi
	test edi, edi
	jle _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__400
	mov dword [ebp-0x5c], 0x0
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__440:
	mov ebx, [ebp-0x5c]
	sar ebx, 0x3
	mov eax, [ebp-0xc0]
	movzx eax, byte [ebx+eax+0x10]
	mov [ebp-0xd9], al
	mov ecx, [ebp-0x5c]
	and ecx, 0x7
	movzx eax, al
	sar eax, cl
	test al, 0x1
	jnz _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__410
	mov esi, [ebp-0x60]
	test esi, esi
	jle _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__420
	mov edx, [ebp-0x88]
	mov eax, [edx]
	movzx eax, byte [ebx+eax+0x10]
	sar eax, cl
	test al, 0x1
	jz _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__410
	xor edx, edx
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__430:
	add edx, 0x1
	cmp [ebp-0x60], edx
	jz _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__420
	mov esi, [ebp-0x88]
	mov esi, [esi+edx*4]
	mov [ebp-0xcc], esi
	movzx eax, byte [ebx+esi+0x10]
	sar eax, cl
	test al, 0x1
	jnz _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__430
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__410:
	add dword [ebp-0x5c], 0x1
	cmp [ebp-0x5c], edi
	jnz _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__440
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__630:
	mov ecx, [ebp+0x1c]
	mov ecx, [ecx]
	mov [ebp-0xc0], ecx
	mov esi, ecx
	jmp _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__450
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__370:
	mov esi, eax
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__450:
	mov [esp], esi
	xor ecx, ecx
	xor edx, edx
	mov eax, [ebp-0xbc]
	call _Z13EmitStatement6sval_uhjP11scr_block_s
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x63
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0x10]
	mov [esp], eax
	call _Z12AddOpcodePosji
	mov eax, [ebp+0x8]
	cmp dword [eax], 0x2c
	jz _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__460
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__680:
	mov dword [esp], 0x2
	call _Z15TempMallocAligni
	mov [scrCompileGlob], eax
	mov word [eax], 0x0
	mov dword [esp], 0x0
	call _Z10TempMalloci
	sub eax, [ebp-0xb4]
	mov edx, [scrCompileGlob]
	mov [edx], ax
	mov edx, [ebp-0xb0]
	test edx, edx
	jz _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__470
	mov dword [esp], 0x0
	call _Z10TempMalloci
	sub eax, [ebp-0xac]
	mov ecx, [ebp-0xb0]
	mov [ecx], ax
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__470:
	mov dword [esp], 0x0
	call _Z10TempMalloci
	mov ebx, eax
	mov ecx, [scrCompileGlob+0x30]
	test ecx, ecx
	jz _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__480
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__490:
	mov edx, [ecx]
	mov eax, ebx
	sub eax, [ecx+0x4]
	mov [edx], eax
	mov ecx, [ecx+0x8]
	test ecx, ecx
	jnz _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__490
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__480:
	movzx ebx, byte [ebp-0xa5]
	mov [scrCompileGlob+0x2c], bl
	mov esi, [ebp-0xa4]
	mov [scrCompileGlob+0x30], esi
	movzx eax, byte [ebp-0x9d]
	mov [scrCompileGlob+0x34], al
	mov edx, [ebp-0x9c]
	mov [scrCompileGlob+0x38], edx
	cmp byte [ebp-0x95], 0x0
	jz _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__500
	mov ecx, [ebp-0x1c]
	mov [ebp-0x58], ecx
	test ecx, ecx
	jz _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__500
	mov ebx, [ebp-0x8c]
	mov eax, [ebx]
	mov edi, [eax+0x8]
	sub ecx, 0x1
	jle _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__510
	mov edx, 0x1
	mov esi, [ebp-0x8c]
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__520:
	mov eax, [esi+edx*4]
	mov eax, [eax+0x8]
	cmp eax, edi
	cmovl edi, eax
	add edx, 0x1
	cmp [ebp-0x58], edx
	jnz _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__520
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__510:
	mov eax, [ebp+0x14]
	mov [eax+0x4], edi
	test edi, edi
	jle _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__500
	mov dword [ebp-0x54], 0x0
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__560:
	mov ebx, [ebp-0x54]
	sar ebx, 0x3
	mov edx, [ebp+0x14]
	movzx edx, byte [ebx+edx+0x10]
	mov [ebp-0xd9], dl
	mov ecx, [ebp-0x54]
	and ecx, 0x7
	movzx eax, dl
	sar eax, cl
	test al, 0x1
	jnz _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__530
	mov eax, [ebp-0x58]
	test eax, eax
	jle _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__540
	mov esi, [ebp-0x8c]
	mov eax, [esi]
	movzx eax, byte [ebx+eax+0x10]
	sar eax, cl
	test al, 0x1
	jz _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__530
	xor edx, edx
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__550:
	add edx, 0x1
	cmp [ebp-0x58], edx
	jz _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__540
	mov eax, [ebp-0x8c]
	mov eax, [eax+edx*4]
	movzx eax, byte [ebx+eax+0x10]
	sar eax, cl
	test al, 0x1
	jnz _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__550
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__530:
	add dword [ebp-0x54], 0x1
	cmp [ebp-0x54], edi
	jnz _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__560
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__500:
	mov ecx, [ebp-0x94]
	mov [scrCompileGlob+0x3c], ecx
	mov ebx, [ebp-0x90]
	mov [scrCompileGlob+0x40], ebx
	mov esi, [ebp-0x7c]
	mov [scrCompileGlob+0x44], esi
	mov eax, [ebp-0x84]
	mov [scrCompileGlob+0x48], eax
	mov edx, [ebp-0x80]
	mov [scrCompileGlob+0x4c], edx
	add esp, 0xec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__320:
	mov dword [esp], 0x1000
	call Hunk_AllocateTempMemoryHigh
	mov [ebp-0x8c], eax
	lea eax, [ebp-0x1c]
	mov [scrCompileGlob+0x40], eax
	mov dword [ebp-0xb0], 0x0
	mov dword [ebp-0xac], 0x0
	jmp _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__570
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__400:
	mov ebx, [ebp+0x1c]
	mov ebx, [ebx]
	mov [ebp-0xc0], ebx
	mov esi, ebx
	jmp _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__450
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__160:
	mov ecx, [ebp-0x70]
	lea ecx, [esi+ecx*4+0x18]
	mov [ebp-0x48], ecx
	jmp _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__580
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__610:
	cmp byte [scrCompileGlob+0x1c], 0x0
	jnz _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__590
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__640:
	mov ebx, [scrCompileGlob]
	mov [esp], edi
	call _Z28SL_TransferToCanonicalStringj
	mov [ebx], ax
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__620:
	movzx ecx, byte [ebp-0x69]
	mov [scrCompileGlob+0x1c], cl
	add dword [ebp-0x70], 0x1
	mov eax, [esi+0x8]
	add dword [ebp-0x48], 0x4
	cmp [ebp-0x70], eax
	jge _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__600
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__580:
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x16
	call _Z10EmitOpcodejii
	mov eax, [ebp-0x48]
	mov edi, [eax]
	movzx edx, byte [scrCompileGlob+0x1c]
	mov [ebp-0x69], dl
	mov byte [scrCompileGlob+0x1c], 0x1
	mov dword [esp], 0x2
	call _Z15TempMallocAligni
	mov [scrCompileGlob], eax
	cmp dword [scrCompilePub+0x20024], 0x2
	jnz _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__610
	cmp byte [scrCompileGlob+0x1c], 0x0
	jnz _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__620
	mov [esp], edi
	call _Z20SL_RemoveRefToStringj
	jmp _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__620
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__540:
	mov eax, 0x1
	shl eax, cl
	or [ebp-0xd9], al
	movzx eax, byte [ebp-0xd9]
	mov edx, [ebp+0x14]
	mov [ebx+edx+0x10], al
	add dword [ebp-0x54], 0x1
	cmp [ebp-0x54], edi
	jnz _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__560
	jmp _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__500
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__420:
	mov eax, 0x1
	shl eax, cl
	or [ebp-0xd9], al
	movzx eax, byte [ebp-0xd9]
	mov edx, [ebp-0xc0]
	mov [ebx+edx+0x10], al
	add dword [ebp-0x5c], 0x1
	cmp [ebp-0x5c], edi
	jnz _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__440
	jmp _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__630
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__590:
	mov [esp], edi
	call _Z17SL_AddRefToStringj
	jmp _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__640
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__310:
	mov eax, [ecx+0x4]
	lea ebx, [ebp-0x2c]
	mov ecx, [ebp+0x14]
	mov edx, ebx
	call _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s
	test al, al
	jz _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__650
	mov eax, [ebp-0x28]
	sub eax, 0x5
	cmp eax, 0x1
	jbe _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__660
	mov eax, ebx
	call _Z9EmitValueP20VariableCompileValue
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__650:
	mov byte [ebp-0x95], 0x0
	jmp _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__670
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__460:
	mov dword [esp+0x4], 0x1
	mov eax, [eax+0xc]
	mov [esp], eax
	call _Z12AddOpcodePosji
	jmp _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__680
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__340:
	mov dword [esp+0x4], _cstring_max_switch_cases
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov eax, [scrCompileGlob+0x4c]
	jmp _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__690
_Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__660:
	mov [esp], ebx
	call _Z12Scr_CastBoolP13VariableValue
	mov eax, [ebp-0x2c]
	test eax, eax
	jnz _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__700
	mov dword [esp+0x4], _cstring_conditional_expr
	mov ebx, [ebp+0xc]
	mov [esp], ebx
	call CompileError
	mov byte [ebp-0x95], 0x1
	jmp _Z16EmitForStatement6sval_uS_S_S_S_S_P11scr_block_sPS_S2__670
	nop


;EmitSwitchStatement(sval_u, sval_u, sval_u, unsigned char, unsigned int, scr_block_s*)
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	mov edi, edx
	mov [ebp-0x78], ecx
	movzx esi, byte [ebp+0x8]
	mov edx, [scrCompileGlob+0x28]
	mov [ebp-0x74], edx
	movzx ecx, byte [scrCompileGlob+0x2c]
	mov [ebp-0x6d], cl
	mov ebx, [scrCompileGlob+0x30]
	mov [ebp-0x6c], ebx
	mov byte [scrCompileGlob+0x2c], 0x0
	lea ebx, [ebp-0x28]
	mov ecx, [ebp+0x10]
	mov edx, ebx
	call _Z20EmitOrEvalExpression6sval_uP20VariableCompileValueP11scr_block_s
	test al, al
	jnz _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_10
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_590:
	xor ecx, ecx
	mov edx, 0xffffffff
	mov eax, 0x7c
	call _Z10EmitOpcodejii
	mov dword [esp], 0x4
	call _Z15TempMallocAligni
	mov [scrCompileGlob], eax
	mov dword [eax], 0x0
	mov eax, [scrCompileGlob]
	mov [ebp-0x68], eax
	mov dword [esp], 0x0
	call _Z10TempMalloci
	mov [ebp-0x60], eax
	mov dword [scrCompileGlob+0x28], 0x0
	mov dword [scrCompileGlob+0x30], 0x0
	mov edx, esi
	mov [ebp-0x56], dl
	mov ecx, [scrCompileGlob+0x3c]
	mov [ebp-0x54], ecx
	mov ebx, [scrCompileGlob+0x40]
	mov [ebp-0x50], ebx
	mov esi, [scrCompileGlob+0x44]
	mov [ebp-0x4c], esi
	mov dword [ebp-0x1c], 0x0
	mov dword [esp], 0x1000
	call Hunk_AllocateTempMemoryHigh
	mov [ebp-0x3c], eax
	mov [scrCompileGlob+0x3c], eax
	lea eax, [ebp-0x1c]
	mov [scrCompileGlob+0x40], eax
	mov dword [scrCompileGlob+0x44], 0x0
	mov eax, [edi]
	mov esi, [eax+0x4]
	test esi, esi
	jz _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_20
	mov byte [ebp-0x55], 0x0
	mov eax, [esi+0x4]
	mov [ebp-0x2c], eax
	mov ebx, [esi]
	mov eax, [ebx]
	sub eax, 0x3d
	cmp eax, 0x1
	jbe _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_30
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_100:
	mov ecx, [scrCompileGlob+0x44]
	test ecx, ecx
	jz _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_40
	cmp byte [ebp-0x56], 0x0
	jz _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_50
	mov esi, [ebp-0x2c]
	test esi, esi
	jz _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_60
	mov eax, scrVarPub
	cmp byte [eax+0x7], 0x0
	jnz _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_50
	mov edx, [ebp-0x2c]
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_70:
	mov eax, [edx]
	cmp dword [eax], 0x2d
	jnz _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_50
	mov edx, [edx+0x4]
	test edx, edx
	jnz _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_70
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_60:
	mov edx, 0x1
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_250:
	mov [esp], ecx
	mov ecx, [ebp+0xc]
	mov eax, ebx
	call _Z13EmitStatement6sval_uhjP11scr_block_s
	mov eax, [scrCompileGlob+0x44]
	test eax, eax
	jz _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_80
	mov ebx, [eax]
	test ebx, ebx
	jz _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_80
	mov dword [scrCompileGlob+0x44], 0x0
	mov byte [scrCompileGlob+0x2c], 0x0
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_80:
	mov ecx, [ebp-0x2c]
	test ecx, ecx
	jz _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_90
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_300:
	mov esi, [ebp-0x2c]
	mov eax, [esi+0x4]
	mov [ebp-0x2c], eax
	mov ebx, [esi]
	mov eax, [ebx]
	sub eax, 0x3d
	cmp eax, 0x1
	ja _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_100
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_30:
	mov eax, [scrCompileGlob+0x44]
	test eax, eax
	jz _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_110
	mov byte [scrCompileGlob+0x2c], 0x0
	mov ebx, [scrCompileGlob+0x44]
	mov edi, [ebx]
	test edi, edi
	jz _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_120
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_440:
	mov ebx, [esi]
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_110:
	cmp dword [ebx], 0x3d
	jz _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_130
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_450:
	mov eax, [ebx+0x8]
	mov [scrCompileGlob+0x44], eax
	mov eax, [esi]
	mov esi, [eax+0x4]
	cmp dword [scrCompilePub+0x20024], 0x2
	jz _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_140
	mov dword [esp], 0x10
	call Hunk_AllocateTempMemoryHigh
	mov ebx, eax
	mov dword [eax], 0x0
	mov dword [esp], 0x0
	call _Z10TempMalloci
	mov [ebx+0x4], eax
	mov [ebx+0x8], esi
	mov eax, [scrCompileGlob+0x28]
	mov [ebx+0xc], eax
	mov [scrCompileGlob+0x28], ebx
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_140:
	mov byte [ebp-0x55], 0x1
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_480:
	mov edi, [scrCompileGlob+0x44]
	mov [ebp-0x34], edi
	mov ecx, [ebp+0x10]
	add ecx, 0x18
	mov [ebp-0x30], ecx
	mov dword [ebp-0x44], 0x0
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_240:
	mov esi, [ebp-0x44]
	cmp esi, [edi+0x8]
	jl _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_150
	mov edx, [ebp+0x10]
	mov eax, [edx+0x4]
	cmp esi, eax
	jge _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_160
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_150:
	mov ebx, [ebp-0x30]
	mov ebx, [ebx]
	mov [ebp-0x48], ebx
	mov esi, [edi+0xc]
	mov ecx, esi
	cmp [ebp-0x44], esi
	jge _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_170
	mov eax, ebx
	mov ebx, [ebp-0x34]
	cmp eax, [ebx+0x18]
	jz _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_180
	mov ebx, [ebp-0x44]
	lea edx, [edi+ebx*4+0x18]
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_190:
	add ebx, 0x1
	cmp esi, ebx
	jz _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_170
	mov eax, [edx+0x4]
	add edx, 0x4
	cmp [ebp-0x48], eax
	jnz _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_190
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_290:
	test ebx, ebx
	js _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_170
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_270:
	mov eax, [edi+0x8]
	cmp ebx, eax
	jl _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_200
	add eax, 0x1
	mov [edi+0x8], eax
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_200:
	cmp [ebp-0x44], ebx
	jge _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_210
	lea eax, [ebx*4]
	lea ecx, [eax+edi+0x14]
	lea edx, [eax+edi+0x18]
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_220:
	sub ebx, 0x1
	mov eax, [ecx]
	mov [edx], eax
	sub ecx, 0x4
	sub edx, 0x4
	cmp [ebp-0x44], ebx
	jl _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_220
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_210:
	mov eax, [ebp-0x48]
	mov esi, [ebp-0x34]
	mov [esi+0x18], eax
	mov edx, [ebp-0x44]
	sar edx, 0x3
	mov ecx, [ebp-0x44]
	and ecx, 0x7
	mov ebx, [ebp+0x10]
	movzx eax, byte [edx+ebx+0x10]
	sar eax, cl
	test al, 0x1
	jz _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_230
	mov eax, 0x1
	shl eax, cl
	or [edx+edi+0x10], al
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_230:
	add dword [ebp-0x44], 0x1
	add dword [ebp-0x34], 0x4
	add dword [ebp-0x30], 0x4
	jmp _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_240
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_50:
	xor edx, edx
	jmp _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_250
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_170:
	cmp esi, 0x3f
	jg _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_260
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_280:
	lea eax, [ecx+0x1]
	mov [edi+0xc], eax
	mov ebx, esi
	jmp _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_270
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_260:
	mov dword [esp+0x4], _cstring_local_var_stack_
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov ecx, [edi+0xc]
	jmp _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_280
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_180:
	mov ebx, [ebp-0x44]
	jmp _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_290
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_160:
	mov [edi+0x4], eax
	mov dword [edi], 0x0
	mov byte [scrCompileGlob+0x2c], 0x1
	mov ecx, [ebp-0x2c]
	test ecx, ecx
	jnz _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_300
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_90:
	mov edx, [scrCompileGlob+0x44]
	test edx, edx
	jz _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_310
	mov byte [scrCompileGlob+0x2c], 0x0
	mov ebx, [scrCompileGlob+0x44]
	mov eax, [ebx]
	test eax, eax
	jz _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_320
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_310:
	cmp byte [ebp-0x55], 0x0
	jnz _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_330
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_510:
	mov ecx, [ebp-0x54]
	mov [scrCompileGlob+0x3c], ecx
	mov ebx, [ebp-0x50]
	mov [scrCompileGlob+0x40], ebx
	mov esi, [ebp-0x4c]
	mov [scrCompileGlob+0x44], esi
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_600:
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x7d
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x78]
	mov [esp], eax
	call _Z12AddOpcodePosji
	mov dword [esp], 0x2
	call _Z15TempMallocAligni
	mov [scrCompileGlob], eax
	mov word [eax], 0x0
	mov edx, [scrCompileGlob]
	mov [ebp-0x64], edx
	mov eax, edx
	sub eax, [ebp-0x60]
	mov ecx, [ebp-0x68]
	mov [ecx], eax
	mov dword [esp], 0x0
	call _Z21TempMallocAlignStricti
	mov edi, eax
	mov esi, [scrCompileGlob+0x28]
	test esi, esi
	jz _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_340
	mov dword [ebp-0x5c], 0x0
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_350:
	mov ebx, [esi]
	mov dword [esp], 0x4
	call _Z15TempMallocAligni
	mov [scrCompileGlob], eax
	mov [eax], ebx
	mov ebx, [esi+0x4]
	mov dword [esp], 0x4
	call _Z15TempMallocAligni
	mov [scrCompileGlob], eax
	mov [eax], ebx
	mov esi, [esi+0xc]
	add dword [ebp-0x5c], 0x1
	test esi, esi
	jnz _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_350
	movzx eax, word [ebp-0x5c]
	mov edx, [ebp-0x5c]
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_580:
	mov ebx, [ebp-0x64]
	mov [ebx], ax
	mov dword [esp+0xc], _Z15CompareCaseInfoPKvS0_
	mov dword [esp+0x8], 0x8
	mov [esp+0x4], edx
	mov [esp], edi
	call qsort
	cmp dword [ebp-0x5c], 0x1
	jle _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_360
	mov ebx, [scrCompileGlob+0x28]
	xor ecx, ecx
	mov esi, [ebp-0x5c]
	sub esi, 0x1
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_380:
	mov edx, [edi]
	add edi, 0x8
	cmp edx, [edi]
	jz _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_370
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_410:
	add ecx, 0x1
	cmp esi, ecx
	jnz _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_380
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_360:
	mov dword [esp], 0x0
	call _Z10TempMalloci
	mov ebx, eax
	mov ecx, [scrCompileGlob+0x30]
	test ecx, ecx
	jz _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_390
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_400:
	mov edx, [ecx]
	mov eax, ebx
	sub eax, [ecx+0x4]
	mov [edx], eax
	mov ecx, [ecx+0x8]
	test ecx, ecx
	jnz _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_400
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_390:
	mov esi, [ebp-0x74]
	mov [scrCompileGlob+0x28], esi
	movzx eax, byte [ebp-0x6d]
	mov [scrCompileGlob+0x2c], al
	mov edx, [ebp-0x6c]
	mov [scrCompileGlob+0x30], edx
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_370:
	test ebx, ebx
	jz _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_410
	cmp edx, [ebx]
	jz _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_420
	mov eax, ebx
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_430:
	mov eax, [eax+0xc]
	test eax, eax
	jz _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_410
	cmp edx, [eax]
	jnz _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_430
	mov ebx, eax
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_420:
	mov dword [esp+0x4], _cstring_duplicate_case_e
	mov eax, [ebx+0x8]
	mov [esp], eax
	call CompileError
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_120:
	mov eax, [ebx+0x4]
	mov edi, eax
	sub edi, [ebx+0x8]
	jz _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_440
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x17
	call _Z10EmitOpcodejii
	mov dword [esp], 0x1
	call _Z10TempMalloci
	mov [scrCompileGlob], eax
	mov edx, edi
	mov [eax], dl
	mov eax, [ebx+0x8]
	mov [ebx+0x4], eax
	mov ebx, [esi]
	cmp dword [ebx], 0x3d
	jnz _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_450
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_130:
	mov eax, [ebx+0xc]
	mov [scrCompileGlob+0x44], eax
	mov eax, [esi]
	mov edi, [eax+0x8]
	mov esi, [eax+0x4]
	mov eax, [esi]
	cmp eax, 0x7
	jz _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_460
	cmp eax, 0xb
	jz _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_470
	mov dword [esp+0x4], _cstring_case_expression_
	mov [esp], edi
	call CompileError
	jmp _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_480
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_330:
	mov ebx, [scrCompileGlob+0x44]
	test ebx, ebx
	jz _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_490
	mov eax, [ebx]
	test eax, eax
	jnz _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_490
	mov eax, [scrCompileGlob+0x3c]
	test eax, eax
	jz _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_490
	cmp dword [scrCompilePub+0x20024], 0x2
	jz _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_490
	mov eax, [scrCompileGlob+0x40]
	cmp dword [eax], 0x3ff
	jle _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_500
	mov dword [esp+0x4], _cstring_max_switch_cases
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov eax, [scrCompileGlob+0x40]
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_500:
	mov edx, [eax]
	mov eax, [scrCompileGlob+0x3c]
	mov [eax+edx*4], ebx
	mov eax, [scrCompileGlob+0x40]
	add dword [eax], 0x1
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_490:
	mov ecx, [ebp-0x1c]
	mov [ebp-0x40], ecx
	test ecx, ecx
	jz _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_510
	mov ebx, [ebp-0x3c]
	mov eax, [ebx]
	mov edi, [eax+0x8]
	sub ecx, 0x1
	jle _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_520
	mov edx, 0x1
	mov esi, [ebp-0x3c]
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_530:
	mov eax, [esi+edx*4]
	mov eax, [eax+0x8]
	cmp eax, edi
	cmovl edi, eax
	add edx, 0x1
	cmp [ebp-0x40], edx
	jnz _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_530
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_520:
	mov eax, [ebp+0x10]
	mov [eax+0x4], edi
	test edi, edi
	jle _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_510
	mov dword [ebp-0x38], 0x0
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_570:
	mov ebx, [ebp-0x38]
	sar ebx, 0x3
	mov edx, [ebp+0x10]
	movzx edx, byte [ebx+edx+0x10]
	mov [ebp-0x89], dl
	mov ecx, [ebp-0x38]
	and ecx, 0x7
	movzx eax, dl
	sar eax, cl
	test al, 0x1
	jnz _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_540
	mov eax, [ebp-0x40]
	test eax, eax
	jle _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_550
	mov esi, [ebp-0x3c]
	mov eax, [esi]
	movzx eax, byte [ebx+eax+0x10]
	sar eax, cl
	test al, 0x1
	jz _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_540
	xor edx, edx
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_560:
	add edx, 0x1
	cmp [ebp-0x40], edx
	jz _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_550
	mov eax, [ebp-0x3c]
	mov eax, [eax+edx*4]
	movzx eax, byte [ebx+eax+0x10]
	sar eax, cl
	test al, 0x1
	jnz _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_560
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_540:
	add dword [ebp-0x38], 0x1
	cmp [ebp-0x38], edi
	jnz _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_570
	jmp _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_510
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_320:
	mov eax, [ebx+0x4]
	mov esi, eax
	sub esi, [ebx+0x8]
	jz _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_310
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x17
	call _Z10EmitOpcodejii
	mov dword [esp], 0x1
	call _Z10TempMalloci
	mov [scrCompileGlob], eax
	mov edx, esi
	mov [eax], dl
	mov eax, [ebx+0x8]
	mov [ebx+0x4], eax
	cmp byte [ebp-0x55], 0x0
	jz _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_510
	jmp _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_330
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_340:
	mov dword [ebp-0x5c], 0x0
	xor eax, eax
	xor edx, edx
	jmp _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_580
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_10:
	mov eax, ebx
	call _Z9EmitValueP20VariableCompileValue
	jmp _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_590
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_40:
	mov dword [esp+0x4], _cstring_missing_case_sta
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call CompileError
	jmp _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_600
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_20:
	mov byte [ebp-0x55], 0x0
	jmp _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_90
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_470:
	mov esi, [esi+0x4]
	cmp dword [scrCompilePub+0x20024], 0x2
	jz _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_610
	cmp byte [scrCompileGlob+0x1c], 0x0
	jnz _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_620
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_650:
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call SL_TransferRefToUser
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_640:
	cmp dword [scrCompilePub+0x20024], 0x2
	jz _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_480
	mov dword [esp], 0x10
	call Hunk_AllocateTempMemoryHigh
	mov ebx, eax
	mov [eax], esi
	mov dword [esp], 0x0
	call _Z10TempMalloci
	mov [ebx+0x4], eax
	mov [ebx+0x8], edi
	mov eax, [scrCompileGlob+0x28]
	mov [ebx+0xc], eax
	mov [scrCompileGlob+0x28], ebx
	jmp _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_480
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_550:
	mov eax, 0x1
	shl eax, cl
	or [ebp-0x89], al
	movzx eax, byte [ebp-0x89]
	mov edx, [ebp+0x10]
	mov [ebx+edx+0x10], al
	add dword [ebp-0x38], 0x1
	cmp [ebp-0x38], edi
	jnz _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_570
	jmp _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_510
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_460:
	mov eax, [esi+0x4]
	mov [esp], eax
	call _Z17IsValidArrayIndexj
	test al, al
	jnz _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_630
	mov eax, [esi+0x4]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_case_index_d_out
	call _Z2vaPKcz
	mov [esp+0x4], eax
	mov [esp], edi
	call CompileError
	jmp _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_480
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_630:
	mov eax, [esi+0x4]
	mov [esp], eax
	call _Z24GetInternalVariableIndexj
	mov esi, eax
	jmp _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_640
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_610:
	cmp byte [scrCompileGlob+0x1c], 0x0
	jnz _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_640
	mov [esp], esi
	call _Z20SL_RemoveRefToStringj
	jmp _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_640
_Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_620:
	mov [esp], esi
	call _Z17SL_AddRefToStringj
	jmp _Z19EmitSwitchStatement6sval_uS_S_hjP11scr_block_s_650


;EmitDeveloperStatementList(sval_u, sval_u, scr_block_s*, sval_u*)
_Z26EmitDeveloperStatementList6sval_uS_P11scr_block_sPS_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov [ebp-0x2c], eax
	mov [ebp-0x30], ecx
	mov eax, [scrCompilePub+0x20024]
	test eax, eax
	jnz _Z26EmitDeveloperStatementList6sval_uS_P11scr_block_sPS__10
	mov edx, ecx
	mov eax, scrVarPub
	mov eax, [eax+0x38]
	mov [ebp-0x28], eax
	mov eax, [ebp+0x8]
	mov esi, [eax]
	mov [ebp-0x20], esi
	add edx, 0x18
	mov [ebp-0x1c], edx
	xor edi, edi
_Z26EmitDeveloperStatementList6sval_uS_P11scr_block_sPS__100:
	cmp edi, [esi+0x8]
	jl _Z26EmitDeveloperStatementList6sval_uS_P11scr_block_sPS__20
	mov edx, [ebp-0x30]
	mov eax, [edx+0x4]
	cmp edi, eax
	jge _Z26EmitDeveloperStatementList6sval_uS_P11scr_block_sPS__30
_Z26EmitDeveloperStatementList6sval_uS_P11scr_block_sPS__20:
	mov ebx, [ebp-0x1c]
	mov ebx, [ebx]
	mov [ebp-0x24], ebx
	mov ebx, [esi+0xc]
	mov [ebp-0x34], ebx
	cmp edi, ebx
	jl _Z26EmitDeveloperStatementList6sval_uS_P11scr_block_sPS__40
_Z26EmitDeveloperStatementList6sval_uS_P11scr_block_sPS__120:
	cmp ebx, 0x3f
	jg _Z26EmitDeveloperStatementList6sval_uS_P11scr_block_sPS__50
	mov eax, [ebp-0x34]
_Z26EmitDeveloperStatementList6sval_uS_P11scr_block_sPS__150:
	add eax, 0x1
	mov [esi+0xc], eax
_Z26EmitDeveloperStatementList6sval_uS_P11scr_block_sPS__140:
	mov eax, [esi+0x8]
	cmp ebx, eax
	jl _Z26EmitDeveloperStatementList6sval_uS_P11scr_block_sPS__60
	add eax, 0x1
	mov [esi+0x8], eax
_Z26EmitDeveloperStatementList6sval_uS_P11scr_block_sPS__60:
	cmp edi, ebx
	jge _Z26EmitDeveloperStatementList6sval_uS_P11scr_block_sPS__70
	lea eax, [ebx*4]
	lea ecx, [eax+esi+0x14]
	lea edx, [eax+esi+0x18]
_Z26EmitDeveloperStatementList6sval_uS_P11scr_block_sPS__80:
	sub ebx, 0x1
	mov eax, [ecx]
	mov [edx], eax
	sub ecx, 0x4
	sub edx, 0x4
	cmp edi, ebx
	jl _Z26EmitDeveloperStatementList6sval_uS_P11scr_block_sPS__80
_Z26EmitDeveloperStatementList6sval_uS_P11scr_block_sPS__70:
	mov ebx, [ebp-0x24]
	mov edx, [ebp-0x20]
	mov [edx+0x18], ebx
	mov edx, edi
	sar edx, 0x3
	mov ecx, edi
	and ecx, 0x7
	mov ebx, [ebp-0x30]
	movzx eax, byte [edx+ebx+0x10]
	sar eax, cl
	test al, 0x1
	jz _Z26EmitDeveloperStatementList6sval_uS_P11scr_block_sPS__90
	mov eax, 0x1
	shl eax, cl
	or [edx+esi+0x10], al
_Z26EmitDeveloperStatementList6sval_uS_P11scr_block_sPS__90:
	add edi, 0x1
	add dword [ebp-0x20], 0x4
	add dword [ebp-0x1c], 0x4
	jmp _Z26EmitDeveloperStatementList6sval_uS_P11scr_block_sPS__100
_Z26EmitDeveloperStatementList6sval_uS_P11scr_block_sPS__40:
	mov edx, [ebp-0x24]
	mov eax, [ebp-0x20]
	cmp [eax+0x18], edx
	jz _Z26EmitDeveloperStatementList6sval_uS_P11scr_block_sPS__110
	lea edx, [esi+edi*4+0x18]
	mov ecx, edi
_Z26EmitDeveloperStatementList6sval_uS_P11scr_block_sPS__130:
	add ecx, 0x1
	cmp ebx, ecx
	jz _Z26EmitDeveloperStatementList6sval_uS_P11scr_block_sPS__120
	mov eax, [edx+0x4]
	add edx, 0x4
	cmp eax, [ebp-0x24]
	jnz _Z26EmitDeveloperStatementList6sval_uS_P11scr_block_sPS__130
_Z26EmitDeveloperStatementList6sval_uS_P11scr_block_sPS__160:
	test ecx, ecx
	js _Z26EmitDeveloperStatementList6sval_uS_P11scr_block_sPS__120
	mov ebx, ecx
	jmp _Z26EmitDeveloperStatementList6sval_uS_P11scr_block_sPS__140
_Z26EmitDeveloperStatementList6sval_uS_P11scr_block_sPS__50:
	mov dword [esp+0x4], _cstring_local_var_stack_
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov eax, [esi+0xc]
	mov [ebp-0x34], eax
	jmp _Z26EmitDeveloperStatementList6sval_uS_P11scr_block_sPS__150
_Z26EmitDeveloperStatementList6sval_uS_P11scr_block_sPS__110:
	mov ecx, edi
	jmp _Z26EmitDeveloperStatementList6sval_uS_P11scr_block_sPS__160
_Z26EmitDeveloperStatementList6sval_uS_P11scr_block_sPS__30:
	mov [esi+0x4], eax
	mov dword [esi], 0x0
	mov eax, scrVarPub
	cmp byte [eax+0x7], 0x0
	jz _Z26EmitDeveloperStatementList6sval_uS_P11scr_block_sPS__170
	mov dword [scrCompilePub+0x20024], 0x1
	mov ebx, [ebp+0x8]
	mov esi, [ebx]
	mov edx, [ebp-0x2c]
	mov eax, [edx]
	mov eax, [eax+0x4]
	test eax, eax
	jnz _Z26EmitDeveloperStatementList6sval_uS_P11scr_block_sPS__180
	jmp _Z26EmitDeveloperStatementList6sval_uS_P11scr_block_sPS__190
_Z26EmitDeveloperStatementList6sval_uS_P11scr_block_sPS__200:
	mov eax, ebx
_Z26EmitDeveloperStatementList6sval_uS_P11scr_block_sPS__180:
	mov ebx, [eax+0x4]
	mov eax, [eax]
	mov [esp], esi
	xor ecx, ecx
	xor edx, edx
	call _Z13EmitStatement6sval_uhjP11scr_block_s
	test ebx, ebx
	jnz _Z26EmitDeveloperStatementList6sval_uS_P11scr_block_sPS__200
	mov ebx, [ebp+0x8]
	mov esi, [ebx]
_Z26EmitDeveloperStatementList6sval_uS_P11scr_block_sPS__190:
	mov eax, [esi]
	test eax, eax
	jnz _Z26EmitDeveloperStatementList6sval_uS_P11scr_block_sPS__210
	mov eax, [esi+0x4]
	mov ebx, eax
	sub ebx, [esi+0x8]
	jnz _Z26EmitDeveloperStatementList6sval_uS_P11scr_block_sPS__220
_Z26EmitDeveloperStatementList6sval_uS_P11scr_block_sPS__210:
	mov dword [scrCompilePub+0x20024], 0x0
	mov eax, scrVarPub
	mov edx, [ebp-0x28]
	mov [eax+0x38], edx
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26EmitDeveloperStatementList6sval_uS_P11scr_block_sPS__170:
	mov dword [esp], 0x0
	call _Z10TempMalloci
	mov edi, eax
	mov dword [scrCompilePub+0x20024], 0x2
	mov ebx, [ebp+0x8]
	mov esi, [ebx]
	mov edx, [ebp-0x2c]
	mov eax, [edx]
	mov eax, [eax+0x4]
	test eax, eax
	jnz _Z26EmitDeveloperStatementList6sval_uS_P11scr_block_sPS__230
	mov [esp], edi
	call _Z16TempMemorySetPosPc
	jmp _Z26EmitDeveloperStatementList6sval_uS_P11scr_block_sPS__210
_Z26EmitDeveloperStatementList6sval_uS_P11scr_block_sPS__240:
	mov eax, ebx
_Z26EmitDeveloperStatementList6sval_uS_P11scr_block_sPS__230:
	mov ebx, [eax+0x4]
	mov eax, [eax]
	mov [esp], esi
	xor ecx, ecx
	xor edx, edx
	call _Z13EmitStatement6sval_uhjP11scr_block_s
	test ebx, ebx
	jnz _Z26EmitDeveloperStatementList6sval_uS_P11scr_block_sPS__240
	mov [esp], edi
	call _Z16TempMemorySetPosPc
	jmp _Z26EmitDeveloperStatementList6sval_uS_P11scr_block_sPS__210
_Z26EmitDeveloperStatementList6sval_uS_P11scr_block_sPS__10:
	mov dword [esp+0x4], _cstring_cannot_recurse_
	mov [esp], edx
	call CompileError
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26EmitDeveloperStatementList6sval_uS_P11scr_block_sPS__220:
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x17
	call _Z10EmitOpcodejii
	mov dword [esp], 0x1
	call _Z10TempMalloci
	mov [scrCompileGlob], eax
	mov [eax], bl
	mov eax, [esi+0x8]
	mov [esi+0x4], eax
	jmp _Z26EmitDeveloperStatementList6sval_uS_P11scr_block_sPS__210


;EmitThreadInternal(unsigned int, sval_u, sval_u, sval_u, scr_block_s*)
_Z18EmitThreadInternalj6sval_uS_S_P11scr_block_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov [ebp-0x1c], edx
	mov [ebp-0x20], ecx
	mov edx, [ebp+0x8]
	mov [ebp-0x24], edx
	mov ecx, [ebp+0xc]
	mov [ebp-0x28], ecx
	mov [scrCompileGlob+0xc], eax
	mov eax, [ebp-0x20]
	mov [esp], eax
	call _Z23AddThreadStartOpcodePosj
	mov dword [scrCompileGlob+0x10], 0x0
	mov dword [scrCompileGlob+0x14], 0x0
	mov dword [scrCompileGlob+0x18], 0x0
	mov edx, [ebp-0x1c]
	mov ebx, [edx+0x4]
	cmp dword [scrCompilePub+0x20024], 0x2
	jz _Z18EmitThreadInternalj6sval_uS_S_P11scr_block_s_10
	cmp byte [scrCompileGlob+0x1c], 0x0
	jnz _Z18EmitThreadInternalj6sval_uS_S_P11scr_block_s_20
_Z18EmitThreadInternalj6sval_uS_S_P11scr_block_s_130:
	mov dword [esp+0x4], 0x2
	mov [esp], ebx
	call SL_TransferRefToUser
_Z18EmitThreadInternalj6sval_uS_S_P11scr_block_s_140:
	mov ecx, [ebp-0x1c]
	mov eax, [ecx+0x8]
	mov eax, [eax]
	mov esi, [eax+0x4]
	test esi, esi
	jnz _Z18EmitThreadInternalj6sval_uS_S_P11scr_block_s_30
	jmp _Z18EmitThreadInternalj6sval_uS_S_P11scr_block_s_40
_Z18EmitThreadInternalj6sval_uS_S_P11scr_block_s_50:
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call _Z12AddOpcodePosji
	mov esi, [esi+0x4]
	test esi, esi
	jz _Z18EmitThreadInternalj6sval_uS_S_P11scr_block_s_40
_Z18EmitThreadInternalj6sval_uS_S_P11scr_block_s_30:
	mov eax, [esi]
	mov edi, [eax+0x4]
	mov eax, [eax]
	mov edx, [ebp-0x28]
	mov [esp], edx
	mov ecx, 0x1
	mov edx, edi
	call _Z21Scr_FindLocalVarIndexj6sval_uhP11scr_block_s
	mov ebx, eax
	cmp eax, 0x1
	sbb eax, eax
	add eax, 0x32
	xor ecx, ecx
	xor edx, edx
	call _Z10EmitOpcodejii
	test ebx, ebx
	jz _Z18EmitThreadInternalj6sval_uS_S_P11scr_block_s_50
	mov dword [esp], 0x1
	call _Z10TempMalloci
	mov [scrCompileGlob], eax
	mov [eax], bl
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call _Z12AddOpcodePosji
	mov esi, [esi+0x4]
	test esi, esi
	jnz _Z18EmitThreadInternalj6sval_uS_S_P11scr_block_s_30
_Z18EmitThreadInternalj6sval_uS_S_P11scr_block_s_40:
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x35
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x0
	mov ecx, [ebp-0x20]
	mov [esp], ecx
	call _Z12AddOpcodePosji
	mov edx, [ebp-0x1c]
	mov eax, [edx+0xc]
	mov eax, [eax]
	mov edx, [eax+0x4]
	test edx, edx
	jz _Z18EmitThreadInternalj6sval_uS_S_P11scr_block_s_60
	mov esi, scrVarPub
_Z18EmitThreadInternalj6sval_uS_S_P11scr_block_s_100:
	mov ebx, [edx+0x4]
	test ebx, ebx
	jz _Z18EmitThreadInternalj6sval_uS_S_P11scr_block_s_70
	cmp byte [esi+0x7], 0x0
	jnz _Z18EmitThreadInternalj6sval_uS_S_P11scr_block_s_80
	mov ecx, ebx
_Z18EmitThreadInternalj6sval_uS_S_P11scr_block_s_90:
	mov eax, [ecx]
	cmp dword [eax], 0x2d
	jnz _Z18EmitThreadInternalj6sval_uS_S_P11scr_block_s_80
	mov ecx, [ecx+0x4]
	test ecx, ecx
	jnz _Z18EmitThreadInternalj6sval_uS_S_P11scr_block_s_90
_Z18EmitThreadInternalj6sval_uS_S_P11scr_block_s_70:
	mov ecx, 0x1
	mov eax, [edx]
	mov edx, ecx
	and edx, 0x1
	mov ecx, [ebp-0x28]
	mov [esp], ecx
	mov ecx, [ebp-0x24]
	call _Z13EmitStatement6sval_uhjP11scr_block_s
	test ebx, ebx
	jz _Z18EmitThreadInternalj6sval_uS_S_P11scr_block_s_60
_Z18EmitThreadInternalj6sval_uS_S_P11scr_block_s_110:
	mov edx, ebx
	jmp _Z18EmitThreadInternalj6sval_uS_S_P11scr_block_s_100
_Z18EmitThreadInternalj6sval_uS_S_P11scr_block_s_80:
	xor ecx, ecx
	mov eax, [edx]
	mov edx, ecx
	and edx, 0x1
	mov ecx, [ebp-0x28]
	mov [esp], ecx
	mov ecx, [ebp-0x24]
	call _Z13EmitStatement6sval_uhjP11scr_block_s
	test ebx, ebx
	jnz _Z18EmitThreadInternalj6sval_uS_S_P11scr_block_s_110
_Z18EmitThreadInternalj6sval_uS_S_P11scr_block_s_60:
	xor ecx, ecx
	xor edx, edx
	xor eax, eax
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x1
	mov eax, [ebp-0x24]
	mov [esp], eax
	call _Z12AddOpcodePosji
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0xfffffffe
	call _Z12AddOpcodePosji
	mov eax, [scrCompileGlob+0x18]
	shl eax, 0x5
	add eax, [scrCompileGlob+0x14]
	cmp eax, 0x7ff
	jg _Z18EmitThreadInternalj6sval_uS_S_P11scr_block_s_120
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18EmitThreadInternalj6sval_uS_S_P11scr_block_s_20:
	mov [esp], ebx
	call _Z17SL_AddRefToStringj
	jmp _Z18EmitThreadInternalj6sval_uS_S_P11scr_block_s_130
_Z18EmitThreadInternalj6sval_uS_S_P11scr_block_s_120:
	mov dword [ebp+0xc], _cstring_function_exceeds
	mov edx, [ebp-0x20]
	mov [ebp+0x8], edx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp CompileError
_Z18EmitThreadInternalj6sval_uS_S_P11scr_block_s_10:
	cmp byte [scrCompileGlob+0x1c], 0x0
	jnz _Z18EmitThreadInternalj6sval_uS_S_P11scr_block_s_140
	mov [esp], ebx
	call _Z20SL_RemoveRefToStringj
	jmp _Z18EmitThreadInternalj6sval_uS_S_P11scr_block_s_140


;ScriptCompile(sval_u, unsigned int, unsigned int, PrecacheEntry*, int)
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	mov edx, [ebp+0x18]
	mov eax, [ebp+0xc]
	mov [scrCompileGlob+0x8], eax
	mov byte [scrCompileGlob+0x1c], 0x0
	mov eax, scrAnimPub
	mov dword [eax+0x414], 0x0
	mov dword [scrCompilePub+0x20024], 0x0
	mov eax, [scrCompilePub+0x4]
	test eax, eax
	jnz _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_10
	mov dword [ebp-0x6c], 0x0
	add eax, edx
	mov [ebp-0x40], eax
	cmp eax, 0x400
	jg _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_20
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_580:
	mov ebx, [ebp-0x6c]
	mov [scrCompileGlob+0x54], ebx
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov eax, [eax]
	mov edi, [eax+0x4]
	test edi, edi
	jnz _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_30
	jmp _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_40
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_70:
	mov ebx, [ebx+0x8]
	mov [esp], esi
	call _Z17SL_AddRefToStringj
	cmp byte [scrCompileGlob+0x1c], 0x0
	jz _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_50
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_80:
	mov eax, [scrCompileGlob+0x54]
	mov [eax], si
	mov eax, [scrCompileGlob+0x54]
	mov [eax+0x4], ebx
	mov eax, [scrCompileGlob+0x54]
	mov byte [eax+0x2], 0x1
	add dword [scrCompileGlob+0x54], 0x8
	mov [esp+0x4], esi
	mov eax, [scrCompilePub+0xc]
	mov [esp], eax
	call _Z11GetVariablejj
	mov [esp], eax
	call _Z10GetObjectAj
	mov edi, [edi+0x4]
	test edi, edi
	jz _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_60
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_30:
	mov ebx, [edi]
	mov eax, [ebx+0x4]
	mov [esp], eax
	call _Z18SL_ConvertToStringj
	mov [esp], eax
	call _Z27Scr_CreateCanonicalFilenamePKc
	mov esi, eax
	mov eax, [ebx+0x4]
	cmp byte [scrCompileGlob+0x1c], 0x0
	jnz _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_70
	mov [esp], eax
	call _Z20SL_RemoveRefToStringj
	mov ebx, [ebx+0x8]
	mov [esp], esi
	call _Z17SL_AddRefToStringj
	cmp byte [scrCompileGlob+0x1c], 0x0
	jnz _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_80
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_50:
	mov [esp], esi
	call _Z20SL_RemoveRefToStringj
	jmp _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_80
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_60:
	mov ecx, [ebp+0x8]
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_590:
	mov ecx, [ecx+0x4]
	mov [ebp-0x70], ecx
	mov byte [scrCompileGlob+0x1d], 0x0
	mov eax, [ecx]
	mov edi, [eax+0x4]
	test edi, edi
	jnz _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_90
	jmp _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_100
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_130:
	cmp eax, 0x46
	jz _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_110
	cmp eax, 0x44
	jz _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_120
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_250:
	mov edi, [edi+0x4]
	test edi, edi
	jz _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_100
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_90:
	mov ebx, [edi]
	mov [ebp-0x58], ebx
	mov eax, [ebx]
	cmp eax, 0x45
	jnz _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_130
	cmp byte [scrCompileGlob+0x1d], 0x0
	jnz _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_140
	mov byte [scrCompileGlob+0x1d], 0x1
	mov ecx, [ebp-0x58]
	mov eax, [ecx+0x4]
	mov [scrCompileGlob+0x20], eax
	mov edi, [edi+0x4]
	test edi, edi
	jnz _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_90
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_100:
	cmp byte [scrCompileGlob+0x1d], 0x0
	jnz _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_150
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_610:
	mov byte [scrCompileGlob+0x24], 0x1
	mov byte [scrCompileGlob+0x25], 0x1
	mov ecx, [ebp-0x70]
	mov eax, [ecx]
	mov eax, [eax+0x4]
	mov [ebp-0x3c], eax
	test eax, eax
	jnz _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_160
	jmp _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_170
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_200:
	cmp eax, 0x44
	jz _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_180
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_220:
	mov eax, [ebp-0x3c]
	mov eax, [eax+0x4]
	mov [ebp-0x3c], eax
	test eax, eax
	jz _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_170
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_160:
	mov ebx, [eax]
	mov [ebp-0x58], ebx
	mov eax, [ebx]
	cmp eax, 0x45
	jz _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_190
	jle _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_200
	cmp eax, 0x46
	jz _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_210
	cmp eax, 0x47
	jnz _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_220
	cmp byte [scrCompileGlob+0x1d], 0x0
	jnz _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_230
	mov ecx, [ebp-0x58]
	mov ebx, [ecx+0xc]
	mov eax, [ecx+0x4]
	mov [esp], eax
	call _Z18SL_ConvertToStringj
	mov [esp+0x4], ebx
	mov [esp], eax
	call _Z13Scr_UsingTreePKcj
	mov ebx, [ebp-0x58]
	mov eax, [ebx+0x4]
	cmp byte [scrCompileGlob+0x1c], 0x0
	jnz _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_220
	mov [esp], eax
	call _Z20SL_RemoveRefToStringj
	jmp _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_220
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_110:
	cmp byte [scrCompileGlob+0x1d], 0x0
	jz _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_240
	mov byte [scrCompileGlob+0x1d], 0x0
	jmp _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_250
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_120:
	cmp byte [scrCompileGlob+0x1d], 0x0
	jnz _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_260
	mov dword [ebp-0x54], 0x7
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_570:
	mov eax, [ebp-0x58]
	mov esi, [eax+0x10]
	mov ebx, [eax+0x4]
	mov [esp+0x4], ebx
	mov eax, [scrCompileGlob+0x8]
	mov [esp], eax
	call _Z11GetVariablejj
	mov [esp], eax
	call _Z10GetObjectAj
	mov edx, [ebp-0x54]
	mov [esp], edx
	mov ecx, esi
	mov edx, ebx
	call _Z21SpecifyThreadPositionjjji
	jmp _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_250
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_190:
	mov byte [scrCompileGlob+0x1d], 0x1
	mov eax, [ebp-0x3c]
	mov eax, [eax+0x4]
	mov [ebp-0x3c], eax
	test eax, eax
	jnz _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_160
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_170:
	mov dword [esp], 0x0
	call _Z10TempMalloci
	mov edx, scrVarPub
	sub eax, [edx+0x48]
	mov [scrCompilePub+0x2002c], eax
	call _Z21Scr_ShutdownAllocNodev
	call Hunk_ClearTempMemoryHigh
	mov edx, [scrCompilePub+0x4]
	mov [ebp-0x68], edx
	test edx, edx
	jle _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_270
	xor ebx, ebx
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_300:
	mov ecx, [ebp-0x6c]
	lea ecx, [ecx+ebx*8]
	mov [ebp-0x64], ecx
	movzx edi, word [ecx]
	mov [esp], edi
	call _Z18SL_ConvertToStringj
	mov edx, [ebp-0x40]
	mov [esp+0x8], edx
	mov ecx, [ebp+0x14]
	mov [esp+0x4], ecx
	mov [esp], eax
	call _Z22Scr_LoadScriptInternalPKcP13PrecacheEntryi
	mov [ebp-0x60], eax
	test eax, eax
	jz _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_280
	mov [esp], edi
	call _Z20SL_RemoveRefToStringj
	mov eax, [ebp-0x64]
	cmp byte [eax+0x2], 0x0
	jnz _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_290
	add ebx, 0x1
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_400:
	cmp [ebp-0x68], ebx
	jg _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_300
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_270:
	mov dword [ebp-0x34], 0x0
	mov dword [ebp-0x38], 0x0
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call _Z16FindFirstSiblingj
	mov esi, eax
	test eax, eax
	jnz _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_310
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_330:
	mov dword [ebp-0x1c], 0x6
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov ebx, [ebp+0x10]
	mov [esp], ebx
	call _Z16SetVariableValuejP13VariableValue
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_660:
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_340:
	mov [esp], eax
	call _Z16Scr_EvalVariablej
	mov [ebp-0x30], eax
	mov [ebp-0x2c], edx
	cmp dword [ebp-0x2c], 0xd
	jz _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_320
	mov ecx, 0x1
	lea edx, [ebp-0x30]
	mov eax, ebx
	call _Z10LinkThreadjP13VariableValueh
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_350:
	mov [esp], esi
	call _Z15FindNextSiblingj
	mov esi, eax
	test eax, eax
	jz _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_330
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_310:
	mov [esp], esi
	call _Z10FindObjectj
	mov ebx, eax
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call _Z12FindVariablejj
	test eax, eax
	jnz _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_340
	mov ecx, 0x1
	lea edx, [ebp-0x38]
	mov eax, ebx
	call _Z10LinkThreadjP13VariableValueh
	jmp _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_350
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_290:
	add ebx, 0x1
	mov [ebp-0x44], ebx
	cmp [ebp-0x68], ebx
	jle _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_360
	mov ecx, [ebp-0x6c]
	lea esi, [ecx+ebx*8]
	cmp byte [esi+0x2], 0x0
	jz _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_360
	movzx eax, word [esi]
	cmp edi, eax
	jz _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_370
	lea ebx, [esi+0x8]
	mov edx, ebx
	mov ecx, [ebp-0x44]
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_380:
	add ecx, 0x1
	cmp [ebp-0x68], ecx
	jz _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_360
	mov esi, ebx
	cmp byte [edx+0x2], 0x0
	jz _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_360
	movzx eax, word [edx]
	lea ebx, [ebx+0x8]
	add edx, 0x8
	cmp eax, edi
	jnz _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_380
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_370:
	mov dword [esp+0x4], _cstring_duplicate_includ
	mov eax, [esi+0x4]
	mov [esp], eax
	call CompileError
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_360:
	mov ebx, [ebp-0x64]
	mov byte [ebx+0x2], 0x0
	mov eax, [ebp-0x60]
	mov [esp], eax
	call _Z16FindFirstSiblingj
	mov edi, eax
	test eax, eax
	jnz _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_390
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_420:
	mov ebx, [ebp-0x44]
	jmp _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_400
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_430:
	mov [esp], edi
	call _Z10FindObjectj
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call _Z12FindVariablejj
	mov [ebp-0x5c], eax
	test eax, eax
	jz _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_410
	mov [esp], eax
	call _Z16Scr_EvalVariablej
	mov [ebp-0x28], eax
	mov [ebp-0x24], edx
	cmp dword [ebp-0x24], 0xd
	jz _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_410
	mov [esp], edi
	call _Z15GetVariableNamej
	movzx ebx, ax
	mov [esp+0x4], ebx
	mov edx, [ebp+0xc]
	mov [esp], edx
	call _Z11GetVariablejj
	mov [esp], eax
	call _Z10GetObjectAj
	mov esi, eax
	mov eax, [ebp-0x64]
	mov ecx, [eax+0x4]
	mov dword [esp], 0xd
	mov edx, ebx
	mov eax, esi
	call _Z21SpecifyThreadPositionjjji
	mov [esp], eax
	call _Z23GetVariableValueAddressj
	mov ebx, eax
	mov edx, [ebp-0x5c]
	mov [esp], edx
	call _Z23GetVariableValueAddressj
	mov eax, [eax]
	mov [ebx], eax
	xor ecx, ecx
	lea edx, [ebp-0x28]
	mov eax, esi
	call _Z10LinkThreadjP13VariableValueh
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_410:
	mov [esp], edi
	call _Z15FindNextSiblingj
	mov edi, eax
	test eax, eax
	jz _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_420
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_390:
	mov [esp], edi
	call _Z12GetValueTypej
	sub eax, 0x1
	jnz _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_410
	jmp _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_430
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_210:
	mov byte [scrCompileGlob+0x1d], 0x0
	jmp _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_220
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_180:
	mov eax, [ebp-0x58]
	add eax, 0x18
	mov [ebp-0x4c], eax
	mov edx, [ebp-0x58]
	mov edx, [edx+0xc]
	mov [ebp-0x50], edx
	mov ecx, [ebp-0x58]
	mov ebx, [ecx+0x8]
	mov byte [scrCompileGlob+0x50], 0x0
	mov dword [esp], 0x118
	call Hunk_AllocateTempMemoryHigh
	mov edx, [ebp-0x58]
	mov [edx+0x18], eax
	mov dword [eax], 0x0
	mov eax, [edx+0x18]
	mov dword [eax+0x4], 0x0
	mov eax, [edx+0x18]
	mov dword [eax+0xc], 0x0
	mov eax, [edx+0x18]
	mov dword [eax+0x8], 0x0
	mov eax, [edx+0x18]
	mov dword [eax+0x10], 0x0
	mov dword [eax+0x14], 0x0
	mov edi, [edx+0x18]
	mov ebx, [ebx]
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_450:
	mov ebx, [ebx+0x4]
	test ebx, ebx
	jz _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_440
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_480:
	mov eax, [ebx]
	mov eax, [eax]
	mov [ebp-0x48], eax
	mov eax, [edi]
	test eax, eax
	jnz _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_450
	mov esi, [edi+0xc]
	test esi, esi
	jg _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_460
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_540:
	cmp esi, 0x3f
	jg _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_470
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_560:
	mov ecx, [ebp-0x48]
	mov [edi+esi*4+0x18], ecx
	add dword [edi+0xc], 0x1
	mov ebx, [ebx+0x4]
	test ebx, ebx
	jnz _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_480
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_440:
	mov ebx, [ebp-0x4c]
	mov esi, [ebx]
	mov edx, [ebp-0x50]
	mov eax, [edx]
	mov ebx, [eax+0x4]
	test ebx, ebx
	jz _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_490
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_500:
	mov eax, [ebx]
	mov edx, esi
	call _Z26Scr_CalcLocalVarsStatement6sval_uP11scr_block_s
	mov ebx, [ebx+0x4]
	test ebx, ebx
	jnz _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_500
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_490:
	cmp byte [scrCompileGlob+0x1d], 0x0
	jz _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_510
	mov ebx, scrVarPub
	cmp byte [ebx+0x7], 0x0
	jz _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_520
	mov dword [scrCompilePub+0x20024], 0x1
	mov dword [scrCompileGlob+0x28], 0x0
	mov byte [scrCompileGlob+0x2c], 0x0
	mov dword [scrCompileGlob+0x30], 0x0
	mov byte [scrCompileGlob+0x34], 0x0
	mov dword [scrCompileGlob+0x38], 0x0
	mov dword [scrCompileGlob+0x3c], 0x0
	mov dword [scrCompileGlob+0x48], 0x0
	cmp byte [scrCompileGlob+0x25], 0x0
	jnz _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_530
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_620:
	mov edx, [ebp-0x58]
	mov eax, [edx+0x4]
	mov [esp+0x4], eax
	mov eax, [scrCompileGlob+0x8]
	mov [esp], eax
	call _Z12FindVariablejj
	mov [esp], eax
	call _Z10FindObjectj
	mov esi, eax
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call _Z12FindVariablejj
	mov [esp], eax
	call _Z23GetVariableValueAddressj
	mov ebx, eax
	mov dword [esp], 0x0
	call _Z10TempMalloci
	mov [ebx], eax
	mov ecx, [ebp-0x4c]
	mov eax, [ecx]
	mov ebx, [ebp-0x58]
	mov edx, [ebx+0x14]
	mov ecx, [ebx+0x10]
	mov [esp+0x4], eax
	mov [esp], edx
	mov edx, ebx
	mov eax, esi
	call _Z18EmitThreadInternalj6sval_uS_S_P11scr_block_s
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_640:
	mov dword [scrCompilePub+0x20024], 0x0
	jmp _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_220
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_460:
	mov eax, [ebp-0x48]
	cmp eax, [edi+0x18]
	jz _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_450
	mov ecx, edi
	xor edx, edx
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_550:
	add edx, 0x1
	cmp edx, esi
	jz _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_540
	mov eax, [ecx+0x1c]
	add ecx, 0x4
	cmp [ebp-0x48], eax
	jnz _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_550
	jmp _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_450
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_140:
	mov dword [esp+0x4], _cstring_cannot_recurse_
	mov edx, [ebp-0x58]
	mov eax, [edx+0x4]
	mov [esp], eax
	call CompileError
	jmp _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_250
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_470:
	mov dword [esp+0x4], _cstring_local_var_stack_
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov esi, [edi+0xc]
	jmp _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_560
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_260:
	mov eax, scrVarPub
	cmp byte [eax+0x7], 0x0
	jz _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_250
	mov dword [ebp-0x54], 0xc
	jmp _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_570
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_10:
	mov ecx, [ebp+0x14]
	lea ecx, [ecx+edx*8]
	mov [ebp-0x6c], ecx
	add eax, edx
	mov [ebp-0x40], eax
	cmp eax, 0x400
	jle _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_580
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_20:
	mov dword [esp+0x4], _cstring_max_precache_ent
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov ebx, [ebp-0x6c]
	mov [scrCompileGlob+0x54], ebx
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov eax, [eax]
	mov edi, [eax+0x4]
	test edi, edi
	jnz _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_30
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_40:
	mov ecx, edx
	jmp _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_590
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_510:
	mov dword [scrCompileGlob+0x28], 0x0
	mov byte [scrCompileGlob+0x2c], 0x0
	mov dword [scrCompileGlob+0x30], 0x0
	mov byte [scrCompileGlob+0x34], 0x0
	mov dword [scrCompileGlob+0x38], 0x0
	mov dword [scrCompileGlob+0x3c], 0x0
	mov dword [scrCompileGlob+0x48], 0x0
	cmp byte [scrCompileGlob+0x24], 0x0
	jnz _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_600
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_650:
	mov ecx, [ebp-0x58]
	mov eax, [ecx+0x4]
	mov [esp+0x4], eax
	mov eax, [scrCompileGlob+0x8]
	mov [esp], eax
	call _Z12FindVariablejj
	mov [esp], eax
	call _Z10FindObjectj
	mov esi, eax
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call _Z12FindVariablejj
	mov [esp], eax
	call _Z23GetVariableValueAddressj
	mov ebx, eax
	mov dword [esp], 0x0
	call _Z10TempMalloci
	mov [ebx], eax
	mov ebx, [ebp-0x4c]
	mov eax, [ebx]
	mov ecx, [ebp-0x58]
	mov edx, [ecx+0x14]
	mov ebx, ecx
	mov ecx, [ecx+0x10]
	mov [esp+0x4], eax
	mov [esp], edx
	mov edx, ebx
	mov eax, esi
	call _Z18EmitThreadInternalj6sval_uS_S_P11scr_block_s
	jmp _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_220
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_230:
	mov dword [esp+0x4], _cstring_cannot_put_using
	mov edx, [ebp-0x58]
	mov eax, [edx+0x8]
	mov [esp], eax
	call CompileError
	jmp _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_220
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_240:
	mov dword [esp+0x4], _cstring__has_no_matching
	mov ebx, [ebp-0x58]
	mov eax, [ebx+0x4]
	mov [esp], eax
	call CompileError
	jmp _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_250
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_150:
	mov dword [esp+0x4], _cstring__has_no_matching1
	mov eax, [scrCompileGlob+0x20]
	mov [esp], eax
	call CompileError
	jmp _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_610
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_320:
	lea eax, [ebp-0x38]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z16SetVariableValuejP13VariableValue
	jmp _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_350
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_530:
	mov byte [scrCompileGlob+0x25], 0x0
	xor ecx, ecx
	xor edx, edx
	xor eax, eax
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	call _Z12AddOpcodePosji
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0xfffffffe
	call _Z12AddOpcodePosji
	jmp _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_620
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_520:
	mov dword [esp], 0x0
	call _Z10TempMalloci
	mov esi, eax
	mov edi, [ebx+0x38]
	mov dword [scrCompilePub+0x20024], 0x2
	mov dword [scrCompileGlob+0x28], 0x0
	mov byte [scrCompileGlob+0x2c], 0x0
	mov dword [scrCompileGlob+0x30], 0x0
	mov byte [scrCompileGlob+0x34], 0x0
	mov dword [scrCompileGlob+0x38], 0x0
	mov dword [scrCompileGlob+0x3c], 0x0
	mov dword [scrCompileGlob+0x48], 0x0
	cmp byte [scrCompileGlob+0x25], 0x0
	jnz _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_630
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_670:
	mov eax, [ebp-0x4c]
	mov eax, [eax]
	mov [ebp-0x7c], eax
	mov ecx, [ebp-0x58]
	mov edx, [ecx+0x14]
	mov ecx, [ecx+0x10]
	mov eax, [ebp-0x7c]
	mov [esp+0x4], eax
	mov [esp], edx
	mov edx, [ebp-0x58]
	xor eax, eax
	call _Z18EmitThreadInternalj6sval_uS_S_P11scr_block_s
	mov [esp], esi
	call _Z16TempMemorySetPosPc
	mov [ebx+0x38], edi
	jmp _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_640
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_600:
	mov byte [scrCompileGlob+0x24], 0x0
	xor ecx, ecx
	xor edx, edx
	xor eax, eax
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	call _Z12AddOpcodePosji
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0xfffffffe
	call _Z12AddOpcodePosji
	jmp _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_650
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_280:
	mov [esp], edi
	call _Z18SL_ConvertToStringj
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_could_not_find_s
	mov edx, [ebp-0x64]
	mov eax, [edx+0x4]
	mov [esp], eax
	call CompileError
	jmp _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_660
_Z13ScriptCompile6sval_ujjP13PrecacheEntryi_630:
	mov byte [scrCompileGlob+0x25], 0x0
	xor ecx, ecx
	xor edx, edx
	xor eax, eax
	call _Z10EmitOpcodejii
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	call _Z12AddOpcodePosji
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0xfffffffe
	call _Z12AddOpcodePosji
	jmp _Z13ScriptCompile6sval_ujjP13PrecacheEntryi_670
	nop


;CompareCaseInfo(void const*, void const*)
_Z15CompareCaseInfoPKvS0_:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0xc]
	mov edx, [eax]
	mov eax, [ebp+0x8]
	cmp [eax], edx
	ja _Z15CompareCaseInfoPKvS0__10
	setb al
	movzx eax, al
	pop ebp
	ret
_Z15CompareCaseInfoPKvS0__10:
	mov eax, 0xffffffff
	pop ebp
	ret


;Initialized global or static variables of scr_compiler:
SECTION .data


;Initialized constant data of scr_compiler:
SECTION .rdata


;Zero initialized global or static variables of scr_compiler:
SECTION .bss
scrCompileGlob: resb 0x200
scrCompilePub: resb 0x21064


;All cstrings:
SECTION .rdata
_cstring_normal_script_ca:		db "normal script cannot reference a function in a /# ... #/ comment",0
_cstring_unknown_function:		db "unknown function",0
_cstring_function_s_alrea:		db "function ",27h,"%s",27h," already defined in ",27h,"%s",27h,0
_cstring_function_s_alrea1:		db "function ",27h,"%s",27h," already defined",0
_cstring_local_var_stack_:		db "LOCAL_VAR_STACK_SIZE exceeded",0
_cstring_type_s_is_not_a_:		db "type %s is not a float",0
_cstring_s:		db "%s",0
_cstring_max_switch_cases:		db "MAX_SWITCH_CASES exceeded",0
_cstring_uninitialised_va:		db "uninitialised variable ",27h,"%s",27h,0
_cstring_unreachable_code:		db "unreachable code",0
_cstring_illegal_continue:		db "illegal continue statement",0
_cstring_illegal_break_st:		db "illegal break statement",0
_cstring_return_value_of_:		db "return value of developer command can not be accessed if not in a /# ... #/ comment",0
_cstring_parameter_count_:		db "parameter count exceeds 256",0
_cstring_scr_func_table_s:		db 015h,"SCR_FUNC_TABLE_SIZE exceeded",0
_cstring_value_stack_size:		db "VALUE_STACK_SIZE exceeded",0
_cstring_using_animtree_w:		db "#using_animtree was not specified",0
_cstring_illegal_function:		db "illegal function name",0
_cstring_expression_list_:		db "expression list must have 1 or 3 parameters",0
_cstring_bad_expression:		db "bad expression",0
_cstring_self_field_in_as:		db "self field in assignment expression not currently supported",0
_cstring_self_field_can_o:		db "self field can only be used in the script debugger",0
_cstring__can_only_be_use:		db "$ can only be used in the script debugger",0
_cstring_argument_express:		db "argument expressions not supported in statements",0
_cstring_not_an_object:		db "not an object",0
_cstring_not_an_lvalue:		db "not an lvalue",0
_cstring__and_self_field_:		db "$ and self field can only be used in the script debugger",0
_cstring_illegal_case_sta:		db "illegal case statement",0
_cstring_illegal_default_:		db "illegal default statement",0
_cstring_conditional_expr:		db "conditional expression cannot be always false",0
_cstring_duplicate_case_e:		db "duplicate case expression",0
_cstring_case_expression_:		db "case expression must be an int or string",0
_cstring_missing_case_sta:		db "missing case statement",0
_cstring_case_index_d_out:		db "case index %d out of range",0
_cstring_cannot_recurse_:		db "cannot recurse /#",0
_cstring_function_exceeds:		db "function exceeds operand stack size",0
_cstring_duplicate_includ:		db "Duplicate #include",0
_cstring_max_precache_ent:		db "MAX_PRECACHE_ENTRIES exceeded",0
_cstring_cannot_put_using:		db "cannot put #using_animtree inside /# ... #/ comment",0
_cstring__has_no_matching:		db "#/ has no matching /#",0
_cstring__has_no_matching1:		db "/# has no matching #/",0
_cstring_could_not_find_s:		db "Could not find script ",27h,"%s",27h,0



;All constant floats and doubles:
SECTION .rdata

