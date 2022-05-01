;Imports of eval:
	extern __cxa_allocate_exception
	extern __cxa_throw
	extern g_fltMin__uint4
	extern floor
	extern pow
	extern _Z7stricmpPKcS0_
	extern free
	extern malloc
	extern memcpy
	extern __cxa_begin_catch
	extern __cxa_rethrow
	extern __cxa_end_catch
	extern _Unwind_Resume

;Exports of eval:
	global s_rightToLeft
	global s_precedence
	global s_consumedOperandCount
	global _Z29Eval_PrepareBinaryOpSameTypesP4Eval
	global _Z28Eval_PrepareBinaryOpIntegersP4Eval
	global _Z27Eval_PrepareBinaryOpBooleanP4Eval
	global _Z19Eval_EvaluationStepP4Eval
	global _Z10Eval_SolveP4Eval
	global _Z15Eval_PushNumberP4Evald
	global _Z16Eval_PushIntegerP4Evali
	global _Z17Eval_PushOperatorP4Eval16EvalOperatorType
	global _Z21Eval_OperatorForTokenPKcP16EvalOperatorType
	global _Z23Eval_AnyMissingOperandsPK4Eval


SECTION .text


;Eval_PrepareBinaryOpSameTypes(Eval*)
_Z29Eval_PrepareBinaryOpSameTypesP4Eval:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, eax
	mov edx, [eax+0x4004]
	cmp edx, 0x1
	jle _Z29Eval_PrepareBinaryOpSameTypesP4Eval_10
	lea eax, [edx+edx*2-0x6]
	lea esi, [ebx+eax*4]
	lea eax, [esi+0x1000]
	mov [ebp-0x1c], eax
	mov ecx, [esi+0x1000]
	cmp ecx, 0x2
	jz _Z29Eval_PrepareBinaryOpSameTypesP4Eval_20
	lea eax, [edx+edx*2-0x3]
	lea eax, [ebx+eax*4]
	lea edi, [eax+0x1000]
	mov edx, [eax+0x1000]
	cmp edx, 0x2
	jz _Z29Eval_PrepareBinaryOpSameTypesP4Eval_20
	cmp ecx, edx
	jz _Z29Eval_PrepareBinaryOpSameTypesP4Eval_30
	sub ecx, 0x1
	jz _Z29Eval_PrepareBinaryOpSameTypesP4Eval_40
	cvtsi2sd xmm0, dword [eax+0x1004]
	movsd [edi+0x4], xmm0
	mov eax, [ebx+0x4004]
	lea eax, [eax+eax*2]
	mov dword [ebx+eax*4+0xff4], 0x0
_Z29Eval_PrepareBinaryOpSameTypesP4Eval_30:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z29Eval_PrepareBinaryOpSameTypesP4Eval_20:
	mov dword [esp], 0x4
	call __cxa_allocate_exception
	mov dword [eax], _cstring_operation_not_va
_Z29Eval_PrepareBinaryOpSameTypesP4Eval_50:
	mov dword [esp+0x8], 0x0
	mov edx, [0xd5cca78]
	mov [esp+0x4], edx
	mov [esp], eax
	call __cxa_throw
_Z29Eval_PrepareBinaryOpSameTypesP4Eval_40:
	cvtsi2sd xmm0, dword [esi+0x1004]
	mov eax, [ebp-0x1c]
	movsd [eax+0x4], xmm0
	mov eax, [ebx+0x4004]
	lea eax, [eax+eax*2]
	mov dword [ebx+eax*4+0xfe8], 0x0
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z29Eval_PrepareBinaryOpSameTypesP4Eval_10:
	mov dword [esp], 0x4
	call __cxa_allocate_exception
	mov dword [eax], _cstring_missing_operand_
	jmp _Z29Eval_PrepareBinaryOpSameTypesP4Eval_50
	nop


;Eval_PrepareBinaryOpIntegers(Eval*)
_Z28Eval_PrepareBinaryOpIntegersP4Eval:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ecx, eax
	mov edx, [eax+0x4004]
	cmp edx, 0x1
	jle _Z28Eval_PrepareBinaryOpIntegersP4Eval_10
	lea eax, [edx+edx*2-0x6]
	lea ebx, [ecx+eax*4]
	lea edi, [ebx+0x1000]
	mov esi, [ebx+0x1000]
	cmp esi, 0x2
	jz _Z28Eval_PrepareBinaryOpIntegersP4Eval_20
	lea eax, [edx+edx*2]
	cmp dword [ecx+eax*4+0xff4], 0x2
	jz _Z28Eval_PrepareBinaryOpIntegersP4Eval_20
	test esi, esi
	jz _Z28Eval_PrepareBinaryOpIntegersP4Eval_30
	lea eax, [edx+edx*2-0x3]
	lea edx, [ecx+eax*4]
	lea eax, [edx+0x1000]
	mov ebx, [edx+0x1000]
	test ebx, ebx
	jnz _Z28Eval_PrepareBinaryOpIntegersP4Eval_40
_Z28Eval_PrepareBinaryOpIntegersP4Eval_50:
	cvttsd2si eax, qword [eax+0x4]
	mov [edx+0x1004], eax
	mov eax, [ecx+0x4004]
	lea eax, [eax+eax*2]
	mov dword [ecx+eax*4+0xff4], 0x1
_Z28Eval_PrepareBinaryOpIntegersP4Eval_40:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z28Eval_PrepareBinaryOpIntegersP4Eval_30:
	cvttsd2si eax, qword [edi+0x4]
	mov [ebx+0x1004], eax
	mov eax, [ecx+0x4004]
	lea eax, [eax+eax*2]
	mov dword [ecx+eax*4+0xfe8], 0x1
	mov edx, [ecx+0x4004]
	lea eax, [edx+edx*2-0x3]
	lea edx, [ecx+eax*4]
	lea eax, [edx+0x1000]
	mov ebx, [edx+0x1000]
	test ebx, ebx
	jz _Z28Eval_PrepareBinaryOpIntegersP4Eval_50
	jmp _Z28Eval_PrepareBinaryOpIntegersP4Eval_40
_Z28Eval_PrepareBinaryOpIntegersP4Eval_20:
	mov dword [esp], 0x4
	call __cxa_allocate_exception
	mov dword [eax], _cstring_operation_not_va
_Z28Eval_PrepareBinaryOpIntegersP4Eval_60:
	mov dword [esp+0x8], 0x0
	mov edx, [0xd5cca78]
	mov [esp+0x4], edx
	mov [esp], eax
	call __cxa_throw
_Z28Eval_PrepareBinaryOpIntegersP4Eval_10:
	mov dword [esp], 0x4
	call __cxa_allocate_exception
	mov dword [eax], _cstring_missing_operand_
	jmp _Z28Eval_PrepareBinaryOpIntegersP4Eval_60
	nop


;Eval_PrepareBinaryOpBoolean(Eval*)
_Z27Eval_PrepareBinaryOpBooleanP4Eval:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ecx, eax
	mov edx, [eax+0x4004]
	cmp edx, 0x1
	jle _Z27Eval_PrepareBinaryOpBooleanP4Eval_10
	lea eax, [edx+edx*2-0x6]
	lea esi, [ecx+eax*4]
	lea edi, [esi+0x1000]
	mov ebx, [esi+0x1000]
	cmp ebx, 0x2
	jz _Z27Eval_PrepareBinaryOpBooleanP4Eval_20
	lea eax, [edx+edx*2]
	cmp dword [ecx+eax*4+0xff4], 0x2
	jz _Z27Eval_PrepareBinaryOpBooleanP4Eval_20
	test ebx, ebx
	jnz _Z27Eval_PrepareBinaryOpBooleanP4Eval_30
	pxor xmm0, xmm0
	ucomisd xmm0, [edi+0x4]
	setnz al
	setp dl
	or al, dl
	movzx eax, al
	mov [esi+0x1004], eax
	mov eax, [ecx+0x4004]
	lea eax, [eax+eax*2]
	mov dword [ecx+eax*4+0xfe8], 0x1
	mov eax, [ecx+0x4004]
	sub eax, 0x1
	lea eax, [eax+eax*2]
	lea ebx, [ecx+eax*4]
	lea eax, [ebx+0x1000]
	mov esi, [ebx+0x1000]
	test esi, esi
	jnz _Z27Eval_PrepareBinaryOpBooleanP4Eval_40
