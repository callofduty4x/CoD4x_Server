;Imports of l_script:
	extern _Z10FreeMemoryPv
	extern vsnprintf
	extern _Z14Com_PrintErroriPKcz
	extern memcpy
	extern memset
	extern strncmp
	extern strncpy
	extern _Z16Com_PrintWarningiPKcz
	extern _Z11Com_sprintfPciPKcz
	extern _Z16FS_FOpenFileReadPKcPi
	extern _Z16GetClearedMemorym
	extern strcpy
	extern _Z7FS_ReadPvii
	extern _Z13FS_FCloseFilei
	extern _Z12Com_CompressPc
	extern _Z9GetMemorym

;Exports of l_script:
	global _Z10FreeScriptP8script_s
	global _Z11EndOfScriptP8script_s
	global _Z11NumberValuePciPmPe
	global _Z11ScriptErrorP8script_sPKcz
	global _Z12PS_ReadTokenP8script_sP7token_s
	global _Z13PS_ReadNumberP8script_sP7token_s
	global _Z13PS_ReadStringP8script_sP7token_si
	global _Z13ScriptWarningP8script_sPKcz
	global _Z14LoadScriptFilePKc
	global _Z16LoadScriptMemoryPKciS0_
	global _Z17StripDoubleQuotesPc
	global _Z22PS_ReadEscapeCharacterP8script_sPc
	global _Z25PS_CreatePunctuationTableP8script_sP13punctuation_s
	global default_punctuations


SECTION .text


;FreeScript(script_s*)
_Z10FreeScriptP8script_s:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x70]
	test eax, eax
	jz _Z10FreeScriptP8script_s_10
	mov [esp], eax
	call _Z10FreeMemoryPv
_Z10FreeScriptP8script_s_10:
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z10FreeMemoryPv


;EndOfScript(script_s*)
_Z11EndOfScriptP8script_s:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov eax, [edx+0x44]
	cmp eax, [edx+0x48]
	setae al
	movzx eax, al
	pop ebp
	ret
	add [eax], al


;NumberValue(char*, int, unsigned long*, long double*)
_Z11NumberValuePciPmPe:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x10
	mov ecx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov esi, [ebp+0x10]
	mov edi, [ebp+0x14]
	mov dword [esi], 0x0
	mov dword [edi], 0x0
	mov dword [edi+0x4], 0x0
	mov dword [edi+0x8], 0x0
	test ah, 0x8
	jnz _Z11NumberValuePciPmPe_10
	test al, 0x8
	jz _Z11NumberValuePciPmPe_20
	movzx edx, byte [ecx]
	test dl, dl
	jz _Z11NumberValuePciPmPe_30
	mov eax, [esi]
_Z11NumberValuePciPmPe_40:
	lea eax, [eax+eax*4]
	movsx edx, dl
	lea eax, [edx+eax*2-0x30]
	mov [esi], eax
	movzx edx, byte [ecx+0x1]
	add ecx, 0x1
	test dl, dl
	jnz _Z11NumberValuePciPmPe_40
_Z11NumberValuePciPmPe_30:
	mov eax, [esi]
	xor edx, edx
	push edx
	push eax
	fild qword [esp]
	add esp, 0x8
	fstp tword [edi]
	add esp, 0x10
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11NumberValuePciPmPe_10:
	movzx eax, byte [ecx]
	test al, al
	jz _Z11NumberValuePciPmPe_50
	xor ebx, ebx
	jmp _Z11NumberValuePciPmPe_60
_Z11NumberValuePciPmPe_90:
	fld tword [edi]
	fmul dword [_float_10_00000000]
	movsx eax, byte [ecx]
	sub eax, 0x30
	push eax
	fiadd dword [esp]
	add esp, 0x4
	fld st0
	fstp tword [edi]
_Z11NumberValuePciPmPe_100:
	add ecx, 0x1
	movzx eax, byte [ecx]
	test al, al
	jz _Z11NumberValuePciPmPe_70
	fstp st0
_Z11NumberValuePciPmPe_60:
	cmp al, 0x2e
	jz _Z11NumberValuePciPmPe_80
	test ebx, ebx
	jz _Z11NumberValuePciPmPe_90
	xor edx, edx
	push edx
	push ebx
	fild qword [esp]
	add esp, 0x8
	lea eax, [ebx+ebx*4]
	lea ebx, [eax+eax]
_Z11NumberValuePciPmPe_170:
	movsx eax, byte [ecx]
	sub eax, 0x30
	push eax
	fidivr dword [esp]
	add esp, 0x4
	fld tword [edi]
	faddp st1, st0
	fld st0
	fstp tword [edi]
	jmp _Z11NumberValuePciPmPe_100
_Z11NumberValuePciPmPe_20:
	test ah, 0x1
	jz _Z11NumberValuePciPmPe_110
	lea ebx, [ecx+0x2]
	cmp byte [ecx+0x2], 0x0
	jz _Z11NumberValuePciPmPe_30
	jmp _Z11NumberValuePciPmPe_120
_Z11NumberValuePciPmPe_140:
	lea eax, [edx-0x41]
	cmp al, 0x5
	ja _Z11NumberValuePciPmPe_130
	movsx eax, dl
	lea eax, [ecx+eax-0x37]
	mov [esi], eax
_Z11NumberValuePciPmPe_150:
	add ebx, 0x1
	cmp byte [ebx], 0x0
	jz _Z11NumberValuePciPmPe_30
_Z11NumberValuePciPmPe_120:
	mov ecx, [esi]
	shl ecx, 0x4
	mov [esi], ecx
	movzx edx, byte [ebx]
	lea eax, [edx-0x61]
	cmp al, 0x5
	ja _Z11NumberValuePciPmPe_140
	movsx eax, dl
	lea eax, [ecx+eax-0x57]
	mov [esi], eax
	jmp _Z11NumberValuePciPmPe_150
_Z11NumberValuePciPmPe_50:
	fld tword [edi]
_Z11NumberValuePciPmPe_70:
	fnstcw word [ebp-0xe]
	movzx eax, word [ebp-0xe]
	mov ah, 0xc
	mov [ebp-0x10], ax
	fldcw word [ebp-0x10]
	fistp qword [ebp-0x1c]
	fldcw word [ebp-0xe]
	mov eax, [ebp-0x1c]
	mov [esi], eax
_Z11NumberValuePciPmPe_160:
	add esp, 0x10
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11NumberValuePciPmPe_80:
	test ebx, ebx
	jnz _Z11NumberValuePciPmPe_160
	add ecx, 0x1
	fld dword [_float_10_00000000]
	mov bl, 0x64
	jmp _Z11NumberValuePciPmPe_170
_Z11NumberValuePciPmPe_110:
	test ah, 0x2
	jz _Z11NumberValuePciPmPe_180
	lea eax, [ecx+0x1]
	movzx edx, byte [ecx+0x1]
	test dl, dl
	jz _Z11NumberValuePciPmPe_30
	mov ecx, eax
	mov eax, [esi]
_Z11NumberValuePciPmPe_190:
	movsx edx, dl
	lea eax, [edx+eax*8-0x30]
	mov [esi], eax
	movzx edx, byte [ecx+0x1]
	add ecx, 0x1
	test dl, dl
	jnz _Z11NumberValuePciPmPe_190
	jmp _Z11NumberValuePciPmPe_30
_Z11NumberValuePciPmPe_130:
	movsx eax, dl
	lea eax, [ecx+eax-0x30]
	mov [esi], eax
	jmp _Z11NumberValuePciPmPe_150
_Z11NumberValuePciPmPe_180:
	test ah, 0x4
	jz _Z11NumberValuePciPmPe_160
	lea eax, [ecx+0x2]
	movzx edx, byte [ecx+0x2]
	test dl, dl
	jz _Z11NumberValuePciPmPe_30
	mov ecx, eax
	mov eax, [esi]
