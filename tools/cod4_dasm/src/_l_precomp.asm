;Imports of l_precomp:
	extern sprintf
	extern GetMemory
	extern memcpy
	extern Com_Error
	extern strcmp
	extern FreeMemory
	extern FreeScript
	extern vsnprintf
	extern Com_PrintError
	extern Com_PrintWarning
	extern strcat
	extern strcpy
	extern LoadScriptFile
	extern memset
	extern strncpy
	extern GetClearedMemory
	extern StripDoubleQuotes
	extern PS_ReadToken
	extern EndOfScript
	extern strncat
	extern LoadScriptMemory
	extern g_fileBuf
	extern Q_stricmp
	extern time
	extern ctime
	extern free

;Exports of l_precomp:
	global directives
	global PC_Directive_eval
	global PC_ReadLine
	global PC_Evaluate
	global FreeSource
	global SourceError
	global PC_ReadToken
	global PC_CopyDefine
	global SourceWarning
	global LoadSourceFile
	global PC_Directive_if
	global PC_ExpandDefine
	global PC_ReadDirective
	global PC_Directive_elif
	global PC_Directive_else
	global PC_Directive_line
	global PC_DollarEvaluate
	global PC_EvaluateTokens
	global PC_ReadLineHandle
	global PC_Directive_endif
	global PC_Directive_error
	global PC_Directive_ifdef
	global PC_Directive_undef
	global PC_ReadDefineParms
	global PC_ReadSourceToken
	global PC_ReadTokenHandle
	global PC_StringizeTokens
	global PC_DefineFromString
	global PC_Directive_define
	global PC_Directive_if_def
	global PC_Directive_ifndef
	global PC_Directive_pragma
	global PC_FreeSourceHandle
	global PC_LoadSourceHandle
	global PC_OperatorPriority
	global PC_Directive_include
	global PC_SourceFileAndLine
	global PC_Directive_evalfloat
	global PC_ExpandBuiltinDefine
	global PC_ReadDollarDirective
	global PC_DollarDirective_evalint
	global PC_DollarDirective_evalfloat
	global dollardirectives
	global globaldefines
	global numtokens
	global sourceFiles


SECTION .text


;PC_Directive_eval(source_s*)
PC_Directive_eval:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8ac
	mov esi, [ebp+0x8]
	lea edx, [ebp-0x1c]
	mov dword [esp], 0x1
	xor ecx, ecx
	mov eax, esi
	call PC_Evaluate
	test eax, eax
	jnz PC_Directive_eval_10
	add esp, 0x8ac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PC_Directive_eval_10:
	mov edx, [esi+0x84]
	mov eax, [edx+0x5c]
	mov [ebp-0x40], eax
	mov eax, [edx+0x44]
	mov [ebp-0x48], eax
	mov eax, [edx+0x44]
	mov [ebp-0x44], eax
	mov dword [ebp-0x3c], 0x0
	mov eax, [ebp-0x1c]
	mov edx, eax
	neg edx
	cmp eax, 0xffffffff
	cmovle eax, edx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_d
	lea edi, [ebp-0x468]
	mov [esp], edi
	call sprintf
	mov dword [ebp-0x68], 0x3
	mov dword [ebp-0x64], 0x3008
	mov dword [esp], 0x440
	call GetMemory
	mov ebx, eax
	test eax, eax
	jz PC_Directive_eval_20
	mov dword [esp+0x8], 0x440
	mov [esp+0x4], edi
	mov [esp], eax
	call memcpy
	mov dword [ebx+0x430], 0x0
	add dword [numtokens], 0x1
PC_Directive_eval_60:
	mov eax, [esi+0x88]
	mov [ebx+0x430], eax
	mov [esi+0x88], ebx
	mov eax, [ebp-0x1c]
	test eax, eax
	js PC_Directive_eval_30
	mov eax, 0x1
PC_Directive_eval_50:
	add esp, 0x8ac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PC_Directive_eval_30:
	mov edx, [esi+0x84]
	mov eax, [edx+0x5c]
	mov [ebp-0x480], eax
	mov eax, [edx+0x44]
	mov [ebp-0x488], eax
	mov eax, [edx+0x44]
	mov [ebp-0x484], eax
	mov dword [ebp-0x47c], 0x0
	lea edi, [ebp-0x8a8]
	mov word [ebp-0x8a8], 0x2d
	mov dword [ebp-0x4a8], 0x5
	mov dword [ebp-0x4a4], 0x1e
	mov dword [esp], 0x440
	call GetMemory
	mov ebx, eax
	test eax, eax
	jz PC_Directive_eval_40
	mov dword [esp+0x8], 0x440
	mov [esp+0x4], edi
	mov [esp], eax
	call memcpy
	mov dword [ebx+0x430], 0x0
	add dword [numtokens], 0x1
PC_Directive_eval_70:
	mov eax, [esi+0x88]
	mov [ebx+0x430], eax
	mov [esi+0x88], ebx
	mov eax, 0x1
	jmp PC_Directive_eval_50
PC_Directive_eval_20:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call Com_Error
	jmp PC_Directive_eval_60
PC_Directive_eval_40:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call Com_Error
	jmp PC_Directive_eval_70
	nop


;PC_ReadLine(source_s*, token_s*, unsigned char)
PC_ReadLine:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov [ebp-0x2c], eax
	mov ebx, edx
	mov [ebp-0x2d], cl
	xor edi, edi
PC_ReadLine_130:
	mov [esp+0x4], ebx
	mov [esp], eax
	call PC_ReadSourceToken
	test eax, eax
	jz PC_ReadLine_10
PC_ReadLine_90:
	cmp edi, [ebx+0x42c]
	jl PC_ReadLine_20
	cmp dword [ebx+0x400], 0x4
	jnz PC_ReadLine_30
	cmp byte [ebp-0x2d], 0x0
	jz PC_ReadLine_30
	mov ecx, [ebp-0x2c]
	mov esi, [ecx+0x90]
	movzx eax, byte [ebx]
	test al, al
	jnz PC_ReadLine_40
	xor ecx, ecx
	xor edx, edx
	xor eax, eax
PC_ReadLine_110:
	xor ecx, edx
	xor eax, ecx
	and eax, 0x3ff
	mov esi, [esi+eax*4]
	test esi, esi
	jz PC_ReadLine_30
PC_ReadLine_60:
	mov [esp+0x4], ebx
	mov eax, [esi]
	mov [esp], eax
	call strcmp
	test eax, eax
	jz PC_ReadLine_50
	mov esi, [esi+0x1c]
	test esi, esi
	jnz PC_ReadLine_60
PC_ReadLine_30:
	mov edi, _cstring_
	mov ecx, 0x2
	cld
	mov esi, ebx
	repe cmpsb
	mov edx, 0x0
	jz PC_ReadLine_70
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
PC_ReadLine_70:
	test edx, edx
	jnz PC_ReadLine_80
	mov edi, 0x1
	mov eax, [ebp-0x2c]
	mov [esp+0x4], ebx
	mov [esp], eax
	call PC_ReadSourceToken
	test eax, eax
	jnz PC_ReadLine_90
PC_ReadLine_10:
	xor eax, eax
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PC_ReadLine_40:
	xor ecx, ecx
	mov edx, 0x77
PC_ReadLine_100:
	movsx eax, al
	imul eax, edx
	add ecx, eax
	movzx eax, byte [ebx+edx-0x76]
	add edx, 0x1
	test al, al
	jnz PC_ReadLine_100
	mov edx, ecx
	sar edx, 0xa
	mov eax, ecx
	sar eax, 0x14
	jmp PC_ReadLine_110
PC_ReadLine_50:
	lea eax, [ebp-0x20]
	mov [esp+0x10], eax
	lea eax, [ebp-0x1c]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call PC_ExpandDefine
	test eax, eax
	jz PC_ReadLine_10
	mov eax, [ebp-0x1c]
	test eax, eax
	jz PC_ReadLine_120
	mov edx, [ebp-0x20]
	test edx, edx
	jz PC_ReadLine_120
	mov ecx, [ebp-0x2c]
	mov eax, [ecx+0x88]
	mov [edx+0x430], eax
	mov eax, [ebp-0x1c]
	mov [ecx+0x88], eax
	mov eax, [ebp-0x2c]
	jmp PC_ReadLine_130
PC_ReadLine_20:
	mov dword [esp], 0x440
	call GetMemory
	mov esi, eax
	test eax, eax
	jz PC_ReadLine_140
	mov dword [esp+0x8], 0x440
	mov [esp+0x4], ebx
	mov [esp], eax
	call memcpy
	mov dword [esi+0x430], 0x0
	add dword [numtokens], 0x1
PC_ReadLine_150:
	mov edx, [ebp-0x2c]
	mov eax, [edx+0x88]
	mov [esi+0x430], eax
	mov [edx+0x88], esi
	xor eax, eax
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PC_ReadLine_80:
	mov eax, 0x1
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PC_ReadLine_120:
	mov eax, [ebp-0x2c]
	jmp PC_ReadLine_130
PC_ReadLine_140:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call Com_Error
	jmp PC_ReadLine_150
	nop


;PC_Evaluate(source_s*, long*, double*, int)
PC_Evaluate:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x49c
	mov [ebp-0x474], eax
	mov [ebp-0x478], edx
	mov [ebp-0x47c], ecx
	test edx, edx
	jz PC_Evaluate_10
	mov dword [edx], 0x0
PC_Evaluate_10:
	mov eax, [ebp-0x47c]
	test eax, eax
	jz PC_Evaluate_20
	mov eax, [ebp-0x47c]
	mov dword [eax], 0x0
	mov dword [eax+0x4], 0x0
PC_Evaluate_20:
	lea ebx, [ebp-0x468]
	mov ecx, 0x1
	mov edx, ebx
	mov eax, [ebp-0x474]
	call PC_ReadLine
	test eax, eax
	jz PC_Evaluate_30
	xor edi, edi
	mov dword [ebp-0x470], 0x0
	mov dword [ebp-0x46c], 0x0
	jmp PC_Evaluate_40
PC_Evaluate_100:
	cmp eax, 0x3
	jz PC_Evaluate_50
	cmp eax, 0x5
	jnz PC_Evaluate_60
PC_Evaluate_50:
	mov dword [esp], 0x440
	call GetMemory
	mov esi, eax
	test eax, eax
	jz PC_Evaluate_70
	mov dword [esp+0x8], 0x440
	mov [esp+0x4], ebx
	mov [esp], eax
	call memcpy
	mov dword [esi+0x430], 0x0
	add dword [numtokens], 0x1
PC_Evaluate_250:
	mov dword [esi+0x430], 0x0
	mov eax, [ebp-0x46c]
	test eax, eax
	jz PC_Evaluate_80
	mov edx, [ebp-0x46c]
	mov [edx+0x430], esi
	mov [ebp-0x46c], esi
PC_Evaluate_240:
	xor ecx, ecx
	test edi, edi
	setz cl
	mov edx, ebx
	mov eax, [ebp-0x474]
	call PC_ReadLine
	test eax, eax
	jz PC_Evaluate_90
PC_Evaluate_40:
	mov eax, [ebp-0x68]
	cmp eax, 0x4
	jnz PC_Evaluate_100
	test edi, edi
	jz PC_Evaluate_110
	mov dword [esp], 0x440
	call GetMemory
	mov esi, eax
	test eax, eax
	jz PC_Evaluate_120
	mov dword [esp+0x8], 0x440
	mov [esp+0x4], ebx
	mov [esp], eax
	call memcpy
	mov dword [esi+0x430], 0x0
	add dword [numtokens], 0x1
PC_Evaluate_300:
	mov dword [esi+0x430], 0x0
	mov eax, [ebp-0x46c]
	test eax, eax
	jz PC_Evaluate_130
	mov eax, [ebp-0x46c]
	mov [eax+0x430], esi
	mov [ebp-0x46c], esi
	xor edi, edi
	xor ecx, ecx
	test edi, edi
	setz cl
	mov edx, ebx
	mov eax, [ebp-0x474]
	call PC_ReadLine
	test eax, eax
	jnz PC_Evaluate_40
PC_Evaluate_90:
	mov edx, [ebp+0x8]
	mov [esp+0x10], edx
	mov ecx, [ebp-0x47c]
	mov [esp+0xc], ecx
	mov eax, [ebp-0x478]
	mov [esp+0x8], eax
	mov edx, [ebp-0x470]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x474]
	mov [esp], ecx
	call PC_EvaluateTokens
	test eax, eax
	jz PC_Evaluate_140
	mov ebx, [ebp-0x470]
	test ebx, ebx
	jz PC_Evaluate_150
	mov eax, [ebp-0x470]
	jmp PC_Evaluate_160
PC_Evaluate_170:
	mov eax, esi
PC_Evaluate_160:
	mov esi, [eax+0x430]
	mov [esp], eax
	call FreeMemory
	sub dword [numtokens], 0x1
	test esi, esi
	jnz PC_Evaluate_170
PC_Evaluate_150:
	mov eax, 0x1
PC_Evaluate_320:
	add esp, 0x49c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PC_Evaluate_110:
	mov edi, _cstring_defined
	mov ecx, 0x8
	cld
	mov esi, ebx
	repe cmpsb
	mov edx, 0x0
	jz PC_Evaluate_180
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
PC_Evaluate_180:
	test edx, edx
	jz PC_Evaluate_190
	mov ecx, [ebp-0x474]
	mov esi, [ecx+0x90]
	movzx eax, byte [ebp-0x468]
	test al, al
	jnz PC_Evaluate_200
	xor ecx, ecx
	xor edx, edx
	xor eax, eax
PC_Evaluate_270:
	xor edx, ecx
	xor eax, edx
	and eax, 0x3ff
	mov esi, [esi+eax*4]
	test esi, esi
	jz PC_Evaluate_210
PC_Evaluate_230:
	mov [esp+0x4], ebx
	mov eax, [esi]
	mov [esp], eax
	call strcmp
	test eax, eax
	jz PC_Evaluate_220
	mov esi, [esi+0x1c]
	test esi, esi
	jnz PC_Evaluate_230
PC_Evaluate_210:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_cant_evaluate_s_
	mov eax, [ebp-0x474]
	mov [esp], eax
	call SourceError
PC_Evaluate_140:
	xor eax, eax
	add esp, 0x49c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PC_Evaluate_80:
	mov [ebp-0x470], esi
	mov [ebp-0x46c], esi
	jmp PC_Evaluate_240
PC_Evaluate_70:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call Com_Error
	jmp PC_Evaluate_250
PC_Evaluate_30:
	mov dword [esp+0x4], _cstring_no_value_after_i
	mov edx, [ebp-0x474]
	mov [esp], edx
	call SourceError
	xor eax, eax
	add esp, 0x49c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PC_Evaluate_200:
	xor ecx, ecx
	mov edx, 0x77
PC_Evaluate_260:
	movsx eax, al
	imul eax, edx
	add ecx, eax
	movzx eax, byte [edx+ebx-0x76]
	add edx, 0x1
	test al, al
	jnz PC_Evaluate_260
	mov edx, ecx
	sar edx, 0xa
	mov eax, ecx
	sar eax, 0x14
	jmp PC_Evaluate_270
PC_Evaluate_190:
	mov dword [esp], 0x440
	call GetMemory
	mov esi, eax
	test eax, eax
	jz PC_Evaluate_280
	mov dword [esp+0x8], 0x440
	mov [esp+0x4], ebx
	mov [esp], eax
	call memcpy
	mov dword [esi+0x430], 0x0
	add dword [numtokens], 0x1
PC_Evaluate_330:
	mov dword [esi+0x430], 0x0
	mov eax, [ebp-0x46c]
	test eax, eax
	jz PC_Evaluate_290
	mov edx, [ebp-0x46c]
	mov [edx+0x430], esi
	mov [ebp-0x46c], esi
	mov edi, 0x1
	jmp PC_Evaluate_240
PC_Evaluate_120:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call Com_Error
	jmp PC_Evaluate_300
PC_Evaluate_220:
	lea eax, [ebp-0x20]
	mov [esp+0x10], eax
	lea eax, [ebp-0x1c]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	mov eax, [ebp-0x474]
	mov [esp], eax
	call PC_ExpandDefine
	test eax, eax
	jz PC_Evaluate_140
	mov eax, [ebp-0x1c]
	test eax, eax
	jz PC_Evaluate_310
	mov edx, [ebp-0x20]
	test edx, edx
	jz PC_Evaluate_310
	mov ecx, [ebp-0x474]
	mov eax, [ecx+0x88]
	mov [edx+0x430], eax
	mov eax, [ebp-0x1c]
	mov [ecx+0x88], eax
PC_Evaluate_310:
	xor edi, edi
	jmp PC_Evaluate_240
PC_Evaluate_130:
	mov [ebp-0x470], esi
	mov [ebp-0x46c], esi
	xor edi, edi
	jmp PC_Evaluate_240
PC_Evaluate_60:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_cant_evaluate_s
	mov ecx, [ebp-0x474]
	mov [esp], ecx
	call SourceError
	xor eax, eax
	jmp PC_Evaluate_320
PC_Evaluate_290:
	mov [ebp-0x470], esi
	mov [ebp-0x46c], esi
	mov edi, 0x1
	jmp PC_Evaluate_240
PC_Evaluate_280:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call Com_Error
	jmp PC_Evaluate_330
	nop


;FreeSource(source_s*)
FreeSource:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0x8]
	mov [ebp-0x1c], eax
	mov edx, [eax+0x84]
	test edx, edx
	jz FreeSource_10
FreeSource_20:
	mov eax, [edx+0x4c0]
	mov ecx, [ebp-0x1c]
	mov [ecx+0x84], eax
	mov [esp], edx
	call FreeScript
	mov eax, [ebp-0x1c]
	mov edx, [eax+0x84]
	test edx, edx
	jnz FreeSource_20
FreeSource_10:
	mov ecx, [ebp-0x1c]
	mov edx, [ecx+0x88]
	test edx, edx
	jz FreeSource_30
FreeSource_40:
	mov eax, [edx+0x430]
	mov ecx, [ebp-0x1c]
	mov [ecx+0x88], eax
	mov [esp], edx
	call FreeMemory
	sub dword [numtokens], 0x1
	mov eax, [ebp-0x1c]
	mov edx, [eax+0x88]
	test edx, edx
	jnz FreeSource_40
FreeSource_30:
	xor edi, edi
	mov edx, [ebp-0x1c]
	mov eax, [edx+0x90]
FreeSource_130:
	lea edx, [edi+eax]
	mov esi, [edx]
	test esi, esi
	jz FreeSource_50
FreeSource_120:
	mov eax, [esi+0x1c]
	mov [edx], eax
	mov eax, [esi+0x10]
	test eax, eax
	jnz FreeSource_60
	jmp FreeSource_70
FreeSource_80:
	mov eax, ebx
FreeSource_60:
	mov ebx, [eax+0x430]
	mov [esp], eax
	call FreeMemory
	sub dword [numtokens], 0x1
	test ebx, ebx
	jnz FreeSource_80
FreeSource_70:
	mov eax, [esi+0x14]
	test eax, eax
	jnz FreeSource_90
	jmp FreeSource_100
FreeSource_110:
	mov eax, ebx
FreeSource_90:
	mov ebx, [eax+0x430]
	mov [esp], eax
	call FreeMemory
	sub dword [numtokens], 0x1
	test ebx, ebx
	jnz FreeSource_110
FreeSource_100:
	mov [esp], esi
	call FreeMemory
	mov edx, [ebp-0x1c]
	mov eax, [edx+0x90]
	lea edx, [edi+eax]
	mov esi, [edx]
	test esi, esi
	jnz FreeSource_120
FreeSource_50:
	add edi, 0x4
	cmp edi, 0x1000
	jnz FreeSource_130
	mov ecx, [ebp-0x1c]
	mov edx, [ecx+0x94]
	test edx, edx
	jz FreeSource_140
FreeSource_150:
	mov eax, [edx+0xc]
	mov ecx, [ebp-0x1c]
	mov [ecx+0x94], eax
	mov [esp], edx
	call FreeMemory
	mov eax, [ebp-0x1c]
	mov edx, [eax+0x94]
	test edx, edx
	jnz FreeSource_150
	mov eax, [eax+0x90]
FreeSource_140:
	test eax, eax
	jz FreeSource_160
	mov [esp], eax
	call FreeMemory
FreeSource_160:
	mov ecx, [ebp-0x1c]
	mov [ebp+0x8], ecx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp FreeMemory
	nop


;SourceError(source_s*, char*, ...)
SourceError:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x430
	mov esi, [ebp+0x8]
	lea eax, [ebp+0x10]
	mov [ebp-0xc], eax
	mov [esp+0xc], eax
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x400
	lea ebx, [ebp-0x40c]
	mov [esp], ebx
	call vsnprintf
	mov edx, [esi+0x84]
	mov [esp+0x10], ebx
	mov eax, [edx+0x5c]
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_error_file_s_lin
	mov dword [esp], 0x17
	call Com_PrintError
	mov eax, [esi+0x84]
	mov ebx, [eax+0x4c0]
	test ebx, ebx
	jz SourceError_10
SourceError_20:
	mov eax, [ebx+0x5c]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring___from_file_s_li
	mov dword [esp], 0x17
	call Com_PrintWarning
	mov ebx, [ebx+0x4c0]
	test ebx, ebx
	jnz SourceError_20
SourceError_10:
	add esp, 0x430
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;PC_ReadToken(source_s*, token_s*)
PC_ReadToken:
PC_ReadToken_130:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x47c
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
PC_ReadToken_30:
	mov [esp+0x4], ebx
	mov [esp], esi
	call PC_ReadSourceToken
	test eax, eax
	jz PC_ReadToken_10
	mov eax, [ebx+0x400]
	cmp eax, 0x5
	jz PC_ReadToken_20
PC_ReadToken_100:
	mov edx, [esi+0x98]
	test edx, edx
	jnz PC_ReadToken_30
	sub eax, 0x1
	jz PC_ReadToken_40
PC_ReadToken_140:
	cmp dword [ebx+0x400], 0x4
	jnz PC_ReadToken_50
	mov edi, [esi+0x90]
	movzx eax, byte [ebx]
	test al, al
	jnz PC_ReadToken_60
	xor ecx, ecx
	xor edx, edx
	xor eax, eax
PC_ReadToken_120:
	xor edx, ecx
	xor eax, edx
	and eax, 0x3ff
	mov edi, [edi+eax*4]
	test edi, edi
	jz PC_ReadToken_50