_Z27Eval_PrepareBinaryOpBooleanP4Eval_50:
	pxor xmm0, xmm0
	ucomisd xmm0, [eax+0x4]
	setnz al
	setp dl
	or al, dl
	movzx eax, al
	mov [ebx+0x1004], eax
	mov eax, [ecx+0x4004]
	lea eax, [eax+eax*2]
	mov dword [ecx+eax*4+0xff4], 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z27Eval_PrepareBinaryOpBooleanP4Eval_30:
	xor eax, eax
	cmp dword [esi+0x1004], 0x0
	setnz al
	mov [esi+0x1004], eax
	mov eax, [ecx+0x4004]
	sub eax, 0x1
	lea eax, [eax+eax*2]
	lea ebx, [ecx+eax*4]
	lea eax, [ebx+0x1000]
	mov esi, [ebx+0x1000]
	test esi, esi
	jz _Z27Eval_PrepareBinaryOpBooleanP4Eval_50
_Z27Eval_PrepareBinaryOpBooleanP4Eval_40:
	xor eax, eax
	cmp dword [ebx+0x1004], 0x0
	setnz al
	mov [ebx+0x1004], eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z27Eval_PrepareBinaryOpBooleanP4Eval_20:
	mov dword [esp], 0x4
	call __cxa_allocate_exception
	mov dword [eax], _cstring_operation_not_va
_Z27Eval_PrepareBinaryOpBooleanP4Eval_60:
	mov dword [esp+0x8], 0x0
	mov edx, [0xd5cca78]
	mov [esp+0x4], edx
	mov [esp], eax
	call __cxa_throw
_Z27Eval_PrepareBinaryOpBooleanP4Eval_10:
	mov dword [esp], 0x4
	call __cxa_allocate_exception
	mov dword [eax], _cstring_missing_operand_
	jmp _Z27Eval_PrepareBinaryOpBooleanP4Eval_60
	nop


;Eval_EvaluationStep(Eval*)
_Z19Eval_EvaluationStepP4Eval:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov [ebp-0x54], eax
	mov edx, eax
	mov eax, [eax+0x4000]
	test eax, eax
	jz _Z19Eval_EvaluationStepP4Eval_10
	sub eax, 0x1
	mov [edx+0x4000], eax
	mov eax, [edx+eax*4]
	test eax, eax
	jz _Z19Eval_EvaluationStepP4Eval_20
	cmp eax, 0x3
	jz _Z19Eval_EvaluationStepP4Eval_30
	mov ecx, [ebp-0x54]
	mov edx, [ecx+0x4004]
	test edx, edx
	jz _Z19Eval_EvaluationStepP4Eval_40
	cmp eax, 0x19
	ja _Z19Eval_EvaluationStepP4Eval_10
	jmp dword [eax*4+_Z19Eval_EvaluationStepP4Eval_jumptab_0]
_Z19Eval_EvaluationStepP4Eval_10:
	xor eax, eax
_Z19Eval_EvaluationStepP4Eval_90:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19Eval_EvaluationStepP4Eval_20:
	mov eax, 0x1
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19Eval_EvaluationStepP4Eval_560:
	cmp edx, 0x2
	jle _Z19Eval_EvaluationStepP4Eval_40
	lea eax, [edx+edx*2-0x9]
	mov edi, [ebp-0x54]
	lea eax, [edi+eax*4]
	lea ebx, [eax+0x1000]
	mov ecx, [eax+0x1000]
	test ecx, ecx
	jnz _Z19Eval_EvaluationStepP4Eval_50
	pxor xmm0, xmm0
	ucomisd xmm0, [ebx+0x4]
	jp _Z19Eval_EvaluationStepP4Eval_60
	jnz _Z19Eval_EvaluationStepP4Eval_60
	mov ebx, 0xffffffff
_Z19Eval_EvaluationStepP4Eval_490:
	lea eax, [edx+edx*2]
	mov ecx, [ebp-0x54]
	lea eax, [ecx+eax*4]
	cmp dword [eax+0xfe8], 0x2
	jnz _Z19Eval_EvaluationStepP4Eval_70
	cmp dword [eax+0xff4], 0x2
	jz _Z19Eval_EvaluationStepP4Eval_80
	mov eax, [ebp-0x54]
_Z19Eval_EvaluationStepP4Eval_450:
	call _Z29Eval_PrepareBinaryOpSameTypesP4Eval
_Z19Eval_EvaluationStepP4Eval_530:
	mov esi, [ebp-0x54]
	mov ecx, [esi+0x4004]
	lea edx, [ecx+ecx*2]
	lea edx, [esi+edx*4]
	lea esi, [edx+0xfdc]
	lea eax, [ebx+ecx]
	lea eax, [eax+eax*2]
	mov edi, [ebp-0x54]
	lea eax, [edi+eax*4]
	lea ebx, [eax+0x1000]
	mov eax, [eax+0x1000]
	mov [edx+0xfdc], eax
	mov eax, [ebx+0x4]
	mov [esi+0x4], eax
	mov eax, [ebx+0x8]
	mov [esi+0x8], eax
	sub ecx, 0x2
	mov [edi+0x4004], ecx
	sub dword [edi+0x4000], 0x1
	mov eax, 0x1
	jmp _Z19Eval_EvaluationStepP4Eval_90
_Z19Eval_EvaluationStepP4Eval_770:
	mov eax, [ebp-0x54]
	call _Z29Eval_PrepareBinaryOpSameTypesP4Eval
	mov edi, [ebp-0x54]
	mov edx, [edi+0x4004]
	lea eax, [edx+edx*2-0x6]
	lea ecx, [edi+eax*4]
	lea ebx, [ecx+0x1000]
	mov eax, [ecx+0x1000]
	test eax, eax
	jnz _Z19Eval_EvaluationStepP4Eval_100
	lea eax, [edx+edx*2]
	movsd xmm0, qword [ebx+0x4]
	ucomisd xmm0, [edi+eax*4+0xff8]
	setae al
_Z19Eval_EvaluationStepP4Eval_120:
	movzx eax, al
	mov [ecx+0x1004], eax
	mov eax, [edi+0x4004]
	lea eax, [eax+eax*2]
	mov dword [edi+eax*4+0xfe8], 0x1
_Z19Eval_EvaluationStepP4Eval_460:
	mov esi, [ebp-0x54]
	sub dword [esi+0x4004], 0x1
	mov eax, 0x1
	jmp _Z19Eval_EvaluationStepP4Eval_90
_Z19Eval_EvaluationStepP4Eval_760:
	mov eax, [ebp-0x54]
	call _Z29Eval_PrepareBinaryOpSameTypesP4Eval
	mov edi, [ebp-0x54]
	mov edx, [edi+0x4004]
	lea eax, [edx+edx*2-0x6]
	lea ecx, [edi+eax*4]
	lea ebx, [ecx+0x1000]
	mov eax, [ecx+0x1000]
	test eax, eax
	jnz _Z19Eval_EvaluationStepP4Eval_110
	lea eax, [edx+edx*2]
	movsd xmm0, qword [ebx+0x4]
	ucomisd xmm0, [edi+eax*4+0xff8]
	seta al
	jmp _Z19Eval_EvaluationStepP4Eval_120
_Z19Eval_EvaluationStepP4Eval_740:
	mov eax, [ebp-0x54]
	call _Z29Eval_PrepareBinaryOpSameTypesP4Eval
	mov edi, [ebp-0x54]
	mov edx, [edi+0x4004]
	lea eax, [edx+edx*2-0x6]
	lea ecx, [edi+eax*4]
	lea ebx, [ecx+0x1000]
	mov eax, [ecx+0x1000]
	test eax, eax
	jnz _Z19Eval_EvaluationStepP4Eval_130
	lea eax, [edx+edx*2]
	movsd xmm0, qword [edi+eax*4+0xff8]
	ucomisd xmm0, [ebx+0x4]
	seta al
	jmp _Z19Eval_EvaluationStepP4Eval_120
_Z19Eval_EvaluationStepP4Eval_750:
	mov eax, [ebp-0x54]
	call _Z29Eval_PrepareBinaryOpSameTypesP4Eval
	mov edi, [ebp-0x54]
	mov edx, [edi+0x4004]
	lea eax, [edx+edx*2-0x6]
	lea ecx, [edi+eax*4]
	lea ebx, [ecx+0x1000]
	mov eax, [ecx+0x1000]
	test eax, eax
	jnz _Z19Eval_EvaluationStepP4Eval_140
	lea eax, [edx+edx*2]
	movsd xmm0, qword [edi+eax*4+0xff8]
	ucomisd xmm0, [ebx+0x4]
	setae al
	jmp _Z19Eval_EvaluationStepP4Eval_120
_Z19Eval_EvaluationStepP4Eval_730:
	cmp edx, 0x1
	jle _Z19Eval_EvaluationStepP4Eval_150
	lea eax, [edx+edx*2-0x6]
	mov ebx, [ebp-0x54]
	lea ecx, [ebx+eax*4]
	cmp dword [ecx+0x1000], 0x2
	jz _Z19Eval_EvaluationStepP4Eval_160
	mov eax, ebx
