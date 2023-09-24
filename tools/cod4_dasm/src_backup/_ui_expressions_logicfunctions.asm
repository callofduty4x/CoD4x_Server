;Imports of ui_expressions_logicfunctions:
	extern _Z9I_stricmpPKcS0_
	extern _Z10I_strncpyzPcPKci
	extern _Z11Com_sprintfPciPKcz
	extern floorf
	extern _Z12GetSourceIntP7Operand

;Exports of ui_expressions_logicfunctions:
	global _Z29compare_doesStringEqualStringP7OperandS0_S0_
	global _Z32compare_doesStringNotEqualStringP7OperandS0_S0_
	global _Z23compare_doesIntEqualIntP7OperandS0_S0_
	global _Z25compare_doesIntEqualFloatP7OperandS0_S0_
	global _Z25compare_doesFloatEqualIntP7OperandS0_S0_
	global _Z27compare_doesFloatEqualFloatP7OperandS0_S0_
	global _Z26compare_doesIntNotEqualIntP7OperandS0_S0_
	global _Z28compare_doesIntNotEqualFloatP7OperandS0_S0_
	global _Z28compare_doesFloatNotEqualIntP7OperandS0_S0_
	global _Z30compare_doesFloatNotEqualFloatP7OperandS0_S0_
	global _Z24compare_isIntLessThanIntP7OperandS0_S0_
	global _Z26compare_isIntLessThanFloatP7OperandS0_S0_
	global _Z26compare_isFloatLessThanIntP7OperandS0_S0_
	global _Z28compare_isFloatLessThanFloatP7OperandS0_S0_
	global _Z31compare_isIntLessThanEqualToIntP7OperandS0_S0_
	global _Z33compare_isIntLessThanEqualToFloatP7OperandS0_S0_
	global _Z33compare_isFloatLessThanEqualToIntP7OperandS0_S0_
	global _Z35compare_isFloatLessThanEqualToFloatP7OperandS0_S0_
	global _Z27compare_isIntGreaterThanIntP7OperandS0_S0_
	global _Z29compare_isIntGreaterThanFloatP7OperandS0_S0_
	global _Z29compare_isFloatGreaterThanIntP7OperandS0_S0_
	global _Z31compare_isFloatGreaterThanFloatP7OperandS0_S0_
	global _Z34compare_isIntGreaterThanEqualToIntP7OperandS0_S0_
	global _Z36compare_isIntGreaterThanEqualToFloatP7OperandS0_S0_
	global _Z36compare_isFloatGreaterThanEqualToIntP7OperandS0_S0_
	global _Z38compare_isFloatGreaterThanEqualToFloatP7OperandS0_S0_
	global _Z14add_IntWithIntP7OperandS0_S0_
	global _Z16add_IntWithFloatP7OperandS0_S0_
	global _Z16add_FloatWithIntP7OperandS0_S0_
	global _Z20add_StringWithStringP7OperandS0_S0_
	global _Z17add_StringWithIntP7OperandS0_S0_
	global _Z17add_IntWithStringP7OperandS0_S0_
	global _Z19add_StringWithFloatP7OperandS0_S0_
	global _Z19add_FloatWithStringP7OperandS0_S0_
	global _Z18add_FloatWithFloatP7OperandS0_S0_
	global _Z17multiply_IntByIntP7OperandS0_S0_
	global _Z19multiply_IntByFloatP7OperandS0_S0_
	global _Z19multiply_FloatByIntP7OperandS0_S0_
	global _Z21multiply_FloatByFloatP7OperandS0_S0_
	global _Z19subtract_IntFromIntP7OperandS0_S0_
	global _Z21subtract_FloatFromIntP7OperandS0_S0_
	global _Z21subtract_IntFromFloatP7OperandS0_S0_
	global _Z23subtract_FloatFromFloatP7OperandS0_S0_
	global _Z15divide_IntByIntP7OperandS0_S0_
	global _Z17divide_IntByFloatP7OperandS0_S0_
	global _Z17divide_FloatByIntP7OperandS0_S0_
	global _Z19divide_FloatByFloatP7OperandS0_S0_
	global _Z12mod_IntByIntP7OperandS0_S0_
	global _Z14mod_IntByFloatP7OperandS0_S0_
	global _Z14mod_FloatByIntP7OperandS0_S0_
	global _Z16mod_FloatByFloatP7OperandS0_S0_
	global _Z14and_IntWithIntP7OperandS0_S0_
	global _Z16and_FloatWithIntP7OperandS0_S0_
	global _Z16and_IntWithFloatP7OperandS0_S0_
	global _Z17and_StringWithIntP7OperandS0_S0_
	global _Z17and_IntWithStringP7OperandS0_S0_
	global _Z19and_StringWithFloatP7OperandS0_S0_
	global _Z19and_FloatWithStringP7OperandS0_S0_
	global _Z18and_FloatWithFloatP7OperandS0_S0_
	global _Z13or_IntWithIntP7OperandS0_S0_
	global _Z15or_FloatWithIntP7OperandS0_S0_
	global _Z15or_IntWithFloatP7OperandS0_S0_
	global _Z16or_StringWithIntP7OperandS0_S0_
	global _Z16or_IntWithStringP7OperandS0_S0_
	global _Z18or_StringWithFloatP7OperandS0_S0_
	global _Z18or_FloatWithStringP7OperandS0_S0_
	global _Z17or_FloatWithFloatP7OperandS0_S0_
	global _Z10bitwiseAndP7OperandS0_S0_
	global _Z9bitwiseOrP7OperandS0_S0_
	global _ZZ20add_StringWithStringP7OperandS0_S0_E9resultStr
	global _ZZ17add_StringWithIntP7OperandS0_S0_E9resultStr
	global _ZZ17add_IntWithStringP7OperandS0_S0_E9resultStr
	global _ZZ19add_FloatWithStringP7OperandS0_S0_E9resultStr
	global _ZZ19add_StringWithFloatP7OperandS0_S0_E9resultStr
	global validOperations


