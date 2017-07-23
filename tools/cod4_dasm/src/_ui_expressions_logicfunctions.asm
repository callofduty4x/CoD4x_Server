;Imports of ui_expressions_logicfunctions:
	extern Q_stricmp
	extern Q_strncpyz
	extern Com_sprintf
	extern floorf
	extern GetSourceInt

;Exports of ui_expressions_logicfunctions:
	global compare_doesStringEqualString
	global compare_doesStringNotEqualString
	global compare_doesIntEqualInt
	global compare_doesIntEqualFloat
	global compare_doesFloatEqualInt
	global compare_doesFloatEqualFloat
	global compare_doesIntNotEqualInt
	global compare_doesIntNotEqualFloat
	global compare_doesFloatNotEqualInt
	global compare_doesFloatNotEqualFloat
	global compare_isIntLessThanInt
	global compare_isIntLessThanFloat
	global compare_isFloatLessThanInt
	global compare_isFloatLessThanFloat
	global compare_isIntLessThanEqualToInt
	global compare_isIntLessThanEqualToFloat
	global compare_isFloatLessThanEqualToInt
	global compare_isFloatLessThanEqualToFloat
	global compare_isIntGreaterThanInt
	global compare_isIntGreaterThanFloat
	global compare_isFloatGreaterThanInt
	global compare_isFloatGreaterThanFloat
	global compare_isIntGreaterThanEqualToInt
	global compare_isIntGreaterThanEqualToFloat
	global compare_isFloatGreaterThanEqualToInt
	global compare_isFloatGreaterThanEqualToFloat
	global add_IntWithInt
	global add_IntWithFloat
	global add_FloatWithInt
	global add_StringWithString
	global add_StringWithInt
	global add_IntWithString
	global add_StringWithFloat
	global add_FloatWithString
	global add_FloatWithFloat
	global multiply_IntByInt
	global multiply_IntByFloat
	global multiply_FloatByInt
	global multiply_FloatByFloat
	global subtract_IntFromInt
	global subtract_FloatFromInt
	global subtract_IntFromFloat
	global subtract_FloatFromFloat
	global divide_IntByInt
	global divide_IntByFloat
	global divide_FloatByInt
	global divide_FloatByFloat
	global mod_IntByInt
	global mod_IntByFloat
	global mod_FloatByInt
	global mod_FloatByFloat
	global and_IntWithInt
	global and_FloatWithInt
	global and_IntWithFloat
	global and_StringWithInt
	global and_IntWithString
	global and_StringWithFloat
	global and_FloatWithString
	global and_FloatWithFloat
	global or_IntWithInt
	global or_FloatWithInt
	global or_IntWithFloat
	global or_StringWithInt
	global or_IntWithString
	global or_StringWithFloat
	global or_FloatWithString
	global or_FloatWithFloat
	global bitwiseAnd
	global bitwiseOr
	global _ZZ20add_StringWithStringP7OperandS0_S0_E9resultStr
	global _ZZ17add_StringWithIntP7OperandS0_S0_E9resultStr
	global _ZZ17add_IntWithStringP7OperandS0_S0_E9resultStr
	global _ZZ19add_FloatWithStringP7OperandS0_S0_E9resultStr
	global _ZZ19add_StringWithFloatP7OperandS0_S0_E9resultStr
	global validOperations


SECTION .text


;compare_doesStringEqualString(Operand*, Operand*, Operand*)
compare_doesStringEqualString:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x10]
	mov dword [ebx], 0x0
	mov eax, [ebp+0xc]
	mov eax, [eax+0x4]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov eax, [eax+0x4]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	setz al
	movzx eax, al
	mov [ebx+0x4], eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;compare_doesStringNotEqualString(Operand*, Operand*, Operand*)
compare_doesStringNotEqualString:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x10]
	mov dword [ebx], 0x0
	mov eax, [ebp+0xc]
	mov eax, [eax+0x4]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov eax, [eax+0x4]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	setnz al
	movzx eax, al
	mov [ebx+0x4], eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;compare_doesIntEqualInt(Operand*, Operand*, Operand*)
compare_doesIntEqualInt:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x10]
	mov dword [ecx], 0x0
	mov eax, [ebp+0x8]
	mov edx, [eax+0x4]
	mov eax, [ebp+0xc]
	cmp edx, [eax+0x4]
	setz al
	movzx eax, al
	mov [ecx+0x4], eax
	pop ebp
	ret
	nop


;compare_doesIntEqualFloat(Operand*, Operand*, Operand*)
compare_doesIntEqualFloat:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x10]
	mov dword [ecx], 0x0
	mov eax, [ebp+0x8]
	cvtsi2ss xmm0, dword [eax+0x4]
	mov eax, [ebp+0xc]
	ucomiss xmm0, [eax+0x4]
	setz al
	setnp dl
	and al, dl
	movzx eax, al
	mov [ecx+0x4], eax
	pop ebp
	ret
	nop


;compare_doesFloatEqualInt(Operand*, Operand*, Operand*)
compare_doesFloatEqualInt:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x10]
	mov dword [ecx], 0x0
	mov eax, [ebp+0xc]
	cvtsi2ss xmm0, dword [eax+0x4]
	mov eax, [ebp+0x8]
	ucomiss xmm0, [eax+0x4]
	setz al
	setnp dl
	and al, dl
	movzx eax, al
	mov [ecx+0x4], eax
	pop ebp
	ret
	nop


;compare_doesFloatEqualFloat(Operand*, Operand*, Operand*)
compare_doesFloatEqualFloat:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x10]
	mov dword [ecx], 0x0
	mov eax, [ebp+0x8]
	movss xmm0, dword [eax+0x4]
	mov eax, [ebp+0xc]
	ucomiss xmm0, [eax+0x4]
	setz al
	setnp dl
	and al, dl
	movzx eax, al
	mov [ecx+0x4], eax
	pop ebp
	ret
	nop


