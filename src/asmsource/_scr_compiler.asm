;Imports of scr_compiler:
	extern FindVariable
	extern Scr_EvalVariableExtern
	extern RemoveVariable
	extern GetVariableValueAddress
	extern GetValueType
	extern CompileError2
	extern GetVariable
	extern Scr_GetSourceBuffer
	extern gScrParserPub
	extern SL_ConvertToString
	extern CompileError
	extern SetNewVariableValue
	extern Com_Error
	extern Scr_AllocVector
	extern var_typename
	extern AddRefToValue
	extern Scr_EvalBinaryOperator
	extern gScrVarPub
	extern memcpy
	extern Hunk_AllocateTempMemoryHigh
	extern RemoveRefToValue
	extern Scr_CastBool
	extern AddOpcodePos
	extern TempMallocAlign
	extern SL_TransferRefToUser
	extern TempMallocAlignStrict
	extern RemoveRefToVector
	extern SL_RemoveRefToString
	extern SL_AddRefToString
	extern TempMalloc
	extern RemoveOpcodePos
	extern TempMemorySetPos
	extern SL_TransferToCanonicalString
	extern Scr_CreateCanonicalFilename
	extern SGetObjectA
	extern GetNewVariable
	extern SetVariableValue
	extern Scr_GetFunction
	extern gScrAnimPub
	extern Scr_EmitAnimation
	extern Scr_GetClassnumForCharId
	extern atoi
	extern IsObjectFree
	extern Scr_GetObjectType
	extern Scr_GetMethod
	extern qsort
	extern IsValidArrayIndex
	extern va
	extern GetInternalVariableIndex
	extern AddThreadStartOpcodePos
	extern Scr_UsingTree
	extern Scr_ShutdownAllocNode
	extern Hunk_ClearTempMemoryHigh
	extern Scr_LoadScriptInternal
	extern FindFirstSibling
	extern FindNextSibling
	extern FindObject
	extern GetVariableName
	extern scrCompileGlob
	extern gScrCompilePub


;Exports of scr_compiler:
;	global scrCompileGlob
	global LinkThread
	global SpecifyThreadPosition
	global Scr_CalcLocalVarsVariableExpressionRef
	global EvalPrimitiveExpression
	global EvalBinaryOperatorExpression
	global Scr_CalcLocalVarsStatement
	global EmitValue
	global EmitOpcode
	global EmitGetInteger
	global Scr_FindLocalVarIndex
	global EmitContinueStatement
	global EmitBreakStatement
	global EmitFunction
	global EmitCall
	global EmitOrEvalExpression
	global EmitPostFunctionCall
	global EmitOrEvalPrimitiveExpression
	global EmitVariableExpression
	global EmitMethod
	global EmitPrimitiveExpressionFieldObject
	global EmitVariableExpressionRef
	global EmitStatement
	global EmitIfElseStatement
	global EmitWhileStatement
	global EmitIfStatement
	global EmitForStatement
	global EmitSwitchStatement
	global EmitDeveloperStatementList
	global EmitThreadInternal
	global ScriptCompile
	global CompareCaseInfo
;	global gScrCompilePub


SECTION .text


;LinkThread(unsigned int, VariableValue*, unsigned char)
LinkThread:
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
	call FindVariable
	test eax, eax
	jnz LinkThread_10
LinkThread_90:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
LinkThread_10:
	mov [esp], eax
	call Scr_EvalVariableExtern
	mov [ebp-0x20], eax
	test eax, eax
	jg LinkThread_20
LinkThread_60:
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x24]
	mov [esp], eax
	call RemoveVariable
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
LinkThread_20:
	xor esi, esi
	test bl, bl
	jz LinkThread_30
	jmp LinkThread_40
LinkThread_70:
	test edx, edx
	jz LinkThread_50
LinkThread_80:
	mov eax, [edi]
	mov ecx, [ebp-0x28]
	mov edx, [ecx]
	mov [eax], edx
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x24]
	mov [esp], ecx
	call RemoveVariable
	add esi, 0x1
	cmp esi, [ebp-0x20]
	jz LinkThread_60
LinkThread_40:
	lea eax, [esi+0x2]
	mov [ebp-0x1c], eax
	mov [esp+0x4], eax
	mov ecx, [ebp-0x24]
	mov [esp], ecx
	call FindVariable
	mov ebx, eax
	mov [esp], eax
	call GetVariableValueAddress
	mov edi, eax
	mov [esp], ebx
	call GetValueType
	mov ecx, [ebp-0x28]
	mov edx, [ecx+0x4]
	cmp edx, 0xc
	jnz LinkThread_70
	cmp eax, 0x7
	jnz LinkThread_80
LinkThread_130:
	mov dword [esp+0x4], _cstring_normal_script_ca
	mov eax, [edi]
	mov [esp], eax
	call CompileError2
	jmp LinkThread_90
LinkThread_110:
	test edx, edx
	jz LinkThread_50
LinkThread_120:
	mov eax, [edi]
	cmp dword [eax], 0x1
	jz LinkThread_100
	mov ecx, [ebp-0x28]
	mov edx, [ecx]
	mov [eax], edx
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x24]
	mov [esp], ecx
	call RemoveVariable
	add esi, 0x1
	cmp esi, [ebp-0x20]
	jz LinkThread_60
LinkThread_30:
	lea ecx, [esi+0x2]
	mov [ebp-0x1c], ecx
	mov [esp+0x4], ecx
	mov eax, [ebp-0x24]
	mov [esp], eax
	call FindVariable
	mov ebx, eax
	mov [esp], eax
	call GetVariableValueAddress
	mov edi, eax
	mov [esp], ebx
	call GetValueType
	mov ecx, [ebp-0x28]
	mov edx, [ecx+0x4]
	cmp edx, 0xc
	jnz LinkThread_110
	cmp eax, 0x7
	jnz LinkThread_120
	jmp LinkThread_130
LinkThread_50:
	mov dword [esp+0x4], _cstring_unknown_function
	mov eax, [edi]
	mov [esp], eax
	call CompileError2
	jmp LinkThread_90
LinkThread_100:
	mov dword [esp+0x4], _cstring_unknown_function
	mov [esp], eax
	call CompileError2
	jmp LinkThread_90


;SpecifyThreadPosition(unsigned int, unsigned int, unsigned int, int)
SpecifyThreadPosition:
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
	call GetVariable
	mov ebx, eax
	mov [esp], eax
	call Scr_EvalVariableExtern
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	mov eax, [ebp-0x1c]
	test eax, eax
	jz SpecifyThreadPosition_10
	mov eax, [ebp-0x20]
	test eax, eax
	jz SpecifyThreadPosition_20
	mov [esp], eax
	call Scr_GetSourceBuffer
	mov edx, gScrParserPub
	mov edx, [edx]
	lea eax, [eax+eax*2]
	mov ebx, [edx+eax*8+0x4]
	mov [esp], esi
	call SL_ConvertToString
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
SpecifyThreadPosition_10:
	mov eax, [ebp+0x8]
	mov [ebp-0x1c], eax
	mov dword [ebp-0x20], 0x0
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov [esp], ebx
	call SetNewVariableValue
	mov eax, ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SpecifyThreadPosition_20:
	mov [esp], esi
	call SL_ConvertToString
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
Scr_CalcLocalVarsVariableExpressionRef:
Scr_CalcLocalVarsVariableExpressionRef_140:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, edx
	mov edx, [eax]
	cmp edx, 0x4
	jz Scr_CalcLocalVarsVariableExpressionRef_10
	cmp edx, 0xd
	jz Scr_CalcLocalVarsVariableExpressionRef_20
Scr_CalcLocalVarsVariableExpressionRef_30:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_CalcLocalVarsVariableExpressionRef_10:
	mov ebx, [eax+0x4]
	mov eax, [esi]
	test eax, eax
	jnz Scr_CalcLocalVarsVariableExpressionRef_30
	mov edi, [esi+0xc]
	test edi, edi
	jg Scr_CalcLocalVarsVariableExpressionRef_40
Scr_CalcLocalVarsVariableExpressionRef_150:
	cmp edi, 0x3f
	jg Scr_CalcLocalVarsVariableExpressionRef_50
Scr_CalcLocalVarsVariableExpressionRef_180:
	mov [esi+edi*4+0x18], ebx
	add dword [esi+0xc], 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_CalcLocalVarsVariableExpressionRef_20:
	mov ebx, [eax+0x4]
	cmp dword [ebx], 0x11
	jnz Scr_CalcLocalVarsVariableExpressionRef_30
	mov eax, [ebx+0x4]
	mov edx, [eax]
	cmp edx, 0x4
	jz Scr_CalcLocalVarsVariableExpressionRef_60
	cmp edx, 0xd
	jnz Scr_CalcLocalVarsVariableExpressionRef_30
	mov ebx, [eax+0x4]
	cmp dword [ebx], 0x11
	jnz Scr_CalcLocalVarsVariableExpressionRef_30
	mov eax, [ebx+0x4]
	mov edx, [eax]
	cmp edx, 0x4
	jz Scr_CalcLocalVarsVariableExpressionRef_70
	cmp edx, 0xd
	jnz Scr_CalcLocalVarsVariableExpressionRef_30
	mov ebx, [eax+0x4]
	cmp dword [ebx], 0x11
	jnz Scr_CalcLocalVarsVariableExpressionRef_30
	mov eax, [ebx+0x4]
	mov edx, [eax]
	cmp edx, 0x4
	jz Scr_CalcLocalVarsVariableExpressionRef_80
	cmp edx, 0xd
	jnz Scr_CalcLocalVarsVariableExpressionRef_30
	mov ebx, [eax+0x4]
	cmp dword [ebx], 0x11
	jnz Scr_CalcLocalVarsVariableExpressionRef_30
	mov eax, [ebx+0x4]
	mov edx, [eax]
	cmp edx, 0x4
	jz Scr_CalcLocalVarsVariableExpressionRef_90
	cmp edx, 0xd
	jnz Scr_CalcLocalVarsVariableExpressionRef_30
	mov ebx, [eax+0x4]
	cmp dword [ebx], 0x11
	jnz Scr_CalcLocalVarsVariableExpressionRef_30
	mov eax, [ebx+0x4]
	mov edx, [eax]
	cmp edx, 0x4
	jz Scr_CalcLocalVarsVariableExpressionRef_100
	cmp edx, 0xd
	jnz Scr_CalcLocalVarsVariableExpressionRef_30
	mov ebx, [eax+0x4]
	cmp dword [ebx], 0x11
	jnz Scr_CalcLocalVarsVariableExpressionRef_30
	mov eax, [ebx+0x4]
	mov edx, [eax]
	cmp edx, 0x4
	jz Scr_CalcLocalVarsVariableExpressionRef_110
	cmp edx, 0xd
	jnz Scr_CalcLocalVarsVariableExpressionRef_30
	mov ebx, [eax+0x4]
	cmp dword [ebx], 0x11
	jnz Scr_CalcLocalVarsVariableExpressionRef_30
	mov eax, [ebx+0x4]
	mov edx, [eax]
	cmp edx, 0x4
	jz Scr_CalcLocalVarsVariableExpressionRef_120
	cmp edx, 0xd
	jnz Scr_CalcLocalVarsVariableExpressionRef_30
	mov ebx, [eax+0x4]
	cmp dword [ebx], 0x11
	jnz Scr_CalcLocalVarsVariableExpressionRef_30
	mov eax, [ebx+0x4]
	mov edx, [eax]
	cmp edx, 0x4
	jz Scr_CalcLocalVarsVariableExpressionRef_130
	cmp edx, 0xd
	jnz Scr_CalcLocalVarsVariableExpressionRef_30
	mov ebx, [eax+0x4]
	cmp dword [ebx], 0x11
	jnz Scr_CalcLocalVarsVariableExpressionRef_30
	mov eax, [ebx+0x4]
	mov edx, esi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Scr_CalcLocalVarsVariableExpressionRef_140
Scr_CalcLocalVarsVariableExpressionRef_40:
	cmp [esi+0x18], ebx
	jz Scr_CalcLocalVarsVariableExpressionRef_30
	mov ecx, esi
	xor edx, edx
Scr_CalcLocalVarsVariableExpressionRef_160:
	add edx, 0x1
	cmp edi, edx
	jz Scr_CalcLocalVarsVariableExpressionRef_150
	mov eax, [ecx+0x1c]
	add ecx, 0x4
	cmp eax, ebx
	jnz Scr_CalcLocalVarsVariableExpressionRef_160
	jmp Scr_CalcLocalVarsVariableExpressionRef_30
Scr_CalcLocalVarsVariableExpressionRef_60:
	mov ebx, [eax+0x4]
	mov eax, [esi]
	test eax, eax
	jnz Scr_CalcLocalVarsVariableExpressionRef_30
	mov edi, [esi+0xc]
	test edi, edi
	jle Scr_CalcLocalVarsVariableExpressionRef_150
	cmp [esi+0x18], ebx
	jz Scr_CalcLocalVarsVariableExpressionRef_30
	mov ecx, esi
	xor edx, edx
Scr_CalcLocalVarsVariableExpressionRef_170:
	add edx, 0x1
	cmp edi, edx
	jz Scr_CalcLocalVarsVariableExpressionRef_150
	mov eax, [ecx+0x1c]
	add ecx, 0x4
	cmp eax, ebx
	jnz Scr_CalcLocalVarsVariableExpressionRef_170
	jmp Scr_CalcLocalVarsVariableExpressionRef_30
Scr_CalcLocalVarsVariableExpressionRef_50:
	mov dword [esp+0x4], _cstring_local_var_stack_
	mov dword [esp], 0x2
	call Com_Error
	mov edi, [esi+0xc]
	jmp Scr_CalcLocalVarsVariableExpressionRef_180
Scr_CalcLocalVarsVariableExpressionRef_70:
	mov ebx, [eax+0x4]
	mov eax, [esi]
	test eax, eax
	jnz Scr_CalcLocalVarsVariableExpressionRef_30
	mov edi, [esi+0xc]
	test edi, edi
	jle Scr_CalcLocalVarsVariableExpressionRef_150
	cmp [esi+0x18], ebx
	jz Scr_CalcLocalVarsVariableExpressionRef_30
	mov ecx, esi
	xor edx, edx
Scr_CalcLocalVarsVariableExpressionRef_190:
	add edx, 0x1
	cmp edi, edx
	jz Scr_CalcLocalVarsVariableExpressionRef_150
	mov eax, [ecx+0x1c]
	add ecx, 0x4
	cmp eax, ebx
	jnz Scr_CalcLocalVarsVariableExpressionRef_190
	jmp Scr_CalcLocalVarsVariableExpressionRef_30
Scr_CalcLocalVarsVariableExpressionRef_80:
	mov ebx, [eax+0x4]
	mov eax, [esi]
	test eax, eax
	jnz Scr_CalcLocalVarsVariableExpressionRef_30
	mov edi, [esi+0xc]
	test edi, edi
	jle Scr_CalcLocalVarsVariableExpressionRef_150
	cmp [esi+0x18], ebx
	jz Scr_CalcLocalVarsVariableExpressionRef_30
	mov ecx, esi
	xor edx, edx
	jmp Scr_CalcLocalVarsVariableExpressionRef_200
Scr_CalcLocalVarsVariableExpressionRef_210:
	mov eax, [ecx+0x1c]
	add ecx, 0x4
	cmp eax, ebx
	jz Scr_CalcLocalVarsVariableExpressionRef_30
Scr_CalcLocalVarsVariableExpressionRef_200:
	add edx, 0x1
	cmp edi, edx
	jnz Scr_CalcLocalVarsVariableExpressionRef_210
	jmp Scr_CalcLocalVarsVariableExpressionRef_150
Scr_CalcLocalVarsVariableExpressionRef_130:
	mov ebx, [eax+0x4]
	mov edx, [esi]
	test edx, edx
	jnz Scr_CalcLocalVarsVariableExpressionRef_30
	mov edi, [esi+0xc]
	test edi, edi
	jle Scr_CalcLocalVarsVariableExpressionRef_150
	cmp ebx, [esi+0x18]
	jz Scr_CalcLocalVarsVariableExpressionRef_30
	mov ecx, esi
	xor edx, edx
Scr_CalcLocalVarsVariableExpressionRef_220:
	add edx, 0x1
	cmp edx, edi
	jz Scr_CalcLocalVarsVariableExpressionRef_150
	mov eax, [ecx+0x1c]
	add ecx, 0x4
	cmp ebx, eax
	jnz Scr_CalcLocalVarsVariableExpressionRef_220
	jmp Scr_CalcLocalVarsVariableExpressionRef_30
Scr_CalcLocalVarsVariableExpressionRef_120:
	mov ebx, [eax+0x4]
	mov ecx, [esi]
	test ecx, ecx
	jnz Scr_CalcLocalVarsVariableExpressionRef_30
	mov edi, [esi+0xc]
	test edi, edi
	jle Scr_CalcLocalVarsVariableExpressionRef_150
	cmp ebx, [esi+0x18]
	jz Scr_CalcLocalVarsVariableExpressionRef_30
	mov ecx, esi
	xor edx, edx
Scr_CalcLocalVarsVariableExpressionRef_230:
	add edx, 0x1
	cmp edi, edx
	jz Scr_CalcLocalVarsVariableExpressionRef_150
	mov eax, [ecx+0x1c]
	add ecx, 0x4
	cmp eax, ebx
	jnz Scr_CalcLocalVarsVariableExpressionRef_230
	jmp Scr_CalcLocalVarsVariableExpressionRef_30
Scr_CalcLocalVarsVariableExpressionRef_110:
	mov ebx, [eax+0x4]
	mov edi, [esi]
	test edi, edi
	jnz Scr_CalcLocalVarsVariableExpressionRef_30
	mov edi, [esi+0xc]
	test edi, edi
	jle Scr_CalcLocalVarsVariableExpressionRef_150
	cmp [esi+0x18], ebx
	jz Scr_CalcLocalVarsVariableExpressionRef_30
	mov ecx, esi
	xor edx, edx
Scr_CalcLocalVarsVariableExpressionRef_240:
	add edx, 0x1
	cmp edi, edx
	jz Scr_CalcLocalVarsVariableExpressionRef_150
	mov eax, [ecx+0x1c]
	add ecx, 0x4
	cmp eax, ebx
	jnz Scr_CalcLocalVarsVariableExpressionRef_240
	jmp Scr_CalcLocalVarsVariableExpressionRef_30
Scr_CalcLocalVarsVariableExpressionRef_100:
	mov ebx, [eax+0x4]
	mov eax, [esi]
	test eax, eax
	jnz Scr_CalcLocalVarsVariableExpressionRef_30
	mov edi, [esi+0xc]
	test edi, edi
	jle Scr_CalcLocalVarsVariableExpressionRef_150
	cmp [esi+0x18], ebx
	jz Scr_CalcLocalVarsVariableExpressionRef_30
	mov ecx, esi
	xor edx, edx
Scr_CalcLocalVarsVariableExpressionRef_250:
	add edx, 0x1
	cmp edi, edx
	jz Scr_CalcLocalVarsVariableExpressionRef_150
	mov eax, [ecx+0x1c]
	add ecx, 0x4
	cmp eax, ebx
	jnz Scr_CalcLocalVarsVariableExpressionRef_250
	jmp Scr_CalcLocalVarsVariableExpressionRef_30
Scr_CalcLocalVarsVariableExpressionRef_90:
	mov ebx, [eax+0x4]
	mov eax, [esi]
	test eax, eax
	jnz Scr_CalcLocalVarsVariableExpressionRef_30
	mov edi, [esi+0xc]
	test edi, edi
	jle Scr_CalcLocalVarsVariableExpressionRef_150
	cmp [esi+0x18], ebx
	jz Scr_CalcLocalVarsVariableExpressionRef_30
	mov ecx, esi
	xor edx, edx
Scr_CalcLocalVarsVariableExpressionRef_260:
	add edx, 0x1
	cmp edi, edx
	jz Scr_CalcLocalVarsVariableExpressionRef_150
	mov eax, [ecx+0x1c]
	add ecx, 0x4
	cmp eax, ebx
	jnz Scr_CalcLocalVarsVariableExpressionRef_260
	jmp Scr_CalcLocalVarsVariableExpressionRef_30


;EvalPrimitiveExpression(sval_u, VariableCompileValue*)
EvalPrimitiveExpression:
EvalPrimitiveExpression_140:
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
	ja EvalPrimitiveExpression_10
	jmp dword [edx*4+EvalPrimitiveExpression_jumptab_0]
EvalPrimitiveExpression_10:
	xor eax, eax
EvalPrimitiveExpression_20:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
EvalPrimitiveExpression_180:
	mov esi, [eax+0x8]
	mov eax, [eax+0x4]
	mov dword [ebx+0x4], 0x6
	mov [ebx], eax
	mov [ebx+0x8], esi
	mov eax, 0x1
	jmp EvalPrimitiveExpression_20
EvalPrimitiveExpression_190:
	mov esi, [eax+0x8]
	mov eax, [eax+0x4]
	mov dword [ebx+0x4], 0x5
	mov [ebx], eax
	mov [ebx+0x8], esi
	mov eax, 0x1
	jmp EvalPrimitiveExpression_20
EvalPrimitiveExpression_200:
	mov esi, [eax+0x8]
	mov eax, [eax+0x4]
	neg eax
	mov dword [ebx+0x4], 0x6
	mov [ebx], eax
	mov [ebx+0x8], esi
	mov eax, 0x1
	jmp EvalPrimitiveExpression_20
EvalPrimitiveExpression_210:
	mov esi, [eax+0x8]
	mov eax, [eax+0x4]
	xor eax, 0x80000000
	mov dword [ebx+0x4], 0x5
	mov [ebx], eax
	mov [ebx+0x8], esi
	mov eax, 0x1
	jmp EvalPrimitiveExpression_20
EvalPrimitiveExpression_220:
	mov esi, [eax+0x8]
	mov eax, [eax+0x4]
	mov dword [ebx+0x4], 0x2
	mov [ebx], eax
	mov [ebx+0x8], esi
	mov eax, 0x1
	jmp EvalPrimitiveExpression_20
EvalPrimitiveExpression_230:
	mov esi, [eax+0x8]
	mov eax, [eax+0x4]
	mov dword [ebx+0x4], 0x3
	mov [ebx], eax
	mov [ebx+0x8], esi
	mov eax, 0x1
	jmp EvalPrimitiveExpression_20
EvalPrimitiveExpression_240:
	mov eax, [eax+0x4]
	mov dword [ebx+0x4], 0x0
	mov [ebx+0x8], eax
	mov eax, 0x1
	jmp EvalPrimitiveExpression_20
EvalPrimitiveExpression_250:
	mov esi, [eax+0x8]
	mov eax, [eax+0x4]
	mov eax, [eax]
	mov edx, eax
	test eax, eax
	jz EvalPrimitiveExpression_30
	xor ecx, ecx
EvalPrimitiveExpression_40:
	add ecx, 0x1
	mov edx, [edx+0x4]
	test edx, edx
	jnz EvalPrimitiveExpression_40
	cmp ecx, 0x1
	jnz EvalPrimitiveExpression_50
	mov eax, [eax]
	mov edi, [eax]
	mov eax, [edi]
	cmp eax, 0x6
	jz EvalPrimitiveExpression_60
	cmp eax, 0x31
	jz EvalPrimitiveExpression_70
EvalPrimitiveExpression_30:
	xor eax, eax
	movzx eax, al
	jmp EvalPrimitiveExpression_20
EvalPrimitiveExpression_260:
	mov eax, [eax+0x4]
	mov dword [ebx+0x4], 0x6
	mov dword [ebx], 0x0
	mov [ebx+0x8], eax
	mov eax, 0x1
	jmp EvalPrimitiveExpression_20
EvalPrimitiveExpression_270:
	mov eax, [eax+0x4]
	mov dword [ebx+0x4], 0x6
	mov dword [ebx], 0x1
	mov [ebx+0x8], eax
	mov eax, 0x1
	jmp EvalPrimitiveExpression_20
EvalPrimitiveExpression_70:
	mov eax, [edi+0x10]
	mov ecx, [edi+0xc]
	mov edx, [edi+0x8]
	mov esi, [edi+0x4]
	mov [esp+0x4], ebx
	mov [esp], eax
	mov eax, esi
	call EvalBinaryOperatorExpression
	movzx eax, al
	jmp EvalPrimitiveExpression_20
EvalPrimitiveExpression_50:
	cmp ecx, 0x3
	jnz EvalPrimitiveExpression_30
	mov [ebp-0x54], eax
	test eax, eax
	jz EvalPrimitiveExpression_80
	lea eax, [ebp-0x48]
	mov [ebp-0x58], eax
EvalPrimitiveExpression_100:
	mov edx, [ebp-0x54]
	mov eax, [edx]
	mov edi, [eax]
	mov eax, [edi]
	cmp eax, 0x6
	jz EvalPrimitiveExpression_90
	cmp eax, 0x31
	jnz EvalPrimitiveExpression_30
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
	call EvalBinaryOperatorExpression
EvalPrimitiveExpression_150:
	test al, al
	jz EvalPrimitiveExpression_30
	add dword [ebp-0x58], 0xc
	mov edx, [ebp-0x54]
	mov edx, [edx+0x4]
	mov [ebp-0x54], edx
	test edx, edx
	jnz EvalPrimitiveExpression_100
EvalPrimitiveExpression_80:
	lea edi, [ebp-0x44]
	xor ecx, ecx
	lea eax, [ebp-0x24]
	mov [ebp-0x4c], eax
EvalPrimitiveExpression_130:
	lea edx, [ebp-0x48]
	add edx, ecx
	mov [ebp-0x50], edx
	mov edx, [edi]
	cmp edx, 0x5
	jz EvalPrimitiveExpression_110
	cmp edx, 0x6
	jnz EvalPrimitiveExpression_120
	cvtsi2ss xmm0, dword [edi-0x4]
	mov eax, [ebp-0x4c]
	movss [eax+0x8], xmm0
EvalPrimitiveExpression_160:
	add edi, 0xc
	add ecx, 0xc
	sub dword [ebp-0x4c], 0x4
	cmp ecx, 0x24
	jnz EvalPrimitiveExpression_130
	mov dword [ebx+0x4], 0x4
	lea eax, [ebp-0x24]
	mov [esp], eax
	call Scr_AllocVector
	mov [ebx], eax
EvalPrimitiveExpression_170:
	mov [ebx+0x8], esi
	mov eax, 0x1
	movzx eax, al
	jmp EvalPrimitiveExpression_20
EvalPrimitiveExpression_60:
	mov esi, [edi+0x4]
	mov edx, ebx
	mov eax, esi
	call EvalPrimitiveExpression_140
	movzx eax, al
	jmp EvalPrimitiveExpression_20
EvalPrimitiveExpression_90:
	mov edi, [edi+0x4]
	mov edx, [ebp-0x58]
	mov eax, edi
	call EvalPrimitiveExpression_140
	jmp EvalPrimitiveExpression_150
EvalPrimitiveExpression_110:
	mov eax, [edi-0x4]
	mov edx, [ebp-0x4c]
	mov [edx+0x8], eax
	jmp EvalPrimitiveExpression_160
EvalPrimitiveExpression_120:
	mov eax, var_typename
	mov eax, [eax+edx*4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_type_s_is_not_a_
	mov edx, [ebp-0x50]
	mov eax, [edx+0x8]
	mov [esp], eax
	call CompileError
	jmp EvalPrimitiveExpression_170
	
	
EvalPrimitiveExpression_jumptab_0:
	dd EvalPrimitiveExpression_180
	dd EvalPrimitiveExpression_190
	dd EvalPrimitiveExpression_200
	dd EvalPrimitiveExpression_210
	dd EvalPrimitiveExpression_220
	dd EvalPrimitiveExpression_230
	dd EvalPrimitiveExpression_10
	dd EvalPrimitiveExpression_10
	dd EvalPrimitiveExpression_10
	dd EvalPrimitiveExpression_10
	dd EvalPrimitiveExpression_10
	dd EvalPrimitiveExpression_10
	dd EvalPrimitiveExpression_10
	dd EvalPrimitiveExpression_10
	dd EvalPrimitiveExpression_10
	dd EvalPrimitiveExpression_10
	dd EvalPrimitiveExpression_10
	dd EvalPrimitiveExpression_10
	dd EvalPrimitiveExpression_10
	dd EvalPrimitiveExpression_10
	dd EvalPrimitiveExpression_10
	dd EvalPrimitiveExpression_10
	dd EvalPrimitiveExpression_10
	dd EvalPrimitiveExpression_10
	dd EvalPrimitiveExpression_240
	dd EvalPrimitiveExpression_10
	dd EvalPrimitiveExpression_10
	dd EvalPrimitiveExpression_10
	dd EvalPrimitiveExpression_10
	dd EvalPrimitiveExpression_10
	dd EvalPrimitiveExpression_10
	dd EvalPrimitiveExpression_10
	dd EvalPrimitiveExpression_10
	dd EvalPrimitiveExpression_10
	dd EvalPrimitiveExpression_10
	dd EvalPrimitiveExpression_10
	dd EvalPrimitiveExpression_10
	dd EvalPrimitiveExpression_10
	dd EvalPrimitiveExpression_10
	dd EvalPrimitiveExpression_250
	dd EvalPrimitiveExpression_10
	dd EvalPrimitiveExpression_10
	dd EvalPrimitiveExpression_10
	dd EvalPrimitiveExpression_10
	dd EvalPrimitiveExpression_10
	dd EvalPrimitiveExpression_10
	dd EvalPrimitiveExpression_10
	dd EvalPrimitiveExpression_10
	dd EvalPrimitiveExpression_10
	dd EvalPrimitiveExpression_10
	dd EvalPrimitiveExpression_10
	dd EvalPrimitiveExpression_10
	dd EvalPrimitiveExpression_10
	dd EvalPrimitiveExpression_10
	dd EvalPrimitiveExpression_10
	dd EvalPrimitiveExpression_10
	dd EvalPrimitiveExpression_10
	dd EvalPrimitiveExpression_10
	dd EvalPrimitiveExpression_10
	dd EvalPrimitiveExpression_10
	dd EvalPrimitiveExpression_10
	dd EvalPrimitiveExpression_10
	dd EvalPrimitiveExpression_10
	dd EvalPrimitiveExpression_10
	dd EvalPrimitiveExpression_10
	dd EvalPrimitiveExpression_260
	dd EvalPrimitiveExpression_270


;EvalBinaryOperatorExpression(sval_u, sval_u, sval_u, sval_u, VariableCompileValue*)
EvalBinaryOperatorExpression:
EvalBinaryOperatorExpression_30:
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
	jz EvalBinaryOperatorExpression_10
	cmp edx, 0x31
	jz EvalBinaryOperatorExpression_20
EvalBinaryOperatorExpression_40:
	xor eax, eax
EvalBinaryOperatorExpression_70:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
EvalBinaryOperatorExpression_20:
	mov ebx, [eax+0x10]
	mov ecx, [eax+0xc]
	mov edx, [eax+0x8]
	mov esi, [eax+0x4]
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov [esp], ebx
	mov eax, esi
	call EvalBinaryOperatorExpression_30
EvalBinaryOperatorExpression_80:
	test al, al
	jz EvalBinaryOperatorExpression_40
	mov eax, [edi]
	cmp eax, 0x6
	jz EvalBinaryOperatorExpression_50
	cmp eax, 0x31
	jnz EvalBinaryOperatorExpression_40
	mov ebx, [edi+0x10]
	mov ecx, [edi+0xc]
	mov edx, [edi+0x8]
	mov esi, [edi+0x4]
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov [esp], ebx
	mov eax, esi
	call EvalBinaryOperatorExpression_30
EvalBinaryOperatorExpression_90:
	test al, al
	jz EvalBinaryOperatorExpression_40
	mov eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov eax, [ebp-0x20]
	mov [esp], eax
	call AddRefToValue
	mov eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call AddRefToValue
	lea eax, [ebp-0x30]
	mov [esp+0x8], eax
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov eax, [ebp-0x3c]
	mov [esp], eax
	call Scr_EvalBinaryOperator
	mov eax, gScrVarPub
	mov eax, [eax+0xc]
	test eax, eax
	jz EvalBinaryOperatorExpression_60
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s
	mov edx, [ebp+0x8]
	mov [esp], edx
	call CompileError
	xor eax, eax
	jmp EvalBinaryOperatorExpression_70
EvalBinaryOperatorExpression_10:
	mov esi, [eax+0x4]
	lea edx, [ebp-0x24]
	mov eax, esi
	call EvalPrimitiveExpression
	jmp EvalBinaryOperatorExpression_80
EvalBinaryOperatorExpression_50:
	mov esi, [edi+0x4]
	lea edx, [ebp-0x30]
	mov eax, esi
	call EvalPrimitiveExpression
	jmp EvalBinaryOperatorExpression_90
EvalBinaryOperatorExpression_60:
	mov eax, [ebp-0x24]
	mov edx, [ebp-0x20]
	mov ecx, [ebp+0xc]
	mov [ecx], eax
	mov [ecx+0x4], edx
	mov eax, [ebp+0x8]
	mov [ecx+0x8], eax
	mov eax, 0x1
	jmp EvalBinaryOperatorExpression_70
	nop


;Scr_CalcLocalVarsStatement(sval_u, scr_block_s*)
Scr_CalcLocalVarsStatement:
Scr_CalcLocalVarsStatement_70:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x20c
	mov ebx, eax
	mov [ebp-0x174], edx
	cmp dword [eax], 0x40
	ja Scr_CalcLocalVarsStatement_10
	mov eax, [eax]
	jmp dword [eax*4+Scr_CalcLocalVarsStatement_jumptab_0]
Scr_CalcLocalVarsStatement_2770:
	mov eax, [ebp-0x174]
	mov ebx, [eax]
	test ebx, ebx
	jnz Scr_CalcLocalVarsStatement_20
	mov ecx, [scrCompileGlob+0x48]
	test ecx, ecx
	jz Scr_CalcLocalVarsStatement_30
	cmp dword [gScrCompilePub+0x20024], 0x2
	jz Scr_CalcLocalVarsStatement_30
	mov eax, [scrCompileGlob+0x4c]
	cmp dword [eax], 0x3ff
	jg Scr_CalcLocalVarsStatement_40
Scr_CalcLocalVarsStatement_2530:
	mov edx, [eax]
	mov eax, [scrCompileGlob+0x48]
	mov ecx, [ebp-0x174]
	mov [eax+edx*4], ecx
	mov eax, [scrCompileGlob+0x4c]
	add dword [eax], 0x1
	mov esi, [ebp-0x174]
Scr_CalcLocalVarsStatement_1890:
	mov edx, [esi]
	test edx, edx
	jnz Scr_CalcLocalVarsStatement_10
	mov dword [esi], 0x1
Scr_CalcLocalVarsStatement_10:
	add esp, 0x20c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_CalcLocalVarsStatement_2640:
	mov esi, [ebx+0x4]
	mov eax, [esi]
	cmp eax, 0x4
	jz Scr_CalcLocalVarsStatement_50
Scr_CalcLocalVarsStatement_560:
	cmp eax, 0xd
	jnz Scr_CalcLocalVarsStatement_10
	mov ebx, [esi+0x4]
	cmp dword [ebx], 0x11
	jnz Scr_CalcLocalVarsStatement_10
	mov eax, [ebx+0x4]
	mov edx, [ebp-0x174]
	call Scr_CalcLocalVarsVariableExpressionRef
	jmp Scr_CalcLocalVarsStatement_10
Scr_CalcLocalVarsStatement_2650:
	mov esi, [ebp-0x174]
	mov eax, [esi]
	test eax, eax
	jnz Scr_CalcLocalVarsStatement_10
	mov dword [esi], 0x3
	jmp Scr_CalcLocalVarsStatement_10
Scr_CalcLocalVarsStatement_2660:
	mov edi, [ebx+0x8]
	mov eax, [ebx+0x10]
	test eax, eax
	jz Scr_CalcLocalVarsStatement_60
	mov eax, [ebx+0x10]
Scr_CalcLocalVarsStatement_2410:
	mov dword [esp+0x8], 0x118
	mov edx, [ebp-0x174]
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	mov eax, [ebx+0x10]
	mov dword [eax+0x8], 0x0
	mov edx, [ebx+0x10]
	mov eax, edi
	call Scr_CalcLocalVarsStatement_70
	mov ecx, [ebp-0x174]
	mov eax, [ecx]
	test eax, eax
	jnz Scr_CalcLocalVarsStatement_10
	mov ebx, [ebx+0x10]
	mov [ebp-0x5c], ebx
	mov eax, [ecx+0xc]
	mov esi, ebx
	mov [ebx+0x8], eax
	test eax, eax
	jle Scr_CalcLocalVarsStatement_10
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
Scr_CalcLocalVarsStatement_120:
	mov ecx, [ecx]
	mov [ebp-0x168], ecx
	mov esi, [ebp-0x5c]
	mov ebx, [esi+0xc]
	mov [ebp-0x18c], ebx
	cmp [ebp-0x164], ebx
	jl Scr_CalcLocalVarsStatement_80
Scr_CalcLocalVarsStatement_1230:
	cmp ebx, 0x3f
	jg Scr_CalcLocalVarsStatement_90
	mov eax, [ebp-0x18c]
Scr_CalcLocalVarsStatement_1720:
	add eax, 0x1
	mov esi, [ebp-0x5c]
	mov [esi+0xc], eax
Scr_CalcLocalVarsStatement_1250:
	cmp [ebp-0x164], ebx
	jge Scr_CalcLocalVarsStatement_100
	lea eax, [ebx*4]
	mov edx, [ebp-0x5c]
	lea ecx, [eax+edx+0x14]
	lea edx, [eax+edx+0x18]
Scr_CalcLocalVarsStatement_110:
	sub ebx, 0x1
	mov eax, [ecx]
	mov [edx], eax
	sub ecx, 0x4
	sub edx, 0x4
	cmp [ebp-0x164], ebx
	jl Scr_CalcLocalVarsStatement_110
Scr_CalcLocalVarsStatement_100:
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
	jge Scr_CalcLocalVarsStatement_10
	mov ecx, [ebp-0xa8]
	jmp Scr_CalcLocalVarsStatement_120
Scr_CalcLocalVarsStatement_2670:
	lea esi, [ebx+0x1c]
	mov eax, [ebx+0xc]
	mov [ebp-0x170], eax
	mov edi, [ebx+0x8]
	mov eax, [ebx+0x18]
	test eax, eax
	jz Scr_CalcLocalVarsStatement_130
	mov eax, [ebx+0x18]
Scr_CalcLocalVarsStatement_2450:
	mov dword [esp+0x8], 0x118
	mov edx, [ebp-0x174]
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	mov eax, [ebx+0x18]
	mov dword [eax+0x8], 0x0
	mov edx, [ebx+0x18]
	mov eax, edi
	call Scr_CalcLocalVarsStatement_70
	mov eax, [ebx+0x18]
	mov ebx, [eax]
	cmp ebx, 0x3
	jle Scr_CalcLocalVarsStatement_140
	mov dword [ebp-0x15c], 0x0
	mov ebx, 0x3
Scr_CalcLocalVarsStatement_1880:
	mov ecx, [esi]
	test ecx, ecx
	jz Scr_CalcLocalVarsStatement_150
	mov eax, [esi]
Scr_CalcLocalVarsStatement_2440:
	mov dword [esp+0x8], 0x118
	mov ecx, [ebp-0x174]
	mov [esp+0x4], ecx
	mov [esp], eax
	call memcpy
	mov eax, [esi]
	mov dword [eax+0x8], 0x0
	mov edx, [esi]
	mov eax, [ebp-0x170]
	call Scr_CalcLocalVarsStatement_70
	mov eax, [esi]
	mov ecx, [eax]
	cmp ebx, ecx
	jge Scr_CalcLocalVarsStatement_160
	mov ecx, ebx
Scr_CalcLocalVarsStatement_1860:
	mov eax, [ebp-0x174]
	mov edx, [eax]
	test edx, edx
	jnz Scr_CalcLocalVarsStatement_170
	mov [eax], ecx
Scr_CalcLocalVarsStatement_170:
	mov eax, [ebp-0x15c]
	test eax, eax
	jz Scr_CalcLocalVarsStatement_10
	mov edx, [ebp-0x174]
	mov eax, [edx]
	test eax, eax
	jnz Scr_CalcLocalVarsStatement_180
	mov eax, [ebp-0x15c]
	test eax, eax
	jle Scr_CalcLocalVarsStatement_190
	xor edx, edx
Scr_CalcLocalVarsStatement_200:
	mov eax, [ebp+edx*4-0x2c]
	mov dword [eax], 0x0
	add edx, 0x1
	cmp [ebp-0x15c], edx
	jnz Scr_CalcLocalVarsStatement_200
Scr_CalcLocalVarsStatement_190:
	mov ecx, [ebp-0x2c]
	mov [ebp-0x17c], ecx
	mov edi, [ecx+0xc]
	test edi, edi
	jle Scr_CalcLocalVarsStatement_210
	mov dword [ebp-0x160], 0x0
	mov esi, [ebp-0x160]
Scr_CalcLocalVarsStatement_1700:
	mov eax, [ebp-0x17c]
	mov ebx, [eax+esi*4+0x18]
	mov edx, [ebp-0x174]
	mov esi, [edx+0xc]
	test esi, esi
	jg Scr_CalcLocalVarsStatement_220
Scr_CalcLocalVarsStatement_1680:
	cmp dword [ebp-0x15c], 0x1
	jle Scr_CalcLocalVarsStatement_230
	mov dword [ebp-0x3c], 0x1
	mov edx, [ebp-0x3c]
Scr_CalcLocalVarsStatement_270:
	mov eax, [ebp+edx*4-0x2c]
	mov edi, [eax+0xc]
	test edi, edi
	jle Scr_CalcLocalVarsStatement_240
	cmp ebx, [eax+0x18]
	jz Scr_CalcLocalVarsStatement_250
	mov ecx, eax
	xor edx, edx
Scr_CalcLocalVarsStatement_260:
	add edx, 0x1
	cmp edi, edx
	jz Scr_CalcLocalVarsStatement_240
	mov eax, [ecx+0x1c]
	add ecx, 0x4
	cmp ebx, eax
	jnz Scr_CalcLocalVarsStatement_260
	test edx, edx
	js Scr_CalcLocalVarsStatement_240
Scr_CalcLocalVarsStatement_250:
	add dword [ebp-0x3c], 0x1
	mov ecx, [ebp-0x3c]
	cmp [ebp-0x15c], ecx
	jz Scr_CalcLocalVarsStatement_230
	mov edx, ecx
	jmp Scr_CalcLocalVarsStatement_270
Scr_CalcLocalVarsStatement_2680:
	lea edx, [ebx+0x14]
	mov [ebp-0x14c], edx
	mov edi, [ebx+0x8]
	mov esi, [ebx+0x4]
	mov eax, [esi]
	cmp eax, 0x6
	jz Scr_CalcLocalVarsStatement_280
	cmp eax, 0x31
	jz Scr_CalcLocalVarsStatement_290
Scr_CalcLocalVarsStatement_2140:
	mov byte [ebp-0x145], 0x0
Scr_CalcLocalVarsStatement_2160:
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
	jnz Scr_CalcLocalVarsStatement_300
	mov dword [ebp-0x130], 0x0
Scr_CalcLocalVarsStatement_2090:
	mov ecx, [ebp-0x130]
	mov [scrCompileGlob+0x3c], ecx
	mov eax, [ebp-0x14c]
	mov edx, [eax]
	test edx, edx
	jz Scr_CalcLocalVarsStatement_310
	mov ecx, eax
Scr_CalcLocalVarsStatement_2420:
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
	call Scr_CalcLocalVarsStatement_70
	mov eax, [ebp-0x14c]
	mov ebx, [eax]
	mov eax, [ebx]
	test eax, eax
	jnz Scr_CalcLocalVarsStatement_320
	mov eax, [scrCompileGlob+0x48]
	test eax, eax
	jz Scr_CalcLocalVarsStatement_320
	cmp dword [gScrCompilePub+0x20024], 0x2
	jz Scr_CalcLocalVarsStatement_320
	mov eax, [scrCompileGlob+0x4c]
	cmp dword [eax], 0x3ff
	jg Scr_CalcLocalVarsStatement_330
Scr_CalcLocalVarsStatement_2510:
	mov edx, [eax]
	mov eax, [scrCompileGlob+0x48]
	mov [eax+edx*4], ebx
	mov eax, [scrCompileGlob+0x4c]
	add dword [eax], 0x1
Scr_CalcLocalVarsStatement_320:
	mov edi, [ebp-0x20]
	test edi, edi
	jle Scr_CalcLocalVarsStatement_340
	mov dword [ebp-0x90], 0x1
	add esi, 0x4
	mov [ebp-0x1e4], esi
Scr_CalcLocalVarsStatement_1050:
	mov edx, [ebp-0x174]
	mov esi, [edx]
	test esi, esi
	jnz Scr_CalcLocalVarsStatement_350
	mov ecx, [ebp-0x1e4]
	sub ecx, 0x4
	mov [ebp-0x8c], ecx
	mov esi, [ebp-0x1e4]
	mov eax, [esi-0x4]
	mov dword [eax], 0x0
	mov eax, [esi-0x4]
	mov ebx, [eax+0xc]
	test ebx, ebx
	jle Scr_CalcLocalVarsStatement_350
	xor edi, edi
	jmp Scr_CalcLocalVarsStatement_360
Scr_CalcLocalVarsStatement_370:
	mov edx, eax
Scr_CalcLocalVarsStatement_410:
	mov [edx+ebx*4+0x18], esi
	add dword [edx+0xc], 0x1
Scr_CalcLocalVarsStatement_380:
	add edi, 0x1
	mov esi, [ebp-0x8c]
	mov eax, [esi]
	cmp edi, [eax+0xc]
	jge Scr_CalcLocalVarsStatement_350
Scr_CalcLocalVarsStatement_360:
	mov esi, [eax+edi*4+0x18]
	mov eax, [ebp-0x174]
	mov ebx, [eax+0xc]
	test ebx, ebx
	jle Scr_CalcLocalVarsStatement_370
	cmp esi, [eax+0x18]
	jz Scr_CalcLocalVarsStatement_380
	mov edx, eax
	xor ecx, ecx
Scr_CalcLocalVarsStatement_400:
	add ecx, 0x1
	cmp ebx, ecx
	jz Scr_CalcLocalVarsStatement_390
	mov eax, [edx+0x1c]
	add edx, 0x4
	cmp esi, eax
	jnz Scr_CalcLocalVarsStatement_400
	test ecx, ecx
	jns Scr_CalcLocalVarsStatement_380
Scr_CalcLocalVarsStatement_390:
	mov edx, [ebp-0x174]
	jmp Scr_CalcLocalVarsStatement_410
Scr_CalcLocalVarsStatement_2690:
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
	call Scr_CalcLocalVarsStatement_70
	cmp dword [edi], 0x41
	jz Scr_CalcLocalVarsStatement_420
	mov byte [ebp-0x111], 0x1
Scr_CalcLocalVarsStatement_2130:
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
	jnz Scr_CalcLocalVarsStatement_430
	mov dword [ebp-0xf0], 0x0
Scr_CalcLocalVarsStatement_2100:
	mov eax, [ebp-0xf0]
	mov [scrCompileGlob+0x3c], eax
	mov edx, [ebp-0x118]
	mov eax, [edx]
	test eax, eax
	jz Scr_CalcLocalVarsStatement_440
Scr_CalcLocalVarsStatement_2470:
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
	jz Scr_CalcLocalVarsStatement_450
Scr_CalcLocalVarsStatement_2460:
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
	call Scr_CalcLocalVarsStatement_70
	mov edx, [ebp-0x118]
	mov ebx, [edx]
	mov eax, [ebx]
	test eax, eax
	jnz Scr_CalcLocalVarsStatement_460
	mov eax, [scrCompileGlob+0x48]
	test eax, eax
	jz Scr_CalcLocalVarsStatement_460
	cmp dword [gScrCompilePub+0x20024], 0x2
	jz Scr_CalcLocalVarsStatement_460
	mov eax, [scrCompileGlob+0x4c]
	cmp dword [eax], 0x3ff
	jg Scr_CalcLocalVarsStatement_470
Scr_CalcLocalVarsStatement_2520:
	mov edx, [eax]
	mov eax, [scrCompileGlob+0x48]
	mov [eax+edx*4], ebx
	mov eax, [scrCompileGlob+0x4c]
	add dword [eax], 0x1
Scr_CalcLocalVarsStatement_460:
	mov edi, [ebp-0x20]
	test edi, edi
	jle Scr_CalcLocalVarsStatement_480
	mov dword [ebp-0x78], 0x1
	add esi, 0x4
	mov [ebp-0x1d4], esi
Scr_CalcLocalVarsStatement_960:
	mov ecx, [ebp-0x174]
	mov ebx, [ecx]
	test ebx, ebx
	jnz Scr_CalcLocalVarsStatement_490
	mov esi, [ebp-0x1d4]
	sub esi, 0x4
	mov [ebp-0x74], esi
	mov edx, [ebp-0x1d4]
	mov eax, [edx-0x4]
	mov dword [eax], 0x0
	mov eax, [edx-0x4]
	mov ecx, [eax+0xc]
	test ecx, ecx
	jle Scr_CalcLocalVarsStatement_490
	xor edi, edi
	jmp Scr_CalcLocalVarsStatement_500
Scr_CalcLocalVarsStatement_510:
	mov eax, ecx
Scr_CalcLocalVarsStatement_550:
	mov [eax+ebx*4+0x18], esi
	add dword [eax+0xc], 0x1
Scr_CalcLocalVarsStatement_520:
	add edi, 0x1
	mov ecx, [ebp-0x74]
	mov eax, [ecx]
	cmp edi, [eax+0xc]
	jge Scr_CalcLocalVarsStatement_490
Scr_CalcLocalVarsStatement_500:
	mov esi, [eax+edi*4+0x18]
	mov ecx, [ebp-0x174]
	mov ebx, [ecx+0xc]
	test ebx, ebx
	jle Scr_CalcLocalVarsStatement_510
	mov edx, ecx
	cmp esi, [ecx+0x18]
	jz Scr_CalcLocalVarsStatement_520
	xor ecx, ecx
Scr_CalcLocalVarsStatement_540:
	add ecx, 0x1
	cmp ebx, ecx
	jz Scr_CalcLocalVarsStatement_530
	mov eax, [edx+0x1c]
	add edx, 0x4
	cmp esi, eax
	jnz Scr_CalcLocalVarsStatement_540
	test ecx, ecx
	jns Scr_CalcLocalVarsStatement_520
Scr_CalcLocalVarsStatement_530:
	mov eax, [ebp-0x174]
	jmp Scr_CalcLocalVarsStatement_550
Scr_CalcLocalVarsStatement_2700:
	mov esi, [ebx+0x4]
	mov eax, [esi]
	cmp eax, 0x4
	jnz Scr_CalcLocalVarsStatement_560
	mov ebx, [esi+0x4]
	mov eax, [ebp-0x174]
	mov edx, [eax]
	test edx, edx
	jnz Scr_CalcLocalVarsStatement_10
	mov edi, [eax+0xc]
	test edi, edi
	jg Scr_CalcLocalVarsStatement_570
Scr_CalcLocalVarsStatement_2170:
	cmp edi, 0x3f
	jg Scr_CalcLocalVarsStatement_580
	mov ecx, [ebp-0x174]
Scr_CalcLocalVarsStatement_2540:
	mov [ecx+edi*4+0x18], ebx
	add dword [ecx+0xc], 0x1
	jmp Scr_CalcLocalVarsStatement_10
Scr_CalcLocalVarsStatement_2710:
	mov esi, [ebx+0x4]
	mov eax, [esi]
	cmp eax, 0x4
	jnz Scr_CalcLocalVarsStatement_560
	mov ebx, [esi+0x4]
	mov esi, [ebp-0x174]
	mov eax, [esi]
	test eax, eax
	jnz Scr_CalcLocalVarsStatement_10
	mov edi, [esi+0xc]
	test edi, edi
	jg Scr_CalcLocalVarsStatement_590
Scr_CalcLocalVarsStatement_2390:
	cmp edi, 0x3f
	jg Scr_CalcLocalVarsStatement_600
	mov edx, [ebp-0x174]
Scr_CalcLocalVarsStatement_2560:
	mov [edx+edi*4+0x18], ebx
	add dword [edx+0xc], 0x1
	jmp Scr_CalcLocalVarsStatement_10
Scr_CalcLocalVarsStatement_2720:
	mov esi, [ebx+0x4]
	mov eax, [esi]
	mov ebx, [eax+0x4]
	test ebx, ebx
	jz Scr_CalcLocalVarsStatement_10
Scr_CalcLocalVarsStatement_610:
	mov eax, [ebx]
	mov edx, [ebp-0x174]
	call Scr_CalcLocalVarsStatement_70
	mov ebx, [ebx+0x4]
	test ebx, ebx
	jnz Scr_CalcLocalVarsStatement_610
	jmp Scr_CalcLocalVarsStatement_10
Scr_CalcLocalVarsStatement_2730:
	lea ecx, [ebx+0xc]
	mov [ebp-0xdc], ecx
	mov esi, [ebx+0x4]
	mov edi, [ebx+0xc]
	test edi, edi
	jz Scr_CalcLocalVarsStatement_620
	mov eax, [ebx+0xc]
Scr_CalcLocalVarsStatement_2430:
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
	jz Scr_CalcLocalVarsStatement_630
Scr_CalcLocalVarsStatement_640:
	mov eax, [ebx]
	mov edx, edi
	call Scr_CalcLocalVarsStatement_70
	mov ebx, [ebx+0x4]
	test ebx, ebx
	jnz Scr_CalcLocalVarsStatement_640
Scr_CalcLocalVarsStatement_630:
	mov ecx, [ebp-0x174]
	mov ebx, [ecx]
	test ebx, ebx
	jnz Scr_CalcLocalVarsStatement_10
	mov esi, [ebp-0xdc]
	mov esi, [esi]
	mov [ebp-0x54], esi
	mov eax, [ecx+0xc]
	mov [esi+0x8], eax
	test eax, eax
	jle Scr_CalcLocalVarsStatement_10
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
Scr_CalcLocalVarsStatement_690:
	mov ecx, [ecx]
	mov [ebp-0xd8], ecx
	mov esi, [ebp-0x54]
	mov ebx, [esi+0xc]
	mov [ebp-0x184], ebx
	cmp [ebp-0xd4], ebx
	jl Scr_CalcLocalVarsStatement_650
Scr_CalcLocalVarsStatement_1190:
	cmp ebx, 0x3f
	jg Scr_CalcLocalVarsStatement_660
	mov eax, [ebp-0x184]
Scr_CalcLocalVarsStatement_1710:
	add eax, 0x1
	mov esi, [ebp-0x54]
	mov [esi+0xc], eax
Scr_CalcLocalVarsStatement_1210:
	cmp [ebp-0xd4], ebx
	jge Scr_CalcLocalVarsStatement_670
	lea eax, [ebx*4]
	mov edx, [ebp-0x54]
	lea ecx, [eax+edx+0x14]
	lea edx, [eax+edx+0x18]
Scr_CalcLocalVarsStatement_680:
	sub ebx, 0x1
	mov eax, [ecx]
	mov [edx], eax
	sub ecx, 0x4
	sub edx, 0x4
	cmp [ebp-0xd4], ebx
	jl Scr_CalcLocalVarsStatement_680
Scr_CalcLocalVarsStatement_670:
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
	jge Scr_CalcLocalVarsStatement_10
	mov ecx, [ebp-0x70]
	jmp Scr_CalcLocalVarsStatement_690
Scr_CalcLocalVarsStatement_2740:
	mov edi, [ebx+0x8]
	mov eax, [edi]
	mov ebx, [eax+0x4]
Scr_CalcLocalVarsStatement_700:
	mov ebx, [ebx+0x4]
	test ebx, ebx
	jz Scr_CalcLocalVarsStatement_10
Scr_CalcLocalVarsStatement_730:
	mov eax, [ebx]
	mov esi, [eax]
	mov eax, [ebp-0x174]
	mov edx, [eax]
	test edx, edx
	jnz Scr_CalcLocalVarsStatement_700
	mov edi, [eax+0xc]
	test edi, edi
	jg Scr_CalcLocalVarsStatement_710
Scr_CalcLocalVarsStatement_1160:
	cmp edi, 0x3f
	jg Scr_CalcLocalVarsStatement_720
	mov ecx, [ebp-0x174]
Scr_CalcLocalVarsStatement_1660:
	mov [ecx+edi*4+0x18], esi
	add dword [ecx+0xc], 0x1
	mov ebx, [ebx+0x4]
	test ebx, ebx
	jnz Scr_CalcLocalVarsStatement_730
	jmp Scr_CalcLocalVarsStatement_10
Scr_CalcLocalVarsStatement_2750:
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
	jz Scr_CalcLocalVarsStatement_740
	mov edi, 0x3
	mov dword [ebp-0xb8], 0x0
	mov byte [ebp-0xc5], 0x0
	xor esi, esi
Scr_CalcLocalVarsStatement_780:
	mov ecx, [ebx]
	mov eax, [ecx]
	sub eax, 0x3d
	cmp eax, 0x1
	jbe Scr_CalcLocalVarsStatement_750
	test esi, esi
	jz Scr_CalcLocalVarsStatement_760
	mov edx, esi
	mov eax, ecx
	call Scr_CalcLocalVarsStatement_70
	mov eax, [esi]
	test eax, eax
	jz Scr_CalcLocalVarsStatement_760
	cmp eax, 0x2
	jz Scr_CalcLocalVarsStatement_770
	cmp eax, edi
	cmovle edi, eax
Scr_CalcLocalVarsStatement_1740:
	xor esi, esi
Scr_CalcLocalVarsStatement_760:
	mov ebx, [ebx+0x4]
	test ebx, ebx
	jnz Scr_CalcLocalVarsStatement_780
	cmp byte [ebp-0xc5], 0x0
	jz Scr_CalcLocalVarsStatement_740
	test esi, esi
	jz Scr_CalcLocalVarsStatement_790
	mov eax, [esi]
	test eax, eax
	jnz Scr_CalcLocalVarsStatement_800
	mov ebx, [scrCompileGlob+0x3c]
	test ebx, ebx
	jz Scr_CalcLocalVarsStatement_800
	cmp dword [gScrCompilePub+0x20024], 0x2
	jz Scr_CalcLocalVarsStatement_800
	mov eax, [scrCompileGlob+0x40]
	cmp dword [eax], 0x3ff
	jg Scr_CalcLocalVarsStatement_810
Scr_CalcLocalVarsStatement_2570:
	mov edx, [eax]
	mov eax, [scrCompileGlob+0x3c]
	mov [eax+edx*4], esi
	mov eax, [scrCompileGlob+0x40]
	add dword [eax], 0x1
Scr_CalcLocalVarsStatement_800:
	cmp dword [ebp-0xb8], 0x3ff
	jg Scr_CalcLocalVarsStatement_820
Scr_CalcLocalVarsStatement_2370:
	mov edx, [ebp-0xb8]
	mov ecx, [ebp-0xb4]
	mov [ecx+edx*4], esi
	add edx, 0x1
	mov [ebp-0xb8], edx
Scr_CalcLocalVarsStatement_790:
	mov esi, [ebp-0x174]
	mov ecx, [esi]
	test ecx, ecx
	jnz Scr_CalcLocalVarsStatement_830
	mov [esi], edi
Scr_CalcLocalVarsStatement_830:
	mov eax, [ebp-0x1c]
	mov [ebp-0xc4], eax
	test eax, eax
	jz Scr_CalcLocalVarsStatement_840
	mov edx, [ebp-0x174]
	mov edx, [edx]
	test edx, edx
	jnz Scr_CalcLocalVarsStatement_840
	test eax, eax
	jle Scr_CalcLocalVarsStatement_850
	xor edx, edx
Scr_CalcLocalVarsStatement_860:
	mov ecx, [ebp-0xc0]
	mov eax, [ecx+edx*4]
	mov dword [eax], 0x0
	add edx, 0x1
	cmp [ebp-0xc4], edx
	jnz Scr_CalcLocalVarsStatement_860
Scr_CalcLocalVarsStatement_850:
	mov esi, [ebp-0xc0]
	mov esi, [esi]
	mov [ebp-0x194], esi
	mov eax, [esi+0xc]
	test eax, eax
	jle Scr_CalcLocalVarsStatement_840
	mov dword [ebp-0xbc], 0x0
	mov eax, [ebp-0xbc]
Scr_CalcLocalVarsStatement_1990:
	mov edx, [ebp-0x194]
	mov ebx, [edx+eax*4+0x18]
	mov ecx, [ebp-0x174]
	mov esi, [ecx+0xc]
	test esi, esi
	jg Scr_CalcLocalVarsStatement_870
Scr_CalcLocalVarsStatement_1970:
	cmp dword [ebp-0xc4], 0x1
	jle Scr_CalcLocalVarsStatement_880
	mov dword [ebp-0x48], 0x1
	mov edx, [ebp-0x48]
Scr_CalcLocalVarsStatement_920:
	mov ecx, [ebp-0xc0]
	mov eax, [ecx+edx*4]
	mov edi, [eax+0xc]
	test edi, edi
	jle Scr_CalcLocalVarsStatement_890
	cmp ebx, [eax+0x18]
	jz Scr_CalcLocalVarsStatement_900
	mov ecx, eax
	xor edx, edx
Scr_CalcLocalVarsStatement_910:
	add edx, 0x1
	cmp edi, edx
	jz Scr_CalcLocalVarsStatement_890
	mov eax, [ecx+0x1c]
	add ecx, 0x4
	cmp ebx, eax
	jnz Scr_CalcLocalVarsStatement_910
	test edx, edx
	js Scr_CalcLocalVarsStatement_890
Scr_CalcLocalVarsStatement_900:
	add dword [ebp-0x48], 0x1
	mov eax, [ebp-0x48]
	cmp [ebp-0xc4], eax
	jz Scr_CalcLocalVarsStatement_880
	mov edx, eax
	jmp Scr_CalcLocalVarsStatement_920
Scr_CalcLocalVarsStatement_2760:
	mov esi, [ebp-0x174]
	mov eax, [esi]
	test eax, eax
	jnz Scr_CalcLocalVarsStatement_930
	mov eax, [scrCompileGlob+0x3c]
	test eax, eax
	jz Scr_CalcLocalVarsStatement_940
	cmp dword [gScrCompilePub+0x20024], 0x2
	jz Scr_CalcLocalVarsStatement_940
	mov eax, [scrCompileGlob+0x40]
	cmp dword [eax], 0x3ff
	jg Scr_CalcLocalVarsStatement_950
Scr_CalcLocalVarsStatement_2500:
	mov edx, [eax]
	mov eax, [scrCompileGlob+0x3c]
	mov ecx, [ebp-0x174]
	mov [eax+edx*4], ecx
	mov eax, [scrCompileGlob+0x40]
	add dword [eax], 0x1
	mov esi, [ebp-0x174]
Scr_CalcLocalVarsStatement_930:
	mov edi, [esi]
	test edi, edi
	jnz Scr_CalcLocalVarsStatement_10
	mov dword [esi], 0x2
	jmp Scr_CalcLocalVarsStatement_10
Scr_CalcLocalVarsStatement_490:
	mov eax, [ebp-0x78]
	add dword [ebp-0x78], 0x1
	add dword [ebp-0x1d4], 0x4
	cmp eax, [ebp-0x20]
	jl Scr_CalcLocalVarsStatement_960
Scr_CalcLocalVarsStatement_480:
	mov esi, [ebp-0x11c]
	mov edx, [esi]
	mov eax, [ebp-0x170]
	call Scr_CalcLocalVarsStatement_70
	mov eax, [ebp-0x174]
	mov edx, [eax]
	test edx, edx
	jnz Scr_CalcLocalVarsStatement_970
	mov eax, [esi]
	mov dword [eax], 0x0
	mov edi, [esi]
	mov eax, [edi+0xc]
	test eax, eax
	jle Scr_CalcLocalVarsStatement_980
	mov dword [ebp-0x100], 0x0
	mov edx, [ebp-0x100]
	jmp Scr_CalcLocalVarsStatement_990
Scr_CalcLocalVarsStatement_1000:
	mov eax, ecx
Scr_CalcLocalVarsStatement_1040:
	mov [eax+ebx*4+0x18], esi
	add dword [eax+0xc], 0x1
	mov edx, [ebp-0x11c]
	mov edi, [edx]
Scr_CalcLocalVarsStatement_1010:
	add dword [ebp-0x100], 0x1
	mov esi, [ebp-0x100]
	cmp esi, [edi+0xc]
	jge Scr_CalcLocalVarsStatement_980
	mov edx, esi
Scr_CalcLocalVarsStatement_990:
	mov esi, [edi+edx*4+0x18]
	mov ecx, [ebp-0x174]
	mov ebx, [ecx+0xc]
	test ebx, ebx
	jle Scr_CalcLocalVarsStatement_1000
	cmp esi, [ecx+0x18]
	jz Scr_CalcLocalVarsStatement_1010
	mov edx, ecx
	xor ecx, ecx
Scr_CalcLocalVarsStatement_1030:
	add ecx, 0x1
	cmp ebx, ecx
	jz Scr_CalcLocalVarsStatement_1020
	mov eax, [edx+0x1c]
	add edx, 0x4
	cmp esi, eax
	jnz Scr_CalcLocalVarsStatement_1030
	test ecx, ecx
	jns Scr_CalcLocalVarsStatement_1010
Scr_CalcLocalVarsStatement_1020:
	mov eax, [ebp-0x174]
	jmp Scr_CalcLocalVarsStatement_1040
Scr_CalcLocalVarsStatement_350:
	mov eax, [ebp-0x90]
	add dword [ebp-0x90], 0x1
	add dword [ebp-0x1e4], 0x4
	cmp [ebp-0x20], eax
	jg Scr_CalcLocalVarsStatement_1050
Scr_CalcLocalVarsStatement_340:
	cmp byte [ebp-0x145], 0x0
	jz Scr_CalcLocalVarsStatement_1060
	mov eax, [ebp-0x1c]
	mov [ebp-0x134], eax
	test eax, eax
	jz Scr_CalcLocalVarsStatement_1060
	mov edx, [ebp-0x174]
	mov ecx, [edx]
	test ecx, ecx
	jnz Scr_CalcLocalVarsStatement_1070
	test eax, eax
	jle Scr_CalcLocalVarsStatement_1080
	xor edx, edx
Scr_CalcLocalVarsStatement_1090:
	mov ecx, [ebp-0x130]
	mov eax, [ecx+edx*4]
	mov dword [eax], 0x0
	add edx, 0x1
	cmp [ebp-0x134], edx
	jnz Scr_CalcLocalVarsStatement_1090
Scr_CalcLocalVarsStatement_1080:
	mov esi, [ebp-0x130]
	mov esi, [esi]
	mov [ebp-0x1a0], esi
	mov edx, [esi+0xc]
	test edx, edx
	jle Scr_CalcLocalVarsStatement_1060
	mov dword [ebp-0x12c], 0x0
	mov eax, [ebp-0x12c]
Scr_CalcLocalVarsStatement_2050:
	mov edx, [ebp-0x1a0]
	mov ebx, [edx+eax*4+0x18]
	mov ecx, [ebp-0x174]
	mov esi, [ecx+0xc]
	test esi, esi
	jg Scr_CalcLocalVarsStatement_1100
Scr_CalcLocalVarsStatement_2030:
	cmp dword [ebp-0x134], 0x1
	jle Scr_CalcLocalVarsStatement_1110
	mov dword [ebp-0x40], 0x1
	mov edx, [ebp-0x40]
Scr_CalcLocalVarsStatement_1150:
	mov ecx, [ebp-0x130]
	mov eax, [ecx+edx*4]
	mov edi, [eax+0xc]
	test edi, edi
	jle Scr_CalcLocalVarsStatement_1120
	cmp ebx, [eax+0x18]
	jz Scr_CalcLocalVarsStatement_1130
	mov ecx, eax
	xor edx, edx
Scr_CalcLocalVarsStatement_1140:
	add edx, 0x1
	cmp edi, edx
	jz Scr_CalcLocalVarsStatement_1120
	mov eax, [ecx+0x1c]
	add ecx, 0x4
	cmp ebx, eax
	jnz Scr_CalcLocalVarsStatement_1140
	test edx, edx
	js Scr_CalcLocalVarsStatement_1120
Scr_CalcLocalVarsStatement_1130:
	add dword [ebp-0x40], 0x1
	mov eax, [ebp-0x40]
	cmp [ebp-0x134], eax
	jz Scr_CalcLocalVarsStatement_1110
	mov edx, eax
	jmp Scr_CalcLocalVarsStatement_1150
Scr_CalcLocalVarsStatement_710:
	mov eax, [ebp-0x174]
	cmp esi, [eax+0x18]
	jz Scr_CalcLocalVarsStatement_700
	mov ecx, eax
	xor edx, edx
Scr_CalcLocalVarsStatement_1170:
	add edx, 0x1
	cmp edx, edi
	jz Scr_CalcLocalVarsStatement_1160
	mov eax, [ecx+0x1c]
	add ecx, 0x4
	cmp esi, eax
	jnz Scr_CalcLocalVarsStatement_1170
	jmp Scr_CalcLocalVarsStatement_700
Scr_CalcLocalVarsStatement_650:
	mov eax, [ebp-0x6c]
	cmp [eax+0x18], ecx
	jz Scr_CalcLocalVarsStatement_1180
	mov edx, [ebp-0x1b8]
	add edx, 0x8
	mov ecx, [ebp-0xd4]
	mov edi, ebx
	mov esi, [ebp-0x1b4]
	sub esi, [ebp-0x1b0]
Scr_CalcLocalVarsStatement_1200:
	add ecx, 0x1
	cmp edi, ecx
	jz Scr_CalcLocalVarsStatement_1190
	mov eax, [esi+edx]
	add edx, 0x4
	cmp eax, [ebp-0xd8]
	jnz Scr_CalcLocalVarsStatement_1200
Scr_CalcLocalVarsStatement_1930:
	test ecx, ecx
	js Scr_CalcLocalVarsStatement_1190
	mov ebx, ecx
	jmp Scr_CalcLocalVarsStatement_1210
Scr_CalcLocalVarsStatement_80:
	mov eax, [ebp-0xa4]
	cmp ecx, [eax+0x18]
	jz Scr_CalcLocalVarsStatement_1220
	mov edx, [ebp-0x1fc]
	add edx, 0x8
	mov ecx, [ebp-0x164]
	mov edi, ebx
	mov esi, [ebp-0x1f8]
	sub esi, [ebp-0x1f4]
Scr_CalcLocalVarsStatement_1240:
	add ecx, 0x1
	cmp edi, ecx
	jz Scr_CalcLocalVarsStatement_1230
	mov eax, [esi+edx]
	add edx, 0x4
	cmp [ebp-0x168], eax
	jnz Scr_CalcLocalVarsStatement_1240
Scr_CalcLocalVarsStatement_1940:
	test ecx, ecx
	js Scr_CalcLocalVarsStatement_1230
	mov ebx, ecx
	jmp Scr_CalcLocalVarsStatement_1250
Scr_CalcLocalVarsStatement_1060:
	mov edx, [ebp-0x174]
Scr_CalcLocalVarsStatement_1070:
	mov eax, [edx]
	test eax, eax
	jnz Scr_CalcLocalVarsStatement_1260
	mov ecx, [ebp-0x14c]
	mov ecx, [ecx]
	mov [ebp-0x120], ecx
	mov eax, [edx+0xc]
	mov [ecx+0x8], eax
	test eax, eax
	jle Scr_CalcLocalVarsStatement_1260
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
Scr_CalcLocalVarsStatement_1310:
	mov edx, [edx]
	mov [ebp-0x128], edx
	mov ecx, [ebp-0x120]
	mov ebx, [ecx+0xc]
	mov [ebp-0x178], ebx
	cmp [ebp-0x124], ebx
	jl Scr_CalcLocalVarsStatement_1270
Scr_CalcLocalVarsStatement_1330:
	cmp ebx, 0x3f
	jg Scr_CalcLocalVarsStatement_1280
	mov eax, [ebp-0x178]
Scr_CalcLocalVarsStatement_1910:
	add eax, 0x1
	mov ecx, [ebp-0x120]
	mov [ecx+0xc], eax
Scr_CalcLocalVarsStatement_1350:
	cmp [ebp-0x124], ebx
	jge Scr_CalcLocalVarsStatement_1290
	lea eax, [ebx*4]
	mov esi, [ebp-0x120]
	lea ecx, [eax+esi+0x14]
	lea edx, [eax+esi+0x18]
Scr_CalcLocalVarsStatement_1300:
	sub ebx, 0x1
	mov eax, [ecx]
	mov [edx], eax
	sub ecx, 0x4
	sub edx, 0x4
	cmp [ebp-0x124], ebx
	jl Scr_CalcLocalVarsStatement_1300
Scr_CalcLocalVarsStatement_1290:
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
	jge Scr_CalcLocalVarsStatement_1260
	mov edx, [ebp-0x98]
	jmp Scr_CalcLocalVarsStatement_1310
Scr_CalcLocalVarsStatement_1270:
	mov esi, [ebp-0x94]
	cmp edx, [esi+0x18]
	jz Scr_CalcLocalVarsStatement_1320
	mov edx, [ebp-0x1e0]
	add edx, 0x8
	mov ecx, [ebp-0x124]
	mov edi, ebx
	mov esi, [ebp-0x1dc]
	sub esi, [ebp-0x1d8]
Scr_CalcLocalVarsStatement_1340:
	add ecx, 0x1
	cmp edi, ecx
	jz Scr_CalcLocalVarsStatement_1330
	mov eax, [esi+edx]
	add edx, 0x4
	cmp [ebp-0x128], eax
	jnz Scr_CalcLocalVarsStatement_1340
Scr_CalcLocalVarsStatement_2060:
	test ecx, ecx
	js Scr_CalcLocalVarsStatement_1330
	mov ebx, ecx
	jmp Scr_CalcLocalVarsStatement_1350
Scr_CalcLocalVarsStatement_1260:
	mov eax, [ebp-0x144]
	mov [scrCompileGlob+0x3c], eax
	mov edx, [ebp-0x140]
	mov [scrCompileGlob+0x40], edx
	mov ecx, [ebp-0x13c]
	mov [scrCompileGlob+0x48], ecx
	mov esi, [ebp-0x138]
	mov [scrCompileGlob+0x4c], esi
	jmp Scr_CalcLocalVarsStatement_10
Scr_CalcLocalVarsStatement_740:
	mov edx, [ebp-0xd0]
	mov [scrCompileGlob+0x3c], edx
	mov ecx, [ebp-0xcc]
	mov [scrCompileGlob+0x40], ecx
	jmp Scr_CalcLocalVarsStatement_10
Scr_CalcLocalVarsStatement_980:
	mov eax, [ebp-0x174]
Scr_CalcLocalVarsStatement_970:
	mov edi, [eax]
	test edi, edi
	jnz Scr_CalcLocalVarsStatement_1360
	mov edx, [ebp-0x11c]
	mov edx, [edx]
	mov [ebp-0x58], edx
	mov ecx, eax
	mov eax, [eax+0xc]
	mov [edx+0x8], eax
	test eax, eax
	jle Scr_CalcLocalVarsStatement_1360
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
Scr_CalcLocalVarsStatement_1410:
	mov edx, [edx]
	mov [ebp-0xfc], edx
	mov ecx, [ebp-0x58]
	mov ebx, [ecx+0xc]
	mov [ebp-0x188], ebx
	cmp [ebp-0xf8], ebx
	jl Scr_CalcLocalVarsStatement_1370
Scr_CalcLocalVarsStatement_1430:
	cmp ebx, 0x3f
	jg Scr_CalcLocalVarsStatement_1380
	mov eax, [ebp-0x188]
Scr_CalcLocalVarsStatement_1900:
	add eax, 0x1
	mov ecx, [ebp-0x58]
	mov [ecx+0xc], eax
Scr_CalcLocalVarsStatement_1450:
	cmp [ebp-0xf8], ebx
	jge Scr_CalcLocalVarsStatement_1390
	lea eax, [ebx*4]
	mov esi, [ebp-0x58]
	lea ecx, [eax+esi+0x14]
	lea edx, [eax+esi+0x18]
Scr_CalcLocalVarsStatement_1400:
	sub ebx, 0x1
	mov eax, [ecx]
	mov [edx], eax
	sub ecx, 0x4
	sub edx, 0x4
	cmp [ebp-0xf8], ebx
	jl Scr_CalcLocalVarsStatement_1400
Scr_CalcLocalVarsStatement_1390:
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
	jle Scr_CalcLocalVarsStatement_1360
	mov edx, [ebp-0x80]
	jmp Scr_CalcLocalVarsStatement_1410
Scr_CalcLocalVarsStatement_1370:
	mov esi, [ebp-0x7c]
	cmp [esi+0x18], edx
	jz Scr_CalcLocalVarsStatement_1420
	mov edx, [ebp-0x1d0]
	add edx, 0x8
	mov ecx, [ebp-0xf8]
	mov edi, ebx
	mov esi, [ebp-0x1cc]
	sub esi, [ebp-0x1c8]
Scr_CalcLocalVarsStatement_1440:
	add ecx, 0x1
	cmp ecx, edi
	jz Scr_CalcLocalVarsStatement_1430
	mov eax, [esi+edx]
	add edx, 0x4
	cmp eax, [ebp-0xfc]
	jnz Scr_CalcLocalVarsStatement_1440
Scr_CalcLocalVarsStatement_2080:
	test ecx, ecx
	js Scr_CalcLocalVarsStatement_1430
	mov ebx, ecx
	jmp Scr_CalcLocalVarsStatement_1450
Scr_CalcLocalVarsStatement_1360:
	cmp byte [ebp-0x111], 0x0
	jz Scr_CalcLocalVarsStatement_1460
	mov eax, [ebp-0x1c]
	mov [ebp-0xf4], eax
	test eax, eax
	jz Scr_CalcLocalVarsStatement_1460
	mov edx, [ebp-0x174]
	mov esi, [edx]
	test esi, esi
	jnz Scr_CalcLocalVarsStatement_1470
	test eax, eax
	jle Scr_CalcLocalVarsStatement_1480
	xor edx, edx
Scr_CalcLocalVarsStatement_1490:
	mov ecx, [ebp-0xf0]
	mov eax, [ecx+edx*4]
	mov dword [eax], 0x0
	add edx, 0x1
	cmp [ebp-0xf4], edx
	jnz Scr_CalcLocalVarsStatement_1490
Scr_CalcLocalVarsStatement_1480:
	mov esi, [ebp-0xf0]
	mov esi, [esi]
	mov [ebp-0x198], esi
	mov ebx, [esi+0xc]
	test ebx, ebx
	jle Scr_CalcLocalVarsStatement_1460
	mov dword [ebp-0xec], 0x0
	mov eax, [ebp-0xec]
Scr_CalcLocalVarsStatement_2020:
	mov edx, [ebp-0x198]
	mov ebx, [edx+eax*4+0x18]
	mov ecx, [ebp-0x174]
	mov esi, [ecx+0xc]
	test esi, esi
	jg Scr_CalcLocalVarsStatement_1500
Scr_CalcLocalVarsStatement_2000:
	cmp dword [ebp-0xf4], 0x1
	jle Scr_CalcLocalVarsStatement_1510
	mov dword [ebp-0x44], 0x1
	mov edx, [ebp-0x44]
Scr_CalcLocalVarsStatement_1550:
	mov ecx, [ebp-0xf0]
	mov eax, [ecx+edx*4]
	mov edi, [eax+0xc]
	test edi, edi
	jle Scr_CalcLocalVarsStatement_1520
	cmp ebx, [eax+0x18]
	jz Scr_CalcLocalVarsStatement_1530
	mov ecx, eax
	xor edx, edx
Scr_CalcLocalVarsStatement_1540:
	add edx, 0x1
	cmp edx, edi
	jz Scr_CalcLocalVarsStatement_1520
	mov eax, [ecx+0x1c]
	add ecx, 0x4
	cmp ebx, eax
	jnz Scr_CalcLocalVarsStatement_1540
	test edx, edx
	js Scr_CalcLocalVarsStatement_1520
Scr_CalcLocalVarsStatement_1530:
	add dword [ebp-0x44], 0x1
	mov eax, [ebp-0x44]
	cmp [ebp-0xf4], eax
	jz Scr_CalcLocalVarsStatement_1510
	mov edx, eax
	jmp Scr_CalcLocalVarsStatement_1550
Scr_CalcLocalVarsStatement_1460:
	mov edx, [ebp-0x174]
Scr_CalcLocalVarsStatement_1470:
	mov ecx, [edx]
	test ecx, ecx
	jnz Scr_CalcLocalVarsStatement_1560
	mov ecx, [ebp-0x118]
	mov ecx, [ecx]
	mov [ebp-0xe0], ecx
	mov eax, [edx+0xc]
	mov [ecx+0x8], eax
	test eax, eax
	jle Scr_CalcLocalVarsStatement_1560
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
Scr_CalcLocalVarsStatement_1610:
	mov edx, [edx]
	mov [ebp-0xe8], edx
	mov ecx, [ebp-0xe0]
	mov ebx, [ecx+0xc]
	mov [ebp-0x19c], ebx
	cmp [ebp-0xe4], ebx
	jl Scr_CalcLocalVarsStatement_1570
Scr_CalcLocalVarsStatement_1630:
	cmp ebx, 0x3f
	jg Scr_CalcLocalVarsStatement_1580
	mov eax, [ebp-0x19c]
Scr_CalcLocalVarsStatement_1920:
	add eax, 0x1
	mov ecx, [ebp-0xe0]
	mov [ecx+0xc], eax
Scr_CalcLocalVarsStatement_1650:
	cmp [ebp-0xe4], ebx
	jge Scr_CalcLocalVarsStatement_1590
	lea eax, [ebx*4]
	mov esi, [ebp-0xe0]
	lea ecx, [eax+esi+0x14]
	lea edx, [eax+esi+0x18]
Scr_CalcLocalVarsStatement_1600:
	sub ebx, 0x1
	mov eax, [ecx]
	mov [edx], eax
	sub ecx, 0x4
	sub edx, 0x4
	cmp [ebp-0xe4], ebx
	jl Scr_CalcLocalVarsStatement_1600
Scr_CalcLocalVarsStatement_1590:
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
	jge Scr_CalcLocalVarsStatement_1560
	mov edx, [ebp-0x88]
	jmp Scr_CalcLocalVarsStatement_1610
Scr_CalcLocalVarsStatement_1570:
	mov esi, [ebp-0x84]
	cmp edx, [esi+0x18]
	jz Scr_CalcLocalVarsStatement_1620
	mov edx, [ebp-0x1c4]
	add edx, 0x8
	mov ecx, [ebp-0xe4]
	mov edi, ebx
	mov esi, [ebp-0x1c0]
	sub esi, [ebp-0x1bc]
Scr_CalcLocalVarsStatement_1640:
	add ecx, 0x1
	cmp edi, ecx
	jz Scr_CalcLocalVarsStatement_1630
	mov eax, [esi+edx]
	add edx, 0x4
	cmp [ebp-0xe8], eax
	jnz Scr_CalcLocalVarsStatement_1640
Scr_CalcLocalVarsStatement_2070:
	test ecx, ecx
	js Scr_CalcLocalVarsStatement_1630
	mov ebx, ecx
	jmp Scr_CalcLocalVarsStatement_1650
Scr_CalcLocalVarsStatement_1560:
	mov eax, [ebp-0x110]
	mov [scrCompileGlob+0x3c], eax
	mov edx, [ebp-0x10c]
	mov [scrCompileGlob+0x40], edx
	mov ecx, [ebp-0x108]
	mov [scrCompileGlob+0x48], ecx
	mov esi, [ebp-0x104]
	mov [scrCompileGlob+0x4c], esi
	jmp Scr_CalcLocalVarsStatement_10
Scr_CalcLocalVarsStatement_720:
	mov dword [esp+0x4], _cstring_local_var_stack_
	mov dword [esp], 0x2
	call Com_Error
	mov edx, [ebp-0x174]
	mov edi, [edx+0xc]
	mov ecx, edx
	jmp Scr_CalcLocalVarsStatement_1660
Scr_CalcLocalVarsStatement_750:
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
	jz Scr_CalcLocalVarsStatement_1670
	mov [eax+0x8], esi
	mov byte [ebp-0xc5], 0x1
	jmp Scr_CalcLocalVarsStatement_760
Scr_CalcLocalVarsStatement_220:
	cmp ebx, [edx+0x18]
	jz Scr_CalcLocalVarsStatement_240
	xor ecx, ecx
Scr_CalcLocalVarsStatement_1690:
	add ecx, 0x1
	cmp esi, ecx
	jz Scr_CalcLocalVarsStatement_1680
	mov eax, [edx+0x1c]
	add edx, 0x4
	cmp ebx, eax
	jnz Scr_CalcLocalVarsStatement_1690
	test ecx, ecx
	js Scr_CalcLocalVarsStatement_1680
Scr_CalcLocalVarsStatement_240:
	mov esi, [ebp-0x17c]
Scr_CalcLocalVarsStatement_1950:
	add dword [ebp-0x160], 0x1
	mov ecx, [ebp-0x160]
	cmp [esi+0xc], ecx
	jle Scr_CalcLocalVarsStatement_210
	mov esi, ecx
	jmp Scr_CalcLocalVarsStatement_1700
Scr_CalcLocalVarsStatement_660:
	mov dword [esp+0x4], _cstring_local_var_stack_
	mov dword [esp], 0x2
	call Com_Error
	mov ecx, [ebp-0x54]
	mov ecx, [ecx+0xc]
	mov [ebp-0x184], ecx
	mov eax, ecx
	jmp Scr_CalcLocalVarsStatement_1710
Scr_CalcLocalVarsStatement_90:
	mov dword [esp+0x4], _cstring_local_var_stack_
	mov dword [esp], 0x2
	call Com_Error
	mov ecx, [ebp-0x5c]
	mov ecx, [ecx+0xc]
	mov [ebp-0x18c], ecx
	mov eax, ecx
	jmp Scr_CalcLocalVarsStatement_1720
Scr_CalcLocalVarsStatement_770:
	mov dword [esi], 0x0
	cmp dword [ebp-0xb8], 0x3ff
	jg Scr_CalcLocalVarsStatement_1730
Scr_CalcLocalVarsStatement_2360:
	mov ecx, [ebp-0xb8]
	mov eax, [ebp-0xb4]
	mov [eax+ecx*4], esi
	add ecx, 0x1
	mov [ebp-0xb8], ecx
	xor edi, edi
	jmp Scr_CalcLocalVarsStatement_1740
Scr_CalcLocalVarsStatement_840:
	mov eax, [ebp-0xb8]
	test eax, eax
	jz Scr_CalcLocalVarsStatement_740
	mov edx, [ebp-0x174]
	mov eax, [edx]
	test eax, eax
	jnz Scr_CalcLocalVarsStatement_740
	mov eax, [ebp-0xb8]
	test eax, eax
	jle Scr_CalcLocalVarsStatement_740
	mov dword [ebp-0xac], 0x0
	mov ecx, [ebp-0xac]
Scr_CalcLocalVarsStatement_1840:
	mov esi, [ebp-0xb4]
	mov ecx, [esi+ecx*4]
	mov [ebp-0x50], ecx
	mov esi, [ebp-0x174]
	mov eax, [esi+0xc]
	mov [ecx+0x8], eax
	test eax, eax
	jle Scr_CalcLocalVarsStatement_1750
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
Scr_CalcLocalVarsStatement_1810:
	mov ecx, [ecx]
	mov [ebp-0xb0], ecx
	mov eax, [ebp-0x50]
	mov esi, [eax+0xc]
	mov [ebp-0x180], esi
	cmp esi, [ebp-0x4c]
	jle Scr_CalcLocalVarsStatement_1760
	mov edx, [ebp-0x64]
	cmp [edx+0x18], ecx
	jz Scr_CalcLocalVarsStatement_1770
	mov edx, [ebp-0x1ac]
	add edx, 0x8
	mov ebx, [ebp-0x4c]
	mov edi, esi
	mov ecx, [ebp-0x1a8]
	sub ecx, [ebp-0x1a4]
Scr_CalcLocalVarsStatement_1780:
	add ebx, 0x1
	cmp ebx, edi
	jz Scr_CalcLocalVarsStatement_1760
	mov eax, [ecx+edx]
	add edx, 0x4
	cmp eax, [ebp-0xb0]
	jnz Scr_CalcLocalVarsStatement_1780
Scr_CalcLocalVarsStatement_1960:
	test ebx, ebx
	js Scr_CalcLocalVarsStatement_1760
Scr_CalcLocalVarsStatement_1830:
	cmp [ebp-0x4c], ebx
	jge Scr_CalcLocalVarsStatement_1790
	lea eax, [ebx*4]
	mov esi, [ebp-0x50]
	lea ecx, [eax+esi+0x14]
	lea edx, [eax+esi+0x18]
Scr_CalcLocalVarsStatement_1800:
	sub ebx, 0x1
	mov eax, [ecx]
	mov [edx], eax
	sub ecx, 0x4
	sub edx, 0x4
	cmp [ebp-0x4c], ebx
	jl Scr_CalcLocalVarsStatement_1800
Scr_CalcLocalVarsStatement_1790:
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
	jle Scr_CalcLocalVarsStatement_1750
	mov ecx, [ebp-0x68]
	jmp Scr_CalcLocalVarsStatement_1810
Scr_CalcLocalVarsStatement_1760:
	cmp esi, 0x3f
	jg Scr_CalcLocalVarsStatement_1820
	mov eax, [ebp-0x180]
Scr_CalcLocalVarsStatement_1850:
	add eax, 0x1
	mov edx, [ebp-0x50]
	mov [edx+0xc], eax
	mov ebx, esi
	jmp Scr_CalcLocalVarsStatement_1830
Scr_CalcLocalVarsStatement_1750:
	add dword [ebp-0xac], 0x1
	mov eax, [ebp-0xac]
	cmp [ebp-0xb8], eax
	jz Scr_CalcLocalVarsStatement_740
	mov ecx, eax
	jmp Scr_CalcLocalVarsStatement_1840
Scr_CalcLocalVarsStatement_1820:
	mov dword [esp+0x4], _cstring_local_var_stack_
	mov dword [esp], 0x2
	call Com_Error
	mov ecx, [ebp-0x50]
	mov ecx, [ecx+0xc]
	mov [ebp-0x180], ecx
	mov eax, ecx
	jmp Scr_CalcLocalVarsStatement_1850
Scr_CalcLocalVarsStatement_160:
	test ecx, ecx
	jnz Scr_CalcLocalVarsStatement_1860
	mov esi, [ebp-0x15c]
	mov [ebp+esi*4-0x2c], eax
	add esi, 0x1
	mov [ebp-0x15c], esi
	jmp Scr_CalcLocalVarsStatement_1860
Scr_CalcLocalVarsStatement_140:
	test ebx, ebx
	jz Scr_CalcLocalVarsStatement_1870
	mov dword [ebp-0x15c], 0x0
	jmp Scr_CalcLocalVarsStatement_1880
Scr_CalcLocalVarsStatement_20:
	mov esi, eax
	jmp Scr_CalcLocalVarsStatement_1890
Scr_CalcLocalVarsStatement_1380:
	mov dword [esp+0x4], _cstring_local_var_stack_
	mov dword [esp], 0x2
	call Com_Error
	mov edx, [ebp-0x58]
	mov edx, [edx+0xc]
	mov [ebp-0x188], edx
	mov eax, edx
	jmp Scr_CalcLocalVarsStatement_1900
Scr_CalcLocalVarsStatement_1280:
	mov dword [esp+0x4], _cstring_local_var_stack_
	mov dword [esp], 0x2
	call Com_Error
	mov edx, [ebp-0x120]
	mov edx, [edx+0xc]
	mov [ebp-0x178], edx
	mov eax, edx
	jmp Scr_CalcLocalVarsStatement_1910
Scr_CalcLocalVarsStatement_1580:
	mov dword [esp+0x4], _cstring_local_var_stack_
	mov dword [esp], 0x2
	call Com_Error
	mov edx, [ebp-0xe0]
	mov edx, [edx+0xc]
	mov [ebp-0x19c], edx
	mov eax, edx
	jmp Scr_CalcLocalVarsStatement_1920
Scr_CalcLocalVarsStatement_1180:
	mov ecx, [ebp-0xd4]
	jmp Scr_CalcLocalVarsStatement_1930
Scr_CalcLocalVarsStatement_1220:
	mov ecx, [ebp-0x164]
	jmp Scr_CalcLocalVarsStatement_1940
Scr_CalcLocalVarsStatement_230:
	mov eax, [ebp-0x174]
	mov [eax+esi*4+0x18], ebx
	add dword [eax+0xc], 0x1
	mov edx, [ebp-0x2c]
	mov [ebp-0x17c], edx
	mov esi, edx
	jmp Scr_CalcLocalVarsStatement_1950
Scr_CalcLocalVarsStatement_1770:
	mov ebx, [ebp-0x4c]
	jmp Scr_CalcLocalVarsStatement_1960
Scr_CalcLocalVarsStatement_870:
	cmp ebx, [ecx+0x18]
	jz Scr_CalcLocalVarsStatement_890
	mov edx, ecx
	xor ecx, ecx
Scr_CalcLocalVarsStatement_1980:
	add ecx, 0x1
	cmp esi, ecx
	jz Scr_CalcLocalVarsStatement_1970
	mov eax, [edx+0x1c]
	add edx, 0x4
	cmp ebx, eax
	jnz Scr_CalcLocalVarsStatement_1980
	test ecx, ecx
	js Scr_CalcLocalVarsStatement_1970
Scr_CalcLocalVarsStatement_890:
	mov eax, [ebp-0x194]
Scr_CalcLocalVarsStatement_2320:
	add dword [ebp-0xbc], 0x1
	mov esi, [ebp-0xbc]
	cmp esi, [eax+0xc]
	jge Scr_CalcLocalVarsStatement_840
	mov eax, esi
	jmp Scr_CalcLocalVarsStatement_1990
Scr_CalcLocalVarsStatement_1500:
	cmp ebx, [ecx+0x18]
	jz Scr_CalcLocalVarsStatement_1520
	mov edx, ecx
	xor ecx, ecx
Scr_CalcLocalVarsStatement_2010:
	add ecx, 0x1
	cmp ecx, esi
	jz Scr_CalcLocalVarsStatement_2000
	mov eax, [edx+0x1c]
	add edx, 0x4
	cmp ebx, eax
	jnz Scr_CalcLocalVarsStatement_2010
	test ecx, ecx
	js Scr_CalcLocalVarsStatement_2000
Scr_CalcLocalVarsStatement_1520:
	mov eax, [ebp-0x198]
Scr_CalcLocalVarsStatement_2330:
	add dword [ebp-0xec], 0x1
	mov esi, [ebp-0xec]
	cmp [eax+0xc], esi
	jle Scr_CalcLocalVarsStatement_1460
	mov eax, esi
	jmp Scr_CalcLocalVarsStatement_2020
Scr_CalcLocalVarsStatement_1100:
	cmp ebx, [ecx+0x18]
	jz Scr_CalcLocalVarsStatement_1120
	mov edx, ecx
	xor ecx, ecx
Scr_CalcLocalVarsStatement_2040:
	add ecx, 0x1
	cmp esi, ecx
	jz Scr_CalcLocalVarsStatement_2030
	mov eax, [edx+0x1c]
	add edx, 0x4
	cmp ebx, eax
	jnz Scr_CalcLocalVarsStatement_2040
	test ecx, ecx
	js Scr_CalcLocalVarsStatement_2030
Scr_CalcLocalVarsStatement_1120:
	mov eax, [ebp-0x1a0]
Scr_CalcLocalVarsStatement_2340:
	add dword [ebp-0x12c], 0x1
	mov esi, [ebp-0x12c]
	cmp esi, [eax+0xc]
	jge Scr_CalcLocalVarsStatement_1060
	mov eax, esi
	jmp Scr_CalcLocalVarsStatement_2050
Scr_CalcLocalVarsStatement_1320:
	mov ecx, [ebp-0x124]
	jmp Scr_CalcLocalVarsStatement_2060
Scr_CalcLocalVarsStatement_1620:
	mov ecx, [ebp-0xe4]
	jmp Scr_CalcLocalVarsStatement_2070
Scr_CalcLocalVarsStatement_1420:
	mov ecx, [ebp-0xf8]
	jmp Scr_CalcLocalVarsStatement_2080
Scr_CalcLocalVarsStatement_300:
	mov dword [esp], 0x1000
	call Hunk_AllocateTempMemoryHigh
	mov [ebp-0x130], eax
	lea eax, [ebp-0x1c]
	mov [scrCompileGlob+0x40], eax
	jmp Scr_CalcLocalVarsStatement_2090
Scr_CalcLocalVarsStatement_430:
	mov dword [esp], 0x1000
	call Hunk_AllocateTempMemoryHigh
	mov [ebp-0xf0], eax
	lea eax, [ebp-0x1c]
	mov [scrCompileGlob+0x40], eax
	jmp Scr_CalcLocalVarsStatement_2100
Scr_CalcLocalVarsStatement_420:
	mov eax, [edi+0x4]
	mov edx, [eax]
	cmp edx, 0x6
	jz Scr_CalcLocalVarsStatement_2110
	cmp edx, 0x31
	jz Scr_CalcLocalVarsStatement_2120
Scr_CalcLocalVarsStatement_2480:
	mov byte [ebp-0x111], 0x0
	jmp Scr_CalcLocalVarsStatement_2130
Scr_CalcLocalVarsStatement_280:
	mov esi, [esi+0x4]
	lea edx, [ebp-0x2c]
	mov eax, esi
	call EvalPrimitiveExpression
Scr_CalcLocalVarsStatement_2350:
	test al, al
	jz Scr_CalcLocalVarsStatement_2140
	mov edx, [ebp-0x28]
	lea eax, [edx-0x5]
	cmp eax, 0x1
	jbe Scr_CalcLocalVarsStatement_2150
Scr_CalcLocalVarsStatement_2600:
	mov byte [ebp-0x145], 0x0
Scr_CalcLocalVarsStatement_2590:
	mov eax, [ebp-0x2c]
	mov [esp+0x4], eax
	mov [esp], edx
	call RemoveRefToValue
	jmp Scr_CalcLocalVarsStatement_2160
Scr_CalcLocalVarsStatement_50:
	mov ebx, [esi+0x4]
	mov eax, [ebp-0x174]
	mov edx, [eax]
	test edx, edx
	jnz Scr_CalcLocalVarsStatement_10
	mov edi, [eax+0xc]
	test edi, edi
	jle Scr_CalcLocalVarsStatement_2170
	mov esi, [ebp-0x174]
	cmp [esi+0x18], ebx
	jz Scr_CalcLocalVarsStatement_10
	mov ecx, esi
	xor edx, edx
Scr_CalcLocalVarsStatement_2180:
	add edx, 0x1
	cmp edi, edx
	jz Scr_CalcLocalVarsStatement_2170
	mov eax, [ecx+0x1c]
	add ecx, 0x4
	cmp eax, ebx
	jnz Scr_CalcLocalVarsStatement_2180
	jmp Scr_CalcLocalVarsStatement_10
Scr_CalcLocalVarsStatement_180:
	mov eax, edx
Scr_CalcLocalVarsStatement_2310:
	mov esi, [eax]
	test esi, esi
	jnz Scr_CalcLocalVarsStatement_10
	mov ebx, [ebp-0x15c]
	test ebx, ebx
	jle Scr_CalcLocalVarsStatement_10
	mov dword [ebp-0x150], 0x0
Scr_CalcLocalVarsStatement_2280:
	mov edx, [ebp-0x150]
	mov edx, [ebp+edx*4-0x2c]
	mov [ebp-0x60], edx
	mov ecx, [ebp-0x174]
	mov eax, [ecx+0xc]
	mov [edx+0x8], eax
	test eax, eax
	jle Scr_CalcLocalVarsStatement_2190
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
	jl Scr_CalcLocalVarsStatement_2200
Scr_CalcLocalVarsStatement_2240:
	cmp ebx, 0x3f
	jg Scr_CalcLocalVarsStatement_2210
	mov eax, [ebp-0x190]
Scr_CalcLocalVarsStatement_2290:
	add eax, 0x1
	mov ecx, [ebp-0x60]
	mov [ecx+0xc], eax
Scr_CalcLocalVarsStatement_2270:
	cmp [ebp-0x154], ebx
	jge Scr_CalcLocalVarsStatement_2220
	lea eax, [ebx*4]
	mov esi, [ebp-0x60]
	lea ecx, [eax+esi+0x14]
	lea edx, [eax+esi+0x18]
Scr_CalcLocalVarsStatement_2230:
	sub ebx, 0x1
	mov eax, [ecx]
	mov [edx], eax
	sub ecx, 0x4
	sub edx, 0x4
	cmp [ebp-0x154], ebx
	jl Scr_CalcLocalVarsStatement_2230
Scr_CalcLocalVarsStatement_2220:
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
	jge Scr_CalcLocalVarsStatement_2190
	mov edx, [ebp-0xa0]
	mov edx, [edx]
	mov [ebp-0x158], edx
	mov ecx, [ebp-0x60]
	mov ebx, [ecx+0xc]
	mov [ebp-0x190], ebx
	cmp [ebp-0x154], ebx
	jge Scr_CalcLocalVarsStatement_2240
Scr_CalcLocalVarsStatement_2200:
	mov esi, [ebp-0x9c]
	cmp edx, [esi+0x18]
	jz Scr_CalcLocalVarsStatement_2250
	mov edx, [ebp-0x1f0]
	add edx, 0x8
	mov ecx, [ebp-0x154]
	mov edi, ebx
	mov esi, [ebp-0x1ec]
	sub esi, [ebp-0x1e8]
Scr_CalcLocalVarsStatement_2260:
	add ecx, 0x1
	cmp edi, ecx
	jz Scr_CalcLocalVarsStatement_2240
	mov eax, [esi+edx]
	add edx, 0x4
	cmp [ebp-0x158], eax
	jnz Scr_CalcLocalVarsStatement_2260
Scr_CalcLocalVarsStatement_2300:
	test ecx, ecx
	js Scr_CalcLocalVarsStatement_2240
	mov ebx, ecx
	jmp Scr_CalcLocalVarsStatement_2270
Scr_CalcLocalVarsStatement_2190:
	add dword [ebp-0x150], 0x1
	mov eax, [ebp-0x150]
	cmp [ebp-0x15c], eax
	jnz Scr_CalcLocalVarsStatement_2280
	jmp Scr_CalcLocalVarsStatement_10
Scr_CalcLocalVarsStatement_2210:
	mov dword [esp+0x4], _cstring_local_var_stack_
	mov dword [esp], 0x2
	call Com_Error
	mov edx, [ebp-0x60]
	mov edx, [edx+0xc]
	mov [ebp-0x190], edx
	mov eax, edx
	jmp Scr_CalcLocalVarsStatement_2290
Scr_CalcLocalVarsStatement_2250:
	mov ecx, [ebp-0x154]
	jmp Scr_CalcLocalVarsStatement_2300
Scr_CalcLocalVarsStatement_210:
	mov eax, [ebp-0x174]
	jmp Scr_CalcLocalVarsStatement_2310
Scr_CalcLocalVarsStatement_1870:
	mov [ebp-0x2c], eax
	mov dword [ebp-0x15c], 0x1
	jmp Scr_CalcLocalVarsStatement_1880
Scr_CalcLocalVarsStatement_880:
	mov edx, [ebp-0x174]
	mov [edx+esi*4+0x18], ebx
	add dword [edx+0xc], 0x1
	mov ecx, [ebp-0xc0]
	mov ecx, [ecx]
	mov [ebp-0x194], ecx
	mov eax, ecx
	jmp Scr_CalcLocalVarsStatement_2320
Scr_CalcLocalVarsStatement_1670:
	mov [eax+0xc], esi
	jmp Scr_CalcLocalVarsStatement_760
Scr_CalcLocalVarsStatement_1510:
	mov edx, [ebp-0x174]
	mov [edx+esi*4+0x18], ebx
	add dword [edx+0xc], 0x1
	mov ecx, [ebp-0xf0]
	mov ecx, [ecx]
	mov [ebp-0x198], ecx
	mov eax, ecx
	jmp Scr_CalcLocalVarsStatement_2330
Scr_CalcLocalVarsStatement_940:
	mov esi, [ebp-0x174]
	jmp Scr_CalcLocalVarsStatement_930
Scr_CalcLocalVarsStatement_30:
	mov esi, [ebp-0x174]
	jmp Scr_CalcLocalVarsStatement_1890
Scr_CalcLocalVarsStatement_1110:
	mov edx, [ebp-0x174]
	mov [edx+esi*4+0x18], ebx
	add dword [edx+0xc], 0x1
	mov ecx, [ebp-0x130]
	mov ecx, [ecx]
	mov [ebp-0x1a0], ecx
	mov eax, ecx
	jmp Scr_CalcLocalVarsStatement_2340
Scr_CalcLocalVarsStatement_290:
	mov ebx, [esi+0x10]
	mov ecx, [esi+0xc]
	mov edx, [esi+0x8]
	mov esi, [esi+0x4]
	lea eax, [ebp-0x2c]
	mov [esp+0x4], eax
	mov [esp], ebx
	mov eax, esi
	call EvalBinaryOperatorExpression
	jmp Scr_CalcLocalVarsStatement_2350
Scr_CalcLocalVarsStatement_1730:
	mov dword [esp+0x4], _cstring_max_switch_cases
	mov dword [esp], 0x2
	call Com_Error
	jmp Scr_CalcLocalVarsStatement_2360
Scr_CalcLocalVarsStatement_820:
	mov dword [esp+0x4], _cstring_max_switch_cases
	mov dword [esp], 0x2
	call Com_Error
	jmp Scr_CalcLocalVarsStatement_2370
Scr_CalcLocalVarsStatement_570:
	mov ecx, [ebp-0x174]
	cmp ebx, [ecx+0x18]
	jz Scr_CalcLocalVarsStatement_10
	xor edx, edx
Scr_CalcLocalVarsStatement_2380:
	add edx, 0x1
	cmp edx, edi
	jz Scr_CalcLocalVarsStatement_2170
	mov eax, [ecx+0x1c]
	add ecx, 0x4
	cmp ebx, eax
	jnz Scr_CalcLocalVarsStatement_2380
	jmp Scr_CalcLocalVarsStatement_10
Scr_CalcLocalVarsStatement_590:
	mov edx, [ebp-0x174]
	cmp ebx, [edx+0x18]
	jz Scr_CalcLocalVarsStatement_10
	mov ecx, edx
	xor edx, edx
Scr_CalcLocalVarsStatement_2400:
	add edx, 0x1
	cmp edx, edi
	jz Scr_CalcLocalVarsStatement_2390
	mov eax, [ecx+0x1c]
	add ecx, 0x4
	cmp ebx, eax
	jnz Scr_CalcLocalVarsStatement_2400
	jmp Scr_CalcLocalVarsStatement_10
Scr_CalcLocalVarsStatement_60:
	mov dword [esp], 0x118
	call Hunk_AllocateTempMemoryHigh
	mov [ebx+0x10], eax
	jmp Scr_CalcLocalVarsStatement_2410
Scr_CalcLocalVarsStatement_310:
	mov dword [esp], 0x118
	call Hunk_AllocateTempMemoryHigh
	mov edx, [ebp-0x14c]
	mov [edx], eax
	mov ecx, [ebp-0x14c]
	jmp Scr_CalcLocalVarsStatement_2420
Scr_CalcLocalVarsStatement_620:
	mov dword [esp], 0x118
	call Hunk_AllocateTempMemoryHigh
	mov [ebx+0xc], eax
	jmp Scr_CalcLocalVarsStatement_2430
Scr_CalcLocalVarsStatement_150:
	mov dword [esp], 0x118
	call Hunk_AllocateTempMemoryHigh
	mov [esi], eax
	jmp Scr_CalcLocalVarsStatement_2440
Scr_CalcLocalVarsStatement_130:
	mov dword [esp], 0x118
	call Hunk_AllocateTempMemoryHigh
	mov [ebx+0x18], eax
	jmp Scr_CalcLocalVarsStatement_2450
Scr_CalcLocalVarsStatement_450:
	mov dword [esp], 0x118
	call Hunk_AllocateTempMemoryHigh
	mov edx, [ebp-0x11c]
	mov [edx], eax
	mov ecx, [ebp-0x11c]
	jmp Scr_CalcLocalVarsStatement_2460
Scr_CalcLocalVarsStatement_440:
	mov dword [esp], 0x118
	call Hunk_AllocateTempMemoryHigh
	mov ecx, [ebp-0x118]
	mov [ecx], eax
	mov edx, [ebp-0x118]
	jmp Scr_CalcLocalVarsStatement_2470
Scr_CalcLocalVarsStatement_2110:
	mov esi, [eax+0x4]
	lea edx, [ebp-0x2c]
	mov eax, esi
	call EvalPrimitiveExpression
Scr_CalcLocalVarsStatement_2550:
	test al, al
	jz Scr_CalcLocalVarsStatement_2480
	mov edx, [ebp-0x28]
	lea eax, [edx-0x5]
	cmp eax, 0x1
	jbe Scr_CalcLocalVarsStatement_2490
Scr_CalcLocalVarsStatement_2630:
	mov byte [ebp-0x111], 0x0
Scr_CalcLocalVarsStatement_2620:
	mov eax, [ebp-0x2c]
	mov [esp+0x4], eax
	mov [esp], edx
	call RemoveRefToValue
	jmp Scr_CalcLocalVarsStatement_2130
Scr_CalcLocalVarsStatement_950:
	mov dword [esp+0x4], _cstring_max_switch_cases
	mov dword [esp], 0x2
	call Com_Error
	mov eax, [scrCompileGlob+0x40]
	jmp Scr_CalcLocalVarsStatement_2500
Scr_CalcLocalVarsStatement_330:
	mov dword [esp+0x4], _cstring_max_switch_cases
	mov dword [esp], 0x2
	call Com_Error
	mov eax, [scrCompileGlob+0x4c]
	jmp Scr_CalcLocalVarsStatement_2510
Scr_CalcLocalVarsStatement_470:
	mov dword [esp+0x4], _cstring_max_switch_cases
	mov dword [esp], 0x2
	call Com_Error
	mov eax, [scrCompileGlob+0x4c]
	jmp Scr_CalcLocalVarsStatement_2520
Scr_CalcLocalVarsStatement_40:
	mov dword [esp+0x4], _cstring_max_switch_cases
	mov dword [esp], 0x2
	call Com_Error
	mov eax, [scrCompileGlob+0x4c]
	jmp Scr_CalcLocalVarsStatement_2530
Scr_CalcLocalVarsStatement_580:
	mov dword [esp+0x4], _cstring_local_var_stack_
	mov dword [esp], 0x2
	call Com_Error
	mov edx, [ebp-0x174]
	mov edi, [edx+0xc]
	mov ecx, edx
	jmp Scr_CalcLocalVarsStatement_2540
Scr_CalcLocalVarsStatement_2120:
	mov ebx, [eax+0x10]
	mov ecx, [eax+0xc]
	mov edx, [eax+0x8]
	mov esi, [eax+0x4]
	lea eax, [ebp-0x2c]
	mov [esp+0x4], eax
	mov [esp], ebx
	mov eax, esi
	call EvalBinaryOperatorExpression
	jmp Scr_CalcLocalVarsStatement_2550
Scr_CalcLocalVarsStatement_600:
	mov dword [esp+0x4], _cstring_local_var_stack_
	mov dword [esp], 0x2
	call Com_Error
	mov eax, [ebp-0x174]
	mov edi, [eax+0xc]
	mov edx, eax
	jmp Scr_CalcLocalVarsStatement_2560
Scr_CalcLocalVarsStatement_810:
	mov dword [esp+0x4], _cstring_max_switch_cases
	mov dword [esp], 0x2
	call Com_Error
	mov eax, [scrCompileGlob+0x40]
	jmp Scr_CalcLocalVarsStatement_2570
Scr_CalcLocalVarsStatement_2150:
	lea eax, [ebp-0x2c]
	mov [esp], eax
	call Scr_CastBool
	mov ecx, [ebp-0x2c]
	test ecx, ecx
	jz Scr_CalcLocalVarsStatement_2580
	mov byte [ebp-0x145], 0x1
	mov edx, [ebp-0x28]
	jmp Scr_CalcLocalVarsStatement_2590
Scr_CalcLocalVarsStatement_2580:
	mov edx, [ebp-0x28]
	jmp Scr_CalcLocalVarsStatement_2600
Scr_CalcLocalVarsStatement_2490:
	lea eax, [ebp-0x2c]
	mov [esp], eax
	call Scr_CastBool
	mov eax, [ebp-0x2c]
	test eax, eax
	jz Scr_CalcLocalVarsStatement_2610
	mov byte [ebp-0x111], 0x1
	mov edx, [ebp-0x28]
	jmp Scr_CalcLocalVarsStatement_2620
Scr_CalcLocalVarsStatement_2610:
	mov edx, [ebp-0x28]
	jmp Scr_CalcLocalVarsStatement_2630
	nop
	
	
Scr_CalcLocalVarsStatement_jumptab_0:
	dd Scr_CalcLocalVarsStatement_10
	dd Scr_CalcLocalVarsStatement_10
	dd Scr_CalcLocalVarsStatement_2640
	dd Scr_CalcLocalVarsStatement_10
	dd Scr_CalcLocalVarsStatement_10
	dd Scr_CalcLocalVarsStatement_10
	dd Scr_CalcLocalVarsStatement_10
	dd Scr_CalcLocalVarsStatement_10
	dd Scr_CalcLocalVarsStatement_10
	dd Scr_CalcLocalVarsStatement_10
	dd Scr_CalcLocalVarsStatement_10
	dd Scr_CalcLocalVarsStatement_10
	dd Scr_CalcLocalVarsStatement_10
	dd Scr_CalcLocalVarsStatement_10
	dd Scr_CalcLocalVarsStatement_10
	dd Scr_CalcLocalVarsStatement_10
	dd Scr_CalcLocalVarsStatement_10
	dd Scr_CalcLocalVarsStatement_10
	dd Scr_CalcLocalVarsStatement_10
	dd Scr_CalcLocalVarsStatement_10
	dd Scr_CalcLocalVarsStatement_10
	dd Scr_CalcLocalVarsStatement_10
	dd Scr_CalcLocalVarsStatement_10
	dd Scr_CalcLocalVarsStatement_10
	dd Scr_CalcLocalVarsStatement_10
	dd Scr_CalcLocalVarsStatement_10
	dd Scr_CalcLocalVarsStatement_10
	dd Scr_CalcLocalVarsStatement_2650
	dd Scr_CalcLocalVarsStatement_2650
	dd Scr_CalcLocalVarsStatement_10
	dd Scr_CalcLocalVarsStatement_10
	dd Scr_CalcLocalVarsStatement_10
	dd Scr_CalcLocalVarsStatement_10
	dd Scr_CalcLocalVarsStatement_10
	dd Scr_CalcLocalVarsStatement_10
	dd Scr_CalcLocalVarsStatement_10
	dd Scr_CalcLocalVarsStatement_10
	dd Scr_CalcLocalVarsStatement_2660
	dd Scr_CalcLocalVarsStatement_2670
	dd Scr_CalcLocalVarsStatement_2680
	dd Scr_CalcLocalVarsStatement_2690
	dd Scr_CalcLocalVarsStatement_2700
	dd Scr_CalcLocalVarsStatement_2700
	dd Scr_CalcLocalVarsStatement_2710
	dd Scr_CalcLocalVarsStatement_2720
	dd Scr_CalcLocalVarsStatement_2730
	dd Scr_CalcLocalVarsStatement_10
	dd Scr_CalcLocalVarsStatement_10
	dd Scr_CalcLocalVarsStatement_10
	dd Scr_CalcLocalVarsStatement_10
	dd Scr_CalcLocalVarsStatement_10
	dd Scr_CalcLocalVarsStatement_10
	dd Scr_CalcLocalVarsStatement_10
	dd Scr_CalcLocalVarsStatement_10
	dd Scr_CalcLocalVarsStatement_10
	dd Scr_CalcLocalVarsStatement_2740
	dd Scr_CalcLocalVarsStatement_10
	dd Scr_CalcLocalVarsStatement_10
	dd Scr_CalcLocalVarsStatement_10
	dd Scr_CalcLocalVarsStatement_10
	dd Scr_CalcLocalVarsStatement_2750
	dd Scr_CalcLocalVarsStatement_10
	dd Scr_CalcLocalVarsStatement_10
	dd Scr_CalcLocalVarsStatement_2760
	dd Scr_CalcLocalVarsStatement_2770


;EmitValue(VariableCompileValue*)
EmitValue:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ecx, eax
	cmp dword [eax+0x4], 0x6
	ja EmitValue_10
	mov eax, [eax+0x4]
	jmp dword [eax*4+EmitValue_jumptab_0]
EmitValue_90:
	mov esi, [ecx+0x8]
	mov ebx, [ecx]
	xor ecx, ecx
	mov edx, 0x1
	mov eax, 0xb
EmitValue_50:
	call EmitOpcode
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call AddOpcodePos
	mov dword [esp], 0x2
	call TempMallocAlign
	mov [scrCompileGlob], eax
	mov [eax], bx
	cmp dword [gScrCompilePub+0x20024], 0x2
	jz EmitValue_20
	cmp byte [scrCompileGlob+0x1c], 0x0
	jnz EmitValue_30
EmitValue_60:
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	call SL_TransferRefToUser
EmitValue_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
EmitValue_70:
	mov esi, [ecx+0x8]
	xor ecx, ecx
	mov edx, 0x1
	mov eax, 0x2
	call EmitOpcode
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call AddOpcodePos
	jmp EmitValue_10
EmitValue_120:
	mov esi, [ecx+0x8]
	mov edx, esi
	mov eax, [ecx]
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp EmitGetInteger
EmitValue_110:
	mov esi, [ecx+0x8]
	mov ebx, [ecx]
	xor ecx, ecx
	mov edx, 0x1
	mov eax, 0x9
	call EmitOpcode
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call AddOpcodePos
	mov dword [esp], 0x4
	call TempMallocAlignStrict
	mov [scrCompileGlob], eax
	mov [eax], ebx
	jmp EmitValue_10
EmitValue_100:
	mov esi, [ecx+0x8]
	mov edi, [ecx]
	xor ecx, ecx
	mov edx, 0x1
	mov eax, 0xc
	call EmitOpcode
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call AddOpcodePos
	mov esi, 0x1
EmitValue_40:
	mov ebx, [edi+esi*4-0x4]
	mov dword [esp], 0x4
	call TempMallocAlignStrict
	mov [scrCompileGlob], eax
	mov [eax], ebx
	add esi, 0x1
	cmp esi, 0x4
	jnz EmitValue_40
	mov [esp], edi
	call RemoveRefToVector
	jmp EmitValue_10
EmitValue_80:
	mov esi, [ecx+0x8]
	mov ebx, [ecx]
	xor ecx, ecx
	mov edx, 0x1
	mov eax, 0xa
	jmp EmitValue_50
EmitValue_20:
	cmp byte [scrCompileGlob+0x1c], 0x0
	jnz EmitValue_10
	mov [esp], ebx
	call SL_RemoveRefToString
	jmp EmitValue_10
EmitValue_30:
	mov [esp], ebx
	call SL_AddRefToString
	jmp EmitValue_60
	nop
	
	
EmitValue_jumptab_0:
	dd EmitValue_70
	dd EmitValue_10
	dd EmitValue_80
	dd EmitValue_90
	dd EmitValue_100
	dd EmitValue_110
	dd EmitValue_120


;EmitOpcode(unsigned int, int, int)
EmitOpcode:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov [ebp-0x1c], eax
	mov [ebp-0x20], edx
	mov [ebp-0x24], ecx
	mov edi, [gScrCompilePub]
	cmp edi, 0x0
	jz EmitOpcode_10
	mov dword [gScrCompilePub], 0x0
	jg EmitOpcode_20
EmitOpcode_10:
	mov eax, [scrCompileGlob+0x10]
	test eax, eax
	jz EmitOpcode_30
	cmp dword [ebp-0x24], 0x2
	jz EmitOpcode_30
	cmp dword [ebp-0x24], 0x3
	jz EmitOpcode_30
	xor edx, edx
	jmp EmitOpcode_40
EmitOpcode_30:
	mov edx, 0x1
EmitOpcode_40:
	mov [gScrCompilePub+0x20021], dl
	mov ecx, [ebp-0x20]
	lea edx, [eax+ecx]
	mov [scrCompileGlob+0x10], edx
	cmp edx, [scrCompileGlob+0x14]
	mov eax, [scrCompileGlob+0x14]
	cmovg eax, edx
	mov [scrCompileGlob+0x14], eax
	mov ecx, [ebp-0x24]
	test ecx, ecx
	jz EmitOpcode_50
	cmp [scrCompileGlob+0x18], edx
	mov eax, [scrCompileGlob+0x18]
	cmovl eax, edx
	mov [scrCompileGlob+0x18], eax
EmitOpcode_50:
	mov ecx, gScrVarPub
	mov edx, [ecx+0x38]
	mov eax, edx
	shl eax, 0x5
	sub eax, edx
	add eax, [ebp-0x1c]
	mov [ecx+0x38], eax
	mov edx, [gScrCompilePub+0x20028]
	test edx, edx
	jz EmitOpcode_60
	mov [scrCompileGlob], edx
	mov eax, [ebp-0x1c]
	sub eax, 0x20
	cmp eax, 0x3e
	jbe EmitOpcode_70
EmitOpcode_60:
	mov [scrCompileGlob+0x4], edx
	mov dword [esp], 0x1
	call TempMalloc
	mov [gScrCompilePub+0x20028], eax
	mov [scrCompileGlob], eax
	movzx edx, byte [ebp-0x1c]
	mov [eax], dl
EmitOpcode_100:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
EmitOpcode_70:
	jmp dword [eax*4+EmitOpcode_jumptab_0]
EmitOpcode_20:
	xor esi, esi
	mov ebx, scrCompileGlob+0x58
EmitOpcode_80:
	mov eax, ebx
	call EmitValue
	add esi, 0x1
	add ebx, 0xc
	cmp edi, esi
	jnz EmitOpcode_80
	jmp EmitOpcode_10
EmitOpcode_210:
	movzx eax, byte [edx]
	cmp al, 0x1e
	jz EmitOpcode_90
	movzx eax, al
	lea ebx, [eax-0x18]
	cmp ebx, 0x5
	ja EmitOpcode_60
	call RemoveOpcodePos
	mov eax, [gScrCompilePub+0x20028]
	mov byte [eax], 0x1f
	mov dword [esp], 0x1
	call TempMalloc
	mov [scrCompileGlob], eax
	mov [eax], bl
	jmp EmitOpcode_100
EmitOpcode_310:
	cmp byte [edx], 0x5c
	jnz EmitOpcode_60
	call RemoveOpcodePos
	mov eax, [gScrCompilePub+0x20028]
	mov byte [eax], 0x5f
	jmp EmitOpcode_100
EmitOpcode_300:
	movzx eax, byte [edx]
	cmp al, 0x1e
	jz EmitOpcode_110
	movzx eax, al
	lea ebx, [eax-0x18]
	cmp ebx, 0x5
	ja EmitOpcode_60
	mov byte [edx], 0x5a
	mov dword [esp], 0x1
	call TempMalloc
	mov [scrCompileGlob], eax
	mov [eax], bl
	jmp EmitOpcode_100
EmitOpcode_290:
	cmp byte [edx], 0xf
	jnz EmitOpcode_60
	call RemoveOpcodePos
	mov eax, [gScrCompilePub+0x20028]
	mov byte [eax], 0x54
	jmp EmitOpcode_100
EmitOpcode_250:
	cmp byte [edx], 0x16
	jnz EmitOpcode_60
	mov byte [edx], 0x30
	jmp EmitOpcode_100
EmitOpcode_240:
	movzx eax, byte [edx]
	cmp al, 0x26
	jz EmitOpcode_120
	cmp al, 0xd
	jz EmitOpcode_130
	cmp al, 0xe
	jnz EmitOpcode_60
	mov byte [edx], 0x2c
	jmp EmitOpcode_100
EmitOpcode_230:
	movzx eax, byte [edx]
	cmp al, 0x26
	jz EmitOpcode_140
	cmp al, 0xd
	jz EmitOpcode_150
	cmp al, 0xe
	jnz EmitOpcode_60
	mov byte [edx], 0x28
	jmp EmitOpcode_100
EmitOpcode_220:
	movzx eax, byte [edx]
	cmp al, 0x37
	jz EmitOpcode_160
	cmp al, 0x36
	jnz EmitOpcode_60
	call RemoveOpcodePos
	mov eax, [gScrCompilePub+0x20028]
	mov byte [eax], 0x21
	jmp EmitOpcode_100
EmitOpcode_270:
	cmp byte [edx], 0x4e
	jnz EmitOpcode_60
	mov byte [edx], 0x4f
	jmp EmitOpcode_100
EmitOpcode_280:
	cmp byte [edx], 0xf
	jnz EmitOpcode_60
	call RemoveOpcodePos
	mov eax, [gScrCompilePub+0x20028]
	mov byte [eax], 0x50
	mov eax, [scrCompileGlob+0x4]
	cmp byte [eax], 0x4e
	jnz EmitOpcode_100
	mov eax, [gScrCompilePub+0x20028]
	mov [esp], eax
	call TempMemorySetPos
	mov edx, [gScrCompilePub+0x20028]
	lea eax, [edx-0x1]
	mov [gScrCompilePub+0x20028], eax
	mov dword [scrCompileGlob+0x4], 0x0
	mov [scrCompileGlob], eax
	mov byte [edx-0x1], 0x4f
	jmp EmitOpcode_100
EmitOpcode_260:
	movzx eax, byte [edx]
	cmp al, 0x37
	jz EmitOpcode_170
	cmp al, 0x36
	jz EmitOpcode_180
	cmp al, 0x2d
	jz EmitOpcode_190
	cmp al, 0x2b
	jz EmitOpcode_200
	cmp al, 0x2c
	jnz EmitOpcode_60
	call RemoveOpcodePos
	mov eax, [gScrCompilePub+0x20028]
	mov byte [eax], 0x3a
	jmp EmitOpcode_100
EmitOpcode_110:
	mov byte [edx], 0x5a
	jmp EmitOpcode_100
EmitOpcode_120:
	mov byte [edx], 0x2d
	jmp EmitOpcode_100
EmitOpcode_140:
	mov byte [edx], 0x29
	jmp EmitOpcode_100
EmitOpcode_130:
	mov byte [edx], 0x2b
	jmp EmitOpcode_100
EmitOpcode_150:
	mov byte [edx], 0x27
	jmp EmitOpcode_100
EmitOpcode_160:
	call RemoveOpcodePos
	mov eax, [gScrCompilePub+0x20028]
	mov byte [eax], 0x22
	jmp EmitOpcode_100
EmitOpcode_90:
	call RemoveOpcodePos
	mov eax, [gScrCompilePub+0x20028]
	mov byte [eax], 0x1f
	jmp EmitOpcode_100
EmitOpcode_170:
	call RemoveOpcodePos
	mov eax, [gScrCompilePub+0x20028]
	mov byte [eax], 0x3d
	jmp EmitOpcode_100
EmitOpcode_180:
	call RemoveOpcodePos
	mov eax, [gScrCompilePub+0x20028]
	mov byte [eax], 0x3c
	jmp EmitOpcode_100
EmitOpcode_190:
	call RemoveOpcodePos
	mov eax, [gScrCompilePub+0x20028]
	mov byte [eax], 0x3b
	jmp EmitOpcode_100
EmitOpcode_200:
	call RemoveOpcodePos
	mov eax, [gScrCompilePub+0x20028]
	mov byte [eax], 0x38
	jmp EmitOpcode_100
	
	
EmitOpcode_jumptab_0:
	dd EmitOpcode_210
	dd EmitOpcode_60
	dd EmitOpcode_60
	dd EmitOpcode_220
	dd EmitOpcode_60
	dd EmitOpcode_60
	dd EmitOpcode_60
	dd EmitOpcode_60
	dd EmitOpcode_60
	dd EmitOpcode_60
	dd EmitOpcode_230
	dd EmitOpcode_60
	dd EmitOpcode_60
	dd EmitOpcode_60
	dd EmitOpcode_240
	dd EmitOpcode_60
	dd EmitOpcode_60
	dd EmitOpcode_250
	dd EmitOpcode_60
	dd EmitOpcode_60
	dd EmitOpcode_60
	dd EmitOpcode_60
	dd EmitOpcode_60
	dd EmitOpcode_60
	dd EmitOpcode_60
	dd EmitOpcode_260
	dd EmitOpcode_60
	dd EmitOpcode_60
	dd EmitOpcode_60
	dd EmitOpcode_60
	dd EmitOpcode_60
	dd EmitOpcode_60
	dd EmitOpcode_60
	dd EmitOpcode_60
	dd EmitOpcode_60
	dd EmitOpcode_60
	dd EmitOpcode_60
	dd EmitOpcode_60
	dd EmitOpcode_60
	dd EmitOpcode_60
	dd EmitOpcode_60
	dd EmitOpcode_60
	dd EmitOpcode_60
	dd EmitOpcode_60
	dd EmitOpcode_60
	dd EmitOpcode_60
	dd EmitOpcode_60
	dd EmitOpcode_60
	dd EmitOpcode_270
	dd EmitOpcode_60
	dd EmitOpcode_280
	dd EmitOpcode_60
	dd EmitOpcode_60
	dd EmitOpcode_60
	dd EmitOpcode_290
	dd EmitOpcode_60
	dd EmitOpcode_60
	dd EmitOpcode_300
	dd EmitOpcode_60
	dd EmitOpcode_60
	dd EmitOpcode_60
	dd EmitOpcode_60
	dd EmitOpcode_310


;EmitGetInteger(int, sval_u)
EmitGetInteger:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, eax
	mov esi, edx
	cmp eax, 0x0
	jl EmitGetInteger_10
	jz EmitGetInteger_20
	cmp eax, 0xff
	jle EmitGetInteger_30
	cmp eax, 0xffff
	jle EmitGetInteger_40
EmitGetInteger_60:
	xor ecx, ecx
	mov edx, 0x1
	mov eax, 0x8
	call EmitOpcode
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call AddOpcodePos
	mov dword [esp], 0x4
	call TempMallocAlign
	mov [scrCompileGlob], eax
	mov [eax], ebx
EmitGetInteger_70:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
EmitGetInteger_20:
	xor ecx, ecx
	mov edx, 0x1
	mov eax, 0x3
	call EmitOpcode
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call AddOpcodePos
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
EmitGetInteger_10:
	cmp eax, 0xffffff00
	jg EmitGetInteger_50
	cmp eax, 0xffff0000
	jle EmitGetInteger_60
	xor ecx, ecx
	mov edx, 0x1
	mov eax, 0x7
	call EmitOpcode
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call AddOpcodePos
	mov dword [esp], 0x2
	call TempMallocAlign
	mov [scrCompileGlob], eax
	mov edx, ebx
	neg edx
	mov [eax], dx
	jmp EmitGetInteger_70
EmitGetInteger_30:
	xor ecx, ecx
	mov edx, 0x1
	mov eax, 0x4
	call EmitOpcode
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call AddOpcodePos
	mov dword [esp], 0x1
	call TempMalloc
	mov [scrCompileGlob], eax
	mov [eax], bl
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
EmitGetInteger_50:
	xor ecx, ecx
	mov edx, 0x1
	mov eax, 0x5
	call EmitOpcode
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call AddOpcodePos
	mov dword [esp], 0x1
	call TempMalloc
	mov [scrCompileGlob], eax
	mov edx, ebx
	neg dl
	mov [eax], dl
	jmp EmitGetInteger_70
EmitGetInteger_40:
	xor ecx, ecx
	mov edx, 0x1
	mov eax, 0x6
	call EmitOpcode
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call AddOpcodePos
	mov dword [esp], 0x2
	call TempMallocAlign
	mov [scrCompileGlob], eax
	mov [eax], bx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;Scr_FindLocalVarIndex(unsigned int, sval_u, unsigned char, scr_block_s*)
Scr_FindLocalVarIndex:
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
	jz Scr_FindLocalVarIndex_10
	mov eax, [ebp+0x8]
	mov ebx, [eax+0xc]
	test ebx, ebx
	jle Scr_FindLocalVarIndex_20
	mov edi, [ebp+0x8]
	xor esi, esi
	mov edx, edi
	jmp Scr_FindLocalVarIndex_30
Scr_FindLocalVarIndex_50:
	mov eax, [ebp-0x24]
	cmp eax, [edi+0x18]
	jz Scr_FindLocalVarIndex_40
Scr_FindLocalVarIndex_80:
	add esi, 0x1
	add edi, 0x4
	mov eax, [ebp+0x8]
	cmp esi, [eax+0xc]
	jge Scr_FindLocalVarIndex_20
	mov edx, eax
Scr_FindLocalVarIndex_30:
	cmp esi, [edx+0x4]
	jnz Scr_FindLocalVarIndex_50
	lea eax, [esi+0x1]
	mov [edx+0x4], eax
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x16
	call EmitOpcode
	mov eax, [edi+0x18]
	mov [ebp-0x1c], eax
	movzx edx, byte [scrCompileGlob+0x1c]
	mov [ebp-0x1d], dl
	mov byte [scrCompileGlob+0x1c], 0x1
	mov dword [esp], 0x2
	call TempMallocAlign
	mov [scrCompileGlob], eax
	cmp dword [gScrCompilePub+0x20024], 0x2
	jz Scr_FindLocalVarIndex_60
	cmp byte [scrCompileGlob+0x1c], 0x0
	jnz Scr_FindLocalVarIndex_70
Scr_FindLocalVarIndex_140:
	mov ebx, [scrCompileGlob]
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call SL_TransferToCanonicalString
	mov [ebx], ax
Scr_FindLocalVarIndex_130:
	movzx edx, byte [ebp-0x1d]
	mov [scrCompileGlob+0x1c], dl
	mov eax, [ebp-0x24]
	cmp eax, [edi+0x18]
	jnz Scr_FindLocalVarIndex_80
Scr_FindLocalVarIndex_40:
	cmp byte [scrCompileGlob+0x1c], 0x0
	jz Scr_FindLocalVarIndex_90
Scr_FindLocalVarIndex_160:
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
	jnz Scr_FindLocalVarIndex_100
	cmp byte [ebp-0x29], 0x0
	jnz Scr_FindLocalVarIndex_110
Scr_FindLocalVarIndex_120:
	mov edx, [ebp-0x24]
	mov [esp], edx
	call SL_ConvertToString
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_uninitialised_va
	mov eax, [ebp-0x28]
	mov [esp], eax
	call CompileError
	xor eax, eax
Scr_FindLocalVarIndex_150:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Scr_FindLocalVarIndex_20:
	cmp byte [ebp-0x29], 0x0
	jz Scr_FindLocalVarIndex_120
	cmp byte [scrCompileGlob+0x50], 0x0
	jnz Scr_FindLocalVarIndex_120
	mov edx, [ebp-0x28]
Scr_FindLocalVarIndex_10:
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
Scr_FindLocalVarIndex_60:
	cmp byte [scrCompileGlob+0x1c], 0x0
	jnz Scr_FindLocalVarIndex_130
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call SL_RemoveRefToString
	jmp Scr_FindLocalVarIndex_130
Scr_FindLocalVarIndex_70:
	mov edx, [ebp-0x1c]
	mov [esp], edx
	call SL_AddRefToString
	jmp Scr_FindLocalVarIndex_140
Scr_FindLocalVarIndex_110:
	cmp byte [scrCompileGlob+0x50], 0x0
	jnz Scr_FindLocalVarIndex_120
	or dl, cl
	mov eax, [ebp+0x8]
	mov [ebx+eax+0x10], dl
Scr_FindLocalVarIndex_100:
	mov eax, esi
	not eax
	mov edx, [ebp+0x8]
	add eax, [edx+0x4]
	jmp Scr_FindLocalVarIndex_150
Scr_FindLocalVarIndex_90:
	mov [esp], eax
	call SL_RemoveRefToString
	jmp Scr_FindLocalVarIndex_160
	nop


;EmitContinueStatement(sval_u, scr_block_s*)
EmitContinueStatement:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, eax
	mov ebx, edx
	cmp byte [scrCompileGlob+0x34], 0x0
	jz EmitContinueStatement_10
	mov eax, [edx]
	test eax, eax
	jnz EmitContinueStatement_10
	mov eax, [scrCompileGlob+0x48]
	test eax, eax
	jz EmitContinueStatement_20
	cmp dword [gScrCompilePub+0x20024], 0x2
	jz EmitContinueStatement_20
	mov eax, [scrCompileGlob+0x4c]
	cmp dword [eax], 0x3ff
	jg EmitContinueStatement_30
EmitContinueStatement_70:
	mov edx, [eax]
	mov eax, [scrCompileGlob+0x48]
	mov [eax+edx*4], ebx
	mov eax, [scrCompileGlob+0x4c]
	add dword [eax], 0x1
EmitContinueStatement_20:
	mov edi, [ebx]
	test edi, edi
	jz EmitContinueStatement_40
EmitContinueStatement_60:
	mov dword [ebx], 0x1
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x62
	call EmitOpcode
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call AddOpcodePos
	mov dword [esp], 0x4
	call TempMallocAlign
	mov [scrCompileGlob], eax
	mov dword [eax], 0x0
	cmp dword [gScrCompilePub+0x20024], 0x2
	jz EmitContinueStatement_50
	mov dword [esp], 0xc
	call Hunk_AllocateTempMemoryHigh
	mov ebx, eax
	mov eax, [scrCompileGlob]
	mov [ebx], eax
	mov dword [esp], 0x0
	call TempMalloc
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
EmitContinueStatement_10:
	mov dword [esp+0x4], _cstring_illegal_continue
	mov [esp], esi
	call CompileError
EmitContinueStatement_50:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
EmitContinueStatement_40:
	mov eax, [ebx+0x4]
	mov edi, eax
	sub edi, [ebx+0x8]
	jz EmitContinueStatement_60
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x17
	call EmitOpcode
	mov dword [esp], 0x1
	call TempMalloc
	mov [scrCompileGlob], eax
	mov edx, edi
	mov [eax], dl
	mov eax, [ebx+0x8]
	mov [ebx+0x4], eax
	jmp EmitContinueStatement_60
EmitContinueStatement_30:
	mov dword [esp+0x4], _cstring_max_switch_cases
	mov dword [esp], 0x2
	call Com_Error
	mov eax, [scrCompileGlob+0x4c]
	jmp EmitContinueStatement_70
	nop


;EmitBreakStatement(sval_u, scr_block_s*)
EmitBreakStatement:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, eax
	mov ebx, edx
	cmp byte [scrCompileGlob+0x2c], 0x0
	jz EmitBreakStatement_10
	mov eax, [edx]
	test eax, eax
	jnz EmitBreakStatement_10
	mov eax, [scrCompileGlob+0x3c]
	test eax, eax
	jz EmitBreakStatement_20
	cmp dword [gScrCompilePub+0x20024], 0x2
	jz EmitBreakStatement_20
	mov eax, [scrCompileGlob+0x40]
	cmp dword [eax], 0x3ff
	jg EmitBreakStatement_30
EmitBreakStatement_70:
	mov edx, [eax]
	mov eax, [scrCompileGlob+0x3c]
	mov [eax+edx*4], ebx
	mov eax, [scrCompileGlob+0x40]
	add dword [eax], 0x1
EmitBreakStatement_20:
	mov edx, [scrCompileGlob+0x44]
	mov eax, [ebx]
	test eax, eax
	jz EmitBreakStatement_40
EmitBreakStatement_60:
	mov dword [ebx], 0x2
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x62
	call EmitOpcode
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call AddOpcodePos
	mov dword [esp], 0x4
	call TempMallocAlign
	mov [scrCompileGlob], eax
	mov dword [eax], 0x0
	cmp dword [gScrCompilePub+0x20024], 0x2
	jz EmitBreakStatement_50
	mov dword [esp], 0xc
	call Hunk_AllocateTempMemoryHigh
	mov ebx, eax
	mov eax, [scrCompileGlob]
	mov [ebx], eax
	mov dword [esp], 0x0
	call TempMalloc
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
EmitBreakStatement_10:
	mov dword [esp+0x4], _cstring_illegal_break_st
	mov [esp], esi
	call CompileError
EmitBreakStatement_50:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
EmitBreakStatement_40:
	mov eax, [ebx+0x4]
	mov edi, eax
	sub edi, [edx+0x8]
	jz EmitBreakStatement_60
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x17
	call EmitOpcode
	mov dword [esp], 0x1
	call TempMalloc
	mov [scrCompileGlob], eax
	mov edx, edi
	mov [eax], dl
	mov eax, [ebx+0x8]
	mov [ebx+0x4], eax
	jmp EmitBreakStatement_60
EmitBreakStatement_30:
	mov dword [esp+0x4], _cstring_max_switch_cases
	mov dword [esp], 0x2
	call Com_Error
	mov eax, [scrCompileGlob+0x40]
	jmp EmitBreakStatement_70
	nop


;EmitFunction(sval_u, sval_u)
EmitFunction:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov ebx, eax
	mov [ebp-0x2c], edx
	cmp dword [gScrCompilePub+0x20024], 0x2
	jz EmitFunction_10
	cmp dword [eax], 0x14
	jz EmitFunction_20
	mov eax, [eax+0x4]
	mov [esp], eax
	call SL_ConvertToString
	mov [esp], eax
	call Scr_CreateCanonicalFilename
	mov esi, eax
	mov eax, [ebx+0x4]
	cmp byte [scrCompileGlob+0x1c], 0x0
	jz EmitFunction_30
EmitFunction_190:
	mov [esp+0x4], esi
	mov eax, [gScrCompilePub+0x8]
	mov [esp], eax
	call FindVariable
	mov [esp], eax
	call Scr_EvalVariableExtern
	mov [ebp-0x28], eax
	mov [ebp-0x24], edx
	mov edi, [ebp-0x24]
	mov [esp], esi
	call SL_AddRefToString
	cmp byte [scrCompileGlob+0x1c], 0x0
	jz EmitFunction_40
EmitFunction_180:
	mov eax, [scrCompileGlob+0x54]
	mov [eax], si
	mov eax, [scrCompileGlob+0x54]
	mov edx, [ebp-0x2c]
	mov [eax+0x4], edx
	mov eax, [scrCompileGlob+0x54]
	mov byte [eax+0x2], 0x0
	add dword [scrCompileGlob+0x54], 0x8
	mov [esp+0x4], esi
	mov eax, [gScrCompilePub+0xc]
	mov [esp], eax
	call GetVariable
	mov [esp], eax
	call SGetObjectA
	mov edx, eax
	test edi, edi
	jnz EmitFunction_50
	lea edi, [ebx+0x8]
	mov eax, [ebx+0x8]
	mov [esp+0x4], eax
	mov [esp], edx
	call GetVariable
	mov esi, eax
EmitFunction_110:
	mov ebx, [edi]
	cmp dword [gScrCompilePub+0x20024], 0x2
	jz EmitFunction_60
	cmp byte [scrCompileGlob+0x1c], 0x0
	jnz EmitFunction_70
EmitFunction_230:
	mov dword [esp+0x4], 0x2
	mov [esp], ebx
	call SL_TransferRefToUser
EmitFunction_250:
	mov [esp], esi
	call SGetObjectA
	mov ebx, eax
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call FindVariable
	test eax, eax
	jnz EmitFunction_80
EmitFunction_200:
	mov esi, 0x1
EmitFunction_170:
	mov dword [esp], 0x4
	call TempMallocAlign
	mov [scrCompileGlob], eax
	mov [eax], esi
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call GetVariable
	mov esi, eax
	mov [esp], eax
	call Scr_EvalVariableExtern
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	mov eax, [ebp-0x1c]
	test eax, eax
	jnz EmitFunction_90
	mov dword [ebp-0x1c], 0x6
	mov dword [ebp-0x20], 0x0
EmitFunction_90:
	mov eax, [ebp-0x20]
	add eax, 0x2
	mov [esp+0x4], eax
	mov [esp], ebx
	call GetNewVariable
	mov edx, [scrCompileGlob]
	mov [ebp-0x28], edx
	cmp dword [gScrCompilePub+0x20024], 0x1
	sbb edx, edx
	and edx, 0xfffffffb
	add edx, 0xc
	mov [ebp-0x24], edx
	lea edx, [ebp-0x28]
	mov [esp+0x4], edx
	mov [esp], eax
	call SetNewVariableValue
	add dword [ebp-0x20], 0x1
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov [esp], esi
	call SetVariableValue
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call AddOpcodePos
EmitFunction_120:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
EmitFunction_50:
	lea edi, [ebx+0x8]
	mov eax, [ebx+0x8]
	mov [esp+0x4], eax
	mov [esp], edx
	call FindVariable
	mov esi, eax
	test eax, eax
	jz EmitFunction_100
	mov [esp], eax
	call GetValueType
	sub eax, 0x1
	jz EmitFunction_110
	mov dword [esp+0x4], _cstring_unknown_function
	mov edx, [ebp-0x2c]
	mov [esp], edx
	call CompileError
	jmp EmitFunction_120
EmitFunction_10:
	mov eax, [eax+0x4]
	cmp byte [scrCompileGlob+0x1c], 0x0
	jz EmitFunction_130
EmitFunction_260:
	cmp dword [ebx], 0x15
	jnz EmitFunction_120
	mov eax, [ebx+0x8]
	cmp byte [scrCompileGlob+0x1c], 0x0
	jz EmitFunction_140
EmitFunction_280:
	sub dword [gScrCompilePub+0x4], 0x1
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
EmitFunction_20:
	mov eax, [eax+0x4]
	mov [esp+0x4], eax
	mov eax, [scrCompileGlob+0x8]
	mov [esp], eax
	call GetVariable
	mov esi, eax
	mov ebx, [ebx+0x4]
	cmp dword [gScrCompilePub+0x20024], 0x2
	jz EmitFunction_150
	cmp byte [scrCompileGlob+0x1c], 0x0
	jnz EmitFunction_160
EmitFunction_270:
	mov dword [esp+0x4], 0x2
	mov [esp], ebx
	call SL_TransferRefToUser
EmitFunction_240:
	mov [esp], esi
	call SGetObjectA
	mov ebx, eax
	xor esi, esi
	jmp EmitFunction_170
EmitFunction_40:
	mov [esp], esi
	call SL_RemoveRefToString
	jmp EmitFunction_180
EmitFunction_30:
	mov [esp], eax
	call SL_RemoveRefToString
	jmp EmitFunction_190
EmitFunction_100:
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
EmitFunction_80:
	mov [esp], eax
	call Scr_EvalVariableExtern
	mov esi, eax
	cmp edx, 0xd
	jz EmitFunction_100
	test esi, esi
	jz EmitFunction_200
	cmp edx, 0x7
	jz EmitFunction_210
	mov edx, [gScrCompilePub+0x20024]
	test edx, edx
	jz EmitFunction_220
EmitFunction_210:
	mov dword [esp], 0x4
	call TempMallocAlign
	mov [scrCompileGlob], eax
	mov [eax], esi
	jmp EmitFunction_120
EmitFunction_70:
	mov [esp], ebx
	call SL_AddRefToString
	jmp EmitFunction_230
EmitFunction_150:
	cmp byte [scrCompileGlob+0x1c], 0x0
	jnz EmitFunction_240
	mov [esp], ebx
	call SL_RemoveRefToString
	jmp EmitFunction_240
EmitFunction_60:
	cmp byte [scrCompileGlob+0x1c], 0x0
	jnz EmitFunction_250
	mov [esp], ebx
	call SL_RemoveRefToString
	jmp EmitFunction_250
EmitFunction_130:
	mov [esp], eax
	call SL_RemoveRefToString
	jmp EmitFunction_260
EmitFunction_220:
	mov dword [esp+0x4], _cstring_normal_script_ca
	mov edx, [ebp-0x2c]
	mov [esp], edx
	call CompileError
	jmp EmitFunction_120
EmitFunction_160:
	mov [esp], ebx
	call SL_AddRefToString
	jmp EmitFunction_270
EmitFunction_140:
	mov [esp], eax
	call SL_RemoveRefToString
	jmp EmitFunction_280


;EmitCall(sval_u, sval_u, unsigned char, scr_block_s*)
EmitCall:
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
	jz EmitCall_10
	mov edx, eax
	cmp dword [edx], 0x1a
	jz EmitCall_20
EmitCall_120:
	mov eax, [ebp-0x50]
	mov ebx, [eax]
	test ebx, ebx
	jz EmitCall_30
	xor esi, esi
	lea edi, [ebp-0x34]
	jmp EmitCall_40
EmitCall_60:
	add esi, 0x1
	mov ebx, [ebx+0x4]
	test ebx, ebx
	jz EmitCall_50
EmitCall_40:
	mov eax, [ebx]
	mov eax, [eax]
	mov ecx, [ebp+0x8]
	mov edx, edi
	call EmitOrEvalExpression
	test al, al
	jz EmitCall_60
	mov eax, edi
	call EmitValue
	add esi, 0x1
	mov ebx, [ebx+0x4]
	test ebx, ebx
	jnz EmitCall_40
EmitCall_50:
	mov edx, [ebp+0x8]
	mov [esp], edx
	xor ecx, ecx
	mov edx, esi
	mov eax, [ebp-0x4c]
	call EmitPostFunctionCall
	mov eax, gScrVarPub
	cmp byte [eax+0x6], 0x0
	jnz EmitCall_70
EmitCall_90:
	cmp byte [ebp-0x51], 0x0
	jz EmitCall_80
	xor ecx, ecx
	mov edx, 0xffffffff
	mov eax, 0x58
	call EmitOpcode
EmitCall_80:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
EmitCall_70:
	mov eax, [ebp-0x50]
	mov ebx, [eax]
	test ebx, ebx
	jz EmitCall_90
EmitCall_100:
	mov dword [esp+0x4], 0x0
	mov eax, [ebx]
	mov eax, [eax+0x4]
	mov [esp], eax
	call AddOpcodePos
	mov ebx, [ebx+0x4]
	test ebx, ebx
	jnz EmitCall_100
	jmp EmitCall_90
EmitCall_30:
	xor esi, esi
	mov edx, [ebp+0x8]
	mov [esp], edx
	xor ecx, ecx
	mov edx, esi
	mov eax, [ebp-0x4c]
	call EmitPostFunctionCall
	mov eax, gScrVarPub
	cmp byte [eax+0x6], 0x0
	jz EmitCall_90
	jmp EmitCall_70
EmitCall_10:
	mov ebx, [eax+0x4]
	cmp dword [ebx], 0x12
	jz EmitCall_110
EmitCall_130:
	mov edx, [ebp-0x4c]
	cmp dword [edx], 0x1a
	jnz EmitCall_120
EmitCall_20:
	xor ecx, ecx
	mov edx, 0x1
	mov eax, 0x4e
	call EmitOpcode
	jmp EmitCall_120
EmitCall_110:
	mov ebx, [ebx+0x4]
	cmp dword [ebx], 0x14
	jnz EmitCall_130
	mov eax, [ebx+0x4]
	mov [esp+0x4], eax
	mov eax, [scrCompileGlob+0x8]
	mov [esp], eax
	call FindVariable
	test eax, eax
	jnz EmitCall_130
	mov esi, [ebx+0x4]
	test esi, esi
	jz EmitCall_130
	mov [esp], esi
	call SL_ConvertToString
	mov [ebp-0x1c], eax
	mov eax, [ebp-0x4c]
	mov eax, [eax+0x8]
	mov [ebp-0x48], eax
	mov [esp+0x4], esi
	mov eax, [gScrCompilePub+0x10]
	mov [esp], eax
	call FindVariable
	test eax, eax
	jz EmitCall_140
	mov [esp], eax
	call Scr_EvalVariableExtern
	mov [ebp-0x28], eax
	mov [ebp-0x24], edx
	xor eax, eax
	cmp dword [ebp-0x24], 0x7
	setnz al
	mov [ebp-0x20], eax
	mov edx, [ebp-0x28]
	mov [ebp-0x40], edx
EmitCall_200:
	mov ebx, [ebp-0x40]
	test ebx, ebx
	jz EmitCall_130
	cmp dword [ebp-0x20], 0x1
	jz EmitCall_150
	mov dword [ebp-0x3c], 0x0
EmitCall_370:
	mov edx, [ebp-0x50]
	mov ebx, [edx]
	test ebx, ebx
	jz EmitCall_160
	mov dword [ebp-0x44], 0x0
	lea edi, [ebp-0x34]
	jmp EmitCall_170
EmitCall_190:
	add dword [ebp-0x44], 0x1
	mov ebx, [ebx+0x4]
	test ebx, ebx
	jz EmitCall_180
EmitCall_170:
	mov eax, [ebx]
	mov eax, [eax]
	mov ecx, [ebp+0x8]
	mov edx, edi
	call EmitOrEvalExpression
	test al, al
	jz EmitCall_190
	mov eax, edi
	call EmitValue
	jmp EmitCall_190
EmitCall_140:
	mov dword [ebp-0x20], 0x0
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call Scr_GetFunction
	mov [ebp-0x40], eax
	mov [esp+0x4], esi
	mov eax, [gScrCompilePub+0x10]
	mov [esp], eax
	call GetNewVariable
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
	call SetVariableValue
	jmp EmitCall_200
EmitCall_180:
	cmp dword [ebp-0x44], 0xff
	jg EmitCall_210
	mov bl, 0x1
	sub ebx, [ebp-0x44]
EmitCall_350:
	cmp byte [scrCompileGlob+0x1c], 0x0
	jnz EmitCall_220
	mov [esp], esi
	call SL_RemoveRefToString
EmitCall_220:
	cmp dword [ebp-0x44], 0x5
	jle EmitCall_230
	mov esi, 0x44
EmitCall_340:
	mov ecx, 0x1
	mov edx, ebx
	mov eax, esi
	call EmitOpcode
	mov dword [esp+0x4], 0x9
	mov edx, [ebp-0x48]
	mov [esp], edx
	call AddOpcodePos
	cmp esi, 0x44
	jz EmitCall_240
EmitCall_420:
	mov edx, [gScrCompilePub+0x20030]
	test edx, edx
	jg EmitCall_250
	xor ebx, ebx
EmitCall_410:
	cmp edx, 0x400
	jz EmitCall_260
EmitCall_400:
	mov eax, [ebp-0x40]
	mov [edx*4+gScrCompilePub+0x20034], eax
	lea eax, [edx+0x1]
	mov [gScrCompilePub+0x20030], eax
EmitCall_330:
	mov dword [esp], 0x2
	call TempMallocAlign
	mov [scrCompileGlob], eax
	mov [eax], bx
	mov eax, gScrVarPub
	cmp byte [eax+0x6], 0x0
	jz EmitCall_270
	mov edx, [ebp-0x50]
	mov ebx, [edx]
	test ebx, ebx
	jz EmitCall_270
EmitCall_280:
	mov dword [esp+0x4], 0x0
	mov eax, [ebx]
	mov eax, [eax+0x4]
	mov [esp], eax
	call AddOpcodePos
	mov ebx, [ebx+0x4]
	test ebx, ebx
	jnz EmitCall_280
EmitCall_270:
	cmp byte [ebp-0x51], 0x0
	jz EmitCall_290
	xor ecx, ecx
	mov edx, 0xffffffff
	mov eax, 0x58
	call EmitOpcode
EmitCall_290:
	cmp dword [ebp-0x20], 0x1
	jnz EmitCall_80
	mov dword [gScrCompilePub+0x20024], 0x0
	mov eax, gScrVarPub
	cmp byte [eax+0x7], 0x0
	jnz EmitCall_80
	mov eax, [ebp-0x3c]
	mov [esp], eax
	call TempMemorySetPos
	jmp EmitCall_80
EmitCall_250:
	mov eax, [ebp-0x40]
	cmp eax, [gScrCompilePub+0x20034]
	jz EmitCall_300
	xor ebx, ebx
	mov ecx, gScrCompilePub
EmitCall_320:
	add ebx, 0x1
	cmp edx, ebx
	jz EmitCall_310
	mov eax, [ecx+0x20038]
	add ecx, 0x4
	cmp [ebp-0x40], eax
	jnz EmitCall_320
	jmp EmitCall_330
EmitCall_230:
	mov esi, [ebp-0x44]
	add esi, 0x3e
	jmp EmitCall_340
EmitCall_160:
	mov dword [ebp-0x44], 0x0
	mov ebx, 0x1
	jmp EmitCall_350
EmitCall_150:
	mov ecx, [gScrCompilePub+0x20024]
	test ecx, ecx
	jz EmitCall_360
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x3c], 0x0
EmitCall_390:
	cmp dword [ebp-0x20], 0x1
	jnz EmitCall_370
	cmp byte [ebp-0x51], 0x0
	jnz EmitCall_370
	mov dword [esp+0x4], _cstring_return_value_of_
	mov eax, [ebp-0x48]
	mov [esp], eax
	call CompileError
	jmp EmitCall_80
EmitCall_210:
	mov dword [esp+0x4], _cstring_parameter_count_
	mov eax, [ebp-0x48]
	mov [esp], eax
	call CompileError
	jmp EmitCall_80
EmitCall_360:
	mov eax, gScrVarPub
	cmp byte [eax+0x7], 0x0
	jz EmitCall_380
	mov dword [gScrCompilePub+0x20024], 0x1
	mov dword [ebp-0x3c], 0x0
EmitCall_430:
	mov dword [ebp-0x20], 0x1
	jmp EmitCall_390
EmitCall_260:
	mov dword [esp+0x4], _cstring_scr_func_table_s
	mov dword [esp], 0x2
	call Com_Error
	mov edx, [gScrCompilePub+0x20030]
	jmp EmitCall_400
EmitCall_310:
	mov ebx, edx
	jmp EmitCall_410
EmitCall_300:
	xor ebx, ebx
	jmp EmitCall_330
EmitCall_240:
	mov dword [esp], 0x1
	call TempMalloc
	mov [scrCompileGlob], eax
	movzx edx, byte [ebp-0x44]
	mov [eax], dl
	jmp EmitCall_420
EmitCall_380:
	mov dword [esp], 0x0
	call TempMalloc
	mov [ebp-0x3c], eax
	mov dword [gScrCompilePub+0x20024], 0x2
	jmp EmitCall_430
	nop


;EmitOrEvalExpression(sval_u, VariableCompileValue*, scr_block_s*)
EmitOrEvalExpression:
EmitOrEvalExpression_20:
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
	ja EmitOrEvalExpression_10
	jmp dword [eax*4+EmitOrEvalExpression_jumptab_0]
EmitOrEvalExpression_270:
	mov eax, [ebx+0x4]
	lea edi, [ebp-0x24]
	mov edx, edi
	call EmitOrEvalExpression_20
	test al, al
	jnz EmitOrEvalExpression_30
EmitOrEvalExpression_190:
	mov ebx, [ebx+0x8]
	mov [ebp-0x54], ebx
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x5d
	call EmitOpcode
	mov dword [esp+0x4], 0x0
	mov edx, [ebp-0x54]
	mov [esp], edx
	call AddOpcodePos
EmitOrEvalExpression_10:
	xor eax, eax
EmitOrEvalExpression_40:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
EmitOrEvalExpression_220:
	mov eax, [ebx+0x4]
	call EmitOrEvalPrimitiveExpression
	movzx eax, al
	jmp EmitOrEvalExpression_40
EmitOrEvalExpression_260:
	mov eax, [ebx+0x4]
	lea edi, [ebp-0x3c]
	mov edx, edi
	call EmitOrEvalExpression_20
	test al, al
	jnz EmitOrEvalExpression_50
EmitOrEvalExpression_180:
	mov ebx, [ebx+0x8]
	mov [ebp-0x54], ebx
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x5c
	call EmitOpcode
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x54]
	mov [esp], eax
	call AddOpcodePos
	xor eax, eax
	jmp EmitOrEvalExpression_40
EmitOrEvalExpression_250:
	mov eax, [ebx+0x10]
	mov [ebp-0x5c], eax
	mov edx, [ebx+0xc]
	mov [ebp-0x58], edx
	mov eax, [ebx+0x8]
	mov [ebp-0x54], eax
	mov eax, [ebx+0x4]
	lea edx, [ebp-0x24]
	call EmitOrEvalExpression_20
	test al, al
	jz EmitOrEvalExpression_60
	mov ebx, [gScrCompilePub]
	cmp ebx, 0x1f
	jg EmitOrEvalExpression_70
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
	mov [gScrCompilePub], eax
EmitOrEvalExpression_130:
	lea ebx, [ebp-0x30]
	mov ecx, esi
	mov edx, ebx
	mov eax, [ebp-0x54]
	call EmitOrEvalExpression_20
	test al, al
	jnz EmitOrEvalExpression_80
EmitOrEvalExpression_170:
	movsx eax, byte [ebp-0x58]
	xor ecx, ecx
	mov edx, 0xffffffff
	call EmitOpcode
	mov dword [esp+0x4], 0x0
	mov edx, [ebp-0x5c]
	mov [esp], edx
	call AddOpcodePos
	xor eax, eax
	movzx eax, al
	jmp EmitOrEvalExpression_40
EmitOrEvalExpression_240:
	mov eax, [ebx+0x10]
	mov [ebp-0x5c], eax
	mov edx, [ebx+0xc]
	mov [ebp-0x58], edx
	mov eax, [ebx+0x8]
	mov [ebp-0x54], eax
	mov eax, [ebx+0x4]
	lea ebx, [ebp-0x24]
	mov edx, ebx
	call EmitOrEvalExpression_20
	test al, al
	jnz EmitOrEvalExpression_90
EmitOrEvalExpression_140:
	xor ecx, ecx
	mov edx, 0xffffffff
	mov eax, 0x60
	call EmitOpcode
	mov dword [esp+0x4], 0x0
	mov edx, [ebp-0x58]
	mov [esp], edx
	call AddOpcodePos
	mov dword [esp], 0x2
	call TempMallocAlign
	mov [scrCompileGlob], eax
	mov word [eax], 0x0
	mov eax, [scrCompileGlob]
	mov [ebp-0x4c], eax
	mov dword [esp], 0x0
	call TempMalloc
	mov edi, eax
	mov ecx, esi
	mov edx, ebx
	mov eax, [ebp-0x54]
	call EmitOrEvalExpression_20
	test al, al
	jnz EmitOrEvalExpression_100
EmitOrEvalExpression_160:
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x5b
	call EmitOpcode
	mov dword [esp+0x4], 0x0
	mov edx, [ebp-0x5c]
	mov [esp], edx
	call AddOpcodePos
	mov dword [esp], 0x0
	call TempMalloc
	sub eax, edi
	mov edx, [ebp-0x4c]
	mov [edx], ax
	xor eax, eax
	jmp EmitOrEvalExpression_40
EmitOrEvalExpression_230:
	mov eax, [ebx+0x10]
	mov [ebp-0x5c], eax
	mov edx, [ebx+0xc]
	mov [ebp-0x58], edx
	mov eax, [ebx+0x8]
	mov [ebp-0x54], eax
	mov eax, [ebx+0x4]
	lea ebx, [ebp-0x3c]
	mov edx, ebx
	call EmitOrEvalExpression_20
	test al, al
	jnz EmitOrEvalExpression_110
EmitOrEvalExpression_150:
	xor ecx, ecx
	mov edx, 0xffffffff
	mov eax, 0x61
	call EmitOpcode
	mov dword [esp+0x4], 0x0
	mov edx, [ebp-0x58]
	mov [esp], edx
	call AddOpcodePos
	mov dword [esp], 0x2
	call TempMallocAlign
	mov [scrCompileGlob], eax
	mov word [eax], 0x0
	mov eax, [scrCompileGlob]
	mov [ebp-0x50], eax
	mov dword [esp], 0x0
	call TempMalloc
	mov edi, eax
	lea ebx, [ebp-0x24]
	mov ecx, esi
	mov edx, ebx
	mov eax, [ebp-0x54]
	call EmitOrEvalExpression_20
	test al, al
	jnz EmitOrEvalExpression_120
EmitOrEvalExpression_200:
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x5b
	call EmitOpcode
	mov dword [esp+0x4], 0x0
	mov edx, [ebp-0x5c]
	mov [esp], edx
	call AddOpcodePos
	mov dword [esp], 0x0
	call TempMalloc
	sub eax, edi
	mov edx, [ebp-0x50]
	mov [edx], ax
	xor eax, eax
	jmp EmitOrEvalExpression_40
EmitOrEvalExpression_70:
	mov dword [esp+0x4], _cstring_value_stack_size
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call CompileError
	jmp EmitOrEvalExpression_130
EmitOrEvalExpression_90:
	mov eax, ebx
	call EmitValue
	jmp EmitOrEvalExpression_140
EmitOrEvalExpression_110:
	mov eax, ebx
	call EmitValue
	jmp EmitOrEvalExpression_150
EmitOrEvalExpression_100:
	mov eax, ebx
	call EmitValue
	jmp EmitOrEvalExpression_160
EmitOrEvalExpression_60:
	lea ebx, [ebp-0x3c]
	mov ecx, esi
	mov edx, ebx
	mov eax, [ebp-0x54]
	call EmitOrEvalExpression_20
	test al, al
	jz EmitOrEvalExpression_170
	mov eax, ebx
	call EmitValue
	jmp EmitOrEvalExpression_170
EmitOrEvalExpression_50:
	mov eax, edi
	call EmitValue
	jmp EmitOrEvalExpression_180
EmitOrEvalExpression_30:
	mov eax, edi
	call EmitValue
	jmp EmitOrEvalExpression_190
EmitOrEvalExpression_120:
	mov eax, ebx
	call EmitValue
	jmp EmitOrEvalExpression_200
EmitOrEvalExpression_80:
	sub dword [gScrCompilePub], 0x1
	mov [esp+0x8], ebx
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov edx, [ebp-0x58]
	mov [esp], edx
	call Scr_EvalBinaryOperator
	mov eax, gScrVarPub
	mov eax, [eax+0xc]
	test eax, eax
	jz EmitOrEvalExpression_210
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_s
	mov eax, [ebp-0x5c]
	mov [esp], eax
	call CompileError
	xor eax, eax
	movzx eax, al
	jmp EmitOrEvalExpression_40
EmitOrEvalExpression_210:
	mov eax, [ebp-0x24]
	mov edx, [ebp-0x20]
	mov [edi], eax
	mov [edi+0x4], edx
	mov edx, [ebp-0x5c]
	mov [edi+0x8], edx
	mov eax, 0x1
	movzx eax, al
	jmp EmitOrEvalExpression_40
	nop
	
	
EmitOrEvalExpression_jumptab_0:
	dd EmitOrEvalExpression_220
	dd EmitOrEvalExpression_10
	dd EmitOrEvalExpression_10
	dd EmitOrEvalExpression_10
	dd EmitOrEvalExpression_10
	dd EmitOrEvalExpression_10
	dd EmitOrEvalExpression_10
	dd EmitOrEvalExpression_10
	dd EmitOrEvalExpression_10
	dd EmitOrEvalExpression_10
	dd EmitOrEvalExpression_10
	dd EmitOrEvalExpression_10
	dd EmitOrEvalExpression_10
	dd EmitOrEvalExpression_10
	dd EmitOrEvalExpression_10
	dd EmitOrEvalExpression_10
	dd EmitOrEvalExpression_10
	dd EmitOrEvalExpression_10
	dd EmitOrEvalExpression_10
	dd EmitOrEvalExpression_10
	dd EmitOrEvalExpression_10
	dd EmitOrEvalExpression_10
	dd EmitOrEvalExpression_10
	dd EmitOrEvalExpression_10
	dd EmitOrEvalExpression_10
	dd EmitOrEvalExpression_10
	dd EmitOrEvalExpression_10
	dd EmitOrEvalExpression_10
	dd EmitOrEvalExpression_10
	dd EmitOrEvalExpression_10
	dd EmitOrEvalExpression_10
	dd EmitOrEvalExpression_10
	dd EmitOrEvalExpression_10
	dd EmitOrEvalExpression_10
	dd EmitOrEvalExpression_10
	dd EmitOrEvalExpression_10
	dd EmitOrEvalExpression_10
	dd EmitOrEvalExpression_10
	dd EmitOrEvalExpression_10
	dd EmitOrEvalExpression_10
	dd EmitOrEvalExpression_10
	dd EmitOrEvalExpression_230
	dd EmitOrEvalExpression_240
	dd EmitOrEvalExpression_250
	dd EmitOrEvalExpression_260
	dd EmitOrEvalExpression_270


;EmitPostFunctionCall(sval_u, int, unsigned char, scr_block_s*)
EmitPostFunctionCall:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov ebx, edx
	mov edx, [eax]
	cmp edx, 0x1a
	jz EmitPostFunctionCall_10
	cmp edx, 0x1e
	jz EmitPostFunctionCall_20
EmitPostFunctionCall_40:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
EmitPostFunctionCall_10:
	mov edi, [eax+0x8]
	mov eax, [eax+0x4]
	mov edx, [eax]
	cmp edx, 0x12
	jz EmitPostFunctionCall_30
	cmp edx, 0x16
	jnz EmitPostFunctionCall_40
	mov edx, [eax+0x8]
	mov [ebp-0x38], edx
	mov esi, [eax+0x4]
	mov [ebp-0x31], cl
	mov ecx, [ebp+0x8]
	lea edx, [ebp-0x24]
	mov eax, esi
	call EmitOrEvalExpression
	test al, al
	jnz EmitPostFunctionCall_50
EmitPostFunctionCall_150:
	cmp byte [ebp-0x31], 0x0
	jnz EmitPostFunctionCall_60
	not ebx
	mov ecx, 0x3
	mov edx, ebx
	mov eax, 0x51
	call EmitOpcode
EmitPostFunctionCall_130:
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x38]
	mov [esp], eax
	call AddOpcodePos
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	call AddOpcodePos
	jmp EmitPostFunctionCall_40
EmitPostFunctionCall_20:
	mov edx, [eax+0xc]
	mov [ebp-0x3c], edx
	mov edi, [eax+0x8]
	mov eax, [eax+0x4]
	mov edx, [eax]
	cmp edx, 0x12
	jz EmitPostFunctionCall_70
	cmp edx, 0x16
	jz EmitPostFunctionCall_80
EmitPostFunctionCall_100:
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call AddOpcodePos
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
EmitPostFunctionCall_70:
	mov esi, [eax+0x4]
	test cl, cl
	jnz EmitPostFunctionCall_90
	mov edx, 0x1
	sub edx, ebx
	mov ecx, 0x2
	mov eax, 0x54
	call EmitOpcode
EmitPostFunctionCall_140:
	mov dword [esp+0x4], 0x3
	mov eax, [ebp-0x3c]
	mov [esp], eax
	call AddOpcodePos
	mov edx, [ebp-0x3c]
	mov eax, esi
	call EmitFunction
	mov dword [esp], 0x4
	call TempMallocAlign
	mov [scrCompileGlob], eax
	mov [eax], ebx
	jmp EmitPostFunctionCall_100
EmitPostFunctionCall_30:
	mov esi, [eax+0x4]
	test cl, cl
	jnz EmitPostFunctionCall_110
	neg ebx
	mov ecx, 0x3
	mov edx, ebx
	mov eax, 0x50
	call EmitOpcode
EmitPostFunctionCall_120:
	mov dword [esp+0x4], 0x3
	mov [esp], edi
	call AddOpcodePos
	mov edx, edi
	mov eax, esi
	call EmitFunction
	jmp EmitPostFunctionCall_40
EmitPostFunctionCall_110:
	not ebx
	mov ecx, 0x3
	mov edx, ebx
	mov eax, 0x52
	call EmitOpcode
	jmp EmitPostFunctionCall_120
EmitPostFunctionCall_60:
	neg ebx
	lea edx, [ebx-0x2]
	mov ecx, 0x3
	mov eax, 0x53
	call EmitOpcode
	jmp EmitPostFunctionCall_130
EmitPostFunctionCall_90:
	mov edx, ebx
	neg edx
	mov ecx, 0x2
	mov eax, 0x56
	call EmitOpcode
	jmp EmitPostFunctionCall_140
EmitPostFunctionCall_50:
	lea eax, [ebp-0x24]
	call EmitValue
	jmp EmitPostFunctionCall_150
EmitPostFunctionCall_80:
	mov edx, [eax+0x8]
	mov [ebp-0x30], edx
	mov esi, [eax+0x4]
	mov [ebp-0x29], cl
	mov ecx, [ebp+0x8]
	lea edx, [ebp-0x24]
	mov eax, esi
	call EmitOrEvalExpression
	test al, al
	jnz EmitPostFunctionCall_160
EmitPostFunctionCall_190:
	cmp byte [ebp-0x29], 0x0
	jnz EmitPostFunctionCall_170
	mov edx, ebx
	neg edx
	mov ecx, 0x2
	mov eax, 0x55
	call EmitOpcode
EmitPostFunctionCall_180:
	mov dword [esp+0x4], 0x1
	mov eax, [ebp-0x30]
	mov [esp], eax
	call AddOpcodePos
	mov dword [esp], 0x4
	call TempMallocAlign
	mov [scrCompileGlob], eax
	mov [eax], ebx
	jmp EmitPostFunctionCall_100
EmitPostFunctionCall_170:
	mov edx, ebx
	not edx
	mov ecx, 0x2
	mov eax, 0x57
	call EmitOpcode
	jmp EmitPostFunctionCall_180
EmitPostFunctionCall_160:
	lea eax, [ebp-0x24]
	call EmitValue
	jmp EmitPostFunctionCall_190
	nop


;EmitOrEvalPrimitiveExpression(sval_u, VariableCompileValue*, scr_block_s*)
EmitOrEvalPrimitiveExpression:
EmitOrEvalPrimitiveExpression_150:
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
	ja EmitOrEvalPrimitiveExpression_10
	jmp dword [edx*4+EmitOrEvalPrimitiveExpression_jumptab_0]
EmitOrEvalPrimitiveExpression_10:
	mov edx, esi
	call EvalPrimitiveExpression
EmitOrEvalPrimitiveExpression_200:
	movzx eax, al
EmitOrEvalPrimitiveExpression_20:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
EmitOrEvalPrimitiveExpression_300:
	mov edi, [eax+0x4]
	mov edx, ecx
	mov eax, edi
	call EmitVariableExpression
	xor eax, eax
	jmp EmitOrEvalPrimitiveExpression_20
EmitOrEvalPrimitiveExpression_310:
	mov edx, [eax+0x8]
	mov [ebp-0x48], edx
	mov edi, [eax+0x4]
	xor ecx, ecx
	mov edx, 0x1
	mov eax, 0x15
	call EmitOpcode
	mov dword [esp+0x4], 0x3
	mov eax, [ebp-0x48]
	mov [esp], eax
	call AddOpcodePos
	mov edx, [ebp-0x48]
	mov eax, edi
	call EmitFunction
	xor eax, eax
	jmp EmitOrEvalPrimitiveExpression_20
EmitOrEvalPrimitiveExpression_320:
	mov edi, [eax+0x4]
	mov eax, [edi]
	cmp eax, 0x17
	jz EmitOrEvalPrimitiveExpression_30
	cmp eax, 0x18
	jz EmitOrEvalPrimitiveExpression_40
EmitOrEvalPrimitiveExpression_190:
	xor eax, eax
EmitOrEvalPrimitiveExpression_50:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
EmitOrEvalPrimitiveExpression_330:
	mov edi, [eax+0x4]
	xor ecx, ecx
	mov edx, 0x1
	mov eax, 0xf
EmitOrEvalPrimitiveExpression_60:
	call EmitOpcode
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	call AddOpcodePos
	xor eax, eax
	jmp EmitOrEvalPrimitiveExpression_50
EmitOrEvalPrimitiveExpression_340:
	mov edi, [eax+0x4]
	xor ecx, ecx
	mov edx, 0x1
	mov eax, 0x10
	jmp EmitOrEvalPrimitiveExpression_60
EmitOrEvalPrimitiveExpression_350:
	mov edi, [eax+0x4]
	xor ecx, ecx
	mov edx, 0x1
	mov eax, 0x11
	jmp EmitOrEvalPrimitiveExpression_60
EmitOrEvalPrimitiveExpression_360:
	mov edi, [eax+0x4]
	xor ecx, ecx
	mov edx, 0x1
	mov eax, 0x12
	jmp EmitOrEvalPrimitiveExpression_60
EmitOrEvalPrimitiveExpression_370:
	mov edx, [eax+0x8]
	mov [ebp-0x48], edx
	mov edi, [eax+0x4]
	mov eax, [edi]
	mov edx, eax
	test eax, eax
	jz EmitOrEvalPrimitiveExpression_70
	xor ecx, ecx
EmitOrEvalPrimitiveExpression_80:
	add ecx, 0x1
	mov edx, [edx+0x4]
	test edx, edx
	jnz EmitOrEvalPrimitiveExpression_80
	cmp ecx, 0x1
	jz EmitOrEvalPrimitiveExpression_90
	cmp ecx, 0x3
	jnz EmitOrEvalPrimitiveExpression_70
	mov [ebp-0x3c], eax
	test eax, eax
	jz EmitOrEvalPrimitiveExpression_100
EmitOrEvalPrimitiveExpression_140:
	mov edx, [ebp-0x3c]
	mov eax, [edx]
	mov eax, [eax]
	mov ecx, ebx
	lea edx, [ebp-0x24]
	call EmitOrEvalExpression
	mov [ebp-0x41], al
	test al, al
	jz EmitOrEvalPrimitiveExpression_110
	mov eax, [gScrCompilePub]
	mov [ebp-0x40], eax
	cmp eax, 0x1f
	jg EmitOrEvalPrimitiveExpression_120
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
	mov [gScrCompilePub], eax
EmitOrEvalPrimitiveExpression_110:
	mov eax, [ebp-0x3c]
	mov eax, [eax+0x4]
	mov [ebp-0x3c], eax
	test eax, eax
	jz EmitOrEvalPrimitiveExpression_130
	cmp byte [ebp-0x41], 0x0
	jnz EmitOrEvalPrimitiveExpression_140
	mov edx, [ebp-0x3c]
	mov eax, [edx]
	mov eax, [eax]
	mov ecx, ebx
	lea edx, [ebp-0x30]
	call EmitOrEvalExpression
	test al, al
	jz EmitOrEvalPrimitiveExpression_110
	lea eax, [ebp-0x30]
	call EmitValue
	jmp EmitOrEvalPrimitiveExpression_110
EmitOrEvalPrimitiveExpression_380:
	mov edx, [eax+0x8]
	mov [ebp-0x48], edx
	mov edi, [eax+0x4]
	lea esi, [ebp-0x30]
	mov edx, esi
	mov eax, edi
	call EmitOrEvalPrimitiveExpression_150
	test al, al
	jnz EmitOrEvalPrimitiveExpression_160
EmitOrEvalPrimitiveExpression_210:
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x76
	call EmitOpcode
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x48]
	mov [esp], eax
	call AddOpcodePos
	xor eax, eax
	jmp EmitOrEvalPrimitiveExpression_20
EmitOrEvalPrimitiveExpression_390:
	mov edi, [eax+0x4]
	xor ecx, ecx
	mov edx, 0x1
	mov eax, 0x25
	call EmitOpcode
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	call AddOpcodePos
	xor eax, eax
	jmp EmitOrEvalPrimitiveExpression_20
EmitOrEvalPrimitiveExpression_410:
	mov edi, [eax+0x4]
	mov eax, gScrAnimPub
	mov eax, [eax+0x414]
	test eax, eax
	jnz EmitOrEvalPrimitiveExpression_170
	mov dword [esp+0x4], _cstring_using_animtree_w
	mov [esp], edi
	call CompileError
	xor eax, eax
	jmp EmitOrEvalPrimitiveExpression_20
EmitOrEvalPrimitiveExpression_420:
	mov eax, [eax+0xc]
	mov dword [esp+0x4], _cstring_illegal_function
	mov [esp], eax
	call CompileError
	xor eax, eax
	jmp EmitOrEvalPrimitiveExpression_50
EmitOrEvalPrimitiveExpression_400:
	mov edx, [eax+0x8]
	mov [ebp-0x48], edx
	mov edi, [eax+0x4]
	xor ecx, ecx
	mov edx, 0x1
	mov eax, 0x13
	call EmitOpcode
	mov dword [esp+0x4], 0x1
	mov eax, [ebp-0x48]
	mov [esp], eax
	call AddOpcodePos
	mov dword [esp], 0x4
	call TempMallocAlign
	mov [scrCompileGlob], eax
	mov dword [eax], 0xffffffff
	cmp dword [gScrCompilePub+0x20024], 0x2
	jz EmitOrEvalPrimitiveExpression_180
	mov edx, [ebp-0x48]
	mov [esp+0x8], edx
	mov [esp+0x4], edi
	mov eax, [scrCompileGlob]
	mov [esp], eax
	call Scr_EmitAnimation
EmitOrEvalPrimitiveExpression_180:
	cmp byte [scrCompileGlob+0x1c], 0x0
	jnz EmitOrEvalPrimitiveExpression_190
	mov [esp], edi
	call SL_RemoveRefToString
	xor eax, eax
	jmp EmitOrEvalPrimitiveExpression_50
EmitOrEvalPrimitiveExpression_40:
	mov eax, [edi+0x10]
	mov ecx, [edi+0xc]
	mov edx, [edi+0x8]
	mov esi, [edi+0x4]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	mov eax, esi
	call EmitMethod
	xor eax, eax
	jmp EmitOrEvalPrimitiveExpression_20
EmitOrEvalPrimitiveExpression_170:
	mov edx, edi
	call EmitGetInteger
	xor eax, eax
	jmp EmitOrEvalPrimitiveExpression_20
EmitOrEvalPrimitiveExpression_70:
	mov dword [esp+0x4], _cstring_expression_list_
	mov eax, [ebp-0x48]
	mov [esp], eax
	call CompileError
	xor eax, eax
	jmp EmitOrEvalPrimitiveExpression_200
EmitOrEvalPrimitiveExpression_160:
	mov eax, esi
	call EmitValue
	jmp EmitOrEvalPrimitiveExpression_210
EmitOrEvalPrimitiveExpression_30:
	mov edx, [edi+0x8]
	mov esi, [edi+0x4]
	mov [esp], ecx
	xor ecx, ecx
	mov eax, esi
	call EmitCall
	xor eax, eax
	jmp EmitOrEvalPrimitiveExpression_20
EmitOrEvalPrimitiveExpression_90:
	mov eax, [eax]
	mov eax, [eax]
	mov ecx, ebx
	mov edx, esi
	call EmitOrEvalExpression
	jmp EmitOrEvalPrimitiveExpression_200
EmitOrEvalPrimitiveExpression_130:
	cmp byte [ebp-0x41], 0x0
	jz EmitOrEvalPrimitiveExpression_220
EmitOrEvalPrimitiveExpression_100:
	mov eax, [gScrCompilePub]
	sub eax, 0x3
	mov [gScrCompilePub], eax
	lea eax, [eax+eax*2]
	lea ecx, [eax*4+scrCompileGlob+0x58]
	xor edi, edi
	lea ebx, [ebp-0x30]
EmitOrEvalPrimitiveExpression_250:
	mov edx, [ecx+0x4]
	cmp edx, 0x5
	jz EmitOrEvalPrimitiveExpression_230
	cmp edx, 0x6
	jnz EmitOrEvalPrimitiveExpression_240
	cvtsi2ss xmm0, dword [ecx]
	movss [ebx+0x8], xmm0
EmitOrEvalPrimitiveExpression_260:
	add edi, 0xc
	add ecx, 0xc
	sub ebx, 0x4
	cmp edi, 0x24
	jnz EmitOrEvalPrimitiveExpression_250
	mov dword [esi+0x4], 0x4
	lea edx, [ebp-0x30]
	mov [esp], edx
	call Scr_AllocVector
	mov [esi], eax
EmitOrEvalPrimitiveExpression_290:
	mov eax, [ebp-0x48]
	mov [esi+0x8], eax
	mov eax, 0x1
	jmp EmitOrEvalPrimitiveExpression_200
EmitOrEvalPrimitiveExpression_230:
	mov eax, [ecx]
	mov [ebx+0x8], eax
	jmp EmitOrEvalPrimitiveExpression_260
EmitOrEvalPrimitiveExpression_120:
	mov dword [esp+0x4], _cstring_value_stack_size
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call CompileError
	jmp EmitOrEvalPrimitiveExpression_110
EmitOrEvalPrimitiveExpression_220:
	xor ecx, ecx
	mov edx, 0xfffffffe
	mov eax, 0x7e
	call EmitOpcode
	mov dword [esp+0x4], 0x1
	mov edx, [ebp-0x48]
	mov [esp], edx
	call AddOpcodePos
	mov eax, gScrVarPub
	cmp byte [eax+0x6], 0x0
	jz EmitOrEvalPrimitiveExpression_270
	mov ebx, [edi]
	test ebx, ebx
	jz EmitOrEvalPrimitiveExpression_270
EmitOrEvalPrimitiveExpression_280:
	mov dword [esp+0x4], 0x0
	mov eax, [ebx]
	mov eax, [eax+0x4]
	mov [esp], eax
	call AddOpcodePos
	mov ebx, [ebx+0x4]
	test ebx, ebx
	jnz EmitOrEvalPrimitiveExpression_280
EmitOrEvalPrimitiveExpression_270:
	xor eax, eax
	jmp EmitOrEvalPrimitiveExpression_200
EmitOrEvalPrimitiveExpression_240:
	mov eax, var_typename
	mov eax, [eax+edx*4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_type_s_is_not_a_
	mov eax, [ecx+0x8]
	mov [esp], eax
	call CompileError
	jmp EmitOrEvalPrimitiveExpression_290
	
	
EmitOrEvalPrimitiveExpression_jumptab_0:
	dd EmitOrEvalPrimitiveExpression_300
	dd EmitOrEvalPrimitiveExpression_310
	dd EmitOrEvalPrimitiveExpression_320
	dd EmitOrEvalPrimitiveExpression_10
	dd EmitOrEvalPrimitiveExpression_10
	dd EmitOrEvalPrimitiveExpression_10
	dd EmitOrEvalPrimitiveExpression_10
	dd EmitOrEvalPrimitiveExpression_10
	dd EmitOrEvalPrimitiveExpression_10
	dd EmitOrEvalPrimitiveExpression_10
	dd EmitOrEvalPrimitiveExpression_10
	dd EmitOrEvalPrimitiveExpression_10
	dd EmitOrEvalPrimitiveExpression_10
	dd EmitOrEvalPrimitiveExpression_10
	dd EmitOrEvalPrimitiveExpression_10
	dd EmitOrEvalPrimitiveExpression_330
	dd EmitOrEvalPrimitiveExpression_10
	dd EmitOrEvalPrimitiveExpression_340
	dd EmitOrEvalPrimitiveExpression_350
	dd EmitOrEvalPrimitiveExpression_360
	dd EmitOrEvalPrimitiveExpression_10
	dd EmitOrEvalPrimitiveExpression_10
	dd EmitOrEvalPrimitiveExpression_10
	dd EmitOrEvalPrimitiveExpression_10
	dd EmitOrEvalPrimitiveExpression_10
	dd EmitOrEvalPrimitiveExpression_10
	dd EmitOrEvalPrimitiveExpression_10
	dd EmitOrEvalPrimitiveExpression_10
	dd EmitOrEvalPrimitiveExpression_10
	dd EmitOrEvalPrimitiveExpression_370
	dd EmitOrEvalPrimitiveExpression_10
	dd EmitOrEvalPrimitiveExpression_10
	dd EmitOrEvalPrimitiveExpression_10
	dd EmitOrEvalPrimitiveExpression_10
	dd EmitOrEvalPrimitiveExpression_10
	dd EmitOrEvalPrimitiveExpression_380
	dd EmitOrEvalPrimitiveExpression_10
	dd EmitOrEvalPrimitiveExpression_10
	dd EmitOrEvalPrimitiveExpression_10
	dd EmitOrEvalPrimitiveExpression_10
	dd EmitOrEvalPrimitiveExpression_10
	dd EmitOrEvalPrimitiveExpression_10
	dd EmitOrEvalPrimitiveExpression_10
	dd EmitOrEvalPrimitiveExpression_10
	dd EmitOrEvalPrimitiveExpression_10
	dd EmitOrEvalPrimitiveExpression_10
	dd EmitOrEvalPrimitiveExpression_10
	dd EmitOrEvalPrimitiveExpression_10
	dd EmitOrEvalPrimitiveExpression_10
	dd EmitOrEvalPrimitiveExpression_390
	dd EmitOrEvalPrimitiveExpression_400
	dd EmitOrEvalPrimitiveExpression_10
	dd EmitOrEvalPrimitiveExpression_10
	dd EmitOrEvalPrimitiveExpression_10
	dd EmitOrEvalPrimitiveExpression_10
	dd EmitOrEvalPrimitiveExpression_10
	dd EmitOrEvalPrimitiveExpression_10
	dd EmitOrEvalPrimitiveExpression_410
	dd EmitOrEvalPrimitiveExpression_420


;EmitVariableExpression(sval_u, scr_block_s*)
EmitVariableExpression:
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
	jz EmitVariableExpression_10
	jle EmitVariableExpression_20
	cmp eax, 0x35
	jz EmitVariableExpression_30
	cmp eax, 0x50
	jz EmitVariableExpression_40
EmitVariableExpression_60:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
EmitVariableExpression_20:
	cmp eax, 0x4
	jz EmitVariableExpression_50
	cmp eax, 0xd
	jnz EmitVariableExpression_60
	mov edx, [ecx+0x10]
	mov [ebp-0x2c], edx
	mov edi, [ecx+0xc]
	mov eax, [ecx+0x8]
	mov [ebp-0x30], eax
	mov ebx, [ecx+0x4]
	mov ecx, esi
	lea edx, [ebp-0x24]
	call EmitOrEvalExpression
	test al, al
	jnz EmitVariableExpression_70
EmitVariableExpression_210:
	mov ecx, esi
	lea edx, [ebp-0x24]
	mov eax, ebx
	call EmitOrEvalPrimitiveExpression
	test al, al
	jnz EmitVariableExpression_80
EmitVariableExpression_200:
	xor ecx, ecx
	mov edx, 0xffffffff
	mov eax, 0x20
	call EmitOpcode
	mov dword [esp+0x4], 0x0
	mov edx, [ebp-0x2c]
	mov [esp], edx
	call AddOpcodePos
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	call AddOpcodePos
	jmp EmitVariableExpression_60
EmitVariableExpression_10:
	mov edi, [ecx+0xc]
	mov eax, [ecx+0x8]
	mov [ebp-0x30], eax
	mov ebx, [ecx+0x4]
	mov ecx, edx
	mov edx, edi
	mov eax, ebx
	call EmitPrimitiveExpressionFieldObject
	xor ecx, ecx
	mov edx, 0x1
	mov eax, 0x2a
	call EmitOpcode
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call AddOpcodePos
	mov dword [esp], 0x2
	call TempMallocAlign
	mov [scrCompileGlob], eax
	cmp dword [gScrCompilePub+0x20024], 0x2
	jz EmitVariableExpression_90
	cmp byte [scrCompileGlob+0x1c], 0x0
	jnz EmitVariableExpression_100
EmitVariableExpression_160:
	mov ebx, [scrCompileGlob]
	mov edx, [ebp-0x30]
	mov [esp], edx
	call SL_TransferToCanonicalString
	mov [ebx], ax
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
EmitVariableExpression_40:
	mov eax, [ecx+0x8]
	mov [ebp-0x30], eax
	mov ebx, [ecx+0x4]
	cmp byte [gScrCompilePub+0x20020], 0x0
	jnz EmitVariableExpression_110
	mov [esp], ebx
	call SL_ConvertToString
	mov ebx, eax
	movzx eax, byte [eax]
	cmp al, 0x74
	jz EmitVariableExpression_120
	cmp al, 0x61
	jz EmitVariableExpression_130
	movsx eax, al
	mov [esp], eax
	call Scr_GetClassnumForCharId
	mov esi, eax
	test eax, eax
	js EmitVariableExpression_140
	lea eax, [ebx+0x1]
	mov [esp], eax
	call atoi
	mov edi, eax
	test eax, eax
	jnz EmitVariableExpression_150
	cmp byte [ebx+0x1], 0x30
	jz EmitVariableExpression_150
	mov dword [esp+0x4], _cstring_bad_expression
	mov eax, [ebp-0x30]
	mov [esp], eax
	call CompileError
	jmp EmitVariableExpression_60
EmitVariableExpression_100:
	mov eax, [ebp-0x30]
	mov [esp], eax
	call SL_AddRefToString
	jmp EmitVariableExpression_160
EmitVariableExpression_30:
	mov eax, _cstring_self_field_in_as
	cmp byte [gScrCompilePub+0x20020], 0x0
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
EmitVariableExpression_50:
	mov eax, [ecx+0x8]
	mov [ebp-0x30], eax
	mov ebx, [ecx+0x4]
	mov [esp], edx
	xor ecx, ecx
	mov edx, eax
	mov eax, ebx
	call Scr_FindLocalVarIndex
	mov esi, eax
	cmp eax, 0x5
	jle EmitVariableExpression_170
	mov ebx, 0x1e
EmitVariableExpression_190:
	xor ecx, ecx
	mov edx, 0x1
	mov eax, ebx
	call EmitOpcode
	cmp ebx, 0x1e
	jz EmitVariableExpression_180
EmitVariableExpression_220:
	mov dword [esp+0x4], 0x1
	mov eax, [ebp-0x30]
	mov [esp], eax
	call AddOpcodePos
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
EmitVariableExpression_90:
	cmp byte [scrCompileGlob+0x1c], 0x0
	jnz EmitVariableExpression_60
	mov edx, [ebp-0x30]
	mov [esp], edx
	call SL_RemoveRefToString
	jmp EmitVariableExpression_60
EmitVariableExpression_170:
	lea ebx, [eax+0x18]
	jmp EmitVariableExpression_190
EmitVariableExpression_110:
	mov dword [esp+0x4], _cstring__can_only_be_use
	mov [esp], eax
	call CompileError
	jmp EmitVariableExpression_60
EmitVariableExpression_80:
	lea eax, [ebp-0x24]
	call EmitValue
	jmp EmitVariableExpression_200
EmitVariableExpression_70:
	lea eax, [ebp-0x24]
	call EmitValue
	jmp EmitVariableExpression_210
EmitVariableExpression_180:
	mov dword [esp], 0x1
	call TempMalloc
	mov [scrCompileGlob], eax
	mov edx, esi
	mov [eax], dl
	jmp EmitVariableExpression_220
EmitVariableExpression_150:
	xor ecx, ecx
	mov edx, 0x1
	mov eax, 0x81
	call EmitOpcode
	mov dword [esp], 0x4
	call TempMallocAlign
	mov [scrCompileGlob], eax
	mov [eax], esi
	mov dword [esp], 0x4
	call TempMallocAlign
	mov [scrCompileGlob], eax
	mov [eax], edi
	jmp EmitVariableExpression_60
EmitVariableExpression_140:
	mov dword [esp+0x4], _cstring_bad_expression
	mov edx, [ebp-0x30]
	mov [esp], edx
	call CompileError
	jmp EmitVariableExpression_60
EmitVariableExpression_130:
	mov dword [esp+0x4], _cstring_argument_express
	mov eax, [ebp-0x30]
	mov [esp], eax
	call CompileError
	jmp EmitVariableExpression_60
EmitVariableExpression_120:
	lea eax, [ebx+0x1]
	mov [esp], eax
	call atoi
	mov ebx, eax
	lea eax, [eax-0x1]
	cmp eax, 0x7ffe
	ja EmitVariableExpression_140
	movzx esi, bx
	mov [esp], esi
	call IsObjectFree
	test al, al
	jnz EmitVariableExpression_140
	mov [esp], esi
	call Scr_GetObjectType
	mov ecx, eax
	cmp eax, 0x16
	ja EmitVariableExpression_140
	mov eax, 0x1
	shl eax, cl
	test eax, 0x43c000
	jz EmitVariableExpression_140
	xor ecx, ecx
	mov edx, 0x1
	mov eax, 0x82
	call EmitOpcode
	mov dword [esp], 0x2
	call TempMallocAlign
	mov [scrCompileGlob], eax
	mov [eax], bx
	jmp EmitVariableExpression_60
	nop


;EmitMethod(sval_u, sval_u, sval_u, sval_u, unsigned char, scr_block_s*)
EmitMethod:
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
	jz EmitMethod_10
	mov eax, edx
	cmp dword [eax], 0x1a
	jz EmitMethod_20
EmitMethod_140:
	mov edx, [ebp-0x54]
	mov ebx, [edx]
	test ebx, ebx
	jz EmitMethod_30
	xor esi, esi
	jmp EmitMethod_40
EmitMethod_60:
	add esi, 0x1
	mov ebx, [ebx+0x4]
	test ebx, ebx
	jz EmitMethod_50
EmitMethod_40:
	mov eax, [ebx]
	mov eax, [eax]
	mov ecx, edi
	lea edx, [ebp-0x34]
	call EmitOrEvalExpression
	test al, al
	jz EmitMethod_60
	lea eax, [ebp-0x34]
	call EmitValue
	add esi, 0x1
	mov ebx, [ebx+0x4]
	test ebx, ebx
	jnz EmitMethod_40
EmitMethod_50:
	mov ecx, edi
	lea edx, [ebp-0x34]
	mov eax, [ebp-0x4c]
	call EmitOrEvalPrimitiveExpression
	test al, al
	jnz EmitMethod_70
EmitMethod_120:
	mov [esp], edi
	mov ecx, 0x1
	mov edx, esi
	mov eax, [ebp-0x50]
	call EmitPostFunctionCall
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call AddOpcodePos
	mov eax, gScrVarPub
	cmp byte [eax+0x6], 0x0
	jnz EmitMethod_80
EmitMethod_100:
	cmp byte [ebp-0x55], 0x0
	jz EmitMethod_90
	xor ecx, ecx
	mov edx, 0xffffffff
	mov eax, 0x58
	call EmitOpcode
EmitMethod_90:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
EmitMethod_80:
	mov edx, [ebp-0x54]
	mov ebx, [edx]
	test ebx, ebx
	jz EmitMethod_100
EmitMethod_110:
	mov dword [esp+0x4], 0x0
	mov eax, [ebx]
	mov eax, [eax+0x4]
	mov [esp], eax
	call AddOpcodePos
	mov ebx, [ebx+0x4]
	test ebx, ebx
	jnz EmitMethod_110
	jmp EmitMethod_100
EmitMethod_30:
	xor esi, esi
	mov ecx, edi
	lea edx, [ebp-0x34]
	mov eax, [ebp-0x4c]
	call EmitOrEvalPrimitiveExpression
	test al, al
	jz EmitMethod_120
EmitMethod_70:
	lea eax, [ebp-0x34]
	call EmitValue
	jmp EmitMethod_120
EmitMethod_10:
	mov ebx, [edx+0x4]
	cmp dword [ebx], 0x12
	jz EmitMethod_130
EmitMethod_150:
	mov eax, [ebp-0x50]
	cmp dword [eax], 0x1a
	jnz EmitMethod_140
EmitMethod_20:
	xor ecx, ecx
	mov edx, 0x1
	mov eax, 0x4e
	call EmitOpcode
	jmp EmitMethod_140
EmitMethod_130:
	mov ebx, [ebx+0x4]
	cmp dword [ebx], 0x14
	jnz EmitMethod_150
	mov eax, [ebx+0x4]
	mov [esp+0x4], eax
	mov eax, [scrCompileGlob+0x8]
	mov [esp], eax
	call FindVariable
	test eax, eax
	jnz EmitMethod_150
	mov ebx, [ebx+0x4]
	mov [ebp-0x44], ebx
	test ebx, ebx
	jz EmitMethod_150
	mov [esp], ebx
	call SL_ConvertToString
	mov [ebp-0x20], eax
	mov eax, [ebp-0x50]
	mov eax, [eax+0x8]
	mov [ebp-0x48], eax
	mov edx, [ebp-0x44]
	mov [esp+0x4], edx
	mov eax, [gScrCompilePub+0x14]
	mov [esp], eax
	call FindVariable
	test eax, eax
	jz EmitMethod_160
	mov [esp], eax
	call Scr_EvalVariableExtern
	mov [ebp-0x28], eax
	mov [ebp-0x24], edx
	xor eax, eax
	cmp dword [ebp-0x24], 0x7
	setnz al
	mov [ebp-0x1c], eax
	mov eax, [ebp-0x28]
	mov [ebp-0x40], eax
EmitMethod_320:
	mov eax, [ebp-0x40]
	test eax, eax
	jz EmitMethod_150
	cmp dword [ebp-0x1c], 0x1
	jz EmitMethod_170
	mov dword [ebp-0x3c], 0x0
EmitMethod_340:
	mov edx, [ebp-0x54]
	mov ebx, [edx]
	test ebx, ebx
	jz EmitMethod_180
	xor esi, esi
	jmp EmitMethod_190
EmitMethod_210:
	add esi, 0x1
	mov ebx, [ebx+0x4]
	test ebx, ebx
	jz EmitMethod_200
EmitMethod_190:
	mov eax, [ebx]
	mov eax, [eax]
	mov ecx, edi
	lea edx, [ebp-0x34]
	call EmitOrEvalExpression
	test al, al
	jz EmitMethod_210
	lea eax, [ebp-0x34]
	call EmitValue
	jmp EmitMethod_210
EmitMethod_180:
	xor esi, esi
EmitMethod_200:
	mov ecx, edi
	lea edx, [ebp-0x34]
	mov eax, [ebp-0x4c]
	call EmitOrEvalPrimitiveExpression
	test al, al
	jz EmitMethod_220
	lea eax, [ebp-0x34]
	call EmitValue
EmitMethod_220:
	cmp esi, 0xff
	jg EmitMethod_230
	cmp byte [scrCompileGlob+0x1c], 0x0
	jnz EmitMethod_240
	mov edx, [ebp-0x44]
	mov [esp], edx
	call SL_RemoveRefToString
EmitMethod_240:
	cmp esi, 0x5
	jle EmitMethod_250
	mov ebx, 0x4b
EmitMethod_400:
	mov edx, esi
	neg edx
	mov ecx, 0x1
	mov eax, ebx
	call EmitOpcode
	mov dword [esp+0x4], 0x9
	mov eax, [ebp-0x48]
	mov [esp], eax
	call AddOpcodePos
	cmp ebx, 0x4b
	jz EmitMethod_260
EmitMethod_410:
	mov edx, [gScrCompilePub+0x20030]
	test edx, edx
	jg EmitMethod_270
	xor ebx, ebx
EmitMethod_390:
	cmp edx, 0x400
	jz EmitMethod_280
EmitMethod_420:
	mov eax, [ebp-0x40]
	mov [edx*4+gScrCompilePub+0x20034], eax
	lea eax, [edx+0x1]
	mov [gScrCompilePub+0x20030], eax
EmitMethod_370:
	mov dword [esp], 0x2
	call TempMallocAlign
	mov [scrCompileGlob], eax
	mov [eax], bx
	mov dword [esp+0x4], 0x0
	mov edx, [ebp+0x8]
	mov [esp], edx
	call AddOpcodePos
	mov eax, gScrVarPub
	cmp byte [eax+0x6], 0x0
	jz EmitMethod_290
	mov eax, [ebp-0x54]
	mov ebx, [eax]
	test ebx, ebx
	jz EmitMethod_290
EmitMethod_300:
	mov dword [esp+0x4], 0x0
	mov eax, [ebx]
	mov eax, [eax+0x4]
	mov [esp], eax
	call AddOpcodePos
	mov ebx, [ebx+0x4]
	test ebx, ebx
	jnz EmitMethod_300
EmitMethod_290:
	cmp byte [ebp-0x55], 0x0
	jz EmitMethod_310
	xor ecx, ecx
	mov edx, 0xffffffff
	mov eax, 0x58
	call EmitOpcode
EmitMethod_310:
	cmp dword [ebp-0x1c], 0x1
	jnz EmitMethod_90
	mov dword [gScrCompilePub+0x20024], 0x0
	mov eax, gScrVarPub
	cmp byte [eax+0x7], 0x0
	jnz EmitMethod_90
	mov edx, [ebp-0x3c]
	mov [esp], edx
	call TempMemorySetPos
	jmp EmitMethod_90
EmitMethod_160:
	mov dword [ebp-0x1c], 0x0
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	lea eax, [ebp-0x20]
	mov [esp], eax
	call Scr_GetMethod
	mov [ebp-0x40], eax
	mov edx, [ebp-0x44]
	mov [esp+0x4], edx
	mov eax, [gScrCompilePub+0x14]
	mov [esp], eax
	call GetNewVariable
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
	call SetVariableValue
	jmp EmitMethod_320
EmitMethod_230:
	mov dword [esp+0x4], _cstring_parameter_count_
	mov eax, [ebp-0x48]
	mov [esp], eax
	call CompileError
	jmp EmitMethod_90
EmitMethod_170:
	mov esi, [gScrCompilePub+0x20024]
	test esi, esi
	jz EmitMethod_330
	mov dword [ebp-0x1c], 0x0
	mov dword [ebp-0x3c], 0x0
EmitMethod_440:
	cmp dword [ebp-0x1c], 0x1
	jnz EmitMethod_340
	cmp byte [ebp-0x55], 0x0
	jnz EmitMethod_340
	mov dword [esp+0x4], _cstring_return_value_of_
	mov eax, [ebp-0x48]
	mov [esp], eax
	call CompileError
	jmp EmitMethod_90
EmitMethod_270:
	mov eax, [ebp-0x40]
	cmp eax, [gScrCompilePub+0x20034]
	jz EmitMethod_350
	xor ebx, ebx
	mov ecx, gScrCompilePub
	jmp EmitMethod_360
EmitMethod_380:
	mov eax, [ecx+0x20038]
	add ecx, 0x4
	cmp [ebp-0x40], eax
	jz EmitMethod_370
EmitMethod_360:
	add ebx, 0x1
	cmp ebx, edx
	jnz EmitMethod_380
	mov ebx, edx
	jmp EmitMethod_390
EmitMethod_250:
	lea ebx, [esi+0x45]
	jmp EmitMethod_400
EmitMethod_260:
	mov dword [esp], 0x1
	call TempMalloc
	mov [scrCompileGlob], eax
	mov edx, esi
	mov [eax], dl
	jmp EmitMethod_410
EmitMethod_280:
	mov dword [esp+0x4], _cstring_scr_func_table_s
	mov dword [esp], 0x2
	call Com_Error
	mov edx, [gScrCompilePub+0x20030]
	jmp EmitMethod_420
EmitMethod_330:
	mov eax, gScrVarPub
	cmp byte [eax+0x7], 0x0
	jz EmitMethod_430
	mov dword [gScrCompilePub+0x20024], 0x1
	mov dword [ebp-0x3c], 0x0
EmitMethod_450:
	mov dword [ebp-0x1c], 0x1
	jmp EmitMethod_440
EmitMethod_350:
	xor ebx, ebx
	jmp EmitMethod_370
EmitMethod_430:
	mov dword [esp], 0x0
	call TempMalloc
	mov [ebp-0x3c], eax
	mov dword [gScrCompilePub+0x20024], 0x2
	jmp EmitMethod_450
	nop


;EmitPrimitiveExpressionFieldObject(sval_u, sval_u, scr_block_s*)
EmitPrimitiveExpressionFieldObject:
EmitPrimitiveExpressionFieldObject_60:
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
	ja EmitPrimitiveExpressionFieldObject_10
	jmp dword [eax*4+EmitPrimitiveExpressionFieldObject_jumptab_0]
EmitPrimitiveExpressionFieldObject_120:
	mov esi, [ebx+0x4]
	mov eax, [esi]
	test eax, eax
	jz EmitPrimitiveExpressionFieldObject_10
	mov ebx, [eax+0x4]
	test ebx, ebx
	jz EmitPrimitiveExpressionFieldObject_20
EmitPrimitiveExpressionFieldObject_10:
	mov dword [esp+0x4], _cstring_not_an_object
	mov [esp], edx
	call CompileError
EmitPrimitiveExpressionFieldObject_30:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
EmitPrimitiveExpressionFieldObject_70:
	mov esi, [ebx+0x4]
	mov edx, ecx
	mov eax, esi
	call EmitVariableExpression
	mov ebx, [ebx+0x8]
EmitPrimitiveExpressionFieldObject_50:
	xor ecx, ecx
	mov edx, 0xffffffff
	mov eax, 0x59
	call EmitOpcode
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call AddOpcodePos
	jmp EmitPrimitiveExpressionFieldObject_30
EmitPrimitiveExpressionFieldObject_110:
	mov esi, [ebx+0x4]
	xor ecx, ecx
	xor edx, edx
	mov eax, 0xe
	call EmitOpcode
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call AddOpcodePos
	jmp EmitPrimitiveExpressionFieldObject_30
EmitPrimitiveExpressionFieldObject_100:
	mov esi, [ebx+0x4]
	xor ecx, ecx
	xor edx, edx
	mov eax, 0xd
	call EmitOpcode
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call AddOpcodePos
	jmp EmitPrimitiveExpressionFieldObject_30
EmitPrimitiveExpressionFieldObject_90:
	mov esi, [ebx+0x4]
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x26
	call EmitOpcode
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call AddOpcodePos
	jmp EmitPrimitiveExpressionFieldObject_30
EmitPrimitiveExpressionFieldObject_80:
	mov esi, [ebx+0x4]
	mov eax, [esi]
	cmp eax, 0x17
	jz EmitPrimitiveExpressionFieldObject_40
	cmp eax, 0x18
	jnz EmitPrimitiveExpressionFieldObject_30
	mov eax, [esi+0x10]
	mov edi, [esi+0xc]
	mov edx, [esi+0x8]
	mov ebx, [esi+0x4]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	mov ecx, edi
	mov eax, ebx
	call EmitMethod
	mov ebx, [esi+0x14]
	jmp EmitPrimitiveExpressionFieldObject_50
EmitPrimitiveExpressionFieldObject_20:
	mov eax, [eax]
	mov edx, [eax+0x4]
	mov eax, [eax]
	cmp dword [eax], 0x6
	jnz EmitPrimitiveExpressionFieldObject_10
	mov edx, [eax+0x8]
	mov eax, [eax+0x4]
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp EmitPrimitiveExpressionFieldObject_60
EmitPrimitiveExpressionFieldObject_40:
	mov edx, [esi+0x8]
	mov ebx, [esi+0x4]
	mov [esp], ecx
	xor ecx, ecx
	mov eax, ebx
	call EmitCall
	mov edi, [esi+0xc]
	xor ecx, ecx
	mov edx, 0xffffffff
	mov eax, 0x59
	call EmitOpcode
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call AddOpcodePos
	jmp EmitPrimitiveExpressionFieldObject_30
	
	
EmitPrimitiveExpressionFieldObject_jumptab_0:
	dd EmitPrimitiveExpressionFieldObject_70
	dd EmitPrimitiveExpressionFieldObject_10
	dd EmitPrimitiveExpressionFieldObject_80
	dd EmitPrimitiveExpressionFieldObject_10
	dd EmitPrimitiveExpressionFieldObject_10
	dd EmitPrimitiveExpressionFieldObject_10
	dd EmitPrimitiveExpressionFieldObject_10
	dd EmitPrimitiveExpressionFieldObject_10
	dd EmitPrimitiveExpressionFieldObject_10
	dd EmitPrimitiveExpressionFieldObject_10
	dd EmitPrimitiveExpressionFieldObject_10
	dd EmitPrimitiveExpressionFieldObject_10
	dd EmitPrimitiveExpressionFieldObject_10
	dd EmitPrimitiveExpressionFieldObject_10
	dd EmitPrimitiveExpressionFieldObject_10
	dd EmitPrimitiveExpressionFieldObject_90
	dd EmitPrimitiveExpressionFieldObject_10
	dd EmitPrimitiveExpressionFieldObject_100
	dd EmitPrimitiveExpressionFieldObject_10
	dd EmitPrimitiveExpressionFieldObject_110
	dd EmitPrimitiveExpressionFieldObject_10
	dd EmitPrimitiveExpressionFieldObject_10
	dd EmitPrimitiveExpressionFieldObject_10
	dd EmitPrimitiveExpressionFieldObject_10
	dd EmitPrimitiveExpressionFieldObject_10
	dd EmitPrimitiveExpressionFieldObject_10
	dd EmitPrimitiveExpressionFieldObject_10
	dd EmitPrimitiveExpressionFieldObject_10
	dd EmitPrimitiveExpressionFieldObject_10
	dd EmitPrimitiveExpressionFieldObject_120


;EmitVariableExpressionRef(sval_u, scr_block_s*)
EmitVariableExpressionRef:
EmitVariableExpressionRef_160:
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
	jz EmitVariableExpressionRef_10
	jle EmitVariableExpressionRef_20
	cmp eax, 0x35
	jz EmitVariableExpressionRef_30
	cmp eax, 0x50
	jz EmitVariableExpressionRef_30
EmitVariableExpressionRef_50:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
EmitVariableExpressionRef_20:
	cmp eax, 0x4
	jz EmitVariableExpressionRef_40
	cmp eax, 0xd
	jnz EmitVariableExpressionRef_50
	mov eax, [ecx+0x10]
	mov [ebp-0x30], eax
	mov eax, [ecx+0xc]
	mov [ebp-0x2c], eax
	mov edi, [ecx+0x8]
	mov ebx, [ecx+0x4]
	mov ecx, edx
	lea edx, [ebp-0x24]
	mov eax, edi
	call EmitOrEvalExpression
	test al, al
	jnz EmitVariableExpressionRef_60
EmitVariableExpressionRef_150:
	mov eax, [ebx]
	cmp eax, 0x11
	jz EmitVariableExpressionRef_70
	cmp eax, 0x23
	jz EmitVariableExpressionRef_80
	mov dword [esp+0x4], _cstring_not_an_lvalue
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call CompileError
EmitVariableExpressionRef_130:
	xor ecx, ecx
	mov edx, 0xffffffff
	mov eax, 0x23
	call EmitOpcode
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x30]
	mov [esp], eax
	call AddOpcodePos
	mov dword [esp+0x4], 0x1
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call AddOpcodePos
	jmp EmitVariableExpressionRef_50
EmitVariableExpressionRef_10:
	mov eax, [ecx+0xc]
	mov edi, [ecx+0x8]
	mov ebx, [ecx+0x4]
	mov ecx, edx
	mov edx, eax
	mov eax, ebx
	call EmitPrimitiveExpressionFieldObject
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x2e
	call EmitOpcode
	mov dword [esp], 0x2
	call TempMallocAlign
	mov [scrCompileGlob], eax
	cmp dword [gScrCompilePub+0x20024], 0x2
	jz EmitVariableExpressionRef_90
	cmp byte [scrCompileGlob+0x1c], 0x0
	jnz EmitVariableExpressionRef_100
EmitVariableExpressionRef_110:
	mov ebx, [scrCompileGlob]
	mov [esp], edi
	call SL_TransferToCanonicalString
	mov [ebx], ax
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
EmitVariableExpressionRef_30:
	mov eax, _cstring_not_an_lvalue
	cmp byte [gScrCompilePub+0x20020], 0x0
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
EmitVariableExpressionRef_100:
	mov [esp], edi
	call SL_AddRefToString
	jmp EmitVariableExpressionRef_110
EmitVariableExpressionRef_40:
	mov edi, [ecx+0x8]
	mov ebx, [ecx+0x4]
	mov [esp], edx
	mov ecx, 0x1
	mov edx, edi
	mov eax, ebx
	call Scr_FindLocalVarIndex
	mov ebx, eax
	cmp eax, 0x1
	sbb eax, eax
	add eax, 0x37
	xor ecx, ecx
	xor edx, edx
	call EmitOpcode
	test ebx, ebx
	jnz EmitVariableExpressionRef_120
EmitVariableExpressionRef_140:
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	call AddOpcodePos
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
EmitVariableExpressionRef_90:
	cmp byte [scrCompileGlob+0x1c], 0x0
	jnz EmitVariableExpressionRef_50
	mov [esp], edi
	call SL_RemoveRefToString
	jmp EmitVariableExpressionRef_50
EmitVariableExpressionRef_80:
	mov ebx, [ebx+0x4]
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x14
	call EmitOpcode
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	call AddOpcodePos
	jmp EmitVariableExpressionRef_130
EmitVariableExpressionRef_120:
	mov dword [esp], 0x1
	call TempMalloc
	mov [scrCompileGlob], eax
	mov [eax], bl
	jmp EmitVariableExpressionRef_140
EmitVariableExpressionRef_60:
	lea eax, [ebp-0x24]
	call EmitValue
	jmp EmitVariableExpressionRef_150
EmitVariableExpressionRef_70:
	mov ebx, [ebx+0x4]
	mov edx, esi
	mov eax, ebx
	call EmitVariableExpressionRef_160
	jmp EmitVariableExpressionRef_130
	nop


;EmitStatement(sval_u, unsigned char, unsigned int, scr_block_s*)
EmitStatement:
EmitStatement_200:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov ebx, eax
	mov esi, ecx
	cmp dword [eax], 0x4e
	ja EmitStatement_10
	mov eax, [eax]
	jmp dword [eax*4+EmitStatement_jumptab_0]
EmitStatement_80:
	mov eax, [ecx+0x4]
	cmp dword [eax], 0x1f
	jnz EmitStatement_20
	mov eax, [edi]
	cmp eax, 0xf
	jz EmitStatement_30
	jg EmitStatement_40
	cmp eax, 0x4
	jz EmitStatement_20
	cmp eax, 0xd
	jnz EmitStatement_10
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
	call EmitOrEvalExpression
	test al, al
	jz EmitStatement_50
	mov eax, edi
	call EmitValue
EmitStatement_50:
	mov eax, [ebx]
	cmp eax, 0x11
	jz EmitStatement_60
	cmp eax, 0x23
	jz EmitStatement_70
	mov dword [esp+0x4], _cstring_not_an_lvalue
	mov edx, [ebp-0x34]
	mov [esp], edx
	call CompileError
EmitStatement_670:
	xor ecx, ecx
	mov edx, 0xffffffff
	mov eax, 0x24
	call EmitOpcode
	mov dword [esp+0x4], 0x0
	mov ecx, [ebp-0x38]
	mov [esp], ecx
	call AddOpcodePos
	mov dword [esp+0x4], 0x0
	mov esi, [ebp-0x34]
	mov [esp], esi
	call AddOpcodePos
EmitStatement_10:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
EmitStatement_680:
	mov eax, [ebx+0x10]
	mov [ebp-0x44], eax
	mov edx, [ebx+0xc]
	mov [ebp-0x40], edx
	mov ecx, [ebx+0x8]
	mov [ebp-0x3c], ecx
	mov edi, [ebx+0x4]
	cmp dword [ecx], 0x6
	jz EmitStatement_80
	mov eax, ecx
EmitStatement_620:
	lea ebx, [ebp-0x24]
	mov ecx, [ebp+0x8]
	mov edx, ebx
	call EmitOrEvalExpression
	test al, al
	jnz EmitStatement_90
EmitStatement_590:
	mov edx, [ebp+0x8]
	mov eax, edi
	call EmitVariableExpressionRef
	xor ecx, ecx
	mov edx, 0xffffffff
	mov eax, 0x39
	call EmitOpcode
	mov dword [esp+0x4], 0x0
	mov ecx, [ebp-0x40]
	mov [esp], ecx
	call AddOpcodePos
	jmp EmitStatement_10
EmitStatement_690:
	mov edi, [ebx+0x4]
	mov eax, [edi]
	cmp eax, 0x17
	jz EmitStatement_100
	cmp eax, 0x18
	jnz EmitStatement_10
	mov eax, [edi+0x10]
	mov ecx, [edi+0xc]
	mov edx, [edi+0x8]
	mov ebx, [edi+0x4]
	mov esi, [ebp+0x8]
	mov [esp+0x8], esi
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	mov eax, ebx
	call EmitMethod
	jmp EmitStatement_10
EmitStatement_700:
	mov eax, [ebx+0x8]
	mov [ebp-0x3c], eax
	mov edi, [ebx+0x4]
	mov edx, [ebp+0x8]
	mov eax, [edx]
	test eax, eax
	jnz EmitStatement_110
	mov dword [edx], 0x3
	mov ecx, [ebp+0x8]
EmitStatement_440:
	lea ebx, [ebp-0x24]
	mov edx, ebx
	mov eax, edi
	call EmitOrEvalExpression
	test al, al
	jnz EmitStatement_120
EmitStatement_520:
	xor ecx, ecx
	mov edx, 0xffffffff
	mov eax, 0x1
EmitStatement_150:
	call EmitOpcode
	mov dword [esp+0x4], 0x0
	mov ecx, [ebp-0x3c]
	mov [esp], ecx
	call AddOpcodePos
	jmp EmitStatement_10
EmitStatement_740:
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
	call EmitIfElseStatement
	jmp EmitStatement_10
EmitStatement_750:
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
	call EmitWhileStatement
	jmp EmitStatement_10
EmitStatement_720:
	mov eax, [ebx+0xc]
	mov [ebp-0x40], eax
	mov edx, [ebx+0x8]
	mov [ebp-0x3c], edx
	mov edi, [ebx+0x4]
	lea ebx, [ebp-0x24]
	mov ecx, [ebp+0x8]
	mov edx, ebx
	mov eax, edi
	call EmitOrEvalExpression
	test al, al
	jnz EmitStatement_130
EmitStatement_510:
	xor ecx, ecx
	mov edx, 0xffffffff
	mov eax, 0x4c
	call EmitOpcode
	mov dword [esp+0x4], 0x0
	mov ecx, [ebp-0x40]
	mov [esp], ecx
	call AddOpcodePos
	mov dword [esp+0x4], 0x0
	mov esi, [ebp-0x40]
	mov [esp], esi
	call AddOpcodePos
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x3c]
	mov [esp], eax
	call AddOpcodePos
	jmp EmitStatement_10
EmitStatement_730:
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
	call EmitIfStatement
	jmp EmitStatement_10
EmitStatement_710:
	mov edi, [ebx+0x4]
	mov esi, [ebp+0x8]
	mov eax, [esi]
	test eax, eax
	jnz EmitStatement_140
	mov dword [esi], 0x3
EmitStatement_140:
	xor ecx, ecx
	xor edx, edx
	xor eax, eax
	call EmitOpcode
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	call AddOpcodePos
	jmp EmitStatement_10
EmitStatement_760:
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
	call EmitForStatement
	jmp EmitStatement_10
EmitStatement_770:
	mov esi, [ebx+0x8]
	mov edi, [ebx+0x4]
	mov byte [scrCompileGlob+0x50], 0x1
	mov edx, [ebp+0x8]
	mov eax, edi
	call EmitVariableExpressionRef
	mov byte [scrCompileGlob+0x50], 0x0
	xor ecx, ecx
	mov edx, 0x1
	mov eax, 0x64
	call EmitOpcode
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call AddOpcodePos
	xor ecx, ecx
	mov edx, 0xffffffff
	mov eax, 0x39
	call EmitOpcode
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call AddOpcodePos
	jmp EmitStatement_10
EmitStatement_780:
	mov eax, [ebx+0x8]
	mov [ebp-0x3c], eax
	mov edi, [ebx+0x4]
	mov byte [scrCompileGlob+0x50], 0x1
	mov edx, [ebp+0x8]
	mov eax, edi
	call EmitVariableExpressionRef
	mov byte [scrCompileGlob+0x50], 0x0
	xor ecx, ecx
	mov edx, 0x1
	mov eax, 0x65
	call EmitOpcode
	mov dword [esp+0x4], 0x0
	mov edx, [ebp-0x3c]
	mov [esp], edx
	call AddOpcodePos
	xor ecx, ecx
	mov edx, 0xffffffff
	mov eax, 0x39
	jmp EmitStatement_150
EmitStatement_790:
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
	call EmitVariableExpression
	mov byte [scrCompileGlob+0x1c], 0x0
	lea ebx, [ebp-0x24]
	mov ecx, [ebp+0x8]
	mov edx, ebx
	mov eax, [ebp-0x3c]
	call EmitOrEvalExpression
	test al, al
	jnz EmitStatement_160
EmitStatement_500:
	movsx eax, byte [ebp-0x40]
	xor ecx, ecx
	mov edx, 0xffffffff
	call EmitOpcode
	mov dword [esp+0x4], 0x0
	mov ecx, [ebp-0x44]
	mov [esp], ecx
	call AddOpcodePos
	mov edx, [ebp+0x8]
	mov eax, edi
	call EmitVariableExpressionRef
	xor ecx, ecx
	mov edx, 0xffffffff
	mov eax, 0x39
	call EmitOpcode
	mov dword [esp+0x4], 0x0
	mov esi, [ebp-0x44]
	mov [esp], esi
	call AddOpcodePos
	jmp EmitStatement_10
EmitStatement_800:
	mov edi, [ebx+0x4]
	mov [ebp-0x2d], dl
	mov eax, [edi]
	mov ecx, [eax+0x4]
	test ecx, ecx
	jz EmitStatement_10
EmitStatement_210:
	mov ebx, [ecx+0x4]
	cmp byte [ebp-0x2d], 0x0
	jz EmitStatement_170
	test ebx, ebx
	jz EmitStatement_180
	mov eax, gScrVarPub
	cmp byte [eax+0x7], 0x0
	jnz EmitStatement_170
	mov edx, ebx
EmitStatement_190:
	mov eax, [edx]
	cmp dword [eax], 0x2d
	jnz EmitStatement_170
	mov edx, [edx+0x4]
	test edx, edx
	jnz EmitStatement_190
EmitStatement_180:
	mov edx, 0x1
EmitStatement_390:
	mov eax, [ecx]
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	mov ecx, esi
	call EmitStatement_200
	test ebx, ebx
	jz EmitStatement_10
	mov ecx, ebx
	jmp EmitStatement_210
EmitStatement_860:
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
	call EmitOrEvalExpression
	test al, al
	jnz EmitStatement_220
EmitStatement_540:
	mov ecx, [ebp+0x8]
	mov edx, ebx
	mov eax, edi
	call EmitOrEvalPrimitiveExpression
	test al, al
	jnz EmitStatement_230
EmitStatement_530:
	xor ecx, ecx
	mov edx, 0xfffffffe
	mov eax, 0x7a
	call EmitOpcode
	mov dword [esp+0x4], 0x0
	mov esi, [ebp-0x44]
	mov [esp], esi
	call AddOpcodePos
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x40]
	mov [esp], eax
	call AddOpcodePos
	jmp EmitStatement_10
EmitStatement_870:
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
	call EmitSwitchStatement
	jmp EmitStatement_10
EmitStatement_820:
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
	call EmitOrEvalExpression
	test al, al
	jnz EmitStatement_240
EmitStatement_580:
	mov ecx, [ebp+0x8]
	mov edx, esi
	mov eax, edi
	call EmitOrEvalPrimitiveExpression
	test al, al
	jnz EmitStatement_250
EmitStatement_570:
	xor ecx, ecx
	mov edx, 0xfffffffe
	mov eax, 0x78
	call EmitOpcode
	mov dword [esp+0x4], 0x0
	mov esi, [ebp-0x44]
	mov [esp], esi
	call AddOpcodePos
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call AddOpcodePos
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x40]
	mov [esp], eax
	call AddOpcodePos
	mov dword [esp+0x4], 0x0
	mov eax, [ebx]
	mov eax, [eax+0x4]
	mov [esp], eax
	call AddOpcodePos
	mov edi, [ebx+0x4]
	test edi, edi
	jz EmitStatement_260
EmitStatement_270:
	mov eax, [edi]
	mov esi, [eax+0x4]
	mov eax, [eax]
	mov edx, [ebp+0x8]
	mov [esp], edx
	mov ecx, 0x1
	mov edx, esi
	call Scr_FindLocalVarIndex
	mov ebx, eax
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x33
	call EmitOpcode
	mov dword [esp], 0x1
	call TempMalloc
	mov [scrCompileGlob], eax
	mov [eax], bl
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call AddOpcodePos
	mov edi, [edi+0x4]
	test edi, edi
	jnz EmitStatement_270
EmitStatement_260:
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x34
	call EmitOpcode
	jmp EmitStatement_10
EmitStatement_830:
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
	jz EmitStatement_280
	xor esi, esi
	jmp EmitStatement_290
EmitStatement_310:
	add esi, 0x1
	mov ebx, [ebx+0x4]
	test ebx, ebx
	jz EmitStatement_300
EmitStatement_290:
	mov eax, [ebx]
	mov eax, [eax]
	mov ecx, [ebp+0x8]
	lea edx, [ebp-0x24]
	call EmitOrEvalExpression
	test al, al
	jz EmitStatement_310
	lea eax, [ebp-0x24]
	call EmitValue
	jmp EmitStatement_310
EmitStatement_840:
	mov edi, [ebx+0x4]
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x4d
	call EmitOpcode
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	call AddOpcodePos
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call AddOpcodePos
	jmp EmitStatement_10
EmitStatement_850:
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
	call EmitOpcode
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call AddOpcodePos
	mov edx, [ebp-0x3c]
	mov ebx, [edx]
	test ebx, ebx
	jz EmitStatement_320
	xor esi, esi
	jmp EmitStatement_330
EmitStatement_350:
	add esi, 0x1
	mov eax, [ebx+0x4]
	test eax, eax
	jz EmitStatement_340
	mov ebx, eax
EmitStatement_330:
	mov eax, [ebx]
	mov eax, [eax]
	mov ecx, [ebp+0x8]
	lea edx, [ebp-0x24]
	call EmitOrEvalExpression
	test al, al
	jz EmitStatement_350
	lea eax, [ebp-0x24]
	call EmitValue
	jmp EmitStatement_350
EmitStatement_900:
	mov edi, [ebx+0x4]
	mov edx, [ebp+0x8]
	mov eax, edi
	call EmitBreakStatement
	jmp EmitStatement_10
EmitStatement_910:
	mov edi, [ebx+0x4]
	mov edx, [ebp+0x8]
	mov eax, edi
	call EmitContinueStatement
	jmp EmitStatement_10
EmitStatement_920:
	mov edi, [ebx+0x4]
	mov eax, gScrVarPub
	cmp byte [eax+0x7], 0x0
	jz EmitStatement_360
	cmp byte [scrCompileGlob+0x1c], 0x0
	jz EmitStatement_370
EmitStatement_600:
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x85
EmitStatement_460:
	call EmitOpcode
	mov dword [esp], 0x1
	call TempMalloc
	mov [scrCompileGlob], eax
	mov byte [eax], 0x0
	jmp EmitStatement_10
EmitStatement_930:
	mov edi, [ebx+0x4]
	mov eax, gScrVarPub
	cmp byte [eax+0x7], 0x0
	jnz EmitStatement_380
EmitStatement_360:
	cmp byte [scrCompileGlob+0x1c], 0x0
	jnz EmitStatement_10
	mov [esp], edi
	call SL_RemoveRefToString
	jmp EmitStatement_10
EmitStatement_880:
	mov dword [esp+0x4], _cstring_illegal_case_sta
	mov eax, [ebx+0x8]
	mov [esp], eax
	call CompileError
	jmp EmitStatement_10
EmitStatement_890:
	mov dword [esp+0x4], _cstring_illegal_default_
	mov eax, [ebx+0x4]
	mov [esp], eax
	call CompileError
	jmp EmitStatement_10
EmitStatement_810:
	mov esi, [ebx+0x8]
	mov edi, [ebx+0x4]
	lea eax, [ebx+0xc]
	mov [esp], eax
	mov ecx, [ebp+0x8]
	mov edx, esi
	mov eax, edi
	call EmitDeveloperStatementList
	jmp EmitStatement_10
EmitStatement_170:
	xor edx, edx
	jmp EmitStatement_390
EmitStatement_340:
	neg esi
EmitStatement_470:
	mov ecx, [ebp+0x8]
	lea edx, [ebp-0x24]
	mov eax, edi
	call EmitOrEvalPrimitiveExpression
	test al, al
	jnz EmitStatement_400
EmitStatement_490:
	lea edx, [esi-0x2]
	xor ecx, ecx
	mov eax, 0x79
	call EmitOpcode
	mov dword [esp+0x4], 0x10
	mov ecx, [ebp-0x44]
	mov [esp], ecx
	call AddOpcodePos
	mov dword [esp+0x4], 0x0
	mov eax, [ebx]
	mov eax, [eax+0x4]
	mov [esp], eax
	call AddOpcodePos
	mov dword [esp+0x4], 0x0
	mov esi, [ebp-0x40]
	mov [esp], esi
	call AddOpcodePos
	jmp EmitStatement_10
EmitStatement_300:
	mov dword [ebp-0x2c], 0xfffffffe
	sub [ebp-0x2c], esi
	mov ecx, [ebp-0x3c]
	mov edx, [ecx]
EmitStatement_480:
	mov ebx, [edx+0x4]
	mov eax, [ebx]
	mov eax, [eax]
	mov ecx, [ebp+0x8]
	lea edx, [ebp-0x24]
	call EmitOrEvalExpression
	test al, al
	jnz EmitStatement_410
EmitStatement_560:
	mov ecx, [ebp+0x8]
	lea edx, [ebp-0x24]
	mov eax, edi
	call EmitOrEvalPrimitiveExpression
	test al, al
	jnz EmitStatement_420
EmitStatement_550:
	xor ecx, ecx
	mov edx, [ebp-0x2c]
	mov eax, 0x77
	call EmitOpcode
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x44]
	mov [esp], eax
	call AddOpcodePos
	mov dword [esp+0x4], 0x0
	mov edx, [ebp-0x44]
	mov [esp], edx
	call AddOpcodePos
	mov dword [esp+0x4], 0x0
	mov ecx, [ebp-0x40]
	mov [esp], ecx
	call AddOpcodePos
EmitStatement_430:
	mov dword [esp+0x4], 0x0
	mov eax, [ebx]
	mov eax, [eax+0x4]
	mov [esp], eax
	call AddOpcodePos
	mov ebx, [ebx+0x4]
	test ebx, ebx
	jnz EmitStatement_430
	mov dword [esp], 0x1
	call TempMalloc
	mov [scrCompileGlob], eax
	mov edx, esi
	mov [eax], dl
	jmp EmitStatement_260
EmitStatement_110:
	mov ecx, edx
	jmp EmitStatement_440
EmitStatement_380:
	cmp byte [scrCompileGlob+0x1c], 0x0
	jz EmitStatement_450
EmitStatement_610:
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x86
	jmp EmitStatement_460
EmitStatement_320:
	xor esi, esi
	jmp EmitStatement_470
EmitStatement_280:
	xor esi, esi
	mov dword [ebp-0x2c], 0xfffffffe
	jmp EmitStatement_480
EmitStatement_400:
	lea eax, [ebp-0x24]
	call EmitValue
	jmp EmitStatement_490
EmitStatement_160:
	mov eax, ebx
	call EmitValue
	jmp EmitStatement_500
EmitStatement_130:
	mov eax, ebx
	call EmitValue
	jmp EmitStatement_510
EmitStatement_120:
	mov eax, ebx
	call EmitValue
	jmp EmitStatement_520
EmitStatement_230:
	mov eax, ebx
	call EmitValue
	jmp EmitStatement_530
EmitStatement_220:
	mov eax, ebx
	call EmitValue
	jmp EmitStatement_540
EmitStatement_420:
	lea eax, [ebp-0x24]
	call EmitValue
	jmp EmitStatement_550
EmitStatement_410:
	lea eax, [ebp-0x24]
	call EmitValue
	jmp EmitStatement_560
EmitStatement_250:
	mov eax, esi
	call EmitValue
	jmp EmitStatement_570
EmitStatement_240:
	mov eax, esi
	call EmitValue
	jmp EmitStatement_580
EmitStatement_100:
	mov edx, [edi+0x8]
	mov ebx, [edi+0x4]
	mov esi, [ebp+0x8]
	mov [esp], esi
	mov ecx, 0x1
	mov eax, ebx
	call EmitCall
	jmp EmitStatement_10
EmitStatement_90:
	mov eax, ebx
	call EmitValue
	jmp EmitStatement_590
EmitStatement_370:
	mov [esp], edi
	call SL_RemoveRefToString
	jmp EmitStatement_600
EmitStatement_450:
	mov [esp], edi
	call SL_RemoveRefToString
	jmp EmitStatement_610
EmitStatement_20:
	mov eax, [ebp-0x3c]
	jmp EmitStatement_620
EmitStatement_40:
	cmp eax, 0x35
	jz EmitStatement_630
	cmp eax, 0x50
	jnz EmitStatement_10
EmitStatement_630:
	mov eax, _cstring_not_an_lvalue
	cmp byte [gScrCompilePub+0x20020], 0x0
	mov edx, _cstring__and_self_field_
	cmovnz eax, edx
	mov [esp+0x4], eax
	mov eax, [edi+0x8]
	mov [esp], eax
	call CompileError
	jmp EmitStatement_10
EmitStatement_30:
	mov eax, [edi+0xc]
	mov esi, [edi+0x8]
	mov ebx, [edi+0x4]
	mov ecx, [ebp+0x8]
	mov edx, eax
	mov eax, ebx
	call EmitPrimitiveExpressionFieldObject
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x2f
	call EmitOpcode
	mov dword [esp+0x4], 0x0
	mov edx, [ebp-0x44]
	mov [esp], edx
	call AddOpcodePos
	mov dword [esp], 0x2
	call TempMallocAlign
	mov [scrCompileGlob], eax
	cmp dword [gScrCompilePub+0x20024], 0x2
	jz EmitStatement_640
	cmp byte [scrCompileGlob+0x1c], 0x0
	jnz EmitStatement_650
EmitStatement_660:
	mov ebx, [scrCompileGlob]
	mov [esp], esi
	call SL_TransferToCanonicalString
	mov [ebx], ax
	jmp EmitStatement_10
EmitStatement_640:
	cmp byte [scrCompileGlob+0x1c], 0x0
	jnz EmitStatement_10
	mov [esp], esi
	call SL_RemoveRefToString
	jmp EmitStatement_10
EmitStatement_650:
	mov [esp], esi
	call SL_AddRefToString
	jmp EmitStatement_660
EmitStatement_70:
	mov ebx, [ebx+0x4]
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x14
	call EmitOpcode
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	call AddOpcodePos
	jmp EmitStatement_670
EmitStatement_60:
	mov ebx, [ebx+0x4]
	mov edx, [ebp+0x8]
	mov eax, ebx
	call EmitVariableExpressionRef
	jmp EmitStatement_670
	nop
	
	
EmitStatement_jumptab_0:
	dd EmitStatement_10
	dd EmitStatement_10
	dd EmitStatement_680
	dd EmitStatement_10
	dd EmitStatement_10
	dd EmitStatement_10
	dd EmitStatement_10
	dd EmitStatement_10
	dd EmitStatement_10
	dd EmitStatement_10
	dd EmitStatement_10
	dd EmitStatement_10
	dd EmitStatement_10
	dd EmitStatement_10
	dd EmitStatement_10
	dd EmitStatement_10
	dd EmitStatement_10
	dd EmitStatement_10
	dd EmitStatement_10
	dd EmitStatement_10
	dd EmitStatement_10
	dd EmitStatement_10
	dd EmitStatement_10
	dd EmitStatement_10
	dd EmitStatement_10
	dd EmitStatement_690
	dd EmitStatement_10
	dd EmitStatement_700
	dd EmitStatement_710
	dd EmitStatement_720
	dd EmitStatement_10
	dd EmitStatement_10
	dd EmitStatement_10
	dd EmitStatement_10
	dd EmitStatement_10
	dd EmitStatement_10
	dd EmitStatement_10
	dd EmitStatement_730
	dd EmitStatement_740
	dd EmitStatement_750
	dd EmitStatement_760
	dd EmitStatement_770
	dd EmitStatement_780
	dd EmitStatement_790
	dd EmitStatement_800
	dd EmitStatement_810
	dd EmitStatement_10
	dd EmitStatement_10
	dd EmitStatement_10
	dd EmitStatement_10
	dd EmitStatement_10
	dd EmitStatement_10
	dd EmitStatement_10
	dd EmitStatement_10
	dd EmitStatement_10
	dd EmitStatement_820
	dd EmitStatement_830
	dd EmitStatement_840
	dd EmitStatement_850
	dd EmitStatement_860
	dd EmitStatement_870
	dd EmitStatement_880
	dd EmitStatement_890
	dd EmitStatement_900
	dd EmitStatement_910
	dd EmitStatement_10
	dd EmitStatement_10
	dd EmitStatement_10
	dd EmitStatement_10
	dd EmitStatement_10
	dd EmitStatement_10
	dd EmitStatement_10
	dd EmitStatement_10
	dd EmitStatement_10
	dd EmitStatement_10
	dd EmitStatement_10
	dd EmitStatement_10
	dd EmitStatement_920
	dd EmitStatement_930


;EmitIfElseStatement(sval_u, sval_u, sval_u, sval_u, sval_u, unsigned char, unsigned int, scr_block_s*, sval_u*, sval_u*)
EmitIfElseStatement:
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
	call EmitOrEvalExpression
	test al, al
	jnz EmitIfElseStatement_10
EmitIfElseStatement_490:
	xor ecx, ecx
	mov edx, 0xffffffff
	mov eax, 0x5e
	call EmitOpcode
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call AddOpcodePos
	mov dword [esp], 0x2
	call TempMallocAlign
	mov [scrCompileGlob], eax
	mov word [eax], 0x0
	mov ebx, [scrCompileGlob]
	mov [ebp-0x78], ebx
	mov dword [esp], 0x0
	call TempMalloc
	mov [ebp-0x70], eax
	mov eax, [ebp+0x1c]
	mov edi, [eax]
	mov [ebp-0x44], edi
	mov edx, [ebp+0x18]
	add edx, 0x18
	mov [ebp-0x3c], edx
	mov [ebp-0x40], edx
	mov dword [ebp-0x60], 0x0
EmitIfElseStatement_110:
	mov eax, [ebp-0x60]
	cmp eax, [edi+0x8]
	jl EmitIfElseStatement_20
	mov edx, [ebp+0x18]
	mov eax, [edx+0x4]
	cmp [ebp-0x60], eax
	jge EmitIfElseStatement_30
EmitIfElseStatement_20:
	mov ebx, [ebp-0x40]
	mov ebx, [ebx]
	mov [ebp-0x64], ebx
	mov esi, [edi+0xc]
	mov ecx, esi
	cmp [ebp-0x60], esi
	jge EmitIfElseStatement_40
	mov eax, [ebp-0x44]
	cmp ebx, [eax+0x18]
	jz EmitIfElseStatement_50
	mov ebx, [ebp-0x60]
	lea edx, [edi+ebx*4+0x18]
EmitIfElseStatement_60:
	add ebx, 0x1
	cmp ebx, esi
	jz EmitIfElseStatement_40
	mov eax, [edx+0x4]
	add edx, 0x4
	cmp [ebp-0x64], eax
	jnz EmitIfElseStatement_60
EmitIfElseStatement_150:
	test ebx, ebx
	js EmitIfElseStatement_40
EmitIfElseStatement_130:
	mov eax, [edi+0x8]
	cmp ebx, eax
	jl EmitIfElseStatement_70
	add eax, 0x1
	mov [edi+0x8], eax
EmitIfElseStatement_70:
	cmp [ebp-0x60], ebx
	jge EmitIfElseStatement_80
	lea eax, [ebx*4]
	lea ecx, [eax+edi+0x14]
	lea edx, [eax+edi+0x18]
EmitIfElseStatement_90:
	sub ebx, 0x1
	mov eax, [ecx]
	mov [edx], eax
	sub ecx, 0x4
	sub edx, 0x4
	cmp [ebp-0x60], ebx
	jl EmitIfElseStatement_90
EmitIfElseStatement_80:
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
	jz EmitIfElseStatement_100
	mov eax, 0x1
	shl eax, cl
	or [edx+edi+0x10], al
EmitIfElseStatement_100:
	add dword [ebp-0x60], 0x1
	add dword [ebp-0x44], 0x4
	add dword [ebp-0x40], 0x4
	jmp EmitIfElseStatement_110
EmitIfElseStatement_40:
	cmp esi, 0x3f
	jg EmitIfElseStatement_120
EmitIfElseStatement_140:
	lea eax, [ecx+0x1]
	mov [edi+0xc], eax
	mov ebx, esi
	jmp EmitIfElseStatement_130
EmitIfElseStatement_120:
	mov dword [esp+0x4], _cstring_local_var_stack_
	mov dword [esp], 0x2
	call Com_Error
	mov ecx, [edi+0xc]
	jmp EmitIfElseStatement_140
EmitIfElseStatement_50:
	mov ebx, [ebp-0x60]
	jmp EmitIfElseStatement_150
EmitIfElseStatement_30:
	mov [edi+0x4], eax
	mov dword [edi], 0x0
	mov ebx, [ebp+0x1c]
	mov eax, [ebx]
	movzx edx, byte [ebp-0x85]
	mov [ebp-0x7c], edx
	mov [esp], eax
	mov ecx, [ebp+0x14]
	mov eax, [ebp-0x80]
	call EmitStatement
	mov eax, [ebp+0x1c]
	mov ebx, [eax]
	mov eax, [ebx]
	test eax, eax
	jnz EmitIfElseStatement_160
	mov eax, [ebx+0x4]
	mov esi, eax
	sub esi, [ebx+0x8]
	jnz EmitIfElseStatement_170
EmitIfElseStatement_160:
	mov eax, [ebx]
	test eax, eax
	jz EmitIfElseStatement_180
	mov dword [ebp-0x68], 0x0
EmitIfElseStatement_460:
	mov eax, gScrVarPub
	mov ebx, [eax+0x38]
	cmp byte [ebp-0x85], 0x0
	jz EmitIfElseStatement_190
	xor ecx, ecx
	xor edx, edx
	xor eax, eax
	call EmitOpcode
	mov dword [esp], 0x4
	call TempMallocAlign
	mov [scrCompileGlob], eax
	mov dword [eax], 0x0
	mov dword [esp+0x4], 0x1
	mov edx, [ebp+0x14]
	mov [esp], edx
	call AddOpcodePos
	mov dword [ebp-0x74], 0x0
	mov dword [ebp-0x6c], 0x0
EmitIfElseStatement_450:
	lea edx, [ebx+0x1]
	mov eax, gScrVarPub
	mov [eax+0x38], edx
	mov dword [esp], 0x0
	call TempMalloc
	sub eax, [ebp-0x70]
	mov ebx, [ebp-0x78]
	mov [ebx], ax
	mov eax, [ebp+0x20]
	mov edi, [eax]
	mov [ebp-0x4c], edi
	mov edx, [ebp-0x3c]
	mov [ebp-0x48], edx
	mov dword [ebp-0x58], 0x0
EmitIfElseStatement_290:
	mov eax, [ebp-0x58]
	cmp eax, [edi+0x8]
	jl EmitIfElseStatement_200
	mov edx, [ebp+0x18]
	mov eax, [edx+0x4]
	cmp [ebp-0x58], eax
	jge EmitIfElseStatement_210
EmitIfElseStatement_200:
	mov ebx, [ebp-0x48]
	mov ebx, [ebx]
	mov [ebp-0x5c], ebx
	mov esi, [edi+0xc]
	mov ecx, esi
	cmp [ebp-0x58], esi
	jge EmitIfElseStatement_220
	mov eax, ebx
	mov ebx, [ebp-0x4c]
	cmp [ebx+0x18], eax
	jz EmitIfElseStatement_230
	mov ebx, [ebp-0x58]
	lea edx, [edi+ebx*4+0x18]
EmitIfElseStatement_240:
	add ebx, 0x1
	cmp esi, ebx
	jz EmitIfElseStatement_220
	mov eax, [edx+0x4]
	add edx, 0x4
	cmp eax, [ebp-0x5c]
	jnz EmitIfElseStatement_240
EmitIfElseStatement_330:
	test ebx, ebx
	js EmitIfElseStatement_220
EmitIfElseStatement_310:
	mov eax, [edi+0x8]
	cmp ebx, eax
	jl EmitIfElseStatement_250
	add eax, 0x1
	mov [edi+0x8], eax
EmitIfElseStatement_250:
	cmp [ebp-0x58], ebx
	jge EmitIfElseStatement_260
	lea eax, [ebx*4]
	lea ecx, [eax+edi+0x14]
	lea edx, [eax+edi+0x18]
EmitIfElseStatement_270:
	sub ebx, 0x1
	mov eax, [ecx]
	mov [edx], eax
	sub ecx, 0x4
	sub edx, 0x4
	cmp [ebp-0x58], ebx
	jl EmitIfElseStatement_270
EmitIfElseStatement_260:
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
	jz EmitIfElseStatement_280
	mov eax, 0x1
	shl eax, cl
	or [edx+edi+0x10], al
EmitIfElseStatement_280:
	add dword [ebp-0x58], 0x1
	add dword [ebp-0x4c], 0x4
	add dword [ebp-0x48], 0x4
	jmp EmitIfElseStatement_290
EmitIfElseStatement_220:
	cmp esi, 0x3f
	jg EmitIfElseStatement_300
EmitIfElseStatement_320:
	lea eax, [ecx+0x1]
	mov [edi+0xc], eax
	mov ebx, esi
	jmp EmitIfElseStatement_310
EmitIfElseStatement_300:
	mov dword [esp+0x4], _cstring_local_var_stack_
	mov dword [esp], 0x2
	call Com_Error
	mov ecx, [edi+0xc]
	jmp EmitIfElseStatement_320
EmitIfElseStatement_230:
	mov ebx, [ebp-0x58]
	jmp EmitIfElseStatement_330
EmitIfElseStatement_210:
	mov [edi+0x4], eax
	mov dword [edi], 0x0
	mov ebx, [ebp+0x20]
	mov eax, [ebx]
	mov [esp], eax
	mov ecx, [ebp+0x14]
	mov edx, [ebp-0x7c]
	mov eax, [ebp-0x84]
	call EmitStatement
	mov eax, [ebp+0x20]
	mov ebx, [eax]
	mov edi, gScrVarPub
	mov esi, [edi+0x38]
	mov eax, [ebp-0x7c]
	test eax, eax
	jnz EmitIfElseStatement_340
	mov ecx, [ebx]
	test ecx, ecx
	jz EmitIfElseStatement_350
EmitIfElseStatement_470:
	lea eax, [esi+0x1]
	mov [edi+0x38], eax
	mov ebx, [ebp+0x20]
	mov eax, [ebx]
	mov edx, [eax]
	test edx, edx
	jnz EmitIfElseStatement_360
	mov edx, [ebp-0x68]
	mov [ebp+edx*4-0x20], eax
	add edx, 0x1
	mov [ebp-0x68], edx
EmitIfElseStatement_360:
	cmp byte [ebp-0x85], 0x0
	jz EmitIfElseStatement_370
EmitIfElseStatement_480:
	mov eax, [ebp-0x68]
	test eax, eax
	jz EmitIfElseStatement_380
	mov eax, [ebp-0x20]
	mov edi, [eax+0x8]
	cmp dword [ebp-0x68], 0x1
	jle EmitIfElseStatement_390
	mov edx, 0x1
EmitIfElseStatement_400:
	mov eax, [ebp+edx*4-0x20]
	mov eax, [eax+0x8]
	cmp edi, eax
	cmovg edi, eax
	add edx, 0x1
	cmp [ebp-0x68], edx
	jnz EmitIfElseStatement_400
EmitIfElseStatement_390:
	mov eax, [ebp+0x18]
	mov [eax+0x4], edi
	test edi, edi
	jle EmitIfElseStatement_380
	mov dword [ebp-0x50], 0x0
EmitIfElseStatement_440:
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
	jnz EmitIfElseStatement_410
	mov eax, [ebp-0x68]
	test eax, eax
	jle EmitIfElseStatement_420
	mov eax, [ebp-0x20]
	movzx eax, byte [ebx+eax+0x10]
	sar eax, cl
	test al, 0x1
	jz EmitIfElseStatement_410
	xor edx, edx
EmitIfElseStatement_430:
	add edx, 0x1
	cmp [ebp-0x68], edx
	jz EmitIfElseStatement_420
	mov eax, [ebp+edx*4-0x20]
	movzx eax, byte [ebx+eax+0x10]
	sar eax, cl
	test al, 0x1
	jnz EmitIfElseStatement_430
EmitIfElseStatement_410:
	add dword [ebp-0x50], 0x1
	cmp edi, [ebp-0x50]
	jnz EmitIfElseStatement_440
EmitIfElseStatement_380:
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
EmitIfElseStatement_190:
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x62
	call EmitOpcode
	mov dword [esp+0x4], 0x1
	mov eax, [ebp+0xc]
	mov [esp], eax
	call AddOpcodePos
	mov dword [esp], 0x4
	call TempMallocAlign
	mov [scrCompileGlob], eax
	mov dword [eax], 0x0
	mov edx, [scrCompileGlob]
	mov [ebp-0x74], edx
	mov dword [esp], 0x0
	call TempMalloc
	mov [ebp-0x6c], eax
	jmp EmitIfElseStatement_450
EmitIfElseStatement_180:
	mov [ebp-0x20], ebx
	mov dword [ebp-0x68], 0x1
	jmp EmitIfElseStatement_460
EmitIfElseStatement_350:
	mov eax, [ebx+0x4]
	sub eax, [ebx+0x8]
	mov [ebp-0x54], eax
	jz EmitIfElseStatement_470
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x17
	call EmitOpcode
	mov dword [esp], 0x1
	call TempMalloc
	mov [scrCompileGlob], eax
	movzx edx, byte [ebp-0x54]
	mov [eax], dl
	mov eax, [ebx+0x8]
	mov [ebx+0x4], eax
	jmp EmitIfElseStatement_470
EmitIfElseStatement_420:
	mov eax, 0x1
	shl eax, cl
	or esi, eax
	mov eax, esi
	mov edx, [ebp+0x18]
	mov [ebx+edx+0x10], al
	add dword [ebp-0x50], 0x1
	cmp edi, [ebp-0x50]
	jnz EmitIfElseStatement_440
	jmp EmitIfElseStatement_380
EmitIfElseStatement_340:
	xor ecx, ecx
	xor edx, edx
	xor eax, eax
	call EmitOpcode
	mov dword [esp+0x4], 0x1
	mov edx, [ebp+0x14]
	mov [esp], edx
	call AddOpcodePos
	jmp EmitIfElseStatement_470
EmitIfElseStatement_370:
	mov dword [esp], 0x0
	call TempMalloc
	sub eax, [ebp-0x6c]
	mov ebx, [ebp-0x74]
	mov [ebx], eax
	jmp EmitIfElseStatement_480
EmitIfElseStatement_10:
	mov eax, ebx
	call EmitValue
	jmp EmitIfElseStatement_490
EmitIfElseStatement_170:
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x17
	call EmitOpcode
	mov dword [esp], 0x1
	call TempMalloc
	mov [scrCompileGlob], eax
	mov edx, esi
	mov [eax], dl
	mov eax, [ebx+0x8]
	mov [ebx+0x4], eax
	mov eax, [ebp+0x1c]
	mov ebx, [eax]
	jmp EmitIfElseStatement_160


;EmitWhileStatement(sval_u, sval_u, sval_u, sval_u, scr_block_s*, sval_u*)
EmitWhileStatement:
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
EmitWhileStatement_100:
	mov eax, [ebp-0x48]
	cmp eax, [edi+0x8]
	jl EmitWhileStatement_10
	mov edx, [ebp+0xc]
	mov eax, [edx+0x4]
	cmp [ebp-0x48], eax
	jge EmitWhileStatement_20
EmitWhileStatement_10:
	mov edx, [ebp-0x2c]
	mov edx, [edx]
	mov [ebp-0x4c], edx
	mov esi, [edi+0xc]
	mov ecx, esi
	cmp [ebp-0x48], esi
	jge EmitWhileStatement_30
	mov ebx, [ebp-0x30]
	cmp edx, [ebx+0x18]
	jz EmitWhileStatement_40
	mov ebx, [ebp-0x48]
	lea edx, [edi+ebx*4+0x18]
EmitWhileStatement_50:
	add ebx, 0x1
	cmp esi, ebx
	jz EmitWhileStatement_30
	mov eax, [edx+0x4]
	add edx, 0x4
	cmp [ebp-0x4c], eax
	jnz EmitWhileStatement_50
EmitWhileStatement_140:
	test ebx, ebx
	js EmitWhileStatement_30
EmitWhileStatement_120:
	mov eax, [edi+0x8]
	cmp ebx, eax
	jl EmitWhileStatement_60
	add eax, 0x1
	mov [edi+0x8], eax
EmitWhileStatement_60:
	cmp [ebp-0x48], ebx
	jge EmitWhileStatement_70
	lea eax, [ebx*4]
	lea ecx, [eax+edi+0x14]
	lea edx, [eax+edi+0x18]
EmitWhileStatement_80:
	sub ebx, 0x1
	mov eax, [ecx]
	mov [edx], eax
	sub ecx, 0x4
	sub edx, 0x4
	cmp [ebp-0x48], ebx
	jl EmitWhileStatement_80
EmitWhileStatement_70:
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
	jz EmitWhileStatement_90
	mov eax, 0x1
	shl eax, cl
	or [edx+edi+0x10], al
EmitWhileStatement_90:
	add dword [ebp-0x48], 0x1
	add dword [ebp-0x30], 0x4
	add dword [ebp-0x2c], 0x4
	jmp EmitWhileStatement_100
EmitWhileStatement_30:
	cmp esi, 0x3f
	jg EmitWhileStatement_110
EmitWhileStatement_130:
	lea eax, [ecx+0x1]
	mov [edi+0xc], eax
	mov ebx, esi
	jmp EmitWhileStatement_120
EmitWhileStatement_110:
	mov dword [esp+0x4], _cstring_local_var_stack_
	mov dword [esp], 0x2
	call Com_Error
	mov ecx, [edi+0xc]
	jmp EmitWhileStatement_130
EmitWhileStatement_40:
	mov ebx, [ebp-0x48]
	jmp EmitWhileStatement_140
EmitWhileStatement_20:
	mov [edi+0x4], eax
	mov dword [edi], 0x0
	mov ecx, [ebp+0x10]
	mov esi, [ecx]
	mov ebx, [esi+0x4]
	mov [ebp-0x44], ebx
	mov eax, [esi+0x8]
	cmp ebx, eax
	jz EmitWhileStatement_150
	jl EmitWhileStatement_160
EmitWhileStatement_370:
	mov [esi+0x4], eax
	mov ebx, [ebp+0x10]
	mov esi, [ebx]
EmitWhileStatement_150:
	mov eax, [esi+0x4]
	mov esi, [ebp+0xc]
	mov [esi+0x4], eax
	mov dword [esp], 0x0
	call TempMalloc
	mov [ebp-0x7c], eax
	lea ebx, [ebp-0x28]
	mov ecx, esi
	mov edx, ebx
	mov eax, [ebp-0x80]
	call EmitOrEvalExpression
	test al, al
	jz EmitWhileStatement_170
	mov eax, [ebp-0x24]
	sub eax, 0x5
	cmp eax, 0x1
	jbe EmitWhileStatement_180
	mov eax, ebx
	call EmitValue
EmitWhileStatement_170:
	xor edi, edi
EmitWhileStatement_420:
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
	jnz EmitWhileStatement_190
	xor ecx, ecx
	mov edx, 0xffffffff
	mov eax, 0x5e
	call EmitOpcode
	mov dword [esp+0x4], 0x0
	mov ebx, [ebp-0x88]
	mov [esp], ebx
	call AddOpcodePos
	mov dword [esp], 0x2
	call TempMallocAlign
	mov [scrCompileGlob], eax
	mov word [eax], 0x0
	mov esi, [scrCompileGlob]
	mov dword [esp], 0x0
	call TempMalloc
	mov [ebp-0x78], eax
	mov dword [ebp-0x5c], 0x0
EmitWhileStatement_340:
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
	call EmitStatement
	mov ecx, [ebp+0x10]
	mov eax, [ecx]
	cmp dword [eax], 0x3
	jz EmitWhileStatement_200
	mov dword [eax], 0x0
EmitWhileStatement_200:
	mov byte [scrCompileGlob+0x2c], 0x0
	mov byte [scrCompileGlob+0x34], 0x0
	mov dword [esp], 0x0
	call TempMalloc
	mov ebx, eax
	mov ecx, [scrCompileGlob+0x38]
	test ecx, ecx
	jz EmitWhileStatement_210
EmitWhileStatement_220:
	mov edx, [ecx]
	mov eax, ebx
	sub eax, [ecx+0x4]
	mov [edx], eax
	mov ecx, [ecx+0x8]
	test ecx, ecx
	jnz EmitWhileStatement_220
EmitWhileStatement_210:
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x63
	call EmitOpcode
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call AddOpcodePos
	mov ebx, [ebp-0x84]
	cmp dword [ebx], 0x2c
	jz EmitWhileStatement_230
EmitWhileStatement_430:
	mov dword [esp], 0x2
	call TempMallocAlign
	mov [scrCompileGlob], eax
	mov word [eax], 0x0
	mov dword [esp], 0x0
	call TempMalloc
	sub eax, [ebp-0x7c]
	mov edx, [scrCompileGlob]
	mov [edx], ax
	test esi, esi
	jz EmitWhileStatement_240
	mov dword [esp], 0x0
	call TempMalloc
	sub eax, [ebp-0x78]
	mov [esi], ax
EmitWhileStatement_240:
	mov dword [esp], 0x0
	call TempMalloc
	mov ebx, eax
	mov ecx, [scrCompileGlob+0x30]
	test ecx, ecx
	jz EmitWhileStatement_250
EmitWhileStatement_260:
	mov edx, [ecx]
	mov eax, ebx
	sub eax, [ecx+0x4]
	mov [edx], eax
	mov ecx, [ecx+0x8]
	test ecx, ecx
	jnz EmitWhileStatement_260
EmitWhileStatement_250:
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
	jz EmitWhileStatement_270
	mov edx, [ebp-0x1c]
	mov [ebp-0x3c], edx
	test edx, edx
	jz EmitWhileStatement_270
	mov ecx, [ebp-0x5c]
	mov eax, [ecx]
	mov edi, [eax+0x8]
	sub edx, 0x1
	jle EmitWhileStatement_280
	mov edx, 0x1
	mov ebx, [ebp-0x5c]
EmitWhileStatement_290:
	mov eax, [ebx+edx*4]
	mov eax, [eax+0x8]
	cmp eax, edi
	cmovl edi, eax
	add edx, 0x1
	cmp [ebp-0x3c], edx
	jnz EmitWhileStatement_290
EmitWhileStatement_280:
	mov esi, [ebp+0xc]
	mov [esi+0x4], edi
	test edi, edi
	jle EmitWhileStatement_270
	mov dword [ebp-0x38], 0x0
EmitWhileStatement_330:
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
	jnz EmitWhileStatement_300
	mov eax, [ebp-0x3c]
	test eax, eax
	jle EmitWhileStatement_310
	mov edx, [ebp-0x5c]
	mov eax, [edx]
	movzx eax, byte [ebx+eax+0x10]
	sar eax, cl
	test al, 0x1
	jz EmitWhileStatement_300
	xor edx, edx
EmitWhileStatement_320:
	add edx, 0x1
	cmp [ebp-0x3c], edx
	jz EmitWhileStatement_310
	mov esi, [ebp-0x5c]
	mov esi, [esi+edx*4]
	mov [ebp-0x8c], esi
	movzx eax, byte [ebx+esi+0x10]
	sar eax, cl
	test al, 0x1
	jnz EmitWhileStatement_320
EmitWhileStatement_300:
	add dword [ebp-0x38], 0x1
	cmp [ebp-0x38], edi
	jnz EmitWhileStatement_330
EmitWhileStatement_270:
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
EmitWhileStatement_190:
	mov dword [esp], 0x1000
	call Hunk_AllocateTempMemoryHigh
	mov [ebp-0x5c], eax
	lea eax, [ebp-0x1c]
	mov [scrCompileGlob+0x40], eax
	xor esi, esi
	mov dword [ebp-0x78], 0x0
	jmp EmitWhileStatement_340
EmitWhileStatement_160:
	mov ecx, [ebp-0x44]
	lea ecx, [esi+ecx*4+0x18]
	mov [ebp-0x34], ecx
	jmp EmitWhileStatement_350
EmitWhileStatement_380:
	cmp byte [scrCompileGlob+0x1c], 0x0
	jnz EmitWhileStatement_360
EmitWhileStatement_400:
	mov ebx, [scrCompileGlob]
	mov [esp], edi
	call SL_TransferToCanonicalString
	mov [ebx], ax
EmitWhileStatement_390:
	movzx ecx, byte [ebp-0x3d]
	mov [scrCompileGlob+0x1c], cl
	add dword [ebp-0x44], 0x1
	mov eax, [esi+0x8]
	add dword [ebp-0x34], 0x4
	cmp [ebp-0x44], eax
	jge EmitWhileStatement_370
EmitWhileStatement_350:
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x16
	call EmitOpcode
	mov eax, [ebp-0x34]
	mov edi, [eax]
	movzx edx, byte [scrCompileGlob+0x1c]
	mov [ebp-0x3d], dl
	mov byte [scrCompileGlob+0x1c], 0x1
	mov dword [esp], 0x2
	call TempMallocAlign
	mov [scrCompileGlob], eax
	cmp dword [gScrCompilePub+0x20024], 0x2
	jnz EmitWhileStatement_380
	cmp byte [scrCompileGlob+0x1c], 0x0
	jnz EmitWhileStatement_390
	mov [esp], edi
	call SL_RemoveRefToString
	jmp EmitWhileStatement_390
EmitWhileStatement_310:
	mov eax, 0x1
	shl eax, cl
	or [ebp-0x99], al
	movzx eax, byte [ebp-0x99]
	mov edx, [ebp+0xc]
	mov [ebx+edx+0x10], al
	add dword [ebp-0x38], 0x1
	cmp [ebp-0x38], edi
	jnz EmitWhileStatement_330
	jmp EmitWhileStatement_270
EmitWhileStatement_360:
	mov [esp], edi
	call SL_AddRefToString
	jmp EmitWhileStatement_400
EmitWhileStatement_180:
	mov [esp], ebx
	call Scr_CastBool
	mov eax, [ebp-0x28]
	test eax, eax
	jz EmitWhileStatement_410
	mov edi, 0x1
	jmp EmitWhileStatement_420
EmitWhileStatement_230:
	mov dword [esp+0x4], 0x1
	mov eax, [ebx+0xc]
	mov [esp], eax
	call AddOpcodePos
	jmp EmitWhileStatement_430
EmitWhileStatement_410:
	mov dword [esp+0x4], _cstring_conditional_expr
	mov eax, [ebp-0x88]
	mov [esp], eax
	call CompileError
	mov edi, 0x1
	jmp EmitWhileStatement_420
	nop


;EmitIfStatement(sval_u, sval_u, sval_u, unsigned char, unsigned int, scr_block_s*, sval_u*)
EmitIfStatement:
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
	call EmitOrEvalExpression
	test al, al
	jnz EmitIfStatement_10
EmitIfStatement_180:
	xor ecx, ecx
	mov edx, 0xffffffff
	mov eax, 0x5e
	call EmitOpcode
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call AddOpcodePos
	mov dword [esp], 0x2
	call TempMallocAlign
	mov [scrCompileGlob], eax
	mov word [eax], 0x0
	mov ebx, [scrCompileGlob]
	mov [ebp-0x40], ebx
	mov dword [esp], 0x0
	call TempMalloc
	mov [ebp-0x3c], eax
	mov eax, [ebp+0x14]
	mov edi, [eax]
	mov [ebp-0x30], edi
	mov edx, [ebp+0x10]
	add edx, 0x18
	mov [ebp-0x2c], edx
	mov dword [ebp-0x34], 0x0
EmitIfStatement_110:
	mov eax, [ebp-0x34]
	cmp eax, [edi+0x8]
	jl EmitIfStatement_20
	mov edx, [ebp+0x10]
	mov eax, [edx+0x4]
	cmp [ebp-0x34], eax
	jge EmitIfStatement_30
EmitIfStatement_20:
	mov ebx, [ebp-0x2c]
	mov ebx, [ebx]
	mov [ebp-0x38], ebx
	mov esi, [edi+0xc]
	mov ecx, esi
	cmp [ebp-0x34], esi
	jge EmitIfStatement_40
	mov eax, [ebp-0x30]
	cmp [eax+0x18], ebx
	jz EmitIfStatement_50
	mov ebx, [ebp-0x34]
	lea edx, [edi+ebx*4+0x18]
EmitIfStatement_60:
	add ebx, 0x1
	cmp ebx, esi
	jz EmitIfStatement_40
	mov eax, [edx+0x4]
	add edx, 0x4
	cmp [ebp-0x38], eax
	jnz EmitIfStatement_60
EmitIfStatement_150:
	test ebx, ebx
	js EmitIfStatement_40
EmitIfStatement_130:
	mov eax, [edi+0x8]
	cmp ebx, eax
	jl EmitIfStatement_70
	add eax, 0x1
	mov [edi+0x8], eax
EmitIfStatement_70:
	cmp [ebp-0x34], ebx
	jge EmitIfStatement_80
	lea eax, [ebx*4]
	lea ecx, [eax+edi+0x14]
	lea edx, [eax+edi+0x18]
EmitIfStatement_90:
	sub ebx, 0x1
	mov eax, [ecx]
	mov [edx], eax
	sub ecx, 0x4
	sub edx, 0x4
	cmp [ebp-0x34], ebx
	jl EmitIfStatement_90
EmitIfStatement_80:
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
	jz EmitIfStatement_100
	mov eax, 0x1
	shl eax, cl
	or [edx+edi+0x10], al
EmitIfStatement_100:
	add dword [ebp-0x34], 0x1
	add dword [ebp-0x30], 0x4
	add dword [ebp-0x2c], 0x4
	jmp EmitIfStatement_110
EmitIfStatement_40:
	cmp esi, 0x3f
	jg EmitIfStatement_120
EmitIfStatement_140:
	lea eax, [ecx+0x1]
	mov [edi+0xc], eax
	mov ebx, esi
	jmp EmitIfStatement_130
EmitIfStatement_120:
	mov dword [esp+0x4], _cstring_local_var_stack_
	mov dword [esp], 0x2
	call Com_Error
	mov ecx, [edi+0xc]
	jmp EmitIfStatement_140
EmitIfStatement_50:
	mov ebx, [ebp-0x34]
	jmp EmitIfStatement_150
EmitIfStatement_30:
	mov [edi+0x4], eax
	mov dword [edi], 0x0
	mov ebx, [ebp+0x14]
	mov eax, [ebx]
	movzx ebx, byte [ebp-0x45]
	mov [esp], eax
	mov ecx, [ebp+0xc]
	mov edx, ebx
	mov eax, [ebp-0x44]
	call EmitStatement
	mov eax, [ebp+0x14]
	mov esi, [eax]
	mov edx, gScrVarPub
	mov edi, [edx+0x38]
	test ebx, ebx
	jnz EmitIfStatement_160
	mov eax, [esi]
	test eax, eax
	jnz EmitIfStatement_170
	mov eax, [esi+0x4]
	mov ebx, eax
	sub ebx, [esi+0x8]
	jz EmitIfStatement_170
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x17
	call EmitOpcode
	mov dword [esp], 0x1
	call TempMalloc
	mov [scrCompileGlob], eax
	mov [eax], bl
	mov eax, [esi+0x8]
	mov [esi+0x4], eax
EmitIfStatement_170:
	lea eax, [edi+0x1]
	mov edx, gScrVarPub
	mov [edx+0x38], eax
	mov dword [esp], 0x0
	call TempMalloc
	sub eax, [ebp-0x3c]
	mov ebx, [ebp-0x40]
	mov [ebx], ax
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
EmitIfStatement_160:
	xor ecx, ecx
	xor edx, edx
	xor eax, eax
	call EmitOpcode
	mov dword [esp+0x4], 0x1
	mov ebx, [ebp+0xc]
	mov [esp], ebx
	call AddOpcodePos
	jmp EmitIfStatement_170
EmitIfStatement_10:
	mov eax, esi
	call EmitValue
	jmp EmitIfStatement_180


;EmitForStatement(sval_u, sval_u, sval_u, sval_u, sval_u, sval_u, scr_block_s*, sval_u*, sval_u*)
EmitForStatement:
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
	call EmitStatement
	mov ecx, [ebp+0x18]
	mov edi, [ecx]
	mov [ebp-0x44], edi
	mov ebx, [ebp+0x14]
	add ebx, 0x18
	mov [ebp-0x3c], ebx
	mov [ebp-0x40], ebx
	mov dword [ebp-0x74], 0x0
EmitForStatement_100:
	mov esi, [ebp-0x74]
	cmp esi, [edi+0x8]
	jl EmitForStatement_10
	mov edx, [ebp+0x14]
	mov eax, [edx+0x4]
	cmp esi, eax
	jge EmitForStatement_20
EmitForStatement_10:
	mov esi, [ebp-0x40]
	mov esi, [esi]
	mov [ebp-0x78], esi
	mov esi, [edi+0xc]
	mov ecx, esi
	cmp [ebp-0x74], esi
	jge EmitForStatement_30
	mov edx, [ebp-0x78]
	mov eax, [ebp-0x44]
	cmp edx, [eax+0x18]
	jz EmitForStatement_40
	mov ebx, [ebp-0x74]
	lea edx, [edi+ebx*4+0x18]
EmitForStatement_50:
	add ebx, 0x1
	cmp ebx, esi
	jz EmitForStatement_30
	mov eax, [edx+0x4]
	add edx, 0x4
	cmp [ebp-0x78], eax
	jnz EmitForStatement_50
EmitForStatement_140:
	test ebx, ebx
	js EmitForStatement_30
EmitForStatement_120:
	mov eax, [edi+0x8]
	cmp ebx, eax
	jl EmitForStatement_60
	add eax, 0x1
	mov [edi+0x8], eax
EmitForStatement_60:
	cmp [ebp-0x74], ebx
	jge EmitForStatement_70
	lea eax, [ebx*4]
	lea ecx, [eax+edi+0x14]
	lea edx, [eax+edi+0x18]
EmitForStatement_80:
	sub ebx, 0x1
	mov eax, [ecx]
	mov [edx], eax
	sub ecx, 0x4
	sub edx, 0x4
	cmp [ebp-0x74], ebx
	jl EmitForStatement_80
EmitForStatement_70:
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
	jz EmitForStatement_90
	mov eax, 0x1
	shl eax, cl
	or [edx+edi+0x10], al
EmitForStatement_90:
	add dword [ebp-0x74], 0x1
	add dword [ebp-0x44], 0x4
	add dword [ebp-0x40], 0x4
	jmp EmitForStatement_100
EmitForStatement_30:
	cmp esi, 0x3f
	jg EmitForStatement_110
EmitForStatement_130:
	lea eax, [ecx+0x1]
	mov [edi+0xc], eax
	mov ebx, esi
	jmp EmitForStatement_120
EmitForStatement_110:
	mov dword [esp+0x4], _cstring_local_var_stack_
	mov dword [esp], 0x2
	call Com_Error
	mov ecx, [edi+0xc]
	jmp EmitForStatement_130
EmitForStatement_40:
	mov ebx, [ebp-0x74]
	jmp EmitForStatement_140
EmitForStatement_20:
	mov [edi+0x4], eax
	mov dword [edi], 0x0
	mov ecx, [ebp+0x18]
	mov esi, [ecx]
	mov ebx, [esi+0x4]
	mov [ebp-0x70], ebx
	mov eax, [esi+0x8]
	cmp ebx, eax
	jz EmitForStatement_150
	jl EmitForStatement_160
EmitForStatement_600:
	mov [esi+0x4], eax
	mov ebx, [ebp+0x18]
	mov esi, [ebx]
EmitForStatement_150:
	mov eax, [esi+0x4]
	mov esi, [ebp+0x14]
	mov [esi+0x4], eax
	mov eax, [ebp+0x1c]
	mov edi, [eax]
	mov [ebp-0x50], edi
	mov edx, [ebp-0x3c]
	mov [ebp-0x4c], edx
	mov dword [ebp-0x64], 0x0
EmitForStatement_260:
	mov esi, [ebp-0x64]
	cmp esi, [edi+0x8]
	jl EmitForStatement_170
	mov edx, [ebp+0x14]
	mov eax, [edx+0x4]
	cmp esi, eax
	jge EmitForStatement_180
EmitForStatement_170:
	mov ecx, [ebp-0x4c]
	mov ecx, [ecx]
	mov [ebp-0x68], ecx
	mov esi, [edi+0xc]
	mov ecx, esi
	cmp [ebp-0x64], esi
	jge EmitForStatement_190
	mov eax, [ebp-0x68]
	mov ebx, [ebp-0x50]
	cmp eax, [ebx+0x18]
	jz EmitForStatement_200
	mov ebx, [ebp-0x64]
	lea edx, [edi+ebx*4+0x18]
EmitForStatement_210:
	add ebx, 0x1
	cmp esi, ebx
	jz EmitForStatement_190
	mov eax, [edx+0x4]
	add edx, 0x4
	cmp [ebp-0x68], eax
	jnz EmitForStatement_210
EmitForStatement_300:
	test ebx, ebx
	js EmitForStatement_190
EmitForStatement_280:
	mov eax, [edi+0x8]
	cmp ebx, eax
	jl EmitForStatement_220
	add eax, 0x1
	mov [edi+0x8], eax
EmitForStatement_220:
	cmp [ebp-0x64], ebx
	jge EmitForStatement_230
	lea eax, [ebx*4]
	lea ecx, [eax+edi+0x14]
	lea edx, [eax+edi+0x18]
EmitForStatement_240:
	sub ebx, 0x1
	mov eax, [ecx]
	mov [edx], eax
	sub ecx, 0x4
	sub edx, 0x4
	cmp [ebp-0x64], ebx
	jl EmitForStatement_240
EmitForStatement_230:
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
	jz EmitForStatement_250
	mov eax, 0x1
	shl eax, cl
	or [edx+edi+0x10], al
EmitForStatement_250:
	add dword [ebp-0x64], 0x1
	add dword [ebp-0x50], 0x4
	add dword [ebp-0x4c], 0x4
	jmp EmitForStatement_260
EmitForStatement_190:
	cmp esi, 0x3f
	jg EmitForStatement_270
EmitForStatement_290:
	lea eax, [ecx+0x1]
	mov [edi+0xc], eax
	mov ebx, esi
	jmp EmitForStatement_280
EmitForStatement_270:
	mov dword [esp+0x4], _cstring_local_var_stack_
	mov dword [esp], 0x2
	call Com_Error
	mov ecx, [edi+0xc]
	jmp EmitForStatement_290
EmitForStatement_200:
	mov ebx, [ebp-0x64]
	jmp EmitForStatement_300
EmitForStatement_180:
	mov [edi+0x4], eax
	mov dword [edi], 0x0
	mov dword [esp], 0x0
	call TempMalloc
	mov [ebp-0xb4], eax
	mov ecx, [ebp-0xb8]
	cmp dword [ecx], 0x41
	jz EmitForStatement_310
EmitForStatement_700:
	mov byte [ebp-0x95], 0x1
EmitForStatement_670:
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
	jnz EmitForStatement_320
	xor ecx, ecx
	mov edx, 0xffffffff
	mov eax, 0x5e
	call EmitOpcode
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0xc]
	mov [esp], eax
	call AddOpcodePos
	mov dword [esp], 0x2
	call TempMallocAlign
	mov [scrCompileGlob], eax
	mov word [eax], 0x0
	mov edx, [scrCompileGlob]
	mov [ebp-0xb0], edx
	mov dword [esp], 0x0
	call TempMalloc
	mov [ebp-0xac], eax
	mov dword [ebp-0x8c], 0x0
EmitForStatement_570:
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
	call EmitStatement
	mov esi, [ebp+0x18]
	mov ebx, [esi]
	mov eax, [ebx]
	test eax, eax
	jnz EmitForStatement_330
	mov edi, [scrCompileGlob+0x48]
	test edi, edi
	jz EmitForStatement_330
	cmp dword [gScrCompilePub+0x20024], 0x2
	jz EmitForStatement_330
	mov eax, [scrCompileGlob+0x4c]
	cmp dword [eax], 0x3ff
	jg EmitForStatement_340
EmitForStatement_690:
	mov edx, [eax]
	mov eax, [scrCompileGlob+0x48]
	mov [eax+edx*4], ebx
	mov eax, [scrCompileGlob+0x4c]
	add dword [eax], 0x1
EmitForStatement_330:
	mov byte [scrCompileGlob+0x2c], 0x0
	mov byte [scrCompileGlob+0x34], 0x0
	mov dword [esp], 0x0
	call TempMalloc
	mov ebx, eax
	mov ecx, [scrCompileGlob+0x38]
	test ecx, ecx
	jz EmitForStatement_350
EmitForStatement_360:
	mov edx, [ecx]
	mov eax, ebx
	sub eax, [ecx+0x4]
	mov [edx], eax
	mov ecx, [ecx+0x8]
	test ecx, ecx
	jnz EmitForStatement_360
EmitForStatement_350:
	mov eax, [ebp+0x1c]
	mov eax, [eax]
	mov [ebp-0xc0], eax
	mov edx, [ebp-0x20]
	mov [ebp-0x60], edx
	test edx, edx
	jz EmitForStatement_370
	mov ecx, [ebp-0x88]
	mov eax, [ecx]
	mov edi, [eax+0x8]
	sub edx, 0x1
	jle EmitForStatement_380
	mov edx, 0x1
	mov ebx, [ebp-0x88]
EmitForStatement_390:
	mov eax, [ebx+edx*4]
	mov eax, [eax+0x8]
	cmp eax, edi
	cmovl edi, eax
	add edx, 0x1
	cmp [ebp-0x60], edx
	jnz EmitForStatement_390
EmitForStatement_380:
	mov esi, [ebp-0xc0]
	mov [esi+0x4], edi
	test edi, edi
	jle EmitForStatement_400
	mov dword [ebp-0x5c], 0x0
EmitForStatement_440:
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
	jnz EmitForStatement_410
	mov esi, [ebp-0x60]
	test esi, esi
	jle EmitForStatement_420
	mov edx, [ebp-0x88]
	mov eax, [edx]
	movzx eax, byte [ebx+eax+0x10]
	sar eax, cl
	test al, 0x1
	jz EmitForStatement_410
	xor edx, edx
EmitForStatement_430:
	add edx, 0x1
	cmp [ebp-0x60], edx
	jz EmitForStatement_420
	mov esi, [ebp-0x88]
	mov esi, [esi+edx*4]
	mov [ebp-0xcc], esi
	movzx eax, byte [ebx+esi+0x10]
	sar eax, cl
	test al, 0x1
	jnz EmitForStatement_430
EmitForStatement_410:
	add dword [ebp-0x5c], 0x1
	cmp [ebp-0x5c], edi
	jnz EmitForStatement_440
EmitForStatement_630:
	mov ecx, [ebp+0x1c]
	mov ecx, [ecx]
	mov [ebp-0xc0], ecx
	mov esi, ecx
	jmp EmitForStatement_450
EmitForStatement_370:
	mov esi, eax
EmitForStatement_450:
	mov [esp], esi
	xor ecx, ecx
	xor edx, edx
	mov eax, [ebp-0xbc]
	call EmitStatement
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x63
	call EmitOpcode
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0x10]
	mov [esp], eax
	call AddOpcodePos
	mov eax, [ebp+0x8]
	cmp dword [eax], 0x2c
	jz EmitForStatement_460
EmitForStatement_680:
	mov dword [esp], 0x2
	call TempMallocAlign
	mov [scrCompileGlob], eax
	mov word [eax], 0x0
	mov dword [esp], 0x0
	call TempMalloc
	sub eax, [ebp-0xb4]
	mov edx, [scrCompileGlob]
	mov [edx], ax
	mov edx, [ebp-0xb0]
	test edx, edx
	jz EmitForStatement_470
	mov dword [esp], 0x0
	call TempMalloc
	sub eax, [ebp-0xac]
	mov ecx, [ebp-0xb0]
	mov [ecx], ax
EmitForStatement_470:
	mov dword [esp], 0x0
	call TempMalloc
	mov ebx, eax
	mov ecx, [scrCompileGlob+0x30]
	test ecx, ecx
	jz EmitForStatement_480
EmitForStatement_490:
	mov edx, [ecx]
	mov eax, ebx
	sub eax, [ecx+0x4]
	mov [edx], eax
	mov ecx, [ecx+0x8]
	test ecx, ecx
	jnz EmitForStatement_490
EmitForStatement_480:
	movzx ebx, byte [ebp-0xa5]
	mov [scrCompileGlob+0x2c], bl
	mov esi, [ebp-0xa4]
	mov [scrCompileGlob+0x30], esi
	movzx eax, byte [ebp-0x9d]
	mov [scrCompileGlob+0x34], al
	mov edx, [ebp-0x9c]
	mov [scrCompileGlob+0x38], edx
	cmp byte [ebp-0x95], 0x0
	jz EmitForStatement_500
	mov ecx, [ebp-0x1c]
	mov [ebp-0x58], ecx
	test ecx, ecx
	jz EmitForStatement_500
	mov ebx, [ebp-0x8c]
	mov eax, [ebx]
	mov edi, [eax+0x8]
	sub ecx, 0x1
	jle EmitForStatement_510
	mov edx, 0x1
	mov esi, [ebp-0x8c]
EmitForStatement_520:
	mov eax, [esi+edx*4]
	mov eax, [eax+0x8]
	cmp eax, edi
	cmovl edi, eax
	add edx, 0x1
	cmp [ebp-0x58], edx
	jnz EmitForStatement_520
EmitForStatement_510:
	mov eax, [ebp+0x14]
	mov [eax+0x4], edi
	test edi, edi
	jle EmitForStatement_500
	mov dword [ebp-0x54], 0x0
EmitForStatement_560:
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
	jnz EmitForStatement_530
	mov eax, [ebp-0x58]
	test eax, eax
	jle EmitForStatement_540
	mov esi, [ebp-0x8c]
	mov eax, [esi]
	movzx eax, byte [ebx+eax+0x10]
	sar eax, cl
	test al, 0x1
	jz EmitForStatement_530
	xor edx, edx
EmitForStatement_550:
	add edx, 0x1
	cmp [ebp-0x58], edx
	jz EmitForStatement_540
	mov eax, [ebp-0x8c]
	mov eax, [eax+edx*4]
	movzx eax, byte [ebx+eax+0x10]
	sar eax, cl
	test al, 0x1
	jnz EmitForStatement_550
EmitForStatement_530:
	add dword [ebp-0x54], 0x1
	cmp [ebp-0x54], edi
	jnz EmitForStatement_560
EmitForStatement_500:
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
EmitForStatement_320:
	mov dword [esp], 0x1000
	call Hunk_AllocateTempMemoryHigh
	mov [ebp-0x8c], eax
	lea eax, [ebp-0x1c]
	mov [scrCompileGlob+0x40], eax
	mov dword [ebp-0xb0], 0x0
	mov dword [ebp-0xac], 0x0
	jmp EmitForStatement_570
EmitForStatement_400:
	mov ebx, [ebp+0x1c]
	mov ebx, [ebx]
	mov [ebp-0xc0], ebx
	mov esi, ebx
	jmp EmitForStatement_450
EmitForStatement_160:
	mov ecx, [ebp-0x70]
	lea ecx, [esi+ecx*4+0x18]
	mov [ebp-0x48], ecx
	jmp EmitForStatement_580
EmitForStatement_610:
	cmp byte [scrCompileGlob+0x1c], 0x0
	jnz EmitForStatement_590
EmitForStatement_640:
	mov ebx, [scrCompileGlob]
	mov [esp], edi
	call SL_TransferToCanonicalString
	mov [ebx], ax
EmitForStatement_620:
	movzx ecx, byte [ebp-0x69]
	mov [scrCompileGlob+0x1c], cl
	add dword [ebp-0x70], 0x1
	mov eax, [esi+0x8]
	add dword [ebp-0x48], 0x4
	cmp [ebp-0x70], eax
	jge EmitForStatement_600
EmitForStatement_580:
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x16
	call EmitOpcode
	mov eax, [ebp-0x48]
	mov edi, [eax]
	movzx edx, byte [scrCompileGlob+0x1c]
	mov [ebp-0x69], dl
	mov byte [scrCompileGlob+0x1c], 0x1
	mov dword [esp], 0x2
	call TempMallocAlign
	mov [scrCompileGlob], eax
	cmp dword [gScrCompilePub+0x20024], 0x2
	jnz EmitForStatement_610
	cmp byte [scrCompileGlob+0x1c], 0x0
	jnz EmitForStatement_620
	mov [esp], edi
	call SL_RemoveRefToString
	jmp EmitForStatement_620
EmitForStatement_540:
	mov eax, 0x1
	shl eax, cl
	or [ebp-0xd9], al
	movzx eax, byte [ebp-0xd9]
	mov edx, [ebp+0x14]
	mov [ebx+edx+0x10], al
	add dword [ebp-0x54], 0x1
	cmp [ebp-0x54], edi
	jnz EmitForStatement_560
	jmp EmitForStatement_500
EmitForStatement_420:
	mov eax, 0x1
	shl eax, cl
	or [ebp-0xd9], al
	movzx eax, byte [ebp-0xd9]
	mov edx, [ebp-0xc0]
	mov [ebx+edx+0x10], al
	add dword [ebp-0x5c], 0x1
	cmp [ebp-0x5c], edi
	jnz EmitForStatement_440
	jmp EmitForStatement_630
EmitForStatement_590:
	mov [esp], edi
	call SL_AddRefToString
	jmp EmitForStatement_640
EmitForStatement_310:
	mov eax, [ecx+0x4]
	lea ebx, [ebp-0x2c]
	mov ecx, [ebp+0x14]
	mov edx, ebx
	call EmitOrEvalExpression
	test al, al
	jz EmitForStatement_650
	mov eax, [ebp-0x28]
	sub eax, 0x5
	cmp eax, 0x1
	jbe EmitForStatement_660
	mov eax, ebx
	call EmitValue
EmitForStatement_650:
	mov byte [ebp-0x95], 0x0
	jmp EmitForStatement_670
EmitForStatement_460:
	mov dword [esp+0x4], 0x1
	mov eax, [eax+0xc]
	mov [esp], eax
	call AddOpcodePos
	jmp EmitForStatement_680
EmitForStatement_340:
	mov dword [esp+0x4], _cstring_max_switch_cases
	mov dword [esp], 0x2
	call Com_Error
	mov eax, [scrCompileGlob+0x4c]
	jmp EmitForStatement_690
EmitForStatement_660:
	mov [esp], ebx
	call Scr_CastBool
	mov eax, [ebp-0x2c]
	test eax, eax
	jnz EmitForStatement_700
	mov dword [esp+0x4], _cstring_conditional_expr
	mov ebx, [ebp+0xc]
	mov [esp], ebx
	call CompileError
	mov byte [ebp-0x95], 0x1
	jmp EmitForStatement_670
	nop


;EmitSwitchStatement(sval_u, sval_u, sval_u, unsigned char, unsigned int, scr_block_s*)
EmitSwitchStatement:
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
	call EmitOrEvalExpression
	test al, al
	jnz EmitSwitchStatement_10
EmitSwitchStatement_590:
	xor ecx, ecx
	mov edx, 0xffffffff
	mov eax, 0x7c
	call EmitOpcode
	mov dword [esp], 0x4
	call TempMallocAlign
	mov [scrCompileGlob], eax
	mov dword [eax], 0x0
	mov eax, [scrCompileGlob]
	mov [ebp-0x68], eax
	mov dword [esp], 0x0
	call TempMalloc
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
	jz EmitSwitchStatement_20
	mov byte [ebp-0x55], 0x0
	mov eax, [esi+0x4]
	mov [ebp-0x2c], eax
	mov ebx, [esi]
	mov eax, [ebx]
	sub eax, 0x3d
	cmp eax, 0x1
	jbe EmitSwitchStatement_30
EmitSwitchStatement_100:
	mov ecx, [scrCompileGlob+0x44]
	test ecx, ecx
	jz EmitSwitchStatement_40
	cmp byte [ebp-0x56], 0x0
	jz EmitSwitchStatement_50
	mov esi, [ebp-0x2c]
	test esi, esi
	jz EmitSwitchStatement_60
	mov eax, gScrVarPub
	cmp byte [eax+0x7], 0x0
	jnz EmitSwitchStatement_50
	mov edx, [ebp-0x2c]
EmitSwitchStatement_70:
	mov eax, [edx]
	cmp dword [eax], 0x2d
	jnz EmitSwitchStatement_50
	mov edx, [edx+0x4]
	test edx, edx
	jnz EmitSwitchStatement_70
EmitSwitchStatement_60:
	mov edx, 0x1
EmitSwitchStatement_250:
	mov [esp], ecx
	mov ecx, [ebp+0xc]
	mov eax, ebx
	call EmitStatement
	mov eax, [scrCompileGlob+0x44]
	test eax, eax
	jz EmitSwitchStatement_80
	mov ebx, [eax]
	test ebx, ebx
	jz EmitSwitchStatement_80
	mov dword [scrCompileGlob+0x44], 0x0
	mov byte [scrCompileGlob+0x2c], 0x0
EmitSwitchStatement_80:
	mov ecx, [ebp-0x2c]
	test ecx, ecx
	jz EmitSwitchStatement_90
EmitSwitchStatement_300:
	mov esi, [ebp-0x2c]
	mov eax, [esi+0x4]
	mov [ebp-0x2c], eax
	mov ebx, [esi]
	mov eax, [ebx]
	sub eax, 0x3d
	cmp eax, 0x1
	ja EmitSwitchStatement_100
EmitSwitchStatement_30:
	mov eax, [scrCompileGlob+0x44]
	test eax, eax
	jz EmitSwitchStatement_110
	mov byte [scrCompileGlob+0x2c], 0x0
	mov ebx, [scrCompileGlob+0x44]
	mov edi, [ebx]
	test edi, edi
	jz EmitSwitchStatement_120
EmitSwitchStatement_440:
	mov ebx, [esi]
EmitSwitchStatement_110:
	cmp dword [ebx], 0x3d
	jz EmitSwitchStatement_130
EmitSwitchStatement_450:
	mov eax, [ebx+0x8]
	mov [scrCompileGlob+0x44], eax
	mov eax, [esi]
	mov esi, [eax+0x4]
	cmp dword [gScrCompilePub+0x20024], 0x2
	jz EmitSwitchStatement_140
	mov dword [esp], 0x10
	call Hunk_AllocateTempMemoryHigh
	mov ebx, eax
	mov dword [eax], 0x0
	mov dword [esp], 0x0
	call TempMalloc
	mov [ebx+0x4], eax
	mov [ebx+0x8], esi
	mov eax, [scrCompileGlob+0x28]
	mov [ebx+0xc], eax
	mov [scrCompileGlob+0x28], ebx
EmitSwitchStatement_140:
	mov byte [ebp-0x55], 0x1
EmitSwitchStatement_480:
	mov edi, [scrCompileGlob+0x44]
	mov [ebp-0x34], edi
	mov ecx, [ebp+0x10]
	add ecx, 0x18
	mov [ebp-0x30], ecx
	mov dword [ebp-0x44], 0x0
EmitSwitchStatement_240:
	mov esi, [ebp-0x44]
	cmp esi, [edi+0x8]
	jl EmitSwitchStatement_150
	mov edx, [ebp+0x10]
	mov eax, [edx+0x4]
	cmp esi, eax
	jge EmitSwitchStatement_160
EmitSwitchStatement_150:
	mov ebx, [ebp-0x30]
	mov ebx, [ebx]
	mov [ebp-0x48], ebx
	mov esi, [edi+0xc]
	mov ecx, esi
	cmp [ebp-0x44], esi
	jge EmitSwitchStatement_170
	mov eax, ebx
	mov ebx, [ebp-0x34]
	cmp eax, [ebx+0x18]
	jz EmitSwitchStatement_180
	mov ebx, [ebp-0x44]
	lea edx, [edi+ebx*4+0x18]
EmitSwitchStatement_190:
	add ebx, 0x1
	cmp esi, ebx
	jz EmitSwitchStatement_170
	mov eax, [edx+0x4]
	add edx, 0x4
	cmp [ebp-0x48], eax
	jnz EmitSwitchStatement_190
EmitSwitchStatement_290:
	test ebx, ebx
	js EmitSwitchStatement_170
EmitSwitchStatement_270:
	mov eax, [edi+0x8]
	cmp ebx, eax
	jl EmitSwitchStatement_200
	add eax, 0x1
	mov [edi+0x8], eax
EmitSwitchStatement_200:
	cmp [ebp-0x44], ebx
	jge EmitSwitchStatement_210
	lea eax, [ebx*4]
	lea ecx, [eax+edi+0x14]
	lea edx, [eax+edi+0x18]
EmitSwitchStatement_220:
	sub ebx, 0x1
	mov eax, [ecx]
	mov [edx], eax
	sub ecx, 0x4
	sub edx, 0x4
	cmp [ebp-0x44], ebx
	jl EmitSwitchStatement_220
EmitSwitchStatement_210:
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
	jz EmitSwitchStatement_230
	mov eax, 0x1
	shl eax, cl
	or [edx+edi+0x10], al
EmitSwitchStatement_230:
	add dword [ebp-0x44], 0x1
	add dword [ebp-0x34], 0x4
	add dword [ebp-0x30], 0x4
	jmp EmitSwitchStatement_240
EmitSwitchStatement_50:
	xor edx, edx
	jmp EmitSwitchStatement_250
EmitSwitchStatement_170:
	cmp esi, 0x3f
	jg EmitSwitchStatement_260
EmitSwitchStatement_280:
	lea eax, [ecx+0x1]
	mov [edi+0xc], eax
	mov ebx, esi
	jmp EmitSwitchStatement_270
EmitSwitchStatement_260:
	mov dword [esp+0x4], _cstring_local_var_stack_
	mov dword [esp], 0x2
	call Com_Error
	mov ecx, [edi+0xc]
	jmp EmitSwitchStatement_280
EmitSwitchStatement_180:
	mov ebx, [ebp-0x44]
	jmp EmitSwitchStatement_290
EmitSwitchStatement_160:
	mov [edi+0x4], eax
	mov dword [edi], 0x0
	mov byte [scrCompileGlob+0x2c], 0x1
	mov ecx, [ebp-0x2c]
	test ecx, ecx
	jnz EmitSwitchStatement_300
EmitSwitchStatement_90:
	mov edx, [scrCompileGlob+0x44]
	test edx, edx
	jz EmitSwitchStatement_310
	mov byte [scrCompileGlob+0x2c], 0x0
	mov ebx, [scrCompileGlob+0x44]
	mov eax, [ebx]
	test eax, eax
	jz EmitSwitchStatement_320
EmitSwitchStatement_310:
	cmp byte [ebp-0x55], 0x0
	jnz EmitSwitchStatement_330
EmitSwitchStatement_510:
	mov ecx, [ebp-0x54]
	mov [scrCompileGlob+0x3c], ecx
	mov ebx, [ebp-0x50]
	mov [scrCompileGlob+0x40], ebx
	mov esi, [ebp-0x4c]
	mov [scrCompileGlob+0x44], esi
EmitSwitchStatement_600:
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x7d
	call EmitOpcode
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x78]
	mov [esp], eax
	call AddOpcodePos
	mov dword [esp], 0x2
	call TempMallocAlign
	mov [scrCompileGlob], eax
	mov word [eax], 0x0
	mov edx, [scrCompileGlob]
	mov [ebp-0x64], edx
	mov eax, edx
	sub eax, [ebp-0x60]
	mov ecx, [ebp-0x68]
	mov [ecx], eax
	mov dword [esp], 0x0
	call TempMallocAlignStrict
	mov edi, eax
	mov esi, [scrCompileGlob+0x28]
	test esi, esi
	jz EmitSwitchStatement_340
	mov dword [ebp-0x5c], 0x0
EmitSwitchStatement_350:
	mov ebx, [esi]
	mov dword [esp], 0x4
	call TempMallocAlign
	mov [scrCompileGlob], eax
	mov [eax], ebx
	mov ebx, [esi+0x4]
	mov dword [esp], 0x4
	call TempMallocAlign
	mov [scrCompileGlob], eax
	mov [eax], ebx
	mov esi, [esi+0xc]
	add dword [ebp-0x5c], 0x1
	test esi, esi
	jnz EmitSwitchStatement_350
	movzx eax, word [ebp-0x5c]
	mov edx, [ebp-0x5c]
EmitSwitchStatement_580:
	mov ebx, [ebp-0x64]
	mov [ebx], ax
	mov dword [esp+0xc], CompareCaseInfo
	mov dword [esp+0x8], 0x8
	mov [esp+0x4], edx
	mov [esp], edi
	call qsort
	cmp dword [ebp-0x5c], 0x1
	jle EmitSwitchStatement_360
	mov ebx, [scrCompileGlob+0x28]
	xor ecx, ecx
	mov esi, [ebp-0x5c]
	sub esi, 0x1
EmitSwitchStatement_380:
	mov edx, [edi]
	add edi, 0x8
	cmp edx, [edi]
	jz EmitSwitchStatement_370
EmitSwitchStatement_410:
	add ecx, 0x1
	cmp esi, ecx
	jnz EmitSwitchStatement_380
EmitSwitchStatement_360:
	mov dword [esp], 0x0
	call TempMalloc
	mov ebx, eax
	mov ecx, [scrCompileGlob+0x30]
	test ecx, ecx
	jz EmitSwitchStatement_390
EmitSwitchStatement_400:
	mov edx, [ecx]
	mov eax, ebx
	sub eax, [ecx+0x4]
	mov [edx], eax
	mov ecx, [ecx+0x8]
	test ecx, ecx
	jnz EmitSwitchStatement_400
EmitSwitchStatement_390:
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
EmitSwitchStatement_370:
	test ebx, ebx
	jz EmitSwitchStatement_410
	cmp edx, [ebx]
	jz EmitSwitchStatement_420
	mov eax, ebx
EmitSwitchStatement_430:
	mov eax, [eax+0xc]
	test eax, eax
	jz EmitSwitchStatement_410
	cmp edx, [eax]
	jnz EmitSwitchStatement_430
	mov ebx, eax
EmitSwitchStatement_420:
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
EmitSwitchStatement_120:
	mov eax, [ebx+0x4]
	mov edi, eax
	sub edi, [ebx+0x8]
	jz EmitSwitchStatement_440
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x17
	call EmitOpcode
	mov dword [esp], 0x1
	call TempMalloc
	mov [scrCompileGlob], eax
	mov edx, edi
	mov [eax], dl
	mov eax, [ebx+0x8]
	mov [ebx+0x4], eax
	mov ebx, [esi]
	cmp dword [ebx], 0x3d
	jnz EmitSwitchStatement_450
EmitSwitchStatement_130:
	mov eax, [ebx+0xc]
	mov [scrCompileGlob+0x44], eax
	mov eax, [esi]
	mov edi, [eax+0x8]
	mov esi, [eax+0x4]
	mov eax, [esi]
	cmp eax, 0x7
	jz EmitSwitchStatement_460
	cmp eax, 0xb
	jz EmitSwitchStatement_470
	mov dword [esp+0x4], _cstring_case_expression_
	mov [esp], edi
	call CompileError
	jmp EmitSwitchStatement_480
EmitSwitchStatement_330:
	mov ebx, [scrCompileGlob+0x44]
	test ebx, ebx
	jz EmitSwitchStatement_490
	mov eax, [ebx]
	test eax, eax
	jnz EmitSwitchStatement_490
	mov eax, [scrCompileGlob+0x3c]
	test eax, eax
	jz EmitSwitchStatement_490
	cmp dword [gScrCompilePub+0x20024], 0x2
	jz EmitSwitchStatement_490
	mov eax, [scrCompileGlob+0x40]
	cmp dword [eax], 0x3ff
	jle EmitSwitchStatement_500
	mov dword [esp+0x4], _cstring_max_switch_cases
	mov dword [esp], 0x2
	call Com_Error
	mov eax, [scrCompileGlob+0x40]
EmitSwitchStatement_500:
	mov edx, [eax]
	mov eax, [scrCompileGlob+0x3c]
	mov [eax+edx*4], ebx
	mov eax, [scrCompileGlob+0x40]
	add dword [eax], 0x1
EmitSwitchStatement_490:
	mov ecx, [ebp-0x1c]
	mov [ebp-0x40], ecx
	test ecx, ecx
	jz EmitSwitchStatement_510
	mov ebx, [ebp-0x3c]
	mov eax, [ebx]
	mov edi, [eax+0x8]
	sub ecx, 0x1
	jle EmitSwitchStatement_520
	mov edx, 0x1
	mov esi, [ebp-0x3c]
EmitSwitchStatement_530:
	mov eax, [esi+edx*4]
	mov eax, [eax+0x8]
	cmp eax, edi
	cmovl edi, eax
	add edx, 0x1
	cmp [ebp-0x40], edx
	jnz EmitSwitchStatement_530
EmitSwitchStatement_520:
	mov eax, [ebp+0x10]
	mov [eax+0x4], edi
	test edi, edi
	jle EmitSwitchStatement_510
	mov dword [ebp-0x38], 0x0
EmitSwitchStatement_570:
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
	jnz EmitSwitchStatement_540
	mov eax, [ebp-0x40]
	test eax, eax
	jle EmitSwitchStatement_550
	mov esi, [ebp-0x3c]
	mov eax, [esi]
	movzx eax, byte [ebx+eax+0x10]
	sar eax, cl
	test al, 0x1
	jz EmitSwitchStatement_540
	xor edx, edx
EmitSwitchStatement_560:
	add edx, 0x1
	cmp [ebp-0x40], edx
	jz EmitSwitchStatement_550
	mov eax, [ebp-0x3c]
	mov eax, [eax+edx*4]
	movzx eax, byte [ebx+eax+0x10]
	sar eax, cl
	test al, 0x1
	jnz EmitSwitchStatement_560
EmitSwitchStatement_540:
	add dword [ebp-0x38], 0x1
	cmp [ebp-0x38], edi
	jnz EmitSwitchStatement_570
	jmp EmitSwitchStatement_510
EmitSwitchStatement_320:
	mov eax, [ebx+0x4]
	mov esi, eax
	sub esi, [ebx+0x8]
	jz EmitSwitchStatement_310
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x17
	call EmitOpcode
	mov dword [esp], 0x1
	call TempMalloc
	mov [scrCompileGlob], eax
	mov edx, esi
	mov [eax], dl
	mov eax, [ebx+0x8]
	mov [ebx+0x4], eax
	cmp byte [ebp-0x55], 0x0
	jz EmitSwitchStatement_510
	jmp EmitSwitchStatement_330
EmitSwitchStatement_340:
	mov dword [ebp-0x5c], 0x0
	xor eax, eax
	xor edx, edx
	jmp EmitSwitchStatement_580
EmitSwitchStatement_10:
	mov eax, ebx
	call EmitValue
	jmp EmitSwitchStatement_590
EmitSwitchStatement_40:
	mov dword [esp+0x4], _cstring_missing_case_sta
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call CompileError
	jmp EmitSwitchStatement_600
EmitSwitchStatement_20:
	mov byte [ebp-0x55], 0x0
	jmp EmitSwitchStatement_90
EmitSwitchStatement_470:
	mov esi, [esi+0x4]
	cmp dword [gScrCompilePub+0x20024], 0x2
	jz EmitSwitchStatement_610
	cmp byte [scrCompileGlob+0x1c], 0x0
	jnz EmitSwitchStatement_620
EmitSwitchStatement_650:
	mov dword [esp+0x4], 0x1
	mov [esp], esi
	call SL_TransferRefToUser
EmitSwitchStatement_640:
	cmp dword [gScrCompilePub+0x20024], 0x2
	jz EmitSwitchStatement_480
	mov dword [esp], 0x10
	call Hunk_AllocateTempMemoryHigh
	mov ebx, eax
	mov [eax], esi
	mov dword [esp], 0x0
	call TempMalloc
	mov [ebx+0x4], eax
	mov [ebx+0x8], edi
	mov eax, [scrCompileGlob+0x28]
	mov [ebx+0xc], eax
	mov [scrCompileGlob+0x28], ebx
	jmp EmitSwitchStatement_480
EmitSwitchStatement_550:
	mov eax, 0x1
	shl eax, cl
	or [ebp-0x89], al
	movzx eax, byte [ebp-0x89]
	mov edx, [ebp+0x10]
	mov [ebx+edx+0x10], al
	add dword [ebp-0x38], 0x1
	cmp [ebp-0x38], edi
	jnz EmitSwitchStatement_570
	jmp EmitSwitchStatement_510
EmitSwitchStatement_460:
	mov eax, [esi+0x4]
	mov [esp], eax
	call IsValidArrayIndex
	test al, al
	jnz EmitSwitchStatement_630
	mov eax, [esi+0x4]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_case_index_d_out
	call va
	mov [esp+0x4], eax
	mov [esp], edi
	call CompileError
	jmp EmitSwitchStatement_480
EmitSwitchStatement_630:
	mov eax, [esi+0x4]
	mov [esp], eax
	call GetInternalVariableIndex
	mov esi, eax
	jmp EmitSwitchStatement_640
EmitSwitchStatement_610:
	cmp byte [scrCompileGlob+0x1c], 0x0
	jnz EmitSwitchStatement_640
	mov [esp], esi
	call SL_RemoveRefToString
	jmp EmitSwitchStatement_640
EmitSwitchStatement_620:
	mov [esp], esi
	call SL_AddRefToString
	jmp EmitSwitchStatement_650


;EmitDeveloperStatementList(sval_u, sval_u, scr_block_s*, sval_u*)
EmitDeveloperStatementList:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov [ebp-0x2c], eax
	mov [ebp-0x30], ecx
	mov eax, [gScrCompilePub+0x20024]
	test eax, eax
	jnz EmitDeveloperStatementList_10
	mov edx, ecx
	mov eax, gScrVarPub
	mov eax, [eax+0x38]
	mov [ebp-0x28], eax
	mov eax, [ebp+0x8]
	mov esi, [eax]
	mov [ebp-0x20], esi
	add edx, 0x18
	mov [ebp-0x1c], edx
	xor edi, edi
EmitDeveloperStatementList_100:
	cmp edi, [esi+0x8]
	jl EmitDeveloperStatementList_20
	mov edx, [ebp-0x30]
	mov eax, [edx+0x4]
	cmp edi, eax
	jge EmitDeveloperStatementList_30
EmitDeveloperStatementList_20:
	mov ebx, [ebp-0x1c]
	mov ebx, [ebx]
	mov [ebp-0x24], ebx
	mov ebx, [esi+0xc]
	mov [ebp-0x34], ebx
	cmp edi, ebx
	jl EmitDeveloperStatementList_40
EmitDeveloperStatementList_120:
	cmp ebx, 0x3f
	jg EmitDeveloperStatementList_50
	mov eax, [ebp-0x34]
EmitDeveloperStatementList_150:
	add eax, 0x1
	mov [esi+0xc], eax
EmitDeveloperStatementList_140:
	mov eax, [esi+0x8]
	cmp ebx, eax
	jl EmitDeveloperStatementList_60
	add eax, 0x1
	mov [esi+0x8], eax
EmitDeveloperStatementList_60:
	cmp edi, ebx
	jge EmitDeveloperStatementList_70
	lea eax, [ebx*4]
	lea ecx, [eax+esi+0x14]
	lea edx, [eax+esi+0x18]
EmitDeveloperStatementList_80:
	sub ebx, 0x1
	mov eax, [ecx]
	mov [edx], eax
	sub ecx, 0x4
	sub edx, 0x4
	cmp edi, ebx
	jl EmitDeveloperStatementList_80
EmitDeveloperStatementList_70:
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
	jz EmitDeveloperStatementList_90
	mov eax, 0x1
	shl eax, cl
	or [edx+esi+0x10], al
EmitDeveloperStatementList_90:
	add edi, 0x1
	add dword [ebp-0x20], 0x4
	add dword [ebp-0x1c], 0x4
	jmp EmitDeveloperStatementList_100
EmitDeveloperStatementList_40:
	mov edx, [ebp-0x24]
	mov eax, [ebp-0x20]
	cmp [eax+0x18], edx
	jz EmitDeveloperStatementList_110
	lea edx, [esi+edi*4+0x18]
	mov ecx, edi
EmitDeveloperStatementList_130:
	add ecx, 0x1
	cmp ebx, ecx
	jz EmitDeveloperStatementList_120
	mov eax, [edx+0x4]
	add edx, 0x4
	cmp eax, [ebp-0x24]
	jnz EmitDeveloperStatementList_130
EmitDeveloperStatementList_160:
	test ecx, ecx
	js EmitDeveloperStatementList_120
	mov ebx, ecx
	jmp EmitDeveloperStatementList_140
EmitDeveloperStatementList_50:
	mov dword [esp+0x4], _cstring_local_var_stack_
	mov dword [esp], 0x2
	call Com_Error
	mov eax, [esi+0xc]
	mov [ebp-0x34], eax
	jmp EmitDeveloperStatementList_150
EmitDeveloperStatementList_110:
	mov ecx, edi
	jmp EmitDeveloperStatementList_160
EmitDeveloperStatementList_30:
	mov [esi+0x4], eax
	mov dword [esi], 0x0
	mov eax, gScrVarPub
	cmp byte [eax+0x7], 0x0
	jz EmitDeveloperStatementList_170
	mov dword [gScrCompilePub+0x20024], 0x1
	mov ebx, [ebp+0x8]
	mov esi, [ebx]
	mov edx, [ebp-0x2c]
	mov eax, [edx]
	mov eax, [eax+0x4]
	test eax, eax
	jnz EmitDeveloperStatementList_180
	jmp EmitDeveloperStatementList_190
EmitDeveloperStatementList_200:
	mov eax, ebx
EmitDeveloperStatementList_180:
	mov ebx, [eax+0x4]
	mov eax, [eax]
	mov [esp], esi
	xor ecx, ecx
	xor edx, edx
	call EmitStatement
	test ebx, ebx
	jnz EmitDeveloperStatementList_200
	mov ebx, [ebp+0x8]
	mov esi, [ebx]
EmitDeveloperStatementList_190:
	mov eax, [esi]
	test eax, eax
	jnz EmitDeveloperStatementList_210
	mov eax, [esi+0x4]
	mov ebx, eax
	sub ebx, [esi+0x8]
	jnz EmitDeveloperStatementList_220
EmitDeveloperStatementList_210:
	mov dword [gScrCompilePub+0x20024], 0x0
	mov eax, gScrVarPub
	mov edx, [ebp-0x28]
	mov [eax+0x38], edx
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
EmitDeveloperStatementList_170:
	mov dword [esp], 0x0
	call TempMalloc
	mov edi, eax
	mov dword [gScrCompilePub+0x20024], 0x2
	mov ebx, [ebp+0x8]
	mov esi, [ebx]
	mov edx, [ebp-0x2c]
	mov eax, [edx]
	mov eax, [eax+0x4]
	test eax, eax
	jnz EmitDeveloperStatementList_230
	mov [esp], edi
	call TempMemorySetPos
	jmp EmitDeveloperStatementList_210
EmitDeveloperStatementList_240:
	mov eax, ebx
EmitDeveloperStatementList_230:
	mov ebx, [eax+0x4]
	mov eax, [eax]
	mov [esp], esi
	xor ecx, ecx
	xor edx, edx
	call EmitStatement
	test ebx, ebx
	jnz EmitDeveloperStatementList_240
	mov [esp], edi
	call TempMemorySetPos
	jmp EmitDeveloperStatementList_210
EmitDeveloperStatementList_10:
	mov dword [esp+0x4], _cstring_cannot_recurse_
	mov [esp], edx
	call CompileError
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
EmitDeveloperStatementList_220:
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x17
	call EmitOpcode
	mov dword [esp], 0x1
	call TempMalloc
	mov [scrCompileGlob], eax
	mov [eax], bl
	mov eax, [esi+0x8]
	mov [esi+0x4], eax
	jmp EmitDeveloperStatementList_210


;EmitThreadInternal(unsigned int, sval_u, sval_u, sval_u, scr_block_s*)
EmitThreadInternal:
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
	call AddThreadStartOpcodePos
	mov dword [scrCompileGlob+0x10], 0x0
	mov dword [scrCompileGlob+0x14], 0x0
	mov dword [scrCompileGlob+0x18], 0x0
	mov edx, [ebp-0x1c]
	mov ebx, [edx+0x4]
	cmp dword [gScrCompilePub+0x20024], 0x2
	jz EmitThreadInternal_10
	cmp byte [scrCompileGlob+0x1c], 0x0
	jnz EmitThreadInternal_20
EmitThreadInternal_130:
	mov dword [esp+0x4], 0x2
	mov [esp], ebx
	call SL_TransferRefToUser
EmitThreadInternal_140:
	mov ecx, [ebp-0x1c]
	mov eax, [ecx+0x8]
	mov eax, [eax]
	mov esi, [eax+0x4]
	test esi, esi
	jnz EmitThreadInternal_30
	jmp EmitThreadInternal_40
EmitThreadInternal_50:
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call AddOpcodePos
	mov esi, [esi+0x4]
	test esi, esi
	jz EmitThreadInternal_40
EmitThreadInternal_30:
	mov eax, [esi]
	mov edi, [eax+0x4]
	mov eax, [eax]
	mov edx, [ebp-0x28]
	mov [esp], edx
	mov ecx, 0x1
	mov edx, edi
	call Scr_FindLocalVarIndex
	mov ebx, eax
	cmp eax, 0x1
	sbb eax, eax
	add eax, 0x32
	xor ecx, ecx
	xor edx, edx
	call EmitOpcode
	test ebx, ebx
	jz EmitThreadInternal_50
	mov dword [esp], 0x1
	call TempMalloc
	mov [scrCompileGlob], eax
	mov [eax], bl
	mov dword [esp+0x4], 0x0
	mov [esp], edi
	call AddOpcodePos
	mov esi, [esi+0x4]
	test esi, esi
	jnz EmitThreadInternal_30
EmitThreadInternal_40:
	xor ecx, ecx
	xor edx, edx
	mov eax, 0x35
	call EmitOpcode
	mov dword [esp+0x4], 0x0
	mov ecx, [ebp-0x20]
	mov [esp], ecx
	call AddOpcodePos
	mov edx, [ebp-0x1c]
	mov eax, [edx+0xc]
	mov eax, [eax]
	mov edx, [eax+0x4]
	test edx, edx
	jz EmitThreadInternal_60
	mov esi, gScrVarPub
EmitThreadInternal_100:
	mov ebx, [edx+0x4]
	test ebx, ebx
	jz EmitThreadInternal_70
	cmp byte [esi+0x7], 0x0
	jnz EmitThreadInternal_80
	mov ecx, ebx
EmitThreadInternal_90:
	mov eax, [ecx]
	cmp dword [eax], 0x2d
	jnz EmitThreadInternal_80
	mov ecx, [ecx+0x4]
	test ecx, ecx
	jnz EmitThreadInternal_90
EmitThreadInternal_70:
	mov ecx, 0x1
	mov eax, [edx]
	mov edx, ecx
	and edx, 0x1
	mov ecx, [ebp-0x28]
	mov [esp], ecx
	mov ecx, [ebp-0x24]
	call EmitStatement
	test ebx, ebx
	jz EmitThreadInternal_60
EmitThreadInternal_110:
	mov edx, ebx
	jmp EmitThreadInternal_100
EmitThreadInternal_80:
	xor ecx, ecx
	mov eax, [edx]
	mov edx, ecx
	and edx, 0x1
	mov ecx, [ebp-0x28]
	mov [esp], ecx
	mov ecx, [ebp-0x24]
	call EmitStatement
	test ebx, ebx
	jnz EmitThreadInternal_110
EmitThreadInternal_60:
	xor ecx, ecx
	xor edx, edx
	xor eax, eax
	call EmitOpcode
	mov dword [esp+0x4], 0x1
	mov eax, [ebp-0x24]
	mov [esp], eax
	call AddOpcodePos
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0xfffffffe
	call AddOpcodePos
	mov eax, [scrCompileGlob+0x18]
	shl eax, 0x5
	add eax, [scrCompileGlob+0x14]
	cmp eax, 0x7ff
	jg EmitThreadInternal_120
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
EmitThreadInternal_20:
	mov [esp], ebx
	call SL_AddRefToString
	jmp EmitThreadInternal_130
EmitThreadInternal_120:
	mov dword [ebp+0xc], _cstring_function_exceeds
	mov edx, [ebp-0x20]
	mov [ebp+0x8], edx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp CompileError
EmitThreadInternal_10:
	cmp byte [scrCompileGlob+0x1c], 0x0
	jnz EmitThreadInternal_140
	mov [esp], ebx
	call SL_RemoveRefToString
	jmp EmitThreadInternal_140


;ScriptCompile(sval_u, unsigned int, unsigned int, PrecacheEntry*, int)
ScriptCompile:
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
	mov eax, gScrAnimPub
	mov dword [eax+0x414], 0x0
	mov dword [gScrCompilePub+0x20024], 0x0
	mov eax, [gScrCompilePub+0x4]
	test eax, eax
	jnz ScriptCompile_10
	mov dword [ebp-0x6c], 0x0
	add eax, edx
	mov [ebp-0x40], eax
	cmp eax, 0x400
	jg ScriptCompile_20
ScriptCompile_580:
	mov ebx, [ebp-0x6c]
	mov [scrCompileGlob+0x54], ebx
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov eax, [eax]
	mov edi, [eax+0x4]
	test edi, edi
	jnz ScriptCompile_30
	jmp ScriptCompile_40
ScriptCompile_70:
	mov ebx, [ebx+0x8]
	mov [esp], esi
	call SL_AddRefToString
	cmp byte [scrCompileGlob+0x1c], 0x0
	jz ScriptCompile_50
ScriptCompile_80:
	mov eax, [scrCompileGlob+0x54]
	mov [eax], si
	mov eax, [scrCompileGlob+0x54]
	mov [eax+0x4], ebx
	mov eax, [scrCompileGlob+0x54]
	mov byte [eax+0x2], 0x1
	add dword [scrCompileGlob+0x54], 0x8
	mov [esp+0x4], esi
	mov eax, [gScrCompilePub+0xc]
	mov [esp], eax
	call GetVariable
	mov [esp], eax
	call SGetObjectA
	mov edi, [edi+0x4]
	test edi, edi
	jz ScriptCompile_60
ScriptCompile_30:
	mov ebx, [edi]
	mov eax, [ebx+0x4]
	mov [esp], eax
	call SL_ConvertToString
	mov [esp], eax
	call Scr_CreateCanonicalFilename
	mov esi, eax
	mov eax, [ebx+0x4]
	cmp byte [scrCompileGlob+0x1c], 0x0
	jnz ScriptCompile_70
	mov [esp], eax
	call SL_RemoveRefToString
	mov ebx, [ebx+0x8]
	mov [esp], esi
	call SL_AddRefToString
	cmp byte [scrCompileGlob+0x1c], 0x0
	jnz ScriptCompile_80
ScriptCompile_50:
	mov [esp], esi
	call SL_RemoveRefToString
	jmp ScriptCompile_80
ScriptCompile_60:
	mov ecx, [ebp+0x8]
ScriptCompile_590:
	mov ecx, [ecx+0x4]
	mov [ebp-0x70], ecx
	mov byte [scrCompileGlob+0x1d], 0x0
	mov eax, [ecx]
	mov edi, [eax+0x4]
	test edi, edi
	jnz ScriptCompile_90
	jmp ScriptCompile_100
ScriptCompile_130:
	cmp eax, 0x46
	jz ScriptCompile_110
	cmp eax, 0x44
	jz ScriptCompile_120
ScriptCompile_250:
	mov edi, [edi+0x4]
	test edi, edi
	jz ScriptCompile_100
ScriptCompile_90:
	mov ebx, [edi]
	mov [ebp-0x58], ebx
	mov eax, [ebx]
	cmp eax, 0x45
	jnz ScriptCompile_130
	cmp byte [scrCompileGlob+0x1d], 0x0
	jnz ScriptCompile_140
	mov byte [scrCompileGlob+0x1d], 0x1
	mov ecx, [ebp-0x58]
	mov eax, [ecx+0x4]
	mov [scrCompileGlob+0x20], eax
	mov edi, [edi+0x4]
	test edi, edi
	jnz ScriptCompile_90
ScriptCompile_100:
	cmp byte [scrCompileGlob+0x1d], 0x0
	jnz ScriptCompile_150
ScriptCompile_610:
	mov byte [scrCompileGlob+0x24], 0x1
	mov byte [scrCompileGlob+0x25], 0x1
	mov ecx, [ebp-0x70]
	mov eax, [ecx]
	mov eax, [eax+0x4]
	mov [ebp-0x3c], eax
	test eax, eax
	jnz ScriptCompile_160
	jmp ScriptCompile_170
ScriptCompile_200:
	cmp eax, 0x44
	jz ScriptCompile_180
ScriptCompile_220:
	mov eax, [ebp-0x3c]
	mov eax, [eax+0x4]
	mov [ebp-0x3c], eax
	test eax, eax
	jz ScriptCompile_170
ScriptCompile_160:
	mov ebx, [eax]
	mov [ebp-0x58], ebx
	mov eax, [ebx]
	cmp eax, 0x45
	jz ScriptCompile_190
	jle ScriptCompile_200
	cmp eax, 0x46
	jz ScriptCompile_210
	cmp eax, 0x47
	jnz ScriptCompile_220
	cmp byte [scrCompileGlob+0x1d], 0x0
	jnz ScriptCompile_230
	mov ecx, [ebp-0x58]
	mov ebx, [ecx+0xc]
	mov eax, [ecx+0x4]
	mov [esp], eax
	call SL_ConvertToString
	mov [esp+0x4], ebx
	mov [esp], eax
	call Scr_UsingTree
	mov ebx, [ebp-0x58]
	mov eax, [ebx+0x4]
	cmp byte [scrCompileGlob+0x1c], 0x0
	jnz ScriptCompile_220
	mov [esp], eax
	call SL_RemoveRefToString
	jmp ScriptCompile_220
ScriptCompile_110:
	cmp byte [scrCompileGlob+0x1d], 0x0
	jz ScriptCompile_240
	mov byte [scrCompileGlob+0x1d], 0x0
	jmp ScriptCompile_250
ScriptCompile_120:
	cmp byte [scrCompileGlob+0x1d], 0x0
	jnz ScriptCompile_260
	mov dword [ebp-0x54], 0x7
ScriptCompile_570:
	mov eax, [ebp-0x58]
	mov esi, [eax+0x10]
	mov ebx, [eax+0x4]
	mov [esp+0x4], ebx
	mov eax, [scrCompileGlob+0x8]
	mov [esp], eax
	call GetVariable
	mov [esp], eax
	call SGetObjectA
	mov edx, [ebp-0x54]
	mov [esp], edx
	mov ecx, esi
	mov edx, ebx
	call SpecifyThreadPosition
	jmp ScriptCompile_250
ScriptCompile_190:
	mov byte [scrCompileGlob+0x1d], 0x1
	mov eax, [ebp-0x3c]
	mov eax, [eax+0x4]
	mov [ebp-0x3c], eax
	test eax, eax
	jnz ScriptCompile_160
ScriptCompile_170:
	mov dword [esp], 0x0
	call TempMalloc
	mov edx, gScrVarPub
	sub eax, [edx+0x48]
	mov [gScrCompilePub+0x2002c], eax
	call Scr_ShutdownAllocNode
	call Hunk_ClearTempMemoryHigh
	mov edx, [gScrCompilePub+0x4]
	mov [ebp-0x68], edx
	test edx, edx
	jle ScriptCompile_270
	xor ebx, ebx
ScriptCompile_300:
	mov ecx, [ebp-0x6c]
	lea ecx, [ecx+ebx*8]
	mov [ebp-0x64], ecx
	movzx edi, word [ecx]
	mov [esp], edi
	call SL_ConvertToString
	mov edx, [ebp-0x40]
	mov [esp+0x8], edx
	mov ecx, [ebp+0x14]
	mov [esp+0x4], ecx
	mov [esp], eax
	call Scr_LoadScriptInternal
	mov [ebp-0x60], eax
	test eax, eax
	jz ScriptCompile_280
	mov [esp], edi
	call SL_RemoveRefToString
	mov eax, [ebp-0x64]
	cmp byte [eax+0x2], 0x0
	jnz ScriptCompile_290
	add ebx, 0x1
ScriptCompile_400:
	cmp [ebp-0x68], ebx
	jg ScriptCompile_300
ScriptCompile_270:
	mov dword [ebp-0x34], 0x0
	mov dword [ebp-0x38], 0x0
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call FindFirstSibling
	mov esi, eax
	test eax, eax
	jnz ScriptCompile_310
ScriptCompile_330:
	mov dword [ebp-0x1c], 0x6
	lea eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov ebx, [ebp+0x10]
	mov [esp], ebx
	call SetVariableValue
ScriptCompile_660:
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
ScriptCompile_340:
	mov [esp], eax
	call Scr_EvalVariableExtern
	mov [ebp-0x30], eax
	mov [ebp-0x2c], edx
	cmp dword [ebp-0x2c], 0xd
	jz ScriptCompile_320
	mov ecx, 0x1
	lea edx, [ebp-0x30]
	mov eax, ebx
	call LinkThread
ScriptCompile_350:
	mov [esp], esi
	call FindNextSibling
	mov esi, eax
	test eax, eax
	jz ScriptCompile_330
ScriptCompile_310:
	mov [esp], esi
	call FindObject
	mov ebx, eax
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call FindVariable
	test eax, eax
	jnz ScriptCompile_340
	mov ecx, 0x1
	lea edx, [ebp-0x38]
	mov eax, ebx
	call LinkThread
	jmp ScriptCompile_350
ScriptCompile_290:
	add ebx, 0x1
	mov [ebp-0x44], ebx
	cmp [ebp-0x68], ebx
	jle ScriptCompile_360
	mov ecx, [ebp-0x6c]
	lea esi, [ecx+ebx*8]
	cmp byte [esi+0x2], 0x0
	jz ScriptCompile_360
	movzx eax, word [esi]
	cmp edi, eax
	jz ScriptCompile_370
	lea ebx, [esi+0x8]
	mov edx, ebx
	mov ecx, [ebp-0x44]
ScriptCompile_380:
	add ecx, 0x1
	cmp [ebp-0x68], ecx
	jz ScriptCompile_360
	mov esi, ebx
	cmp byte [edx+0x2], 0x0
	jz ScriptCompile_360
	movzx eax, word [edx]
	lea ebx, [ebx+0x8]
	add edx, 0x8
	cmp eax, edi
	jnz ScriptCompile_380
ScriptCompile_370:
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
ScriptCompile_360:
	mov ebx, [ebp-0x64]
	mov byte [ebx+0x2], 0x0
	mov eax, [ebp-0x60]
	mov [esp], eax
	call FindFirstSibling
	mov edi, eax
	test eax, eax
	jnz ScriptCompile_390
ScriptCompile_420:
	mov ebx, [ebp-0x44]
	jmp ScriptCompile_400
ScriptCompile_430:
	mov [esp], edi
	call FindObject
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call FindVariable
	mov [ebp-0x5c], eax
	test eax, eax
	jz ScriptCompile_410
	mov [esp], eax
	call Scr_EvalVariableExtern
	mov [ebp-0x28], eax
	mov [ebp-0x24], edx
	cmp dword [ebp-0x24], 0xd
	jz ScriptCompile_410
	mov [esp], edi
	call GetVariableName
	movzx ebx, ax
	mov [esp+0x4], ebx
	mov edx, [ebp+0xc]
	mov [esp], edx
	call GetVariable
	mov [esp], eax
	call SGetObjectA
	mov esi, eax
	mov eax, [ebp-0x64]
	mov ecx, [eax+0x4]
	mov dword [esp], 0xd
	mov edx, ebx
	mov eax, esi
	call SpecifyThreadPosition
	mov [esp], eax
	call GetVariableValueAddress
	mov ebx, eax
	mov edx, [ebp-0x5c]
	mov [esp], edx
	call GetVariableValueAddress
	mov eax, [eax]
	mov [ebx], eax
	xor ecx, ecx
	lea edx, [ebp-0x28]
	mov eax, esi
	call LinkThread
ScriptCompile_410:
	mov [esp], edi
	call FindNextSibling
	mov edi, eax
	test eax, eax
	jz ScriptCompile_420
ScriptCompile_390:
	mov [esp], edi
	call GetValueType
	sub eax, 0x1
	jnz ScriptCompile_410
	jmp ScriptCompile_430
ScriptCompile_210:
	mov byte [scrCompileGlob+0x1d], 0x0
	jmp ScriptCompile_220
ScriptCompile_180:
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
ScriptCompile_450:
	mov ebx, [ebx+0x4]
	test ebx, ebx
	jz ScriptCompile_440
ScriptCompile_480:
	mov eax, [ebx]
	mov eax, [eax]
	mov [ebp-0x48], eax
	mov eax, [edi]
	test eax, eax
	jnz ScriptCompile_450
	mov esi, [edi+0xc]
	test esi, esi
	jg ScriptCompile_460
ScriptCompile_540:
	cmp esi, 0x3f
	jg ScriptCompile_470
ScriptCompile_560:
	mov ecx, [ebp-0x48]
	mov [edi+esi*4+0x18], ecx
	add dword [edi+0xc], 0x1
	mov ebx, [ebx+0x4]
	test ebx, ebx
	jnz ScriptCompile_480
ScriptCompile_440:
	mov ebx, [ebp-0x4c]
	mov esi, [ebx]
	mov edx, [ebp-0x50]
	mov eax, [edx]
	mov ebx, [eax+0x4]
	test ebx, ebx
	jz ScriptCompile_490
ScriptCompile_500:
	mov eax, [ebx]
	mov edx, esi
	call Scr_CalcLocalVarsStatement
	mov ebx, [ebx+0x4]
	test ebx, ebx
	jnz ScriptCompile_500
ScriptCompile_490:
	cmp byte [scrCompileGlob+0x1d], 0x0
	jz ScriptCompile_510
	mov ebx, gScrVarPub
	cmp byte [ebx+0x7], 0x0
	jz ScriptCompile_520
	mov dword [gScrCompilePub+0x20024], 0x1
	mov dword [scrCompileGlob+0x28], 0x0
	mov byte [scrCompileGlob+0x2c], 0x0
	mov dword [scrCompileGlob+0x30], 0x0
	mov byte [scrCompileGlob+0x34], 0x0
	mov dword [scrCompileGlob+0x38], 0x0
	mov dword [scrCompileGlob+0x3c], 0x0
	mov dword [scrCompileGlob+0x48], 0x0
	cmp byte [scrCompileGlob+0x25], 0x0
	jnz ScriptCompile_530
ScriptCompile_620:
	mov edx, [ebp-0x58]
	mov eax, [edx+0x4]
	mov [esp+0x4], eax
	mov eax, [scrCompileGlob+0x8]
	mov [esp], eax
	call FindVariable
	mov [esp], eax
	call FindObject
	mov esi, eax
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call FindVariable
	mov [esp], eax
	call GetVariableValueAddress
	mov ebx, eax
	mov dword [esp], 0x0
	call TempMalloc
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
	call EmitThreadInternal
ScriptCompile_640:
	mov dword [gScrCompilePub+0x20024], 0x0
	jmp ScriptCompile_220
ScriptCompile_460:
	mov eax, [ebp-0x48]
	cmp eax, [edi+0x18]
	jz ScriptCompile_450
	mov ecx, edi
	xor edx, edx
ScriptCompile_550:
	add edx, 0x1
	cmp edx, esi
	jz ScriptCompile_540
	mov eax, [ecx+0x1c]
	add ecx, 0x4
	cmp [ebp-0x48], eax
	jnz ScriptCompile_550
	jmp ScriptCompile_450
ScriptCompile_140:
	mov dword [esp+0x4], _cstring_cannot_recurse_
	mov edx, [ebp-0x58]
	mov eax, [edx+0x4]
	mov [esp], eax
	call CompileError
	jmp ScriptCompile_250
ScriptCompile_470:
	mov dword [esp+0x4], _cstring_local_var_stack_
	mov dword [esp], 0x2
	call Com_Error
	mov esi, [edi+0xc]
	jmp ScriptCompile_560
ScriptCompile_260:
	mov eax, gScrVarPub
	cmp byte [eax+0x7], 0x0
	jz ScriptCompile_250
	mov dword [ebp-0x54], 0xc
	jmp ScriptCompile_570
ScriptCompile_10:
	mov ecx, [ebp+0x14]
	lea ecx, [ecx+edx*8]
	mov [ebp-0x6c], ecx
	add eax, edx
	mov [ebp-0x40], eax
	cmp eax, 0x400
	jle ScriptCompile_580
ScriptCompile_20:
	mov dword [esp+0x4], _cstring_max_precache_ent
	mov dword [esp], 0x2
	call Com_Error
	mov ebx, [ebp-0x6c]
	mov [scrCompileGlob+0x54], ebx
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov eax, [eax]
	mov edi, [eax+0x4]
	test edi, edi
	jnz ScriptCompile_30
ScriptCompile_40:
	mov ecx, edx
	jmp ScriptCompile_590
ScriptCompile_510:
	mov dword [scrCompileGlob+0x28], 0x0
	mov byte [scrCompileGlob+0x2c], 0x0
	mov dword [scrCompileGlob+0x30], 0x0
	mov byte [scrCompileGlob+0x34], 0x0
	mov dword [scrCompileGlob+0x38], 0x0
	mov dword [scrCompileGlob+0x3c], 0x0
	mov dword [scrCompileGlob+0x48], 0x0
	cmp byte [scrCompileGlob+0x24], 0x0
	jnz ScriptCompile_600
ScriptCompile_650:
	mov ecx, [ebp-0x58]
	mov eax, [ecx+0x4]
	mov [esp+0x4], eax
	mov eax, [scrCompileGlob+0x8]
	mov [esp], eax
	call FindVariable
	mov [esp], eax
	call FindObject
	mov esi, eax
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call FindVariable
	mov [esp], eax
	call GetVariableValueAddress
	mov ebx, eax
	mov dword [esp], 0x0
	call TempMalloc
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
	call EmitThreadInternal
	jmp ScriptCompile_220
ScriptCompile_230:
	mov dword [esp+0x4], _cstring_cannot_put_using
	mov edx, [ebp-0x58]
	mov eax, [edx+0x8]
	mov [esp], eax
	call CompileError
	jmp ScriptCompile_220
ScriptCompile_240:
	mov dword [esp+0x4], _cstring__has_no_matching
	mov ebx, [ebp-0x58]
	mov eax, [ebx+0x4]
	mov [esp], eax
	call CompileError
	jmp ScriptCompile_250
ScriptCompile_150:
	mov dword [esp+0x4], _cstring__has_no_matching1
	mov eax, [scrCompileGlob+0x20]
	mov [esp], eax
	call CompileError
	jmp ScriptCompile_610
ScriptCompile_320:
	lea eax, [ebp-0x38]
	mov [esp+0x4], eax
	mov [esp], esi
	call SetVariableValue
	jmp ScriptCompile_350
ScriptCompile_530:
	mov byte [scrCompileGlob+0x25], 0x0
	xor ecx, ecx
	xor edx, edx
	xor eax, eax
	call EmitOpcode
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	call AddOpcodePos
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0xfffffffe
	call AddOpcodePos
	jmp ScriptCompile_620
ScriptCompile_520:
	mov dword [esp], 0x0
	call TempMalloc
	mov esi, eax
	mov edi, [ebx+0x38]
	mov dword [gScrCompilePub+0x20024], 0x2
	mov dword [scrCompileGlob+0x28], 0x0
	mov byte [scrCompileGlob+0x2c], 0x0
	mov dword [scrCompileGlob+0x30], 0x0
	mov byte [scrCompileGlob+0x34], 0x0
	mov dword [scrCompileGlob+0x38], 0x0
	mov dword [scrCompileGlob+0x3c], 0x0
	mov dword [scrCompileGlob+0x48], 0x0
	cmp byte [scrCompileGlob+0x25], 0x0
	jnz ScriptCompile_630
ScriptCompile_670:
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
	call EmitThreadInternal
	mov [esp], esi
	call TempMemorySetPos
	mov [ebx+0x38], edi
	jmp ScriptCompile_640
ScriptCompile_600:
	mov byte [scrCompileGlob+0x24], 0x0
	xor ecx, ecx
	xor edx, edx
	xor eax, eax
	call EmitOpcode
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	call AddOpcodePos
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0xfffffffe
	call AddOpcodePos
	jmp ScriptCompile_650
ScriptCompile_280:
	mov [esp], edi
	call SL_ConvertToString
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_could_not_find_s
	mov edx, [ebp-0x64]
	mov eax, [edx+0x4]
	mov [esp], eax
	call CompileError
	jmp ScriptCompile_660
ScriptCompile_630:
	mov byte [scrCompileGlob+0x25], 0x0
	xor ecx, ecx
	xor edx, edx
	xor eax, eax
	call EmitOpcode
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	call AddOpcodePos
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0xfffffffe
	call AddOpcodePos
	jmp ScriptCompile_670
	nop


;CompareCaseInfo(void const*, void const*)
CompareCaseInfo:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0xc]
	mov edx, [eax]
	mov eax, [ebp+0x8]
	cmp [eax], edx
	ja CompareCaseInfo_10
	setb al
	movzx eax, al
	pop ebp
	ret
CompareCaseInfo_10:
	mov eax, 0xffffffff
	pop ebp
	ret


;Initialized global or static variables of scr_compiler:
SECTION .data


;Initialized constant data of scr_compiler:
SECTION .rdata


;Zero initialized global or static variables of scr_compiler:
SECTION .bss
;scrCompileGlob: resb 0x200
;gScrCompilePub: resb 0x21064


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
_cstring_scr_func_table_s:		db 15h,"SCR_FUNC_TABLE_SIZE exceeded",0
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