_Z19Eval_EvaluationStepP4Eval_520:
	call _Z29Eval_PrepareBinaryOpSameTypesP4Eval
	mov edi, [ebp-0x54]
	mov edx, [edi+0x4004]
	lea eax, [edx+edx*2-0x6]
	lea ecx, [edi+eax*4]
	lea ebx, [ecx+0x1000]
	mov eax, [ecx+0x1000]
	test eax, eax
	jnz _Z19Eval_EvaluationStepP4Eval_170
	lea eax, [edx+edx*2]
	movsd xmm0, qword [ebx+0x4]
	ucomisd xmm0, [edi+eax*4+0xff8]
	setnz al
	setp dl
	or al, dl
	jmp _Z19Eval_EvaluationStepP4Eval_120
_Z19Eval_EvaluationStepP4Eval_720:
	cmp edx, 0x1
	jle _Z19Eval_EvaluationStepP4Eval_180
	lea eax, [edx+edx*2-0x6]
	mov edi, [ebp-0x54]
	lea ecx, [edi+eax*4]
	cmp dword [ecx+0x1000], 0x2
	jz _Z19Eval_EvaluationStepP4Eval_190
	mov eax, edi
_Z19Eval_EvaluationStepP4Eval_510:
	call _Z29Eval_PrepareBinaryOpSameTypesP4Eval
	mov eax, [ebp-0x54]
	mov edx, [eax+0x4004]
	lea eax, [edx+edx*2-0x6]
	mov ebx, [ebp-0x54]
	lea ecx, [ebx+eax*4]
	lea ebx, [ecx+0x1000]
	mov eax, [ecx+0x1000]
	test eax, eax
	jnz _Z19Eval_EvaluationStepP4Eval_200
	lea eax, [edx+edx*2]
	movsd xmm0, qword [ebx+0x4]
	mov esi, [ebp-0x54]
	ucomisd xmm0, [esi+eax*4+0xff8]
	setz al
	setnp dl
	and al, dl
	movzx eax, al
	mov [ecx+0x1004], eax
	mov eax, [esi+0x4004]
	lea eax, [eax+eax*2]
	mov dword [esi+eax*4+0xfe8], 0x1
_Z19Eval_EvaluationStepP4Eval_230:
	mov eax, [ebp-0x54]
	sub dword [eax+0x4004], 0x1
	mov eax, 0x1
	jmp _Z19Eval_EvaluationStepP4Eval_90
_Z19Eval_EvaluationStepP4Eval_700:
	mov eax, [ebp-0x54]
	call _Z27Eval_PrepareBinaryOpBooleanP4Eval
_Z19Eval_EvaluationStepP4Eval_370:
	mov edx, [ebp-0x54]
	mov eax, [edx+0x4004]
	lea ecx, [eax+eax*2-0x6]
	lea ecx, [edx+ecx*4]
	lea eax, [eax+eax*2]
	mov edx, [ecx+0x1004]
	mov ebx, [ebp-0x54]
	and edx, [ebx+eax*4+0xff8]
	mov [ecx+0x1004], edx
	sub dword [ebx+0x4004], 0x1
	mov eax, 0x1
	jmp _Z19Eval_EvaluationStepP4Eval_90
_Z19Eval_EvaluationStepP4Eval_690:
	lea eax, [edx+edx*2-0x3]
	mov esi, [ebp-0x54]
	lea ecx, [esi+eax*4]
	lea edx, [ecx+0x1000]
	mov eax, [ecx+0x1000]
	test eax, eax
	jnz _Z19Eval_EvaluationStepP4Eval_210
	pxor xmm0, xmm0
	ucomisd xmm0, [edx+0x4]
	setz al
	setnp dl
	and al, dl
	movzx eax, al
	mov [ecx+0x1004], eax
_Z19Eval_EvaluationStepP4Eval_410:
	mov edi, [ebp-0x54]
	mov eax, [edi+0x4004]
	lea eax, [eax+eax*2]
	mov dword [edi+eax*4+0xff4], 0x1
	mov eax, 0x1
	jmp _Z19Eval_EvaluationStepP4Eval_90
_Z19Eval_EvaluationStepP4Eval_640:
	mov eax, [ebp-0x54]
	call _Z29Eval_PrepareBinaryOpSameTypesP4Eval
	mov edx, [ebp-0x54]
	mov ecx, [edx+0x4004]
	lea eax, [ecx+ecx*2-0x6]
	lea edx, [edx+eax*4]
	lea ebx, [edx+0x1000]
	mov esi, [edx+0x1000]
	test esi, esi
	jz _Z19Eval_EvaluationStepP4Eval_220
	lea eax, [ecx+ecx*2]
	mov edi, [ebp-0x54]
	mov ecx, [edi+eax*4+0xff8]
	sar dword [edx+0x1004], cl
	jmp _Z19Eval_EvaluationStepP4Eval_230
_Z19Eval_EvaluationStepP4Eval_680:
	mov eax, [ebp-0x54]
	call _Z28Eval_PrepareBinaryOpIntegersP4Eval
	mov edi, [ebp-0x54]
	mov eax, [edi+0x4004]
	lea ecx, [eax+eax*2-0x6]
	lea ecx, [edi+ecx*4]
	lea eax, [eax+eax*2]
	mov edx, [ecx+0x1004]
	xor edx, [edi+eax*4+0xff8]
	mov [ecx+0x1004], edx
	sub dword [edi+0x4004], 0x1
	mov eax, 0x1
	jmp _Z19Eval_EvaluationStepP4Eval_90
_Z19Eval_EvaluationStepP4Eval_600:
	mov eax, [ebp-0x54]
	call _Z29Eval_PrepareBinaryOpSameTypesP4Eval
	mov ecx, [ebp-0x54]
	mov edx, [ecx+0x4004]
	lea eax, [edx+edx*2-0x6]
	lea ecx, [ecx+eax*4]
	lea ebx, [ecx+0x1000]
	mov eax, [ecx+0x1000]
	test eax, eax
	jnz _Z19Eval_EvaluationStepP4Eval_240
	lea eax, [edx+edx*2]
	movsd xmm0, qword [ebx+0x4]
	mov esi, [ebp-0x54]
	mulsd xmm0, [esi+eax*4+0xff8]
	movsd [ebx+0x4], xmm0
	jmp _Z19Eval_EvaluationStepP4Eval_230
_Z19Eval_EvaluationStepP4Eval_590:
	lea eax, [edx+edx*2-0x3]
	mov ebx, [ebp-0x54]
	lea eax, [ebx+eax*4]
	lea ecx, [eax+0x1000]
	mov edx, [eax+0x1000]
	cmp edx, 0x1
	jz _Z19Eval_EvaluationStepP4Eval_250
	test edx, edx
	jnz _Z19Eval_EvaluationStepP4Eval_260
	movsd xmm0, qword [ecx+0x4]
	xorpd xmm0, [g_fltMin__uint4+0x380]
	movsd [ecx+0x4], xmm0
	mov eax, 0x1
	jmp _Z19Eval_EvaluationStepP4Eval_90
_Z19Eval_EvaluationStepP4Eval_580:
	mov eax, [ebp-0x54]
	call _Z29Eval_PrepareBinaryOpSameTypesP4Eval
	mov ecx, [ebp-0x54]
	mov edx, [ecx+0x4004]
	lea eax, [edx+edx*2-0x6]
	lea ecx, [ecx+eax*4]
	lea ebx, [ecx+0x1000]
	mov eax, [ecx+0x1000]
	test eax, eax
	jnz _Z19Eval_EvaluationStepP4Eval_270
	lea eax, [edx+edx*2]
	movsd xmm0, qword [ebx+0x4]
	mov esi, [ebp-0x54]
	subsd xmm0, [esi+eax*4+0xff8]
	movsd [ebx+0x4], xmm0
	jmp _Z19Eval_EvaluationStepP4Eval_230
_Z19Eval_EvaluationStepP4Eval_570:
	cmp edx, 0x1
	jle _Z19Eval_EvaluationStepP4Eval_280
	lea eax, [edx+edx*2-0x6]
	mov ebx, [ebp-0x54]
	lea ecx, [ebx+eax*4]
	cmp dword [ecx+0x1000], 0x2
	jz _Z19Eval_EvaluationStepP4Eval_290
	mov eax, ebx