_Z11NumberValuePciPmPe_200:
	movsx edx, dl
	lea eax, [edx+eax*2-0x30]
	mov [esi], eax
	movzx edx, byte [ecx+0x1]
	add ecx, 0x1
	test dl, dl
	jnz _Z11NumberValuePciPmPe_200
	jmp _Z11NumberValuePciPmPe_30


;ScriptError(script_s*, char const*, ...)
_Z11ScriptErrorP8script_sPKcz:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x430
	mov esi, [ebp+0x8]
	test byte [esi+0x68], 0x1
	jnz _Z11ScriptErrorP8script_sPKcz_10
	lea eax, [ebp+0x10]
	mov [ebp-0xc], eax
	mov [esp+0xc], eax
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x400
	lea ebx, [ebp-0x40c]
	mov [esp], ebx
	call vsnprintf
	mov [esp+0x10], ebx
	mov eax, [esi+0x5c]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_error_file_s_lin
	mov dword [esp], 0x17
	call _Z14Com_PrintErroriPKcz
_Z11ScriptErrorP8script_sPKcz_10:
	add esp, 0x430
	pop ebx
	pop esi
	pop ebp
	ret


;PS_ReadToken(script_s*, token_s*)
_Z12PS_ReadTokenP8script_sP7token_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov eax, [ebx+0x64]
	test eax, eax
	jz _Z12PS_ReadTokenP8script_sP7token_s_10
	mov dword [ebx+0x64], 0x0
	lea eax, [ebx+0x80]
	mov dword [esp+0x8], 0x440
	mov [esp+0x4], eax
	mov [esp], esi
	call memcpy
	mov eax, 0x1
_Z12PS_ReadTokenP8script_sP7token_s_250:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12PS_ReadTokenP8script_sP7token_s_10:
	mov eax, [ebx+0x44]
	mov [ebx+0x4c], eax
	mov eax, [ebx+0x5c]
	mov [ebx+0x60], eax
	mov dword [esp+0x8], 0x440
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call memset
	mov eax, [ebx+0x44]
	mov [ebx+0x50], eax
	mov [esi+0x420], eax
	mov ecx, [ebx+0x44]
_Z12PS_ReadTokenP8script_sP7token_s_80:
	movzx eax, byte [ecx]
	cmp al, 0x20
	jle _Z12PS_ReadTokenP8script_sP7token_s_20
	cmp al, 0x2f
	jnz _Z12PS_ReadTokenP8script_sP7token_s_30
	lea edx, [ecx+0x1]
	movzx eax, byte [ecx+0x1]
	cmp al, 0x2f
	jz _Z12PS_ReadTokenP8script_sP7token_s_40
	cmp al, 0x2a
	jnz _Z12PS_ReadTokenP8script_sP7token_s_30
	mov [ebx+0x44], edx
	lea edx, [edx+0x1]
_Z12PS_ReadTokenP8script_sP7token_s_70:
	mov ecx, edx
	mov edi, edx
	lea edx, [edx+0x1]
	mov [ebx+0x44], ecx
	movzx eax, byte [edx-0x1]
	test al, al
	jz _Z12PS_ReadTokenP8script_sP7token_s_50
	cmp al, 0xa
	jz _Z12PS_ReadTokenP8script_sP7token_s_60
_Z12PS_ReadTokenP8script_sP7token_s_90:
	cmp byte [edx-0x1], 0x2a
	jnz _Z12PS_ReadTokenP8script_sP7token_s_70
	cmp byte [ecx+0x1], 0x2f
	jnz _Z12PS_ReadTokenP8script_sP7token_s_70
	mov [ebx+0x44], edx
	cmp byte [edi+0x1], 0x0
	jz _Z12PS_ReadTokenP8script_sP7token_s_50
	lea ecx, [edi+0x2]
	mov [ebx+0x44], ecx
	cmp byte [edi+0x2], 0x0
	jnz _Z12PS_ReadTokenP8script_sP7token_s_80
_Z12PS_ReadTokenP8script_sP7token_s_50:
	xor eax, eax
_Z12PS_ReadTokenP8script_sP7token_s_120:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12PS_ReadTokenP8script_sP7token_s_60:
	add dword [ebx+0x5c], 0x1
	jmp _Z12PS_ReadTokenP8script_sP7token_s_90
_Z12PS_ReadTokenP8script_sP7token_s_20:
	test al, al
	jz _Z12PS_ReadTokenP8script_sP7token_s_50
	cmp al, 0xa
	jz _Z12PS_ReadTokenP8script_sP7token_s_100
_Z12PS_ReadTokenP8script_sP7token_s_130:
	add ecx, 0x1
	mov [ebx+0x44], ecx
	jmp _Z12PS_ReadTokenP8script_sP7token_s_80
_Z12PS_ReadTokenP8script_sP7token_s_40:
	mov ecx, edx
	mov [ebx+0x44], edx
_Z12PS_ReadTokenP8script_sP7token_s_110:
	mov edx, ecx
	add ecx, 0x1
	mov [ebx+0x44], ecx
	movzx eax, byte [edx+0x1]
	test al, al
	jz _Z12PS_ReadTokenP8script_sP7token_s_50
	cmp al, 0xa
	jnz _Z12PS_ReadTokenP8script_sP7token_s_110
	add dword [ebx+0x5c], 0x1
	lea ecx, [edx+0x2]
	mov [ebx+0x44], ecx
	cmp byte [edx+0x2], 0x0
	jnz _Z12PS_ReadTokenP8script_sP7token_s_80
	xor eax, eax
	jmp _Z12PS_ReadTokenP8script_sP7token_s_120
_Z12PS_ReadTokenP8script_sP7token_s_100:
	add dword [ebx+0x5c], 0x1
	jmp _Z12PS_ReadTokenP8script_sP7token_s_130
_Z12PS_ReadTokenP8script_sP7token_s_30:
	mov [ebx+0x54], ecx
	mov [esi+0x424], ecx
	mov eax, [ebx+0x5c]
	mov [esi+0x428], eax
	mov eax, [ebx+0x5c]
	sub eax, [ebx+0x60]
	mov [esi+0x42c], eax
	mov eax, [ebx+0x44]
	mov [ebp-0x2c], eax
	movzx edx, byte [eax]
	cmp dl, 0x22
	jz _Z12PS_ReadTokenP8script_sP7token_s_140
	cmp dl, 0x27
	jz _Z12PS_ReadTokenP8script_sP7token_s_150
	lea eax, [edx-0x30]
	cmp al, 0x9
	jbe _Z12PS_ReadTokenP8script_sP7token_s_160
	cmp dl, 0x2e
	jz _Z12PS_ReadTokenP8script_sP7token_s_170
_Z12PS_ReadTokenP8script_sP7token_s_240:
	test byte [ebx+0x68], 0x10
	jnz _Z12PS_ReadTokenP8script_sP7token_s_180
	lea eax, [edx-0x61]
	cmp al, 0x19
	ja _Z12PS_ReadTokenP8script_sP7token_s_190
_Z12PS_ReadTokenP8script_sP7token_s_320:
	mov dword [esi+0x400], 0x4
	mov edi, esi
	mov dword [ebp-0x28], 0x0
_Z12PS_ReadTokenP8script_sP7token_s_230:
	mov edx, [ebx+0x44]
	movzx eax, byte [edx]
	mov [edi], al
	add dword [ebp-0x28], 0x1
	lea ecx, [edx+0x1]
	mov [ebx+0x44], ecx
	cmp dword [ebp-0x28], 0x400
	jz _Z12PS_ReadTokenP8script_sP7token_s_200
	movzx edx, byte [edx+0x1]
	lea eax, [edx-0x61]
	cmp al, 0x19
	jbe _Z12PS_ReadTokenP8script_sP7token_s_210
	lea eax, [edx-0x41]
	cmp al, 0x19
	jbe _Z12PS_ReadTokenP8script_sP7token_s_210
	lea eax, [edx-0x30]
	cmp al, 0x9
	jbe _Z12PS_ReadTokenP8script_sP7token_s_210
	cmp dl, 0x5f
	jnz _Z12PS_ReadTokenP8script_sP7token_s_220