SECTION .text


;compare_doesStringEqualString(Operand*, Operand*, Operand*)
_Z29compare_doesStringEqualStringP7OperandS0_S0_:
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
	call _Z9I_stricmpPKcS0_
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
_Z32compare_doesStringNotEqualStringP7OperandS0_S0_:
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
	call _Z9I_stricmpPKcS0_
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
_Z23compare_doesIntEqualIntP7OperandS0_S0_:
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
_Z25compare_doesIntEqualFloatP7OperandS0_S0_:
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
_Z25compare_doesFloatEqualIntP7OperandS0_S0_:
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
_Z27compare_doesFloatEqualFloatP7OperandS0_S0_:
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
_Z26compare_doesIntNotEqualIntP7OperandS0_S0_:
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
_Z28compare_doesIntNotEqualFloatP7OperandS0_S0_:
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
_Z28compare_doesFloatNotEqualIntP7OperandS0_S0_:
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
_Z30compare_doesFloatNotEqualFloatP7OperandS0_S0_:
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
_Z24compare_isIntLessThanIntP7OperandS0_S0_:
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
_Z26compare_isIntLessThanFloatP7OperandS0_S0_:
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
_Z26compare_isFloatLessThanIntP7OperandS0_S0_:
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
_Z28compare_isFloatLessThanFloatP7OperandS0_S0_:
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
_Z31compare_isIntLessThanEqualToIntP7OperandS0_S0_:
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
_Z33compare_isIntLessThanEqualToFloatP7OperandS0_S0_:
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
_Z33compare_isFloatLessThanEqualToIntP7OperandS0_S0_:
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
_Z35compare_isFloatLessThanEqualToFloatP7OperandS0_S0_:
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
_Z27compare_isIntGreaterThanIntP7OperandS0_S0_:
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
_Z29compare_isIntGreaterThanFloatP7OperandS0_S0_:
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
_Z29compare_isFloatGreaterThanIntP7OperandS0_S0_:
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
_Z31compare_isFloatGreaterThanFloatP7OperandS0_S0_:
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
_Z34compare_isIntGreaterThanEqualToIntP7OperandS0_S0_:
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
_Z36compare_isIntGreaterThanEqualToFloatP7OperandS0_S0_:
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
_Z36compare_isFloatGreaterThanEqualToIntP7OperandS0_S0_:
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
_Z38compare_isFloatGreaterThanEqualToFloatP7OperandS0_S0_:
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
_Z14add_IntWithIntP7OperandS0_S0_:
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
_Z16add_IntWithFloatP7OperandS0_S0_:
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
_Z16add_FloatWithIntP7OperandS0_S0_:
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
_Z20add_StringWithStringP7OperandS0_S0_:
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
	call _Z10I_strncpyzPcPKci
	mov dword [esp+0x8], 0x100
	mov eax, [ebp+0xc]
	mov eax, [eax+0x4]
	mov [esp+0x4], eax
	lea ebx, [ebp-0x218]
	mov [esp], ebx
	call _Z10I_strncpyzPcPKci
	mov [esp+0x10], ebx
	mov [esp+0xc], esi
	mov dword [esp+0x8], _cstring_ss
	mov dword [esp+0x4], 0x100
	mov dword [esp], _ZZ20add_StringWithStringP7OperandS0_S0_E9resultStr
	call _Z11Com_sprintfPciPKcz
	mov dword [edi+0x4], _ZZ20add_StringWithStringP7OperandS0_S0_E9resultStr
	add esp, 0x22c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;add_StringWithInt(Operand*, Operand*, Operand*)
