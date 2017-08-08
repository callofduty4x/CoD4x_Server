;Imports of eval:
	extern __cxa_allocate_exception
	extern __cxa_throw
	extern g_fltMin__uint4
	extern floor
	extern pow
	extern stricmp
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
	global Eval_PrepareBinaryOpSameTypes
	global Eval_PrepareBinaryOpIntegers
	global Eval_PrepareBinaryOpBoolean
	global Eval_EvaluationStep
	global Eval_Solve
	global Eval_PushNumber
	global Eval_PushInteger
	global Eval_PushOperator
	global Eval_OperatorForToken
	global Eval_AnyMissingOperands


SECTION .text


;Eval_PrepareBinaryOpSameTypes(Eval*)
Eval_PrepareBinaryOpSameTypes:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, eax
	mov edx, [eax+0x4004]
	cmp edx, 0x1
	jle Eval_PrepareBinaryOpSameTypes_10
	lea eax, [edx+edx*2-0x6]
	lea esi, [ebx+eax*4]
	lea eax, [esi+0x1000]
	mov [ebp-0x1c], eax
	mov ecx, [esi+0x1000]
	cmp ecx, 0x2
	jz Eval_PrepareBinaryOpSameTypes_20
	lea eax, [edx+edx*2-0x3]
	lea eax, [ebx+eax*4]
	lea edi, [eax+0x1000]
	mov edx, [eax+0x1000]
	cmp edx, 0x2
	jz Eval_PrepareBinaryOpSameTypes_20
	cmp ecx, edx
	jz Eval_PrepareBinaryOpSameTypes_30
	sub ecx, 0x1
	jz Eval_PrepareBinaryOpSameTypes_40
	cvtsi2sd xmm0, dword [eax+0x1004]
	movsd [edi+0x4], xmm0
	mov eax, [ebx+0x4004]
	lea eax, [eax+eax*2]
	mov dword [ebx+eax*4+0xff4], 0x0
Eval_PrepareBinaryOpSameTypes_30:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Eval_PrepareBinaryOpSameTypes_20:
	mov dword [esp], 0x4
	call __cxa_allocate_exception
	mov dword [eax], _cstring_operation_not_va
Eval_PrepareBinaryOpSameTypes_50:
	mov dword [esp+0x8], 0x0
	mov edx, [0xd5cca78]
	mov [esp+0x4], edx
	mov [esp], eax
	call __cxa_throw
Eval_PrepareBinaryOpSameTypes_40:
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
Eval_PrepareBinaryOpSameTypes_10:
	mov dword [esp], 0x4
	call __cxa_allocate_exception
	mov dword [eax], _cstring_missing_operand_
	jmp Eval_PrepareBinaryOpSameTypes_50
	nop


;Eval_PrepareBinaryOpIntegers(Eval*)
Eval_PrepareBinaryOpIntegers:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ecx, eax
	mov edx, [eax+0x4004]
	cmp edx, 0x1
	jle Eval_PrepareBinaryOpIntegers_10
	lea eax, [edx+edx*2-0x6]
	lea ebx, [ecx+eax*4]
	lea edi, [ebx+0x1000]
	mov esi, [ebx+0x1000]
	cmp esi, 0x2
	jz Eval_PrepareBinaryOpIntegers_20
	lea eax, [edx+edx*2]
	cmp dword [ecx+eax*4+0xff4], 0x2
	jz Eval_PrepareBinaryOpIntegers_20
	test esi, esi
	jz Eval_PrepareBinaryOpIntegers_30
	lea eax, [edx+edx*2-0x3]
	lea edx, [ecx+eax*4]
	lea eax, [edx+0x1000]
	mov ebx, [edx+0x1000]
	test ebx, ebx
	jnz Eval_PrepareBinaryOpIntegers_40
Eval_PrepareBinaryOpIntegers_50:
	cvttsd2si eax, qword [eax+0x4]
	mov [edx+0x1004], eax
	mov eax, [ecx+0x4004]
	lea eax, [eax+eax*2]
	mov dword [ecx+eax*4+0xff4], 0x1
Eval_PrepareBinaryOpIntegers_40:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Eval_PrepareBinaryOpIntegers_30:
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
	jz Eval_PrepareBinaryOpIntegers_50
	jmp Eval_PrepareBinaryOpIntegers_40
Eval_PrepareBinaryOpIntegers_20:
	mov dword [esp], 0x4
	call __cxa_allocate_exception
	mov dword [eax], _cstring_operation_not_va
Eval_PrepareBinaryOpIntegers_60:
	mov dword [esp+0x8], 0x0
	mov edx, [0xd5cca78]
	mov [esp+0x4], edx
	mov [esp], eax
	call __cxa_throw
Eval_PrepareBinaryOpIntegers_10:
	mov dword [esp], 0x4
	call __cxa_allocate_exception
	mov dword [eax], _cstring_missing_operand_
	jmp Eval_PrepareBinaryOpIntegers_60
	nop


;Eval_PrepareBinaryOpBoolean(Eval*)
Eval_PrepareBinaryOpBoolean:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ecx, eax
	mov edx, [eax+0x4004]
	cmp edx, 0x1
	jle Eval_PrepareBinaryOpBoolean_10
	lea eax, [edx+edx*2-0x6]
	lea esi, [ecx+eax*4]
	lea edi, [esi+0x1000]
	mov ebx, [esi+0x1000]
	cmp ebx, 0x2
	jz Eval_PrepareBinaryOpBoolean_20
	lea eax, [edx+edx*2]
	cmp dword [ecx+eax*4+0xff4], 0x2
	jz Eval_PrepareBinaryOpBoolean_20
	test ebx, ebx
	jnz Eval_PrepareBinaryOpBoolean_30
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
	jnz Eval_PrepareBinaryOpBoolean_40