PC_ReadToken_80:
	mov [esp+0x4], ebx
	mov eax, [edi]
	mov [esp], eax
	call strcmp
	test eax, eax
	jz PC_ReadToken_70
	mov edi, [edi+0x1c]
	test edi, edi
	jnz PC_ReadToken_80
PC_ReadToken_50:
	lea eax, [esi+0xa0]
	mov dword [esp+0x8], 0x440
	mov [esp+0x4], ebx
	mov [esp], eax
	call memcpy
	mov eax, 0x1
PC_ReadToken_200:
	add esp, 0x47c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PC_ReadToken_20:
	cmp word [ebx], 0x23
	jz PC_ReadToken_90
	cmp byte [ebx], 0x24
	jnz PC_ReadToken_100
	mov [esp], esi
	call PC_ReadDollarDirective
	test eax, eax
	jnz PC_ReadToken_30
PC_ReadToken_10:
	xor eax, eax
PC_ReadToken_170:
	add esp, 0x47c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PC_ReadToken_60:
	xor ecx, ecx
	mov edx, 0x77
PC_ReadToken_110:
	movsx eax, al
	imul eax, edx
	add ecx, eax
	movzx eax, byte [ebx+edx-0x76]
	add edx, 0x1
	test al, al
	jnz PC_ReadToken_110
	mov edx, ecx
	sar edx, 0xa
	mov eax, ecx
	sar eax, 0x14
	jmp PC_ReadToken_120
PC_ReadToken_70:
	lea eax, [ebp-0x20]
	mov [esp+0x10], eax
	lea eax, [ebp-0x1c]
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	mov [esp+0x4], ebx
	mov [esp], esi
	call PC_ExpandDefine
	test eax, eax
	jz PC_ReadToken_10
	mov eax, [ebp-0x1c]
	test eax, eax
	jz PC_ReadToken_30
	mov edx, [ebp-0x20]
	test edx, edx
	jz PC_ReadToken_30
	mov eax, [esi+0x88]
	mov [edx+0x430], eax
	mov eax, [ebp-0x1c]
	mov [esi+0x88], eax
	jmp PC_ReadToken_30
PC_ReadToken_40:
	lea eax, [ebp-0x468]
	mov [esp+0x4], eax
	mov [esp], esi
	call PC_ReadToken_130
	test eax, eax
	jz PC_ReadToken_140
	cmp dword [ebp-0x68], 0x1
	jz PC_ReadToken_150
	mov dword [esp], 0x440
	call GetMemory
	mov edi, eax
	test eax, eax
	jz PC_ReadToken_160
	mov dword [esp+0x8], 0x440
	lea ecx, [ebp-0x468]
	mov [esp+0x4], ecx
	mov [esp], eax
	call memcpy
	mov dword [edi+0x430], 0x0
	add dword [numtokens], 0x1
PC_ReadToken_180:
	mov eax, [esi+0x88]
	mov [edi+0x430], eax
	mov [esi+0x88], edi
	jmp PC_ReadToken_140
PC_ReadToken_90:
	mov [esp], esi
	call PC_ReadDirective
	test eax, eax
	jnz PC_ReadToken_30
	xor eax, eax
	jmp PC_ReadToken_170
PC_ReadToken_160:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call Com_Error
	jmp PC_ReadToken_180
PC_ReadToken_150:
	cld
	mov ecx, 0xffffffff
	mov edi, ebx
	xor eax, eax
	repne scasb
	not ecx
	mov byte [ecx+ebx-0x2], 0x0
	mov ecx, 0xffffffff
	mov edi, ebx
	repne scasb
	mov edx, ecx
	not edx
	mov ecx, 0xffffffff
	lea edi, [ebp-0x467]
	repne scasb
	not ecx
	lea ecx, [ecx+edx-0x1]
	cmp ecx, 0x3ff
	ja PC_ReadToken_190
	lea eax, [ebp-0x467]
	mov [esp+0x4], eax
	mov [esp], ebx
	call strcat
	jmp PC_ReadToken_140
PC_ReadToken_190:
	mov dword [esp+0x8], 0x400
	mov dword [esp+0x4], _cstring_string_longer_th
	mov [esp], esi
	call SourceError
	xor eax, eax
	jmp PC_ReadToken_200
	nop


;PC_CopyDefine(source_s*, define_s*)
PC_CopyDefine:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0xc]
	mov edi, [eax]
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	repne scasb
	not ecx
	add ecx, 0x20
	mov [esp], ecx
	call GetMemory
	mov [ebp-0x1c], eax
	mov edx, eax
	add edx, 0x20
	mov [eax], edx
	mov ecx, [ebp+0xc]
	mov eax, [ecx]
	mov [esp+0x4], eax
	mov [esp], edx
	call strcpy
	mov edx, [ebp+0xc]
	mov eax, [edx+0x4]
	mov ecx, [ebp-0x1c]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	mov eax, [edx+0xc]
	mov [ecx+0xc], eax
	mov dword [ecx+0x18], 0x0
	mov dword [ecx+0x1c], 0x0
	mov dword [ecx+0x14], 0x0
	mov edi, [edx+0x14]
	test edi, edi
	jz PC_CopyDefine_10
	xor esi, esi
	jmp PC_CopyDefine_20
PC_CopyDefine_40:
	mov dword [esp+0x8], 0x440
	mov [esp+0x4], edi
	mov [esp], eax
	call memcpy
	mov dword [ebx+0x430], 0x0
	add dword [numtokens], 0x1
	mov dword [ebx+0x430], 0x0
	test esi, esi
	jz PC_CopyDefine_30
PC_CopyDefine_50:
	mov [esi+0x430], ebx
	mov edi, [edi+0x430]
	test edi, edi
	jz PC_CopyDefine_10
PC_CopyDefine_60:
	mov esi, ebx
PC_CopyDefine_20:
	mov dword [esp], 0x440
	call GetMemory
	mov ebx, eax
	test eax, eax
	jnz PC_CopyDefine_40
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call Com_Error
	mov dword [ebx+0x430], 0x0
	test esi, esi
	jnz PC_CopyDefine_50
PC_CopyDefine_30:
	mov eax, [ebp-0x1c]
	mov [eax+0x14], ebx
	mov edi, [edi+0x430]
	test edi, edi
	jnz PC_CopyDefine_60
PC_CopyDefine_10:
	mov edx, [ebp-0x1c]
	mov dword [edx+0x10], 0x0
	mov ecx, [ebp+0xc]
	mov edi, [ecx+0x10]
	test edi, edi
	jz PC_CopyDefine_70
	xor esi, esi
	jmp PC_CopyDefine_80
PC_CopyDefine_100:
	mov dword [esp+0x8], 0x440
	mov [esp+0x4], edi
	mov [esp], eax
	call memcpy
	mov dword [ebx+0x430], 0x0
	add dword [numtokens], 0x1
	mov dword [ebx+0x430], 0x0
	test esi, esi
	jz PC_CopyDefine_90
PC_CopyDefine_110:
	mov [esi+0x430], ebx
	mov edi, [edi+0x430]
	test edi, edi
	jz PC_CopyDefine_70
PC_CopyDefine_120:
	mov esi, ebx
PC_CopyDefine_80:
	mov dword [esp], 0x440
	call GetMemory
	mov ebx, eax
	test eax, eax
	jnz PC_CopyDefine_100
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call Com_Error
	mov dword [ebx+0x430], 0x0
	test esi, esi
	jnz PC_CopyDefine_110
PC_CopyDefine_90:
	mov eax, [ebp-0x1c]
	mov [eax+0x10], ebx
	mov edi, [edi+0x430]
	test edi, edi
	jnz PC_CopyDefine_120
PC_CopyDefine_70:
	mov eax, [ebp-0x1c]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;SourceWarning(source_s*, char*, ...)
SourceWarning:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x430
	mov esi, [ebp+0x8]
	lea eax, [ebp+0x10]
	mov [ebp-0xc], eax
	mov [esp+0xc], eax
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x400
	lea ebx, [ebp-0x40c]
	mov [esp], ebx
	call vsnprintf
	mov edx, [esi+0x84]
	mov [esp+0x10], ebx
	mov eax, [edx+0x5c]
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_warning_file_s_l
	mov dword [esp], 0x17
	call Com_PrintWarning
	mov eax, [esi+0x84]
	mov ebx, [eax+0x4c0]
	test ebx, ebx
	jz SourceWarning_10
SourceWarning_20:
	mov eax, [ebx+0x5c]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring___from_file_s_li
	mov dword [esp], 0x17
	call Com_PrintWarning
	mov ebx, [ebx+0x4c0]
	test ebx, ebx
	jnz SourceWarning_20
SourceWarning_10:
	add esp, 0x430
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;LoadSourceFile(char const*)
LoadSourceFile:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0x8]
	mov [esp], esi
	call LoadScriptFile
	mov ebx, eax
	test eax, eax
	jz LoadSourceFile_10
	mov dword [eax+0x4c0], 0x0
	mov dword [esp], 0x4e0
	call GetMemory
	mov [ebp-0x20], eax
	mov dword [esp+0x8], 0x4e0
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	mov dword [esp+0x8], 0x40
	mov [esp+0x4], esi
	mov eax, [ebp-0x20]
	mov [esp], eax
	call strncpy
	mov edx, [ebp-0x20]
	mov [edx+0x84], ebx
	mov dword [edx+0x88], 0x0
	mov dword [edx+0x8c], 0x0
	mov dword [edx+0x94], 0x0
	mov dword [edx+0x98], 0x0
	mov dword [esp], 0x1000
	call GetClearedMemory
	mov ecx, [ebp-0x20]
	mov [ecx+0x90], eax
	mov edi, [globaldefines]
	test edi, edi
	jnz LoadSourceFile_20
	jmp LoadSourceFile_30
LoadSourceFile_40:
	xor ebx, ebx
	xor edx, edx
	xor eax, eax
	xor edx, ebx
	xor eax, edx
	and eax, 0x3ff
	mov ecx, [ebp-0x1c]
	lea edx, [ecx+eax*4]
	mov eax, [edx]
	mov [esi+0x1c], eax
	mov [edx], esi
	mov edi, [edi+0x18]
	test edi, edi
	jz LoadSourceFile_30
LoadSourceFile_20:
	mov [esp+0x4], edi
	mov eax, [ebp-0x20]
	mov [esp], eax
	call PC_CopyDefine
	mov esi, eax
	mov edx, [ebp-0x20]
	mov edx, [edx+0x90]
	mov [ebp-0x1c], edx
	mov ecx, [eax]
	movzx eax, byte [ecx]
	test al, al
	jz LoadSourceFile_40
	xor ebx, ebx
	mov edx, 0x77
LoadSourceFile_50:
	movsx eax, al
	imul eax, edx
	add ebx, eax
	movzx eax, byte [ecx+edx-0x76]
	add edx, 0x1
	test al, al
	jnz LoadSourceFile_50
	mov edx, ebx
	sar edx, 0xa
	mov eax, ebx
	sar eax, 0x14
	xor edx, ebx
	xor eax, edx
	and eax, 0x3ff
	mov ecx, [ebp-0x1c]
	lea edx, [ecx+eax*4]
	mov eax, [edx]
	mov [esi+0x1c], eax
	mov [edx], esi
	mov edi, [edi+0x18]
	test edi, edi
	jnz LoadSourceFile_20
LoadSourceFile_30:
	mov eax, [ebp-0x20]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
LoadSourceFile_10:
	mov dword [ebp-0x20], 0x0
	mov eax, [ebp-0x20]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;PC_Directive_if(source_s*)
PC_Directive_if:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov esi, [ebp+0x8]
	lea edx, [ebp-0xc]
	mov dword [esp], 0x1
	xor ecx, ecx
	mov eax, esi
	call PC_Evaluate
	test eax, eax
	jz PC_Directive_if_10
	xor ebx, ebx
	cmp dword [ebp-0xc], 0x0
	setz bl
	mov dword [esp], 0x10
	call GetMemory
	mov dword [eax], 0x1
	mov edx, [esi+0x84]
	mov [eax+0x8], edx
	mov [eax+0x4], ebx
	add [esi+0x98], ebx
	mov edx, [esi+0x94]
	mov [eax+0xc], edx
	mov [esi+0x94], eax
	mov eax, 0x1
PC_Directive_if_10:
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret


;PC_ExpandDefine(source_s*, token_s*, define_s*, token_s**, token_s**)
PC_ExpandDefine:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x67c
	mov eax, [ebp+0x10]
	mov esi, [eax+0x8]
	test esi, esi
	jnz PC_ExpandDefine_10
	mov ebx, [eax+0xc]
	test ebx, ebx
	jnz PC_ExpandDefine_20
	mov edx, eax
	mov esi, [edx+0x14]
	test esi, esi
	jz PC_ExpandDefine_30
PC_ExpandDefine_220:
	mov dword [ebp-0x664], 0x0
	mov dword [ebp-0x660], 0x0
PC_ExpandDefine_90:
	cmp dword [esi+0x400], 0x4
	jz PC_ExpandDefine_40
PC_ExpandDefine_260:
	cmp word [esi], 0x23
	jnz PC_ExpandDefine_50
	mov eax, [esi+0x430]
	mov [ebp-0x65c], eax
	test eax, eax
	jz PC_ExpandDefine_60
	mov edx, [ebp+0x10]
	mov edi, [edx+0x10]
	test edi, edi
	jz PC_ExpandDefine_60
	xor ebx, ebx
PC_ExpandDefine_80:
	mov eax, [ebp-0x65c]
	mov [esp+0x4], eax
	mov [esp], edi
	call strcmp
	test eax, eax
	jz PC_ExpandDefine_70
	add ebx, 0x1
	mov edi, [edi+0x430]
	test edi, edi
	jnz PC_ExpandDefine_80
PC_ExpandDefine_60:
	mov dword [esp+0x4], _cstring_stringizing_oper
	mov edx, [ebp+0x8]
	mov [esp], edx
	call SourceWarning
PC_ExpandDefine_250:
	mov esi, [esi+0x430]
	test esi, esi
	jnz PC_ExpandDefine_90
	mov eax, [ebp-0x664]
	test eax, eax
	jz PC_ExpandDefine_100
	mov ebx, [ebp-0x664]
PC_ExpandDefine_420:
	mov edi, [ebx+0x430]
	test edi, edi
	jz PC_ExpandDefine_100
PC_ExpandDefine_120:
	cmp word [edi], 0x2323
	jz PC_ExpandDefine_110
PC_ExpandDefine_180:
	mov ebx, edi
	mov edi, [ebx+0x430]
	test edi, edi
	jnz PC_ExpandDefine_120
PC_ExpandDefine_100:
	mov edx, [ebp-0x664]
	mov eax, [ebp+0x14]
	mov [eax], edx
	mov edx, [ebp-0x660]
	mov eax, [ebp+0x18]
	mov [eax], edx
	mov eax, [ebp+0x10]
	mov eax, [eax+0xc]
	test eax, eax
	jle PC_ExpandDefine_130
	xor ebx, ebx
PC_ExpandDefine_170:
	mov eax, [ebp+ebx*4-0x218]
	test eax, eax
	jnz PC_ExpandDefine_140
	jmp PC_ExpandDefine_150
PC_ExpandDefine_160:
	mov eax, edi
PC_ExpandDefine_140:
	mov edi, [eax+0x430]
	mov [esp], eax
	call FreeMemory
	sub dword [numtokens], 0x1
	test edi, edi
	jnz PC_ExpandDefine_160
PC_ExpandDefine_150:
	add ebx, 0x1
	mov edx, [ebp+0x10]
	cmp ebx, [edx+0xc]
	jl PC_ExpandDefine_170
PC_ExpandDefine_130:
	mov eax, 0x1
PC_ExpandDefine_400:
	add esp, 0x67c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PC_ExpandDefine_110:
	mov esi, [edi+0x430]
	test esi, esi
	jz PC_ExpandDefine_180
	mov eax, [ebx+0x400]
	cmp eax, 0x4
	jz PC_ExpandDefine_190
	sub eax, 0x1
	jz PC_ExpandDefine_200
PC_ExpandDefine_380:
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_cant_merge_s_wit
	mov edx, [ebp+0x8]
	mov [esp], edx
	call SourceError
	xor eax, eax
	add esp, 0x67c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PC_ExpandDefine_20:
	mov edx, eax
	mov dword [esp+0xc], 0x80
	lea eax, [ebp-0x218]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call PC_ReadDefineParms
	test eax, eax
	jz PC_ExpandDefine_210
	mov edx, [ebp+0x10]
	mov esi, [edx+0x14]
	test esi, esi
	jnz PC_ExpandDefine_220
PC_ExpandDefine_30:
	mov dword [ebp-0x660], 0x0
	mov dword [ebp-0x664], 0x0
	jmp PC_ExpandDefine_100
PC_ExpandDefine_50:
	mov dword [esp], 0x440
	call GetMemory
	mov edi, eax
	test eax, eax
	jz PC_ExpandDefine_230
	mov dword [esp+0x8], 0x440
	mov [esp+0x4], esi
	mov [esp], eax
	call memcpy
	mov dword [edi+0x430], 0x0
	add dword [numtokens], 0x1
PC_ExpandDefine_350:
	mov dword [edi+0x430], 0x0
	mov edx, [ebp-0x660]
	test edx, edx
	jz PC_ExpandDefine_240
	mov edx, [ebp-0x660]
	mov [edx+0x430], edi
PC_ExpandDefine_310:
	mov [ebp-0x660], edi
	jmp PC_ExpandDefine_250
PC_ExpandDefine_40:
	mov eax, [ebp+0x10]
	mov edi, [eax+0x10]
	test edi, edi
	jz PC_ExpandDefine_260
	xor ebx, ebx
	jmp PC_ExpandDefine_270
PC_ExpandDefine_280:
	add ebx, 0x1
	mov edi, [edi+0x430]
	test edi, edi
	jz PC_ExpandDefine_260
PC_ExpandDefine_270:
	mov [esp+0x4], esi
	mov [esp], edi
	call strcmp
	test eax, eax
	jnz PC_ExpandDefine_280
	test ebx, ebx
	js PC_ExpandDefine_260
	mov ebx, [ebp+ebx*4-0x218]
	test ebx, ebx
	jz PC_ExpandDefine_250
	mov dword [esp], 0x440
	call GetMemory
	mov edi, eax
	test eax, eax
	jz PC_ExpandDefine_290
PC_ExpandDefine_320:
	mov dword [esp+0x8], 0x440
	mov [esp+0x4], ebx
	mov [esp], eax
	call memcpy
	mov dword [edi+0x430], 0x0
	add dword [numtokens], 0x1
	mov dword [edi+0x430], 0x0
	mov ecx, [ebp-0x660]
	test ecx, ecx
	jz PC_ExpandDefine_300
PC_ExpandDefine_330:
	mov edx, [ebp-0x660]
	mov [edx+0x430], edi
PC_ExpandDefine_340:
	mov ebx, [ebx+0x430]
	test ebx, ebx
	jz PC_ExpandDefine_310
	mov [ebp-0x660], edi
	mov dword [esp], 0x440
	call GetMemory
	mov edi, eax
	test eax, eax
	jnz PC_ExpandDefine_320
PC_ExpandDefine_290:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call Com_Error
	mov dword [edi+0x430], 0x0
	mov ecx, [ebp-0x660]
	test ecx, ecx
	jnz PC_ExpandDefine_330
PC_ExpandDefine_300:
	mov [ebp-0x664], edi
	jmp PC_ExpandDefine_340
PC_ExpandDefine_240:
	mov [ebp-0x660], edi
	mov [ebp-0x664], edi
	jmp PC_ExpandDefine_250
PC_ExpandDefine_230:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call Com_Error
	jmp PC_ExpandDefine_350
PC_ExpandDefine_70:
	test ebx, ebx
	js PC_ExpandDefine_60
	lea edx, [ebp-0x658]
	mov [esp+0x4], edx
	mov eax, [ebp+ebx*4-0x218]
	mov [esp], eax
	call PC_StringizeTokens
	test eax, eax
	jz PC_ExpandDefine_360
	mov dword [esp], 0x440
	call GetMemory
	mov edi, eax
	test eax, eax
	jz PC_ExpandDefine_370
	mov dword [esp+0x8], 0x440
	lea eax, [ebp-0x658]
	mov [esp+0x4], eax
	mov [esp], edi
	call memcpy
	mov dword [edi+0x430], 0x0
	add dword [numtokens], 0x1
	mov esi, [ebp-0x65c]
	jmp PC_ExpandDefine_350
PC_ExpandDefine_10:
	mov edx, [ebp+0x18]
	mov [esp+0x10], edx
	mov eax, [ebp+0x14]
	mov [esp+0xc], eax
	mov edx, [ebp+0x10]
	mov [esp+0x8], edx
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call PC_ExpandBuiltinDefine
	add esp, 0x67c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PC_ExpandDefine_190:
	mov eax, [esi+0x400]
	sub eax, 0x3
	cmp eax, 0x1
	ja PC_ExpandDefine_380
	mov [esp+0x4], esi
	mov [esp], ebx
	call strcat
	jmp PC_ExpandDefine_390
PC_ExpandDefine_360:
	mov dword [esp+0x4], _cstring_cant_stringize_t
	mov eax, [ebp+0x8]
	mov [esp], eax
	call SourceError
PC_ExpandDefine_210:
	xor eax, eax
	jmp PC_ExpandDefine_400
PC_ExpandDefine_370:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call Com_Error
	mov esi, [ebp-0x65c]
	jmp PC_ExpandDefine_350
PC_ExpandDefine_200:
	cmp dword [esi+0x400], 0x1
	jnz PC_ExpandDefine_380
	cld
	mov ecx, 0xffffffff
	mov edi, ebx
	xor eax, eax
	repne scasb
	not ecx
	mov byte [ecx+ebx-0x2], 0x0
	lea eax, [esi+0x1]
	mov [esp+0x4], eax
	mov [esp], ebx
	call strcat
PC_ExpandDefine_390:
	mov eax, [ebx+0x430]
	mov [esp], eax
	call FreeMemory
	sub dword [numtokens], 0x1
	mov eax, [esi+0x430]
	mov [ebx+0x430], eax
	cmp [ebp-0x660], esi
	jz PC_ExpandDefine_410
PC_ExpandDefine_430:
	mov [esp], esi
	call FreeMemory
	sub dword [numtokens], 0x1
	jmp PC_ExpandDefine_420
PC_ExpandDefine_410:
	mov [ebp-0x660], ebx
	jmp PC_ExpandDefine_430