_Z17add_StringWithIntP7OperandS0_S0_:
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
	call _Z10I_strncpyzPcPKci
	mov eax, [ebp+0xc]
	mov eax, [eax+0x4]
	mov [esp+0x10], eax
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_si
	mov dword [esp+0x4], 0x100
	mov dword [esp], _ZZ17add_StringWithIntP7OperandS0_S0_E9resultStr
	call _Z11Com_sprintfPciPKcz
	mov dword [esi+0x4], _ZZ17add_StringWithIntP7OperandS0_S0_E9resultStr
	add esp, 0x120
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;add_IntWithString(Operand*, Operand*, Operand*)
_Z17add_IntWithStringP7OperandS0_S0_:
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
	call _Z10I_strncpyzPcPKci
	mov [esp+0x10], ebx
	mov eax, [ebp+0x8]
	mov eax, [eax+0x4]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_is
	mov dword [esp+0x4], 0x100
	mov dword [esp], _ZZ17add_IntWithStringP7OperandS0_S0_E9resultStr
	call _Z11Com_sprintfPciPKcz
	mov dword [esi+0x4], _ZZ17add_IntWithStringP7OperandS0_S0_E9resultStr
	add esp, 0x120
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;add_StringWithFloat(Operand*, Operand*, Operand*)
_Z19add_StringWithFloatP7OperandS0_S0_:
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
	call _Z10I_strncpyzPcPKci
	mov eax, [ebp+0xc]
	cvtss2sd xmm0, [eax+0x4]
	movsd [esp+0x10], xmm0
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_sf
	mov dword [esp+0x4], 0x100
	mov dword [esp], _ZZ19add_StringWithFloatP7OperandS0_S0_E9resultStr
	call _Z11Com_sprintfPciPKcz
	mov dword [esi+0x4], _ZZ19add_StringWithFloatP7OperandS0_S0_E9resultStr
	add esp, 0x120
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;add_FloatWithString(Operand*, Operand*, Operand*)
_Z19add_FloatWithStringP7OperandS0_S0_:
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
	call _Z10I_strncpyzPcPKci
	mov [esp+0x14], ebx
	mov eax, [ebp+0x8]
	cvtss2sd xmm0, [eax+0x4]
	movsd [esp+0xc], xmm0
	mov dword [esp+0x8], _cstring_fs
	mov dword [esp+0x4], 0x100
	mov dword [esp], _ZZ19add_FloatWithStringP7OperandS0_S0_E9resultStr
	call _Z11Com_sprintfPciPKcz
	mov dword [esi+0x4], _ZZ19add_FloatWithStringP7OperandS0_S0_E9resultStr
	add esp, 0x120
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;add_FloatWithFloat(Operand*, Operand*, Operand*)
_Z18add_FloatWithFloatP7OperandS0_S0_:
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
_Z17multiply_IntByIntP7OperandS0_S0_:
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
_Z19multiply_IntByFloatP7OperandS0_S0_:
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
_Z19multiply_FloatByIntP7OperandS0_S0_:
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
_Z21multiply_FloatByFloatP7OperandS0_S0_:
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
_Z19subtract_IntFromIntP7OperandS0_S0_:
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
_Z21subtract_FloatFromIntP7OperandS0_S0_:
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
_Z21subtract_IntFromFloatP7OperandS0_S0_:
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
_Z23subtract_FloatFromFloatP7OperandS0_S0_:
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
_Z15divide_IntByIntP7OperandS0_S0_:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x10]
	mov dword [edx], 0x1
	mov eax, [ebp+0xc]
	mov eax, [eax+0x4]
	test eax, eax
	jz _Z15divide_IntByIntP7OperandS0_S0__10
	mov ecx, [ebp+0x8]
	cvtsi2ss xmm0, dword [ecx+0x4]
	cvtsi2ss xmm1, eax
	divss xmm0, xmm1
	movss [edx+0x4], xmm0
	pop ebp
	ret
_Z15divide_IntByIntP7OperandS0_S0__10:
	mov dword [edx+0x4], 0x0
	pop ebp
	ret


;divide_IntByFloat(Operand*, Operand*, Operand*)
_Z17divide_IntByFloatP7OperandS0_S0_:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x10]
	mov dword [edx], 0x1
	mov eax, [ebp+0xc]
	movss xmm1, dword [eax+0x4]
	ucomiss xmm1, [_float_0_00000000]
	jp _Z17divide_IntByFloatP7OperandS0_S0__10
	jz _Z17divide_IntByFloatP7OperandS0_S0__20
_Z17divide_IntByFloatP7OperandS0_S0__10:
	mov eax, [ebp+0x8]
	cvtsi2ss xmm0, dword [eax+0x4]
	divss xmm0, xmm1
	movss [edx+0x4], xmm0
	pop ebp
	ret
_Z17divide_IntByFloatP7OperandS0_S0__20:
	mov dword [edx+0x4], 0x0
	pop ebp
	ret
	nop


;divide_FloatByInt(Operand*, Operand*, Operand*)
_Z17divide_FloatByIntP7OperandS0_S0_:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x10]
	mov dword [edx], 0x1
	mov eax, [ebp+0xc]
	mov eax, [eax+0x4]
	test eax, eax
	jz _Z17divide_FloatByIntP7OperandS0_S0__10
	cvtsi2ss xmm1, eax
	mov eax, [ebp+0x8]
	movss xmm0, dword [eax+0x4]
	divss xmm0, xmm1
	movss [edx+0x4], xmm0
	pop ebp
	ret
_Z17divide_FloatByIntP7OperandS0_S0__10:
	mov dword [edx+0x4], 0x0
	pop ebp
	ret


;divide_FloatByFloat(Operand*, Operand*, Operand*)
_Z19divide_FloatByFloatP7OperandS0_S0_:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x10]
	mov dword [edx], 0x1
	mov eax, [ebp+0xc]
	movss xmm1, dword [eax+0x4]
	ucomiss xmm1, [_float_0_00000000]
	jp _Z19divide_FloatByFloatP7OperandS0_S0__10
	jz _Z19divide_FloatByFloatP7OperandS0_S0__20