_Z19Eval_EvaluationStepP4Eval_500:
	call _Z29Eval_PrepareBinaryOpSameTypesP4Eval
	mov esi, [ebp-0x54]
	mov edx, [esi+0x4004]
	lea eax, [edx+edx*2-0x6]
	lea ecx, [esi+eax*4]
	lea ebx, [ecx+0x1000]
	mov eax, [ecx+0x1000]
	test eax, eax
	jnz _Z19Eval_EvaluationStepP4Eval_300
	lea eax, [edx+edx*2]
	movsd xmm0, qword [ebx+0x4]
	addsd xmm0, [esi+eax*4+0xff8]
	movsd [ebx+0x4], xmm0
	jmp _Z19Eval_EvaluationStepP4Eval_230
_Z19Eval_EvaluationStepP4Eval_710:
	mov eax, [ebp-0x54]
	call _Z27Eval_PrepareBinaryOpBooleanP4Eval
_Z19Eval_EvaluationStepP4Eval_380:
	mov esi, [ebp-0x54]
	mov eax, [esi+0x4004]
	lea ecx, [eax+eax*2-0x6]
	lea ecx, [esi+ecx*4]
	lea eax, [eax+eax*2]
	mov edx, [ecx+0x1004]
	or edx, [esi+eax*4+0xff8]
	mov [ecx+0x1004], edx
	sub dword [esi+0x4004], 0x1
	mov eax, 0x1
	jmp _Z19Eval_EvaluationStepP4Eval_90
_Z19Eval_EvaluationStepP4Eval_620:
	mov eax, [ebp-0x54]
	call _Z29Eval_PrepareBinaryOpSameTypesP4Eval
	mov eax, [ebp-0x54]
	mov edx, [eax+0x4004]
	lea ecx, [edx-0x2]
	lea eax, [ecx+ecx*2]
	mov esi, [ebp-0x54]
	lea ebx, [esi+eax*4]
	mov eax, [ebx+0x1000]
	test eax, eax
	jnz _Z19Eval_EvaluationStepP4Eval_310
	lea eax, [edx+edx*2]
	movsd xmm2, qword [esi+eax*4+0xff8]
	ucomisd xmm2, [_double_0_00000000]
	jz _Z19Eval_EvaluationStepP4Eval_320
_Z19Eval_EvaluationStepP4Eval_540:
	lea ebx, [ecx+ecx*2]
	mov edi, [ebp-0x54]
	lea ebx, [edi+ebx*4+0x1000]
	movsd xmm1, qword [ebx+0x4]
	movapd xmm0, xmm1
	divsd xmm0, xmm2
	movsd [esp], xmm0
	movsd [ebp-0x38], xmm1
	movsd [ebp-0x48], xmm2
	call floor
	fstp qword [ebp-0x28]
	movsd xmm2, qword [ebp-0x48]
	mulsd xmm2, [ebp-0x28]
	movsd xmm1, qword [ebp-0x38]
	subsd xmm1, xmm2
	movsd [ebx+0x4], xmm1
_Z19Eval_EvaluationStepP4Eval_350:
	mov edi, [ebp-0x54]
	sub dword [edi+0x4004], 0x1
	mov eax, 0x1
	jmp _Z19Eval_EvaluationStepP4Eval_90
_Z19Eval_EvaluationStepP4Eval_610:
	mov eax, [ebp-0x54]
	call _Z29Eval_PrepareBinaryOpSameTypesP4Eval
	mov ecx, [ebp-0x54]
	mov edx, [ecx+0x4004]
	lea ecx, [edx-0x2]
	lea eax, [ecx+ecx*2]
	mov esi, [ebp-0x54]
	lea ebx, [esi+eax*4]
	mov eax, [ebx+0x1000]
	test eax, eax
	jnz _Z19Eval_EvaluationStepP4Eval_330
	lea eax, [edx+edx*2]
	movsd xmm1, qword [esi+eax*4+0xff8]
	ucomisd xmm1, [_double_0_00000000]
	jz _Z19Eval_EvaluationStepP4Eval_340
_Z19Eval_EvaluationStepP4Eval_550:
	lea eax, [ecx+ecx*2]
	mov edi, [ebp-0x54]
	lea eax, [edi+eax*4+0x1000]
	movsd xmm0, qword [eax+0x4]
	divsd xmm0, xmm1
	movsd [eax+0x4], xmm0
	jmp _Z19Eval_EvaluationStepP4Eval_350
_Z19Eval_EvaluationStepP4Eval_630:
	mov eax, [ebp-0x54]
	call _Z29Eval_PrepareBinaryOpSameTypesP4Eval
	mov eax, [ebp-0x54]
	mov ecx, [eax+0x4004]
	lea eax, [ecx+ecx*2-0x6]
	mov ebx, [ebp-0x54]
	lea edx, [ebx+eax*4]
	lea ebx, [edx+0x1000]
	mov edi, [edx+0x1000]
	test edi, edi
	jz _Z19Eval_EvaluationStepP4Eval_360
	lea eax, [ecx+ecx*2]
	mov edi, [ebp-0x54]
	mov ecx, [edi+eax*4+0xff8]
	shl dword [edx+0x1004], cl
	jmp _Z19Eval_EvaluationStepP4Eval_230
_Z19Eval_EvaluationStepP4Eval_660:
	mov eax, [ebp-0x54]
	call _Z28Eval_PrepareBinaryOpIntegersP4Eval
	jmp _Z19Eval_EvaluationStepP4Eval_370
_Z19Eval_EvaluationStepP4Eval_670:
	mov eax, [ebp-0x54]
	call _Z28Eval_PrepareBinaryOpIntegersP4Eval
	jmp _Z19Eval_EvaluationStepP4Eval_380
_Z19Eval_EvaluationStepP4Eval_650:
	lea eax, [edx+edx*2-0x3]
	mov ebx, [ebp-0x54]
	lea ecx, [ebx+eax*4]
	lea eax, [ecx+0x1000]
	mov esi, [ecx+0x1000]
	test esi, esi
	jnz _Z19Eval_EvaluationStepP4Eval_390
	cvttsd2si eax, qword [eax+0x4]
	mov [ecx+0x1004], eax
	mov eax, [ebx+0x4004]
	lea eax, [eax+eax*2]
	mov dword [ebx+eax*4+0xff4], 0x1
	mov edx, [ebx+0x4004]
	mov esi, [ebp-0x54]
_Z19Eval_EvaluationStepP4Eval_440:
	lea eax, [edx+edx*2-0x3]
	not dword [esi+eax*4+0x1004]
	mov eax, 0x1
	jmp _Z19Eval_EvaluationStepP4Eval_90
_Z19Eval_EvaluationStepP4Eval_210:
	sub eax, 0x1
	jnz _Z19Eval_EvaluationStepP4Eval_400
	xor eax, eax
	cmp dword [ecx+0x1004], 0x0
	setz al
	mov [ecx+0x1004], eax
	jmp _Z19Eval_EvaluationStepP4Eval_410
_Z19Eval_EvaluationStepP4Eval_310:
	lea eax, [edx+edx*2]
	mov edx, [esi+eax*4+0xff8]
	test edx, edx
	jz _Z19Eval_EvaluationStepP4Eval_420
	mov eax, [ebx+0x1004]
	mov esi, edx
	cdq
	idiv esi
	mov [ebx+0x1004], edx
	jmp _Z19Eval_EvaluationStepP4Eval_350
_Z19Eval_EvaluationStepP4Eval_390:
	mov edi, ebx
	lea eax, [edx+edx*2]
	cmp dword [ebx+eax*4+0xfe8], 0x2
	jz _Z19Eval_EvaluationStepP4Eval_430
	mov esi, edi
	jmp _Z19Eval_EvaluationStepP4Eval_440
_Z19Eval_EvaluationStepP4Eval_330:
	lea eax, [edx+edx*2]
	mov edx, [esi+eax*4+0xff8]
	test edx, edx
	jz _Z19Eval_EvaluationStepP4Eval_420
	mov eax, [ebx+0x1004]
	mov esi, edx
	cdq
	idiv esi
	mov [ebx+0x1004], eax
	jmp _Z19Eval_EvaluationStepP4Eval_350
_Z19Eval_EvaluationStepP4Eval_70:
	mov eax, ecx
	jmp _Z19Eval_EvaluationStepP4Eval_450
_Z19Eval_EvaluationStepP4Eval_100:
	lea edx, [edx+edx*2]
	mov eax, [ecx+0x1004]
	cmp eax, [edi+edx*4+0xff8]
	setge al
	movzx eax, al
	mov [ecx+0x1004], eax
	jmp _Z19Eval_EvaluationStepP4Eval_460
_Z19Eval_EvaluationStepP4Eval_130:
	lea edx, [edx+edx*2]
	mov eax, [ecx+0x1004]
	cmp eax, [edi+edx*4+0xff8]
	setl al
	movzx eax, al
	mov [ecx+0x1004], eax
	jmp _Z19Eval_EvaluationStepP4Eval_460