_Z12PS_ReadTokenP8script_sP7token_s_210:
	add edi, 0x1
	jmp _Z12PS_ReadTokenP8script_sP7token_s_230
_Z12PS_ReadTokenP8script_sP7token_s_170:
	mov ecx, [ebp-0x2c]
	movzx eax, byte [ecx+0x1]
	sub al, 0x30
	cmp al, 0x9
	ja _Z12PS_ReadTokenP8script_sP7token_s_240
_Z12PS_ReadTokenP8script_sP7token_s_160:
	mov [esp+0x4], esi
	mov [esp], ebx
	call _Z13PS_ReadNumberP8script_sP7token_s
	test eax, eax
	jz _Z12PS_ReadTokenP8script_sP7token_s_50
_Z12PS_ReadTokenP8script_sP7token_s_310:
	lea eax, [ebx+0x80]
	mov dword [esp+0x8], 0x440
	mov [esp+0x4], esi
	mov [esp], eax
	call memcpy
	mov eax, 0x1
	jmp _Z12PS_ReadTokenP8script_sP7token_s_250
_Z12PS_ReadTokenP8script_sP7token_s_180:
	cmp dl, 0x20
	jle _Z12PS_ReadTokenP8script_sP7token_s_260
	cmp dl, 0x3b
	jz _Z12PS_ReadTokenP8script_sP7token_s_260
	mov ecx, esi
	xor eax, eax
	jmp _Z12PS_ReadTokenP8script_sP7token_s_270
_Z12PS_ReadTokenP8script_sP7token_s_300:
	cmp dl, 0x3b
	jz _Z12PS_ReadTokenP8script_sP7token_s_280
	add ecx, 0x1
	cmp eax, 0x400
	jz _Z12PS_ReadTokenP8script_sP7token_s_290
_Z12PS_ReadTokenP8script_sP7token_s_270:
	mov [ecx], dl
	add eax, 0x1
	add dword [ebp-0x2c], 0x1
	mov edi, [ebp-0x2c]
	mov [ebx+0x44], edi
	movzx edx, byte [edi]
	cmp dl, 0x20
	jg _Z12PS_ReadTokenP8script_sP7token_s_300
_Z12PS_ReadTokenP8script_sP7token_s_280:
	mov byte [esi+eax], 0x0
	jmp _Z12PS_ReadTokenP8script_sP7token_s_310
_Z12PS_ReadTokenP8script_sP7token_s_140:
	mov dword [esp+0x8], 0x22
_Z12PS_ReadTokenP8script_sP7token_s_360:
	mov [esp+0x4], esi
	mov [esp], ebx
	call _Z13PS_ReadStringP8script_sP7token_si
	test eax, eax
	jnz _Z12PS_ReadTokenP8script_sP7token_s_310
	xor eax, eax
	jmp _Z12PS_ReadTokenP8script_sP7token_s_120
_Z12PS_ReadTokenP8script_sP7token_s_200:
	mov dword [esp+0x8], 0x400
	mov dword [esp+0x4], _cstring_name_longer_than
	mov [esp], ebx
	call _Z11ScriptErrorP8script_sPKcz
	xor eax, eax
	jmp _Z12PS_ReadTokenP8script_sP7token_s_250
_Z12PS_ReadTokenP8script_sP7token_s_190:
	lea eax, [edx-0x41]
	cmp al, 0x19
	jbe _Z12PS_ReadTokenP8script_sP7token_s_320
	cmp dl, 0x5f
	jz _Z12PS_ReadTokenP8script_sP7token_s_320
	movsx edx, dl
	mov eax, [ebx+0x70]
	mov edx, [eax+edx*4]
	mov [ebp-0x1c], edx
	test edx, edx
	jz _Z12PS_ReadTokenP8script_sP7token_s_330
	mov edx, [ebx+0x48]
	mov [ebp-0x24], edx
	jmp _Z12PS_ReadTokenP8script_sP7token_s_340
_Z12PS_ReadTokenP8script_sP7token_s_350:
	mov edi, [ebp-0x1c]
	mov edi, [edi+0x8]
	mov [ebp-0x1c], edi
	test edi, edi
	jz _Z12PS_ReadTokenP8script_sP7token_s_330
_Z12PS_ReadTokenP8script_sP7token_s_340:
	mov ecx, [ebp-0x1c]
	mov ecx, [ecx]
	mov [ebp-0x20], ecx
	cld
	mov ecx, 0xffffffff
	mov edi, [ebp-0x20]
	xor eax, eax
	repne scasb
	not ecx
	lea edi, [ecx-0x1]
	mov eax, [ebp-0x2c]
	add eax, edi
	cmp eax, [ebp-0x24]
	ja _Z12PS_ReadTokenP8script_sP7token_s_350
	mov [esp+0x8], edi
	mov edx, [ebp-0x20]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x2c]
	mov [esp], ecx
	call strncmp
	test eax, eax
	jnz _Z12PS_ReadTokenP8script_sP7token_s_350
	mov dword [esp+0x8], 0x400
	mov eax, [ebp-0x20]
	mov [esp+0x4], eax
	mov [esp], esi
	call strncpy
	add [ebx+0x44], edi
	mov dword [esi+0x400], 0x5
	mov edx, [ebp-0x1c]
	mov eax, [edx+0x4]
	mov [esi+0x404], eax
	jmp _Z12PS_ReadTokenP8script_sP7token_s_310
_Z12PS_ReadTokenP8script_sP7token_s_260:
	xor eax, eax
	mov byte [esi+eax], 0x0
	jmp _Z12PS_ReadTokenP8script_sP7token_s_310
_Z12PS_ReadTokenP8script_sP7token_s_150:
	mov dword [esp+0x8], 0x27
	jmp _Z12PS_ReadTokenP8script_sP7token_s_360
_Z12PS_ReadTokenP8script_sP7token_s_330:
	mov dword [esp+0x4], _cstring_cant_read_token
	mov [esp], ebx
	call _Z11ScriptErrorP8script_sPKcz
	xor eax, eax
	jmp _Z12PS_ReadTokenP8script_sP7token_s_120
_Z12PS_ReadTokenP8script_sP7token_s_220:
	mov eax, [ebp-0x28]
	mov byte [esi+eax], 0x0
	mov [esi+0x404], eax
	jmp _Z12PS_ReadTokenP8script_sP7token_s_310
_Z12PS_ReadTokenP8script_sP7token_s_290:
	mov dword [esp+0x8], 0x400
	mov dword [esp+0x4], _cstring_primitive_token_
	mov [esp], ebx
	call _Z11ScriptErrorP8script_sPKcz
	xor eax, eax
	jmp _Z12PS_ReadTokenP8script_sP7token_s_250
	nop
	add [eax], al


;PS_ReadNumber(script_s*, token_s*)
_Z13PS_ReadNumberP8script_sP7token_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov dword [eax+0x400], 0x3
	mov ecx, [edi+0x44]
	mov edx, ecx
	movzx ebx, byte [ecx]
	cmp bl, 0x30
	jz _Z13PS_ReadNumberP8script_sP7token_s_10
_Z13PS_ReadNumberP8script_sP7token_s_190:
	xor eax, eax
	cmp bl, 0x30
	setz al
	mov [ebp-0x20], eax
	mov ebx, [ebp+0xc]
	xor esi, esi
	mov dword [ebp-0x1c], 0x0
	jmp _Z13PS_ReadNumberP8script_sP7token_s_20
_Z13PS_ReadNumberP8script_sP7token_s_60:
	lea eax, [edx-0x38]
	cmp al, 0x1
	jbe _Z13PS_ReadNumberP8script_sP7token_s_30
	lea eax, [edx-0x30]
	cmp al, 0x9
	ja _Z13PS_ReadNumberP8script_sP7token_s_40