;compare_doesIntNotEqualInt(Operand*, Operand*, Operand*)
compare_doesIntNotEqualInt:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x10]
	mov dword [ecx], 0x0
	mov eax, [ebp+0x8]
	mov edx, [eax+0x4]
	mov eax, [ebp+0xc]
	cmp edx, [eax+0x4]
	setnz al
	movzx eax, al
	mov [ecx+0x4], eax
	pop ebp
	ret
	nop


;compare_doesIntNotEqualFloat(Operand*, Operand*, Operand*)
compare_doesIntNotEqualFloat:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x10]
	mov dword [ecx], 0x0
	mov eax, [ebp+0x8]
	cvtsi2ss xmm0, dword [eax+0x4]
	mov eax, [ebp+0xc]
	ucomiss xmm0, [eax+0x4]
	setnz al
	setp dl
	or al, dl
	movzx eax, al
	mov [ecx+0x4], eax
	pop ebp
	ret
	nop


;compare_doesFloatNotEqualInt(Operand*, Operand*, Operand*)
compare_doesFloatNotEqualInt:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x10]
	mov dword [ecx], 0x0
	mov eax, [ebp+0xc]
	cvtsi2ss xmm0, dword [eax+0x4]
	mov eax, [ebp+0x8]
	ucomiss xmm0, [eax+0x4]
	setnz al
	setp dl
	or al, dl
	movzx eax, al
	mov [ecx+0x4], eax
	pop ebp
	ret
	nop


;compare_doesFloatNotEqualFloat(Operand*, Operand*, Operand*)
compare_doesFloatNotEqualFloat:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x10]
	mov dword [ecx], 0x0
	mov eax, [ebp+0x8]
	movss xmm0, dword [eax+0x4]
	mov eax, [ebp+0xc]
	ucomiss xmm0, [eax+0x4]
	setnz al
	setp dl
	or al, dl
	movzx eax, al
	mov [ecx+0x4], eax
	pop ebp
	ret
	nop


;compare_isIntLessThanInt(Operand*, Operand*, Operand*)
compare_isIntLessThanInt:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x10]
	mov dword [ecx], 0x0
	mov eax, [ebp+0x8]
	mov edx, [eax+0x4]
	mov eax, [ebp+0xc]
	cmp edx, [eax+0x4]
	setl al
	movzx eax, al
	mov [ecx+0x4], eax
	pop ebp
	ret
	nop


;compare_isIntLessThanFloat(Operand*, Operand*, Operand*)
compare_isIntLessThanFloat:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x10]
	mov dword [edx], 0x0
	mov eax, [ebp+0x8]
	cvtsi2ss xmm1, dword [eax+0x4]
	mov eax, [ebp+0xc]
	movss xmm0, dword [eax+0x4]
	xor eax, eax
	ucomiss xmm0, xmm1
	seta al
	mov [edx+0x4], eax
	pop ebp
	ret
	nop


;compare_isFloatLessThanInt(Operand*, Operand*, Operand*)
compare_isFloatLessThanInt:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x10]
	mov dword [edx], 0x0
	mov eax, [ebp+0xc]
	cvtsi2ss xmm0, dword [eax+0x4]
	mov eax, [ebp+0x8]
	ucomiss xmm0, [eax+0x4]
	seta al
	movzx eax, al
	mov [edx+0x4], eax
	pop ebp
	ret


;compare_isFloatLessThanFloat(Operand*, Operand*, Operand*)
compare_isFloatLessThanFloat:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x10]
	mov dword [edx], 0x0
	mov eax, [ebp+0xc]
	movss xmm0, dword [eax+0x4]
	mov eax, [ebp+0x8]
	ucomiss xmm0, [eax+0x4]
	seta al
	movzx eax, al
	mov [edx+0x4], eax
	pop ebp
	ret


;compare_isIntLessThanEqualToInt(Operand*, Operand*, Operand*)
compare_isIntLessThanEqualToInt:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x10]
	mov dword [ecx], 0x0
	mov eax, [ebp+0x8]
	mov edx, [eax+0x4]
	mov eax, [ebp+0xc]
	cmp edx, [eax+0x4]
	setle al
	movzx eax, al
	mov [ecx+0x4], eax
	pop ebp
	ret
	nop


;compare_isIntLessThanEqualToFloat(Operand*, Operand*, Operand*)
compare_isIntLessThanEqualToFloat:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x10]
	mov dword [edx], 0x0
	mov eax, [ebp+0x8]
	cvtsi2ss xmm1, dword [eax+0x4]
	mov eax, [ebp+0xc]
	movss xmm0, dword [eax+0x4]
	xor eax, eax
	ucomiss xmm0, xmm1
	setae al
	mov [edx+0x4], eax
	pop ebp
	ret
	nop


;compare_isFloatLessThanEqualToInt(Operand*, Operand*, Operand*)
compare_isFloatLessThanEqualToInt:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x10]
	mov dword [edx], 0x0
	mov eax, [ebp+0xc]
	cvtsi2ss xmm0, dword [eax+0x4]
	mov eax, [ebp+0x8]
	ucomiss xmm0, [eax+0x4]
	setae al
	movzx eax, al
	mov [edx+0x4], eax
	pop ebp
	ret


;compare_isFloatLessThanEqualToFloat(Operand*, Operand*, Operand*)
compare_isFloatLessThanEqualToFloat:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x10]
	mov dword [edx], 0x0
	mov eax, [ebp+0xc]
	movss xmm0, dword [eax+0x4]
	mov eax, [ebp+0x8]
	ucomiss xmm0, [eax+0x4]
	setae al
	movzx eax, al
	mov [edx+0x4], eax
	pop ebp
	ret


;compare_isIntGreaterThanInt(Operand*, Operand*, Operand*)
compare_isIntGreaterThanInt:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x10]
	mov dword [ecx], 0x0
	mov eax, [ebp+0xc]
	mov edx, [eax+0x4]
	mov eax, [ebp+0x8]
	cmp edx, [eax+0x4]
	setl al
	movzx eax, al
	mov [ecx+0x4], eax
	pop ebp
	ret
	nop


