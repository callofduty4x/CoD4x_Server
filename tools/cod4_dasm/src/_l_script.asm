;Imports of l_script:
	extern FreeMemory
	extern vsnprintf
	extern Com_PrintError
	extern memcpy
	extern memset
	extern strncmp
	extern strncpy
	extern Com_PrintWarning
	extern Com_sprintf
	extern FS_FOpenFileRead
	extern GetClearedMemory
	extern strcpy
	extern FS_Read
	extern FS_FCloseFile
	extern Com_Compress
	extern GetMemory

;Exports of l_script:
	global FreeScript
	global EndOfScript
	global NumberValue
	global ScriptError
	global PS_ReadToken
	global PS_ReadNumber
	global PS_ReadString
	global ScriptWarning
	global LoadScriptFile
	global LoadScriptMemory
	global StripDoubleQuotes
	global PS_ReadEscapeCharacter
	global PS_CreatePunctuationTable
	global default_punctuations


SECTION .text


;FreeScript(script_s*)
FreeScript:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x70]
	test eax, eax
	jz FreeScript_10
	mov [esp], eax
	call FreeMemory
FreeScript_10:
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp FreeMemory


;EndOfScript(script_s*)
EndOfScript:
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
NumberValue:
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
	jnz NumberValue_10
	test al, 0x8
	jz NumberValue_20
	movzx edx, byte [ecx]
	test dl, dl
	jz NumberValue_30
	mov eax, [esi]
NumberValue_40:
	lea eax, [eax+eax*4]
	movsx edx, dl
	lea eax, [edx+eax*2-0x30]
	mov [esi], eax
	movzx edx, byte [ecx+0x1]
	add ecx, 0x1
	test dl, dl
	jnz NumberValue_40
NumberValue_30:
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
NumberValue_10:
	movzx eax, byte [ecx]
	test al, al
	jz NumberValue_50
	xor ebx, ebx
	jmp NumberValue_60
NumberValue_90:
	fld tword [edi]
	fmul dword [_float_10_00000000]
	movsx eax, byte [ecx]
	sub eax, 0x30
	push eax
	fiadd dword [esp]
	add esp, 0x4
	fld st0
	fstp tword [edi]
NumberValue_100:
	add ecx, 0x1
	movzx eax, byte [ecx]
	test al, al
	jz NumberValue_70
	fstp st0
NumberValue_60:
	cmp al, 0x2e
	jz NumberValue_80
	test ebx, ebx
	jz NumberValue_90
	xor edx, edx
	push edx
	push ebx
	fild qword [esp]
	add esp, 0x8
	lea eax, [ebx+ebx*4]
	lea ebx, [eax+eax]
NumberValue_170:
	movsx eax, byte [ecx]
	sub eax, 0x30
	push eax
	fidivr dword [esp]
	add esp, 0x4
	fld tword [edi]
	faddp st1, st0
	fld st0
	fstp tword [edi]
	jmp NumberValue_100
NumberValue_20:
	test ah, 0x1
	jz NumberValue_110
	lea ebx, [ecx+0x2]
	cmp byte [ecx+0x2], 0x0
	jz NumberValue_30
	jmp NumberValue_120
NumberValue_140:
	lea eax, [edx-0x41]
	cmp al, 0x5
	ja NumberValue_130
	movsx eax, dl
	lea eax, [ecx+eax-0x37]
	mov [esi], eax
NumberValue_150:
	add ebx, 0x1
	cmp byte [ebx], 0x0
	jz NumberValue_30
NumberValue_120:
	mov ecx, [esi]
	shl ecx, 0x4
	mov [esi], ecx
	movzx edx, byte [ebx]
	lea eax, [edx-0x61]
	cmp al, 0x5
	ja NumberValue_140
	movsx eax, dl
	lea eax, [ecx+eax-0x57]
	mov [esi], eax
	jmp NumberValue_150
NumberValue_50:
	fld tword [edi]
NumberValue_70:
	fnstcw word [ebp-0xe]
	movzx eax, word [ebp-0xe]
	mov ah, 0xc
	mov [ebp-0x10], ax
	fldcw word [ebp-0x10]
	fistp qword [ebp-0x1c]
	fldcw word [ebp-0xe]
	mov eax, [ebp-0x1c]
	mov [esi], eax
NumberValue_160:
	add esp, 0x10
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
NumberValue_80:
	test ebx, ebx
	jnz NumberValue_160
	add ecx, 0x1
	fld dword [_float_10_00000000]
	mov bl, 0x64
	jmp NumberValue_170
NumberValue_110:
	test ah, 0x2
	jz NumberValue_180
	lea eax, [ecx+0x1]
	movzx edx, byte [ecx+0x1]
	test dl, dl
	jz NumberValue_30
	mov ecx, eax
	mov eax, [esi]