_Z13PS_ReadNumberP8script_sP7token_s_70:
	mov [ebx], dl
	add esi, 0x1
	add ecx, 0x1
	mov [edi+0x44], ecx
	add ebx, 0x1
	cmp esi, 0x3ff
	jz _Z13PS_ReadNumberP8script_sP7token_s_50
_Z13PS_ReadNumberP8script_sP7token_s_20:
	movzx edx, byte [ecx]
	cmp dl, 0x2e
	jnz _Z13PS_ReadNumberP8script_sP7token_s_60
	mov dword [ebp-0x1c], 0x1
	jmp _Z13PS_ReadNumberP8script_sP7token_s_70
_Z13PS_ReadNumberP8script_sP7token_s_30:
	mov dword [ebp-0x20], 0x0
	jmp _Z13PS_ReadNumberP8script_sP7token_s_70
_Z13PS_ReadNumberP8script_sP7token_s_40:
	mov ebx, [ebp-0x20]
	test ebx, ebx
	jz _Z13PS_ReadNumberP8script_sP7token_s_80
	mov ecx, [ebp+0xc]
	mov edx, [ecx+0x404]
	or dh, 0x2
	mov [ecx+0x404], edx
_Z13PS_ReadNumberP8script_sP7token_s_140:
	mov ecx, [ebp-0x1c]
	test ecx, ecx
	jz _Z13PS_ReadNumberP8script_sP7token_s_90
	or dh, 0x8
	mov ecx, [ebp+0xc]
	mov [ecx+0x404], edx
_Z13PS_ReadNumberP8script_sP7token_s_90:
	mov ebx, 0x2
_Z13PS_ReadNumberP8script_sP7token_s_120:
	mov ecx, [edi+0x44]
	movzx eax, byte [ecx]
	cmp al, 0x6c
	jz _Z13PS_ReadNumberP8script_sP7token_s_100
	cmp al, 0x4c
	jz _Z13PS_ReadNumberP8script_sP7token_s_100
_Z13PS_ReadNumberP8script_sP7token_s_150:
	cmp al, 0x75
	jz _Z13PS_ReadNumberP8script_sP7token_s_110
	cmp al, 0x55
	jz _Z13PS_ReadNumberP8script_sP7token_s_110
_Z13PS_ReadNumberP8script_sP7token_s_160:
	sub ebx, 0x1
	jnz _Z13PS_ReadNumberP8script_sP7token_s_120
	mov eax, [ebp+0xc]
	mov byte [eax+esi], 0x0
	mov eax, [ebp+0xc]
	add eax, 0x410
	mov [esp+0xc], eax
	mov eax, [ebp+0xc]
	add eax, 0x408
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov edx, [ebp+0xc]
	mov [esp], edx
	call _Z11NumberValuePciPmPe
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0x404]
	test ah, 0x8
	jnz _Z13PS_ReadNumberP8script_sP7token_s_130
	or ah, 0x10
	mov [ecx+0x404], eax
_Z13PS_ReadNumberP8script_sP7token_s_130:
	mov eax, 0x1
_Z13PS_ReadNumberP8script_sP7token_s_240:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13PS_ReadNumberP8script_sP7token_s_80:
	mov eax, [ebp+0xc]
	mov edx, [eax+0x404]
	or edx, 0x8
	mov [eax+0x404], edx
	jmp _Z13PS_ReadNumberP8script_sP7token_s_140
_Z13PS_ReadNumberP8script_sP7token_s_100:
	test dh, 0x20
	jnz _Z13PS_ReadNumberP8script_sP7token_s_150
	add ecx, 0x1
	mov [edi+0x44], ecx
	mov eax, [ebp+0xc]
	mov edx, [eax+0x404]
	or dh, 0x20
	mov [eax+0x404], edx
	jmp _Z13PS_ReadNumberP8script_sP7token_s_160
_Z13PS_ReadNumberP8script_sP7token_s_110:
	test dh, 0x48
	jnz _Z13PS_ReadNumberP8script_sP7token_s_160
	add ecx, 0x1
	mov [edi+0x44], ecx
	mov ecx, [ebp+0xc]
	mov edx, [ecx+0x404]
	or dh, 0x40
	mov [ecx+0x404], edx
	jmp _Z13PS_ReadNumberP8script_sP7token_s_160
_Z13PS_ReadNumberP8script_sP7token_s_10:
	lea esi, [ecx+0x1]
	movzx eax, byte [ecx+0x1]
	cmp al, 0x78
	jz _Z13PS_ReadNumberP8script_sP7token_s_170
	cmp al, 0x58
	jz _Z13PS_ReadNumberP8script_sP7token_s_170
	cmp al, 0x62
	jz _Z13PS_ReadNumberP8script_sP7token_s_180
	cmp al, 0x42
	jnz _Z13PS_ReadNumberP8script_sP7token_s_190
_Z13PS_ReadNumberP8script_sP7token_s_180:
	mov ecx, [ebp+0xc]
	mov byte [ecx], 0x30
	mov [edi+0x44], esi
	movzx eax, byte [edx+0x1]
	mov [ecx+0x1], al
	lea ecx, [edx+0x2]
	mov [edi+0x44], ecx
	movzx ecx, byte [edx+0x2]
	lea eax, [ecx-0x30]
	cmp al, 0x1
	jbe _Z13PS_ReadNumberP8script_sP7token_s_200
	mov esi, 0x2
_Z13PS_ReadNumberP8script_sP7token_s_250:
	mov eax, [ebp+0xc]
	mov edx, [eax+0x404]
	or dh, 0x4
	mov [eax+0x404], edx
	jmp _Z13PS_ReadNumberP8script_sP7token_s_90
_Z13PS_ReadNumberP8script_sP7token_s_170:
	mov ecx, [ebp+0xc]
	mov byte [ecx], 0x30
	mov [edi+0x44], esi
	movzx eax, byte [edx+0x1]
	mov [ecx+0x1], al
	lea ecx, [edx+0x2]
	mov [edi+0x44], ecx
	movzx edx, byte [edx+0x2]
	mov ebx, [ebp+0xc]
	mov esi, 0x2
	jmp _Z13PS_ReadNumberP8script_sP7token_s_210
_Z13PS_ReadNumberP8script_sP7token_s_230:
	mov edx, [edi+0x44]
	movzx eax, byte [edx]
	mov [ebx+0x2], al
	add esi, 0x1
	lea ecx, [edx+0x1]
	mov [edi+0x44], ecx
	add ebx, 0x1
	cmp esi, 0x400
	jz _Z13PS_ReadNumberP8script_sP7token_s_220
	movzx edx, byte [edx+0x1]
_Z13PS_ReadNumberP8script_sP7token_s_210:
	lea eax, [edx-0x30]
	cmp al, 0x9
	jbe _Z13PS_ReadNumberP8script_sP7token_s_230
	lea eax, [edx-0x61]
	cmp al, 0x5
	jbe _Z13PS_ReadNumberP8script_sP7token_s_230
	cmp dl, 0x41
	jz _Z13PS_ReadNumberP8script_sP7token_s_230
	mov eax, [ebp+0xc]
	mov edx, [eax+0x404]
	or dh, 0x1
	mov [eax+0x404], edx
	jmp _Z13PS_ReadNumberP8script_sP7token_s_90
_Z13PS_ReadNumberP8script_sP7token_s_50:
	mov dword [esp+0x8], 0x400
	mov dword [esp+0x4], _cstring_number_longer_th
	mov [esp], edi
	call _Z11ScriptErrorP8script_sPKcz
	xor eax, eax
	jmp _Z13PS_ReadNumberP8script_sP7token_s_240
_Z13PS_ReadNumberP8script_sP7token_s_200:
	mov eax, [ebp+0xc]
	mov [eax+0x2], cl
	lea eax, [edx+0x3]
	mov [edi+0x44], eax
	mov ecx, [ebp+0xc]
	mov esi, 0x3