Eval_PrepareBinaryOpBoolean_50:
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
Eval_PrepareBinaryOpBoolean_30:
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
	jz Eval_PrepareBinaryOpBoolean_50
Eval_PrepareBinaryOpBoolean_40:
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
Eval_PrepareBinaryOpBoolean_20:
	mov dword [esp], 0x4
	call __cxa_allocate_exception
	mov dword [eax], _cstring_operation_not_va
Eval_PrepareBinaryOpBoolean_60:
	mov dword [esp+0x8], 0x0
	mov edx, [0xd5cca78]
	mov [esp+0x4], edx
	mov [esp], eax
	call __cxa_throw
Eval_PrepareBinaryOpBoolean_10:
	mov dword [esp], 0x4
	call __cxa_allocate_exception
	mov dword [eax], _cstring_missing_operand_
	jmp Eval_PrepareBinaryOpBoolean_60
	nop


;Eval_EvaluationStep(Eval*)
Eval_EvaluationStep:
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
	jz Eval_EvaluationStep_10
	sub eax, 0x1
	mov [edx+0x4000], eax
	mov eax, [edx+eax*4]
	test eax, eax
	jz Eval_EvaluationStep_20
	cmp eax, 0x3
	jz Eval_EvaluationStep_30
	mov ecx, [ebp-0x54]
	mov edx, [ecx+0x4004]
	test edx, edx
	jz Eval_EvaluationStep_40
	cmp eax, 0x19
	ja Eval_EvaluationStep_10
	jmp dword [eax*4+Eval_EvaluationStep_jumptab_0]
Eval_EvaluationStep_10:
	xor eax, eax
Eval_EvaluationStep_90:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Eval_EvaluationStep_20:
	mov eax, 0x1
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Eval_EvaluationStep_560:
	cmp edx, 0x2
	jle Eval_EvaluationStep_40
	lea eax, [edx+edx*2-0x9]
	mov edi, [ebp-0x54]
	lea eax, [edi+eax*4]
	lea ebx, [eax+0x1000]
	mov ecx, [eax+0x1000]
	test ecx, ecx
	jnz Eval_EvaluationStep_50
	pxor xmm0, xmm0
	ucomisd xmm0, [ebx+0x4]
	jp Eval_EvaluationStep_60
	jnz Eval_EvaluationStep_60
	mov ebx, 0xffffffff
Eval_EvaluationStep_490:
	lea eax, [edx+edx*2]
	mov ecx, [ebp-0x54]
	lea eax, [ecx+eax*4]
	cmp dword [eax+0xfe8], 0x2
	jnz Eval_EvaluationStep_70
	cmp dword [eax+0xff4], 0x2
	jz Eval_EvaluationStep_80
	mov eax, [ebp-0x54]
Eval_EvaluationStep_450:
	call Eval_PrepareBinaryOpSameTypes
Eval_EvaluationStep_530:
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
	jmp Eval_EvaluationStep_90
Eval_EvaluationStep_770:
	mov eax, [ebp-0x54]
	call Eval_PrepareBinaryOpSameTypes
	mov edi, [ebp-0x54]
	mov edx, [edi+0x4004]
	lea eax, [edx+edx*2-0x6]
	lea ecx, [edi+eax*4]
	lea ebx, [ecx+0x1000]
	mov eax, [ecx+0x1000]
	test eax, eax
	jnz Eval_EvaluationStep_100
	lea eax, [edx+edx*2]
	movsd xmm0, qword [ebx+0x4]
	ucomisd xmm0, [edi+eax*4+0xff8]
	setae al
Eval_EvaluationStep_120:
	movzx eax, al
	mov [ecx+0x1004], eax
	mov eax, [edi+0x4004]
	lea eax, [eax+eax*2]
	mov dword [edi+eax*4+0xfe8], 0x1
Eval_EvaluationStep_460:
	mov esi, [ebp-0x54]
	sub dword [esi+0x4004], 0x1
	mov eax, 0x1
	jmp Eval_EvaluationStep_90
Eval_EvaluationStep_760:
	mov eax, [ebp-0x54]
	call Eval_PrepareBinaryOpSameTypes
	mov edi, [ebp-0x54]
	mov edx, [edi+0x4004]
	lea eax, [edx+edx*2-0x6]
	lea ecx, [edi+eax*4]
	lea ebx, [ecx+0x1000]
	mov eax, [ecx+0x1000]
	test eax, eax
	jnz Eval_EvaluationStep_110
	lea eax, [edx+edx*2]
	movsd xmm0, qword [ebx+0x4]
	ucomisd xmm0, [edi+eax*4+0xff8]
	seta al
	jmp Eval_EvaluationStep_120
Eval_EvaluationStep_740:
	mov eax, [ebp-0x54]
	call Eval_PrepareBinaryOpSameTypes
	mov edi, [ebp-0x54]
	mov edx, [edi+0x4004]
	lea eax, [edx+edx*2-0x6]
	lea ecx, [edi+eax*4]
	lea ebx, [ecx+0x1000]
	mov eax, [ecx+0x1000]
	test eax, eax
	jnz Eval_EvaluationStep_130
	lea eax, [edx+edx*2]
	movsd xmm0, qword [edi+eax*4+0xff8]
	ucomisd xmm0, [ebx+0x4]
	seta al
	jmp Eval_EvaluationStep_120