_Z19Eval_EvaluationStepP4Eval_110:
	lea edx, [edx+edx*2]
	mov eax, [ecx+0x1004]
	cmp eax, [edi+edx*4+0xff8]
	setg al
	movzx eax, al
	mov [ecx+0x1004], eax
	jmp _Z19Eval_EvaluationStepP4Eval_460
_Z19Eval_EvaluationStepP4Eval_140:
	lea edx, [edx+edx*2]
	mov eax, [ecx+0x1004]
	cmp eax, [edi+edx*4+0xff8]
	setle al
	movzx eax, al
	mov [ecx+0x1004], eax
	jmp _Z19Eval_EvaluationStepP4Eval_460
_Z19Eval_EvaluationStepP4Eval_240:
	lea edx, [edx+edx*2]
	mov eax, [ecx+0x1004]
	mov edi, [ebp-0x54]
	imul eax, [edi+edx*4+0xff8]
	mov [ecx+0x1004], eax
	jmp _Z19Eval_EvaluationStepP4Eval_230
_Z19Eval_EvaluationStepP4Eval_270:
	lea edx, [edx+edx*2]
	mov eax, [ecx+0x1004]
	mov edi, [ebp-0x54]
	sub eax, [edi+edx*4+0xff8]
	mov [ecx+0x1004], eax
	jmp _Z19Eval_EvaluationStepP4Eval_230
_Z19Eval_EvaluationStepP4Eval_30:
	mov dword [esp], 0x4
	call __cxa_allocate_exception
	mov dword [eax], _cstring_found__with_no_f
_Z19Eval_EvaluationStepP4Eval_470:
	mov dword [esp+0x8], 0x0
	mov edx, [0xd5cca78]
	mov [esp+0x4], edx
	mov [esp], eax
	call __cxa_throw
_Z19Eval_EvaluationStepP4Eval_40:
	mov dword [esp], 0x4
	call __cxa_allocate_exception
	mov dword [eax], _cstring_missing_operand_
	jmp _Z19Eval_EvaluationStepP4Eval_470
_Z19Eval_EvaluationStepP4Eval_50:
	sub ecx, 0x1
	jnz _Z19Eval_EvaluationStepP4Eval_480
	cmp dword [eax+0x1004], 0x1
	sbb ebx, ebx
	or ebx, 0xfffffffe
	jmp _Z19Eval_EvaluationStepP4Eval_490
_Z19Eval_EvaluationStepP4Eval_200:
	lea edx, [edx+edx*2]
	mov eax, [ecx+0x1004]
	mov edi, [ebp-0x54]
	cmp eax, [edi+edx*4+0xff8]
	setz al
	movzx eax, al
	mov [ecx+0x1004], eax
	jmp _Z19Eval_EvaluationStepP4Eval_230
_Z19Eval_EvaluationStepP4Eval_170:
	lea edx, [edx+edx*2]
	mov eax, [ecx+0x1004]
	cmp eax, [edi+edx*4+0xff8]
	setnz al
	movzx eax, al
	mov [ecx+0x1004], eax
	jmp _Z19Eval_EvaluationStepP4Eval_460
_Z19Eval_EvaluationStepP4Eval_300:
	lea edx, [edx+edx*2]
	mov eax, [ecx+0x1004]
	add eax, [esi+edx*4+0xff8]
	mov [ecx+0x1004], eax
	jmp _Z19Eval_EvaluationStepP4Eval_230
_Z19Eval_EvaluationStepP4Eval_280:
	mov eax, [ebp-0x54]
	jmp _Z19Eval_EvaluationStepP4Eval_500
_Z19Eval_EvaluationStepP4Eval_180:
	mov eax, [ebp-0x54]
	jmp _Z19Eval_EvaluationStepP4Eval_510
_Z19Eval_EvaluationStepP4Eval_150:
	mov eax, [ebp-0x54]
	jmp _Z19Eval_EvaluationStepP4Eval_520
_Z19Eval_EvaluationStepP4Eval_360:
	lea eax, [ecx+ecx*2]
	mov esi, [ebp-0x54]
	movsd xmm0, qword [esi+eax*4+0xff8]
	movsd [esp+0x8], xmm0
	mov dword [esp], 0x0
	mov dword [esp+0x4], 0x40000000
	call pow
	fstp qword [ebp-0x50]
	movsd xmm0, qword [ebp-0x50]
	mulsd xmm0, [ebx+0x4]
	movsd [ebx+0x4], xmm0
	jmp _Z19Eval_EvaluationStepP4Eval_230
_Z19Eval_EvaluationStepP4Eval_220:
	lea eax, [ecx+ecx*2]
	mov esi, [ebp-0x54]
	movsd xmm0, qword [esi+eax*4+0xff8]
	xorpd xmm0, [g_fltMin__uint4+0x380]
	movsd [esp+0x8], xmm0
	mov dword [esp], 0x0
	mov dword [esp+0x4], 0x40000000
	call pow
	fstp qword [ebp-0x50]
	movsd xmm0, qword [ebp-0x50]
	mulsd xmm0, [ebx+0x4]
	movsd [ebx+0x4], xmm0
	jmp _Z19Eval_EvaluationStepP4Eval_230
_Z19Eval_EvaluationStepP4Eval_250:
	neg dword [eax+0x1004]
	mov eax, 0x1
	jmp _Z19Eval_EvaluationStepP4Eval_90
_Z19Eval_EvaluationStepP4Eval_160:
	lea eax, [edx+edx*2-0x3]
	lea eax, [ebx+eax*4]
	cmp dword [eax+0x1000], 0x2
	jnz _Z19Eval_EvaluationStepP4Eval_150
	mov eax, [eax+0x1004]
	mov [esp+0x4], eax
	mov eax, [ecx+0x1004]
	mov [esp], eax
	call _Z7stricmpPKcS0_
	mov ebx, eax
	mov esi, [ebp-0x54]
	mov eax, [esi+0x4004]
	lea eax, [eax+eax*2]
	mov eax, [esi+eax*4+0xfec]
	mov [esp], eax
	call free
	mov eax, [esi+0x4004]
	lea eax, [eax+eax*2]
	mov eax, [esi+eax*4+0xff8]
	mov [esp], eax
	call free
	mov eax, [esi+0x4004]
	lea eax, [eax+eax*2]
	mov dword [esi+eax*4+0xfe8], 0x1
	mov edx, [esi+0x4004]
	lea edx, [edx+edx*2]
	xor eax, eax
	test ebx, ebx
	setnz al
	mov [esi+edx*4+0xfec], eax
	jmp _Z19Eval_EvaluationStepP4Eval_460
_Z19Eval_EvaluationStepP4Eval_290:
	lea eax, [edx+edx*2-0x3]
	lea esi, [ebx+eax*4]
	cmp dword [esi+0x1000], 0x2
	jnz _Z19Eval_EvaluationStepP4Eval_280
	mov ebx, [ecx+0x1004]
	xor eax, eax
	cld
	mov ecx, 0xffffffff
	mov edi, ebx
	repne scasb
	mov ebx, ecx
	not ebx
	sub ebx, 0x1
	mov [ebp-0x1c], ebx
	mov ebx, [esi+0x1004]
	mov ecx, 0xffffffff
	mov edi, ebx
	repne scasb
	mov ebx, ecx
	not ebx
	mov edx, [ebp-0x1c]
	lea eax, [ebx+edx]
	mov [esp], eax
	call malloc
	mov esi, eax
	mov ecx, [ebp-0x54]
	mov eax, [ecx+0x4004]
	lea eax, [eax+eax*2]
	mov eax, [ecx+eax*4+0xfec]
	mov edi, [ebp-0x1c]
	mov [esp+0x8], edi
	mov [esp+0x4], eax
	mov [esp], esi
	call memcpy
	lea edx, [esi+edi]
	mov ecx, [ebp-0x54]
	mov eax, [ecx+0x4004]
	lea eax, [eax+eax*2]
	mov eax, [ecx+eax*4+0xff8]
	mov [esp+0x8], ebx
	mov [esp+0x4], eax
	mov [esp], edx
	call memcpy
	mov ebx, [ebp-0x54]
	mov eax, [ebx+0x4004]
	lea eax, [eax+eax*2]
	mov eax, [ebx+eax*4+0xfec]
	mov [esp], eax
	call free
	mov eax, [ebx+0x4004]
	lea eax, [eax+eax*2]
	mov eax, [ebx+eax*4+0xff8]
	mov [esp], eax
	call free
	mov eax, [ebx+0x4004]
	lea eax, [eax+eax*2]
	mov [ebx+eax*4+0xfec], esi
	jmp _Z19Eval_EvaluationStepP4Eval_230
