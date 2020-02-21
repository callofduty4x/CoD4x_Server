;Imports of com_constantconfigstrings:
	extern strcmp
	extern tolower
	extern Q_stricmp
	extern tempString
	extern constantConfigStrings
	extern constantConfigStringCount
	extern reservedConfigStrings

;Exports of com_constantconfigstrings:
	global CCS_GetConstConfigStringIndex
	global CCS_InitConstantConfigStrings
	global CCS_IsConfigStringIndexConstant
	global CCS_GetConfigStringNumForConstIndex


SECTION .text


;CCS_GetConstConfigStringIndex(char const*)
CCS_GetConstConfigStringIndex:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0x8]
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, esi
	repne scasb
	not ecx
	lea eax, [ecx-0x1]
	cmp eax, 0xff
	jbe CCS_GetConstConfigStringIndex_10
	shr eax, 0x2
	add eax, 0x1
	mov [ebp-0x20], eax
	movzx eax, byte [esi]
	test al, al
	jnz CCS_GetConstConfigStringIndex_20
CCS_GetConstConfigStringIndex_160:
	mov ebx, tempString
CCS_GetConstConfigStringIndex_180:
	mov eax, ebx
	sub eax, tempString
	cmp eax, 0xff
	jbe CCS_GetConstConfigStringIndex_30
	shr eax, 0x2
	add eax, 0x1
	mov [ebp-0x1c], eax
CCS_GetConstConfigStringIndex_190:
	mov eax, [constantConfigStrings]
	test eax, eax
	jz CCS_GetConstConfigStringIndex_40
	xor ebx, ebx
	mov edi, constantConfigStrings
	jmp CCS_GetConstConfigStringIndex_50
CCS_GetConstConfigStringIndex_70:
	mov eax, [ebp-0x1c]
	cmp eax, [edi+0x8]
	jz CCS_GetConstConfigStringIndex_60
CCS_GetConstConfigStringIndex_80:
	add ebx, 0x1
	mov eax, [edi+0x10]
	add edi, 0x10
	test eax, eax
	jz CCS_GetConstConfigStringIndex_40
CCS_GetConstConfigStringIndex_50:
	cmp eax, 0x334
	jg CCS_GetConstConfigStringIndex_70
	mov edx, [ebp-0x20]
	cmp edx, [edi+0x8]
	jnz CCS_GetConstConfigStringIndex_80
	mov eax, [edi+0x4]
	mov [esp+0x4], eax
	mov [esp], esi
	call strcmp
	test eax, eax
	jz CCS_GetConstConfigStringIndex_90
	add ebx, 0x1
	mov eax, [edi+0x10]
	add edi, 0x10
	test eax, eax
	jnz CCS_GetConstConfigStringIndex_50
CCS_GetConstConfigStringIndex_40:
	mov ebx, 0xffffffff
CCS_GetConstConfigStringIndex_90:
	mov eax, ebx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CCS_GetConstConfigStringIndex_30:
	test eax, eax
	jz CCS_GetConstConfigStringIndex_100
	mov ecx, tempString
	xor ebx, ebx
	lea edi, [eax+tempString]
CCS_GetConstConfigStringIndex_110:
	mov eax, ebx
	shl eax, 0x5
	sub eax, ebx
	movsx edx, byte [ecx]
	lea ebx, [edx+eax]
	add ecx, 0x1
	cmp ecx, edi
	jnz CCS_GetConstConfigStringIndex_110
	mov ecx, ebx
	shr ecx, 1
	mov edi, 0x80000003
	mov eax, edi
	mul ecx
	mov ecx, edx
	shr ecx, 0x1d
	lea edx, [ecx+ecx]
	mov eax, ecx
	shl eax, 0x1f
	sub eax, edx
	mov ecx, ebx
	sub ecx, eax
	jmp CCS_GetConstConfigStringIndex_120
CCS_GetConstConfigStringIndex_10:
	test eax, eax
	jz CCS_GetConstConfigStringIndex_130
	mov edi, esi
	xor ebx, ebx
	lea ecx, [esi+eax]