;PC_ReadDirective(source_s*)
PC_ReadDirective:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x45c
	mov edi, [ebp+0x8]
	lea eax, [ebp-0x458]
	mov [esp+0x4], eax
	mov [esp], edi
	call PC_ReadSourceToken
	test eax, eax
	jz PC_ReadDirective_10
	mov eax, [ebp-0x2c]
	test eax, eax
	jle PC_ReadDirective_20
	mov dword [esp], 0x440
	call GetMemory
	mov ebx, eax
	test eax, eax
	jz PC_ReadDirective_30
	mov dword [esp+0x8], 0x440
	lea edx, [ebp-0x458]
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	mov dword [ebx+0x430], 0x0
	add dword [numtokens], 0x1
PC_ReadDirective_80:
	mov eax, [edi+0x88]
	mov [ebx+0x430], eax
	mov [edi+0x88], ebx
	mov dword [esp+0x4], _cstring_found__at_end_of
	mov [esp], edi
	call SourceError
	xor eax, eax
PC_ReadDirective_90:
	add esp, 0x45c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PC_ReadDirective_20:
	cmp dword [ebp-0x58], 0x4
	jz PC_ReadDirective_40
PC_ReadDirective_50:
	lea eax, [ebp-0x458]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_unknown_precompi
	mov [esp], edi
	call SourceError
	xor eax, eax
	add esp, 0x45c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PC_ReadDirective_10:
	mov dword [esp+0x4], _cstring_found__without_n
	mov [esp], edi
	call SourceError
	xor eax, eax
	add esp, 0x45c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PC_ReadDirective_40:
	mov eax, [directives]
	test eax, eax
	jz PC_ReadDirective_50
	xor esi, esi
	mov ebx, directives
PC_ReadDirective_70:
	lea edx, [ebp-0x458]
	mov [esp+0x4], edx
	mov [esp], eax
	call strcmp
	test eax, eax
	jz PC_ReadDirective_60
	add esi, 0x1
	mov eax, [ebx+0x8]
	add ebx, 0x8
	test eax, eax
	jnz PC_ReadDirective_70
	jmp PC_ReadDirective_50
PC_ReadDirective_30:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call Com_Error
	jmp PC_ReadDirective_80
PC_ReadDirective_60:
	mov [esp], edi
	call dword [esi*8+directives+0x4]
	jmp PC_ReadDirective_90
	nop


;PC_Directive_elif(source_s*)
PC_Directive_elif:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, [ebp+0x8]
	mov edx, [ebx+0x94]
	test edx, edx
	jz PC_Directive_elif_10
	mov eax, [edx+0x8]
	cmp eax, [ebx+0x84]
	jz PC_Directive_elif_20
PC_Directive_elif_10:
	mov dword [esp+0x4], _cstring_misplaced_elif
	mov [esp], ebx
	call SourceError
	xor eax, eax
PC_Directive_elif_30:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PC_Directive_elif_20:
	mov esi, [edx]
	mov edi, [edx+0x4]
	mov eax, [edx+0xc]
	mov [ebx+0x94], eax
	xor eax, eax
	cmp dword [edx+0x4], 0x0
	setnz al
	sub [ebx+0x98], eax
	mov [esp], edx
	call FreeMemory
	test esi, esi
	jz PC_Directive_elif_10
	cmp esi, 0x2
	jz PC_Directive_elif_10
	lea edx, [ebp-0x1c]
	mov dword [esp], 0x1
	xor ecx, ecx
	mov eax, ebx
	call PC_Evaluate
	test eax, eax
	jz PC_Directive_elif_30
	sub edi, 0x1
	jz PC_Directive_elif_40
	mov esi, 0x2
PC_Directive_elif_50:
	mov dword [esp], 0x10
	call GetMemory
	mov dword [eax], 0x4
	mov edx, [ebx+0x84]
	mov [eax+0x8], edx
	mov [eax+0x4], esi
	xor edx, edx
	test esi, esi
	setnz dl
	add [ebx+0x98], edx
	mov edx, [ebx+0x94]
	mov [eax+0xc], edx
	mov [ebx+0x94], eax
	mov eax, 0x1
	jmp PC_Directive_elif_30
PC_Directive_elif_40:
	mov edx, [ebp-0x1c]
	test edx, edx
	setz al
	movzx esi, al
	jmp PC_Directive_elif_50


;PC_Directive_else(source_s*)
PC_Directive_else:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov edx, [esi+0x94]
	test edx, edx
	jz PC_Directive_else_10
	mov eax, [edx+0x8]
	cmp eax, [esi+0x84]
	jz PC_Directive_else_20
PC_Directive_else_10:
	mov dword [esp+0x4], _cstring_misplaced_else
	mov [esp], esi
	call SourceError
	xor eax, eax
PC_Directive_else_40:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PC_Directive_else_20:
	mov ebx, [edx]
	mov edi, [edx+0x4]
	mov eax, [edx+0xc]
	mov [esi+0x94], eax
	xor eax, eax
	cmp dword [edx+0x4], 0x0
	setnz al
	sub [esi+0x98], eax
	mov [esp], edx
	call FreeMemory
	test ebx, ebx
	jz PC_Directive_else_10
	cmp ebx, 0x2
	jz PC_Directive_else_30
	xor ebx, ebx
	cmp edi, 0x1
	setnz bl
	mov dword [esp], 0x10
	call GetMemory
	mov dword [eax], 0x2
	mov edx, [esi+0x84]
	mov [eax+0x8], edx
	mov [eax+0x4], ebx
	add [esi+0x98], ebx
	mov edx, [esi+0x94]
	mov [eax+0xc], edx
	mov [esi+0x94], eax
	mov eax, 0x1
	jmp PC_Directive_else_40
PC_Directive_else_30:
	mov dword [esp+0x4], _cstring_else_after_else
	mov [esp], esi
	call SourceError
	xor eax, eax
	jmp PC_Directive_else_40


;PC_Directive_line(source_s*)
PC_Directive_line:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], _cstring_line_directive_n
	mov eax, [ebp+0x8]
	mov [esp], eax
	call SourceError
	xor eax, eax
	leave
	ret
	nop


;PC_DollarEvaluate(source_s*, long*, double*, int)
PC_DollarEvaluate:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x48c
	mov edx, [ebp+0xc]
	test edx, edx
	jz PC_DollarEvaluate_10
	mov eax, [ebp+0xc]
	mov dword [eax], 0x0
PC_DollarEvaluate_10:
	mov eax, [ebp+0x10]
	test eax, eax
	jz PC_DollarEvaluate_20
	mov edx, [ebp+0x10]
	mov dword [edx], 0x0
	mov dword [edx+0x4], 0x0
PC_DollarEvaluate_20:
	lea ebx, [ebp-0x468]
	mov [esp+0x4], ebx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call PC_ReadSourceToken
	test eax, eax
	jnz PC_DollarEvaluate_30
	mov dword [esp+0x4], _cstring_no_leading__afte
	mov eax, [ebp+0x8]
	mov [esp], eax
	call SourceError
	xor eax, eax
PC_DollarEvaluate_350:
	add esp, 0x48c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PC_DollarEvaluate_30:
	mov [esp+0x4], ebx
	mov edx, [ebp+0x8]
	mov [esp], edx
	call PC_ReadSourceToken
	test eax, eax
	jz PC_DollarEvaluate_40
	xor edi, edi
	mov dword [ebp-0x474], 0x1
	mov dword [ebp-0x470], 0x0
	mov dword [ebp-0x46c], 0x0
PC_DollarEvaluate_120:
	mov eax, [ebp-0x68]
	cmp eax, 0x4
	jz PC_DollarEvaluate_50
	cmp eax, 0x3
	jz PC_DollarEvaluate_60
	cmp eax, 0x5
	jnz PC_DollarEvaluate_70
PC_DollarEvaluate_60:
	movzx edx, byte [ebp-0x468]
	cmp dl, 0x28
	jz PC_DollarEvaluate_80
	mov eax, [ebp-0x474]
	sub eax, 0x1
	cmp dl, 0x29
	cmovnz eax, [ebp-0x474]
	mov [ebp-0x474], eax
PC_DollarEvaluate_210:
	mov eax, [ebp-0x474]
	test eax, eax
	jle PC_DollarEvaluate_90
	mov dword [esp], 0x440
	call GetMemory
	mov esi, eax
	test eax, eax
	jz PC_DollarEvaluate_100
	mov dword [esp+0x8], 0x440
	mov [esp+0x4], ebx
	mov [esp], eax
	call memcpy
	mov dword [esi+0x430], 0x0
	add dword [numtokens], 0x1
PC_DollarEvaluate_280:
	mov dword [esi+0x430], 0x0
	mov eax, [ebp-0x46c]
	test eax, eax
	jz PC_DollarEvaluate_110
	mov edx, [ebp-0x46c]
	mov [edx+0x430], esi
	mov [ebp-0x46c], esi
PC_DollarEvaluate_200:
	mov [esp+0x4], ebx
	mov edx, [ebp+0x8]
	mov [esp], edx
	call PC_ReadSourceToken
	test eax, eax
	jnz PC_DollarEvaluate_120
PC_DollarEvaluate_90:
	mov ecx, [ebp+0x14]
	mov [esp+0x10], ecx
	mov eax, [ebp+0x10]
	mov [esp+0xc], eax
	mov edx, [ebp+0xc]
	mov [esp+0x8], edx
	mov ecx, [ebp-0x470]
	mov [esp+0x4], ecx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call PC_EvaluateTokens
	test eax, eax
	jz PC_DollarEvaluate_130
	mov ecx, [ebp-0x470]
	test ecx, ecx
	jz PC_DollarEvaluate_140
	mov eax, [ebp-0x470]
	jmp PC_DollarEvaluate_150
PC_DollarEvaluate_160:
	mov eax, esi
PC_DollarEvaluate_150:
	mov esi, [eax+0x430]
	mov [esp], eax
	call FreeMemory
	sub dword [numtokens], 0x1
	test esi, esi
	jnz PC_DollarEvaluate_160
PC_DollarEvaluate_140:
	mov eax, 0x1
	add esp, 0x48c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PC_DollarEvaluate_50:
	test edi, edi
	jz PC_DollarEvaluate_170
	mov dword [esp], 0x440
	call GetMemory
	mov esi, eax
	test eax, eax
	jz PC_DollarEvaluate_180
	mov dword [esp+0x8], 0x440
	mov [esp+0x4], ebx
	mov [esp], eax
	call memcpy
	mov dword [esi+0x430], 0x0
	add dword [numtokens], 0x1
PC_DollarEvaluate_340:
	mov dword [esi+0x430], 0x0
	mov eax, [ebp-0x46c]
	test eax, eax
	jz PC_DollarEvaluate_190
	mov edx, [ebp-0x46c]
	mov [edx+0x430], esi
	mov [ebp-0x46c], esi
	xor edi, edi
	jmp PC_DollarEvaluate_200
PC_DollarEvaluate_80:
	add dword [ebp-0x474], 0x1
	jmp PC_DollarEvaluate_210
PC_DollarEvaluate_170:
	mov edi, _cstring_defined
	mov ecx, 0x8
	cld
	mov esi, ebx
	repe cmpsb
	mov edx, 0x0
	jz PC_DollarEvaluate_220
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
PC_DollarEvaluate_220:
	test edx, edx
	jz PC_DollarEvaluate_230
	mov eax, [ebp+0x8]
	mov esi, [eax+0x90]
	movzx eax, byte [ebp-0x468]
	test al, al
	jnz PC_DollarEvaluate_240
	xor ecx, ecx
	xor edx, edx
	xor eax, eax
PC_DollarEvaluate_320:
	xor edx, ecx
	xor eax, edx
	and eax, 0x3ff
	mov esi, [esi+eax*4]
	test esi, esi
	jz PC_DollarEvaluate_250
PC_DollarEvaluate_270:
	mov [esp+0x4], ebx
	mov eax, [esi]
	mov [esp], eax
	call strcmp
	test eax, eax
	jz PC_DollarEvaluate_260
	mov esi, [esi+0x1c]
	test esi, esi
	jnz PC_DollarEvaluate_270
PC_DollarEvaluate_250:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_cant_evaluate_s_
	mov edx, [ebp+0x8]
	mov [esp], edx
	call SourceError
PC_DollarEvaluate_130:
	xor eax, eax
	add esp, 0x48c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PC_DollarEvaluate_110:
	mov [ebp-0x470], esi
	mov [ebp-0x46c], esi
	jmp PC_DollarEvaluate_200
PC_DollarEvaluate_100:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call Com_Error
	jmp PC_DollarEvaluate_280
PC_DollarEvaluate_40:
	mov dword [esp+0x4], _cstring_nothing_to_evalu
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call SourceError
	xor eax, eax
	add esp, 0x48c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PC_DollarEvaluate_230:
	mov dword [esp], 0x440
	call GetMemory
	mov esi, eax
	test eax, eax
	jz PC_DollarEvaluate_290
	mov dword [esp+0x8], 0x440
	mov [esp+0x4], ebx
	mov [esp], eax
	call memcpy
	mov dword [esi+0x430], 0x0
	add dword [numtokens], 0x1
PC_DollarEvaluate_360:
	mov dword [esi+0x430], 0x0
	mov eax, [ebp-0x46c]
	test eax, eax
	jz PC_DollarEvaluate_300
	mov ecx, [ebp-0x46c]
	mov [ecx+0x430], esi
	mov [ebp-0x46c], esi
	mov edi, 0x1
	jmp PC_DollarEvaluate_200
PC_DollarEvaluate_240:
	xor ecx, ecx
	mov edx, 0x77
PC_DollarEvaluate_310:
	movsx eax, al
	imul eax, edx
	add ecx, eax
	movzx eax, byte [edx+ebx-0x76]
	add edx, 0x1
	test al, al
	jnz PC_DollarEvaluate_310
	mov edx, ecx
	sar edx, 0xa
	mov eax, ecx
	sar eax, 0x14
	jmp PC_DollarEvaluate_320
PC_DollarEvaluate_260:
	lea eax, [ebp-0x20]
	mov [esp+0x10], eax
	lea eax, [ebp-0x1c]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	mov edx, [ebp+0x8]
	mov [esp], edx
	call PC_ExpandDefine
	test eax, eax
	jz PC_DollarEvaluate_130
	mov eax, [ebp-0x1c]
	test eax, eax
	jz PC_DollarEvaluate_330
	mov edx, [ebp-0x20]
	test edx, edx
	jz PC_DollarEvaluate_330
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x88]
	mov [edx+0x430], eax
	mov eax, [ebp-0x1c]
	mov [ecx+0x88], eax
PC_DollarEvaluate_330:
	xor edi, edi
	jmp PC_DollarEvaluate_200
PC_DollarEvaluate_180:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call Com_Error
	jmp PC_DollarEvaluate_340
PC_DollarEvaluate_190:
	mov [ebp-0x470], esi
	mov [ebp-0x46c], esi
	xor edi, edi
	jmp PC_DollarEvaluate_200
PC_DollarEvaluate_70:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_cant_evaluate_s
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call SourceError
	xor eax, eax
	jmp PC_DollarEvaluate_350
PC_DollarEvaluate_300:
	mov [ebp-0x470], esi
	mov [ebp-0x46c], esi
	mov edi, 0x1
	jmp PC_DollarEvaluate_200
PC_DollarEvaluate_290:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call Com_Error
	jmp PC_DollarEvaluate_360


;PC_EvaluateTokens(source_s*, token_s*, long*, double*, int)
PC_EvaluateTokens:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xb6c
	mov esi, [ebp+0xc]
	mov eax, [ebp+0x10]
	test eax, eax
	jz PC_EvaluateTokens_10
	mov eax, [ebp+0x10]
	mov dword [eax], 0x0
PC_EvaluateTokens_10:
	mov edi, [ebp+0x14]
	test edi, edi
	jz PC_EvaluateTokens_20
	mov edx, [ebp+0x14]
	mov dword [edx], 0x0
	mov dword [edx+0x4], 0x0
PC_EvaluateTokens_20:
	test esi, esi
	jz PC_EvaluateTokens_30
	mov ebx, esi
	xor ecx, ecx
	mov dword [ebp-0xb28], 0x0
	mov dword [ebp-0xb24], 0x0
	mov dword [ebp-0xb44], 0x0
	mov dword [ebp-0xb3c], 0x0
	mov dword [ebp-0xb34], 0x0
	xor edx, edx
	mov dword [ebp-0xb48], 0x0
	mov dword [ebp-0xb40], 0x0
PC_EvaluateTokens_320:
	mov eax, [ebx+0x400]
	cmp eax, 0x4
	jz PC_EvaluateTokens_40
	cmp eax, 0x5
	jz PC_EvaluateTokens_50
	cmp eax, 0x3
	jz PC_EvaluateTokens_60
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_unknown_s_in_ife
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call SourceError
PC_EvaluateTokens_570:
	mov edx, 0x1
PC_EvaluateTokens_720:
	mov eax, [ebp-0xb40]
	test eax, eax
	jz PC_EvaluateTokens_70
	mov eax, [ebp+0x10]
	test eax, eax
	jz PC_EvaluateTokens_80
	mov edi, [ebp-0xb40]
	mov eax, [edi]
	mov ecx, [ebp+0x10]
	mov [ecx], eax
PC_EvaluateTokens_80:
	mov eax, [ebp+0x14]
	test eax, eax
	jz PC_EvaluateTokens_70
	mov edi, [ebp-0xb40]
	movsd xmm0, qword [edi+0x4]
	mov eax, [ebp+0x14]
	movsd [eax], xmm0
PC_EvaluateTokens_70:
	mov eax, [ebp-0xb48]
	test eax, eax
	jz PC_EvaluateTokens_90
	mov eax, [ebp-0xb48]
PC_EvaluateTokens_100:
	mov eax, [eax+0x10]
	test eax, eax
	jnz PC_EvaluateTokens_100
PC_EvaluateTokens_90:
	mov ecx, [ebp-0xb40]
	test ecx, ecx
	jz PC_EvaluateTokens_110
	mov eax, [ebp-0xb40]
PC_EvaluateTokens_120:
	mov eax, [eax+0x14]
	test eax, eax
	jnz PC_EvaluateTokens_120
PC_EvaluateTokens_110:
	test edx, edx
	jz PC_EvaluateTokens_130
	mov edi, [ebp+0x10]
	test edi, edi
	jz PC_EvaluateTokens_140
	mov edx, [ebp+0x10]
	mov dword [edx], 0x0
PC_EvaluateTokens_140:
	mov esi, [ebp+0x14]
	test esi, esi
	jz PC_EvaluateTokens_150
	mov ecx, [ebp+0x14]
	mov dword [ecx], 0x0
	mov dword [ecx+0x4], 0x0
PC_EvaluateTokens_150:
	xor eax, eax
	add esp, 0xb6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PC_EvaluateTokens_40:
	test edx, edx
	jnz PC_EvaluateTokens_160
	test ecx, ecx
	jnz PC_EvaluateTokens_160
	mov edi, _cstring_defined
	mov ecx, 0x8
	cld
	mov esi, ebx
	repe cmpsb
	mov edx, 0x0
	jz PC_EvaluateTokens_170
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
PC_EvaluateTokens_170:
	test edx, edx
	jnz PC_EvaluateTokens_180
	mov ebx, [ebx+0x430]
	mov edi, _cstring_1
	mov ecx, 0x2
	mov esi, ebx
	repe cmpsb
	mov edx, 0x0
	jz PC_EvaluateTokens_190
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
PC_EvaluateTokens_190:
	test edx, edx
	jz PC_EvaluateTokens_200
	mov dword [ebp-0xb38], 0x0
PC_EvaluateTokens_530:
	test ebx, ebx
	jz PC_EvaluateTokens_210
	cmp dword [ebx+0x400], 0x4
	jnz PC_EvaluateTokens_220
	cmp dword [ebp-0xb24], 0x3f
	jg PC_EvaluateTokens_230
	mov ecx, [ebp-0xb24]
	lea eax, [ecx+ecx*2]
	lea eax, [ebp+eax*8-0xb18]
	mov [ebp-0xb64], eax
	add ecx, 0x1
	mov [ebp-0xb24], ecx
	mov edi, [ebp+0x8]
	mov esi, [edi+0x90]
	movzx eax, byte [ebx]
	test al, al
	jnz PC_EvaluateTokens_240
	xor ecx, ecx
	xor edx, edx
	xor eax, eax
PC_EvaluateTokens_550:
	xor ecx, edx
	xor ecx, eax
	and ecx, 0x3ff
	mov esi, [esi+ecx*4]
	test esi, esi
	jz PC_EvaluateTokens_250
PC_EvaluateTokens_270:
	mov [esp+0x4], ebx
	mov eax, [esi]
	mov [esp], eax
	call strcmp
	test eax, eax
	jz PC_EvaluateTokens_260
	mov esi, [esi+0x1c]
	test esi, esi
	jnz PC_EvaluateTokens_270
PC_EvaluateTokens_250:
	mov eax, [ebp-0xb64]
	mov dword [eax], 0x0
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x0
PC_EvaluateTokens_580:
	mov ecx, [ebp-0xb34]
	mov edx, [ebp-0xb64]
	mov [edx+0xc], ecx
	mov dword [edx+0x14], 0x0
	mov edi, [ebp-0xb3c]
	mov [edx+0x10], edi
	test edi, edi
	jz PC_EvaluateTokens_280
	mov edx, [ebp-0xb64]
	mov eax, [ebp-0xb3c]
	mov [eax+0x14], edx
PC_EvaluateTokens_590:
	mov esi, [ebp-0xb38]
	test esi, esi
	jz PC_EvaluateTokens_290
	mov ebx, [ebx+0x430]
	test ebx, ebx
	jz PC_EvaluateTokens_300
	mov dword [ebp-0xb4c], _cstring_2
	mov ecx, 0x2
	cld
	mov esi, ebx
	mov edi, _cstring_2
	repe cmpsb
	mov edx, 0x0
	jz PC_EvaluateTokens_310
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
PC_EvaluateTokens_310:
	test edx, edx
	jnz PC_EvaluateTokens_300
PC_EvaluateTokens_290:
	mov eax, [ebp-0xb64]
	mov [ebp-0xb3c], eax
	mov edx, 0x1
	xor ecx, ecx
PC_EvaluateTokens_520:
	mov ebx, [ebx+0x430]
	test ebx, ebx
	jnz PC_EvaluateTokens_320
	test edx, edx
	jz PC_EvaluateTokens_330
	mov edx, [ebp-0xb34]
	test edx, edx
	jnz PC_EvaluateTokens_340
	mov ebx, [ebp-0xb48]
	test ebx, ebx
	jz PC_EvaluateTokens_350
	mov dword [ebp-0xb30], 0x0
	pxor xmm1, xmm1
	movapd xmm2, xmm1
	mov dword [ebp-0xb2c], 0x0