;compare_isIntGreaterThanFloat(Operand*, Operand*, Operand*)
compare_isIntGreaterThanFloat:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x10]
	mov dword [edx], 0x0
	mov eax, [ebp+0x8]
	cvtsi2ss xmm0, dword [eax+0x4]
	mov eax, [ebp+0xc]
	ucomiss xmm0, [eax+0x4]
	seta al
	movzx eax, al
	mov [edx+0x4], eax
	pop ebp
	ret


;compare_isFloatGreaterThanInt(Operand*, Operand*, Operand*)
compare_isFloatGreaterThanInt:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x10]
	mov dword [edx], 0x0
	mov eax, [ebp+0xc]
	cvtsi2ss xmm1, dword [eax+0x4]
	mov eax, [ebp+0x8]
	movss xmm0, dword [eax+0x4]
	xor eax, eax
	ucomiss xmm0, xmm1
	seta al
	mov [edx+0x4], eax
	pop ebp
	ret
	nop


;compare_isFloatGreaterThanFloat(Operand*, Operand*, Operand*)
compare_isFloatGreaterThanFloat:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x10]
	mov dword [edx], 0x0
	mov eax, [ebp+0x8]
	movss xmm0, dword [eax+0x4]
	mov eax, [ebp+0xc]
	ucomiss xmm0, [eax+0x4]
	seta al
	movzx eax, al
	mov [edx+0x4], eax
	pop ebp
	ret


;compare_isIntGreaterThanEqualToInt(Operand*, Operand*, Operand*)
compare_isIntGreaterThanEqualToInt:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x10]
	mov dword [ecx], 0x0
	mov eax, [ebp+0x8]
	mov edx, [eax+0x4]
	mov eax, [ebp+0xc]
	cmp edx, [eax+0x4]
	setge al
	movzx eax, al
	mov [ecx+0x4], eax
	pop ebp
	ret
	nop


;compare_isIntGreaterThanEqualToFloat(Operand*, Operand*, Operand*)
compare_isIntGreaterThanEqualToFloat:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x10]
	mov dword [edx], 0x0
	mov eax, [ebp+0x8]
	cvtsi2ss xmm0, dword [eax+0x4]
	mov eax, [ebp+0xc]
	ucomiss xmm0, [eax+0x4]
	setae al
	movzx eax, al
	mov [edx+0x4], eax
	pop ebp
	ret


;compare_isFloatGreaterThanEqualToInt(Operand*, Operand*, Operand*)
compare_isFloatGreaterThanEqualToInt:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x10]
	mov dword [edx], 0x0
	mov eax, [ebp+0xc]
	cvtsi2ss xmm1, dword [eax+0x4]
	mov eax, [ebp+0x8]
	movss xmm0, dword [eax+0x4]
	xor eax, eax
	ucomiss xmm0, xmm1
	setae al
	mov [edx+0x4], eax
	pop ebp
	ret
	nop


;compare_isFloatGreaterThanEqualToFloat(Operand*, Operand*, Operand*)
compare_isFloatGreaterThanEqualToFloat:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x10]
	mov dword [edx], 0x0
	mov eax, [ebp+0x8]
	movss xmm0, dword [eax+0x4]
	mov eax, [ebp+0xc]
	ucomiss xmm0, [eax+0x4]
	setae al
	movzx eax, al
	mov [edx+0x4], eax
	pop ebp
	ret


;add_IntWithInt(Operand*, Operand*, Operand*)
add_IntWithInt:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x10]
	mov dword [ecx], 0x0
	mov eax, [ebp+0x8]
	mov eax, [eax+0x4]
	mov edx, [ebp+0xc]
	add eax, [edx+0x4]
	mov [ecx+0x4], eax
	pop ebp
	ret
	nop


;add_IntWithFloat(Operand*, Operand*, Operand*)
add_IntWithFloat:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x10]
	mov dword [edx], 0x1
	mov eax, [ebp+0x8]
	cvtsi2ss xmm0, dword [eax+0x4]
	mov eax, [ebp+0xc]
	addss xmm0, [eax+0x4]
	movss [edx+0x4], xmm0
	pop ebp
	ret
	nop


;add_FloatWithInt(Operand*, Operand*, Operand*)
add_FloatWithInt:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x10]
	mov dword [edx], 0x1
	mov eax, [ebp+0xc]
	cvtsi2ss xmm0, dword [eax+0x4]
	mov eax, [ebp+0x8]
	addss xmm0, [eax+0x4]
	movss [edx+0x4], xmm0
	pop ebp
	ret
	nop


;add_StringWithString(Operand*, Operand*, Operand*)
add_StringWithString:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x22c
	mov edi, [ebp+0x10]
	mov dword [edi], 0x2
	mov dword [esp+0x8], 0x100
	mov eax, [ebp+0x8]
	mov eax, [eax+0x4]
	mov [esp+0x4], eax
	lea esi, [ebp-0x118]
	mov [esp], esi
	call Q_strncpyz
	mov dword [esp+0x8], 0x100
	mov eax, [ebp+0xc]
	mov eax, [eax+0x4]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x218]
	mov [esp], ebx
	call Q_strncpyz
	mov [esp+0x10], ebx
	mov [esp+0xc], esi
	mov dword [esp+0x8], _cstring_ss
	mov dword [esp+0x4], 0x100
	mov dword [esp], _ZZ20add_StringWithStringP7OperandS0_S0_E9resultStr
	call Com_sprintf
	mov dword [edi+0x4], _ZZ20add_StringWithStringP7OperandS0_S0_E9resultStr
	add esp, 0x22c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;add_StringWithInt(Operand*, Operand*, Operand*)