Eval_EvaluationStep_750:
	mov eax, [ebp-0x54]
	call Eval_PrepareBinaryOpSameTypes
	mov edi, [ebp-0x54]
	mov edx, [edi+0x4004]
	lea eax, [edx+edx*2-0x6]
	lea ecx, [edi+eax*4]
	lea ebx, [ecx+0x1000]
	mov eax, [ecx+0x1000]
	test eax, eax
	jnz Eval_EvaluationStep_140
	lea eax, [edx+edx*2]
	movsd xmm0, qword [edi+eax*4+0xff8]
	ucomisd xmm0, [ebx+0x4]
	setae al
	jmp Eval_EvaluationStep_120
Eval_EvaluationStep_730:
	cmp edx, 0x1
	jle Eval_EvaluationStep_150
	lea eax, [edx+edx*2-0x6]
	mov ebx, [ebp-0x54]
	lea ecx, [ebx+eax*4]
	cmp dword [ecx+0x1000], 0x2
	jz Eval_EvaluationStep_160
	mov eax, ebx
Eval_EvaluationStep_520:
	call Eval_PrepareBinaryOpSameTypes
	mov edi, [ebp-0x54]
	mov edx, [edi+0x4004]
	lea eax, [edx+edx*2-0x6]
	lea ecx, [edi+eax*4]
	lea ebx, [ecx+0x1000]
	mov eax, [ecx+0x1000]
	test eax, eax
	jnz Eval_EvaluationStep_170
	lea eax, [edx+edx*2]
	movsd xmm0, qword [ebx+0x4]
	ucomisd xmm0, [edi+eax*4+0xff8]
	setnz al
	setp dl
	or al, dl
	jmp Eval_EvaluationStep_120
Eval_EvaluationStep_720:
	cmp edx, 0x1
	jle Eval_EvaluationStep_180
	lea eax, [edx+edx*2-0x6]
	mov edi, [ebp-0x54]
	lea ecx, [edi+eax*4]
	cmp dword [ecx+0x1000], 0x2
	jz Eval_EvaluationStep_190
	mov eax, edi
Eval_EvaluationStep_510:
	call Eval_PrepareBinaryOpSameTypes
	mov eax, [ebp-0x54]
	mov edx, [eax+0x4004]
	lea eax, [edx+edx*2-0x6]
	mov ebx, [ebp-0x54]
	lea ecx, [ebx+eax*4]
	lea ebx, [ecx+0x1000]
	mov eax, [ecx+0x1000]
	test eax, eax
	jnz Eval_EvaluationStep_200
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
Eval_EvaluationStep_230:
	mov eax, [ebp-0x54]
	sub dword [eax+0x4004], 0x1
	mov eax, 0x1
	jmp Eval_EvaluationStep_90
Eval_EvaluationStep_700:
	mov eax, [ebp-0x54]
	call Eval_PrepareBinaryOpBoolean
Eval_EvaluationStep_370:
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
	jmp Eval_EvaluationStep_90
Eval_EvaluationStep_690:
	lea eax, [edx+edx*2-0x3]
	mov esi, [ebp-0x54]
	lea ecx, [esi+eax*4]
	lea edx, [ecx+0x1000]
	mov eax, [ecx+0x1000]
	test eax, eax
	jnz Eval_EvaluationStep_210
	pxor xmm0, xmm0
	ucomisd xmm0, [edx+0x4]
	setz al
	setnp dl
	and al, dl
	movzx eax, al
	mov [ecx+0x1004], eax
Eval_EvaluationStep_410:
	mov edi, [ebp-0x54]
	mov eax, [edi+0x4004]
	lea eax, [eax+eax*2]
	mov dword [edi+eax*4+0xff4], 0x1
	mov eax, 0x1
	jmp Eval_EvaluationStep_90
Eval_EvaluationStep_640:
	mov eax, [ebp-0x54]
	call Eval_PrepareBinaryOpSameTypes
	mov edx, [ebp-0x54]
	mov ecx, [edx+0x4004]
	lea eax, [ecx+ecx*2-0x6]
	lea edx, [edx+eax*4]
	lea ebx, [edx+0x1000]
	mov esi, [edx+0x1000]
	test esi, esi
	jz Eval_EvaluationStep_220
	lea eax, [ecx+ecx*2]
	mov edi, [ebp-0x54]
	mov ecx, [edi+eax*4+0xff8]
	sar dword [edx+0x1004], cl
	jmp Eval_EvaluationStep_230
Eval_EvaluationStep_680:
	mov eax, [ebp-0x54]
	call Eval_PrepareBinaryOpIntegers
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
	jmp Eval_EvaluationStep_90
Eval_EvaluationStep_600:
	mov eax, [ebp-0x54]
	call Eval_PrepareBinaryOpSameTypes
	mov ecx, [ebp-0x54]
	mov edx, [ecx+0x4004]
	lea eax, [edx+edx*2-0x6]
	lea ecx, [ecx+eax*4]
	lea ebx, [ecx+0x1000]
	mov eax, [ecx+0x1000]
	test eax, eax
	jnz Eval_EvaluationStep_240
	lea eax, [edx+edx*2]
	movsd xmm0, qword [ebx+0x4]
	mov esi, [ebp-0x54]
	mulsd xmm0, [esi+eax*4+0xff8]
	movsd [ebx+0x4], xmm0
	jmp Eval_EvaluationStep_230
Eval_EvaluationStep_590:
	lea eax, [edx+edx*2-0x3]
	mov ebx, [ebp-0x54]
	lea eax, [ebx+eax*4]
	lea ecx, [eax+0x1000]
	mov edx, [eax+0x1000]
	cmp edx, 0x1
	jz Eval_EvaluationStep_250
	test edx, edx
	jnz Eval_EvaluationStep_260
	movsd xmm0, qword [ecx+0x4]
	xorpd xmm0, [g_fltMin__uint4+0x380]
	movsd [ecx+0x4], xmm0
	mov eax, 0x1
	jmp Eval_EvaluationStep_90