PC_EvaluateTokens_710:
	mov ebx, [ebp-0xb40]
	mov esi, [ebp-0xb48]
	jmp PC_EvaluateTokens_360
PC_EvaluateTokens_400:
	mov eax, [esi]
	sub eax, 0x23
	cmp eax, 0x1
	jbe PC_EvaluateTokens_370
	mov ebx, [ebx+0x14]
PC_EvaluateTokens_370:
	test ebx, ebx
	jz PC_EvaluateTokens_380
	mov esi, edx
PC_EvaluateTokens_360:
	mov edx, [esi+0x10]
	test edx, edx
	jz PC_EvaluateTokens_390
	mov eax, [edx+0x8]
	cmp [esi+0x8], eax
	jg PC_EvaluateTokens_390
	jnz PC_EvaluateTokens_400
	mov eax, [esi+0x4]
	cmp eax, [edx+0x4]
	jl PC_EvaluateTokens_400
PC_EvaluateTokens_390:
	mov edi, [ebx+0x14]
	mov edx, [esi]
	lea eax, [edx-0x5]
	cmp eax, 0x26
	ja PC_EvaluateTokens_410
	jmp dword [eax*4+PC_EvaluateTokens_jumptab_0]
PC_EvaluateTokens_50:
	test ecx, ecx
	jnz PC_EvaluateTokens_420
	mov eax, [ebx+0x404]
	cmp eax, 0x2c
	jz PC_EvaluateTokens_430
	cmp eax, 0x2d
	jz PC_EvaluateTokens_440
	mov ecx, [ebp+0x18]
	test ecx, ecx
	jnz PC_EvaluateTokens_450
	cmp eax, 0x23
	jz PC_EvaluateTokens_460
	cmp eax, 0x1c
	jz PC_EvaluateTokens_460
	cmp eax, 0x15
	jz PC_EvaluateTokens_460
	cmp eax, 0x16
	jz PC_EvaluateTokens_460
	cmp eax, 0x20
	jz PC_EvaluateTokens_460
	cmp eax, 0x21
	jz PC_EvaluateTokens_460
	cmp eax, 0x22
	jz PC_EvaluateTokens_460
PC_EvaluateTokens_450:
	sub eax, 0x5
	cmp eax, 0x26
	ja PC_EvaluateTokens_470
	jmp dword [eax*4+PC_EvaluateTokens_jumptab_1]
PC_EvaluateTokens_130:
	mov eax, 0x1
	add esp, 0xb6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PC_EvaluateTokens_60:
	test edx, edx
	jnz PC_EvaluateTokens_480
	cmp dword [ebp-0xb24], 0x3f
	jg PC_EvaluateTokens_490
	mov edx, [ebp-0xb24]
	lea eax, [edx+edx*2]
	lea edx, [ebp+eax*8-0xb18]
	add dword [ebp-0xb24], 0x1
	test ecx, ecx
	jz PC_EvaluateTokens_500
	mov eax, [ebx+0x408]
	neg eax
	mov [edx], eax
	fld tword [ebx+0x410]
	fstp qword [ebp-0xb20]
	fld qword [ebp-0xb20]
	fstp qword [ebp-0xb60]
	movsd xmm0, qword [ebp-0xb60]
	xorpd xmm0, [_data16_0]
	movsd [edx+0x4], xmm0
PC_EvaluateTokens_560:
	mov eax, [ebp-0xb34]
	mov [edx+0xc], eax
	mov dword [edx+0x14], 0x0
	mov ecx, [ebp-0xb3c]
	mov [edx+0x10], ecx
	test ecx, ecx
	jz PC_EvaluateTokens_510
	mov edi, [ebp-0xb3c]
	mov [edi+0x14], edx
	mov [ebp-0xb3c], edx
	mov edx, 0x1
	xor ecx, ecx
	jmp PC_EvaluateTokens_520
PC_EvaluateTokens_200:
	mov ebx, [ebx+0x430]
	mov dword [ebp-0xb38], 0x1
	jmp PC_EvaluateTokens_530
PC_EvaluateTokens_240:
	xor ecx, ecx
	mov edx, 0x77
PC_EvaluateTokens_540:
	movsx eax, al
	imul eax, edx
	add ecx, eax
	movzx eax, byte [ebx+edx-0x76]
	add edx, 0x1
	test al, al
	jnz PC_EvaluateTokens_540
	mov edx, ecx
	sar edx, 0xa
	mov eax, ecx
	sar eax, 0x14
	jmp PC_EvaluateTokens_550
PC_EvaluateTokens_500:
	mov eax, [ebx+0x408]
	mov [edx], eax
	fld tword [ebx+0x410]
	fstp qword [edx+0x4]
	jmp PC_EvaluateTokens_560
PC_EvaluateTokens_440:
	sub dword [ebp-0xb34], 0x1
	jns PC_EvaluateTokens_520
	mov dword [esp+0x4], _cstring_too_many__in_ife
	mov eax, [ebp+0x8]
	mov [esp], eax
	call SourceError
	jmp PC_EvaluateTokens_570
PC_EvaluateTokens_470:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_invalid_operator
	mov edx, [ebp+0x8]
	mov [esp], edx
	call SourceError
	jmp PC_EvaluateTokens_570
PC_EvaluateTokens_30:
	mov dword [ebp-0xb48], 0x0
	mov dword [ebp-0xb40], 0x0
PC_EvaluateTokens_330:
	mov dword [esp+0x4], _cstring_trailing_operato
	mov edx, [ebp+0x8]
	mov [esp], edx
	call SourceError
	jmp PC_EvaluateTokens_570
PC_EvaluateTokens_430:
	add dword [ebp-0xb34], 0x1
	jmp PC_EvaluateTokens_520
PC_EvaluateTokens_260:
	mov eax, [ebp-0xb64]
	mov dword [eax], 0x1
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x3ff00000
	jmp PC_EvaluateTokens_580
PC_EvaluateTokens_280:
	mov [ebp-0xb40], edx
	jmp PC_EvaluateTokens_590
PC_EvaluateTokens_1160:
	mov dword [esp+0x4], _cstring__or__used_in_ife
	mov edi, [ebp+0x8]
	mov [esp], edi
	call SourceError
PC_EvaluateTokens_620:
	cmp dword [ebp-0xb28], 0x3f
	jg PC_EvaluateTokens_600
	mov edi, [ebp-0xb28]
	lea eax, [edi+edi*4]
	lea edx, [ebp+eax*4-0x518]
	add edi, 0x1
	mov [ebp-0xb28], edi
	mov eax, [ebx+0x404]
	mov [edx], eax
	mov eax, [ebx+0x404]
	sub eax, 0x5
	cmp eax, 0x26
	ja PC_EvaluateTokens_610
	jmp dword [eax*4+PC_EvaluateTokens_jumptab_2]
PC_EvaluateTokens_1170:
	test edx, edx
	jnz PC_EvaluateTokens_620
	mov ecx, 0x1
	jmp PC_EvaluateTokens_520
PC_EvaluateTokens_1180:
	test edx, edx
	jz PC_EvaluateTokens_620
	mov dword [esp+0x4], _cstring__or__after_value
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call SourceError
	jmp PC_EvaluateTokens_570
PC_EvaluateTokens_1150:
	test edx, edx
	jnz PC_EvaluateTokens_620
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_operator_s_after
	mov eax, [ebp+0x8]
	mov [esp], eax
	call SourceError
	jmp PC_EvaluateTokens_570
PC_EvaluateTokens_1130:
	mov eax, [ebp-0xb2c]
	test eax, eax
	jz PC_EvaluateTokens_630
	mov eax, [ebp+0x18]
	test eax, eax
	jz PC_EvaluateTokens_640
	mov ecx, [ebp-0xb30]
	test ecx, ecx
	jnz PC_EvaluateTokens_650
	mov eax, [edi]
	mov [ebx], eax
	mov dword [ebp-0xb2c], 0x0
	mov edx, [esi]
PC_EvaluateTokens_410:
	lea eax, [edx-0x23]
	cmp eax, 0x1
	jbe PC_EvaluateTokens_660
	cmp edx, 0x2b
	jz PC_EvaluateTokens_670
	mov ebx, edi
	mov edi, [edi+0x14]
PC_EvaluateTokens_670:
	mov eax, [ebx+0x10]
	test eax, eax
	jz PC_EvaluateTokens_680
	mov [eax+0x14], edi
	mov edi, [ebx+0x14]
PC_EvaluateTokens_880:
	test edi, edi
	jz PC_EvaluateTokens_660
	mov [edi+0x10], eax
PC_EvaluateTokens_660:
	mov edx, [esi+0xc]
	test edx, edx
	jz PC_EvaluateTokens_690
	mov eax, [esi+0x10]
	mov [edx+0x10], eax
	mov eax, [esi+0x10]
PC_EvaluateTokens_870:
	test eax, eax
	jz PC_EvaluateTokens_700
	mov [eax+0xc], edx
PC_EvaluateTokens_700:
	mov eax, [ebp-0xb48]
	test eax, eax
	jnz PC_EvaluateTokens_710
PC_EvaluateTokens_350:
	xor edx, edx
	jmp PC_EvaluateTokens_720
PC_EvaluateTokens_610:
	xor eax, eax
PC_EvaluateTokens_740:
	mov [edx+0x4], eax
	mov eax, [ebp-0xb34]
	mov [edx+0x8], eax
	mov dword [edx+0x10], 0x0
	mov ecx, [ebp-0xb44]
	mov [edx+0xc], ecx
	test ecx, ecx
	jz PC_EvaluateTokens_730
	mov edi, [ebp-0xb44]
	mov [edi+0x10], edx
	mov [ebp-0xb44], edx
	xor edx, edx
	xor ecx, ecx
	jmp PC_EvaluateTokens_520
PC_EvaluateTokens_1210:
	mov eax, 0xc
	jmp PC_EvaluateTokens_740
PC_EvaluateTokens_1220:
	mov eax, 0xb
	jmp PC_EvaluateTokens_740
PC_EvaluateTokens_1230:
	mov eax, 0xd
	jmp PC_EvaluateTokens_740
PC_EvaluateTokens_1240:
	mov eax, 0xf
	jmp PC_EvaluateTokens_740
PC_EvaluateTokens_1250:
	mov eax, 0xe
	jmp PC_EvaluateTokens_740
PC_EvaluateTokens_1190:
	mov eax, 0x7
	jmp PC_EvaluateTokens_740
PC_EvaluateTokens_1200:
	mov eax, 0x6
	jmp PC_EvaluateTokens_740
PC_EvaluateTokens_1260:
	mov eax, 0xa
	jmp PC_EvaluateTokens_740
PC_EvaluateTokens_1270:
	mov eax, 0x8
	jmp PC_EvaluateTokens_740
PC_EvaluateTokens_1280:
	mov eax, 0x9
	jmp PC_EvaluateTokens_740
PC_EvaluateTokens_1290:
	mov eax, 0x10
	jmp PC_EvaluateTokens_740
PC_EvaluateTokens_1300:
	mov eax, 0x5
	jmp PC_EvaluateTokens_740
PC_EvaluateTokens_1140:
	mov eax, [ebp-0xb2c]
	test eax, eax
	jnz PC_EvaluateTokens_750
	mov ecx, [ebx]
	mov [ebp-0xb30], ecx
	movsd xmm2, qword [ebx+0x4]
	mov dword [ebp-0xb2c], 0x1
	jmp PC_EvaluateTokens_410
PC_EvaluateTokens_1120:
	mov eax, [ebx]
	cmp eax, [edi]
	setl al
	movzx eax, al
	mov [ebx], eax
	movsd xmm0, qword [edi+0x4]
	ucomisd xmm0, [ebx+0x4]
	jbe PC_EvaluateTokens_760
PC_EvaluateTokens_790:
	movsd xmm0, qword [_double_1_00000000]
PC_EvaluateTokens_780:
	movsd [ebx+0x4], xmm0
	mov edx, [esi]
	jmp PC_EvaluateTokens_410
PC_EvaluateTokens_1080:
	mov eax, [ebx]
	xor eax, [edi]
	mov [ebx], eax
	mov edx, [esi]
	jmp PC_EvaluateTokens_410
PC_EvaluateTokens_1100:
	xor eax, eax
	cmp dword [ebx], 0x0
	setz al
	mov [ebx], eax
	ucomisd xmm1, [ebx+0x4]
	jz PC_EvaluateTokens_770
PC_EvaluateTokens_760:
	movapd xmm0, xmm1
	jmp PC_EvaluateTokens_780
PC_EvaluateTokens_1110:
	mov eax, [ebx]
	cmp eax, [edi]
	setg al
	movzx eax, al
	mov [ebx], eax
	movsd xmm0, qword [ebx+0x4]
	ucomisd xmm0, [edi+0x4]
	ja PC_EvaluateTokens_790
	jmp PC_EvaluateTokens_760
PC_EvaluateTokens_1090:
	not dword [ebx]
	mov edx, [esi]
	jmp PC_EvaluateTokens_410
PC_EvaluateTokens_1000:
	mov ecx, [edi]
	shl dword [ebx], cl
	mov edx, [esi]
	jmp PC_EvaluateTokens_410
PC_EvaluateTokens_1010:
	mov eax, [ebx]
	imul eax, [edi]
	mov [ebx], eax
	movsd xmm0, qword [ebx+0x4]
	mulsd xmm0, [edi+0x4]
	jmp PC_EvaluateTokens_780
PC_EvaluateTokens_1020:
	mov edx, [edi]
	test edx, edx
	jz PC_EvaluateTokens_800
	ucomisd xmm1, [edi+0x4]
	jz PC_EvaluateTokens_810
PC_EvaluateTokens_910:
	mov eax, [ebx]
	mov ecx, edx
	cdq
	idiv ecx
	mov [ebx], eax
	movsd xmm0, qword [ebx+0x4]
	divsd xmm0, qword [edi+0x4]
	jmp PC_EvaluateTokens_780
PC_EvaluateTokens_1030:
	mov edx, [edi]
	test edx, edx
	jz PC_EvaluateTokens_820
	mov eax, [ebx]
	mov ecx, edx
	cdq
	idiv ecx
	mov [ebx], edx
	mov edx, [esi]
	jmp PC_EvaluateTokens_410
PC_EvaluateTokens_1040:
	mov eax, [ebx]
	add eax, [edi]
	mov [ebx], eax
	movsd xmm0, qword [ebx+0x4]
	addsd xmm0, [edi+0x4]
	movsd [ebx+0x4], xmm0
	mov edx, [esi]
	jmp PC_EvaluateTokens_410
PC_EvaluateTokens_930:
	mov eax, [ebx]
	test eax, eax
	jz PC_EvaluateTokens_830
	mov eax, [edi]
	test eax, eax
	jz PC_EvaluateTokens_830
	mov eax, 0x1
PC_EvaluateTokens_900:
	mov [ebx], eax
	ucomisd xmm1, [ebx+0x4]
	jnz PC_EvaluateTokens_840
	jnp PC_EvaluateTokens_760
PC_EvaluateTokens_840:
	ucomisd xmm1, [edi+0x4]
	jp PC_EvaluateTokens_790
PC_EvaluateTokens_860:
	jnz PC_EvaluateTokens_790
	jmp PC_EvaluateTokens_760
PC_EvaluateTokens_940:
	mov eax, [ebx]
	test eax, eax
	jnz PC_EvaluateTokens_850
	mov eax, [edi]
	test eax, eax
	jnz PC_EvaluateTokens_850
	xor eax, eax
PC_EvaluateTokens_920:
	mov [ebx], eax
	ucomisd xmm1, [ebx+0x4]
	jnz PC_EvaluateTokens_790
	jp PC_EvaluateTokens_790
	ucomisd xmm1, [edi+0x4]
	jnz PC_EvaluateTokens_790
	jnp PC_EvaluateTokens_760
	jmp PC_EvaluateTokens_790
PC_EvaluateTokens_950:
	mov eax, [ebx]
	cmp eax, [edi]
	setge al
	movzx eax, al
	mov [ebx], eax
	movsd xmm0, qword [ebx+0x4]
	ucomisd xmm0, [edi+0x4]
	jae PC_EvaluateTokens_790
	jmp PC_EvaluateTokens_760
PC_EvaluateTokens_960:
	mov eax, [ebx]
	cmp eax, [edi]
	setle al
	movzx eax, al
	mov [ebx], eax
	movsd xmm0, qword [edi+0x4]
	ucomisd xmm0, [ebx+0x4]
	jae PC_EvaluateTokens_790
	jmp PC_EvaluateTokens_760
PC_EvaluateTokens_970:
	mov eax, [ebx]
	cmp eax, [edi]
	setz al
	movzx eax, al
	mov [ebx], eax
	movsd xmm0, qword [ebx+0x4]
	ucomisd xmm0, [edi+0x4]
	jnz PC_EvaluateTokens_760
PC_EvaluateTokens_770:
	jnp PC_EvaluateTokens_790
	jmp PC_EvaluateTokens_760
PC_EvaluateTokens_980:
	mov eax, [ebx]
	cmp eax, [edi]
	setnz al
	movzx eax, al
	mov [ebx], eax
	movsd xmm0, qword [ebx+0x4]
	ucomisd xmm0, [edi+0x4]
	jnp PC_EvaluateTokens_860
	jmp PC_EvaluateTokens_790
PC_EvaluateTokens_990:
	mov ecx, [edi]
	sar dword [ebx], cl
	mov edx, [esi]
	jmp PC_EvaluateTokens_410
PC_EvaluateTokens_1060:
	mov eax, [ebx]
	and eax, [edi]
	mov [ebx], eax
	mov edx, [esi]
	jmp PC_EvaluateTokens_410
PC_EvaluateTokens_1070:
	mov eax, [ebx]
	or eax, [edi]
	mov [ebx], eax
	mov edx, [esi]
	jmp PC_EvaluateTokens_410
PC_EvaluateTokens_1050:
	mov eax, [ebx]
	sub eax, [edi]
	mov [ebx], eax
	movsd xmm0, qword [ebx+0x4]
	subsd xmm0, [edi+0x4]
	jmp PC_EvaluateTokens_780
PC_EvaluateTokens_510:
	mov [ebp-0xb40], edx
	mov [ebp-0xb3c], edx
	mov edx, 0x1
	jmp PC_EvaluateTokens_520
PC_EvaluateTokens_380:
	mov dword [esp+0x4], _cstring_mising_values_in
	mov eax, [ebp+0x8]
	mov [esp], eax
	call SourceError
	jmp PC_EvaluateTokens_570
PC_EvaluateTokens_340:
	mov dword [esp+0x4], _cstring_too_many__in_ife1
	mov edi, [ebp+0x8]
	mov [esp], edi
	call SourceError
	jmp PC_EvaluateTokens_570
PC_EvaluateTokens_730:
	mov [ebp-0xb44], edx
	mov [ebp-0xb48], edx
	xor edx, edx
	jmp PC_EvaluateTokens_520
PC_EvaluateTokens_690:
	mov esi, [esi+0x10]
	mov [ebp-0xb48], esi
	mov eax, esi
	jmp PC_EvaluateTokens_870
PC_EvaluateTokens_160:
	mov dword [esp+0x4], _cstring_syntax_error_in_
	mov edi, [ebp+0x8]
	mov [esp], edi
	call SourceError
	jmp PC_EvaluateTokens_570
PC_EvaluateTokens_680:
	mov [ebp-0xb40], edi
	jmp PC_EvaluateTokens_880
PC_EvaluateTokens_460:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_illigal_operator
	mov edx, [ebp+0x8]
	mov [esp], edx
	call SourceError
	jmp PC_EvaluateTokens_570
PC_EvaluateTokens_180:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_undefined_name_s
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call SourceError
	jmp PC_EvaluateTokens_570
PC_EvaluateTokens_300:
	mov dword [esp+0x4], _cstring_defined_without_
	mov eax, [ebp+0x8]
	mov [esp], eax
	call SourceError
	jmp PC_EvaluateTokens_570
PC_EvaluateTokens_210:
	mov esi, _cstring_endoffile
PC_EvaluateTokens_890:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_defined_without_1
	mov edx, [ebp+0x8]
	mov [esp], edx
	call SourceError
	jmp PC_EvaluateTokens_570
PC_EvaluateTokens_220:
	mov esi, ebx
	jmp PC_EvaluateTokens_890
PC_EvaluateTokens_230:
	mov dword [esp+0x4], _cstring_out_of_value_spa
	mov edi, [ebp+0x8]
	mov [esp], edi
	call SourceError
	jmp PC_EvaluateTokens_570
PC_EvaluateTokens_420:
	mov dword [esp+0x4], _cstring_misplaced_minus_
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call SourceError
	jmp PC_EvaluateTokens_570
PC_EvaluateTokens_480:
	mov dword [esp+0x4], _cstring_syntax_error_in_
	mov eax, [ebp+0x8]
	mov [esp], eax
	call SourceError
	jmp PC_EvaluateTokens_570
PC_EvaluateTokens_490:
	mov dword [esp+0x4], _cstring_out_of_value_spa
	mov edx, [ebp+0x8]
	mov [esp], edx
	call SourceError
	jmp PC_EvaluateTokens_570
PC_EvaluateTokens_600:
	mov dword [esp+0x4], _cstring_out_of_operator_
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call SourceError
	jmp PC_EvaluateTokens_570
PC_EvaluateTokens_820:
	mov dword [esp+0x4], _cstring_divide_by_zero_i
	mov edi, [ebp+0x8]
	mov [esp], edi
	call SourceError
	mov edx, 0x1
	jmp PC_EvaluateTokens_720
PC_EvaluateTokens_830:
	xor eax, eax
	jmp PC_EvaluateTokens_900
PC_EvaluateTokens_750:
	mov dword [esp+0x4], _cstring__after__in_ifeli
	mov eax, [ebp+0x8]
	mov [esp], eax
	call SourceError
	jmp PC_EvaluateTokens_570
PC_EvaluateTokens_810:
	jp PC_EvaluateTokens_910
PC_EvaluateTokens_800:
	mov dword [esp+0x4], _cstring_divide_by_zero_i
	mov edx, [ebp+0x8]
	mov [esp], edx
	call SourceError
	mov edx, 0x1
	jmp PC_EvaluateTokens_720
PC_EvaluateTokens_850:
	mov eax, 0x1
	jmp PC_EvaluateTokens_920
PC_EvaluateTokens_650:
	mov dword [ebp-0xb2c], 0x0
	jmp PC_EvaluateTokens_410