NumberValue_190:
	movsx edx, dl
	lea eax, [edx+eax*8-0x30]
	mov [esi], eax
	movzx edx, byte [ecx+0x1]
	add ecx, 0x1
	test dl, dl
	jnz NumberValue_190
	jmp NumberValue_30
NumberValue_130:
	movsx eax, dl
	lea eax, [ecx+eax-0x30]
	mov [esi], eax
	jmp NumberValue_150
NumberValue_180:
	test ah, 0x4
	jz NumberValue_160
	lea eax, [ecx+0x2]
	movzx edx, byte [ecx+0x2]
	test dl, dl
	jz NumberValue_30
	mov ecx, eax
	mov eax, [esi]
NumberValue_200:
	movsx edx, dl
	lea eax, [edx+eax*2-0x30]
	mov [esi], eax
	movzx edx, byte [ecx+0x1]
	add ecx, 0x1
	test dl, dl
	jnz NumberValue_200
	jmp NumberValue_30


;ScriptError(script_s*, char const*, ...)
ScriptError:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x430
	mov esi, [ebp+0x8]
	test byte [esi+0x68], 0x1
	jnz ScriptError_10
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
	call Com_PrintError
ScriptError_10:
	add esp, 0x430
	pop ebx
	pop esi
	pop ebp
	ret


;PS_ReadToken(script_s*, token_s*)
PS_ReadToken:
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
	jz PS_ReadToken_10
	mov dword [ebx+0x64], 0x0
	lea eax, [ebx+0x80]
	mov dword [esp+0x8], 0x440
	mov [esp+0x4], eax
	mov [esp], esi
	call memcpy
	mov eax, 0x1
PS_ReadToken_250:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PS_ReadToken_10:
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
PS_ReadToken_80:
	movzx eax, byte [ecx]
	cmp al, 0x20
	jle PS_ReadToken_20
	cmp al, 0x2f
	jnz PS_ReadToken_30
	lea edx, [ecx+0x1]
	movzx eax, byte [ecx+0x1]
	cmp al, 0x2f
	jz PS_ReadToken_40
	cmp al, 0x2a
	jnz PS_ReadToken_30
	mov [ebx+0x44], edx
	lea edx, [edx+0x1]
PS_ReadToken_70:
	mov ecx, edx
	mov edi, edx
	lea edx, [edx+0x1]
	mov [ebx+0x44], ecx
	movzx eax, byte [edx-0x1]
	test al, al
	jz PS_ReadToken_50
	cmp al, 0xa
	jz PS_ReadToken_60
PS_ReadToken_90:
	cmp byte [edx-0x1], 0x2a
	jnz PS_ReadToken_70
	cmp byte [ecx+0x1], 0x2f
	jnz PS_ReadToken_70
	mov [ebx+0x44], edx
	cmp byte [edi+0x1], 0x0
	jz PS_ReadToken_50
	lea ecx, [edi+0x2]
	mov [ebx+0x44], ecx
	cmp byte [edi+0x2], 0x0
	jnz PS_ReadToken_80
PS_ReadToken_50:
	xor eax, eax
PS_ReadToken_120:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PS_ReadToken_60:
	add dword [ebx+0x5c], 0x1
	jmp PS_ReadToken_90
PS_ReadToken_20:
	test al, al
	jz PS_ReadToken_50
	cmp al, 0xa
	jz PS_ReadToken_100
PS_ReadToken_130:
	add ecx, 0x1
	mov [ebx+0x44], ecx
	jmp PS_ReadToken_80
PS_ReadToken_40:
	mov ecx, edx
	mov [ebx+0x44], edx
PS_ReadToken_110:
	mov edx, ecx
	add ecx, 0x1
	mov [ebx+0x44], ecx
	movzx eax, byte [edx+0x1]
	test al, al
	jz PS_ReadToken_50
	cmp al, 0xa
	jnz PS_ReadToken_110
	add dword [ebx+0x5c], 0x1
	lea ecx, [edx+0x2]
	mov [ebx+0x44], ecx
	cmp byte [edx+0x2], 0x0
	jnz PS_ReadToken_80
	xor eax, eax
	jmp PS_ReadToken_120
PS_ReadToken_100:
	add dword [ebx+0x5c], 0x1
	jmp PS_ReadToken_130
PS_ReadToken_30:
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
	jz PS_ReadToken_140
	cmp dl, 0x27
	jz PS_ReadToken_150
	lea eax, [edx-0x30]
	cmp al, 0x9
	jbe PS_ReadToken_160
	cmp dl, 0x2e
	jz PS_ReadToken_170
PS_ReadToken_240:
	test byte [ebx+0x68], 0x10
	jnz PS_ReadToken_180
	lea eax, [edx-0x61]
	cmp al, 0x19
	ja PS_ReadToken_190