Eval_EvaluationStep_580:
	mov eax, [ebp-0x54]
	call Eval_PrepareBinaryOpSameTypes
	mov ecx, [ebp-0x54]
	mov edx, [ecx+0x4004]
	lea eax, [edx+edx*2-0x6]
	lea ecx, [ecx+eax*4]
	lea ebx, [ecx+0x1000]
	mov eax, [ecx+0x1000]
	test eax, eax
	jnz Eval_EvaluationStep_270
	lea eax, [edx+edx*2]
	movsd xmm0, qword [ebx+0x4]
	mov esi, [ebp-0x54]
	subsd xmm0, [esi+eax*4+0xff8]
	movsd [ebx+0x4], xmm0
	jmp Eval_EvaluationStep_230
Eval_EvaluationStep_570:
	cmp edx, 0x1
	jle Eval_EvaluationStep_280
	lea eax, [edx+edx*2-0x6]
	mov ebx, [ebp-0x54]
	lea ecx, [ebx+eax*4]
	cmp dword [ecx+0x1000], 0x2
	jz Eval_EvaluationStep_290
	mov eax, ebx
Eval_EvaluationStep_500:
	call Eval_PrepareBinaryOpSameTypes
	mov esi, [ebp-0x54]
	mov edx, [esi+0x4004]
	lea eax, [edx+edx*2-0x6]
	lea ecx, [esi+eax*4]
	lea ebx, [ecx+0x1000]
	mov eax, [ecx+0x1000]
	test eax, eax
	jnz Eval_EvaluationStep_300
	lea eax, [edx+edx*2]
	movsd xmm0, qword [ebx+0x4]
	addsd xmm0, [esi+eax*4+0xff8]
	movsd [ebx+0x4], xmm0
	jmp Eval_EvaluationStep_230
Eval_EvaluationStep_710:
	mov eax, [ebp-0x54]
	call Eval_PrepareBinaryOpBoolean
Eval_EvaluationStep_380:
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
	jmp Eval_EvaluationStep_90
Eval_EvaluationStep_620:
	mov eax, [ebp-0x54]
	call Eval_PrepareBinaryOpSameTypes
	mov eax, [ebp-0x54]
	mov edx, [eax+0x4004]
	lea ecx, [edx-0x2]
	lea eax, [ecx+ecx*2]
	mov esi, [ebp-0x54]
	lea ebx, [esi+eax*4]
	mov eax, [ebx+0x1000]
	test eax, eax
	jnz Eval_EvaluationStep_310
	lea eax, [edx+edx*2]
	movsd xmm2, qword [esi+eax*4+0xff8]
	ucomisd xmm2, [_double_0_00000000]
	jz Eval_EvaluationStep_320
Eval_EvaluationStep_540:
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
Eval_EvaluationStep_350:
	mov edi, [ebp-0x54]
	sub dword [edi+0x4004], 0x1
	mov eax, 0x1
	jmp Eval_EvaluationStep_90
Eval_EvaluationStep_610:
	mov eax, [ebp-0x54]
	call Eval_PrepareBinaryOpSameTypes
	mov ecx, [ebp-0x54]
	mov edx, [ecx+0x4004]
	lea ecx, [edx-0x2]
	lea eax, [ecx+ecx*2]
	mov esi, [ebp-0x54]
	lea ebx, [esi+eax*4]
	mov eax, [ebx+0x1000]
	test eax, eax
	jnz Eval_EvaluationStep_330
	lea eax, [edx+edx*2]
	movsd xmm1, qword [esi+eax*4+0xff8]
	ucomisd xmm1, [_double_0_00000000]
	jz Eval_EvaluationStep_340
Eval_EvaluationStep_550:
	lea eax, [ecx+ecx*2]
	mov edi, [ebp-0x54]
	lea eax, [edi+eax*4+0x1000]
	movsd xmm0, qword [eax+0x4]
	divsd xmm0, xmm1
	movsd [eax+0x4], xmm0
	jmp Eval_EvaluationStep_350
Eval_EvaluationStep_630:
	mov eax, [ebp-0x54]
	call Eval_PrepareBinaryOpSameTypes
	mov eax, [ebp-0x54]
	mov ecx, [eax+0x4004]
	lea eax, [ecx+ecx*2-0x6]
	mov ebx, [ebp-0x54]
	lea edx, [ebx+eax*4]
	lea ebx, [edx+0x1000]
	mov edi, [edx+0x1000]
	test edi, edi
	jz Eval_EvaluationStep_360
	lea eax, [ecx+ecx*2]
	mov edi, [ebp-0x54]
	mov ecx, [edi+eax*4+0xff8]
	shl dword [edx+0x1004], cl
	jmp Eval_EvaluationStep_230
Eval_EvaluationStep_660:
	mov eax, [ebp-0x54]
	call Eval_PrepareBinaryOpIntegers
	jmp Eval_EvaluationStep_370
Eval_EvaluationStep_670:
	mov eax, [ebp-0x54]
	call Eval_PrepareBinaryOpIntegers
	jmp Eval_EvaluationStep_380
Eval_EvaluationStep_650:
	lea eax, [edx+edx*2-0x3]
	mov ebx, [ebp-0x54]
	lea ecx, [ebx+eax*4]
	lea eax, [ecx+0x1000]
	mov esi, [ecx+0x1000]
	test esi, esi
	jnz Eval_EvaluationStep_390
	cvttsd2si eax, qword [eax+0x4]
	mov [ecx+0x1004], eax
	mov eax, [ebx+0x4004]
	lea eax, [eax+eax*2]
	mov dword [ebx+eax*4+0xff4], 0x1
	mov edx, [ebx+0x4004]
	mov esi, [ebp-0x54]