PC_EvaluateTokens_640:
	ucomisd xmm2, xmm1
	jnz PC_EvaluateTokens_650
	jp PC_EvaluateTokens_650
	movsd xmm0, qword [edi+0x4]
	movsd [ebx+0x4], xmm0
	mov dword [ebp-0xb2c], 0x0
	mov edx, [esi]
	jmp PC_EvaluateTokens_410
PC_EvaluateTokens_630:
	mov dword [esp+0x4], _cstring__without__in_ife
	mov edi, [ebp+0x8]
	mov [esp], edi
	call SourceError
	mov edx, 0x1
	jmp PC_EvaluateTokens_720
	nop
	add [eax], al
	
	
PC_EvaluateTokens_jumptab_0:
	dd PC_EvaluateTokens_930
	dd PC_EvaluateTokens_940
	dd PC_EvaluateTokens_950
	dd PC_EvaluateTokens_960
	dd PC_EvaluateTokens_970
	dd PC_EvaluateTokens_980
	dd PC_EvaluateTokens_410
	dd PC_EvaluateTokens_410
	dd PC_EvaluateTokens_410
	dd PC_EvaluateTokens_410
	dd PC_EvaluateTokens_410
	dd PC_EvaluateTokens_410
	dd PC_EvaluateTokens_410
	dd PC_EvaluateTokens_410
	dd PC_EvaluateTokens_410
	dd PC_EvaluateTokens_410
	dd PC_EvaluateTokens_990
	dd PC_EvaluateTokens_1000
	dd PC_EvaluateTokens_410
	dd PC_EvaluateTokens_410
	dd PC_EvaluateTokens_410
	dd PC_EvaluateTokens_1010
	dd PC_EvaluateTokens_1020
	dd PC_EvaluateTokens_1030
	dd PC_EvaluateTokens_1040
	dd PC_EvaluateTokens_1050
	dd PC_EvaluateTokens_410
	dd PC_EvaluateTokens_1060
	dd PC_EvaluateTokens_1070
	dd PC_EvaluateTokens_1080
	dd PC_EvaluateTokens_1090
	dd PC_EvaluateTokens_1100
	dd PC_EvaluateTokens_1110
	dd PC_EvaluateTokens_1120
	dd PC_EvaluateTokens_410
	dd PC_EvaluateTokens_410
	dd PC_EvaluateTokens_410
	dd PC_EvaluateTokens_1130
	dd PC_EvaluateTokens_1140
PC_EvaluateTokens_jumptab_1:
	dd PC_EvaluateTokens_1150
	dd PC_EvaluateTokens_1150
	dd PC_EvaluateTokens_1150
	dd PC_EvaluateTokens_1150
	dd PC_EvaluateTokens_1150
	dd PC_EvaluateTokens_1150
	dd PC_EvaluateTokens_470
	dd PC_EvaluateTokens_470
	dd PC_EvaluateTokens_470
	dd PC_EvaluateTokens_470
	dd PC_EvaluateTokens_470
	dd PC_EvaluateTokens_1160
	dd PC_EvaluateTokens_1160
	dd PC_EvaluateTokens_470
	dd PC_EvaluateTokens_470
	dd PC_EvaluateTokens_470
	dd PC_EvaluateTokens_1150
	dd PC_EvaluateTokens_1150
	dd PC_EvaluateTokens_470
	dd PC_EvaluateTokens_470
	dd PC_EvaluateTokens_470
	dd PC_EvaluateTokens_1150
	dd PC_EvaluateTokens_1150
	dd PC_EvaluateTokens_1150
	dd PC_EvaluateTokens_1150
	dd PC_EvaluateTokens_1170
	dd PC_EvaluateTokens_470
	dd PC_EvaluateTokens_1150
	dd PC_EvaluateTokens_1150
	dd PC_EvaluateTokens_1150
	dd PC_EvaluateTokens_1180
	dd PC_EvaluateTokens_1180
	dd PC_EvaluateTokens_1150
	dd PC_EvaluateTokens_1150
	dd PC_EvaluateTokens_470
	dd PC_EvaluateTokens_470
	dd PC_EvaluateTokens_470
	dd PC_EvaluateTokens_1150
	dd PC_EvaluateTokens_1150
PC_EvaluateTokens_jumptab_2:
	dd PC_EvaluateTokens_1190
	dd PC_EvaluateTokens_1200
	dd PC_EvaluateTokens_1210
	dd PC_EvaluateTokens_1210
	dd PC_EvaluateTokens_1220
	dd PC_EvaluateTokens_1220
	dd PC_EvaluateTokens_610
	dd PC_EvaluateTokens_610
	dd PC_EvaluateTokens_610
	dd PC_EvaluateTokens_610
	dd PC_EvaluateTokens_610
	dd PC_EvaluateTokens_610
	dd PC_EvaluateTokens_610
	dd PC_EvaluateTokens_610
	dd PC_EvaluateTokens_610
	dd PC_EvaluateTokens_610
	dd PC_EvaluateTokens_1230
	dd PC_EvaluateTokens_1230
	dd PC_EvaluateTokens_610
	dd PC_EvaluateTokens_610
	dd PC_EvaluateTokens_610
	dd PC_EvaluateTokens_1240
	dd PC_EvaluateTokens_1240
	dd PC_EvaluateTokens_1240
	dd PC_EvaluateTokens_1250
	dd PC_EvaluateTokens_1250
	dd PC_EvaluateTokens_610
	dd PC_EvaluateTokens_1260
	dd PC_EvaluateTokens_1270
	dd PC_EvaluateTokens_1280
	dd PC_EvaluateTokens_1290
	dd PC_EvaluateTokens_1290
	dd PC_EvaluateTokens_1210
	dd PC_EvaluateTokens_1210
	dd PC_EvaluateTokens_610
	dd PC_EvaluateTokens_610
	dd PC_EvaluateTokens_610
	dd PC_EvaluateTokens_1300
	dd PC_EvaluateTokens_1300


;PC_ReadLineHandle(int, pc_token_s*)
PC_ReadLineHandle:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x46c
	mov edx, [ebp+0x8]
	mov esi, [ebp+0xc]
	lea eax, [edx-0x1]
	cmp eax, 0x3e
	ja PC_ReadLineHandle_10
	mov eax, [edx*4+sourceFiles]
	test eax, eax
	jz PC_ReadLineHandle_10
	lea ebx, [ebp-0x458]
	mov ecx, 0x1
	mov edx, ebx
	call PC_ReadLine
	mov edi, eax
	lea eax, [esi+0x10]
	mov [ebp-0x460], eax
	mov [esp+0x4], ebx
	mov [esp], eax
	call strcpy
	mov eax, [ebp-0x58]
	mov [esi], eax
	mov eax, [ebp-0x54]
	mov [esi+0x4], eax
	mov eax, [ebp-0x50]
	mov [esi+0x8], eax
	fld tword [ebp-0x48]
	fstp dword [esi+0xc]
	cmp dword [esi], 0x1
	jz PC_ReadLineHandle_20
	mov eax, edi
	add esp, 0x46c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PC_ReadLineHandle_10:
	xor edi, edi
	mov eax, edi
	add esp, 0x46c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PC_ReadLineHandle_20:
	mov eax, [ebp-0x460]
	mov [esp], eax
	call StripDoubleQuotes
	mov eax, edi
	add esp, 0x46c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;PC_Directive_endif(source_s*)
PC_Directive_endif:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov edx, [esi+0x94]
	test edx, edx
	jz PC_Directive_endif_10
	mov eax, [edx+0x8]
	cmp eax, [esi+0x84]
	jz PC_Directive_endif_20
PC_Directive_endif_10:
	mov dword [esp+0x4], _cstring_misplaced_endif
	mov [esp], esi
	call SourceError
	xor eax, eax
PC_Directive_endif_30:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
PC_Directive_endif_20:
	mov ebx, [edx]
	mov eax, [edx+0xc]
	mov [esi+0x94], eax
	xor eax, eax
	cmp dword [edx+0x4], 0x0
	setnz al
	sub [esi+0x98], eax
	mov [esp], edx
	call FreeMemory
	test ebx, ebx
	jz PC_Directive_endif_10
	mov eax, 0x1
	jmp PC_Directive_endif_30


;PC_Directive_error(source_s*)
PC_Directive_error:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x450
	mov ebx, [ebp+0x8]
	lea esi, [ebp-0x448]
	mov byte [ebp-0x448], 0x0
	mov [esp+0x4], esi
	mov [esp], ebx
	call PC_ReadSourceToken
	mov eax, [ebx+0x98]
	test eax, eax
	jz PC_Directive_error_10
	mov eax, 0x1
	add esp, 0x450
	pop ebx
	pop esi
	pop ebp
	ret
PC_Directive_error_10:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_error_directive_
	mov [esp], ebx
	call SourceError
	xor eax, eax
	add esp, 0x450
	pop ebx
	pop esi
	pop ebp
	ret
	add [eax], al


;PC_Directive_ifdef(source_s*)
PC_Directive_ifdef:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], 0x8
	mov eax, [ebp+0x8]
	mov [esp], eax
	call PC_Directive_if_def
	leave
	ret
	nop


;PC_Directive_undef(source_s*)
PC_Directive_undef:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x46c
	mov esi, [ebp+0x8]
	mov eax, [esi+0x98]
	test eax, eax
	jle PC_Directive_undef_10
PC_Directive_undef_70:
	mov eax, 0x1
PC_Directive_undef_50:
	add esp, 0x46c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PC_Directive_undef_10:
	xor ecx, ecx
	lea edx, [ebp-0x458]
	mov eax, esi
	call PC_ReadLine
	test eax, eax
	jz PC_Directive_undef_20
	cmp dword [ebp-0x58], 0x4
	jz PC_Directive_undef_30
	mov dword [esp], 0x440
	call GetMemory
	mov ebx, eax
	test eax, eax
	jz PC_Directive_undef_40
	mov dword [esp+0x8], 0x440
	lea eax, [ebp-0x458]
	mov [esp+0x4], eax
	mov [esp], ebx
	call memcpy
	mov dword [ebx+0x430], 0x0
	add dword [numtokens], 0x1
PC_Directive_undef_210:
	mov eax, [esi+0x88]
	mov [ebx+0x430], eax
	mov [esi+0x88], ebx
	lea edx, [ebp-0x458]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_expected_name_fo
	mov [esp], esi
	call SourceError
	xor eax, eax
	jmp PC_Directive_undef_50
PC_Directive_undef_30:
	movzx eax, byte [ebp-0x458]
	test al, al
	jnz PC_Directive_undef_60
	xor ecx, ecx
	xor eax, eax
	xor edx, edx
PC_Directive_undef_120:
	xor ecx, eax
	xor edx, ecx
	and edx, 0x3ff
	mov eax, [esi+0x90]
	lea edx, [eax+edx*4]
	mov [ebp-0x45c], edx
	mov ebx, [edx]
	test ebx, ebx
	jz PC_Directive_undef_70
	xor edi, edi
	jmp PC_Directive_undef_80
PC_Directive_undef_100:
	mov edi, ebx
	mov ebx, eax
PC_Directive_undef_80:
	lea eax, [ebp-0x458]
	mov [esp+0x4], eax
	mov eax, [ebx]
	mov [esp], eax
	call strcmp
	test eax, eax
	jz PC_Directive_undef_90
	mov eax, [ebx+0x1c]
	test eax, eax
	jnz PC_Directive_undef_100
	jmp PC_Directive_undef_70
PC_Directive_undef_20:
	mov dword [esp+0x4], _cstring_undef_without_na
	mov [esp], esi
	call SourceError
	xor eax, eax
	jmp PC_Directive_undef_50
PC_Directive_undef_60:
	xor ecx, ecx
	mov edx, 0x77
PC_Directive_undef_110:
	movsx eax, al
	imul eax, edx
	add ecx, eax
	movzx eax, byte [edx+ebp-0x4ce]
	add edx, 0x1
	test al, al
	jnz PC_Directive_undef_110
	mov eax, ecx
	sar eax, 0xa
	mov edx, ecx
	sar edx, 0x14
	jmp PC_Directive_undef_120
PC_Directive_undef_90:
	test byte [ebx+0x4], 0x1
	jnz PC_Directive_undef_130
	test edi, edi
	jz PC_Directive_undef_140
	mov eax, [ebx+0x1c]
	mov [edi+0x1c], eax
PC_Directive_undef_220:
	mov eax, [ebx+0x10]
	test eax, eax
	jnz PC_Directive_undef_150
	jmp PC_Directive_undef_160
PC_Directive_undef_170:
	mov eax, esi
PC_Directive_undef_150:
	mov esi, [eax+0x430]
	mov [esp], eax
	call FreeMemory
	sub dword [numtokens], 0x1
	test esi, esi
	jnz PC_Directive_undef_170
PC_Directive_undef_160:
	mov eax, [ebx+0x14]
	test eax, eax
	jnz PC_Directive_undef_180
	jmp PC_Directive_undef_190
PC_Directive_undef_200:
	mov eax, esi
PC_Directive_undef_180:
	mov esi, [eax+0x430]
	mov [esp], eax
	call FreeMemory
	sub dword [numtokens], 0x1
	test esi, esi
	jnz PC_Directive_undef_200
PC_Directive_undef_190:
	mov [esp], ebx
	call FreeMemory
	mov eax, 0x1
	jmp PC_Directive_undef_50
PC_Directive_undef_40:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call Com_Error
	jmp PC_Directive_undef_210
PC_Directive_undef_130:
	lea eax, [ebp-0x458]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_cant_undef_s
	mov [esp], esi
	call SourceWarning
	jmp PC_Directive_undef_70
PC_Directive_undef_140:
	mov eax, [ebx+0x1c]
	mov edx, [ebp-0x45c]
	mov [edx], eax
	jmp PC_Directive_undef_220


;PC_ReadDefineParms(source_s*, define_s*, token_s**, int)
PC_ReadDefineParms:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x47c
	lea ebx, [ebp-0x458]
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call PC_ReadSourceToken
	test eax, eax
	jz PC_ReadDefineParms_10
	mov edx, [ebp+0xc]
	mov eax, [edx+0xc]
	cmp eax, [ebp+0x14]
	jg PC_ReadDefineParms_20
	test eax, eax
	jle PC_ReadDefineParms_30
	xor eax, eax
PC_ReadDefineParms_40:
	mov edx, [ebp+0x10]
	mov dword [edx+eax*4], 0x0
	add eax, 0x1
	mov edx, [ebp+0xc]
	cmp eax, [edx+0xc]
	jl PC_ReadDefineParms_40
PC_ReadDefineParms_30:
	mov ecx, 0x2
	cld
	mov esi, ebx
	mov edi, _cstring_1
	repe cmpsb
	mov eax, 0x0
	jz PC_ReadDefineParms_50
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
PC_ReadDefineParms_50:
	test eax, eax
	jnz PC_ReadDefineParms_60
	mov ecx, [ebp+0x14]
	test ecx, ecx
	jle PC_ReadDefineParms_70
	mov eax, [ebp+0xc]
	mov edx, [eax+0xc]
	test edx, edx
	jle PC_ReadDefineParms_80
	mov dword [ebp-0x460], 0x0
	mov dword [ebp-0x464], 0x0
	mov edx, [ebp-0x464]
PC_ReadDefineParms_280:
	mov eax, [ebp+0x10]
	lea edx, [eax+edx*4]
	mov [ebp-0x45c], edx
	mov dword [edx], 0x0
	mov dword [ebp-0x468], 0x1
	mov dword [ebp-0x46c], 0x0
	jmp PC_ReadDefineParms_90
PC_ReadDefineParms_160:
	add dword [ebp-0x460], 0x1
PC_ReadDefineParms_180:
	mov edx, [ebp-0x464]
	mov eax, [ebp+0xc]
	cmp [eax+0xc], edx
	jg PC_ReadDefineParms_100
PC_ReadDefineParms_200:
	mov dword [ebp-0x468], 0x0
PC_ReadDefineParms_90:
	mov [esp+0x4], ebx
	mov edx, [ebp+0x8]
	mov [esp], edx
	call PC_ReadSourceToken
	test eax, eax
	jz PC_ReadDefineParms_110
	mov edi, _cstring_3
	mov ecx, 0x2
	cld
	mov esi, ebx
	repe cmpsb
	mov edx, 0x0
	jz PC_ReadDefineParms_120
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
PC_ReadDefineParms_120:
	test edx, edx
	jnz PC_ReadDefineParms_130
	mov eax, [ebp-0x460]
	test eax, eax
	jz PC_ReadDefineParms_140
PC_ReadDefineParms_130:
	mov ecx, 0x2
	cld
	mov esi, ebx
	mov edi, _cstring_1
	repe cmpsb
	mov eax, 0x0
	jz PC_ReadDefineParms_150
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
PC_ReadDefineParms_150:
	test eax, eax
	jz PC_ReadDefineParms_160
	mov edi, _cstring_2
	mov ecx, 0x2
	cld
	mov esi, ebx
	repe cmpsb
	mov edx, 0x0
	jz PC_ReadDefineParms_170
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
PC_ReadDefineParms_170:
	test edx, edx
	jnz PC_ReadDefineParms_180
	mov eax, [ebp-0x460]
	test eax, eax
	jz PC_ReadDefineParms_190
	sub dword [ebp-0x460], 0x1
	mov edx, [ebp-0x464]
	mov eax, [ebp+0xc]
	cmp [eax+0xc], edx
	jle PC_ReadDefineParms_200
PC_ReadDefineParms_100:
	mov dword [esp], 0x440
	call GetMemory
	mov esi, eax
	test eax, eax
	jz PC_ReadDefineParms_210
	mov dword [esp+0x8], 0x440
	mov [esp+0x4], ebx
	mov [esp], eax
	call memcpy
	mov dword [esi+0x430], 0x0
	add dword [numtokens], 0x1
	mov dword [esi+0x430], 0x0
	mov edi, [ebp-0x46c]
	test edi, edi
	jz PC_ReadDefineParms_220
PC_ReadDefineParms_250:
	mov edx, [ebp-0x46c]
	mov [edx+0x430], esi
	mov [ebp-0x46c], esi
	jmp PC_ReadDefineParms_200
PC_ReadDefineParms_20:
	mov eax, [ebp+0x14]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_define_with_more
	mov edx, [ebp+0x8]
	mov [esp], edx
	call SourceError
	xor eax, eax
PC_ReadDefineParms_240:
	add esp, 0x47c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PC_ReadDefineParms_60:
	mov dword [esp], 0x440
	call GetMemory
	mov esi, eax
	test eax, eax
	jz PC_ReadDefineParms_230
	mov dword [esp+0x8], 0x440
	mov [esp+0x4], ebx
	mov [esp], eax
	call memcpy
	mov dword [esi+0x430], 0x0
	add dword [numtokens], 0x1
PC_ReadDefineParms_310:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x88]
	mov [esi+0x430], eax
	mov [edx+0x88], esi