add_StringWithInt:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x120
	mov esi, [ebp+0x10]
	mov dword [esi], 0x2
	mov dword [esp+0x8], 0x100
	mov eax, [ebp+0x8]
	mov eax, [eax+0x4]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x108]
	mov [esp], ebx
	call Q_strncpyz
	mov eax, [ebp+0xc]
	mov eax, [eax+0x4]
	mov [esp+0x10], eax
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_si
	mov dword [esp+0x4], 0x100
	mov dword [esp], _ZZ17add_StringWithIntP7OperandS0_S0_E9resultStr
	call Com_sprintf
	mov dword [esi+0x4], _ZZ17add_StringWithIntP7OperandS0_S0_E9resultStr
	add esp, 0x120
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;add_IntWithString(Operand*, Operand*, Operand*)
add_IntWithString:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x120
	mov esi, [ebp+0x10]
	mov dword [esi], 0x2
	mov dword [esp+0x8], 0x100
	mov eax, [ebp+0xc]
	mov eax, [eax+0x4]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x108]
	mov [esp], ebx
	call Q_strncpyz
	mov [esp+0x10], ebx
	mov eax, [ebp+0x8]
	mov eax, [eax+0x4]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_is
	mov dword [esp+0x4], 0x100
	mov dword [esp], _ZZ17add_IntWithStringP7OperandS0_S0_E9resultStr
	call Com_sprintf
	mov dword [esi+0x4], _ZZ17add_IntWithStringP7OperandS0_S0_E9resultStr
	add esp, 0x120
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;add_StringWithFloat(Operand*, Operand*, Operand*)
add_StringWithFloat:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x120
	mov esi, [ebp+0x10]
	mov dword [esi], 0x2
	mov dword [esp+0x8], 0x100
	mov eax, [ebp+0x8]
	mov eax, [eax+0x4]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x108]
	mov [esp], ebx
	call Q_strncpyz
	mov eax, [ebp+0xc]
	cvtss2sd xmm0, [eax+0x4]
	movsd [esp+0x10], xmm0
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_sf
	mov dword [esp+0x4], 0x100
	mov dword [esp], _ZZ19add_StringWithFloatP7OperandS0_S0_E9resultStr
	call Com_sprintf
	mov dword [esi+0x4], _ZZ19add_StringWithFloatP7OperandS0_S0_E9resultStr
	add esp, 0x120
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;add_FloatWithString(Operand*, Operand*, Operand*)
add_FloatWithString:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x120
	mov esi, [ebp+0x10]
	mov dword [esi], 0x2
	mov dword [esp+0x8], 0x100
	mov eax, [ebp+0xc]
	mov eax, [eax+0x4]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x108]
	mov [esp], ebx
	call Q_strncpyz
	mov [esp+0x14], ebx
	mov eax, [ebp+0x8]
	cvtss2sd xmm0, [eax+0x4]
	movsd [esp+0xc], xmm0
	mov dword [esp+0x8], _cstring_fs
	mov dword [esp+0x4], 0x100
	mov dword [esp], _ZZ19add_FloatWithStringP7OperandS0_S0_E9resultStr
	call Com_sprintf
	mov dword [esi+0x4], _ZZ19add_FloatWithStringP7OperandS0_S0_E9resultStr
	add esp, 0x120
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;add_FloatWithFloat(Operand*, Operand*, Operand*)
add_FloatWithFloat:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x10]
	mov dword [edx], 0x1
	mov eax, [ebp+0x8]
	movss xmm0, dword [eax+0x4]
	mov eax, [ebp+0xc]
	addss xmm0, [eax+0x4]
	movss [edx+0x4], xmm0
	pop ebp
	ret
	nop


;multiply_IntByInt(Operand*, Operand*, Operand*)
multiply_IntByInt:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x10]
	mov dword [ecx], 0x0
	mov eax, [ebp+0x8]
	mov eax, [eax+0x4]
	mov edx, [ebp+0xc]
	imul eax, [edx+0x4]
	mov [ecx+0x4], eax
	pop ebp
	ret


;multiply_IntByFloat(Operand*, Operand*, Operand*)
multiply_IntByFloat:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x10]
	mov dword [edx], 0x1
	mov eax, [ebp+0x8]
	cvtsi2ss xmm0, dword [eax+0x4]
	mov eax, [ebp+0xc]
	mulss xmm0, [eax+0x4]
	movss [edx+0x4], xmm0
	pop ebp
	ret
	nop


;multiply_FloatByInt(Operand*, Operand*, Operand*)
multiply_FloatByInt:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x10]
	mov dword [edx], 0x1
	mov eax, [ebp+0xc]
	cvtsi2ss xmm0, dword [eax+0x4]
	mov eax, [ebp+0x8]
	mulss xmm0, [eax+0x4]
	movss [edx+0x4], xmm0
	pop ebp
	ret
	nop


;multiply_FloatByFloat(Operand*, Operand*, Operand*)
multiply_FloatByFloat:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x10]
	mov dword [edx], 0x1
	mov eax, [ebp+0x8]
	movss xmm0, dword [eax+0x4]
	mov eax, [ebp+0xc]
	mulss xmm0, [eax+0x4]
	movss [edx+0x4], xmm0
	pop ebp
	ret
	nop


;subtract_IntFromInt(Operand*, Operand*, Operand*)
subtract_IntFromInt:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x10]
	mov dword [ecx], 0x0
	mov eax, [ebp+0x8]
	mov eax, [eax+0x4]
	mov edx, [ebp+0xc]
	sub eax, [edx+0x4]
	mov [ecx+0x4], eax
	pop ebp
	ret
	nop


;subtract_FloatFromInt(Operand*, Operand*, Operand*)
subtract_FloatFromInt:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x10]
	mov dword [edx], 0x1
	mov eax, [ebp+0x8]
	cvtsi2ss xmm0, dword [eax+0x4]
	mov eax, [ebp+0xc]
	subss xmm0, [eax+0x4]
	movss [edx+0x4], xmm0
	pop ebp
	ret
	nop


;subtract_IntFromFloat(Operand*, Operand*, Operand*)
subtract_IntFromFloat:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x10]
	mov dword [edx], 0x1
	mov eax, [ebp+0xc]
	cvtsi2ss xmm1, dword [eax+0x4]
	mov eax, [ebp+0x8]
	movss xmm0, dword [eax+0x4]
	subss xmm0, xmm1
	movss [edx+0x4], xmm0
	pop ebp
	ret
	nop