PS_ReadToken_320:
	mov dword [esi+0x400], 0x4
	mov edi, esi
	mov dword [ebp-0x28], 0x0
PS_ReadToken_230:
	mov edx, [ebx+0x44]
	movzx eax, byte [edx]
	mov [edi], al
	add dword [ebp-0x28], 0x1
	lea ecx, [edx+0x1]
	mov [ebx+0x44], ecx
	cmp dword [ebp-0x28], 0x400
	jz PS_ReadToken_200
	movzx edx, byte [edx+0x1]
	lea eax, [edx-0x61]
	cmp al, 0x19
	jbe PS_ReadToken_210
	lea eax, [edx-0x41]
	cmp al, 0x19
	jbe PS_ReadToken_210
	lea eax, [edx-0x30]
	cmp al, 0x9
	jbe PS_ReadToken_210
	cmp dl, 0x5f
	jnz PS_ReadToken_220
PS_ReadToken_210:
	add edi, 0x1
	jmp PS_ReadToken_230
PS_ReadToken_170:
	mov ecx, [ebp-0x2c]
	movzx eax, byte [ecx+0x1]
	sub al, 0x30
	cmp al, 0x9
	ja PS_ReadToken_240
PS_ReadToken_160:
	mov [esp+0x4], esi
	mov [esp], ebx
	call PS_ReadNumber
	test eax, eax
	jz PS_ReadToken_50
PS_ReadToken_310:
	lea eax, [ebx+0x80]
	mov dword [esp+0x8], 0x440
	mov [esp+0x4], esi
	mov [esp], eax
	call memcpy
	mov eax, 0x1
	jmp PS_ReadToken_250
PS_ReadToken_180:
	cmp dl, 0x20
	jle PS_ReadToken_260
	cmp dl, 0x3b
	jz PS_ReadToken_260
	mov ecx, esi
	xor eax, eax
	jmp PS_ReadToken_270
PS_ReadToken_300:
	cmp dl, 0x3b
	jz PS_ReadToken_280
	add ecx, 0x1
	cmp eax, 0x400
	jz PS_ReadToken_290
PS_ReadToken_270:
	mov [ecx], dl
	add eax, 0x1
	add dword [ebp-0x2c], 0x1
	mov edi, [ebp-0x2c]
	mov [ebx+0x44], edi
	movzx edx, byte [edi]
	cmp dl, 0x20
	jg PS_ReadToken_300
PS_ReadToken_280:
	mov byte [esi+eax], 0x0
	jmp PS_ReadToken_310
PS_ReadToken_140:
	mov dword [esp+0x8], 0x22
PS_ReadToken_360:
	mov [esp+0x4], esi
	mov [esp], ebx
	call PS_ReadString
	test eax, eax
	jnz PS_ReadToken_310
	xor eax, eax
	jmp PS_ReadToken_120
PS_ReadToken_200:
	mov dword [esp+0x8], 0x400
	mov dword [esp+0x4], _cstring_name_longer_than
	mov [esp], ebx
	call ScriptError
	xor eax, eax
	jmp PS_ReadToken_250
PS_ReadToken_190:
	lea eax, [edx-0x41]
	cmp al, 0x19
	jbe PS_ReadToken_320
	cmp dl, 0x5f
	jz PS_ReadToken_320
	movsx edx, dl
	mov eax, [ebx+0x70]
	mov edx, [eax+edx*4]
	mov [ebp-0x1c], edx
	test edx, edx
	jz PS_ReadToken_330
	mov edx, [ebx+0x48]
	mov [ebp-0x24], edx
	jmp PS_ReadToken_340
PS_ReadToken_350:
	mov edi, [ebp-0x1c]
	mov edi, [edi+0x8]
	mov [ebp-0x1c], edi
	test edi, edi
	jz PS_ReadToken_330
PS_ReadToken_340:
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
	ja PS_ReadToken_350
	mov [esp+0x8], edi
	mov edx, [ebp-0x20]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x2c]
	mov [esp], ecx
	call strncmp
	test eax, eax
	jnz PS_ReadToken_350
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
	jmp PS_ReadToken_310
PS_ReadToken_260:
	xor eax, eax
	mov byte [esi+eax], 0x0
	jmp PS_ReadToken_310
PS_ReadToken_150:
	mov dword [esp+0x8], 0x27
	jmp PS_ReadToken_360
PS_ReadToken_330:
	mov dword [esp+0x4], _cstring_cant_read_token
	mov [esp], ebx
	call ScriptError
	xor eax, eax
	jmp PS_ReadToken_120
PS_ReadToken_220:
	mov eax, [ebp-0x28]
	mov byte [esi+eax], 0x0
	mov [esi+0x404], eax
	jmp PS_ReadToken_310