PC_ReadDefineParms_10:
	mov edx, [ebp+0xc]
	mov eax, [edx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_define_s_missing
	mov eax, [ebp+0x8]
	mov [esp], eax
	call SourceError
	xor eax, eax
	add esp, 0x47c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PC_ReadDefineParms_80:
	mov edx, [ebp+0xc]
PC_ReadDefineParms_290:
	mov eax, [edx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_define_s_has_too
	mov eax, [ebp+0x8]
	mov [esp], eax
	call SourceWarning
	xor eax, eax
	jmp PC_ReadDefineParms_240
PC_ReadDefineParms_210:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call Com_Error
	mov dword [esi+0x430], 0x0
	mov edi, [ebp-0x46c]
	test edi, edi
	jnz PC_ReadDefineParms_250
PC_ReadDefineParms_220:
	mov eax, [ebp-0x45c]
	mov [eax], esi
	mov [ebp-0x46c], esi
	jmp PC_ReadDefineParms_200
PC_ReadDefineParms_110:
	mov edx, [ebp+0xc]
	mov eax, [edx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_define_s_incompl
	mov eax, [ebp+0x8]
	mov [esp], eax
	call SourceError
	xor eax, eax
	add esp, 0x47c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PC_ReadDefineParms_70:
	mov edx, [ebp+0xc]
	mov eax, [edx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_define_s_with_to
	mov eax, [ebp+0x8]
	mov [esp], eax
	call SourceError
	xor eax, eax
	add esp, 0x47c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PC_ReadDefineParms_140:
	mov eax, [ebp-0x468]
	test eax, eax
	jnz PC_ReadDefineParms_260
PC_ReadDefineParms_300:
	xor eax, eax
PC_ReadDefineParms_330:
	add dword [ebp-0x464], 0x1
	test eax, eax
	jnz PC_ReadDefineParms_270
	mov edx, [ebp-0x464]
	cmp [ebp+0x14], edx
	jz PC_ReadDefineParms_70
	mov eax, [ebp+0xc]
	cmp edx, [eax+0xc]
	jl PC_ReadDefineParms_280
	mov edx, eax
	jmp PC_ReadDefineParms_290
PC_ReadDefineParms_260:
	mov dword [esp+0x4], _cstring_too_many_commas
	mov edx, [ebp+0x8]
	mov [esp], edx
	call SourceWarning
	jmp PC_ReadDefineParms_300
PC_ReadDefineParms_230:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call Com_Error
	jmp PC_ReadDefineParms_310
PC_ReadDefineParms_190:
	mov edx, [ebp+0xc]
	mov eax, [edx+0xc]
	mov edx, [ebp+0x10]
	mov eax, [edx+eax*4-0x4]
	test eax, eax
	jz PC_ReadDefineParms_320
	mov eax, 0x1
	jmp PC_ReadDefineParms_330
PC_ReadDefineParms_270:
	mov eax, 0x1
	jmp PC_ReadDefineParms_240
PC_ReadDefineParms_320:
	mov edx, [ebp+0xc]
	mov eax, [edx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_too_few_define_p
	mov eax, [ebp+0x8]
	mov [esp], eax
	call SourceWarning
	mov eax, 0x1
	jmp PC_ReadDefineParms_330


;PC_ReadSourceToken(source_s*, token_s*)
PC_ReadSourceToken:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov eax, [ebx+0x88]
	test eax, eax
	jz PC_ReadSourceToken_10
PC_ReadSourceToken_30:
	mov dword [esp+0x8], 0x440
	mov [esp+0x4], eax
	mov [esp], esi
	call memcpy
	mov edx, [ebx+0x88]
	mov eax, [edx+0x430]
	mov [ebx+0x88], eax
	mov [esp], edx
	call FreeMemory
	sub dword [numtokens], 0x1
PC_ReadSourceToken_40:
	mov eax, 0x1
PC_ReadSourceToken_20:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
PC_ReadSourceToken_50:
	mov edx, [ebx+0x84]
	mov eax, [edx+0x4c0]
	test eax, eax
	jz PC_ReadSourceToken_20
	mov [ebx+0x84], eax
	mov [esp], edx
	call FreeScript
	mov eax, [ebx+0x88]
	test eax, eax
	jnz PC_ReadSourceToken_30
PC_ReadSourceToken_10:
	mov [esp+0x4], esi
	mov eax, [ebx+0x84]
	mov [esp], eax
	call PS_ReadToken
	test eax, eax
	jnz PC_ReadSourceToken_40
	mov eax, [ebx+0x84]
	mov [esp], eax
	call EndOfScript
	test eax, eax
	jz PC_ReadSourceToken_50
	mov edx, [ebx+0x94]
PC_ReadSourceToken_60:
	test edx, edx
	jz PC_ReadSourceToken_50
	mov eax, [edx+0x8]
	cmp eax, [ebx+0x84]
	jnz PC_ReadSourceToken_50
	mov dword [esp+0x4], _cstring_missing_endif
	mov [esp], ebx
	call SourceWarning
	mov edx, [ebx+0x94]
	mov ecx, edx
	test edx, edx
	jz PC_ReadSourceToken_50
	mov eax, [edx+0x8]
	cmp eax, [ebx+0x84]
	jnz PC_ReadSourceToken_60
	mov edx, [edx+0xc]
	mov [ebx+0x94], edx
	xor eax, eax
	cmp dword [ecx+0x4], 0x0
	setnz al
	sub [ebx+0x98], eax
	mov [esp], ecx
	call FreeMemory
	mov edx, [ebx+0x94]
	jmp PC_ReadSourceToken_60
	nop


;PC_ReadTokenHandle(int, pc_token_s*)
PC_ReadTokenHandle:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x46c
	mov edx, [ebp+0x8]
	mov esi, [ebp+0xc]
	lea eax, [edx-0x1]
	cmp eax, 0x3e
	ja PC_ReadTokenHandle_10
	mov eax, [edx*4+sourceFiles]
	test eax, eax
	jz PC_ReadTokenHandle_10
	lea ebx, [ebp-0x458]
	mov [esp+0x4], ebx
	mov [esp], eax
	call PC_ReadToken
	mov edi, eax
	lea eax, [esi+0x10]
	mov [ebp-0x460], eax
	mov [esp+0x4], ebx
	mov [esp], eax
	call strcpy
	mov eax, [ebp-0x58]
	mov [esi], eax
	mov eax, [ebp-0x54]
	mov [esi+0x4], eax
	mov eax, [ebp-0x50]
	mov [esi+0x8], eax
	fld tword [ebp-0x48]
	fstp dword [esi+0xc]
	cmp dword [esi], 0x1
	jz PC_ReadTokenHandle_20
	mov eax, edi
	add esp, 0x46c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PC_ReadTokenHandle_10:
	xor edi, edi
	mov eax, edi
	add esp, 0x46c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PC_ReadTokenHandle_20:
	mov eax, [ebp-0x460]
	mov [esp], eax
	call StripDoubleQuotes
	mov eax, edi
	add esp, 0x46c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop
	add [eax], al


;PC_StringizeTokens(token_s*, token_s*)
PC_StringizeTokens:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov dword [esi+0x400], 0x1
	mov dword [esi+0x420], 0x0
	mov dword [esi+0x424], 0x0
	mov byte [esi], 0x0
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, esi
	repne scasb
	not ecx
	mov word [ecx+esi-0x1], 0x22
	test edx, edx
	jz PC_StringizeTokens_10
	mov ebx, edx
PC_StringizeTokens_20:
	cld
	mov ecx, 0xffffffff
	mov edi, esi
	xor eax, eax
	repne scasb
	not ecx
	sub ecx, 0x1
	mov eax, 0x400
	sub eax, ecx
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], esi
	call strncat
	mov ebx, [ebx+0x430]
	test ebx, ebx
	jnz PC_StringizeTokens_20
PC_StringizeTokens_10:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, esi
	repne scasb
	not ecx
	mov eax, 0x401
	sub eax, ecx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_4
	mov [esp], esi
	call strncat
	mov eax, 0x1
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop
	add [eax], al


;PC_DefineFromString(char const*)
PC_DefineFromString:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4fc
	mov ebx, [ebp+0x8]
	mov dword [esp+0x8], _cstring_extern
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, ebx
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [esp+0x4], ecx
	mov [esp], ebx
	call LoadScriptMemory
	mov edi, eax
	lea ebx, [ebp-0x4f8]
	mov dword [esp+0x8], 0x4e0
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call memset
	mov dword [ebp-0x4f8], 0x7478652a
	mov dword [ebp-0x4f4], g_fileBuf+0x6f265
	mov dword [ebp-0x4f0], 0x0
	mov dword [ebp-0x4ec], 0x0
	mov dword [ebp-0x4e8], 0x0
	mov dword [ebp-0x4e4], 0x0
	mov dword [ebp-0x4e0], 0x0
	mov dword [ebp-0x4dc], 0x0
	mov dword [ebp-0x4d8], 0x0
	mov dword [ebp-0x4d4], 0x0
	mov dword [ebp-0x4d0], 0x0
	mov dword [ebp-0x4cc], 0x0
	mov dword [ebp-0x4c8], 0x0
	mov dword [ebp-0x4c4], 0x0
	mov dword [ebp-0x4c0], 0x0
	mov dword [ebp-0x4bc], 0x0
	mov [ebp-0x474], edi
	mov dword [esp], 0x1000
	call GetClearedMemory
	mov [ebp-0x468], eax
	mov [esp], ebx
	call PC_Directive_define
	mov ebx, eax
	mov eax, [ebp-0x470]
	mov edx, eax
	test eax, eax
	jz PC_DefineFromString_10
PC_DefineFromString_20:
	mov eax, [eax+0x430]
	mov [ebp-0x470], eax
	mov [esp], edx
	call FreeMemory
	sub dword [numtokens], 0x1
	mov eax, [ebp-0x470]
	mov edx, eax
	test eax, eax
	jnz PC_DefineFromString_20
PC_DefineFromString_10:
	mov ecx, [ebp-0x468]
	xor edx, edx
	jmp PC_DefineFromString_30
PC_DefineFromString_50:
	add edx, 0x4
	cmp edx, 0x1000
	jz PC_DefineFromString_40
PC_DefineFromString_30:
	lea eax, [edx+ecx]
	mov esi, [eax]
	test esi, esi
	jz PC_DefineFromString_50
	mov esi, [eax]
PC_DefineFromString_150:
	mov [esp], ecx
	call FreeMemory
	mov [esp], edi
	call FreeScript
	test ebx, ebx
	jle PC_DefineFromString_60
PC_DefineFromString_80:
	mov eax, esi
	add esp, 0x4fc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PC_DefineFromString_60:
	mov ebx, [ebp-0x46c]
	test ebx, ebx
	jnz PC_DefineFromString_70
	xor esi, esi
	jmp PC_DefineFromString_80
PC_DefineFromString_70:
	mov eax, [esi+0x10]
	test eax, eax
	jnz PC_DefineFromString_90
	jmp PC_DefineFromString_100
PC_DefineFromString_110:
	mov eax, ebx
PC_DefineFromString_90:
	mov ebx, [eax+0x430]
	mov [esp], eax
	call FreeMemory
	sub dword [numtokens], 0x1
	test ebx, ebx
	jnz PC_DefineFromString_110
PC_DefineFromString_100:
	mov eax, [esi+0x14]
	test eax, eax
	jnz PC_DefineFromString_120
	jmp PC_DefineFromString_130
PC_DefineFromString_140:
	mov eax, ebx
PC_DefineFromString_120:
	mov ebx, [eax+0x430]
	mov [esp], eax
	call FreeMemory
	sub dword [numtokens], 0x1
	test ebx, ebx
	jnz PC_DefineFromString_140
PC_DefineFromString_130:
	mov [esp], esi
	call FreeMemory
	xor esi, esi
	jmp PC_DefineFromString_80
PC_DefineFromString_40:
	xor esi, esi
	jmp PC_DefineFromString_150
	nop


;PC_Directive_define(source_s*)
PC_Directive_define:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8dc
	mov eax, [ebp+0x8]
	mov ecx, [eax+0x98]
	test ecx, ecx
	jle PC_Directive_define_10
PC_Directive_define_110:
	mov eax, 0x1
PC_Directive_define_50:
	add esp, 0x8dc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PC_Directive_define_10:
	xor ecx, ecx
	lea edx, [ebp-0x458]
	call PC_ReadLine
	test eax, eax
	jz PC_Directive_define_20
	cmp dword [ebp-0x58], 0x4
	jz PC_Directive_define_30
	mov dword [esp], 0x440
	call GetMemory
	mov esi, eax
	test eax, eax
	jz PC_Directive_define_40
	mov dword [esp+0x8], 0x440
	lea ecx, [ebp-0x458]
	mov [esp+0x4], ecx
	mov [esp], eax
	call memcpy
	mov dword [esi+0x430], 0x0
	add dword [numtokens], 0x1
PC_Directive_define_470:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x88]
	mov [esi+0x430], eax
	mov [edx+0x88], esi
	lea ecx, [ebp-0x458]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_expected_name_af
	mov [esp], edx
	call SourceError
	xor eax, eax
	jmp PC_Directive_define_50
PC_Directive_define_30:
	mov esi, [ebp+0x8]
	mov ebx, [esi+0x90]
	movzx eax, byte [ebp-0x458]
	test al, al
	jnz PC_Directive_define_60
	xor ecx, ecx
	xor eax, eax
	xor edx, edx
PC_Directive_define_200:
	xor eax, ecx
	xor eax, edx
	and eax, 0x3ff
	mov esi, [ebx+eax*4]
	test esi, esi
	jz PC_Directive_define_70
PC_Directive_define_90:
	lea eax, [ebp-0x458]
	mov [esp+0x4], eax
	mov eax, [esi]
	mov [esp], eax
	call strcmp
	test eax, eax
	jz PC_Directive_define_80
	mov esi, [esi+0x1c]
	test esi, esi
	jnz PC_Directive_define_90
PC_Directive_define_70:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	lea edi, [ebp-0x458]
	repne scasb
	not ecx
	add ecx, 0x20
	mov [esp], ecx
	call GetMemory
	mov [ebp-0x89c], eax
	cld
	mov ecx, 0x8
	xor eax, eax
	mov edi, [ebp-0x89c]
	rep stosd
	mov eax, [ebp-0x89c]
	add eax, 0x20
	mov edx, [ebp-0x89c]
	mov [edx], eax
	lea ecx, [ebp-0x458]
	mov [esp+0x4], ecx
	mov [esp], eax
	call strcpy
	mov esi, [ebp+0x8]
	mov ebx, [esi+0x90]
	mov eax, [ebp-0x89c]
	mov ecx, [eax]
	movzx eax, byte [ecx]
	test al, al
	jnz PC_Directive_define_100
	xor esi, esi
	xor edx, edx
	xor eax, eax
PC_Directive_define_450:
	xor edx, esi
	xor eax, edx
	and eax, 0x3ff
	lea eax, [ebx+eax*4]
	mov edx, [eax]
	mov ecx, [ebp-0x89c]
	mov [ecx+0x1c], edx
	mov [eax], ecx
	xor ecx, ecx
	lea edx, [ebp-0x458]
	mov eax, [ebp+0x8]
	call PC_ReadLine
	test eax, eax
	jz PC_Directive_define_110
	mov eax, [ebp-0x34]
	sub eax, [ebp-0x38]
	test eax, eax
	jle PC_Directive_define_120
PC_Directive_define_220:
	xor ebx, ebx
	jmp PC_Directive_define_130
PC_Directive_define_170:
	mov dword [esp+0x8], 0x440
	lea edx, [ebp-0x458]
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	mov dword [esi+0x430], 0x0
	add dword [numtokens], 0x1
PC_Directive_define_180:
	cmp dword [esi+0x400], 0x4
	jz PC_Directive_define_140
PC_Directive_define_400:
	mov dword [esi+0x420], 0x0
	mov dword [esi+0x424], 0x0
	mov dword [esi+0x42c], 0x0
	mov dword [esi+0x430], 0x0
	test ebx, ebx
	jz PC_Directive_define_150
	mov [ebx+0x430], esi
	mov ebx, esi
PC_Directive_define_390:
	xor ecx, ecx
	lea edx, [ebp-0x458]
	mov eax, [ebp+0x8]
	call PC_ReadLine
	test eax, eax
	jz PC_Directive_define_160
PC_Directive_define_130:
	mov dword [esp], 0x440
	call GetMemory
	mov esi, eax
	test eax, eax
	jnz PC_Directive_define_170
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call Com_Error
	jmp PC_Directive_define_180
PC_Directive_define_20:
	mov dword [esp+0x4], _cstring_define_without_n
	mov edx, [ebp+0x8]
	mov [esp], edx
	call SourceError
	xor eax, eax
	jmp PC_Directive_define_50
PC_Directive_define_60:
	xor ecx, ecx
	mov edx, 0x77
PC_Directive_define_190:
	movsx eax, al
	imul eax, edx
	add ecx, eax
	movzx eax, byte [edx+ebp-0x4ce]
	add edx, 0x1
	test al, al
	jnz PC_Directive_define_190
	mov eax, ecx
	sar eax, 0xa
	mov edx, ecx
	sar edx, 0x14
	jmp PC_Directive_define_200
PC_Directive_define_120:
	mov edi, _cstring_1
	mov ecx, 0x2
	cld
	lea esi, [ebp-0x458]
	repe cmpsb
	mov edx, 0x0
	jz PC_Directive_define_210
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
PC_Directive_define_210:
	test edx, edx
	jnz PC_Directive_define_220
	lea esi, [ebp-0x898]
	mov [esp+0x4], esi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call PC_ReadToken
	test eax, eax
	jnz PC_Directive_define_230
PC_Directive_define_570:
	xor edi, edi
PC_Directive_define_360:
	xor ecx, ecx
	lea edx, [ebp-0x458]
	mov eax, [ebp+0x8]
	call PC_ReadLine
	test eax, eax
	jz PC_Directive_define_240
	cmp dword [ebp-0x58], 0x4
	jnz PC_Directive_define_250
	mov esi, [ebp-0x89c]
	mov ebx, [esi+0x10]
	test ebx, ebx
	jz PC_Directive_define_260
	xor esi, esi
PC_Directive_define_280:
	lea eax, [ebp-0x458]
	mov [esp+0x4], eax
	mov [esp], ebx
	call strcmp
	test eax, eax
	jz PC_Directive_define_270
	add esi, 0x1
	mov ebx, [ebx+0x430]
	test ebx, ebx
	jnz PC_Directive_define_280
PC_Directive_define_260:
	mov dword [esp], 0x440
	call GetMemory
	mov ebx, eax
	test eax, eax
	jz PC_Directive_define_290
	mov dword [esp+0x8], 0x440
	lea edx, [ebp-0x458]
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	mov dword [ebx+0x430], 0x0
	add dword [numtokens], 0x1
PC_Directive_define_550:
	mov dword [ebx+0x420], 0x0
	mov dword [ebx+0x424], 0x0
	mov dword [ebx+0x42c], 0x0
	mov dword [ebx+0x430], 0x0
	test edi, edi
	jz PC_Directive_define_300
	mov [edi+0x430], ebx
PC_Directive_define_540:
	mov esi, [ebp-0x89c]
	add dword [esi+0xc], 0x1
	xor ecx, ecx
	lea edx, [ebp-0x458]
	mov eax, [ebp+0x8]
	call PC_ReadLine
	test eax, eax
	jz PC_Directive_define_310
	mov edi, _cstring_2
	mov ecx, 0x2
	cld
	lea esi, [ebp-0x458]
	repe cmpsb
	mov edx, 0x0
	jz PC_Directive_define_320
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
PC_Directive_define_320:
	test edx, edx
	jz PC_Directive_define_330
	mov edi, _cstring_3
	mov ecx, 0x2
	lea esi, [ebp-0x458]
	repe cmpsb
	mov edx, 0x0
	jz PC_Directive_define_340
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
PC_Directive_define_340:
	test edx, edx
	jnz PC_Directive_define_350
	mov edi, ebx
	jmp PC_Directive_define_360
PC_Directive_define_230:
	mov edi, _cstring_2
	mov ecx, 0x2
	cld
	repe cmpsb
	mov edx, 0x0
	jz PC_Directive_define_370
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
PC_Directive_define_370:
	test edx, edx
	jnz PC_Directive_define_380
PC_Directive_define_330:
	xor ecx, ecx
	lea edx, [ebp-0x458]
	mov eax, [ebp+0x8]
	call PC_ReadLine
	test eax, eax
	jnz PC_Directive_define_220
	jmp PC_Directive_define_110
PC_Directive_define_150:
	mov eax, [ebp-0x89c]
	mov [eax+0x14], esi
	mov ebx, esi
	jmp PC_Directive_define_390
PC_Directive_define_140:
	mov ecx, [ebp-0x89c]
	mov eax, [ecx]
	mov [esp+0x4], eax
	mov [esp], esi
	call strcmp
	test eax, eax
	jnz PC_Directive_define_400
	mov dword [esp+0x4], _cstring_recursive_define
	mov esi, [ebp+0x8]
	mov [esp], esi
	call SourceError
	jmp PC_Directive_define_390
PC_Directive_define_160:
	test ebx, ebx
	jz PC_Directive_define_110
	mov edx, [ebp-0x89c]
	mov edx, [edx+0x14]
	mov ecx, 0x3
	cld
	mov esi, edx
	mov edi, _cstring_5
	repe cmpsb
	mov eax, 0x0
	jz PC_Directive_define_410
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
PC_Directive_define_410:
	test eax, eax
	jz PC_Directive_define_420
	mov ecx, 0x3
	mov esi, ebx
	mov edi, _cstring_5
	repe cmpsb
	mov eax, 0x0
	jz PC_Directive_define_430
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
PC_Directive_define_430:
	test eax, eax
	jnz PC_Directive_define_110
PC_Directive_define_420:
	mov dword [esp+0x4], _cstring_define_with_misp
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call SourceError
	xor eax, eax
	jmp PC_Directive_define_50
PC_Directive_define_100:
	xor esi, esi
	mov edx, 0x77
PC_Directive_define_440:
	movsx eax, al
	imul eax, edx
	add esi, eax
	movzx eax, byte [ecx+edx-0x76]
	add edx, 0x1
	test al, al
	jnz PC_Directive_define_440
	mov edx, esi
	sar edx, 0xa
	mov eax, esi
	sar eax, 0x14
	jmp PC_Directive_define_450
PC_Directive_define_80:
	test byte [esi+0x4], 0x1
	jz PC_Directive_define_460
	lea edx, [ebp-0x458]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_cant_redefine_s
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call SourceError
	xor eax, eax
	jmp PC_Directive_define_50
PC_Directive_define_40:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call Com_Error
	jmp PC_Directive_define_470
PC_Directive_define_460:
	lea esi, [ebp-0x458]
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_redefinition_of_
	mov eax, [ebp+0x8]
	mov [esp], eax
	call SourceWarning
	mov dword [esp], 0x440
	call GetMemory
	mov ebx, eax
	test eax, eax
	jz PC_Directive_define_480
	mov dword [esp+0x8], 0x440
	lea edx, [ebp-0x458]
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	mov dword [ebx+0x430], 0x0
	add dword [numtokens], 0x1
PC_Directive_define_530:
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x88]
	mov [ebx+0x430], eax
	mov [ecx+0x88], ebx
	mov [esp], ecx
	call PC_Directive_undef
	test eax, eax
	jz PC_Directive_define_50
	mov esi, [ebp+0x8]
	mov ebx, [esi+0x90]
	movzx eax, byte [ebp-0x458]
	test al, al
	jnz PC_Directive_define_490
	xor ecx, ecx
	xor edx, edx
	xor eax, eax
PC_Directive_define_520:
	xor edx, ecx
	xor eax, edx
	and eax, 0x3ff
	mov ebx, [ebx+eax*4]
	test ebx, ebx
	jz PC_Directive_define_70
PC_Directive_define_500:
	lea eax, [ebp-0x458]
	mov [esp+0x4], eax
	mov eax, [ebx]
	mov [esp], eax
	call strcmp
	test eax, eax
	jz PC_Directive_define_70
	mov ebx, [ebx+0x1c]
	test ebx, ebx
	jnz PC_Directive_define_500
	jmp PC_Directive_define_70
PC_Directive_define_490:
	xor ecx, ecx
	mov edx, 0x77
PC_Directive_define_510:
	movsx eax, al
	imul eax, edx
	add ecx, eax
	movzx eax, byte [edx+ebp-0x4ce]
	add edx, 0x1
	test al, al
	jnz PC_Directive_define_510
	mov edx, ecx
	sar edx, 0xa
	mov eax, ecx
	sar eax, 0x14
	jmp PC_Directive_define_520
PC_Directive_define_480:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call Com_Error
	jmp PC_Directive_define_530
PC_Directive_define_270:
	test esi, esi
	js PC_Directive_define_260
	mov dword [esp+0x4], _cstring_two_of_the_same_
	mov edx, [ebp+0x8]
	mov [esp], edx
	call SourceError
	xor eax, eax
	jmp PC_Directive_define_50
PC_Directive_define_300:
	mov ecx, [ebp-0x89c]
	mov [ecx+0x10], ebx
	jmp PC_Directive_define_540
PC_Directive_define_290:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call Com_Error
	jmp PC_Directive_define_550
PC_Directive_define_350:
	mov dword [esp+0x4], _cstring_define_not_termi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call SourceError
	xor eax, eax
	jmp PC_Directive_define_50
PC_Directive_define_380:
	mov dword [esp], 0x440
	call GetMemory
	mov ebx, eax
	test eax, eax
	jz PC_Directive_define_560
	mov dword [esp+0x8], 0x440
	lea edx, [ebp-0x898]
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	mov dword [ebx+0x430], 0x0
	add dword [numtokens], 0x1
PC_Directive_define_580:
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x88]
	mov [ebx+0x430], eax
	mov [ecx+0x88], ebx
	jmp PC_Directive_define_570
PC_Directive_define_310:
	mov dword [esp+0x4], _cstring_define_parameter
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call SourceError
	xor eax, eax
	jmp PC_Directive_define_50
PC_Directive_define_560:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call Com_Error
	jmp PC_Directive_define_580
PC_Directive_define_250:
	mov dword [esp+0x4], _cstring_invalid_define_p
	mov eax, [ebp+0x8]
	mov [esp], eax
	call SourceError
	xor eax, eax
	jmp PC_Directive_define_50
PC_Directive_define_240:
	mov dword [esp+0x4], _cstring_expected_define_
	mov esi, [ebp+0x8]
	mov [esp], esi
	call SourceError
	xor eax, eax
	jmp PC_Directive_define_50


;PC_Directive_if_def(source_s*, int)
PC_Directive_if_def:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x45c
	mov edi, [ebp+0x8]
	xor ecx, ecx
	lea edx, [ebp-0x458]
	mov eax, edi
	call PC_ReadLine
	test eax, eax
	jz PC_Directive_if_def_10
	cmp dword [ebp-0x58], 0x4
	jz PC_Directive_if_def_20
	mov dword [esp], 0x440
	call GetMemory
	mov ebx, eax
	test eax, eax
	jz PC_Directive_if_def_30
	mov dword [esp+0x8], 0x440
	lea eax, [ebp-0x458]
	mov [esp+0x4], eax
	mov [esp], ebx
	call memcpy
	mov dword [ebx+0x430], 0x0
	add dword [numtokens], 0x1
PC_Directive_if_def_100:
	mov eax, [edi+0x88]
	mov [ebx+0x430], eax
	mov [edi+0x88], ebx
	lea edx, [ebp-0x458]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_expected_name_af1
	mov [esp], edi
	call SourceError
	xor eax, eax
	add esp, 0x45c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PC_Directive_if_def_20:
	mov ebx, [edi+0x90]
	movzx eax, byte [ebp-0x458]
	test al, al
	jnz PC_Directive_if_def_40
	xor ecx, ecx
	xor edx, edx
	xor eax, eax
PC_Directive_if_def_90:
	xor ecx, edx
	xor eax, ecx
	and eax, 0x3ff
	mov esi, [ebx+eax*4]
	test esi, esi
	jz PC_Directive_if_def_50
PC_Directive_if_def_70:
	lea eax, [ebp-0x458]
	mov [esp+0x4], eax
	mov eax, [esi]
	mov [esp], eax
	call strcmp
	test eax, eax
	jz PC_Directive_if_def_60
	mov esi, [esi+0x1c]
	test esi, esi
	jnz PC_Directive_if_def_70
PC_Directive_if_def_50:
	xor esi, esi
PC_Directive_if_def_60:
	cmp dword [ebp+0xc], 0x8
	setnz bl
	test esi, esi
	setz al
	xor bl, al
	movzx ebx, bl
	mov dword [esp], 0x10
	call GetMemory
	mov edx, [ebp+0xc]
	mov [eax], edx
	mov edx, [edi+0x84]
	mov [eax+0x8], edx
	mov [eax+0x4], ebx
	add [edi+0x98], ebx
	mov edx, [edi+0x94]
	mov [eax+0xc], edx
	mov [edi+0x94], eax
	mov eax, 0x1
	add esp, 0x45c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PC_Directive_if_def_10:
	mov dword [esp+0x4], _cstring_ifdef_without_na
	mov [esp], edi
	call SourceError
	xor eax, eax
	add esp, 0x45c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PC_Directive_if_def_40:
	xor ecx, ecx
	mov edx, 0x77
PC_Directive_if_def_80:
	movsx eax, al
	imul eax, edx
	add ecx, eax
	movzx eax, byte [edx+ebp-0x4ce]
	add edx, 0x1
	test al, al
	jnz PC_Directive_if_def_80
	mov edx, ecx
	sar edx, 0xa
	mov eax, ecx
	sar eax, 0x14
	jmp PC_Directive_if_def_90
PC_Directive_if_def_30:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call Com_Error
	jmp PC_Directive_if_def_100


;PC_Directive_ifndef(source_s*)
PC_Directive_ifndef:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], 0x10
	mov eax, [ebp+0x8]
	mov [esp], eax
	call PC_Directive_if_def
	leave
	ret
	nop