_Z13PS_ReadNumberP8script_sP7token_s_260:
	movzx eax, byte [eax]
	sub al, 0x30
	cmp al, 0x1
	ja _Z13PS_ReadNumberP8script_sP7token_s_250
	mov edx, [edi+0x44]
	movzx eax, byte [edx]
	mov [ecx+0x3], al
	add esi, 0x1
	lea eax, [edx+0x1]
	mov [edi+0x44], eax
	add ecx, 0x1
	cmp esi, 0x400
	jnz _Z13PS_ReadNumberP8script_sP7token_s_260
	mov dword [esp+0x8], 0x400
	mov dword [esp+0x4], _cstring_binary_number_lo
	mov [esp], edi
	call _Z11ScriptErrorP8script_sPKcz
	xor eax, eax
	jmp _Z13PS_ReadNumberP8script_sP7token_s_240
_Z13PS_ReadNumberP8script_sP7token_s_220:
	mov dword [esp+0x8], 0x400
	mov dword [esp+0x4], _cstring_hexadecimal_numb
	mov [esp], edi
	call _Z11ScriptErrorP8script_sPKcz
	xor eax, eax
	jmp _Z13PS_ReadNumberP8script_sP7token_s_240
	add [eax], al


;PS_ReadString(script_s*, token_s*, int)
_Z13PS_ReadStringP8script_sP7token_si:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	xor eax, eax
	cmp dword [ebp+0x10], 0x22
	setnz al
	add eax, 0x1
	mov edx, [ebp+0xc]
	mov [edx+0x400], eax
	mov edx, [edi+0x44]
	movzx eax, byte [edx]
	mov ecx, [ebp+0xc]
	mov [ecx], al
	add edx, 0x1
	mov [edi+0x44], edx
	mov dword [ebp-0x24], 0x1
_Z13PS_ReadStringP8script_sP7token_si_50:
	mov edx, [edi+0x44]
	movzx ecx, byte [edx]
	cmp cl, 0x5c
	jz _Z13PS_ReadStringP8script_sP7token_si_10
_Z13PS_ReadStringP8script_sP7token_si_60:
	movsx eax, cl
	cmp [ebp+0x10], eax
	jz _Z13PS_ReadStringP8script_sP7token_si_20
	test cl, cl
	jz _Z13PS_ReadStringP8script_sP7token_si_30
	cmp cl, 0xa
	jz _Z13PS_ReadStringP8script_sP7token_si_40
	mov eax, [ebp+0xc]
	mov ebx, [ebp-0x24]
	mov [eax+ebx], cl
	add ebx, 0x1
	mov [ebp-0x24], ebx
_Z13PS_ReadStringP8script_sP7token_si_220:
	add edx, 0x1
	mov [edi+0x44], edx
_Z13PS_ReadStringP8script_sP7token_si_80:
	cmp dword [ebp-0x24], 0x3fd
	jle _Z13PS_ReadStringP8script_sP7token_si_50
	mov dword [esp+0x8], 0x400
	mov dword [esp+0x4], _cstring_string_longer_th
	mov [esp], edi
	call _Z11ScriptErrorP8script_sPKcz
	xor eax, eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13PS_ReadStringP8script_sP7token_si_10:
	test byte [edi+0x68], 0x8
	jnz _Z13PS_ReadStringP8script_sP7token_si_60
	mov ebx, [ebp+0xc]
	add ebx, [ebp-0x24]
	mov [esp+0x4], ebx
	mov [esp], edi
	call _Z22PS_ReadEscapeCharacterP8script_sPc
	test eax, eax
	jz _Z13PS_ReadStringP8script_sP7token_si_70
	add dword [ebp-0x24], 0x1
	jmp _Z13PS_ReadStringP8script_sP7token_si_80
_Z13PS_ReadStringP8script_sP7token_si_20:
	add edx, 0x1
	mov [ebp-0x1c], edx
	mov [edi+0x44], edx
	test byte [edi+0x68], 0x4
	jnz _Z13PS_ReadStringP8script_sP7token_si_90
	mov ebx, [edi+0x5c]
	mov [ebp-0x20], ebx
	mov esi, ebx
	mov edx, [ebp-0x1c]
_Z13PS_ReadStringP8script_sP7token_si_160:
	movzx eax, byte [edx]
	cmp al, 0x20
	jle _Z13PS_ReadStringP8script_sP7token_si_100
	cmp al, 0x2f
	jnz _Z13PS_ReadStringP8script_sP7token_si_110
	lea ecx, [edx+0x1]
	movzx eax, byte [edx+0x1]
	cmp al, 0x2f
	jz _Z13PS_ReadStringP8script_sP7token_si_120
	cmp al, 0x2a
	jnz _Z13PS_ReadStringP8script_sP7token_si_110
	mov [edi+0x44], ecx
	lea ecx, [ecx+0x1]
_Z13PS_ReadStringP8script_sP7token_si_150:
	mov edx, ecx
	mov ebx, ecx
	lea ecx, [ecx+0x1]
	mov [edi+0x44], edx
	movzx eax, byte [ecx-0x1]
	test al, al
	jz _Z13PS_ReadStringP8script_sP7token_si_130
	cmp al, 0xa
	jz _Z13PS_ReadStringP8script_sP7token_si_140
_Z13PS_ReadStringP8script_sP7token_si_170:
	cmp byte [ecx-0x1], 0x2a
	jnz _Z13PS_ReadStringP8script_sP7token_si_150
	cmp byte [edx+0x1], 0x2f
	jnz _Z13PS_ReadStringP8script_sP7token_si_150
	mov [edi+0x44], ecx
	cmp byte [ebx+0x1], 0x0
	jz _Z13PS_ReadStringP8script_sP7token_si_130
	lea edx, [ebx+0x2]
	mov [edi+0x44], edx
	cmp byte [ebx+0x2], 0x0
	jnz _Z13PS_ReadStringP8script_sP7token_si_160
_Z13PS_ReadStringP8script_sP7token_si_130:
	mov eax, [ebp-0x1c]
	mov [edi+0x44], eax
	mov edx, [ebp-0x20]
	mov [edi+0x5c], edx
_Z13PS_ReadStringP8script_sP7token_si_90:
	movzx ecx, byte [ebp+0x10]
	mov ebx, [ebp+0xc]
	mov eax, [ebp-0x24]
	mov [ebx+eax], cl
	mov eax, [ebp-0x24]
	add eax, 0x1
	mov byte [ebx+eax], 0x0
	mov [ebx+0x404], eax
	mov eax, 0x1
_Z13PS_ReadStringP8script_sP7token_si_210:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13PS_ReadStringP8script_sP7token_si_140:
	add esi, 0x1
	mov [edi+0x5c], esi
	jmp _Z13PS_ReadStringP8script_sP7token_si_170
_Z13PS_ReadStringP8script_sP7token_si_100:
	test al, al
	jz _Z13PS_ReadStringP8script_sP7token_si_130
	cmp al, 0xa
	jz _Z13PS_ReadStringP8script_sP7token_si_180
_Z13PS_ReadStringP8script_sP7token_si_190:
	add edx, 0x1
	mov [edi+0x44], edx
	jmp _Z13PS_ReadStringP8script_sP7token_si_160
_Z13PS_ReadStringP8script_sP7token_si_180:
	add esi, 0x1
	mov [edi+0x5c], esi
	jmp _Z13PS_ReadStringP8script_sP7token_si_190
_Z13PS_ReadStringP8script_sP7token_si_120:
	mov edx, ecx
	mov [edi+0x44], ecx
_Z13PS_ReadStringP8script_sP7token_si_200:
	mov ecx, edx
	add edx, 0x1
	mov [edi+0x44], edx
	movzx eax, byte [ecx+0x1]
	test al, al
	jz _Z13PS_ReadStringP8script_sP7token_si_130
	cmp al, 0xa
	jnz _Z13PS_ReadStringP8script_sP7token_si_200
	add esi, 0x1
	mov [edi+0x5c], esi
	lea edx, [ecx+0x2]
	mov [edi+0x44], edx
	cmp byte [ecx+0x2], 0x0
	jnz _Z13PS_ReadStringP8script_sP7token_si_160
	jmp _Z13PS_ReadStringP8script_sP7token_si_130