PS_ReadToken_290:
	mov dword [esp+0x8], 0x400
	mov dword [esp+0x4], _cstring_primitive_token_
	mov [esp], ebx
	call ScriptError
	xor eax, eax
	jmp PS_ReadToken_250
	nop
	add [eax], al


;PS_ReadNumber(script_s*, token_s*)
PS_ReadNumber:
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
	jz PS_ReadNumber_10
PS_ReadNumber_190:
	xor eax, eax
	cmp bl, 0x30
	setz al
	mov [ebp-0x20], eax
	mov ebx, [ebp+0xc]
	xor esi, esi
	mov dword [ebp-0x1c], 0x0
	jmp PS_ReadNumber_20
PS_ReadNumber_60:
	lea eax, [edx-0x38]
	cmp al, 0x1
	jbe PS_ReadNumber_30
	lea eax, [edx-0x30]
	cmp al, 0x9
	ja PS_ReadNumber_40
PS_ReadNumber_70:
	mov [ebx], dl
	add esi, 0x1
	add ecx, 0x1
	mov [edi+0x44], ecx
	add ebx, 0x1
	cmp esi, 0x3ff
	jz PS_ReadNumber_50
PS_ReadNumber_20:
	movzx edx, byte [ecx]
	cmp dl, 0x2e
	jnz PS_ReadNumber_60
	mov dword [ebp-0x1c], 0x1
	jmp PS_ReadNumber_70
PS_ReadNumber_30:
	mov dword [ebp-0x20], 0x0
	jmp PS_ReadNumber_70
PS_ReadNumber_40:
	mov ebx, [ebp-0x20]
	test ebx, ebx
	jz PS_ReadNumber_80
	mov ecx, [ebp+0xc]
	mov edx, [ecx+0x404]
	or dh, 0x2
	mov [ecx+0x404], edx
PS_ReadNumber_140:
	mov ecx, [ebp-0x1c]
	test ecx, ecx
	jz PS_ReadNumber_90
	or dh, 0x8
	mov ecx, [ebp+0xc]
	mov [ecx+0x404], edx
PS_ReadNumber_90:
	mov ebx, 0x2
PS_ReadNumber_120:
	mov ecx, [edi+0x44]
	movzx eax, byte [ecx]
	cmp al, 0x6c
	jz PS_ReadNumber_100
	cmp al, 0x4c
	jz PS_ReadNumber_100
PS_ReadNumber_150:
	cmp al, 0x75
	jz PS_ReadNumber_110
	cmp al, 0x55
	jz PS_ReadNumber_110
PS_ReadNumber_160:
	sub ebx, 0x1
	jnz PS_ReadNumber_120
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
	call NumberValue
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0x404]
	test ah, 0x8
	jnz PS_ReadNumber_130
	or ah, 0x10
	mov [ecx+0x404], eax
PS_ReadNumber_130:
	mov eax, 0x1
PS_ReadNumber_240:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PS_ReadNumber_80:
	mov eax, [ebp+0xc]
	mov edx, [eax+0x404]
	or edx, 0x8
	mov [eax+0x404], edx
	jmp PS_ReadNumber_140
PS_ReadNumber_100:
	test dh, 0x20
	jnz PS_ReadNumber_150
	add ecx, 0x1
	mov [edi+0x44], ecx
	mov eax, [ebp+0xc]
	mov edx, [eax+0x404]
	or dh, 0x20
	mov [eax+0x404], edx
	jmp PS_ReadNumber_160
PS_ReadNumber_110:
	test dh, 0x48
	jnz PS_ReadNumber_160
	add ecx, 0x1
	mov [edi+0x44], ecx
	mov ecx, [ebp+0xc]
	mov edx, [ecx+0x404]
	or dh, 0x40
	mov [ecx+0x404], edx
	jmp PS_ReadNumber_160
PS_ReadNumber_10:
	lea esi, [ecx+0x1]
	movzx eax, byte [ecx+0x1]
	cmp al, 0x78
	jz PS_ReadNumber_170
	cmp al, 0x58
	jz PS_ReadNumber_170
	cmp al, 0x62
	jz PS_ReadNumber_180
	cmp al, 0x42
	jnz PS_ReadNumber_190
PS_ReadNumber_180:
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
	jbe PS_ReadNumber_200
	mov esi, 0x2
PS_ReadNumber_250:
	mov eax, [ebp+0xc]
	mov edx, [eax+0x404]
	or dh, 0x4
	mov [eax+0x404], edx
	jmp PS_ReadNumber_90
PS_ReadNumber_170:
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
	jmp PS_ReadNumber_210