;PC_Directive_pragma(source_s*)
PC_Directive_pragma:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x450
	mov esi, [ebp+0x8]
	mov dword [esp+0x4], _cstring_pragma_directive
	mov [esp], esi
	call SourceWarning
	lea ebx, [ebp-0x448]
PC_Directive_pragma_10:
	xor ecx, ecx
	mov edx, ebx
	mov eax, esi
	call PC_ReadLine
	test eax, eax
	jnz PC_Directive_pragma_10
	mov al, 0x1
	add esp, 0x450
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;PC_FreeSourceHandle(int)
PC_FreeSourceHandle:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	lea eax, [ebx-0x1]
	cmp eax, 0x3e
	ja PC_FreeSourceHandle_10
	mov eax, [ebx*4+sourceFiles]
	test eax, eax
	jz PC_FreeSourceHandle_10
	mov [esp], eax
	call FreeSource
	mov dword [ebx*4+sourceFiles], 0x0
	mov eax, 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret
PC_FreeSourceHandle_10:
	xor eax, eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop
	add [eax], al


;PC_LoadSourceHandle(char const*, char const**)
PC_LoadSourceHandle:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, [ebp+0xc]
	mov edi, 0x1
	mov eax, sourceFiles
	jmp PC_LoadSourceHandle_10
PC_LoadSourceHandle_30:
	add edi, 0x1
	add eax, 0x4
	cmp edi, 0x40
	jz PC_LoadSourceHandle_20
PC_LoadSourceHandle_10:
	mov edx, [eax+0x4]
	test edx, edx
	jnz PC_LoadSourceHandle_30
	mov eax, [ebp+0x8]
	mov [esp], eax
	call LoadSourceFile
	mov [ebp-0x24], eax
	test eax, eax
	jz PC_LoadSourceHandle_20
	test ebx, ebx
	jz PC_LoadSourceHandle_40
	mov eax, [ebx]
	test eax, eax
	jz PC_LoadSourceHandle_40
	mov [ebp-0x1c], ebx
	jmp PC_LoadSourceHandle_50
PC_LoadSourceHandle_70:
	xor esi, esi
	xor eax, eax
	xor edx, edx
PC_LoadSourceHandle_90:
	xor eax, esi
	xor eax, edx
	and eax, 0x3ff
	mov ecx, [ebp-0x20]
	lea edx, [ecx+eax*4]
	mov eax, [edx]
	mov [ebx+0x1c], eax
	mov [edx], ebx
PC_LoadSourceHandle_60:
	mov edx, [ebp-0x1c]
	mov eax, [edx+0x4]
	add edx, 0x4
	mov [ebp-0x1c], edx
	test eax, eax
	jz PC_LoadSourceHandle_40
PC_LoadSourceHandle_50:
	mov [esp], eax
	call PC_DefineFromString
	mov ebx, eax
	test eax, eax
	jz PC_LoadSourceHandle_60
	mov edx, [ebp-0x24]
	mov edx, [edx+0x90]
	mov [ebp-0x20], edx
	mov ecx, [eax]
	movzx eax, byte [ecx]
	test al, al
	jz PC_LoadSourceHandle_70
	xor esi, esi
	mov edx, 0x77
PC_LoadSourceHandle_80:
	movsx eax, al
	imul eax, edx
	add esi, eax
	movzx eax, byte [ecx+edx-0x76]
	add edx, 0x1
	test al, al
	jnz PC_LoadSourceHandle_80
	mov eax, esi
	sar eax, 0xa
	mov edx, esi
	sar edx, 0x14
	jmp PC_LoadSourceHandle_90
PC_LoadSourceHandle_40:
	mov ecx, [ebp-0x24]
	mov [edi*4+sourceFiles], ecx
	mov eax, edi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PC_LoadSourceHandle_20:
	xor edi, edi
	mov eax, edi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop
	add [eax], al


;PC_OperatorPriority(int)
PC_OperatorPriority:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	sub eax, 0x5
	cmp eax, 0x26
	ja PC_OperatorPriority_10
	jmp dword [eax*4+PC_OperatorPriority_jumptab_0]
PC_OperatorPriority_10:
	xor eax, eax
	pop ebp
	ret
PC_OperatorPriority_20:
	mov eax, 0x7
	pop ebp
	ret
PC_OperatorPriority_30:
	mov eax, 0x6
	pop ebp
	ret
PC_OperatorPriority_50:
	mov eax, 0xb
	pop ebp
	ret
PC_OperatorPriority_60:
	mov eax, 0xd
	pop ebp
	ret
PC_OperatorPriority_70:
	mov eax, 0xf
	pop ebp
	ret
PC_OperatorPriority_80:
	mov eax, 0xe
	pop ebp
	ret
PC_OperatorPriority_90:
	mov eax, 0xa
	pop ebp
	ret
PC_OperatorPriority_100:
	mov eax, 0x8
	pop ebp
	ret
PC_OperatorPriority_110:
	mov eax, 0x9
	pop ebp
	ret
PC_OperatorPriority_120:
	mov eax, 0x10
	pop ebp
	ret
PC_OperatorPriority_40:
	mov eax, 0xc
	pop ebp
	ret
PC_OperatorPriority_130:
	mov eax, 0x5
	pop ebp
	ret
	nop
	add [eax], al
	
	
PC_OperatorPriority_jumptab_0:
	dd PC_OperatorPriority_20
	dd PC_OperatorPriority_30
	dd PC_OperatorPriority_40
	dd PC_OperatorPriority_40
	dd PC_OperatorPriority_50
	dd PC_OperatorPriority_50
	dd PC_OperatorPriority_10
	dd PC_OperatorPriority_10
	dd PC_OperatorPriority_10
	dd PC_OperatorPriority_10
	dd PC_OperatorPriority_10
	dd PC_OperatorPriority_10
	dd PC_OperatorPriority_10
	dd PC_OperatorPriority_10
	dd PC_OperatorPriority_10
	dd PC_OperatorPriority_10
	dd PC_OperatorPriority_60
	dd PC_OperatorPriority_60
	dd PC_OperatorPriority_10
	dd PC_OperatorPriority_10
	dd PC_OperatorPriority_10
	dd PC_OperatorPriority_70
	dd PC_OperatorPriority_70
	dd PC_OperatorPriority_70
	dd PC_OperatorPriority_80
	dd PC_OperatorPriority_80
	dd PC_OperatorPriority_10
	dd PC_OperatorPriority_90
	dd PC_OperatorPriority_100
	dd PC_OperatorPriority_110
	dd PC_OperatorPriority_120
	dd PC_OperatorPriority_120
	dd PC_OperatorPriority_40
	dd PC_OperatorPriority_40
	dd PC_OperatorPriority_10
	dd PC_OperatorPriority_10
	dd PC_OperatorPriority_10
	dd PC_OperatorPriority_130
	dd PC_OperatorPriority_130


;PC_Directive_include(source_s*)
PC_Directive_include:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x49c
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x98]
	test eax, eax
	jle PC_Directive_include_10
PC_Directive_include_340:
	mov eax, 0x1
PC_Directive_include_160:
	add esp, 0x49c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PC_Directive_include_10:
	lea eax, [ebp-0x498]
	mov [esp+0x4], eax
	mov [esp], ebx
	call PC_ReadSourceToken
	test eax, eax
	jz PC_Directive_include_20
	mov eax, [ebp-0x6c]
	test eax, eax
	jle PC_Directive_include_30
PC_Directive_include_20:
	mov dword [esp+0x4], _cstring_include_without_
	mov [esp], ebx
	call SourceError
	xor eax, eax
	add esp, 0x49c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PC_Directive_include_30:
	mov eax, [ebp-0x98]
	cmp eax, 0x1
	jz PC_Directive_include_40
	cmp eax, 0x5
	jnz PC_Directive_include_20
	cmp byte [ebp-0x498], 0x3c
	jnz PC_Directive_include_20
	lea eax, [ebx+0x40]
	mov [esp+0x4], eax
	lea eax, [ebp-0x58]
	mov [esp], eax
	call strcpy
	jmp PC_Directive_include_50
PC_Directive_include_90:
	mov eax, [ebp-0x6c]
	test eax, eax
	jg PC_Directive_include_60
	cmp dword [ebp-0x98], 0x5
	jnz PC_Directive_include_70
	cmp byte [ebp-0x498], 0x3e
	jz PC_Directive_include_80
PC_Directive_include_70:
	mov dword [esp+0x8], 0x40
	lea eax, [ebp-0x498]
	mov [esp+0x4], eax
	lea eax, [ebp-0x58]
	mov [esp], eax
	call strncat
PC_Directive_include_50:
	lea eax, [ebp-0x498]
	mov [esp+0x4], eax
	mov [esp], ebx
	call PC_ReadSourceToken
	test eax, eax
	jnz PC_Directive_include_90
PC_Directive_include_360:
	cmp byte [ebp-0x498], 0x3e
	jz PC_Directive_include_80
	mov dword [esp+0x4], _cstring_include_missing_
	mov [esp], ebx
	call SourceWarning
PC_Directive_include_80:
	cmp byte [ebp-0x58], 0x0
	jz PC_Directive_include_100
	lea esi, [ebp-0x58]
PC_Directive_include_280:
	movzx eax, byte [esi]
	test al, al
	jz PC_Directive_include_110
PC_Directive_include_130:
	cmp al, 0x5c
	jz PC_Directive_include_120
	cmp al, 0x2f
	jz PC_Directive_include_120
	add esi, 0x1
	movzx eax, byte [esi]
	test al, al
	jnz PC_Directive_include_130
PC_Directive_include_110:
	movzx eax, byte [ebp-0x58]
	test al, al
	jnz PC_Directive_include_140
PC_Directive_include_390:
	lea eax, [ebp-0x58]
	mov [esp], eax
	call LoadScriptFile
	mov edi, eax
	test eax, eax
	jnz PC_Directive_include_150
	lea eax, [ebp-0x58]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_file_s_not_found
	mov [esp], ebx
	call SourceError
	xor eax, eax
	jmp PC_Directive_include_160
PC_Directive_include_40:
	lea eax, [ebp-0x498]
	mov [esp], eax
	call StripDoubleQuotes
	lea esi, [ebp-0x498]
PC_Directive_include_260:
	movzx eax, byte [esi]
	test al, al
	jz PC_Directive_include_170
PC_Directive_include_190:
	cmp al, 0x5c
	jz PC_Directive_include_180
	cmp al, 0x2f
	jz PC_Directive_include_180
	add esi, 0x1
	movzx eax, byte [esi]
	test al, al
	jnz PC_Directive_include_190
PC_Directive_include_170:
	movzx eax, byte [ebp-0x498]
	test al, al
	jnz PC_Directive_include_200
PC_Directive_include_310:
	lea eax, [ebp-0x498]
	mov [esp], eax
	call LoadScriptFile
	mov edi, eax
	test eax, eax
	jz PC_Directive_include_210
PC_Directive_include_150:
	mov eax, [ebx+0x84]
	mov esi, eax
	test eax, eax
	jz PC_Directive_include_220
PC_Directive_include_240:
	mov [esp+0x4], edi
	mov [esp], esi
	call Q_stricmp
	test eax, eax
	jz PC_Directive_include_230
	mov esi, [esi+0x4c0]
	test esi, esi
	jnz PC_Directive_include_240
	mov eax, [ebx+0x84]
PC_Directive_include_220:
	mov [edi+0x4c0], eax
	mov [ebx+0x84], edi
	mov eax, 0x1
	jmp PC_Directive_include_160
PC_Directive_include_180:
	lea edx, [esi+0x1]
	movzx eax, byte [esi+0x1]
	cmp al, 0x5c
	jz PC_Directive_include_250
	cmp al, 0x2f
	jz PC_Directive_include_250
	mov esi, edx
	jmp PC_Directive_include_260
PC_Directive_include_250:
	mov [esp+0x4], edx
	mov [esp], esi
	call strcpy
	jmp PC_Directive_include_260
PC_Directive_include_120:
	lea edx, [esi+0x1]
	movzx eax, byte [esi+0x1]
	cmp al, 0x5c
	jz PC_Directive_include_270
	cmp al, 0x2f
	jz PC_Directive_include_270
	mov esi, edx
	jmp PC_Directive_include_280
PC_Directive_include_270:
	mov [esp+0x4], edx
	mov [esp], esi
	call strcpy
	jmp PC_Directive_include_280
PC_Directive_include_200:
	lea edx, [ebp-0x498]
	jmp PC_Directive_include_290
PC_Directive_include_320:
	cmp al, 0x5c
	jz PC_Directive_include_300
PC_Directive_include_330:
	movzx eax, byte [edx+0x1]
	add edx, 0x1
	test al, al
	jz PC_Directive_include_310
PC_Directive_include_290:
	cmp al, 0x2f
	jnz PC_Directive_include_320
PC_Directive_include_300:
	mov byte [edx], 0x2f
	jmp PC_Directive_include_330
PC_Directive_include_230:
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_s_recursively_in
	mov [esp], ebx
	call SourceError
	jmp PC_Directive_include_340
PC_Directive_include_60:
	mov dword [esp], 0x440
	call GetMemory
	mov esi, eax
	test eax, eax
	jz PC_Directive_include_350
	mov dword [esp+0x8], 0x440
	lea eax, [ebp-0x498]
	mov [esp+0x4], eax
	mov [esp], esi
	call memcpy
	mov dword [esi+0x430], 0x0
	add dword [numtokens], 0x1
PC_Directive_include_420:
	mov eax, [ebx+0x88]
	mov [esi+0x430], eax
	mov [ebx+0x88], esi
	jmp PC_Directive_include_360
PC_Directive_include_140:
	lea edx, [ebp-0x58]
	jmp PC_Directive_include_370
PC_Directive_include_400:
	cmp al, 0x5c
	jz PC_Directive_include_380
PC_Directive_include_410:
	movzx eax, byte [edx+0x1]
	add edx, 0x1
	test al, al
	jz PC_Directive_include_390
PC_Directive_include_370:
	cmp al, 0x2f
	jnz PC_Directive_include_400
PC_Directive_include_380:
	mov byte [edx], 0x2f
	jmp PC_Directive_include_410
PC_Directive_include_100:
	mov dword [esp+0x4], _cstring_include_without_1
	mov [esp], ebx
	call SourceError
	xor eax, eax
	jmp PC_Directive_include_160
PC_Directive_include_210:
	lea eax, [ebx+0x40]
	mov [esp+0x4], eax
	lea eax, [ebp-0x58]
	mov [esp], eax
	call strcpy
	lea eax, [ebp-0x498]
	mov [esp+0x4], eax
	lea eax, [ebp-0x58]
	mov [esp], eax
	call strcat
	jmp PC_Directive_include_390
PC_Directive_include_350:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call Com_Error
	jmp PC_Directive_include_420
	add [eax], al


;PC_SourceFileAndLine(int, char*, int*)
PC_SourceFileAndLine:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov edx, [ebp+0x8]
	lea eax, [edx-0x1]
	cmp eax, 0x3e
	ja PC_SourceFileAndLine_10
	mov eax, [edx*4+sourceFiles]
	test eax, eax
	jz PC_SourceFileAndLine_10
	mov ebx, [eax+0x84]
	test ebx, ebx
	jz PC_SourceFileAndLine_20
	mov [esp+0x4], ebx
	mov eax, [ebp+0xc]
	mov [esp], eax
	call strcpy
	mov eax, [ebx+0x5c]
	mov edx, [ebp+0x10]
	mov [edx], eax
	mov eax, 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret
PC_SourceFileAndLine_10:
	xor eax, eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
PC_SourceFileAndLine_20:
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call strcpy
	mov edx, [ebp+0x10]
	mov dword [edx], 0x0
	mov eax, 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;PC_Directive_evalfloat(source_s*)
PC_Directive_evalfloat:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8ac
	mov esi, [ebp+0x8]
	lea ecx, [ebp-0x20]
	mov dword [esp], 0x0
	xor edx, edx
	mov eax, esi
	call PC_Evaluate
	test eax, eax
	jnz PC_Directive_evalfloat_10
	add esp, 0x8ac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PC_Directive_evalfloat_10:
	mov edx, [esi+0x84]
	mov eax, [edx+0x5c]
	mov [ebp-0x40], eax
	mov eax, [edx+0x44]
	mov [ebp-0x48], eax
	mov eax, [edx+0x44]
	mov [ebp-0x44], eax
	mov dword [ebp-0x3c], 0x0
	cvtsd2ss xmm0, [ebp-0x20]
	andps xmm0, [_data16_7fffffff]
	cvtss2sd xmm0, xmm0
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_12f
	lea edi, [ebp-0x468]
	mov [esp], edi
	call sprintf
	mov dword [ebp-0x68], 0x3
	mov dword [ebp-0x64], 0x2808
	mov dword [esp], 0x440
	call GetMemory
	mov ebx, eax
	test eax, eax
	jz PC_Directive_evalfloat_20
	mov dword [esp+0x8], 0x440
	mov [esp+0x4], edi
	mov [esp], eax
	call memcpy
	mov dword [ebx+0x430], 0x0
	add dword [numtokens], 0x1
PC_Directive_evalfloat_60:
	mov eax, [esi+0x88]
	mov [ebx+0x430], eax
	mov [esi+0x88], ebx
	pxor xmm0, xmm0
	ucomisd xmm0, [ebp-0x20]
	ja PC_Directive_evalfloat_30
	mov eax, 0x1
PC_Directive_evalfloat_50:
	add esp, 0x8ac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PC_Directive_evalfloat_30:
	mov edx, [esi+0x84]
	mov eax, [edx+0x5c]
	mov [ebp-0x480], eax
	mov eax, [edx+0x44]
	mov [ebp-0x488], eax
	mov eax, [edx+0x44]
	mov [ebp-0x484], eax
	mov dword [ebp-0x47c], 0x0
	lea edi, [ebp-0x8a8]
	mov word [ebp-0x8a8], 0x2d
	mov dword [ebp-0x4a8], 0x5
	mov dword [ebp-0x4a4], 0x1e
	mov dword [esp], 0x440
	call GetMemory
	mov ebx, eax
	test eax, eax
	jz PC_Directive_evalfloat_40
	mov dword [esp+0x8], 0x440
	mov [esp+0x4], edi
	mov [esp], eax
	call memcpy
	mov dword [ebx+0x430], 0x0
	add dword [numtokens], 0x1
PC_Directive_evalfloat_70:
	mov eax, [esi+0x88]
	mov [ebx+0x430], eax
	mov [esi+0x88], ebx
	mov eax, 0x1
	jmp PC_Directive_evalfloat_50
PC_Directive_evalfloat_20:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call Com_Error
	jmp PC_Directive_evalfloat_60
PC_Directive_evalfloat_40:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call Com_Error
	jmp PC_Directive_evalfloat_70