_Z19divide_FloatByFloatP7OperandS0_S0__10:
	mov eax, [ebp+0x8]
	movss xmm0, dword [eax+0x4]
	divss xmm0, xmm1
	movss [edx+0x4], xmm0
	pop ebp
	ret
_Z19divide_FloatByFloatP7OperandS0_S0__20:
	mov dword [edx+0x4], 0x0
	pop ebp
	ret
	nop


;mod_IntByInt(Operand*, Operand*, Operand*)
_Z12mod_IntByIntP7OperandS0_S0_:
	push ebp
	mov ebp, esp
	push ebx
	mov ebx, [ebp+0x8]
	mov ecx, [ebp+0x10]
	mov dword [ecx], 0x0
	mov eax, [ebp+0xc]
	mov edx, [eax+0x4]
	test edx, edx
	jz _Z12mod_IntByIntP7OperandS0_S0__10
	mov eax, [ebx+0x4]
	mov ebx, edx
	cdq
	idiv ebx
	mov [ecx+0x4], edx
	pop ebx
	pop ebp
	ret
_Z12mod_IntByIntP7OperandS0_S0__10:
	mov eax, [ebx+0x4]
	mov [ecx+0x4], eax
	pop ebx
	pop ebp
	ret
	nop


;mod_IntByFloat(Operand*, Operand*, Operand*)
_Z14mod_IntByFloatP7OperandS0_S0_:
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
	jz _Z14mod_IntByFloatP7OperandS0_S0__10
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
_Z14mod_IntByFloatP7OperandS0_S0__10:
	mov eax, [esi+0x4]
	mov [ebx+0x4], eax
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;mod_FloatByInt(Operand*, Operand*, Operand*)
_Z14mod_FloatByIntP7OperandS0_S0_:
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
	jnz _Z14mod_FloatByIntP7OperandS0_S0__10
	mov eax, [edx+0x4]
	mov [esi+0x4], eax
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
_Z14mod_FloatByIntP7OperandS0_S0__10:
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
_Z16mod_FloatByFloatP7OperandS0_S0_:
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
	jz _Z16mod_FloatByFloatP7OperandS0_S0__10
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
_Z16mod_FloatByFloatP7OperandS0_S0__10:
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
_Z14and_IntWithIntP7OperandS0_S0_:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x10]
	mov dword [edx], 0x0
	mov eax, [ebp+0x8]
	mov ecx, [eax+0x4]
	test ecx, ecx
	jz _Z14and_IntWithIntP7OperandS0_S0__10
	mov eax, [ebp+0xc]
	mov eax, [eax+0x4]
	test eax, eax
	jz _Z14and_IntWithIntP7OperandS0_S0__10
	mov eax, 0x1
	mov [edx+0x4], eax
	pop ebp
	ret
_Z14and_IntWithIntP7OperandS0_S0__10:
	xor eax, eax
	mov [edx+0x4], eax
	pop ebp
	ret
	nop


;and_FloatWithInt(Operand*, Operand*, Operand*)
_Z16and_FloatWithIntP7OperandS0_S0_:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x10]
	mov dword [edx], 0x0
	pxor xmm0, xmm0
	mov eax, [ebp+0x8]
	ucomiss xmm0, [eax+0x4]
	jp _Z16and_FloatWithIntP7OperandS0_S0__10
	jz _Z16and_FloatWithIntP7OperandS0_S0__20
_Z16and_FloatWithIntP7OperandS0_S0__10:
	mov eax, [ebp+0xc]
	mov eax, [eax+0x4]
	test eax, eax
	jz _Z16and_FloatWithIntP7OperandS0_S0__20
	mov eax, 0x1
	mov [edx+0x4], eax
	pop ebp
	ret
_Z16and_FloatWithIntP7OperandS0_S0__20:
	xor eax, eax
	mov [edx+0x4], eax
	pop ebp
	ret


;and_IntWithFloat(Operand*, Operand*, Operand*)
_Z16and_IntWithFloatP7OperandS0_S0_:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x10]
	mov dword [edx], 0x0
	pxor xmm0, xmm0
	mov eax, [ebp+0xc]
	ucomiss xmm0, [eax+0x4]
	jp _Z16and_IntWithFloatP7OperandS0_S0__10
	jz _Z16and_IntWithFloatP7OperandS0_S0__20
_Z16and_IntWithFloatP7OperandS0_S0__10:
	mov eax, [ebp+0x8]
	mov ecx, [eax+0x4]
	test ecx, ecx
	jz _Z16and_IntWithFloatP7OperandS0_S0__20
	mov eax, 0x1
	mov [edx+0x4], eax
	pop ebp
	ret
_Z16and_IntWithFloatP7OperandS0_S0__20:
	xor eax, eax
	mov [edx+0x4], eax
	pop ebp
	ret


;and_StringWithInt(Operand*, Operand*, Operand*)
_Z17and_StringWithIntP7OperandS0_S0_:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x10]
	mov dword [edx], 0x0
	mov eax, [ebp+0x8]
	mov eax, [eax+0x4]
	cmp byte [eax], 0x0
	jz _Z17and_StringWithIntP7OperandS0_S0__10
	mov eax, [ebp+0xc]
	mov eax, [eax+0x4]
	test eax, eax
	jz _Z17and_StringWithIntP7OperandS0_S0__10
	mov eax, 0x1
	mov [edx+0x4], eax
	pop ebp
	ret