_Z13PS_ReadStringP8script_sP7token_si_30:
	mov ebx, [ebp+0xc]
	mov eax, [ebp-0x24]
	mov byte [ebx+eax], 0x0
	mov dword [esp+0x4], _cstring_missing_trailing
	mov [esp], edi
	call _Z11ScriptErrorP8script_sPKcz
	xor eax, eax
	jmp _Z13PS_ReadStringP8script_sP7token_si_210
_Z13PS_ReadStringP8script_sP7token_si_40:
	mov edx, [ebp+0xc]
	mov ecx, [ebp-0x24]
	mov byte [edx+ecx], 0x0
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_newline_inside_s
	mov [esp], edi
	call _Z11ScriptErrorP8script_sPKcz
	xor eax, eax
	jmp _Z13PS_ReadStringP8script_sP7token_si_210
_Z13PS_ReadStringP8script_sP7token_si_110:
	movsx eax, byte [edx]
	cmp [ebp+0x10], eax
	jz _Z13PS_ReadStringP8script_sP7token_si_220
	mov edx, [ebp-0x1c]
	mov [edi+0x44], edx
	mov ecx, [ebp-0x20]
	mov [edi+0x5c], ecx
	jmp _Z13PS_ReadStringP8script_sP7token_si_90
_Z13PS_ReadStringP8script_sP7token_si_70:
	mov byte [ebx], 0x0
	xor eax, eax
	jmp _Z13PS_ReadStringP8script_sP7token_si_210
	nop


;ScriptWarning(script_s*, char const*, ...)
_Z13ScriptWarningP8script_sPKcz:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x430
	mov esi, [ebp+0x8]
	test byte [esi+0x68], 0x2
	jnz _Z13ScriptWarningP8script_sPKcz_10
	lea eax, [ebp+0x10]
	mov [ebp-0xc], eax
	mov [esp+0xc], eax
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x400
	lea ebx, [ebp-0x40c]
	mov [esp], ebx
	call vsnprintf
	mov [esp+0x10], ebx
	mov eax, [esi+0x5c]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_warning_file_s_l
	mov dword [esp], 0x17
	call _Z16Com_PrintWarningiPKcz
_Z13ScriptWarningP8script_sPKcz_10:
	add esp, 0x430
	pop ebx
	pop esi
	pop ebp
	ret


;LoadScriptFile(char const*)
_Z14LoadScriptFilePKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov edi, [ebp+0x8]
	mov [esp+0xc], edi
	mov dword [esp+0x8], _cstring_s
	mov dword [esp+0x4], 0x40
	lea ebx, [ebp-0x5c]
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z16FS_FOpenFileReadPKcPi
	mov esi, eax
	mov eax, [ebp-0x1c]
	test eax, eax
	jnz _Z14LoadScriptFilePKc_10
	xor ebx, ebx
	mov eax, ebx
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14LoadScriptFilePKc_10:
	lea eax, [esi+0x4d1]
	mov [esp], eax
	call _Z16GetClearedMemorym
	mov ebx, eax
	mov [esp+0x4], edi
	mov [esp], eax
	call strcpy
	lea eax, [ebx+0x4d0]
	mov [ebx+0x40], eax
	mov byte [ebx+esi+0x4d0], 0x0
	mov [ebx+0x58], esi
	mov eax, [ebx+0x40]
	mov [ebx+0x44], eax
	mov [ebx+0x4c], eax
	lea eax, [esi+eax]
	mov [ebx+0x48], eax
	mov dword [ebx+0x64], 0x0
	mov dword [ebx+0x5c], 0x1
	mov dword [ebx+0x60], 0x1
	mov dword [esp+0x4], default_punctuations
	mov [esp], ebx
	call _Z25PS_CreatePunctuationTableP8script_sP13punctuation_s
	mov dword [ebx+0x6c], default_punctuations
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov eax, [ebx+0x40]
	mov [esp], eax
	call _Z7FS_ReadPvii
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call _Z13FS_FCloseFilei
	mov eax, [ebx+0x40]
	mov [esp], eax
	call _Z12Com_CompressPc
	mov [ebx+0x58], eax
	mov eax, ebx
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;LoadScriptMemory(char const*, int, char const*)
_Z16LoadScriptMemoryPKciS0_:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0xc]
	lea eax, [esi+0x4d1]
	mov [esp], eax
	call _Z16GetClearedMemorym
	mov ebx, eax
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov [esp], ebx
	call strcpy
	lea eax, [ebx+0x4d0]
	mov [ebx+0x40], eax
	mov byte [ebx+esi+0x4d0], 0x0
	mov [ebx+0x58], esi
	mov eax, [ebx+0x40]
	mov [ebx+0x44], eax
	mov [ebx+0x4c], eax
	lea eax, [esi+eax]
	mov [ebx+0x48], eax
	mov dword [ebx+0x64], 0x0
	mov dword [ebx+0x5c], 0x1
	mov dword [ebx+0x60], 0x1
	mov dword [esp+0x4], default_punctuations
	mov [esp], ebx
	call _Z25PS_CreatePunctuationTableP8script_sP13punctuation_s
	mov dword [ebx+0x6c], default_punctuations
	mov edx, [ebx+0x40]
	mov [esp+0x8], esi
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov [esp], edx
	call memcpy
	mov eax, ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;StripDoubleQuotes(char*)
_Z17StripDoubleQuotesPc:
	push ebp
	mov ebp, esp
	push edi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	cmp byte [ebx], 0x22
	jz _Z17StripDoubleQuotesPc_10
_Z17StripDoubleQuotesPc_30:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	lea eax, [ecx+ebx-0x1]
	cmp byte [eax-0x1], 0x22
	jnz _Z17StripDoubleQuotesPc_20
	mov byte [eax-0x1], 0x0
_Z17StripDoubleQuotesPc_20:
	add esp, 0x10
	pop ebx
	pop edi
	pop ebp
	ret
_Z17StripDoubleQuotesPc_10:
	lea eax, [ebx+0x1]
	mov [esp+0x4], eax
	mov [esp], ebx
	call strcpy
	jmp _Z17StripDoubleQuotesPc_30


;PS_ReadEscapeCharacter(script_s*, char*)
_Z22PS_ReadEscapeCharacterP8script_sPc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov edx, [esi+0x44]
	mov ebx, edx
	add edx, 0x1
	mov [esi+0x44], edx
	movzx ecx, byte [ebx+0x1]
	movsx eax, cl
	sub eax, 0x22
	cmp eax, 0x56
	ja _Z22PS_ReadEscapeCharacterP8script_sPc_10
	jmp dword [eax*4+_Z22PS_ReadEscapeCharacterP8script_sPc_jumptab_0]
_Z22PS_ReadEscapeCharacterP8script_sPc_10:
	lea eax, [ecx-0x30]
	cmp al, 0x9
	ja _Z22PS_ReadEscapeCharacterP8script_sPc_20
	mov ecx, edx
	movsx eax, byte [edx]
	lea edx, [eax-0x30]
	cmp edx, 0x9
	ja _Z22PS_ReadEscapeCharacterP8script_sPc_30
_Z22PS_ReadEscapeCharacterP8script_sPc_70:
	xor ebx, ebx
_Z22PS_ReadEscapeCharacterP8script_sPc_40:
	lea eax, [ebx+ebx*4]
	lea ebx, [edx+eax*2]
	add ecx, 0x1
	mov [esi+0x44], ecx
	movsx eax, byte [ecx]
	lea edx, [eax-0x30]
	cmp edx, 0x9
	jbe _Z22PS_ReadEscapeCharacterP8script_sPc_40
	lea edx, [ecx-0x1]
	mov [esi+0x44], edx
	cmp ebx, 0xff
	jg _Z22PS_ReadEscapeCharacterP8script_sPc_50