_Z19Eval_EvaluationStepP4Eval_190:
	lea eax, [edx+edx*2-0x3]
	lea eax, [edi+eax*4]
	cmp dword [eax+0x1000], 0x2
	jnz _Z19Eval_EvaluationStepP4Eval_180
	mov eax, [eax+0x1004]
	mov [esp+0x4], eax
	mov eax, [ecx+0x1004]
	mov [esp], eax
	call _Z7stricmpPKcS0_
	mov ebx, eax
	mov eax, [edi+0x4004]
	lea eax, [eax+eax*2]
	mov eax, [edi+eax*4+0xfec]
	mov [esp], eax
	call free
	mov eax, [edi+0x4004]
	lea eax, [eax+eax*2]
	mov eax, [edi+eax*4+0xff8]
	mov [esp], eax
	call free
	mov eax, [edi+0x4004]
	lea eax, [eax+eax*2]
	mov dword [edi+eax*4+0xfe8], 0x1
	mov edx, [edi+0x4004]
	lea edx, [edx+edx*2]
	xor eax, eax
	test ebx, ebx
	setz al
	mov [edi+edx*4+0xfec], eax
	jmp _Z19Eval_EvaluationStepP4Eval_230
_Z19Eval_EvaluationStepP4Eval_60:
	mov ebx, 0xfffffffe
	jmp _Z19Eval_EvaluationStepP4Eval_490
_Z19Eval_EvaluationStepP4Eval_80:
	sub edx, ebx
	lea eax, [edx+edx*2]
	mov eax, [ecx+eax*4+0x1010]
	mov [esp], eax
	call free
	jmp _Z19Eval_EvaluationStepP4Eval_530
_Z19Eval_EvaluationStepP4Eval_260:
	mov dword [esp], 0x4
	call __cxa_allocate_exception
	mov dword [eax], _cstring_cannot_negate_st
	jmp _Z19Eval_EvaluationStepP4Eval_470
_Z19Eval_EvaluationStepP4Eval_480:
	mov dword [esp], 0x4
	call __cxa_allocate_exception
	mov dword [eax], _cstring_can_only_switch_
	jmp _Z19Eval_EvaluationStepP4Eval_470
_Z19Eval_EvaluationStepP4Eval_320:
	jp _Z19Eval_EvaluationStepP4Eval_540
_Z19Eval_EvaluationStepP4Eval_420:
	mov dword [esp], 0x4
	call __cxa_allocate_exception
	mov dword [eax], _cstring_divide_by_zero
	jmp _Z19Eval_EvaluationStepP4Eval_470
_Z19Eval_EvaluationStepP4Eval_400:
	mov dword [esp], 0x4
	call __cxa_allocate_exception
	mov dword [eax], _cstring_cannot_logical_i
	jmp _Z19Eval_EvaluationStepP4Eval_470
_Z19Eval_EvaluationStepP4Eval_340:
	jnp _Z19Eval_EvaluationStepP4Eval_420
	jmp _Z19Eval_EvaluationStepP4Eval_550
_Z19Eval_EvaluationStepP4Eval_430:
	mov dword [esp], 0x4
	call __cxa_allocate_exception
	mov dword [eax], _cstring_cannot_bitwise_i
	jmp _Z19Eval_EvaluationStepP4Eval_470
	nop
	
	
_Z19Eval_EvaluationStepP4Eval_jumptab_0:
	dd _Z19Eval_EvaluationStepP4Eval_10
	dd _Z19Eval_EvaluationStepP4Eval_10
	dd _Z19Eval_EvaluationStepP4Eval_560
	dd _Z19Eval_EvaluationStepP4Eval_10
	dd _Z19Eval_EvaluationStepP4Eval_570
	dd _Z19Eval_EvaluationStepP4Eval_580
	dd _Z19Eval_EvaluationStepP4Eval_20
	dd _Z19Eval_EvaluationStepP4Eval_590
	dd _Z19Eval_EvaluationStepP4Eval_600
	dd _Z19Eval_EvaluationStepP4Eval_610
	dd _Z19Eval_EvaluationStepP4Eval_620
	dd _Z19Eval_EvaluationStepP4Eval_630
	dd _Z19Eval_EvaluationStepP4Eval_640
	dd _Z19Eval_EvaluationStepP4Eval_650
	dd _Z19Eval_EvaluationStepP4Eval_660
	dd _Z19Eval_EvaluationStepP4Eval_670
	dd _Z19Eval_EvaluationStepP4Eval_680
	dd _Z19Eval_EvaluationStepP4Eval_690
	dd _Z19Eval_EvaluationStepP4Eval_700
	dd _Z19Eval_EvaluationStepP4Eval_710
	dd _Z19Eval_EvaluationStepP4Eval_720
	dd _Z19Eval_EvaluationStepP4Eval_730
	dd _Z19Eval_EvaluationStepP4Eval_740
	dd _Z19Eval_EvaluationStepP4Eval_750
	dd _Z19Eval_EvaluationStepP4Eval_760
	dd _Z19Eval_EvaluationStepP4Eval_770


;Eval_Solve(Eval*)
_Z10Eval_SolveP4Eval:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov eax, [esi+0x4008]
	test eax, eax
	jnz _Z10Eval_SolveP4Eval_10
_Z10Eval_SolveP4Eval_20:
	mov eax, esi
	call _Z19Eval_EvaluationStepP4Eval
	test al, al
	jnz _Z10Eval_SolveP4Eval_20
	cmp dword [esi+0x4004], 0x1
	jg _Z10Eval_SolveP4Eval_30
	mov eax, [esi+0x1000]
	mov [ebx], eax
	mov eax, [esi+0x1004]
	mov [ebx+0x4], eax
	mov eax, [esi+0x1008]
	mov [ebx+0x8], eax
	mov eax, ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret 0x4
_Z10Eval_SolveP4Eval_10:
	mov dword [esp], 0x4
	call __cxa_allocate_exception
	mov dword [eax], _cstring_missing_
_Z10Eval_SolveP4Eval_40:
	mov dword [esp+0x8], 0x0
	mov edx, [0xd5cca78]
	mov [esp+0x4], edx
	mov [esp], eax
	call __cxa_throw
_Z10Eval_SolveP4Eval_30:
	mov dword [esp], 0x4
	call __cxa_allocate_exception
	mov dword [eax], _cstring_extra_operand_fo
	jmp _Z10Eval_SolveP4Eval_40
	mov [esp], eax
	call __cxa_begin_catch
_Z10Eval_SolveP4Eval_60:
	mov eax, [esi+0x4004]
	test eax, eax
	jle _Z10Eval_SolveP4Eval_50
	sub eax, 0x1
	mov [esi+0x4004], eax
	lea eax, [eax+eax*2]
	lea eax, [esi+eax*4]
	cmp dword [eax+0x1000], 0x2
	jnz _Z10Eval_SolveP4Eval_60
	mov eax, [eax+0x1004]
	mov [esp], eax
	call free
	jmp _Z10Eval_SolveP4Eval_60
_Z10Eval_SolveP4Eval_50:
	mov dword [esi+0x4000], 0x0
	call __cxa_rethrow
	mov ebx, eax
	call __cxa_end_catch
	mov [esp], ebx
	call _Unwind_Resume
	nop


;Eval_PushNumber(Eval*, double)
_Z15Eval_PushNumberP4Evald:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [ebp+0x8]
	movsd xmm0, qword [ebp+0xc]
	mov eax, [edx+0x4004]
	test eax, eax
	jz _Z15Eval_PushNumberP4Evald_10
	cmp eax, 0x400
	jz _Z15Eval_PushNumberP4Evald_20
	cmp byte [edx+0x400c], 0x0
	jz _Z15Eval_PushNumberP4Evald_30
_Z15Eval_PushNumberP4Evald_10:
	lea eax, [eax+eax*2]
	mov dword [edx+eax*4+0x1000], 0x0
	mov eax, [edx+0x4004]
	lea eax, [eax+eax*2]
	movsd [edx+eax*4+0x1004], xmm0
	add dword [edx+0x4004], 0x1
	mov byte [edx+0x400c], 0x0
	mov eax, 0x1
	leave
	ret
_Z15Eval_PushNumberP4Evald_30:
	xor eax, eax
	leave
	ret
_Z15Eval_PushNumberP4Evald_20:
	mov dword [esp], 0x4
	call __cxa_allocate_exception
	mov dword [eax], _cstring_evaluation_stack
	mov dword [esp+0x8], 0x0
	mov edx, [0xd5cca78]
	mov [esp+0x4], edx
	mov [esp], eax
	call __cxa_throw
	add [eax], al


;Eval_PushInteger(Eval*, int)
_Z16Eval_PushIntegerP4Evali:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [ebp+0x8]
	mov eax, [edx+0x4004]
	test eax, eax
	jz _Z16Eval_PushIntegerP4Evali_10
	cmp eax, 0x400
	jz _Z16Eval_PushIntegerP4Evali_20
	cmp byte [edx+0x400c], 0x0
	jz _Z16Eval_PushIntegerP4Evali_30