_Z17and_StringWithIntP7OperandS0_S0__10:
	xor eax, eax
	mov [edx+0x4], eax
	pop ebp
	ret


;and_IntWithString(Operand*, Operand*, Operand*)
_Z17and_IntWithStringP7OperandS0_S0_:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x10]
	mov dword [edx], 0x0
	mov eax, [ebp+0xc]
	mov eax, [eax+0x4]
	cmp byte [eax], 0x0
	jz _Z17and_IntWithStringP7OperandS0_S0__10
	mov eax, [ebp+0x8]
	mov eax, [eax+0x4]
	test eax, eax
	jz _Z17and_IntWithStringP7OperandS0_S0__10
	mov eax, 0x1
	mov [edx+0x4], eax
	pop ebp
	ret
_Z17and_IntWithStringP7OperandS0_S0__10:
	xor eax, eax
	mov [edx+0x4], eax
	pop ebp
	ret


;and_StringWithFloat(Operand*, Operand*, Operand*)
_Z19and_StringWithFloatP7OperandS0_S0_:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x10]
	mov dword [edx], 0x0
	mov eax, [ebp+0x8]
	mov eax, [eax+0x4]
	cmp byte [eax], 0x0
	jz _Z19and_StringWithFloatP7OperandS0_S0__10
	pxor xmm0, xmm0
	mov eax, [ebp+0xc]
	ucomiss xmm0, [eax+0x4]
	jp _Z19and_StringWithFloatP7OperandS0_S0__20
	jz _Z19and_StringWithFloatP7OperandS0_S0__10
_Z19and_StringWithFloatP7OperandS0_S0__20:
	mov eax, 0x1
	mov [edx+0x4], eax
	pop ebp
	ret
_Z19and_StringWithFloatP7OperandS0_S0__10:
	xor eax, eax
	mov [edx+0x4], eax
	pop ebp
	ret
	nop


;and_FloatWithString(Operand*, Operand*, Operand*)
_Z19and_FloatWithStringP7OperandS0_S0_:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x10]
	mov dword [edx], 0x0
	mov eax, [ebp+0xc]
	mov eax, [eax+0x4]
	cmp byte [eax], 0x0
	jz _Z19and_FloatWithStringP7OperandS0_S0__10
	pxor xmm0, xmm0
	mov eax, [ebp+0x8]
	ucomiss xmm0, [eax+0x4]
	jp _Z19and_FloatWithStringP7OperandS0_S0__20
	jz _Z19and_FloatWithStringP7OperandS0_S0__10
_Z19and_FloatWithStringP7OperandS0_S0__20:
	mov eax, 0x1
	mov [edx+0x4], eax
	pop ebp
	ret
_Z19and_FloatWithStringP7OperandS0_S0__10:
	xor eax, eax
	mov [edx+0x4], eax
	pop ebp
	ret
	nop


;and_FloatWithFloat(Operand*, Operand*, Operand*)
_Z18and_FloatWithFloatP7OperandS0_S0_:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x10]
	mov dword [edx], 0x0
	pxor xmm0, xmm0
	mov eax, [ebp+0x8]
	ucomiss xmm0, [eax+0x4]
	jp _Z18and_FloatWithFloatP7OperandS0_S0__10
	jz _Z18and_FloatWithFloatP7OperandS0_S0__20
_Z18and_FloatWithFloatP7OperandS0_S0__10:
	mov eax, [ebp+0xc]
	ucomiss xmm0, [eax+0x4]
	jp _Z18and_FloatWithFloatP7OperandS0_S0__30
	jz _Z18and_FloatWithFloatP7OperandS0_S0__20
_Z18and_FloatWithFloatP7OperandS0_S0__30:
	mov eax, 0x1
	mov [edx+0x4], eax
	pop ebp
	ret
_Z18and_FloatWithFloatP7OperandS0_S0__20:
	xor eax, eax
	mov [edx+0x4], eax
	pop ebp
	ret
	nop


;or_IntWithInt(Operand*, Operand*, Operand*)
_Z13or_IntWithIntP7OperandS0_S0_:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x10]
	mov dword [edx], 0x0
	mov eax, [ebp+0x8]
	mov eax, [eax+0x4]
	test eax, eax
	jnz _Z13or_IntWithIntP7OperandS0_S0__10
	mov eax, [ebp+0xc]
	mov eax, [eax+0x4]
	test eax, eax
	jz _Z13or_IntWithIntP7OperandS0_S0__20
_Z13or_IntWithIntP7OperandS0_S0__10:
	mov eax, 0x1
	mov [edx+0x4], eax
	pop ebp
	ret
_Z13or_IntWithIntP7OperandS0_S0__20:
	xor eax, eax
	mov [edx+0x4], eax
	pop ebp
	ret
	nop