CCS_GetConstConfigStringIndex_140:
	mov eax, ebx
	shl eax, 0x5
	sub eax, ebx
	movsx edx, byte [edi]
	lea ebx, [edx+eax]
	add edi, 0x1
	cmp edi, ecx
	jnz CCS_GetConstConfigStringIndex_140
	mov ecx, ebx
	shr ecx, 1
	mov edi, 0x80000003
	mov eax, edi
	mul ecx
	mov ecx, edx
	shr ecx, 0x1d
	lea edx, [ecx+ecx]
	mov eax, ecx
	shl eax, 0x1f
	sub eax, edx
	mov ecx, ebx
	sub ecx, eax
	jmp CCS_GetConstConfigStringIndex_150
CCS_GetConstConfigStringIndex_130:
	xor ecx, ecx
CCS_GetConstConfigStringIndex_150:
	add ecx, 0x1
	mov [ebp-0x20], ecx
	movzx eax, byte [esi]
	test al, al
	jz CCS_GetConstConfigStringIndex_160
CCS_GetConstConfigStringIndex_20:
	mov edi, esi
	mov ebx, tempString
CCS_GetConstConfigStringIndex_170:
	movsx eax, al
	mov [esp], eax
	call tolower
	mov [ebx], al
	add ebx, 0x1
	movzx eax, byte [edi+0x1]
	add edi, 0x1
	test al, al
	jnz CCS_GetConstConfigStringIndex_170
	jmp CCS_GetConstConfigStringIndex_180
CCS_GetConstConfigStringIndex_100:
	xor ecx, ecx
CCS_GetConstConfigStringIndex_120:
	add ecx, 0x1
	mov [ebp-0x1c], ecx
	jmp CCS_GetConstConfigStringIndex_190
CCS_GetConstConfigStringIndex_60:
	mov eax, [edi+0x4]
	mov [esp+0x4], eax
	mov [esp], esi
	call Q_stricmp
	test eax, eax
	jnz CCS_GetConstConfigStringIndex_80
	jmp CCS_GetConstConfigStringIndex_90


;CCS_InitConstantConfigStrings()
CCS_InitConstantConfigStrings:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [constantConfigStrings]
	test eax, eax
	jz CCS_InitConstantConfigStrings_10
	mov dword [ebp-0x1c], 0x0
	mov esi, constantConfigStrings
CCS_InitConstantConfigStrings_90:
	cmp eax, 0x334
	jle CCS_InitConstantConfigStrings_20
	mov edx, [esi+0x4]
	movzx eax, byte [edx]
	test al, al
	jnz CCS_InitConstantConfigStrings_30
	mov ebx, tempString
CCS_InitConstantConfigStrings_150:
	mov eax, ebx
	sub eax, tempString
	cmp eax, 0xff
	ja CCS_InitConstantConfigStrings_40
	test eax, eax
	jz CCS_InitConstantConfigStrings_50
	mov ecx, tempString
	xor ebx, ebx
	lea edi, [eax+tempString]
CCS_InitConstantConfigStrings_60:
	mov eax, ebx
	shl eax, 0x5
	sub eax, ebx
	movsx edx, byte [ecx]
	lea ebx, [edx+eax]
	add ecx, 0x1
	cmp edi, ecx
	jnz CCS_InitConstantConfigStrings_60
	mov ecx, ebx
	shr ecx, 1
	mov eax, 0x80000003
	mul ecx
	mov ecx, edx
	shr ecx, 0x1d
	lea edx, [ecx+ecx]
	mov eax, ecx
	shl eax, 0x1f
	sub eax, edx
	mov ecx, ebx
	sub ecx, eax
CCS_InitConstantConfigStrings_110:
	lea eax, [ecx+0x1]
	mov [esi+0x8], eax
	mov eax, [esi]
	mov edx, eax
	test eax, eax
	js CCS_InitConstantConfigStrings_70
CCS_InitConstantConfigStrings_120:
	sar edx, 0x5
	mov ecx, eax
	and ecx, 0x8000001f
	js CCS_InitConstantConfigStrings_80