_Z16Eval_PushIntegerP4Evali_10:
	lea eax, [eax+eax*2]
	mov dword [edx+eax*4+0x1000], 0x1
	mov eax, [edx+0x4004]
	lea eax, [eax+eax*2]
	mov ecx, [ebp+0xc]
	mov [edx+eax*4+0x1004], ecx
	add dword [edx+0x4004], 0x1
	mov byte [edx+0x400c], 0x0
	mov eax, 0x1
	leave
	ret
_Z16Eval_PushIntegerP4Evali_30:
	xor eax, eax
	leave
	ret
_Z16Eval_PushIntegerP4Evali_20:
	mov dword [esp], 0x4
	call __cxa_allocate_exception
	mov dword [eax], _cstring_evaluation_stack
	mov dword [esp+0x8], 0x0
	mov edx, [0xd5cca78]
	mov [esp+0x4], edx
	mov [esp], eax
	call __cxa_throw
	nop


;Eval_PushOperator(Eval*, EvalOperatorType)
_Z17Eval_PushOperatorP4Eval16EvalOperatorType:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov eax, esi
	cmp byte [esi+s_precedence], 0x0
	js _Z17Eval_PushOperatorP4Eval16EvalOperatorType_10
	cmp esi, 0x1
	jz _Z17Eval_PushOperatorP4Eval16EvalOperatorType_20
	test esi, esi
	jz _Z17Eval_PushOperatorP4Eval16EvalOperatorType_30
	cmp esi, 0x4
	jz _Z17Eval_PushOperatorP4Eval16EvalOperatorType_40
	cmp esi, 0x5
	jnz _Z17Eval_PushOperatorP4Eval16EvalOperatorType_50
	mov eax, [ebx+0x4004]
	test eax, eax
	jz _Z17Eval_PushOperatorP4Eval16EvalOperatorType_60
	cmp byte [ebx+0x400c], 0x0
	jnz _Z17Eval_PushOperatorP4Eval16EvalOperatorType_60
	mov eax, 0x5
	jmp _Z17Eval_PushOperatorP4Eval16EvalOperatorType_50
_Z17Eval_PushOperatorP4Eval16EvalOperatorType_160:
	test ecx, ecx
	jz _Z17Eval_PushOperatorP4Eval16EvalOperatorType_70
	cmp dword [ebx+ecx*4-0x4], 0x3
	jz _Z17Eval_PushOperatorP4Eval16EvalOperatorType_80
_Z17Eval_PushOperatorP4Eval16EvalOperatorType_70:
	mov eax, [ebx+0x4008]
	test eax, eax
	jnz _Z17Eval_PushOperatorP4Eval16EvalOperatorType_90
_Z17Eval_PushOperatorP4Eval16EvalOperatorType_10:
	xor eax, eax
_Z17Eval_PushOperatorP4Eval16EvalOperatorType_200:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17Eval_PushOperatorP4Eval16EvalOperatorType_30:
	mov eax, [ebx+0x4004]
	test eax, eax
	jnz _Z17Eval_PushOperatorP4Eval16EvalOperatorType_100
_Z17Eval_PushOperatorP4Eval16EvalOperatorType_180:
	add dword [ebx+0x4008], 0x1
	xor eax, eax
_Z17Eval_PushOperatorP4Eval16EvalOperatorType_50:
	movsx edi, byte [eax+s_precedence]
_Z17Eval_PushOperatorP4Eval16EvalOperatorType_140:
	mov ecx, [ebx+0x4000]
	test ecx, ecx
	jle _Z17Eval_PushOperatorP4Eval16EvalOperatorType_110
	mov edx, [ebx+ecx*4-0x4]
	movsx eax, byte [edx+s_precedence]
	cmp eax, edi
	jz _Z17Eval_PushOperatorP4Eval16EvalOperatorType_120
	jle _Z17Eval_PushOperatorP4Eval16EvalOperatorType_110
_Z17Eval_PushOperatorP4Eval16EvalOperatorType_150:
	test edx, edx
	jz _Z17Eval_PushOperatorP4Eval16EvalOperatorType_130
	mov eax, ebx
	call _Z19Eval_EvaluationStepP4Eval
	test al, al
	jnz _Z17Eval_PushOperatorP4Eval16EvalOperatorType_140
	jmp _Z17Eval_PushOperatorP4Eval16EvalOperatorType_10
_Z17Eval_PushOperatorP4Eval16EvalOperatorType_120:
	cmp byte [edx+s_rightToLeft], 0x0
	jz _Z17Eval_PushOperatorP4Eval16EvalOperatorType_150
_Z17Eval_PushOperatorP4Eval16EvalOperatorType_110:
	cmp esi, 0x2
	jz _Z17Eval_PushOperatorP4Eval16EvalOperatorType_160
_Z17Eval_PushOperatorP4Eval16EvalOperatorType_80:
	cmp ecx, 0x400
	jz _Z17Eval_PushOperatorP4Eval16EvalOperatorType_170
	mov [ebx+ecx*4], esi
	lea eax, [ecx+0x1]
	mov [ebx+0x4000], eax
	mov byte [ebx+0x400c], 0x1
	mov eax, 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17Eval_PushOperatorP4Eval16EvalOperatorType_20:
	mov edx, [ebx+0x4008]
	test edx, edx
	jnz _Z17Eval_PushOperatorP4Eval16EvalOperatorType_50
	jmp _Z17Eval_PushOperatorP4Eval16EvalOperatorType_10
_Z17Eval_PushOperatorP4Eval16EvalOperatorType_100:
	cmp byte [ebx+0x400c], 0x0
	jnz _Z17Eval_PushOperatorP4Eval16EvalOperatorType_180
	jmp _Z17Eval_PushOperatorP4Eval16EvalOperatorType_10
_Z17Eval_PushOperatorP4Eval16EvalOperatorType_60:
	mov esi, 0x7
	mov eax, 0x7
	jmp _Z17Eval_PushOperatorP4Eval16EvalOperatorType_50
_Z17Eval_PushOperatorP4Eval16EvalOperatorType_40:
	mov eax, [ebx+0x4004]
	test eax, eax
	jz _Z17Eval_PushOperatorP4Eval16EvalOperatorType_190
	cmp byte [ebx+0x400c], 0x0
	jnz _Z17Eval_PushOperatorP4Eval16EvalOperatorType_190
	mov eax, 0x4
	jmp _Z17Eval_PushOperatorP4Eval16EvalOperatorType_50
_Z17Eval_PushOperatorP4Eval16EvalOperatorType_190:
	mov esi, 0x6
	mov eax, 0x6
	jmp _Z17Eval_PushOperatorP4Eval16EvalOperatorType_50
_Z17Eval_PushOperatorP4Eval16EvalOperatorType_130:
	cmp esi, 0x1
	jnz _Z17Eval_PushOperatorP4Eval16EvalOperatorType_110
	sub dword [ebx+0x4008], 0x1
	sub ecx, 0x1
	mov [ebx+0x4000], ecx
	mov byte [ebx+0x400c], 0x0
	mov eax, 0x1
	jmp _Z17Eval_PushOperatorP4Eval16EvalOperatorType_200
_Z17Eval_PushOperatorP4Eval16EvalOperatorType_90:
	mov dword [esp], 0x4
	call __cxa_allocate_exception
	mov dword [eax], _cstring_found__without_p
_Z17Eval_PushOperatorP4Eval16EvalOperatorType_210:
	mov dword [esp+0x8], 0x0
	mov edx, [0xd5cca78]
	mov [esp+0x4], edx
	mov [esp], eax
	call __cxa_throw
_Z17Eval_PushOperatorP4Eval16EvalOperatorType_170:
	mov dword [esp], 0x4
	call __cxa_allocate_exception
	mov dword [eax], _cstring_evaluation_stack
	jmp _Z17Eval_PushOperatorP4Eval16EvalOperatorType_210


;Eval_OperatorForToken(char const*, EvalOperatorType*)
_Z21Eval_OperatorForTokenPKcP16EvalOperatorType:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	movsx eax, byte [edx]
	sub eax, 0x21
	cmp eax, 0x5d
	ja _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	jmp dword [eax*4+_Z21Eval_OperatorForTokenPKcP16EvalOperatorType_jumptab_0]
_Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10:
	xor eax, eax
	pop ebp
	ret
_Z21Eval_OperatorForTokenPKcP16EvalOperatorType_90:
	cmp byte [edx+0x1], 0x3d
	jz _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_20
	mov eax, [ebp+0xc]
	mov dword [eax], 0x11
	mov eax, 0x1
	pop ebp
	ret