;or_FloatWithInt(Operand*, Operand*, Operand*)
_Z15or_FloatWithIntP7OperandS0_S0_:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x10]
	mov dword [edx], 0x0
	pxor xmm0, xmm0
	mov eax, [ebp+0x8]
	ucomiss xmm0, [eax+0x4]
	jnz _Z15or_FloatWithIntP7OperandS0_S0__10
	jp _Z15or_FloatWithIntP7OperandS0_S0__10
	mov eax, [ebp+0xc]
	mov eax, [eax+0x4]
	test eax, eax
	jz _Z15or_FloatWithIntP7OperandS0_S0__20
_Z15or_FloatWithIntP7OperandS0_S0__10:
	mov eax, 0x1
	mov [edx+0x4], eax
	pop ebp
	ret
_Z15or_FloatWithIntP7OperandS0_S0__20:
	xor eax, eax
	mov [edx+0x4], eax
	pop ebp
	ret


;or_IntWithFloat(Operand*, Operand*, Operand*)
_Z15or_IntWithFloatP7OperandS0_S0_:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x10]
	mov dword [edx], 0x0
	pxor xmm0, xmm0
	mov eax, [ebp+0xc]
	ucomiss xmm0, [eax+0x4]
	jnz _Z15or_IntWithFloatP7OperandS0_S0__10
	jp _Z15or_IntWithFloatP7OperandS0_S0__10
	mov eax, [ebp+0x8]
	mov eax, [eax+0x4]
	test eax, eax
	jz _Z15or_IntWithFloatP7OperandS0_S0__20
_Z15or_IntWithFloatP7OperandS0_S0__10:
	mov eax, 0x1
	mov [edx+0x4], eax
	pop ebp
	ret
_Z15or_IntWithFloatP7OperandS0_S0__20:
	xor eax, eax
	mov [edx+0x4], eax
	pop ebp
	ret


;or_StringWithInt(Operand*, Operand*, Operand*)
_Z16or_StringWithIntP7OperandS0_S0_:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x10]
	mov dword [edx], 0x0
	mov eax, [ebp+0x8]
	mov eax, [eax+0x4]
	cmp byte [eax], 0x0
	jnz _Z16or_StringWithIntP7OperandS0_S0__10
	mov eax, [ebp+0xc]
	mov eax, [eax+0x4]
	test eax, eax
	jz _Z16or_StringWithIntP7OperandS0_S0__20
_Z16or_StringWithIntP7OperandS0_S0__10:
	mov eax, 0x1
	mov [edx+0x4], eax
	pop ebp
	ret
_Z16or_StringWithIntP7OperandS0_S0__20:
	xor eax, eax
	mov [edx+0x4], eax
	pop ebp
	ret


;or_IntWithString(Operand*, Operand*, Operand*)
_Z16or_IntWithStringP7OperandS0_S0_:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x10]
	mov dword [edx], 0x0
	mov eax, [ebp+0xc]
	mov eax, [eax+0x4]
	cmp byte [eax], 0x0
	jnz _Z16or_IntWithStringP7OperandS0_S0__10
	mov eax, [ebp+0x8]
	mov eax, [eax+0x4]
	test eax, eax
	jz _Z16or_IntWithStringP7OperandS0_S0__20
_Z16or_IntWithStringP7OperandS0_S0__10:
	mov eax, 0x1
	mov [edx+0x4], eax
	pop ebp
	ret
_Z16or_IntWithStringP7OperandS0_S0__20:
	xor eax, eax
	mov [edx+0x4], eax
	pop ebp
	ret


;or_StringWithFloat(Operand*, Operand*, Operand*)
_Z18or_StringWithFloatP7OperandS0_S0_:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x10]
	mov dword [edx], 0x0
	mov eax, [ebp+0x8]
	mov eax, [eax+0x4]
	cmp byte [eax], 0x0
	jnz _Z18or_StringWithFloatP7OperandS0_S0__10
	pxor xmm0, xmm0
	mov eax, [ebp+0xc]
	ucomiss xmm0, [eax+0x4]
	jz _Z18or_StringWithFloatP7OperandS0_S0__20
_Z18or_StringWithFloatP7OperandS0_S0__10:
	mov eax, 0x1
	mov [edx+0x4], eax
	pop ebp
	ret
_Z18or_StringWithFloatP7OperandS0_S0__20:
	jp _Z18or_StringWithFloatP7OperandS0_S0__10
	xor eax, eax
	mov [edx+0x4], eax
	pop ebp
	ret
	nop


;or_FloatWithString(Operand*, Operand*, Operand*)
_Z18or_FloatWithStringP7OperandS0_S0_:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x10]
	mov dword [edx], 0x0
	mov eax, [ebp+0xc]
	mov eax, [eax+0x4]
	cmp byte [eax], 0x0
	jnz _Z18or_FloatWithStringP7OperandS0_S0__10
	pxor xmm0, xmm0
	mov eax, [ebp+0x8]
	ucomiss xmm0, [eax+0x4]
	jz _Z18or_FloatWithStringP7OperandS0_S0__20
_Z18or_FloatWithStringP7OperandS0_S0__10:
	mov eax, 0x1
	mov [edx+0x4], eax
	pop ebp
	ret
_Z18or_FloatWithStringP7OperandS0_S0__20:
	jp _Z18or_FloatWithStringP7OperandS0_S0__10
	xor eax, eax
	mov [edx+0x4], eax
	pop ebp
	ret
	nop