;PC_ExpandBuiltinDefine(source_s*, token_s*, define_s*, token_s**, token_s**)
PC_ExpandBuiltinDefine:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov ebx, [ebp+0xc]
	mov dword [esp], 0x440
	call GetMemory
	mov esi, eax
	test eax, eax
	jz PC_ExpandBuiltinDefine_10
	mov dword [esp+0x8], 0x440
	mov [esp+0x4], ebx
	mov [esp], eax
	call memcpy
	mov dword [esi+0x430], 0x0
	add dword [numtokens], 0x1
PC_ExpandBuiltinDefine_80:
	mov eax, [ebp+0x10]
	mov eax, [eax+0x8]
	cmp eax, 0x2
	jz PC_ExpandBuiltinDefine_20
	jg PC_ExpandBuiltinDefine_30
	sub eax, 0x1
	jz PC_ExpandBuiltinDefine_40
PC_ExpandBuiltinDefine_60:
	mov eax, [ebp+0x14]
	mov dword [eax], 0x0
	mov edx, [ebp+0x18]
	mov dword [edx], 0x0
PC_ExpandBuiltinDefine_70:
	mov eax, 0x1
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PC_ExpandBuiltinDefine_30:
	cmp eax, 0x3
	jz PC_ExpandBuiltinDefine_50
	cmp eax, 0x4
	jnz PC_ExpandBuiltinDefine_60
	mov dword [esp], 0x0
	call time
	mov [ebp-0x1c], eax
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call ctime
	mov [ebp-0x2c], eax
	mov word [esi], 0x22
	mov dword [esp+0x8], 0x8
	mov eax, [ebp-0x2c]
	add eax, 0xb
	mov [esp+0x4], eax
	mov [esp], esi
	call strncat
	xor ebx, ebx
	cld
	mov ecx, 0xffffffff
	mov edi, esi
	mov eax, ebx
	repne scasb
	not ecx
	mov word [ecx+esi-0x1], 0x22
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call free
	mov dword [esi+0x400], 0x4
	cld
	mov ecx, 0xffffffff
	mov edi, esi
	mov eax, ebx
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [esi+0x404], ecx
	mov edx, [ebp+0x14]
	mov [edx], esi
	mov edi, [ebp+0x18]
	mov [edi], esi
	jmp PC_ExpandBuiltinDefine_70
PC_ExpandBuiltinDefine_20:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x84]
	mov [esp+0x4], eax
	mov [esp], esi
	call strcpy
	mov dword [esi+0x400], 0x4
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, esi
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [esi+0x404], ecx
	mov edi, [ebp+0x14]
	mov [edi], esi
	mov eax, [ebp+0x18]
	mov [eax], esi
	mov eax, 0x1
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PC_ExpandBuiltinDefine_10:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call Com_Error
	jmp PC_ExpandBuiltinDefine_80
PC_ExpandBuiltinDefine_50:
	mov dword [esp], 0x0
	call time
	mov [ebp-0x1c], eax
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call ctime
	mov ebx, eax
	mov word [esi], 0x22
	mov dword [esp+0x8], 0x7
	lea eax, [eax+0x4]
	mov [esp+0x4], eax
	mov [esp], esi
	call strncat
	mov dword [esp+0x8], 0x4
	lea eax, [ebx+0x14]
	mov [esp+0x4], eax
	lea eax, [esi+0x7]
	mov [esp], eax
	call strncat
	cld
	mov ecx, 0xffffffff
	mov edi, esi
	xor eax, eax
	repne scasb
	not ecx
	mov word [ecx+esi-0x1], 0x22
	mov [esp], ebx
	call free
	mov dword [esi+0x400], 0x4
	cld
	mov ecx, 0xffffffff
	mov edi, esi
	xor eax, eax
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [esi+0x404], ecx
	mov eax, [ebp+0x14]
	mov [eax], esi
	mov edx, [ebp+0x18]
	mov [edx], esi
	mov eax, 0x1
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PC_ExpandBuiltinDefine_40:
	mov eax, [ebx+0x428]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_d
	mov [esp], esi
	call sprintf
	mov eax, [ebx+0x428]
	mov [esi+0x408], eax
	fild dword [ebx+0x428]
	fstp tword [esi+0x410]
	mov dword [esi+0x400], 0x3
	mov dword [esi+0x404], 0x1008
	mov edi, [ebp+0x14]
	mov [edi], esi
	mov eax, [ebp+0x18]
	mov [eax], esi
	mov eax, 0x1
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;PC_ReadDollarDirective(source_s*)
PC_ReadDollarDirective:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x45c
	mov edi, [ebp+0x8]
	lea eax, [ebp-0x458]
	mov [esp+0x4], eax
	mov [esp], edi
	call PC_ReadSourceToken
	test eax, eax
	jz PC_ReadDollarDirective_10
	mov eax, [ebp-0x2c]
	test eax, eax
	jle PC_ReadDollarDirective_20
	mov dword [esp], 0x440
	call GetMemory
	mov ebx, eax
	test eax, eax
	jz PC_ReadDollarDirective_30
	mov dword [esp+0x8], 0x440
	lea edx, [ebp-0x458]
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	mov dword [ebx+0x430], 0x0
	add dword [numtokens], 0x1
PC_ReadDollarDirective_90:
	mov eax, [edi+0x88]
	mov [ebx+0x430], eax
	mov [edi+0x88], ebx
	mov dword [esp+0x4], _cstring_found__at_end_of1
	mov [esp], edi
	call SourceError
	xor eax, eax
PC_ReadDollarDirective_110:
	add esp, 0x45c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PC_ReadDollarDirective_20:
	cmp dword [ebp-0x58], 0x4
	jz PC_ReadDollarDirective_40
PC_ReadDollarDirective_60:
	mov dword [esp], 0x440
	call GetMemory
	mov ebx, eax
	test eax, eax
	jz PC_ReadDollarDirective_50
	mov dword [esp+0x8], 0x440
	lea eax, [ebp-0x458]
	mov [esp+0x4], eax
	mov [esp], ebx
	call memcpy
	mov dword [ebx+0x430], 0x0
	add dword [numtokens], 0x1
PC_ReadDollarDirective_100:
	mov eax, [edi+0x88]
	mov [ebx+0x430], eax
	mov [edi+0x88], ebx
	lea edx, [ebp-0x458]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_unknown_precompi
	mov [esp], edi
	call SourceError
	xor eax, eax
	add esp, 0x45c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PC_ReadDollarDirective_10:
	mov dword [esp+0x4], _cstring_found__without_n1
	mov [esp], edi
	call SourceError
	xor eax, eax
	add esp, 0x45c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PC_ReadDollarDirective_40:
	mov eax, [dollardirectives]
	test eax, eax
	jz PC_ReadDollarDirective_60
	xor esi, esi
	mov ebx, dollardirectives
PC_ReadDollarDirective_80:
	lea edx, [ebp-0x458]
	mov [esp+0x4], edx
	mov [esp], eax
	call strcmp
	test eax, eax
	jz PC_ReadDollarDirective_70
	add esi, 0x1
	mov eax, [ebx+0x8]
	add ebx, 0x8
	test eax, eax
	jnz PC_ReadDollarDirective_80
	jmp PC_ReadDollarDirective_60
PC_ReadDollarDirective_30:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call Com_Error
	jmp PC_ReadDollarDirective_90
PC_ReadDollarDirective_50:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call Com_Error
	jmp PC_ReadDollarDirective_100
PC_ReadDollarDirective_70:
	mov [esp], edi
	call dword [esi*8+dollardirectives+0x4]
	jmp PC_ReadDollarDirective_110


;PC_DollarDirective_evalint(source_s*)
PC_DollarDirective_evalint:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8ac
	mov esi, [ebp+0x8]
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x0
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], esi
	call PC_DollarEvaluate
	test eax, eax
	jnz PC_DollarDirective_evalint_10
PC_DollarDirective_evalint_60:
	add esp, 0x8ac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PC_DollarDirective_evalint_10:
	mov edx, [esi+0x84]
	mov eax, [edx+0x5c]
	mov [ebp-0x40], eax
	mov eax, [edx+0x44]
	mov [ebp-0x48], eax
	mov eax, [edx+0x44]
	mov [ebp-0x44], eax
	mov dword [ebp-0x3c], 0x0
	mov eax, [ebp-0x1c]
	mov edx, eax
	neg edx
	cmp eax, 0xffffffff
	cmovle eax, edx
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_d
	lea edi, [ebp-0x468]
	mov [esp], edi
	call sprintf
	mov dword [ebp-0x68], 0x3
	mov dword [ebp-0x64], 0x3008
	mov eax, [ebp-0x1c]
	mov [ebp-0x60], eax
	push eax
	fild dword [esp]
	add esp, 0x4
	fstp tword [ebp-0x58]
	mov dword [esp], 0x440
	call GetMemory
	mov ebx, eax
	test eax, eax
	jz PC_DollarDirective_evalint_20
	mov dword [esp+0x8], 0x440
	mov [esp+0x4], edi
	mov [esp], eax
	call memcpy
	mov dword [ebx+0x430], 0x0
	add dword [numtokens], 0x1
PC_DollarDirective_evalint_40:
	mov eax, [esi+0x88]
	mov [ebx+0x430], eax
	mov [esi+0x88], ebx
	mov ecx, [ebp-0x1c]
	test ecx, ecx
	js PC_DollarDirective_evalint_30
	mov eax, 0x1
	add esp, 0x8ac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PC_DollarDirective_evalint_20:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call Com_Error
	jmp PC_DollarDirective_evalint_40
PC_DollarDirective_evalint_30:
	mov edx, [esi+0x84]
	mov eax, [edx+0x5c]
	mov [ebp-0x480], eax
	mov eax, [edx+0x44]
	mov [ebp-0x488], eax
	mov eax, [edx+0x44]
	mov [ebp-0x484], eax
	mov dword [ebp-0x47c], 0x0
	lea edi, [ebp-0x8a8]
	mov word [ebp-0x8a8], 0x2d
	mov dword [ebp-0x4a8], 0x5
	mov dword [ebp-0x4a4], 0x1e
	mov dword [esp], 0x440
	call GetMemory
	mov ebx, eax
	test eax, eax
	jz PC_DollarDirective_evalint_50
	mov dword [esp+0x8], 0x440
	mov [esp+0x4], edi
	mov [esp], eax
	call memcpy
	mov dword [ebx+0x430], 0x0
	add dword [numtokens], 0x1
PC_DollarDirective_evalint_70:
	mov eax, [esi+0x88]
	mov [ebx+0x430], eax
	mov [esi+0x88], ebx
	mov eax, 0x1
	jmp PC_DollarDirective_evalint_60
PC_DollarDirective_evalint_50:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call Com_Error
	jmp PC_DollarDirective_evalint_70


;PC_DollarDirective_evalfloat(source_s*)
PC_DollarDirective_evalfloat:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8dc
	mov esi, [ebp+0x8]
	mov dword [esp+0xc], 0x0
	lea eax, [ebp-0x20]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call PC_DollarEvaluate
	test eax, eax
	jnz PC_DollarDirective_evalfloat_10
PC_DollarDirective_evalfloat_60:
	add esp, 0x8dc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PC_DollarDirective_evalfloat_10:
	mov edx, [esi+0x84]
	mov eax, [edx+0x5c]
	mov [ebp-0x40], eax
	mov eax, [edx+0x44]
	mov [ebp-0x48], eax
	mov eax, [edx+0x44]
	mov [ebp-0x44], eax
	mov dword [ebp-0x3c], 0x0
	cvtsd2ss xmm0, [ebp-0x20]
	andps xmm0, [_data16_7fffffff]
	cvtss2sd xmm0, xmm0
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_12f
	lea edi, [ebp-0x468]
	mov [esp], edi
	call sprintf
	mov dword [ebp-0x68], 0x3
	mov dword [ebp-0x64], 0x2808
	movsd xmm0, qword [ebp-0x20]
	movapd xmm1, xmm0
	movsd xmm2, qword [_data16_01]
	movapd xmm4, xmm2
	cmpsd xmm4, xmm1, 0x2
	minsd xmm1, qword [_data16_ffe00000]
	xorpd xmm3, xmm3
	maxsd xmm1, xmm3
	andpd xmm2, xmm4
	subpd xmm1, xmm2
	cvttpd2dq xmm1, xmm1
	movdqa [ebp-0x8b8], xmm1
	psllq xmm4, 0x1f
	movdqa xmm1, xmm4
	pxor xmm1, [ebp-0x8b8]
	movdqa [ebp-0x8c8], xmm1
	mov eax, [ebp-0x8c8]
	mov [ebp-0x60], eax
	movsd [ebp-0x8d0], xmm0
	fld qword [ebp-0x8d0]
	fstp tword [ebp-0x58]
	mov dword [esp], 0x440
	call GetMemory
	mov ebx, eax
	test eax, eax
	jz PC_DollarDirective_evalfloat_20
	mov dword [esp+0x8], 0x440
	mov [esp+0x4], edi
	mov [esp], eax
	call memcpy
	mov dword [ebx+0x430], 0x0
	add dword [numtokens], 0x1
PC_DollarDirective_evalfloat_40:
	mov eax, [esi+0x88]
	mov [ebx+0x430], eax
	mov [esi+0x88], ebx
	pxor xmm0, xmm0
	ucomisd xmm0, [ebp-0x20]
	ja PC_DollarDirective_evalfloat_30
	mov eax, 0x1
	add esp, 0x8dc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PC_DollarDirective_evalfloat_20:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call Com_Error
	jmp PC_DollarDirective_evalfloat_40
PC_DollarDirective_evalfloat_30:
	mov edx, [esi+0x84]
	mov eax, [edx+0x5c]
	mov [ebp-0x480], eax
	mov eax, [edx+0x44]
	mov [ebp-0x488], eax
	mov eax, [edx+0x44]
	mov [ebp-0x484], eax
	mov dword [ebp-0x47c], 0x0
	lea edi, [ebp-0x8a8]
	mov word [ebp-0x8a8], 0x2d
	mov dword [ebp-0x4a8], 0x5
	mov dword [ebp-0x4a4], 0x1e
	mov dword [esp], 0x440
	call GetMemory
	mov ebx, eax
	test eax, eax
	jz PC_DollarDirective_evalfloat_50
	mov dword [esp+0x8], 0x440
	mov [esp+0x4], edi
	mov [esp], eax
	call memcpy
	mov dword [ebx+0x430], 0x0
	add dword [numtokens], 0x1
PC_DollarDirective_evalfloat_70:
	mov eax, [esi+0x88]
	mov [ebx+0x430], eax
	mov [esi+0x88], ebx
	mov eax, 0x1
	jmp PC_DollarDirective_evalfloat_60
PC_DollarDirective_evalfloat_50:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call Com_Error
	jmp PC_DollarDirective_evalfloat_70


;Initialized global or static variables of l_precomp:
SECTION .data
dollardirectives: dd _cstring_evalint, PC_DollarDirective_evalint, _cstring_evalfloat, PC_DollarDirective_evalfloat, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of l_precomp:
SECTION .rdata
directives: dd _cstring_if, PC_Directive_if, _cstring_ifdef, PC_Directive_ifdef, _cstring_ifndef, PC_Directive_ifndef, _cstring_elif, PC_Directive_elif, _cstring_else, PC_Directive_else, _cstring_endif, PC_Directive_endif, _cstring_include, PC_Directive_include, _cstring_define, PC_Directive_define, _cstring_undef, PC_Directive_undef, _cstring_line, PC_Directive_line, _cstring_error, PC_Directive_error, _cstring_pragma, PC_Directive_pragma, _cstring_eval, PC_Directive_eval, _cstring_evalfloat, PC_Directive_evalfloat, 0x0, 0x0, 0x0, 0x0


;Zero initialized global or static variables of l_precomp:
SECTION .bss
globaldefines: resb 0x4
numtokens: resb 0x60
sourceFiles: resb 0x100


;All cstrings:
SECTION .rdata
_cstring_d:		db "%d",0
_cstring_exe_err_out_of_m:		db "EXE_ERR_OUT_OF_MEMORY",0
_cstring_:		db 5ch,0
_cstring_defined:		db "defined",0
_cstring_cant_evaluate_s_:		db "can",27h,"t evaluate %s, not defined",0
_cstring_no_value_after_i:		db "no value after #if/#elif",0
_cstring_cant_evaluate_s:		db "can",27h,"t evaluate %s",0
_cstring_error_file_s_lin:		db "Error: file %s, line %d: %s",0ah,0
_cstring___from_file_s_li:		db "  From file %s, line %d",0ah,0
_cstring_string_longer_th:		db "string longer than MAX_TOKEN %d",0ah,0
_cstring_warning_file_s_l:		db "Warning: file %s, line %d: %s",0ah,0
_cstring_stringizing_oper:		db "stringizing operator without define parameter",0
_cstring_cant_merge_s_wit:		db "can",27h,"t merge %s with %s",0
_cstring_cant_stringize_t:		db "can",27h,"t stringize tokens",0
_cstring_found__at_end_of:		db "found # at end of line",0
_cstring_unknown_precompi:		db "unknown precompiler directive %s",0
_cstring_found__without_n:		db "found # without name",0
_cstring_misplaced_elif:		db "misplaced #elif",0
_cstring_misplaced_else:		db "misplaced #else",0
_cstring_else_after_else:		db "#else after #else",0
_cstring_line_directive_n:		db "#line directive not supported",0
_cstring_no_leading__afte:		db "no leading ( after $evalint/$evalfloat",0
_cstring_nothing_to_evalu:		db "nothing to evaluate",0
_cstring_unknown_s_in_ife:		db "unknown %s in #if/#elif",0
_cstring_1:		db "(",0
_cstring_2:		db ")",0
_cstring_too_many__in_ife:		db "too many ) in #if/#elsif",0
_cstring_invalid_operator:		db "invalid operator %s in #if/#elif",0
_cstring_trailing_operato:		db "trailing operator in #if/#elif",0
_cstring__or__used_in_ife:		db "++ or -- used in #if/#elif",0
_cstring__or__after_value:		db "! or ~ after value in #if/#elif",0
_cstring_operator_s_after:		db "operator %s after operator in #if/#elif",0
_cstring_mising_values_in:		db "mising values in #if/#elif",0
_cstring_too_many__in_ife1:		db "too many ( in #if/#elif",0
_cstring_syntax_error_in_:		db "syntax error in #if/#elif",0
_cstring_illigal_operator:		db "illigal operator %s on floating point operands",0ah,0
_cstring_undefined_name_s:		db "undefined name %s in #if/#elif",0
_cstring_defined_without_:		db "defined without ) in #if/#elif",0
_cstring_endoffile:		db "end-of-file",0
_cstring_defined_without_1:		db "defined without name in #if/#elif; got %s",0
_cstring_out_of_value_spa:		db "out of value space",0ah,0
_cstring_misplaced_minus_:		db "misplaced minus sign in #if/#elif",0
_cstring_out_of_operator_:		db "out of operator space",0ah,0
_cstring_divide_by_zero_i:		db "divide by zero in #if/#elif",0ah,0
_cstring__after__in_ifeli:		db 3fh," after ",3fh," in #if/#elif",0
_cstring__without__in_ife:		db ": without ",3fh," in #if/#elif",0
_cstring_misplaced_endif:		db "misplaced #endif",0
_cstring_error_directive_:		db "#error directive: %s",0
_cstring_expected_name_fo:		db "expected name, found %s",0
_cstring_undef_without_na:		db "undef without name",0
_cstring_cant_undef_s:		db "can",27h,"t undef %s",0
_cstring_3:		db ",",0
_cstring_define_with_more:		db "define with more than %d parameters",0
_cstring_define_s_missing:		db "define %s missing parms",0
_cstring_define_s_has_too:		db "define %s has too many parms",0
_cstring_define_s_incompl:		db "define %s incomplete",0
_cstring_define_s_with_to:		db "define %s with too many parms",0
_cstring_too_many_commas:		db "too many comma",27h,"s",0
_cstring_too_few_define_p:		db "too few define parms to %s",0
_cstring_missing_endif:		db "missing #endif",0
_cstring_4:		db 22h,0
_cstring_extern:		db "*extern",0
_cstring_expected_name_af:		db "expected name after #define, found %s",0
_cstring_define_without_n:		db "#define without name",0
_cstring_recursive_define:		db "recursive define (removed recursion)",0
_cstring_5:		db "##",0
_cstring_define_with_misp:		db "define with misplaced ##",0
_cstring_cant_redefine_s:		db "can",27h,"t redefine %s",0
_cstring_redefinition_of_:		db "redefinition of %s",0
_cstring_two_of_the_same_:		db "two of the same define parameters",0
_cstring_define_not_termi:		db "define not terminated",0
_cstring_define_parameter:		db "define parameters not terminated",0
_cstring_invalid_define_p:		db "invalid define parameter",0
_cstring_expected_define_:		db "expected define parameter",0
_cstring_expected_name_af1:		db "expected name after #ifdef, found %s",0
_cstring_ifdef_without_na:		db "#ifdef without name",0
_cstring_pragma_directive:		db "#pragma directive not supported",0
_cstring_include_without_:		db "#include without file name",0
_cstring_include_missing_:		db "#include missing trailing >",0
_cstring_file_s_not_found:		db "file %s not found",0
_cstring_s_recursively_in:		db "%s recursively included",0
_cstring_include_without_1:		db "#include without file name between < >",0
_cstring_12f:		db "%1.2f",0
_cstring_found__at_end_of1:		db "found $ at end of line",0
_cstring_found__without_n1:		db "found $ without name",0
_cstring_evalint:		db "evalint",0
_cstring_evalfloat:		db "evalfloat",0
_cstring_if:		db "if",0
_cstring_ifdef:		db "ifdef",0
_cstring_ifndef:		db "ifndef",0
_cstring_elif:		db "elif",0
_cstring_else:		db "else",0
_cstring_endif:		db "endif",0
_cstring_include:		db "include",0
_cstring_define:		db "define",0
_cstring_undef:		db "undef",0
_cstring_line:		db "line",0
_cstring_error:		db "error",0
_cstring_pragma:		db "pragma",0
_cstring_eval:		db "eval",0



;All constant floats and doubles:
SECTION .rdata
_data16_0:		dd 0x0, 0x80000000, 0x0, 0x0	; OWORD
_double_1_00000000:		dq 0x3ff0000000000000	; 1
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; OWORD
_data16_01:		dd 0x0, 0x41e00000, 0x0, 0x0	; OWORD
_data16_ffe00000:		dd 0xffe00000, 0x41efffff, 0x0, 0x0	; OWORD