Eval_EvaluationStep_440:
	lea eax, [edx+edx*2-0x3]
	not dword [esi+eax*4+0x1004]
	mov eax, 0x1
	jmp Eval_EvaluationStep_90
Eval_EvaluationStep_210:
	sub eax, 0x1
	jnz Eval_EvaluationStep_400
	xor eax, eax
	cmp dword [ecx+0x1004], 0x0
	setz al
	mov [ecx+0x1004], eax
	jmp Eval_EvaluationStep_410
Eval_EvaluationStep_310:
	lea eax, [edx+edx*2]
	mov edx, [esi+eax*4+0xff8]
	test edx, edx
	jz Eval_EvaluationStep_420
	mov eax, [ebx+0x1004]
	mov esi, edx
	cdq
	idiv esi
	mov [ebx+0x1004], edx
	jmp Eval_EvaluationStep_350
Eval_EvaluationStep_390:
	mov edi, ebx
	lea eax, [edx+edx*2]
	cmp dword [ebx+eax*4+0xfe8], 0x2
	jz Eval_EvaluationStep_430
	mov esi, edi
	jmp Eval_EvaluationStep_440
Eval_EvaluationStep_330:
	lea eax, [edx+edx*2]
	mov edx, [esi+eax*4+0xff8]
	test edx, edx
	jz Eval_EvaluationStep_420
	mov eax, [ebx+0x1004]
	mov esi, edx
	cdq
	idiv esi
	mov [ebx+0x1004], eax
	jmp Eval_EvaluationStep_350
Eval_EvaluationStep_70:
	mov eax, ecx
	jmp Eval_EvaluationStep_450
Eval_EvaluationStep_100:
	lea edx, [edx+edx*2]
	mov eax, [ecx+0x1004]
	cmp eax, [edi+edx*4+0xff8]
	setge al
	movzx eax, al
	mov [ecx+0x1004], eax
	jmp Eval_EvaluationStep_460
Eval_EvaluationStep_130:
	lea edx, [edx+edx*2]
	mov eax, [ecx+0x1004]
	cmp eax, [edi+edx*4+0xff8]
	setl al
	movzx eax, al
	mov [ecx+0x1004], eax
	jmp Eval_EvaluationStep_460
Eval_EvaluationStep_110:
	lea edx, [edx+edx*2]
	mov eax, [ecx+0x1004]
	cmp eax, [edi+edx*4+0xff8]
	setg al
	movzx eax, al
	mov [ecx+0x1004], eax
	jmp Eval_EvaluationStep_460
Eval_EvaluationStep_140:
	lea edx, [edx+edx*2]
	mov eax, [ecx+0x1004]
	cmp eax, [edi+edx*4+0xff8]
	setle al
	movzx eax, al
	mov [ecx+0x1004], eax
	jmp Eval_EvaluationStep_460
Eval_EvaluationStep_240:
	lea edx, [edx+edx*2]
	mov eax, [ecx+0x1004]
	mov edi, [ebp-0x54]
	imul eax, [edi+edx*4+0xff8]
	mov [ecx+0x1004], eax
	jmp Eval_EvaluationStep_230
Eval_EvaluationStep_270:
	lea edx, [edx+edx*2]
	mov eax, [ecx+0x1004]
	mov edi, [ebp-0x54]
	sub eax, [edi+edx*4+0xff8]
	mov [ecx+0x1004], eax
	jmp Eval_EvaluationStep_230
Eval_EvaluationStep_30:
	mov dword [esp], 0x4
	call __cxa_allocate_exception
	mov dword [eax], _cstring_found__with_no_f
Eval_EvaluationStep_470:
	mov dword [esp+0x8], 0x0
	mov edx, [0xd5cca78]
	mov [esp+0x4], edx
	mov [esp], eax
	call __cxa_throw
Eval_EvaluationStep_40:
	mov dword [esp], 0x4
	call __cxa_allocate_exception
	mov dword [eax], _cstring_missing_operand_
	jmp Eval_EvaluationStep_470
Eval_EvaluationStep_50:
	sub ecx, 0x1
	jnz Eval_EvaluationStep_480
	cmp dword [eax+0x1004], 0x1
	sbb ebx, ebx
	or ebx, 0xfffffffe
	jmp Eval_EvaluationStep_490
Eval_EvaluationStep_200:
	lea edx, [edx+edx*2]
	mov eax, [ecx+0x1004]
	mov edi, [ebp-0x54]
	cmp eax, [edi+edx*4+0xff8]
	setz al
	movzx eax, al
	mov [ecx+0x1004], eax
	jmp Eval_EvaluationStep_230
Eval_EvaluationStep_170:
	lea edx, [edx+edx*2]
	mov eax, [ecx+0x1004]
	cmp eax, [edi+edx*4+0xff8]
	setnz al
	movzx eax, al
	mov [ecx+0x1004], eax
	jmp Eval_EvaluationStep_460
Eval_EvaluationStep_300:
	lea edx, [edx+edx*2]
	mov eax, [ecx+0x1004]
	add eax, [esi+edx*4+0xff8]
	mov [ecx+0x1004], eax
	jmp Eval_EvaluationStep_230
Eval_EvaluationStep_280:
	mov eax, [ebp-0x54]
	jmp Eval_EvaluationStep_500
Eval_EvaluationStep_180:
	mov eax, [ebp-0x54]
	jmp Eval_EvaluationStep_510
Eval_EvaluationStep_150:
	mov eax, [ebp-0x54]
	jmp Eval_EvaluationStep_520
Eval_EvaluationStep_360:
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
	jmp Eval_EvaluationStep_230
Eval_EvaluationStep_220:
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
	jmp Eval_EvaluationStep_230
Eval_EvaluationStep_250:
	neg dword [eax+0x1004]
	mov eax, 0x1
	jmp Eval_EvaluationStep_90