PS_ReadNumber_230:
	mov edx, [edi+0x44]
	movzx eax, byte [edx]
	mov [ebx+0x2], al
	add esi, 0x1
	lea ecx, [edx+0x1]
	mov [edi+0x44], ecx
	add ebx, 0x1
	cmp esi, 0x400
	jz PS_ReadNumber_220
	movzx edx, byte [edx+0x1]
PS_ReadNumber_210:
	lea eax, [edx-0x30]
	cmp al, 0x9
	jbe PS_ReadNumber_230
	lea eax, [edx-0x61]
	cmp al, 0x5
	jbe PS_ReadNumber_230
	cmp dl, 0x41
	jz PS_ReadNumber_230
	mov eax, [ebp+0xc]
	mov edx, [eax+0x404]
	or dh, 0x1
	mov [eax+0x404], edx
	jmp PS_ReadNumber_90
PS_ReadNumber_50:
	mov dword [esp+0x8], 0x400
	mov dword [esp+0x4], _cstring_number_longer_th
	mov [esp], edi
	call ScriptError
	xor eax, eax
	jmp PS_ReadNumber_240
PS_ReadNumber_200:
	mov eax, [ebp+0xc]
	mov [eax+0x2], cl
	lea eax, [edx+0x3]
	mov [edi+0x44], eax
	mov ecx, [ebp+0xc]
	mov esi, 0x3
PS_ReadNumber_260:
	movzx eax, byte [eax]
	sub al, 0x30
	cmp al, 0x1
	ja PS_ReadNumber_250
	mov edx, [edi+0x44]
	movzx eax, byte [edx]
	mov [ecx+0x3], al
	add esi, 0x1
	lea eax, [edx+0x1]
	mov [edi+0x44], eax
	add ecx, 0x1
	cmp esi, 0x400
	jnz PS_ReadNumber_260
	mov dword [esp+0x8], 0x400
	mov dword [esp+0x4], _cstring_binary_number_lo
	mov [esp], edi
	call ScriptError
	xor eax, eax
	jmp PS_ReadNumber_240
PS_ReadNumber_220:
	mov dword [esp+0x8], 0x400
	mov dword [esp+0x4], _cstring_hexadecimal_numb
	mov [esp], edi
	call ScriptError
	xor eax, eax
	jmp PS_ReadNumber_240
	add [eax], al


;PS_ReadString(script_s*, token_s*, int)
PS_ReadString:
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
PS_ReadString_50:
	mov edx, [edi+0x44]
	movzx ecx, byte [edx]
	cmp cl, 0x5c
	jz PS_ReadString_10
PS_ReadString_60:
	movsx eax, cl
	cmp [ebp+0x10], eax
	jz PS_ReadString_20
	test cl, cl
	jz PS_ReadString_30
	cmp cl, 0xa
	jz PS_ReadString_40
	mov eax, [ebp+0xc]
	mov ebx, [ebp-0x24]
	mov [eax+ebx], cl
	add ebx, 0x1
	mov [ebp-0x24], ebx
PS_ReadString_220:
	add edx, 0x1
	mov [edi+0x44], edx
PS_ReadString_80:
	cmp dword [ebp-0x24], 0x3fd
	jle PS_ReadString_50
	mov dword [esp+0x8], 0x400
	mov dword [esp+0x4], _cstring_string_longer_th
	mov [esp], edi
	call ScriptError
	xor eax, eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PS_ReadString_10:
	test byte [edi+0x68], 0x8
	jnz PS_ReadString_60
	mov ebx, [ebp+0xc]
	add ebx, [ebp-0x24]
	mov [esp+0x4], ebx
	mov [esp], edi
	call PS_ReadEscapeCharacter
	test eax, eax
	jz PS_ReadString_70
	add dword [ebp-0x24], 0x1
	jmp PS_ReadString_80
PS_ReadString_20:
	add edx, 0x1
	mov [ebp-0x1c], edx
	mov [edi+0x44], edx
	test byte [edi+0x68], 0x4
	jnz PS_ReadString_90
	mov ebx, [edi+0x5c]
	mov [ebp-0x20], ebx
	mov esi, ebx
	mov edx, [ebp-0x1c]
PS_ReadString_160:
	movzx eax, byte [edx]
	cmp al, 0x20
	jle PS_ReadString_100
	cmp al, 0x2f
	jnz PS_ReadString_110
	lea ecx, [edx+0x1]
	movzx eax, byte [edx+0x1]
	cmp al, 0x2f
	jz PS_ReadString_120
	cmp al, 0x2a
	jnz PS_ReadString_110
	mov [edi+0x44], ecx
	lea ecx, [ecx+0x1]
PS_ReadString_150:
	mov edx, ecx
	mov ebx, ecx
	lea ecx, [ecx+0x1]
	mov [edi+0x44], edx
	movzx eax, byte [ecx-0x1]
	test al, al
	jz PS_ReadString_130
	cmp al, 0xa
	jz PS_ReadString_140