;or_FloatWithFloat(Operand*, Operand*, Operand*)
_Z17or_FloatWithFloatP7OperandS0_S0_:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x10]
	mov dword [edx], 0x0
	pxor xmm0, xmm0
	mov eax, [ebp+0x8]
	ucomiss xmm0, [eax+0x4]
	jnz _Z17or_FloatWithFloatP7OperandS0_S0__10
	jp _Z17or_FloatWithFloatP7OperandS0_S0__10
	mov eax, [ebp+0xc]
	ucomiss xmm0, [eax+0x4]
	jz _Z17or_FloatWithFloatP7OperandS0_S0__20
_Z17or_FloatWithFloatP7OperandS0_S0__10:
	mov eax, 0x1
	mov [edx+0x4], eax
	pop ebp
	ret
_Z17or_FloatWithFloatP7OperandS0_S0__20:
	jp _Z17or_FloatWithFloatP7OperandS0_S0__10
	xor eax, eax
	mov [edx+0x4], eax
	pop ebp
	ret
	nop


;bitwiseAnd(Operand*, Operand*, Operand*)
_Z10bitwiseAndP7OperandS0_S0_:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x10]
	mov dword [esi], 0x0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z12GetSourceIntP7Operand
	mov ebx, eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z12GetSourceIntP7Operand
	and ebx, eax
	mov [esi+0x4], ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;bitwiseOr(Operand*, Operand*, Operand*)