_Z21Eval_OperatorForTokenPKcP16EvalOperatorType_100:
	mov eax, [ebp+0xc]
	mov dword [eax], 0xa
	mov eax, 0x1
	pop ebp
	ret
_Z21Eval_OperatorForTokenPKcP16EvalOperatorType_180:
	mov eax, [ebp+0xc]
	mov dword [eax], 0x2
	mov eax, 0x1
	pop ebp
	ret
_Z21Eval_OperatorForTokenPKcP16EvalOperatorType_190:
	movzx eax, byte [edx+0x1]
	cmp al, 0x3c
	jz _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_30
	cmp al, 0x3d
	jz _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_40
	mov eax, [ebp+0xc]
	mov dword [eax], 0x16
	mov eax, 0x1
	pop ebp
	ret
_Z21Eval_OperatorForTokenPKcP16EvalOperatorType_200:
	cmp byte [edx+0x1], 0x3d
	jnz _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	mov eax, [ebp+0xc]
	mov dword [eax], 0x14
	mov eax, 0x1
	pop ebp
	ret
_Z21Eval_OperatorForTokenPKcP16EvalOperatorType_210:
	movzx eax, byte [edx+0x1]
	cmp al, 0x3e
	jz _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_50
	cmp al, 0x3d
	jz _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_60
	mov eax, [ebp+0xc]
	mov dword [eax], 0x18
	mov eax, 0x1
	pop ebp
	ret
_Z21Eval_OperatorForTokenPKcP16EvalOperatorType_220:
	mov eax, [ebp+0xc]
	mov dword [eax], 0x3
	mov eax, 0x1
	pop ebp
	ret
_Z21Eval_OperatorForTokenPKcP16EvalOperatorType_230:
	mov eax, [ebp+0xc]
	mov dword [eax], 0x10
	mov eax, 0x1
	pop ebp
	ret
_Z21Eval_OperatorForTokenPKcP16EvalOperatorType_240:
	cmp byte [edx+0x1], 0x7c
	jz _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_70
	mov eax, [ebp+0xc]
	mov dword [eax], 0xf
	mov eax, 0x1
	pop ebp
	ret
_Z21Eval_OperatorForTokenPKcP16EvalOperatorType_250:
	mov eax, [ebp+0xc]
	mov dword [eax], 0xd
	mov eax, 0x1
	pop ebp
	ret
_Z21Eval_OperatorForTokenPKcP16EvalOperatorType_140:
	mov eax, [ebp+0xc]
	mov dword [eax], 0x8
	mov eax, 0x1
	pop ebp
	ret
_Z21Eval_OperatorForTokenPKcP16EvalOperatorType_150:
	mov eax, [ebp+0xc]
	mov dword [eax], 0x4
	mov eax, 0x1
	pop ebp
	ret
_Z21Eval_OperatorForTokenPKcP16EvalOperatorType_160:
	mov eax, [ebp+0xc]
	mov dword [eax], 0x5
	mov eax, 0x1
	pop ebp
	ret
_Z21Eval_OperatorForTokenPKcP16EvalOperatorType_170:
	mov eax, [ebp+0xc]
	mov dword [eax], 0x9
	mov eax, 0x1
	pop ebp
	ret
_Z21Eval_OperatorForTokenPKcP16EvalOperatorType_120:
	mov eax, [ebp+0xc]
	mov dword [eax], 0x0
	mov eax, 0x1
	pop ebp
	ret
_Z21Eval_OperatorForTokenPKcP16EvalOperatorType_130:
	mov eax, [ebp+0xc]
	mov dword [eax], 0x1
	mov eax, 0x1
	pop ebp
	ret
_Z21Eval_OperatorForTokenPKcP16EvalOperatorType_110:
	cmp byte [edx+0x1], 0x26
	jz _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_80
	mov eax, [ebp+0xc]
	mov dword [eax], 0xe
	mov eax, 0x1
	pop ebp
	ret
_Z21Eval_OperatorForTokenPKcP16EvalOperatorType_70:
	mov eax, [ebp+0xc]
	mov dword [eax], 0x13
	mov eax, 0x1
	pop ebp
	ret
_Z21Eval_OperatorForTokenPKcP16EvalOperatorType_20:
	mov eax, [ebp+0xc]
	mov dword [eax], 0x15
	mov eax, 0x1
	pop ebp
	ret
_Z21Eval_OperatorForTokenPKcP16EvalOperatorType_80:
	mov eax, [ebp+0xc]
	mov dword [eax], 0x12
	mov eax, 0x1
	pop ebp
	ret
_Z21Eval_OperatorForTokenPKcP16EvalOperatorType_30:
	mov eax, [ebp+0xc]
	mov dword [eax], 0xb
	mov eax, 0x1
	pop ebp
	ret
_Z21Eval_OperatorForTokenPKcP16EvalOperatorType_50:
	mov eax, [ebp+0xc]
	mov dword [eax], 0xc
	mov eax, 0x1
	pop ebp
	ret
_Z21Eval_OperatorForTokenPKcP16EvalOperatorType_40:
	mov eax, [ebp+0xc]
	mov dword [eax], 0x17
	mov eax, 0x1
	pop ebp
	ret
_Z21Eval_OperatorForTokenPKcP16EvalOperatorType_60:
	mov eax, [ebp+0xc]
	mov dword [eax], 0x19
	mov eax, 0x1
	pop ebp
	ret
	
	
_Z21Eval_OperatorForTokenPKcP16EvalOperatorType_jumptab_0:
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_90
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_100
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_110
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_120
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_130
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_140
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_150
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_160
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_170
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_180
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_190
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_200
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_210
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_220
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_230
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_240
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_10
	dd _Z21Eval_OperatorForTokenPKcP16EvalOperatorType_250


;Eval_AnyMissingOperands(Eval const*)
_Z23Eval_AnyMissingOperandsPK4Eval:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov edi, [ebp+0x8]
	mov ebx, [edi+0x4000]
	test ebx, ebx
	jg _Z23Eval_AnyMissingOperandsPK4Eval_10
	mov esi, 0x1
	xor eax, eax
	cmp esi, [edi+0x4004]
	setnz al
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z23Eval_AnyMissingOperandsPK4Eval_10:
	mov edx, edi
	xor ecx, ecx
	mov esi, 0x1
_Z23Eval_AnyMissingOperandsPK4Eval_20:
	mov eax, [edx]
	add esi, [eax*4+s_consumedOperandCount]
	add ecx, 0x1
	add edx, 0x4
	cmp ecx, ebx
	jnz _Z23Eval_AnyMissingOperandsPK4Eval_20
	xor eax, eax
	cmp esi, [edi+0x4004]
	setnz al
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	add [eax], al


;Initialized global or static variables of eval:
SECTION .data
s_rightToLeft: dd 0x1010000, 0x1010000, 0x0, 0x100, 0x100, 0x0
		db 0x0, 0x0
s_precedence: dd 0x2030063, 0xd0d0b0b, 0xa0c0c0c, 0x5070d0a, 0x1020d06, 0x9090808, 0x909, 0x0, 0x0
		db 0x0, 0x0
s_consumedOperandCount: dd 0x1, 0xffffffff, 0x2, 0x0, 0x1, 0x1, 0x0, 0x0, 0x1, 0x1, 0x1, 0x1, 0x1, 0x0, 0x1, 0x1, 0x1, 0x0, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of eval:
SECTION .rdata


;Zero initialized global or static variables of eval:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_operation_not_va:		db "operation not valid on strings",0
_cstring_missing_operand_:		db "missing operand (for example, ",27h,"a + ",27h," or ",27h," / b",27h,")",0
_cstring_found__with_no_f:		db "found ",27h,3fh,27h," with no following ",27h,":",27h," in expression of type ",27h,"a ",3fh," b : c",27h,0
_cstring_cannot_negate_st:		db "cannot negate strings",0
_cstring_can_only_switch_:		db "can only switch on numbers",0
_cstring_divide_by_zero:		db "divide by zero",0
_cstring_cannot_logical_i:		db "cannot logical invert strings",0
_cstring_cannot_bitwise_i:		db "cannot bitwise invert strings",0
_cstring_missing_:		db "missing ",27h,")",27h,0
_cstring_extra_operand_fo:		db "extra operand (for example, ",27h,"a b +",27h,")",0
_cstring_evaluation_stack:		db "evaluation stack overflow - expression is too complex",0
_cstring_found__without_p:		db "found ",27h,":",27h," without preceding ",27h,3fh,27h," in expression of type ",27h,"a ",3fh," b : c",27h,0



;All constant floats and doubles:
SECTION .rdata
_double_0_00000000:		dq 0x0	; 0