CCS_InitConstantConfigStrings_130:
	mov eax, 0x1
	shl eax, cl
	or [edx*4+reservedConfigStrings], eax
	add dword [ebp-0x1c], 0x1
	mov eax, [esi+0x10]
	add esi, 0x10
	test eax, eax
	jnz CCS_InitConstantConfigStrings_90
	mov eax, [ebp-0x1c]
	mov [constantConfigStringCount], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
CCS_InitConstantConfigStrings_20:
	mov edx, [esi+0x4]
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, edx
	repne scasb
	not ecx
	lea eax, [ecx-0x1]
	cmp eax, 0xff
	ja CCS_InitConstantConfigStrings_40
	test eax, eax
	jnz CCS_InitConstantConfigStrings_100
CCS_InitConstantConfigStrings_50:
	xor ecx, ecx
	jmp CCS_InitConstantConfigStrings_110
CCS_InitConstantConfigStrings_40:
	shr eax, 0x2
	add eax, 0x1
	mov [esi+0x8], eax
	mov eax, [esi]
	mov edx, eax
	test eax, eax
	jns CCS_InitConstantConfigStrings_120
CCS_InitConstantConfigStrings_70:
	lea edx, [eax+0x1f]
	sar edx, 0x5
	mov ecx, eax
	and ecx, 0x8000001f
	jns CCS_InitConstantConfigStrings_130
CCS_InitConstantConfigStrings_80:
	sub ecx, 0x1
	or ecx, 0xffffffe0
	add ecx, 0x1
	jmp CCS_InitConstantConfigStrings_130
CCS_InitConstantConfigStrings_30:
	mov edi, edx
	mov ebx, tempString
CCS_InitConstantConfigStrings_140:
	movsx eax, al
	mov [esp], eax
	call tolower
	mov [ebx], al
	add ebx, 0x1
	movzx eax, byte [edi+0x1]
	add edi, 0x1
	test al, al
	jnz CCS_InitConstantConfigStrings_140
	jmp CCS_InitConstantConfigStrings_150
CCS_InitConstantConfigStrings_100:
	mov edi, edx
	xor ebx, ebx
	lea ecx, [edx+eax]
CCS_InitConstantConfigStrings_160:
	mov eax, ebx
	shl eax, 0x5
	sub eax, ebx
	movsx edx, byte [edi]
	lea ebx, [edx+eax]
	add edi, 0x1
	cmp ecx, edi
	jnz CCS_InitConstantConfigStrings_160
	mov ecx, ebx
	shr ecx, 1
	mov eax, 0x80000003
	mul ecx
	mov ecx, edx
	shr ecx, 0x1d
	lea edx, [ecx+ecx]
	mov eax, ecx
	shl eax, 0x1f
	sub eax, edx
	mov ecx, ebx
	sub ecx, eax
	jmp CCS_InitConstantConfigStrings_110
CCS_InitConstantConfigStrings_10:
	mov dword [ebp-0x1c], 0x0
	mov eax, [ebp-0x1c]
	mov [constantConfigStringCount], eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;CCS_IsConfigStringIndexConstant(int)
CCS_IsConfigStringIndexConstant:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, eax
	test eax, eax
	js CCS_IsConfigStringIndexConstant_10
	sar edx, 0x5
	mov ecx, eax
	and ecx, 0x8000001f
	js CCS_IsConfigStringIndexConstant_20
CCS_IsConfigStringIndexConstant_30:
	mov eax, 0x1
	shl eax, cl
	and eax, [edx*4+reservedConfigStrings]
	pop ebp
	ret
CCS_IsConfigStringIndexConstant_10:
	lea edx, [eax+0x1f]
	sar edx, 0x5
	mov ecx, eax
	and ecx, 0x8000001f
	jns CCS_IsConfigStringIndexConstant_30
CCS_IsConfigStringIndexConstant_20:
	sub ecx, 0x1
	or ecx, 0xffffffe0
	add ecx, 0x1
	mov eax, 0x1
	shl eax, cl
	and eax, [edx*4+reservedConfigStrings]
	pop ebp
	ret


;CCS_GetConfigStringNumForConstIndex(int)
CCS_GetConfigStringNumForConstIndex:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	shl eax, 0x4
	mov eax, [eax+constantConfigStrings]
	pop ebp
	ret
	nop