PS_ReadString_170:
	cmp byte [ecx-0x1], 0x2a
	jnz PS_ReadString_150
	cmp byte [edx+0x1], 0x2f
	jnz PS_ReadString_150
	mov [edi+0x44], ecx
	cmp byte [ebx+0x1], 0x0
	jz PS_ReadString_130
	lea edx, [ebx+0x2]
	mov [edi+0x44], edx
	cmp byte [ebx+0x2], 0x0
	jnz PS_ReadString_160
PS_ReadString_130:
	mov eax, [ebp-0x1c]
	mov [edi+0x44], eax
	mov edx, [ebp-0x20]
	mov [edi+0x5c], edx
PS_ReadString_90:
	movzx ecx, byte [ebp+0x10]
	mov ebx, [ebp+0xc]
	mov eax, [ebp-0x24]
	mov [ebx+eax], cl
	mov eax, [ebp-0x24]
	add eax, 0x1
	mov byte [ebx+eax], 0x0
	mov [ebx+0x404], eax
	mov eax, 0x1
PS_ReadString_210:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PS_ReadString_140:
	add esi, 0x1
	mov [edi+0x5c], esi
	jmp PS_ReadString_170
PS_ReadString_100:
	test al, al
	jz PS_ReadString_130
	cmp al, 0xa
	jz PS_ReadString_180
PS_ReadString_190:
	add edx, 0x1
	mov [edi+0x44], edx
	jmp PS_ReadString_160
PS_ReadString_180:
	add esi, 0x1
	mov [edi+0x5c], esi
	jmp PS_ReadString_190
PS_ReadString_120:
	mov edx, ecx
	mov [edi+0x44], ecx
PS_ReadString_200:
	mov ecx, edx
	add edx, 0x1
	mov [edi+0x44], edx
	movzx eax, byte [ecx+0x1]
	test al, al
	jz PS_ReadString_130
	cmp al, 0xa
	jnz PS_ReadString_200
	add esi, 0x1
	mov [edi+0x5c], esi
	lea edx, [ecx+0x2]
	mov [edi+0x44], edx
	cmp byte [ecx+0x2], 0x0
	jnz PS_ReadString_160
	jmp PS_ReadString_130
PS_ReadString_30:
	mov ebx, [ebp+0xc]
	mov eax, [ebp-0x24]
	mov byte [ebx+eax], 0x0
	mov dword [esp+0x4], _cstring_missing_trailing
	mov [esp], edi
	call ScriptError
	xor eax, eax
	jmp PS_ReadString_210
PS_ReadString_40:
	mov edx, [ebp+0xc]
	mov ecx, [ebp-0x24]
	mov byte [edx+ecx], 0x0
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_newline_inside_s
	mov [esp], edi
	call ScriptError
	xor eax, eax
	jmp PS_ReadString_210
PS_ReadString_110:
	movsx eax, byte [edx]
	cmp [ebp+0x10], eax
	jz PS_ReadString_220
	mov edx, [ebp-0x1c]
	mov [edi+0x44], edx
	mov ecx, [ebp-0x20]
	mov [edi+0x5c], ecx
	jmp PS_ReadString_90
PS_ReadString_70:
	mov byte [ebx], 0x0
	xor eax, eax
	jmp PS_ReadString_210
	nop


;ScriptWarning(script_s*, char const*, ...)
ScriptWarning:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x430
	mov esi, [ebp+0x8]
	test byte [esi+0x68], 0x2
	jnz ScriptWarning_10
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
	call Com_PrintWarning
ScriptWarning_10:
	add esp, 0x430
	pop ebx
	pop esi
	pop ebp
	ret


;LoadScriptFile(char const*)
LoadScriptFile:
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
	call Com_sprintf
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call FS_FOpenFileRead
	mov esi, eax
	mov eax, [ebp-0x1c]
	test eax, eax
	jnz LoadScriptFile_10
	xor ebx, ebx
	mov eax, ebx
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
LoadScriptFile_10:
	lea eax, [esi+0x4d1]
	mov [esp], eax
	call GetClearedMemory
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
	call PS_CreatePunctuationTable
	mov dword [ebx+0x6c], default_punctuations
	mov eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov eax, [ebx+0x40]
	mov [esp], eax
	call FS_Read
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call FS_FCloseFile
	mov eax, [ebx+0x40]
	mov [esp], eax
	call Com_Compress
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
LoadScriptMemory:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0xc]
	lea eax, [esi+0x4d1]
	mov [esp], eax
	call GetClearedMemory
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
	call PS_CreatePunctuationTable
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
StripDoubleQuotes:
	push ebp
	mov ebp, esp
	push edi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	cmp byte [ebx], 0x22
	jz StripDoubleQuotes_10