_Z9bitwiseOrP7OperandS0_S0_:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x10]
	mov dword [esi], 0x0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z12GetSourceIntP7Operand
	mov ebx, eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z12GetSourceIntP7Operand
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
validOperations: dd 0xc, 0x2, 0x2, _Z29compare_doesStringEqualStringP7OperandS0_S0_, 0xd, 0x2, 0x2, _Z32compare_doesStringNotEqualStringP7OperandS0_S0_, 0xc, 0x0, 0x0, _Z23compare_doesIntEqualIntP7OperandS0_S0_, 0xc, 0x0, 0x1, _Z25compare_doesIntEqualFloatP7OperandS0_S0_, 0xc, 0x1, 0x0, _Z25compare_doesFloatEqualIntP7OperandS0_S0_, 0xc, 0x1, 0x1, _Z27compare_doesFloatEqualFloatP7OperandS0_S0_, 0xd, 0x0, 0x0, _Z26compare_doesIntNotEqualIntP7OperandS0_S0_, 0xd, 0x0, 0x1, _Z28compare_doesIntNotEqualFloatP7OperandS0_S0_, 0xd, 0x1, 0x0, _Z28compare_doesFloatNotEqualIntP7OperandS0_S0_, 0xd, 0x1, 0x1, _Z30compare_doesFloatNotEqualFloatP7OperandS0_S0_, 0x8, 0x0, 0x0, _Z24compare_isIntLessThanIntP7OperandS0_S0_, 0x8, 0x0, 0x1, _Z26compare_isIntLessThanFloatP7OperandS0_S0_, 0x8, 0x1, 0x0, _Z26compare_isFloatLessThanIntP7OperandS0_S0_, 0x8, 0x1, 0x1, _Z28compare_isFloatLessThanFloatP7OperandS0_S0_, 0x9, 0x0, 0x0, _Z31compare_isIntLessThanEqualToIntP7OperandS0_S0_, 0x9, 0x0, 0x1, _Z33compare_isIntLessThanEqualToFloatP7OperandS0_S0_, 0x9, 0x1, 0x0, _Z33compare_isFloatLessThanEqualToIntP7OperandS0_S0_, 0x9, 0x1, 0x1, _Z35compare_isFloatLessThanEqualToFloatP7OperandS0_S0_, 0xa, 0x0, 0x0, _Z27compare_isIntGreaterThanIntP7OperandS0_S0_, 0xa, 0x0, 0x1, _Z29compare_isIntGreaterThanFloatP7OperandS0_S0_, 0xa, 0x1, 0x0, _Z29compare_isFloatGreaterThanIntP7OperandS0_S0_, 0xa, 0x1, 0x1, _Z31compare_isFloatGreaterThanFloatP7OperandS0_S0_, 0xb, 0x0, 0x0, _Z34compare_isIntGreaterThanEqualToIntP7OperandS0_S0_, 0xb, 0x0, 0x1, _Z36compare_isIntGreaterThanEqualToFloatP7OperandS0_S0_, 0xb, 0x1, 0x0, _Z36compare_isFloatGreaterThanEqualToIntP7OperandS0_S0_, 0xb, 0x1, 0x1, _Z38compare_isFloatGreaterThanEqualToFloatP7OperandS0_S0_, 0x5, 0x0, 0x0, _Z14add_IntWithIntP7OperandS0_S0_, 0x5, 0x0, 0x1, _Z16add_IntWithFloatP7OperandS0_S0_, 0x5, 0x1, 0x0, _Z16add_FloatWithIntP7OperandS0_S0_, 0x5, 0x2, 0x2, _Z20add_StringWithStringP7OperandS0_S0_, 0x5, 0x2, 0x0, _Z17add_StringWithIntP7OperandS0_S0_, 0x5, 0x0, 0x2, _Z17add_IntWithStringP7OperandS0_S0_, 0x5, 0x2, 0x1, _Z19add_StringWithFloatP7OperandS0_S0_, 0x5, 0x1, 0x2, _Z19add_FloatWithStringP7OperandS0_S0_, 0x5, 0x1, 0x1, _Z18add_FloatWithFloatP7OperandS0_S0_, 0x2, 0x0, 0x0, _Z17multiply_IntByIntP7OperandS0_S0_, 0x2, 0x0, 0x1, _Z19multiply_IntByFloatP7OperandS0_S0_, 0x2, 0x1, 0x0, _Z19multiply_FloatByIntP7OperandS0_S0_, 0x2, 0x1, 0x1, _Z21multiply_FloatByFloatP7OperandS0_S0_, 0x6, 0x0, 0x0, _Z19subtract_IntFromIntP7OperandS0_S0_, 0x6, 0x0, 0x1, _Z21subtract_FloatFromIntP7OperandS0_S0_, 0x6, 0x1, 0x0, _Z21subtract_IntFromFloatP7OperandS0_S0_, 0x6, 0x1, 0x1, _Z23subtract_FloatFromFloatP7OperandS0_S0_, 0x3, 0x0, 0x0, _Z15divide_IntByIntP7OperandS0_S0_, 0x3, 0x0, 0x1, _Z17divide_IntByFloatP7OperandS0_S0_, 0x3, 0x1, 0x0, _Z17divide_FloatByIntP7OperandS0_S0_, 0x3, 0x1, 0x1, _Z19divide_FloatByFloatP7OperandS0_S0_, 0x4, 0x0, 0x0, _Z12mod_IntByIntP7OperandS0_S0_, 0x4, 0x0, 0x1, _Z14mod_IntByFloatP7OperandS0_S0_, 0x4, 0x1, 0x0, _Z14mod_FloatByIntP7OperandS0_S0_, 0x4, 0x1, 0x1, _Z16mod_FloatByFloatP7OperandS0_S0_, 0xe, 0x0, 0x0, _Z14and_IntWithIntP7OperandS0_S0_, 0xe, 0x1, 0x0, _Z16and_FloatWithIntP7OperandS0_S0_, 0xe, 0x0, 0x1, _Z16and_IntWithFloatP7OperandS0_S0_, 0xe, 0x2, 0x0, _Z17and_StringWithIntP7OperandS0_S0_, 0xe, 0x0, 0x2, _Z17and_IntWithStringP7OperandS0_S0_, 0xe, 0x2, 0x1, _Z19and_StringWithFloatP7OperandS0_S0_, 0xe, 0x1, 0x2, _Z19and_FloatWithStringP7OperandS0_S0_, 0xe, 0x1, 0x1, _Z18and_FloatWithFloatP7OperandS0_S0_, 0xf, 0x0, 0x0, _Z13or_IntWithIntP7OperandS0_S0_, 0xf, 0x1, 0x0, _Z15or_FloatWithIntP7OperandS0_S0_, 0xf, 0x0, 0x1, _Z15or_IntWithFloatP7OperandS0_S0_, 0xf, 0x2, 0x0, _Z16or_StringWithIntP7OperandS0_S0_, 0xf, 0x0, 0x2, _Z16or_IntWithStringP7OperandS0_S0_, 0xf, 0x2, 0x1, _Z18or_StringWithFloatP7OperandS0_S0_, 0xf, 0x1, 0x2, _Z18or_FloatWithStringP7OperandS0_S0_, 0xf, 0x1, 0x1, _Z17or_FloatWithFloatP7OperandS0_S0_, 0x12, 0x0, 0x0, _Z10bitwiseAndP7OperandS0_S0_, 0x12, 0x1, 0x0, _Z10bitwiseAndP7OperandS0_S0_, 0x12, 0x0, 0x1, _Z10bitwiseAndP7OperandS0_S0_, 0x12, 0x2, 0x0, _Z10bitwiseAndP7OperandS0_S0_, 0x12, 0x0, 0x2, _Z10bitwiseAndP7OperandS0_S0_, 0x12, 0x2, 0x1, _Z10bitwiseAndP7OperandS0_S0_, 0x12, 0x1, 0x2, _Z10bitwiseAndP7OperandS0_S0_, 0x12, 0x1, 0x1, _Z10bitwiseAndP7OperandS0_S0_, 0x13, 0x0, 0x0, _Z9bitwiseOrP7OperandS0_S0_, 0x13, 0x1, 0x0, _Z9bitwiseOrP7OperandS0_S0_, 0x13, 0x0, 0x1, _Z9bitwiseOrP7OperandS0_S0_, 0x13, 0x2, 0x0, _Z9bitwiseOrP7OperandS0_S0_, 0x13, 0x0, 0x2, _Z9bitwiseOrP7OperandS0_S0_, 0x13, 0x2, 0x1, _Z9bitwiseOrP7OperandS0_S0_, 0x13, 0x1, 0x2, _Z9bitwiseOrP7OperandS0_S0_, 0x13, 0x1, 0x1, _Z9bitwiseOrP7OperandS0_S0_, 0x0, 0x0, 0x0, 0x0


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