Eval_EvaluationStep_160:
	lea eax, [edx+edx*2-0x3]
	lea eax, [ebx+eax*4]
	cmp dword [eax+0x1000], 0x2
	jnz Eval_EvaluationStep_150
	mov eax, [eax+0x1004]
	mov [esp+0x4], eax
	mov eax, [ecx+0x1004]
	mov [esp], eax
	call stricmp
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
	jmp Eval_EvaluationStep_460
Eval_EvaluationStep_290:
	lea eax, [edx+edx*2-0x3]
	lea esi, [ebx+eax*4]
	cmp dword [esi+0x1000], 0x2
	jnz Eval_EvaluationStep_280
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
	jmp Eval_EvaluationStep_230
Eval_EvaluationStep_190:
	lea eax, [edx+edx*2-0x3]
	lea eax, [edi+eax*4]
	cmp dword [eax+0x1000], 0x2
	jnz Eval_EvaluationStep_180
	mov eax, [eax+0x1004]
	mov [esp+0x4], eax
	mov eax, [ecx+0x1004]
	mov [esp], eax
	call stricmp
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
	jmp Eval_EvaluationStep_230
Eval_EvaluationStep_60:
	mov ebx, 0xfffffffe
	jmp Eval_EvaluationStep_490
Eval_EvaluationStep_80:
	sub edx, ebx
	lea eax, [edx+edx*2]
	mov eax, [ecx+eax*4+0x1010]
	mov [esp], eax
	call free
	jmp Eval_EvaluationStep_530
Eval_EvaluationStep_260:
	mov dword [esp], 0x4
	call __cxa_allocate_exception
	mov dword [eax], _cstring_cannot_negate_st
	jmp Eval_EvaluationStep_470
Eval_EvaluationStep_480:
	mov dword [esp], 0x4
	call __cxa_allocate_exception
	mov dword [eax], _cstring_can_only_switch_
	jmp Eval_EvaluationStep_470
Eval_EvaluationStep_320:
	jp Eval_EvaluationStep_540
Eval_EvaluationStep_420:
	mov dword [esp], 0x4
	call __cxa_allocate_exception
	mov dword [eax], _cstring_divide_by_zero
	jmp Eval_EvaluationStep_470
Eval_EvaluationStep_400:
	mov dword [esp], 0x4
	call __cxa_allocate_exception
	mov dword [eax], _cstring_cannot_logical_i
	jmp Eval_EvaluationStep_470
Eval_EvaluationStep_340:
	jnp Eval_EvaluationStep_420
	jmp Eval_EvaluationStep_550
Eval_EvaluationStep_430:
	mov dword [esp], 0x4
	call __cxa_allocate_exception
	mov dword [eax], _cstring_cannot_bitwise_i
	jmp Eval_EvaluationStep_470
	nop
	
	
Eval_EvaluationStep_jumptab_0:
	dd Eval_EvaluationStep_10
	dd Eval_EvaluationStep_10
	dd Eval_EvaluationStep_560
	dd Eval_EvaluationStep_10
	dd Eval_EvaluationStep_570
	dd Eval_EvaluationStep_580
	dd Eval_EvaluationStep_20
	dd Eval_EvaluationStep_590
	dd Eval_EvaluationStep_600
	dd Eval_EvaluationStep_610
	dd Eval_EvaluationStep_620
	dd Eval_EvaluationStep_630
	dd Eval_EvaluationStep_640
	dd Eval_EvaluationStep_650
	dd Eval_EvaluationStep_660
	dd Eval_EvaluationStep_670
	dd Eval_EvaluationStep_680
	dd Eval_EvaluationStep_690
	dd Eval_EvaluationStep_700
	dd Eval_EvaluationStep_710
	dd Eval_EvaluationStep_720
	dd Eval_EvaluationStep_730
	dd Eval_EvaluationStep_740
	dd Eval_EvaluationStep_750
	dd Eval_EvaluationStep_760
	dd Eval_EvaluationStep_770


;Eval_Solve(Eval*)
Eval_Solve:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov eax, [esi+0x4008]
	test eax, eax
	jnz Eval_Solve_10
Eval_Solve_20:
	mov eax, esi
	call Eval_EvaluationStep
	test al, al
	jnz Eval_Solve_20
	cmp dword [esi+0x4004], 0x1
	jg Eval_Solve_30
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
Eval_Solve_10:
	mov dword [esp], 0x4
	call __cxa_allocate_exception
	mov dword [eax], _cstring_missing_
Eval_Solve_40:
	mov dword [esp+0x8], 0x0
	mov edx, [0xd5cca78]
	mov [esp+0x4], edx
	mov [esp], eax
	call __cxa_throw
Eval_Solve_30:
	mov dword [esp], 0x4
	call __cxa_allocate_exception
	mov dword [eax], _cstring_extra_operand_fo
	jmp Eval_Solve_40
	mov [esp], eax
	call __cxa_begin_catch
Eval_Solve_60:
	mov eax, [esi+0x4004]
	test eax, eax
	jle Eval_Solve_50
	sub eax, 0x1
	mov [esi+0x4004], eax
	lea eax, [eax+eax*2]
	lea eax, [esi+eax*4]
	cmp dword [eax+0x1000], 0x2
	jnz Eval_Solve_60
	mov eax, [eax+0x1004]
	mov [esp], eax
	call free
	jmp Eval_Solve_60
Eval_Solve_50:
	mov dword [esi+0x4000], 0x0
	call __cxa_rethrow
	mov ebx, eax
	call __cxa_end_catch
	mov [esp], ebx
	call _Unwind_Resume
	nop