StripDoubleQuotes_30:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	lea eax, [ecx+ebx-0x1]
	cmp byte [eax-0x1], 0x22
	jnz StripDoubleQuotes_20
	mov byte [eax-0x1], 0x0
StripDoubleQuotes_20:
	add esp, 0x10
	pop ebx
	pop edi
	pop ebp
	ret
StripDoubleQuotes_10:
	lea eax, [ebx+0x1]
	mov [esp+0x4], eax
	mov [esp], ebx
	call strcpy
	jmp StripDoubleQuotes_30


;PS_ReadEscapeCharacter(script_s*, char*)
PS_ReadEscapeCharacter:
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
	ja PS_ReadEscapeCharacter_10
	jmp dword [eax*4+PS_ReadEscapeCharacter_jumptab_0]
PS_ReadEscapeCharacter_10:
	lea eax, [ecx-0x30]
	cmp al, 0x9
	ja PS_ReadEscapeCharacter_20
	mov ecx, edx
	movsx eax, byte [edx]
	lea edx, [eax-0x30]
	cmp edx, 0x9
	ja PS_ReadEscapeCharacter_30
PS_ReadEscapeCharacter_70:
	xor ebx, ebx
PS_ReadEscapeCharacter_40:
	lea eax, [ebx+ebx*4]
	lea ebx, [edx+eax*2]
	add ecx, 0x1
	mov [esi+0x44], ecx
	movsx eax, byte [ecx]
	lea edx, [eax-0x30]
	cmp edx, 0x9
	jbe PS_ReadEscapeCharacter_40
	lea edx, [ecx-0x1]
	mov [esi+0x44], edx
	cmp ebx, 0xff
	jg PS_ReadEscapeCharacter_50
PS_ReadEscapeCharacter_60:
	mov ecx, ebx
PS_ReadEscapeCharacter_120:
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
PS_ReadEscapeCharacter_30:
	xor ebx, ebx
	lea edx, [ecx-0x1]
	mov [esi+0x44], edx
	cmp ebx, 0xff
	jle PS_ReadEscapeCharacter_60
PS_ReadEscapeCharacter_50:
	mov dword [esp+0x4], _cstring_too_large_value_
	mov [esp], esi
	call ScriptWarning
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
PS_ReadEscapeCharacter_20:
	mov dword [esp+0x4], _cstring_unknown_escape_c
	mov [esp], esi
	call ScriptError
	mov edx, [esi+0x44]
	mov ecx, edx
	movsx eax, byte [edx]
	lea edx, [eax-0x30]
	cmp edx, 0x9
	ja PS_ReadEscapeCharacter_30
	jmp PS_ReadEscapeCharacter_70
PS_ReadEscapeCharacter_240:
	lea edx, [ebx+0x2]
	mov [esi+0x44], edx
	xor edi, edi
	mov ebx, edx
	jmp PS_ReadEscapeCharacter_80
PS_ReadEscapeCharacter_100:
	lea edx, [ecx-0x37]
PS_ReadEscapeCharacter_90:
	mov eax, edi
	shl eax, 0x4
	lea edi, [edx+eax]
	lea edx, [ebx+0x1]
	mov [esi+0x44], edx
	mov ebx, edx
PS_ReadEscapeCharacter_80:
	movsx ecx, byte [ebx]
	lea edx, [ecx-0x30]
	cmp edx, 0x9
	jbe PS_ReadEscapeCharacter_90
	lea eax, [ecx-0x41]
	cmp eax, 0x19
	jbe PS_ReadEscapeCharacter_100
	lea eax, [ecx-0x61]
	cmp eax, 0x19
	ja PS_ReadEscapeCharacter_110
	lea edx, [ecx-0x57]
	jmp PS_ReadEscapeCharacter_90
PS_ReadEscapeCharacter_140:
	mov ecx, 0x27
	jmp PS_ReadEscapeCharacter_120
PS_ReadEscapeCharacter_130:
	mov ecx, 0x22
	jmp PS_ReadEscapeCharacter_120
PS_ReadEscapeCharacter_150:
	mov ecx, 0x3f
	jmp PS_ReadEscapeCharacter_120
PS_ReadEscapeCharacter_160:
	mov ecx, 0x5c
	jmp PS_ReadEscapeCharacter_120
PS_ReadEscapeCharacter_170:
	mov ecx, 0x7
	jmp PS_ReadEscapeCharacter_120
PS_ReadEscapeCharacter_180:
	mov ecx, 0x8
	jmp PS_ReadEscapeCharacter_120
PS_ReadEscapeCharacter_190:
	mov ecx, 0xc
	jmp PS_ReadEscapeCharacter_120