_Z22PS_ReadEscapeCharacterP8script_sPc_60:
	mov ecx, ebx
_Z22PS_ReadEscapeCharacterP8script_sPc_120:
	lea eax, [edx+0x1]
	mov [esi+0x44], eax
	mov eax, [ebp+0xc]
	mov [eax], cl
	mov eax, 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22PS_ReadEscapeCharacterP8script_sPc_30:
	xor ebx, ebx
	lea edx, [ecx-0x1]
	mov [esi+0x44], edx
	cmp ebx, 0xff
	jle _Z22PS_ReadEscapeCharacterP8script_sPc_60
_Z22PS_ReadEscapeCharacterP8script_sPc_50:
	mov dword [esp+0x4], _cstring_too_large_value_
	mov [esp], esi
	call _Z13ScriptWarningP8script_sPKcz
	mov ecx, 0xffffffff
	mov edx, [esi+0x44]
	lea eax, [edx+0x1]
	mov [esi+0x44], eax
	mov eax, [ebp+0xc]
	mov [eax], cl
	mov eax, 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22PS_ReadEscapeCharacterP8script_sPc_20:
	mov dword [esp+0x4], _cstring_unknown_escape_c
	mov [esp], esi
	call _Z11ScriptErrorP8script_sPKcz
	mov edx, [esi+0x44]
	mov ecx, edx
	movsx eax, byte [edx]
	lea edx, [eax-0x30]
	cmp edx, 0x9
	ja _Z22PS_ReadEscapeCharacterP8script_sPc_30
	jmp _Z22PS_ReadEscapeCharacterP8script_sPc_70
_Z22PS_ReadEscapeCharacterP8script_sPc_240:
	lea edx, [ebx+0x2]
	mov [esi+0x44], edx
	xor edi, edi
	mov ebx, edx
	jmp _Z22PS_ReadEscapeCharacterP8script_sPc_80
_Z22PS_ReadEscapeCharacterP8script_sPc_100:
	lea edx, [ecx-0x37]
_Z22PS_ReadEscapeCharacterP8script_sPc_90:
	mov eax, edi
	shl eax, 0x4
	lea edi, [edx+eax]
	lea edx, [ebx+0x1]
	mov [esi+0x44], edx
	mov ebx, edx
_Z22PS_ReadEscapeCharacterP8script_sPc_80:
	movsx ecx, byte [ebx]
	lea edx, [ecx-0x30]
	cmp edx, 0x9
	jbe _Z22PS_ReadEscapeCharacterP8script_sPc_90
	lea eax, [ecx-0x41]
	cmp eax, 0x19
	jbe _Z22PS_ReadEscapeCharacterP8script_sPc_100
	lea eax, [ecx-0x61]
	cmp eax, 0x19
	ja _Z22PS_ReadEscapeCharacterP8script_sPc_110
	lea edx, [ecx-0x57]
	jmp _Z22PS_ReadEscapeCharacterP8script_sPc_90
_Z22PS_ReadEscapeCharacterP8script_sPc_140:
	mov ecx, 0x27
	jmp _Z22PS_ReadEscapeCharacterP8script_sPc_120
_Z22PS_ReadEscapeCharacterP8script_sPc_130:
	mov ecx, 0x22
	jmp _Z22PS_ReadEscapeCharacterP8script_sPc_120
_Z22PS_ReadEscapeCharacterP8script_sPc_150:
	mov ecx, 0x3f
	jmp _Z22PS_ReadEscapeCharacterP8script_sPc_120
_Z22PS_ReadEscapeCharacterP8script_sPc_160:
	mov ecx, 0x5c
	jmp _Z22PS_ReadEscapeCharacterP8script_sPc_120
_Z22PS_ReadEscapeCharacterP8script_sPc_170:
	mov ecx, 0x7
	jmp _Z22PS_ReadEscapeCharacterP8script_sPc_120
_Z22PS_ReadEscapeCharacterP8script_sPc_180:
	mov ecx, 0x8
	jmp _Z22PS_ReadEscapeCharacterP8script_sPc_120
_Z22PS_ReadEscapeCharacterP8script_sPc_190:
	mov ecx, 0xc
	jmp _Z22PS_ReadEscapeCharacterP8script_sPc_120
_Z22PS_ReadEscapeCharacterP8script_sPc_200:
	mov ecx, 0xa
	jmp _Z22PS_ReadEscapeCharacterP8script_sPc_120
_Z22PS_ReadEscapeCharacterP8script_sPc_210:
	mov ecx, 0xd
	jmp _Z22PS_ReadEscapeCharacterP8script_sPc_120
_Z22PS_ReadEscapeCharacterP8script_sPc_220:
	mov ecx, 0x9
	jmp _Z22PS_ReadEscapeCharacterP8script_sPc_120
_Z22PS_ReadEscapeCharacterP8script_sPc_230:
	mov ecx, 0xb
	jmp _Z22PS_ReadEscapeCharacterP8script_sPc_120
_Z22PS_ReadEscapeCharacterP8script_sPc_110:
	lea edx, [ebx-0x1]
	mov [esi+0x44], edx
	cmp edi, 0xff
	jg _Z22PS_ReadEscapeCharacterP8script_sPc_50
	mov ecx, edi
	jmp _Z22PS_ReadEscapeCharacterP8script_sPc_120
	nop
	add [eax], al
	
	
_Z22PS_ReadEscapeCharacterP8script_sPc_jumptab_0:
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_130
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_140
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_150
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_160
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_170
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_180
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_190
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_200
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_210
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_220
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_230
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_10
	dd _Z22PS_ReadEscapeCharacterP8script_sPc_240


;PS_CreatePunctuationTable(script_s*, punctuation_s*)
_Z25PS_CreatePunctuationTableP8script_sP13punctuation_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov eax, [ebp+0x8]
	mov edx, [eax+0x70]
	test edx, edx
	jz _Z25PS_CreatePunctuationTableP8script_sP13punctuation_s_10
	mov ecx, eax
_Z25PS_CreatePunctuationTableP8script_sP13punctuation_s_120:
	mov eax, [ecx+0x70]
	mov dword [esp+0x8], 0x400
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	mov ebx, [ebp+0xc]
	mov esi, [ebx]
	test esi, esi
	jz _Z25PS_CreatePunctuationTableP8script_sP13punctuation_s_20
	add ebx, 0xc
	mov [ebp-0x20], ebx
	mov [ebp-0x1c], ebx
_Z25PS_CreatePunctuationTableP8script_sP13punctuation_s_80:
	movsx edx, byte [esi]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x70]
	mov edx, [eax+edx*4]
	test edx, edx
	jz _Z25PS_CreatePunctuationTableP8script_sP13punctuation_s_30
	cld
	mov ecx, 0xffffffff
	mov edi, esi
	xor eax, eax
	repne scasb
	mov ebx, ecx
	not ebx
	sub ebx, 0x1
	xor esi, esi
	jmp _Z25PS_CreatePunctuationTableP8script_sP13punctuation_s_40
_Z25PS_CreatePunctuationTableP8script_sP13punctuation_s_60:
	mov esi, edx
	mov edx, eax
_Z25PS_CreatePunctuationTableP8script_sP13punctuation_s_40:
	mov edi, [edx]
	mov ecx, 0xffffffff
	xor eax, eax
	repne scasb
	not ecx
	sub ecx, 0x1
	cmp ecx, ebx
	jb _Z25PS_CreatePunctuationTableP8script_sP13punctuation_s_50
	mov eax, [edx+0x8]
	test eax, eax
	jnz _Z25PS_CreatePunctuationTableP8script_sP13punctuation_s_60
	mov eax, edx
	mov ebx, [ebp+0xc]
	mov dword [ebx+0x8], 0x0
	test eax, eax
	jz _Z25PS_CreatePunctuationTableP8script_sP13punctuation_s_70