;subtract_FloatFromFloat(Operand*, Operand*, Operand*)
subtract_FloatFromFloat:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x10]
	mov dword [edx], 0x1
	mov eax, [ebp+0x8]
	movss xmm0, dword [eax+0x4]
	mov eax, [ebp+0xc]
	subss xmm0, [eax+0x4]
	movss [edx+0x4], xmm0
	pop ebp
	ret
	nop


;divide_IntByInt(Operand*, Operand*, Operand*)
divide_IntByInt:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x10]
	mov dword [edx], 0x1
	mov eax, [ebp+0xc]
	mov eax, [eax+0x4]
	test eax, eax
	jz divide_IntByInt_10
	mov ecx, [ebp+0x8]
	cvtsi2ss xmm0, dword [ecx+0x4]
	cvtsi2ss xmm1, eax
	divss xmm0, xmm1
	movss [edx+0x4], xmm0
	pop ebp
	ret
divide_IntByInt_10:
	mov dword [edx+0x4], 0x0
	pop ebp
	ret


;divide_IntByFloat(Operand*, Operand*, Operand*)
divide_IntByFloat:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x10]
	mov dword [edx], 0x1
	mov eax, [ebp+0xc]
	movss xmm1, dword [eax+0x4]
	ucomiss xmm1, [_float_0_00000000]
	jp divide_IntByFloat_10
	jz divide_IntByFloat_20
divide_IntByFloat_10:
	mov eax, [ebp+0x8]
	cvtsi2ss xmm0, dword [eax+0x4]
	divss xmm0, xmm1
	movss [edx+0x4], xmm0
	pop ebp
	ret
divide_IntByFloat_20:
	mov dword [edx+0x4], 0x0
	pop ebp
	ret
	nop


;divide_FloatByInt(Operand*, Operand*, Operand*)
divide_FloatByInt:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x10]
	mov dword [edx], 0x1
	mov eax, [ebp+0xc]
	mov eax, [eax+0x4]
	test eax, eax
	jz divide_FloatByInt_10
	cvtsi2ss xmm1, eax
	mov eax, [ebp+0x8]
	movss xmm0, dword [eax+0x4]
	divss xmm0, xmm1
	movss [edx+0x4], xmm0
	pop ebp
	ret
divide_FloatByInt_10:
	mov dword [edx+0x4], 0x0
	pop ebp
	ret


;divide_FloatByFloat(Operand*, Operand*, Operand*)
divide_FloatByFloat:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x10]
	mov dword [edx], 0x1
	mov eax, [ebp+0xc]
	movss xmm1, dword [eax+0x4]
	ucomiss xmm1, [_float_0_00000000]
	jp divide_FloatByFloat_10
	jz divide_FloatByFloat_20
divide_FloatByFloat_10:
	mov eax, [ebp+0x8]
	movss xmm0, dword [eax+0x4]
	divss xmm0, xmm1
	movss [edx+0x4], xmm0
	pop ebp
	ret
divide_FloatByFloat_20:
	mov dword [edx+0x4], 0x0
	pop ebp
	ret
	nop


;mod_IntByInt(Operand*, Operand*, Operand*)
mod_IntByInt:
	push ebp
	mov ebp, esp
	push ebx
	mov ebx, [ebp+0x8]
	mov ecx, [ebp+0x10]
	mov dword [ecx], 0x0
	mov eax, [ebp+0xc]
	mov edx, [eax+0x4]
	test edx, edx
	jz mod_IntByInt_10
	mov eax, [ebx+0x4]
	mov ebx, edx
	cdq
	idiv ebx
	mov [ecx+0x4], edx
	pop ebx
	pop ebp
	ret
mod_IntByInt_10:
	mov eax, [ebx+0x4]
	mov [ecx+0x4], eax
	pop ebx
	pop ebp
	ret
	nop


;mod_IntByFloat(Operand*, Operand*, Operand*)
mod_IntByFloat:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0x10]
	mov dword [ebx], 0x0
	movss xmm0, dword [_float_0_50000000]
	mov eax, [ebp+0xc]
	addss xmm0, [eax+0x4]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0xc]
	cvttss2si edx, [ebp-0xc]
	test edx, edx
	jz mod_IntByFloat_10
	mov eax, [esi+0x4]
	mov ecx, edx
	cdq
	idiv ecx
	mov [ebx+0x4], edx
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
mod_IntByFloat_10:
	mov eax, [esi+0x4]
	mov [ebx+0x4], eax
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;mod_FloatByInt(Operand*, Operand*, Operand*)
mod_FloatByInt:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov edx, [ebp+0x8]
	mov esi, [ebp+0x10]
	mov dword [esi], 0x0
	mov eax, [ebp+0xc]
	mov ebx, [eax+0x4]
	test ebx, ebx
	jnz mod_FloatByInt_10
	mov eax, [edx+0x4]
	mov [esi+0x4], eax
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
mod_FloatByInt_10:
	movss xmm0, dword [_float_0_50000000]
	addss xmm0, [edx+0x4]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0xc]
	cvttss2si eax, [ebp-0xc]
	cdq
	idiv ebx
	mov [esi+0x4], edx
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;mod_FloatByFloat(Operand*, Operand*, Operand*)
mod_FloatByFloat:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov esi, [ebp+0x10]
	mov dword [esi], 0x0
	mov eax, [ebp+0xc]
	movss xmm0, dword [eax+0x4]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x1c]
	cvttss2si ebx, [ebp-0x1c]
	test ebx, ebx
	jz mod_FloatByFloat_10
	movss xmm0, dword [_float_0_50000000]
	addss xmm0, [edi+0x4]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x20]
	cvttss2si eax, [ebp-0x20]
	cdq
	idiv ebx
	mov [esi+0x4], edx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
mod_FloatByFloat_10:
	movss xmm0, dword [_float_0_50000000]
	addss xmm0, [edi+0x4]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0x24]
	cvttss2si eax, [ebp-0x24]
	mov [esi+0x4], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;and_IntWithInt(Operand*, Operand*, Operand*)