PS_ReadEscapeCharacter_200:
	mov ecx, 0xa
	jmp PS_ReadEscapeCharacter_120
PS_ReadEscapeCharacter_210:
	mov ecx, 0xd
	jmp PS_ReadEscapeCharacter_120
PS_ReadEscapeCharacter_220:
	mov ecx, 0x9
	jmp PS_ReadEscapeCharacter_120
PS_ReadEscapeCharacter_230:
	mov ecx, 0xb
	jmp PS_ReadEscapeCharacter_120
PS_ReadEscapeCharacter_110:
	lea edx, [ebx-0x1]
	mov [esi+0x44], edx
	cmp edi, 0xff
	jg PS_ReadEscapeCharacter_50
	mov ecx, edi
	jmp PS_ReadEscapeCharacter_120
	nop
	add [eax], al
	
	
PS_ReadEscapeCharacter_jumptab_0:
	dd PS_ReadEscapeCharacter_130
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_140
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_150
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_160
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_170
	dd PS_ReadEscapeCharacter_180
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_190
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_200
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_210
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_220
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_230
	dd PS_ReadEscapeCharacter_10
	dd PS_ReadEscapeCharacter_240


;PS_CreatePunctuationTable(script_s*, punctuation_s*)
PS_CreatePunctuationTable:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov eax, [ebp+0x8]
	mov edx, [eax+0x70]
	test edx, edx
	jz PS_CreatePunctuationTable_10
	mov ecx, eax
PS_CreatePunctuationTable_120:
	mov eax, [ecx+0x70]
	mov dword [esp+0x8], 0x400
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	mov ebx, [ebp+0xc]
	mov esi, [ebx]
	test esi, esi
	jz PS_CreatePunctuationTable_20
	add ebx, 0xc
	mov [ebp-0x20], ebx
	mov [ebp-0x1c], ebx
PS_CreatePunctuationTable_80:
	movsx edx, byte [esi]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x70]
	mov edx, [eax+edx*4]
	test edx, edx
	jz PS_CreatePunctuationTable_30
	cld
	mov ecx, 0xffffffff
	mov edi, esi
	xor eax, eax
	repne scasb
	mov ebx, ecx
	not ebx
	sub ebx, 0x1
	xor esi, esi
	jmp PS_CreatePunctuationTable_40
PS_CreatePunctuationTable_60:
	mov esi, edx
	mov edx, eax
PS_CreatePunctuationTable_40:
	mov edi, [edx]
	mov ecx, 0xffffffff
	xor eax, eax
	repne scasb
	not ecx
	sub ecx, 0x1
	cmp ecx, ebx
	jb PS_CreatePunctuationTable_50
	mov eax, [edx+0x8]
	test eax, eax
	jnz PS_CreatePunctuationTable_60
	mov eax, edx
	mov ebx, [ebp+0xc]
	mov dword [ebx+0x8], 0x0
	test eax, eax
	jz PS_CreatePunctuationTable_70
PS_CreatePunctuationTable_90:
	mov edx, [ebp+0xc]
	mov [eax+0x8], edx
PS_CreatePunctuationTable_100:
	mov ebx, [ebp-0x20]
	mov [ebp+0xc], ebx
	mov eax, [ebp-0x1c]
	mov esi, [eax]
	add dword [ebp-0x20], 0xc
	add eax, 0xc
	mov [ebp-0x1c], eax
	test esi, esi
	jnz PS_CreatePunctuationTable_80
PS_CreatePunctuationTable_20:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PS_CreatePunctuationTable_30:
	xor eax, eax
	mov ebx, [ebp+0xc]
	mov dword [ebx+0x8], 0x0
	test eax, eax
	jnz PS_CreatePunctuationTable_90
PS_CreatePunctuationTable_70:
	mov ebx, [ebp+0xc]
	mov eax, [ebx]
	movsx edx, byte [eax]
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x70]
	mov [eax+edx*4], ebx
	jmp PS_CreatePunctuationTable_100
PS_CreatePunctuationTable_50:
	mov ecx, [ebp+0xc]
	mov [ecx+0x8], edx
	test esi, esi
	jz PS_CreatePunctuationTable_110
	mov ecx, [ebp+0xc]
	mov [esi+0x8], ecx
	jmp PS_CreatePunctuationTable_100
PS_CreatePunctuationTable_110:
	mov eax, [ecx]
	movsx edx, byte [eax]
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x70]
	mov [eax+edx*4], ecx
	jmp PS_CreatePunctuationTable_100
PS_CreatePunctuationTable_10:
	mov dword [esp], 0x400
	call GetMemory
	mov edx, [ebp+0x8]
	mov [edx+0x70], eax
	mov ecx, [ebp+0x8]
	jmp PS_CreatePunctuationTable_120


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