;Eval_PushNumber(Eval*, double)
Eval_PushNumber:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [ebp+0x8]
	movsd xmm0, qword [ebp+0xc]
	mov eax, [edx+0x4004]
	test eax, eax
	jz Eval_PushNumber_10
	cmp eax, 0x400
	jz Eval_PushNumber_20
	cmp byte [edx+0x400c], 0x0
	jz Eval_PushNumber_30
Eval_PushNumber_10:
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
Eval_PushNumber_30:
	xor eax, eax
	leave
	ret
Eval_PushNumber_20:
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
Eval_PushInteger:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [ebp+0x8]
	mov eax, [edx+0x4004]
	test eax, eax
	jz Eval_PushInteger_10
	cmp eax, 0x400
	jz Eval_PushInteger_20
	cmp byte [edx+0x400c], 0x0
	jz Eval_PushInteger_30
Eval_PushInteger_10:
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
Eval_PushInteger_30:
	xor eax, eax
	leave
	ret
Eval_PushInteger_20:
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
Eval_PushOperator:
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
	js Eval_PushOperator_10
	cmp esi, 0x1
	jz Eval_PushOperator_20
	test esi, esi
	jz Eval_PushOperator_30
	cmp esi, 0x4
	jz Eval_PushOperator_40
	cmp esi, 0x5
	jnz Eval_PushOperator_50
	mov eax, [ebx+0x4004]
	test eax, eax
	jz Eval_PushOperator_60
	cmp byte [ebx+0x400c], 0x0
	jnz Eval_PushOperator_60
	mov eax, 0x5
	jmp Eval_PushOperator_50
Eval_PushOperator_160:
	test ecx, ecx
	jz Eval_PushOperator_70
	cmp dword [ebx+ecx*4-0x4], 0x3
	jz Eval_PushOperator_80
Eval_PushOperator_70:
	mov eax, [ebx+0x4008]
	test eax, eax
	jnz Eval_PushOperator_90
Eval_PushOperator_10:
	xor eax, eax
Eval_PushOperator_200:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Eval_PushOperator_30:
	mov eax, [ebx+0x4004]
	test eax, eax
	jnz Eval_PushOperator_100
Eval_PushOperator_180:
	add dword [ebx+0x4008], 0x1
	xor eax, eax
Eval_PushOperator_50:
	movsx edi, byte [eax+s_precedence]
Eval_PushOperator_140:
	mov ecx, [ebx+0x4000]
	test ecx, ecx
	jle Eval_PushOperator_110
	mov edx, [ebx+ecx*4-0x4]
	movsx eax, byte [edx+s_precedence]
	cmp eax, edi
	jz Eval_PushOperator_120
	jle Eval_PushOperator_110
Eval_PushOperator_150:
	test edx, edx
	jz Eval_PushOperator_130
	mov eax, ebx
	call Eval_EvaluationStep
	test al, al
	jnz Eval_PushOperator_140
	jmp Eval_PushOperator_10
Eval_PushOperator_120:
	cmp byte [edx+s_rightToLeft], 0x0
	jz Eval_PushOperator_150
Eval_PushOperator_110:
	cmp esi, 0x2
	jz Eval_PushOperator_160
Eval_PushOperator_80:
	cmp ecx, 0x400
	jz Eval_PushOperator_170
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
Eval_PushOperator_20:
	mov edx, [ebx+0x4008]
	test edx, edx
	jnz Eval_PushOperator_50
	jmp Eval_PushOperator_10
Eval_PushOperator_100:
	cmp byte [ebx+0x400c], 0x0
	jnz Eval_PushOperator_180
	jmp Eval_PushOperator_10
Eval_PushOperator_60:
	mov esi, 0x7
	mov eax, 0x7
	jmp Eval_PushOperator_50
Eval_PushOperator_40:
	mov eax, [ebx+0x4004]
	test eax, eax
	jz Eval_PushOperator_190
	cmp byte [ebx+0x400c], 0x0
	jnz Eval_PushOperator_190
	mov eax, 0x4
	jmp Eval_PushOperator_50
Eval_PushOperator_190:
	mov esi, 0x6
	mov eax, 0x6
	jmp Eval_PushOperator_50
Eval_PushOperator_130:
	cmp esi, 0x1
	jnz Eval_PushOperator_110
	sub dword [ebx+0x4008], 0x1
	sub ecx, 0x1
	mov [ebx+0x4000], ecx
	mov byte [ebx+0x400c], 0x0
	mov eax, 0x1
	jmp Eval_PushOperator_200
Eval_PushOperator_90:
	mov dword [esp], 0x4
	call __cxa_allocate_exception
	mov dword [eax], _cstring_found__without_p
Eval_PushOperator_210:
	mov dword [esp+0x8], 0x0
	mov edx, [0xd5cca78]
	mov [esp+0x4], edx
	mov [esp], eax
	call __cxa_throw
Eval_PushOperator_170:
	mov dword [esp], 0x4
	call __cxa_allocate_exception
	mov dword [eax], _cstring_evaluation_stack
	jmp Eval_PushOperator_210


;Eval_OperatorForToken(char const*, EvalOperatorType*)
Eval_OperatorForToken:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	movsx eax, byte [edx]
	sub eax, 0x21
	cmp eax, 0x5d
	ja Eval_OperatorForToken_10
	jmp dword [eax*4+Eval_OperatorForToken_jumptab_0]
Eval_OperatorForToken_10:
	xor eax, eax
	pop ebp
	ret
Eval_OperatorForToken_90:
	cmp byte [edx+0x1], 0x3d
	jz Eval_OperatorForToken_20
	mov eax, [ebp+0xc]
	mov dword [eax], 0x11
	mov eax, 0x1
	pop ebp
	ret
Eval_OperatorForToken_100:
	mov eax, [ebp+0xc]
	mov dword [eax], 0xa
	mov eax, 0x1
	pop ebp
	ret