_Z25PS_CreatePunctuationTableP8script_sP13punctuation_s_90:
	mov edx, [ebp+0xc]
	mov [eax+0x8], edx
_Z25PS_CreatePunctuationTableP8script_sP13punctuation_s_100:
	mov ebx, [ebp-0x20]
	mov [ebp+0xc], ebx
	mov eax, [ebp-0x1c]
	mov esi, [eax]
	add dword [ebp-0x20], 0xc
	add eax, 0xc
	mov [ebp-0x1c], eax
	test esi, esi
	jnz _Z25PS_CreatePunctuationTableP8script_sP13punctuation_s_80
_Z25PS_CreatePunctuationTableP8script_sP13punctuation_s_20:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z25PS_CreatePunctuationTableP8script_sP13punctuation_s_30:
	xor eax, eax
	mov ebx, [ebp+0xc]
	mov dword [ebx+0x8], 0x0
	test eax, eax
	jnz _Z25PS_CreatePunctuationTableP8script_sP13punctuation_s_90
_Z25PS_CreatePunctuationTableP8script_sP13punctuation_s_70:
	mov ebx, [ebp+0xc]
	mov eax, [ebx]
	movsx edx, byte [eax]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x70]
	mov [eax+edx*4], ebx
	jmp _Z25PS_CreatePunctuationTableP8script_sP13punctuation_s_100
_Z25PS_CreatePunctuationTableP8script_sP13punctuation_s_50:
	mov ecx, [ebp+0xc]
	mov [ecx+0x8], edx
	test esi, esi
	jz _Z25PS_CreatePunctuationTableP8script_sP13punctuation_s_110
	mov ecx, [ebp+0xc]
	mov [esi+0x8], ecx
	jmp _Z25PS_CreatePunctuationTableP8script_sP13punctuation_s_100
_Z25PS_CreatePunctuationTableP8script_sP13punctuation_s_110:
	mov eax, [ecx]
	movsx edx, byte [eax]
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x70]
	mov [eax+edx*4], ecx
	jmp _Z25PS_CreatePunctuationTableP8script_sP13punctuation_s_100
_Z25PS_CreatePunctuationTableP8script_sP13punctuation_s_10:
	mov dword [esp], 0x400
	call _Z9GetMemorym
	mov edx, [ebp+0x8]
	mov [edx+0x70], eax
	mov ecx, [ebp+0x8]
	jmp _Z25PS_CreatePunctuationTableP8script_sP13punctuation_s_120


;Initialized global or static variables of l_script:
SECTION .data
default_punctuations: dd _cstring_, 0x1, 0x0, _cstring_1, 0x2, 0x0, _cstring_2, 0x3, 0x0, _cstring_3, 0x4, 0x0, _cstring_4, 0x5, 0x0, _cstring_5, 0x6, 0x0, _cstring_6, 0x7, 0x0, _cstring_7, 0x8, 0x0, _cstring_8, 0x9, 0x0, _cstring_9, 0xa, 0x0, _cstring_10, 0xb, 0x0, _cstring_11, 0xc, 0x0, _cstring_12, 0xd, 0x0, _cstring_13, 0xe, 0x0, _cstring_14, 0xf, 0x0, _cstring_15, 0x10, 0x0, _cstring_16, 0x11, 0x0, _cstring_17, 0x12, 0x0, _cstring_18, 0x13, 0x0, _cstring_19, 0x14, 0x0, _cstring_20, 0x15, 0x0, _cstring_21, 0x16, 0x0, _cstring_22, 0x17, 0x0, _cstring_23, 0x18, 0x0, _cstring_24, 0x19, 0x0, _cstring_25, 0x1a, 0x0, _cstring_26, 0x1b, 0x0, _cstring_27, 0x1c, 0x0, _cstring_28, 0x1d, 0x0, _cstring_29, 0x1e, 0x0, _cstring_30, 0x1f, 0x0, _cstring_31, 0x20, 0x0, _cstring_32, 0x21, 0x0, _cstring_33, 0x22, 0x0, _cstring_34, 0x23, 0x0, _cstring_35, 0x24, 0x0, _cstring_36, 0x25, 0x0, _cstring_37, 0x26, 0x0, _cstring_38, 0x27, 0x0, _cstring_39, 0x28, 0x0, _cstring_40, 0x29, 0x0, _cstring_41, 0x2a, 0x0, _cstring_42, 0x2b, 0x0, _cstring_43, 0x2c, 0x0, _cstring_44, 0x2d, 0x0, _cstring_45, 0x2e, 0x0, _cstring_46, 0x2f, 0x0, _cstring_47, 0x30, 0x0, _cstring_48, 0x31, 0x0, _cstring_49, 0x32, 0x0, _cstring_50, 0x33, 0x0, _cstring_51, 0x34, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of l_script:
SECTION .rdata


;Zero initialized global or static variables of l_script:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_error_file_s_lin:		db "Error: file %s, line %d: %s",0ah,0
_cstring_name_longer_than:		db "name longer than MAX_TOKEN = %d",0
_cstring_cant_read_token:		db "can",27h,"t read token",0
_cstring_primitive_token_:		db "primitive token longer than MAX_TOKEN = %d",0
_cstring_number_longer_th:		db "number longer than MAX_TOKEN = %d",0
_cstring_binary_number_lo:		db "binary number longer than MAX_TOKEN = %d",0
_cstring_hexadecimal_numb:		db "hexadecimal number longer than MAX_TOKEN = %d",0
_cstring_string_longer_th:		db "string longer than MAX_TOKEN = %d",0
_cstring_missing_trailing:		db "missing trailing quote",0
_cstring_newline_inside_s:		db "newline inside string %s",0
_cstring_warning_file_s_l:		db "Warning: file %s, line %d: %s",0ah,0
_cstring_s:		db "%s",0
_cstring_too_large_value_:		db "too large value in escape character",0
_cstring_unknown_escape_c:		db "unknown escape char",0
_cstring_:		db ">>=",0
_cstring_1:		db "<<=",0
_cstring_2:		db "...",0
_cstring_3:		db "##",0
_cstring_4:		db "&&",0
_cstring_5:		db "||",0
_cstring_6:		db ">=",0
_cstring_7:		db "<=",0
_cstring_8:		db "==",0
_cstring_9:		db "!=",0
_cstring_10:		db "*=",0
_cstring_11:		db "/=",0
_cstring_12:		db "%=",0
_cstring_13:		db "+=",0
_cstring_14:		db "-=",0
_cstring_15:		db "++",0
_cstring_16:		db "--",0
_cstring_17:		db "&=",0
_cstring_18:		db "|=",0
_cstring_19:		db "^=",0
_cstring_20:		db ">>",0
_cstring_21:		db "<<",0
_cstring_22:		db "->",0
_cstring_23:		db "::",0
_cstring_24:		db ".*",0
_cstring_25:		db "*",0
_cstring_26:		db "/",0
_cstring_27:		db "%",0
_cstring_28:		db "+",0
_cstring_29:		db "-",0
_cstring_30:		db "=",0
_cstring_31:		db "&",0
_cstring_32:		db "|",0
_cstring_33:		db "^",0
_cstring_34:		db "~",0
_cstring_35:		db "!",0
_cstring_36:		db ">",0
_cstring_37:		db "<",0
_cstring_38:		db ".",0
_cstring_39:		db ",",0
_cstring_40:		db ";",0
_cstring_41:		db ":",0
_cstring_42:		db 3fh,0
_cstring_43:		db "(",0
_cstring_44:		db ")",0
_cstring_45:		db "{",0
_cstring_46:		db "}",0
_cstring_47:		db "[",0
_cstring_48:		db "]",0
_cstring_49:		db 5ch,0
_cstring_50:		db "#",0
_cstring_51:		db "$",0



;All constant floats and doubles:
SECTION .rdata
_float_10_00000000:		dd 0x41200000	; 10