and_IntWithInt:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x10]
	mov dword [edx], 0x0
	mov eax, [ebp+0x8]
	mov ecx, [eax+0x4]
	test ecx, ecx
	jz and_IntWithInt_10
	mov eax, [ebp+0xc]
	mov eax, [eax+0x4]
	test eax, eax
	jz and_IntWithInt_10
	mov eax, 0x1
	mov [edx+0x4], eax
	pop ebp
	ret
and_IntWithInt_10:
	xor eax, eax
	mov [edx+0x4], eax
	pop ebp
	ret
	nop


;and_FloatWithInt(Operand*, Operand*, Operand*)
and_FloatWithInt:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x10]
	mov dword [edx], 0x0
	pxor xmm0, xmm0
	mov eax, [ebp+0x8]
	ucomiss xmm0, [eax+0x4]
	jp and_FloatWithInt_10
	jz and_FloatWithInt_20
and_FloatWithInt_10:
	mov eax, [ebp+0xc]
	mov eax, [eax+0x4]
	test eax, eax
	jz and_FloatWithInt_20
	mov eax, 0x1
	mov [edx+0x4], eax
	pop ebp
	ret
and_FloatWithInt_20:
	xor eax, eax
	mov [edx+0x4], eax
	pop ebp
	ret


;and_IntWithFloat(Operand*, Operand*, Operand*)
and_IntWithFloat:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x10]
	mov dword [edx], 0x0
	pxor xmm0, xmm0
	mov eax, [ebp+0xc]
	ucomiss xmm0, [eax+0x4]
	jp and_IntWithFloat_10
	jz and_IntWithFloat_20
and_IntWithFloat_10:
	mov eax, [ebp+0x8]
	mov ecx, [eax+0x4]
	test ecx, ecx
	jz and_IntWithFloat_20
	mov eax, 0x1
	mov [edx+0x4], eax
	pop ebp
	ret
and_IntWithFloat_20:
	xor eax, eax
	mov [edx+0x4], eax
	pop ebp
	ret


;and_StringWithInt(Operand*, Operand*, Operand*)
and_StringWithInt:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x10]
	mov dword [edx], 0x0
	mov eax, [ebp+0x8]
	mov eax, [eax+0x4]
	cmp byte [eax], 0x0
	jz and_StringWithInt_10
	mov eax, [ebp+0xc]
	mov eax, [eax+0x4]
	test eax, eax
	jz and_StringWithInt_10
	mov eax, 0x1
	mov [edx+0x4], eax
	pop ebp
	ret
and_StringWithInt_10:
	xor eax, eax
	mov [edx+0x4], eax
	pop ebp
	ret


;and_IntWithString(Operand*, Operand*, Operand*)
and_IntWithString:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x10]
	mov dword [edx], 0x0
	mov eax, [ebp+0xc]
	mov eax, [eax+0x4]
	cmp byte [eax], 0x0
	jz and_IntWithString_10
	mov eax, [ebp+0x8]
	mov eax, [eax+0x4]
	test eax, eax
	jz and_IntWithString_10
	mov eax, 0x1
	mov [edx+0x4], eax
	pop ebp
	ret
and_IntWithString_10:
	xor eax, eax
	mov [edx+0x4], eax
	pop ebp
	ret


;and_StringWithFloat(Operand*, Operand*, Operand*)
and_StringWithFloat:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x10]
	mov dword [edx], 0x0
	mov eax, [ebp+0x8]
	mov eax, [eax+0x4]
	cmp byte [eax], 0x0
	jz and_StringWithFloat_10
	pxor xmm0, xmm0
	mov eax, [ebp+0xc]
	ucomiss xmm0, [eax+0x4]
	jp and_StringWithFloat_20
	jz and_StringWithFloat_10
and_StringWithFloat_20:
	mov eax, 0x1
	mov [edx+0x4], eax
	pop ebp
	ret
and_StringWithFloat_10:
	xor eax, eax
	mov [edx+0x4], eax
	pop ebp
	ret
	nop


;and_FloatWithString(Operand*, Operand*, Operand*)
and_FloatWithString:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x10]
	mov dword [edx], 0x0
	mov eax, [ebp+0xc]
	mov eax, [eax+0x4]
	cmp byte [eax], 0x0
	jz and_FloatWithString_10
	pxor xmm0, xmm0
	mov eax, [ebp+0x8]
	ucomiss xmm0, [eax+0x4]
	jp and_FloatWithString_20
	jz and_FloatWithString_10
and_FloatWithString_20:
	mov eax, 0x1
	mov [edx+0x4], eax
	pop ebp
	ret
and_FloatWithString_10:
	xor eax, eax
	mov [edx+0x4], eax
	pop ebp
	ret
	nop


;and_FloatWithFloat(Operand*, Operand*, Operand*)
and_FloatWithFloat:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x10]
	mov dword [edx], 0x0
	pxor xmm0, xmm0
	mov eax, [ebp+0x8]
	ucomiss xmm0, [eax+0x4]
	jp and_FloatWithFloat_10
	jz and_FloatWithFloat_20
and_FloatWithFloat_10:
	mov eax, [ebp+0xc]
	ucomiss xmm0, [eax+0x4]
	jp and_FloatWithFloat_30
	jz and_FloatWithFloat_20
and_FloatWithFloat_30:
	mov eax, 0x1
	mov [edx+0x4], eax
	pop ebp
	ret
and_FloatWithFloat_20:
	xor eax, eax
	mov [edx+0x4], eax
	pop ebp
	ret
	nop


;or_IntWithInt(Operand*, Operand*, Operand*)
or_IntWithInt:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x10]
	mov dword [edx], 0x0
	mov eax, [ebp+0x8]
	mov eax, [eax+0x4]
	test eax, eax
	jnz or_IntWithInt_10
	mov eax, [ebp+0xc]
	mov eax, [eax+0x4]
	test eax, eax
	jz or_IntWithInt_20
or_IntWithInt_10:
	mov eax, 0x1
	mov [edx+0x4], eax
	pop ebp
	ret
or_IntWithInt_20:
	xor eax, eax
	mov [edx+0x4], eax
	pop ebp
	ret
	nop