Eval_OperatorForToken_180:
	mov eax, [ebp+0xc]
	mov dword [eax], 0x2
	mov eax, 0x1
	pop ebp
	ret
Eval_OperatorForToken_190:
	movzx eax, byte [edx+0x1]
	cmp al, 0x3c
	jz Eval_OperatorForToken_30
	cmp al, 0x3d
	jz Eval_OperatorForToken_40
	mov eax, [ebp+0xc]
	mov dword [eax], 0x16
	mov eax, 0x1
	pop ebp
	ret
Eval_OperatorForToken_200:
	cmp byte [edx+0x1], 0x3d
	jnz Eval_OperatorForToken_10
	mov eax, [ebp+0xc]
	mov dword [eax], 0x14
	mov eax, 0x1
	pop ebp
	ret
Eval_OperatorForToken_210:
	movzx eax, byte [edx+0x1]
	cmp al, 0x3e
	jz Eval_OperatorForToken_50
	cmp al, 0x3d
	jz Eval_OperatorForToken_60
	mov eax, [ebp+0xc]
	mov dword [eax], 0x18
	mov eax, 0x1
	pop ebp
	ret
Eval_OperatorForToken_220:
	mov eax, [ebp+0xc]
	mov dword [eax], 0x3
	mov eax, 0x1
	pop ebp
	ret
Eval_OperatorForToken_230:
	mov eax, [ebp+0xc]
	mov dword [eax], 0x10
	mov eax, 0x1
	pop ebp
	ret
Eval_OperatorForToken_240:
	cmp byte [edx+0x1], 0x7c
	jz Eval_OperatorForToken_70
	mov eax, [ebp+0xc]
	mov dword [eax], 0xf
	mov eax, 0x1
	pop ebp
	ret
Eval_OperatorForToken_250:
	mov eax, [ebp+0xc]
	mov dword [eax], 0xd
	mov eax, 0x1
	pop ebp
	ret
Eval_OperatorForToken_140:
	mov eax, [ebp+0xc]
	mov dword [eax], 0x8
	mov eax, 0x1
	pop ebp
	ret
Eval_OperatorForToken_150:
	mov eax, [ebp+0xc]
	mov dword [eax], 0x4
	mov eax, 0x1
	pop ebp
	ret
Eval_OperatorForToken_160:
	mov eax, [ebp+0xc]
	mov dword [eax], 0x5
	mov eax, 0x1
	pop ebp
	ret
Eval_OperatorForToken_170:
	mov eax, [ebp+0xc]
	mov dword [eax], 0x9
	mov eax, 0x1
	pop ebp
	ret
Eval_OperatorForToken_120:
	mov eax, [ebp+0xc]
	mov dword [eax], 0x0
	mov eax, 0x1
	pop ebp
	ret
Eval_OperatorForToken_130:
	mov eax, [ebp+0xc]
	mov dword [eax], 0x1
	mov eax, 0x1
	pop ebp
	ret
Eval_OperatorForToken_110:
	cmp byte [edx+0x1], 0x26
	jz Eval_OperatorForToken_80
	mov eax, [ebp+0xc]
	mov dword [eax], 0xe
	mov eax, 0x1
	pop ebp
	ret
Eval_OperatorForToken_70:
	mov eax, [ebp+0xc]
	mov dword [eax], 0x13
	mov eax, 0x1
	pop ebp
	ret
Eval_OperatorForToken_20:
	mov eax, [ebp+0xc]
	mov dword [eax], 0x15
	mov eax, 0x1
	pop ebp
	ret
Eval_OperatorForToken_80:
	mov eax, [ebp+0xc]
	mov dword [eax], 0x12
	mov eax, 0x1
	pop ebp
	ret
Eval_OperatorForToken_30:
	mov eax, [ebp+0xc]
	mov dword [eax], 0xb
	mov eax, 0x1
	pop ebp
	ret
Eval_OperatorForToken_50:
	mov eax, [ebp+0xc]
	mov dword [eax], 0xc
	mov eax, 0x1
	pop ebp
	ret
Eval_OperatorForToken_40:
	mov eax, [ebp+0xc]
	mov dword [eax], 0x17
	mov eax, 0x1
	pop ebp
	ret
Eval_OperatorForToken_60:
	mov eax, [ebp+0xc]
	mov dword [eax], 0x19
	mov eax, 0x1
	pop ebp
	ret
	
	
Eval_OperatorForToken_jumptab_0:
	dd Eval_OperatorForToken_90
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_100
	dd Eval_OperatorForToken_110
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_120
	dd Eval_OperatorForToken_130
	dd Eval_OperatorForToken_140
	dd Eval_OperatorForToken_150
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_160
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_170
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_180
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_190
	dd Eval_OperatorForToken_200
	dd Eval_OperatorForToken_210
	dd Eval_OperatorForToken_220
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_230
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_240
	dd Eval_OperatorForToken_10
	dd Eval_OperatorForToken_250


;Eval_AnyMissingOperands(Eval const*)
Eval_AnyMissingOperands:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov edi, [ebp+0x8]
	mov ebx, [edi+0x4000]
	test ebx, ebx
	jg Eval_AnyMissingOperands_10
	mov esi, 0x1
	xor eax, eax
	cmp esi, [edi+0x4004]
	setnz al
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Eval_AnyMissingOperands_10:
	mov edx, edi
	xor ecx, ecx
	mov esi, 0x1
Eval_AnyMissingOperands_20:
	mov eax, [edx]
	add esi, [eax*4+s_consumedOperandCount]
	add ecx, 0x1
	add edx, 0x4
	cmp ecx, ebx
	jnz Eval_AnyMissingOperands_20
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