;or_FloatWithInt(Operand*, Operand*, Operand*)
or_FloatWithInt:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x10]
	mov dword [edx], 0x0
	pxor xmm0, xmm0
	mov eax, [ebp+0x8]
	ucomiss xmm0, [eax+0x4]
	jnz or_FloatWithInt_10
	jp or_FloatWithInt_10
	mov eax, [ebp+0xc]
	mov eax, [eax+0x4]
	test eax, eax
	jz or_FloatWithInt_20
or_FloatWithInt_10:
	mov eax, 0x1
	mov [edx+0x4], eax
	pop ebp
	ret
or_FloatWithInt_20:
	xor eax, eax
	mov [edx+0x4], eax
	pop ebp
	ret


;or_IntWithFloat(Operand*, Operand*, Operand*)
or_IntWithFloat:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x10]
	mov dword [edx], 0x0
	pxor xmm0, xmm0
	mov eax, [ebp+0xc]
	ucomiss xmm0, [eax+0x4]
	jnz or_IntWithFloat_10
	jp or_IntWithFloat_10
	mov eax, [ebp+0x8]
	mov eax, [eax+0x4]
	test eax, eax
	jz or_IntWithFloat_20
or_IntWithFloat_10:
	mov eax, 0x1
	mov [edx+0x4], eax
	pop ebp
	ret
or_IntWithFloat_20:
	xor eax, eax
	mov [edx+0x4], eax
	pop ebp
	ret


;or_StringWithInt(Operand*, Operand*, Operand*)
or_StringWithInt:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x10]
	mov dword [edx], 0x0
	mov eax, [ebp+0x8]
	mov eax, [eax+0x4]
	cmp byte [eax], 0x0
	jnz or_StringWithInt_10
	mov eax, [ebp+0xc]
	mov eax, [eax+0x4]
	test eax, eax
	jz or_StringWithInt_20
or_StringWithInt_10:
	mov eax, 0x1
	mov [edx+0x4], eax
	pop ebp
	ret
or_StringWithInt_20:
	xor eax, eax
	mov [edx+0x4], eax
	pop ebp
	ret


;or_IntWithString(Operand*, Operand*, Operand*)
or_IntWithString:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x10]
	mov dword [edx], 0x0
	mov eax, [ebp+0xc]
	mov eax, [eax+0x4]
	cmp byte [eax], 0x0
	jnz or_IntWithString_10
	mov eax, [ebp+0x8]
	mov eax, [eax+0x4]
	test eax, eax
	jz or_IntWithString_20
or_IntWithString_10:
	mov eax, 0x1
	mov [edx+0x4], eax
	pop ebp
	ret
or_IntWithString_20:
	xor eax, eax
	mov [edx+0x4], eax
	pop ebp
	ret


;or_StringWithFloat(Operand*, Operand*, Operand*)
or_StringWithFloat:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x10]
	mov dword [edx], 0x0
	mov eax, [ebp+0x8]
	mov eax, [eax+0x4]
	cmp byte [eax], 0x0
	jnz or_StringWithFloat_10
	pxor xmm0, xmm0
	mov eax, [ebp+0xc]
	ucomiss xmm0, [eax+0x4]
	jz or_StringWithFloat_20
or_StringWithFloat_10:
	mov eax, 0x1
	mov [edx+0x4], eax
	pop ebp
	ret
or_StringWithFloat_20:
	jp or_StringWithFloat_10
	xor eax, eax
	mov [edx+0x4], eax
	pop ebp
	ret
	nop


;or_FloatWithString(Operand*, Operand*, Operand*)
or_FloatWithString:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x10]
	mov dword [edx], 0x0
	mov eax, [ebp+0xc]
	mov eax, [eax+0x4]
	cmp byte [eax], 0x0
	jnz or_FloatWithString_10
	pxor xmm0, xmm0
	mov eax, [ebp+0x8]
	ucomiss xmm0, [eax+0x4]
	jz or_FloatWithString_20
or_FloatWithString_10:
	mov eax, 0x1
	mov [edx+0x4], eax
	pop ebp
	ret
or_FloatWithString_20:
	jp or_FloatWithString_10
	xor eax, eax
	mov [edx+0x4], eax
	pop ebp
	ret
	nop


;or_FloatWithFloat(Operand*, Operand*, Operand*)
or_FloatWithFloat:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x10]
	mov dword [edx], 0x0
	pxor xmm0, xmm0
	mov eax, [ebp+0x8]
	ucomiss xmm0, [eax+0x4]
	jnz or_FloatWithFloat_10
	jp or_FloatWithFloat_10
	mov eax, [ebp+0xc]
	ucomiss xmm0, [eax+0x4]
	jz or_FloatWithFloat_20
or_FloatWithFloat_10:
	mov eax, 0x1
	mov [edx+0x4], eax
	pop ebp
	ret
or_FloatWithFloat_20:
	jp or_FloatWithFloat_10
	xor eax, eax
	mov [edx+0x4], eax
	pop ebp
	ret
	nop


;bitwiseAnd(Operand*, Operand*, Operand*)
bitwiseAnd:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x10]
	mov dword [esi], 0x0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call GetSourceInt
	mov ebx, eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call GetSourceInt
	and ebx, eax
	mov [esi+0x4], ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;bitwiseOr(Operand*, Operand*, Operand*)
bitwiseOr:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x10]
	mov dword [esi], 0x0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call GetSourceInt
	mov ebx, eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call GetSourceInt
	or ebx, eax
	mov [esi+0x4], ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;Initialized global or static variables of ui_expressions_logicfunctions:
SECTION .data
validOperations: dd 0xc, 0x2, 0x2, compare_doesStringEqualString, 0xd, 0x2, 0x2, compare_doesStringNotEqualString, 0xc, 0x0, 0x0, compare_doesIntEqualInt, 0xc, 0x0, 0x1, compare_doesIntEqualFloat, 0xc, 0x1, 0x0, compare_doesFloatEqualInt, 0xc, 0x1, 0x1, compare_doesFloatEqualFloat, 0xd, 0x0, 0x0, compare_doesIntNotEqualInt, 0xd, 0x0, 0x1, compare_doesIntNotEqualFloat, 0xd, 0x1, 0x0, compare_doesFloatNotEqualInt, 0xd, 0x1, 0x1, compare_doesFloatNotEqualFloat, 0x8, 0x0, 0x0, compare_isIntLessThanInt, 0x8, 0x0, 0x1, compare_isIntLessThanFloat, 0x8, 0x1, 0x0, compare_isFloatLessThanInt, 0x8, 0x1, 0x1, compare_isFloatLessThanFloat, 0x9, 0x0, 0x0, compare_isIntLessThanEqualToInt, 0x9, 0x0, 0x1, compare_isIntLessThanEqualToFloat, 0x9, 0x1, 0x0, compare_isFloatLessThanEqualToInt, 0x9, 0x1, 0x1, compare_isFloatLessThanEqualToFloat, 0xa, 0x0, 0x0, compare_isIntGreaterThanInt, 0xa, 0x0, 0x1, compare_isIntGreaterThanFloat, 0xa, 0x1, 0x0, compare_isFloatGreaterThanInt, 0xa, 0x1, 0x1, compare_isFloatGreaterThanFloat, 0xb, 0x0, 0x0, compare_isIntGreaterThanEqualToInt, 0xb, 0x0, 0x1, compare_isIntGreaterThanEqualToFloat, 0xb, 0x1, 0x0, compare_isFloatGreaterThanEqualToInt, 0xb, 0x1, 0x1, compare_isFloatGreaterThanEqualToFloat, 0x5, 0x0, 0x0, add_IntWithInt, 0x5, 0x0, 0x1, add_IntWithFloat, 0x5, 0x1, 0x0, add_FloatWithInt, 0x5, 0x2, 0x2, add_StringWithString, 0x5, 0x2, 0x0, add_StringWithInt, 0x5, 0x0, 0x2, add_IntWithString, 0x5, 0x2, 0x1, add_StringWithFloat, 0x5, 0x1, 0x2, add_FloatWithString, 0x5, 0x1, 0x1, add_FloatWithFloat, 0x2, 0x0, 0x0, multiply_IntByInt, 0x2, 0x0, 0x1, multiply_IntByFloat, 0x2, 0x1, 0x0, multiply_FloatByInt, 0x2, 0x1, 0x1, multiply_FloatByFloat, 0x6, 0x0, 0x0, subtract_IntFromInt, 0x6, 0x0, 0x1, subtract_FloatFromInt, 0x6, 0x1, 0x0, subtract_IntFromFloat, 0x6, 0x1, 0x1, subtract_FloatFromFloat, 0x3, 0x0, 0x0, divide_IntByInt, 0x3, 0x0, 0x1, divide_IntByFloat, 0x3, 0x1, 0x0, divide_FloatByInt, 0x3, 0x1, 0x1, divide_FloatByFloat, 0x4, 0x0, 0x0, mod_IntByInt, 0x4, 0x0, 0x1, mod_IntByFloat, 0x4, 0x1, 0x0, mod_FloatByInt, 0x4, 0x1, 0x1, mod_FloatByFloat, 0xe, 0x0, 0x0, and_IntWithInt, 0xe, 0x1, 0x0, and_FloatWithInt, 0xe, 0x0, 0x1, and_IntWithFloat, 0xe, 0x2, 0x0, and_StringWithInt, 0xe, 0x0, 0x2, and_IntWithString, 0xe, 0x2, 0x1, and_StringWithFloat, 0xe, 0x1, 0x2, and_FloatWithString, 0xe, 0x1, 0x1, and_FloatWithFloat, 0xf, 0x0, 0x0, or_IntWithInt, 0xf, 0x1, 0x0, or_FloatWithInt, 0xf, 0x0, 0x1, or_IntWithFloat, 0xf, 0x2, 0x0, or_StringWithInt, 0xf, 0x0, 0x2, or_IntWithString, 0xf, 0x2, 0x1, or_StringWithFloat, 0xf, 0x1, 0x2, or_FloatWithString, 0xf, 0x1, 0x1, or_FloatWithFloat, 0x12, 0x0, 0x0, bitwiseAnd, 0x12, 0x1, 0x0, bitwiseAnd, 0x12, 0x0, 0x1, bitwiseAnd, 0x12, 0x2, 0x0, bitwiseAnd, 0x12, 0x0, 0x2, bitwiseAnd, 0x12, 0x2, 0x1, bitwiseAnd, 0x12, 0x1, 0x2, bitwiseAnd, 0x12, 0x1, 0x1, bitwiseAnd, 0x13, 0x0, 0x0, bitwiseOr, 0x13, 0x1, 0x0, bitwiseOr, 0x13, 0x0, 0x1, bitwiseOr, 0x13, 0x2, 0x0, bitwiseOr, 0x13, 0x0, 0x2, bitwiseOr, 0x13, 0x2, 0x1, bitwiseOr, 0x13, 0x1, 0x2, bitwiseOr, 0x13, 0x1, 0x1, bitwiseOr, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of ui_expressions_logicfunctions:
SECTION .rdata


;Zero initialized global or static variables of ui_expressions_logicfunctions:
SECTION .bss
_ZZ20add_StringWithStringP7OperandS0_S0_E9resultStr: resb 0x100
_ZZ17add_StringWithIntP7OperandS0_S0_E9resultStr: resb 0x100
_ZZ17add_IntWithStringP7OperandS0_S0_E9resultStr: resb 0x100
_ZZ19add_FloatWithStringP7OperandS0_S0_E9resultStr: resb 0x100
_ZZ19add_StringWithFloatP7OperandS0_S0_E9resultStr: resb 0x100


;All cstrings:
SECTION .rdata
_cstring_ss:		db "%s%s",0
_cstring_si:		db "%s%i",0
_cstring_is:		db "%i%s",0
_cstring_sf:		db "%s%f",0
_cstring_fs:		db "%f%s",0



;All constant floats and doubles:
SECTION .rdata
_float_0_00000000:		dd 0x0	; 0
_float_0_50000000:		dd 0x3f000000	; 0.5

