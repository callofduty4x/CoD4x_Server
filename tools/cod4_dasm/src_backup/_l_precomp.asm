;Imports of l_precomp:
	extern sprintf
	extern _Z9GetMemorym
	extern memcpy
	extern _Z9Com_Error11errorParm_tPKcz
	extern strcmp
	extern _Z10FreeMemoryPv
	extern _Z10FreeScriptP8script_s
	extern vsnprintf
	extern _Z14Com_PrintErroriPKcz
	extern _Z16Com_PrintWarningiPKcz
	extern strcat
	extern strcpy
	extern _Z14LoadScriptFilePKc
	extern memset
	extern strncpy
	extern _Z16GetClearedMemorym
	extern _Z17StripDoubleQuotesPc
	extern _Z12PS_ReadTokenP8script_sP7token_s
	extern _Z11EndOfScriptP8script_s
	extern strncat
	extern _Z16LoadScriptMemoryPKciS0_
	extern _Z9I_stricmpPKcS0_
	extern time
	extern ctime
	extern free

;Exports of l_precomp:
	global directives
	global _Z17PC_Directive_evalP8source_s
	global _Z11PC_ReadLineP8source_sP7token_sh
	global _Z11PC_EvaluateP8source_sPlPdi
	global _Z10FreeSourceP8source_s
	global _Z11SourceErrorP8source_sPcz
	global _Z12PC_ReadTokenP8source_sP7token_s
	global _Z13PC_CopyDefineP8source_sP8define_s
	global _Z13SourceWarningP8source_sPcz
	global _Z14LoadSourceFilePKc
	global _Z15PC_Directive_ifP8source_s
	global _Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5_
	global _Z16PC_ReadDirectiveP8source_s
	global _Z17PC_Directive_elifP8source_s
	global _Z17PC_Directive_elseP8source_s
	global _Z17PC_Directive_lineP8source_s
	global _Z17PC_DollarEvaluateP8source_sPlPdi
	global _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi
	global _Z17PC_ReadLineHandleiP10pc_token_s
	global _Z18PC_Directive_endifP8source_s
	global _Z18PC_Directive_errorP8source_s
	global _Z18PC_Directive_ifdefP8source_s
	global _Z18PC_Directive_undefP8source_s
	global _Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si
	global _Z18PC_ReadSourceTokenP8source_sP7token_s
	global _Z18PC_ReadTokenHandleiP10pc_token_s
	global _Z18PC_StringizeTokensP7token_sS0_
	global _Z19PC_DefineFromStringPKc
	global _Z19PC_Directive_defineP8source_s
	global _Z19PC_Directive_if_defP8source_si
	global _Z19PC_Directive_ifndefP8source_s
	global _Z19PC_Directive_pragmaP8source_s
	global _Z19PC_FreeSourceHandlei
	global _Z19PC_LoadSourceHandlePKcPS0_
	global _Z19PC_OperatorPriorityi
	global _Z20PC_Directive_includeP8source_s
	global _Z20PC_SourceFileAndLineiPcPi
	global _Z22PC_Directive_evalfloatP8source_s
	global _Z22PC_ExpandBuiltinDefineP8source_sP7token_sP8define_sPS2_S5_
	global _Z22PC_ReadDollarDirectiveP8source_s
	global _Z26PC_DollarDirective_evalintP8source_s
	global _Z28PC_DollarDirective_evalfloatP8source_s
	global dollardirectives
	global globaldefines
	global numtokens
	global sourceFiles


SECTION .text


;PC_Directive_eval(source_s*)
_Z17PC_Directive_evalP8source_s:
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
	call _Z11PC_EvaluateP8source_sPlPdi
	test eax, eax
	jnz _Z17PC_Directive_evalP8source_s_10
	add esp, 0x8ac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17PC_Directive_evalP8source_s_10:
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
	call _Z9GetMemorym
	mov ebx, eax
	test eax, eax
	jz _Z17PC_Directive_evalP8source_s_20
	mov dword [esp+0x8], 0x440
	mov [esp+0x4], edi
	mov [esp], eax
	call memcpy
	mov dword [ebx+0x430], 0x0
	add dword [numtokens], 0x1
_Z17PC_Directive_evalP8source_s_60:
	mov eax, [esi+0x88]
	mov [ebx+0x430], eax
	mov [esi+0x88], ebx
	mov eax, [ebp-0x1c]
	test eax, eax
	js _Z17PC_Directive_evalP8source_s_30
	mov eax, 0x1
_Z17PC_Directive_evalP8source_s_50:
	add esp, 0x8ac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17PC_Directive_evalP8source_s_30:
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
	call _Z9GetMemorym
	mov ebx, eax
	test eax, eax
	jz _Z17PC_Directive_evalP8source_s_40
	mov dword [esp+0x8], 0x440
	mov [esp+0x4], edi
	mov [esp], eax
	call memcpy
	mov dword [ebx+0x430], 0x0
	add dword [numtokens], 0x1
_Z17PC_Directive_evalP8source_s_70:
	mov eax, [esi+0x88]
	mov [ebx+0x430], eax
	mov [esi+0x88], ebx
	mov eax, 0x1
	jmp _Z17PC_Directive_evalP8source_s_50
_Z17PC_Directive_evalP8source_s_20:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z17PC_Directive_evalP8source_s_60
_Z17PC_Directive_evalP8source_s_40:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z17PC_Directive_evalP8source_s_70
	nop


;PC_ReadLine(source_s*, token_s*, unsigned char)
_Z11PC_ReadLineP8source_sP7token_sh:
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
_Z11PC_ReadLineP8source_sP7token_sh_130:
	mov [esp+0x4], ebx
	mov [esp], eax
	call _Z18PC_ReadSourceTokenP8source_sP7token_s
	test eax, eax
	jz _Z11PC_ReadLineP8source_sP7token_sh_10
_Z11PC_ReadLineP8source_sP7token_sh_90:
	cmp edi, [ebx+0x42c]
	jl _Z11PC_ReadLineP8source_sP7token_sh_20
	cmp dword [ebx+0x400], 0x4
	jnz _Z11PC_ReadLineP8source_sP7token_sh_30
	cmp byte [ebp-0x2d], 0x0
	jz _Z11PC_ReadLineP8source_sP7token_sh_30
	mov ecx, [ebp-0x2c]
	mov esi, [ecx+0x90]
	movzx eax, byte [ebx]
	test al, al
	jnz _Z11PC_ReadLineP8source_sP7token_sh_40
	xor ecx, ecx
	xor edx, edx
	xor eax, eax
_Z11PC_ReadLineP8source_sP7token_sh_110:
	xor ecx, edx
	xor eax, ecx
	and eax, 0x3ff
	mov esi, [esi+eax*4]
	test esi, esi
	jz _Z11PC_ReadLineP8source_sP7token_sh_30
_Z11PC_ReadLineP8source_sP7token_sh_60:
	mov [esp+0x4], ebx
	mov eax, [esi]
	mov [esp], eax
	call strcmp
	test eax, eax
	jz _Z11PC_ReadLineP8source_sP7token_sh_50
	mov esi, [esi+0x1c]
	test esi, esi
	jnz _Z11PC_ReadLineP8source_sP7token_sh_60
_Z11PC_ReadLineP8source_sP7token_sh_30:
	mov edi, _cstring_
	mov ecx, 0x2
	cld
	mov esi, ebx
	repe cmpsb
	mov edx, 0x0
	jz _Z11PC_ReadLineP8source_sP7token_sh_70
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
_Z11PC_ReadLineP8source_sP7token_sh_70:
	test edx, edx
	jnz _Z11PC_ReadLineP8source_sP7token_sh_80
	mov edi, 0x1
	mov eax, [ebp-0x2c]
	mov [esp+0x4], ebx
	mov [esp], eax
	call _Z18PC_ReadSourceTokenP8source_sP7token_s
	test eax, eax
	jnz _Z11PC_ReadLineP8source_sP7token_sh_90
_Z11PC_ReadLineP8source_sP7token_sh_10:
	xor eax, eax
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11PC_ReadLineP8source_sP7token_sh_40:
	xor ecx, ecx
	mov edx, 0x77
_Z11PC_ReadLineP8source_sP7token_sh_100:
	movsx eax, al
	imul eax, edx
	add ecx, eax
	movzx eax, byte [ebx+edx-0x76]
	add edx, 0x1
	test al, al
	jnz _Z11PC_ReadLineP8source_sP7token_sh_100
	mov edx, ecx
	sar edx, 0xa
	mov eax, ecx
	sar eax, 0x14
	jmp _Z11PC_ReadLineP8source_sP7token_sh_110
_Z11PC_ReadLineP8source_sP7token_sh_50:
	lea eax, [ebp-0x20]
	mov [esp+0x10], eax
	lea eax, [ebp-0x1c]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call _Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5_
	test eax, eax
	jz _Z11PC_ReadLineP8source_sP7token_sh_10
	mov eax, [ebp-0x1c]
	test eax, eax
	jz _Z11PC_ReadLineP8source_sP7token_sh_120
	mov edx, [ebp-0x20]
	test edx, edx
	jz _Z11PC_ReadLineP8source_sP7token_sh_120
	mov ecx, [ebp-0x2c]
	mov eax, [ecx+0x88]
	mov [edx+0x430], eax
	mov eax, [ebp-0x1c]
	mov [ecx+0x88], eax
	mov eax, [ebp-0x2c]
	jmp _Z11PC_ReadLineP8source_sP7token_sh_130
_Z11PC_ReadLineP8source_sP7token_sh_20:
	mov dword [esp], 0x440
	call _Z9GetMemorym
	mov esi, eax
	test eax, eax
	jz _Z11PC_ReadLineP8source_sP7token_sh_140
	mov dword [esp+0x8], 0x440
	mov [esp+0x4], ebx
	mov [esp], eax
	call memcpy
	mov dword [esi+0x430], 0x0
	add dword [numtokens], 0x1
_Z11PC_ReadLineP8source_sP7token_sh_150:
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
_Z11PC_ReadLineP8source_sP7token_sh_80:
	mov eax, 0x1
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11PC_ReadLineP8source_sP7token_sh_120:
	mov eax, [ebp-0x2c]
	jmp _Z11PC_ReadLineP8source_sP7token_sh_130
_Z11PC_ReadLineP8source_sP7token_sh_140:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z11PC_ReadLineP8source_sP7token_sh_150
	nop


;PC_Evaluate(source_s*, long*, double*, int)
_Z11PC_EvaluateP8source_sPlPdi:
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
	jz _Z11PC_EvaluateP8source_sPlPdi_10
	mov dword [edx], 0x0
_Z11PC_EvaluateP8source_sPlPdi_10:
	mov eax, [ebp-0x47c]
	test eax, eax
	jz _Z11PC_EvaluateP8source_sPlPdi_20
	mov eax, [ebp-0x47c]
	mov dword [eax], 0x0
	mov dword [eax+0x4], 0x0
_Z11PC_EvaluateP8source_sPlPdi_20:
	lea ebx, [ebp-0x468]
	mov ecx, 0x1
	mov edx, ebx
	mov eax, [ebp-0x474]
	call _Z11PC_ReadLineP8source_sP7token_sh
	test eax, eax
	jz _Z11PC_EvaluateP8source_sPlPdi_30
	xor edi, edi
	mov dword [ebp-0x470], 0x0
	mov dword [ebp-0x46c], 0x0
	jmp _Z11PC_EvaluateP8source_sPlPdi_40
_Z11PC_EvaluateP8source_sPlPdi_100:
	cmp eax, 0x3
	jz _Z11PC_EvaluateP8source_sPlPdi_50
	cmp eax, 0x5
	jnz _Z11PC_EvaluateP8source_sPlPdi_60
_Z11PC_EvaluateP8source_sPlPdi_50:
	mov dword [esp], 0x440
	call _Z9GetMemorym
	mov esi, eax
	test eax, eax
	jz _Z11PC_EvaluateP8source_sPlPdi_70
	mov dword [esp+0x8], 0x440
	mov [esp+0x4], ebx
	mov [esp], eax
	call memcpy
	mov dword [esi+0x430], 0x0
	add dword [numtokens], 0x1
_Z11PC_EvaluateP8source_sPlPdi_250:
	mov dword [esi+0x430], 0x0
	mov eax, [ebp-0x46c]
	test eax, eax
	jz _Z11PC_EvaluateP8source_sPlPdi_80
	mov edx, [ebp-0x46c]
	mov [edx+0x430], esi
	mov [ebp-0x46c], esi
_Z11PC_EvaluateP8source_sPlPdi_240:
	xor ecx, ecx
	test edi, edi
	setz cl
	mov edx, ebx
	mov eax, [ebp-0x474]
	call _Z11PC_ReadLineP8source_sP7token_sh
	test eax, eax
	jz _Z11PC_EvaluateP8source_sPlPdi_90
_Z11PC_EvaluateP8source_sPlPdi_40:
	mov eax, [ebp-0x68]
	cmp eax, 0x4
	jnz _Z11PC_EvaluateP8source_sPlPdi_100
	test edi, edi
	jz _Z11PC_EvaluateP8source_sPlPdi_110
	mov dword [esp], 0x440
	call _Z9GetMemorym
	mov esi, eax
	test eax, eax
	jz _Z11PC_EvaluateP8source_sPlPdi_120
	mov dword [esp+0x8], 0x440
	mov [esp+0x4], ebx
	mov [esp], eax
	call memcpy
	mov dword [esi+0x430], 0x0
	add dword [numtokens], 0x1
_Z11PC_EvaluateP8source_sPlPdi_300:
	mov dword [esi+0x430], 0x0
	mov eax, [ebp-0x46c]
	test eax, eax
	jz _Z11PC_EvaluateP8source_sPlPdi_130
	mov eax, [ebp-0x46c]
	mov [eax+0x430], esi
	mov [ebp-0x46c], esi
	xor edi, edi
	xor ecx, ecx
	test edi, edi
	setz cl
	mov edx, ebx
	mov eax, [ebp-0x474]
	call _Z11PC_ReadLineP8source_sP7token_sh
	test eax, eax
	jnz _Z11PC_EvaluateP8source_sPlPdi_40
_Z11PC_EvaluateP8source_sPlPdi_90:
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
	call _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi
	test eax, eax
	jz _Z11PC_EvaluateP8source_sPlPdi_140
	mov ebx, [ebp-0x470]
	test ebx, ebx
	jz _Z11PC_EvaluateP8source_sPlPdi_150
	mov eax, [ebp-0x470]
	jmp _Z11PC_EvaluateP8source_sPlPdi_160
_Z11PC_EvaluateP8source_sPlPdi_170:
	mov eax, esi
_Z11PC_EvaluateP8source_sPlPdi_160:
	mov esi, [eax+0x430]
	mov [esp], eax
	call _Z10FreeMemoryPv
	sub dword [numtokens], 0x1
	test esi, esi
	jnz _Z11PC_EvaluateP8source_sPlPdi_170
_Z11PC_EvaluateP8source_sPlPdi_150:
	mov eax, 0x1
_Z11PC_EvaluateP8source_sPlPdi_320:
	add esp, 0x49c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11PC_EvaluateP8source_sPlPdi_110:
	mov edi, _cstring_defined
	mov ecx, 0x8
	cld
	mov esi, ebx
	repe cmpsb
	mov edx, 0x0
	jz _Z11PC_EvaluateP8source_sPlPdi_180
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
_Z11PC_EvaluateP8source_sPlPdi_180:
	test edx, edx
	jz _Z11PC_EvaluateP8source_sPlPdi_190
	mov ecx, [ebp-0x474]
	mov esi, [ecx+0x90]
	movzx eax, byte [ebp-0x468]
	test al, al
	jnz _Z11PC_EvaluateP8source_sPlPdi_200
	xor ecx, ecx
	xor edx, edx
	xor eax, eax
_Z11PC_EvaluateP8source_sPlPdi_270:
	xor edx, ecx
	xor eax, edx
	and eax, 0x3ff
	mov esi, [esi+eax*4]
	test esi, esi
	jz _Z11PC_EvaluateP8source_sPlPdi_210
_Z11PC_EvaluateP8source_sPlPdi_230:
	mov [esp+0x4], ebx
	mov eax, [esi]
	mov [esp], eax
	call strcmp
	test eax, eax
	jz _Z11PC_EvaluateP8source_sPlPdi_220
	mov esi, [esi+0x1c]
	test esi, esi
	jnz _Z11PC_EvaluateP8source_sPlPdi_230
_Z11PC_EvaluateP8source_sPlPdi_210:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_cant_evaluate_s_
	mov eax, [ebp-0x474]
	mov [esp], eax
	call _Z11SourceErrorP8source_sPcz
_Z11PC_EvaluateP8source_sPlPdi_140:
	xor eax, eax
	add esp, 0x49c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11PC_EvaluateP8source_sPlPdi_80:
	mov [ebp-0x470], esi
	mov [ebp-0x46c], esi
	jmp _Z11PC_EvaluateP8source_sPlPdi_240
_Z11PC_EvaluateP8source_sPlPdi_70:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z11PC_EvaluateP8source_sPlPdi_250
_Z11PC_EvaluateP8source_sPlPdi_30:
	mov dword [esp+0x4], _cstring_no_value_after_i
	mov edx, [ebp-0x474]
	mov [esp], edx
	call _Z11SourceErrorP8source_sPcz
	xor eax, eax
	add esp, 0x49c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11PC_EvaluateP8source_sPlPdi_200:
	xor ecx, ecx
	mov edx, 0x77
_Z11PC_EvaluateP8source_sPlPdi_260:
	movsx eax, al
	imul eax, edx
	add ecx, eax
	movzx eax, byte [edx+ebx-0x76]
	add edx, 0x1
	test al, al
	jnz _Z11PC_EvaluateP8source_sPlPdi_260
	mov edx, ecx
	sar edx, 0xa
	mov eax, ecx
	sar eax, 0x14
	jmp _Z11PC_EvaluateP8source_sPlPdi_270
_Z11PC_EvaluateP8source_sPlPdi_190:
	mov dword [esp], 0x440
	call _Z9GetMemorym
	mov esi, eax
	test eax, eax
	jz _Z11PC_EvaluateP8source_sPlPdi_280
	mov dword [esp+0x8], 0x440
	mov [esp+0x4], ebx
	mov [esp], eax
	call memcpy
	mov dword [esi+0x430], 0x0
	add dword [numtokens], 0x1
_Z11PC_EvaluateP8source_sPlPdi_330:
	mov dword [esi+0x430], 0x0
	mov eax, [ebp-0x46c]
	test eax, eax
	jz _Z11PC_EvaluateP8source_sPlPdi_290
	mov edx, [ebp-0x46c]
	mov [edx+0x430], esi
	mov [ebp-0x46c], esi
	mov edi, 0x1
	jmp _Z11PC_EvaluateP8source_sPlPdi_240
_Z11PC_EvaluateP8source_sPlPdi_120:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z11PC_EvaluateP8source_sPlPdi_300
_Z11PC_EvaluateP8source_sPlPdi_220:
	lea eax, [ebp-0x20]
	mov [esp+0x10], eax
	lea eax, [ebp-0x1c]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	mov eax, [ebp-0x474]
	mov [esp], eax
	call _Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5_
	test eax, eax
	jz _Z11PC_EvaluateP8source_sPlPdi_140
	mov eax, [ebp-0x1c]
	test eax, eax
	jz _Z11PC_EvaluateP8source_sPlPdi_310
	mov edx, [ebp-0x20]
	test edx, edx
	jz _Z11PC_EvaluateP8source_sPlPdi_310
	mov ecx, [ebp-0x474]
	mov eax, [ecx+0x88]
	mov [edx+0x430], eax
	mov eax, [ebp-0x1c]
	mov [ecx+0x88], eax
_Z11PC_EvaluateP8source_sPlPdi_310:
	xor edi, edi
	jmp _Z11PC_EvaluateP8source_sPlPdi_240
_Z11PC_EvaluateP8source_sPlPdi_130:
	mov [ebp-0x470], esi
	mov [ebp-0x46c], esi
	xor edi, edi
	jmp _Z11PC_EvaluateP8source_sPlPdi_240
_Z11PC_EvaluateP8source_sPlPdi_60:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_cant_evaluate_s
	mov ecx, [ebp-0x474]
	mov [esp], ecx
	call _Z11SourceErrorP8source_sPcz
	xor eax, eax
	jmp _Z11PC_EvaluateP8source_sPlPdi_320
_Z11PC_EvaluateP8source_sPlPdi_290:
	mov [ebp-0x470], esi
	mov [ebp-0x46c], esi
	mov edi, 0x1
	jmp _Z11PC_EvaluateP8source_sPlPdi_240
_Z11PC_EvaluateP8source_sPlPdi_280:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z11PC_EvaluateP8source_sPlPdi_330
	nop


;FreeSource(source_s*)
_Z10FreeSourceP8source_s:
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
	jz _Z10FreeSourceP8source_s_10
_Z10FreeSourceP8source_s_20:
	mov eax, [edx+0x4c0]
	mov ecx, [ebp-0x1c]
	mov [ecx+0x84], eax
	mov [esp], edx
	call _Z10FreeScriptP8script_s
	mov eax, [ebp-0x1c]
	mov edx, [eax+0x84]
	test edx, edx
	jnz _Z10FreeSourceP8source_s_20
_Z10FreeSourceP8source_s_10:
	mov ecx, [ebp-0x1c]
	mov edx, [ecx+0x88]
	test edx, edx
	jz _Z10FreeSourceP8source_s_30
_Z10FreeSourceP8source_s_40:
	mov eax, [edx+0x430]
	mov ecx, [ebp-0x1c]
	mov [ecx+0x88], eax
	mov [esp], edx
	call _Z10FreeMemoryPv
	sub dword [numtokens], 0x1
	mov eax, [ebp-0x1c]
	mov edx, [eax+0x88]
	test edx, edx
	jnz _Z10FreeSourceP8source_s_40
_Z10FreeSourceP8source_s_30:
	xor edi, edi
	mov edx, [ebp-0x1c]
	mov eax, [edx+0x90]
_Z10FreeSourceP8source_s_130:
	lea edx, [edi+eax]
	mov esi, [edx]
	test esi, esi
	jz _Z10FreeSourceP8source_s_50
_Z10FreeSourceP8source_s_120:
	mov eax, [esi+0x1c]
	mov [edx], eax
	mov eax, [esi+0x10]
	test eax, eax
	jnz _Z10FreeSourceP8source_s_60
	jmp _Z10FreeSourceP8source_s_70
_Z10FreeSourceP8source_s_80:
	mov eax, ebx
_Z10FreeSourceP8source_s_60:
	mov ebx, [eax+0x430]
	mov [esp], eax
	call _Z10FreeMemoryPv
	sub dword [numtokens], 0x1
	test ebx, ebx
	jnz _Z10FreeSourceP8source_s_80
_Z10FreeSourceP8source_s_70:
	mov eax, [esi+0x14]
	test eax, eax
	jnz _Z10FreeSourceP8source_s_90
	jmp _Z10FreeSourceP8source_s_100
_Z10FreeSourceP8source_s_110:
	mov eax, ebx
_Z10FreeSourceP8source_s_90:
	mov ebx, [eax+0x430]
	mov [esp], eax
	call _Z10FreeMemoryPv
	sub dword [numtokens], 0x1
	test ebx, ebx
	jnz _Z10FreeSourceP8source_s_110
_Z10FreeSourceP8source_s_100:
	mov [esp], esi
	call _Z10FreeMemoryPv
	mov edx, [ebp-0x1c]
	mov eax, [edx+0x90]
	lea edx, [edi+eax]
	mov esi, [edx]
	test esi, esi
	jnz _Z10FreeSourceP8source_s_120
_Z10FreeSourceP8source_s_50:
	add edi, 0x4
	cmp edi, 0x1000
	jnz _Z10FreeSourceP8source_s_130
	mov ecx, [ebp-0x1c]
	mov edx, [ecx+0x94]
	test edx, edx
	jz _Z10FreeSourceP8source_s_140
_Z10FreeSourceP8source_s_150:
	mov eax, [edx+0xc]
	mov ecx, [ebp-0x1c]
	mov [ecx+0x94], eax
	mov [esp], edx
	call _Z10FreeMemoryPv
	mov eax, [ebp-0x1c]
	mov edx, [eax+0x94]
	test edx, edx
	jnz _Z10FreeSourceP8source_s_150
	mov eax, [eax+0x90]
_Z10FreeSourceP8source_s_140:
	test eax, eax
	jz _Z10FreeSourceP8source_s_160
	mov [esp], eax
	call _Z10FreeMemoryPv
_Z10FreeSourceP8source_s_160:
	mov ecx, [ebp-0x1c]
	mov [ebp+0x8], ecx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z10FreeMemoryPv
	nop


;SourceError(source_s*, char*, ...)
_Z11SourceErrorP8source_sPcz:
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
	call _Z14Com_PrintErroriPKcz
	mov eax, [esi+0x84]
	mov ebx, [eax+0x4c0]
	test ebx, ebx
	jz _Z11SourceErrorP8source_sPcz_10
_Z11SourceErrorP8source_sPcz_20:
	mov eax, [ebx+0x5c]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring___from_file_s_li
	mov dword [esp], 0x17
	call _Z16Com_PrintWarningiPKcz
	mov ebx, [ebx+0x4c0]
	test ebx, ebx
	jnz _Z11SourceErrorP8source_sPcz_20
_Z11SourceErrorP8source_sPcz_10:
	add esp, 0x430
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;PC_ReadToken(source_s*, token_s*)
_Z12PC_ReadTokenP8source_sP7token_s:
_Z12PC_ReadTokenP8source_sP7token_s_130:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x47c
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
_Z12PC_ReadTokenP8source_sP7token_s_30:
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z18PC_ReadSourceTokenP8source_sP7token_s
	test eax, eax
	jz _Z12PC_ReadTokenP8source_sP7token_s_10
	mov eax, [ebx+0x400]
	cmp eax, 0x5
	jz _Z12PC_ReadTokenP8source_sP7token_s_20
_Z12PC_ReadTokenP8source_sP7token_s_100:
	mov edx, [esi+0x98]
	test edx, edx
	jnz _Z12PC_ReadTokenP8source_sP7token_s_30
	sub eax, 0x1
	jz _Z12PC_ReadTokenP8source_sP7token_s_40
_Z12PC_ReadTokenP8source_sP7token_s_140:
	cmp dword [ebx+0x400], 0x4
	jnz _Z12PC_ReadTokenP8source_sP7token_s_50
	mov edi, [esi+0x90]
	movzx eax, byte [ebx]
	test al, al
	jnz _Z12PC_ReadTokenP8source_sP7token_s_60
	xor ecx, ecx
	xor edx, edx
	xor eax, eax
_Z12PC_ReadTokenP8source_sP7token_s_120:
	xor edx, ecx
	xor eax, edx
	and eax, 0x3ff
	mov edi, [edi+eax*4]
	test edi, edi
	jz _Z12PC_ReadTokenP8source_sP7token_s_50
_Z12PC_ReadTokenP8source_sP7token_s_80:
	mov [esp+0x4], ebx
	mov eax, [edi]
	mov [esp], eax
	call strcmp
	test eax, eax
	jz _Z12PC_ReadTokenP8source_sP7token_s_70
	mov edi, [edi+0x1c]
	test edi, edi
	jnz _Z12PC_ReadTokenP8source_sP7token_s_80
_Z12PC_ReadTokenP8source_sP7token_s_50:
	lea eax, [esi+0xa0]
	mov dword [esp+0x8], 0x440
	mov [esp+0x4], ebx
	mov [esp], eax
	call memcpy
	mov eax, 0x1
_Z12PC_ReadTokenP8source_sP7token_s_200:
	add esp, 0x47c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12PC_ReadTokenP8source_sP7token_s_20:
	cmp word [ebx], 0x23
	jz _Z12PC_ReadTokenP8source_sP7token_s_90
	cmp byte [ebx], 0x24
	jnz _Z12PC_ReadTokenP8source_sP7token_s_100
	mov [esp], esi
	call _Z22PC_ReadDollarDirectiveP8source_s
	test eax, eax
	jnz _Z12PC_ReadTokenP8source_sP7token_s_30
_Z12PC_ReadTokenP8source_sP7token_s_10:
	xor eax, eax
_Z12PC_ReadTokenP8source_sP7token_s_170:
	add esp, 0x47c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z12PC_ReadTokenP8source_sP7token_s_60:
	xor ecx, ecx
	mov edx, 0x77
_Z12PC_ReadTokenP8source_sP7token_s_110:
	movsx eax, al
	imul eax, edx
	add ecx, eax
	movzx eax, byte [ebx+edx-0x76]
	add edx, 0x1
	test al, al
	jnz _Z12PC_ReadTokenP8source_sP7token_s_110
	mov edx, ecx
	sar edx, 0xa
	mov eax, ecx
	sar eax, 0x14
	jmp _Z12PC_ReadTokenP8source_sP7token_s_120
_Z12PC_ReadTokenP8source_sP7token_s_70:
	lea eax, [ebp-0x20]
	mov [esp+0x10], eax
	lea eax, [ebp-0x1c]
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5_
	test eax, eax
	jz _Z12PC_ReadTokenP8source_sP7token_s_10
	mov eax, [ebp-0x1c]
	test eax, eax
	jz _Z12PC_ReadTokenP8source_sP7token_s_30
	mov edx, [ebp-0x20]
	test edx, edx
	jz _Z12PC_ReadTokenP8source_sP7token_s_30
	mov eax, [esi+0x88]
	mov [edx+0x430], eax
	mov eax, [ebp-0x1c]
	mov [esi+0x88], eax
	jmp _Z12PC_ReadTokenP8source_sP7token_s_30
_Z12PC_ReadTokenP8source_sP7token_s_40:
	lea eax, [ebp-0x468]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z12PC_ReadTokenP8source_sP7token_s_130
	test eax, eax
	jz _Z12PC_ReadTokenP8source_sP7token_s_140
	cmp dword [ebp-0x68], 0x1
	jz _Z12PC_ReadTokenP8source_sP7token_s_150
	mov dword [esp], 0x440
	call _Z9GetMemorym
	mov edi, eax
	test eax, eax
	jz _Z12PC_ReadTokenP8source_sP7token_s_160
	mov dword [esp+0x8], 0x440
	lea ecx, [ebp-0x468]
	mov [esp+0x4], ecx
	mov [esp], eax
	call memcpy
	mov dword [edi+0x430], 0x0
	add dword [numtokens], 0x1
_Z12PC_ReadTokenP8source_sP7token_s_180:
	mov eax, [esi+0x88]
	mov [edi+0x430], eax
	mov [esi+0x88], edi
	jmp _Z12PC_ReadTokenP8source_sP7token_s_140
_Z12PC_ReadTokenP8source_sP7token_s_90:
	mov [esp], esi
	call _Z16PC_ReadDirectiveP8source_s
	test eax, eax
	jnz _Z12PC_ReadTokenP8source_sP7token_s_30
	xor eax, eax
	jmp _Z12PC_ReadTokenP8source_sP7token_s_170
_Z12PC_ReadTokenP8source_sP7token_s_160:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z12PC_ReadTokenP8source_sP7token_s_180
_Z12PC_ReadTokenP8source_sP7token_s_150:
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
	ja _Z12PC_ReadTokenP8source_sP7token_s_190
	lea eax, [ebp-0x467]
	mov [esp+0x4], eax
	mov [esp], ebx
	call strcat
	jmp _Z12PC_ReadTokenP8source_sP7token_s_140
_Z12PC_ReadTokenP8source_sP7token_s_190:
	mov dword [esp+0x8], 0x400
	mov dword [esp+0x4], _cstring_string_longer_th
	mov [esp], esi
	call _Z11SourceErrorP8source_sPcz
	xor eax, eax
	jmp _Z12PC_ReadTokenP8source_sP7token_s_200
	nop


;PC_CopyDefine(source_s*, define_s*)
_Z13PC_CopyDefineP8source_sP8define_s:
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
	call _Z9GetMemorym
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
	jz _Z13PC_CopyDefineP8source_sP8define_s_10
	xor esi, esi
	jmp _Z13PC_CopyDefineP8source_sP8define_s_20
_Z13PC_CopyDefineP8source_sP8define_s_40:
	mov dword [esp+0x8], 0x440
	mov [esp+0x4], edi
	mov [esp], eax
	call memcpy
	mov dword [ebx+0x430], 0x0
	add dword [numtokens], 0x1
	mov dword [ebx+0x430], 0x0
	test esi, esi
	jz _Z13PC_CopyDefineP8source_sP8define_s_30
_Z13PC_CopyDefineP8source_sP8define_s_50:
	mov [esi+0x430], ebx
	mov edi, [edi+0x430]
	test edi, edi
	jz _Z13PC_CopyDefineP8source_sP8define_s_10
_Z13PC_CopyDefineP8source_sP8define_s_60:
	mov esi, ebx
_Z13PC_CopyDefineP8source_sP8define_s_20:
	mov dword [esp], 0x440
	call _Z9GetMemorym
	mov ebx, eax
	test eax, eax
	jnz _Z13PC_CopyDefineP8source_sP8define_s_40
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	mov dword [ebx+0x430], 0x0
	test esi, esi
	jnz _Z13PC_CopyDefineP8source_sP8define_s_50
_Z13PC_CopyDefineP8source_sP8define_s_30:
	mov eax, [ebp-0x1c]
	mov [eax+0x14], ebx
	mov edi, [edi+0x430]
	test edi, edi
	jnz _Z13PC_CopyDefineP8source_sP8define_s_60
_Z13PC_CopyDefineP8source_sP8define_s_10:
	mov edx, [ebp-0x1c]
	mov dword [edx+0x10], 0x0
	mov ecx, [ebp+0xc]
	mov edi, [ecx+0x10]
	test edi, edi
	jz _Z13PC_CopyDefineP8source_sP8define_s_70
	xor esi, esi
	jmp _Z13PC_CopyDefineP8source_sP8define_s_80
_Z13PC_CopyDefineP8source_sP8define_s_100:
	mov dword [esp+0x8], 0x440
	mov [esp+0x4], edi
	mov [esp], eax
	call memcpy
	mov dword [ebx+0x430], 0x0
	add dword [numtokens], 0x1
	mov dword [ebx+0x430], 0x0
	test esi, esi
	jz _Z13PC_CopyDefineP8source_sP8define_s_90
_Z13PC_CopyDefineP8source_sP8define_s_110:
	mov [esi+0x430], ebx
	mov edi, [edi+0x430]
	test edi, edi
	jz _Z13PC_CopyDefineP8source_sP8define_s_70
_Z13PC_CopyDefineP8source_sP8define_s_120:
	mov esi, ebx
_Z13PC_CopyDefineP8source_sP8define_s_80:
	mov dword [esp], 0x440
	call _Z9GetMemorym
	mov ebx, eax
	test eax, eax
	jnz _Z13PC_CopyDefineP8source_sP8define_s_100
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	mov dword [ebx+0x430], 0x0
	test esi, esi
	jnz _Z13PC_CopyDefineP8source_sP8define_s_110
_Z13PC_CopyDefineP8source_sP8define_s_90:
	mov eax, [ebp-0x1c]
	mov [eax+0x10], ebx
	mov edi, [edi+0x430]
	test edi, edi
	jnz _Z13PC_CopyDefineP8source_sP8define_s_120
_Z13PC_CopyDefineP8source_sP8define_s_70:
	mov eax, [ebp-0x1c]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;SourceWarning(source_s*, char*, ...)
_Z13SourceWarningP8source_sPcz:
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
	call _Z16Com_PrintWarningiPKcz
	mov eax, [esi+0x84]
	mov ebx, [eax+0x4c0]
	test ebx, ebx
	jz _Z13SourceWarningP8source_sPcz_10
_Z13SourceWarningP8source_sPcz_20:
	mov eax, [ebx+0x5c]
	mov [esp+0xc], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring___from_file_s_li
	mov dword [esp], 0x17
	call _Z16Com_PrintWarningiPKcz
	mov ebx, [ebx+0x4c0]
	test ebx, ebx
	jnz _Z13SourceWarningP8source_sPcz_20
_Z13SourceWarningP8source_sPcz_10:
	add esp, 0x430
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;LoadSourceFile(char const*)
_Z14LoadSourceFilePKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0x8]
	mov [esp], esi
	call _Z14LoadScriptFilePKc
	mov ebx, eax
	test eax, eax
	jz _Z14LoadSourceFilePKc_10
	mov dword [eax+0x4c0], 0x0
	mov dword [esp], 0x4e0
	call _Z9GetMemorym
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
	call _Z16GetClearedMemorym
	mov ecx, [ebp-0x20]
	mov [ecx+0x90], eax
	mov edi, [globaldefines]
	test edi, edi
	jnz _Z14LoadSourceFilePKc_20
	jmp _Z14LoadSourceFilePKc_30
_Z14LoadSourceFilePKc_40:
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
	jz _Z14LoadSourceFilePKc_30
_Z14LoadSourceFilePKc_20:
	mov [esp+0x4], edi
	mov eax, [ebp-0x20]
	mov [esp], eax
	call _Z13PC_CopyDefineP8source_sP8define_s
	mov esi, eax
	mov edx, [ebp-0x20]
	mov edx, [edx+0x90]
	mov [ebp-0x1c], edx
	mov ecx, [eax]
	movzx eax, byte [ecx]
	test al, al
	jz _Z14LoadSourceFilePKc_40
	xor ebx, ebx
	mov edx, 0x77
_Z14LoadSourceFilePKc_50:
	movsx eax, al
	imul eax, edx
	add ebx, eax
	movzx eax, byte [ecx+edx-0x76]
	add edx, 0x1
	test al, al
	jnz _Z14LoadSourceFilePKc_50
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
	jnz _Z14LoadSourceFilePKc_20
_Z14LoadSourceFilePKc_30:
	mov eax, [ebp-0x20]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14LoadSourceFilePKc_10:
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
_Z15PC_Directive_ifP8source_s:
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
	call _Z11PC_EvaluateP8source_sPlPdi
	test eax, eax
	jz _Z15PC_Directive_ifP8source_s_10
	xor ebx, ebx
	cmp dword [ebp-0xc], 0x0
	setz bl
	mov dword [esp], 0x10
	call _Z9GetMemorym
	mov dword [eax], 0x1
	mov edx, [esi+0x84]
	mov [eax+0x8], edx
	mov [eax+0x4], ebx
	add [esi+0x98], ebx
	mov edx, [esi+0x94]
	mov [eax+0xc], edx
	mov [esi+0x94], eax
	mov eax, 0x1
_Z15PC_Directive_ifP8source_s_10:
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret


;PC_ExpandDefine(source_s*, token_s*, define_s*, token_s**, token_s**)
_Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x67c
	mov eax, [ebp+0x10]
	mov esi, [eax+0x8]
	test esi, esi
	jnz _Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__10
	mov ebx, [eax+0xc]
	test ebx, ebx
	jnz _Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__20
	mov edx, eax
	mov esi, [edx+0x14]
	test esi, esi
	jz _Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__30
_Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__220:
	mov dword [ebp-0x664], 0x0
	mov dword [ebp-0x660], 0x0
_Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__90:
	cmp dword [esi+0x400], 0x4
	jz _Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__40
_Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__260:
	cmp word [esi], 0x23
	jnz _Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__50
	mov eax, [esi+0x430]
	mov [ebp-0x65c], eax
	test eax, eax
	jz _Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__60
	mov edx, [ebp+0x10]
	mov edi, [edx+0x10]
	test edi, edi
	jz _Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__60
	xor ebx, ebx
_Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__80:
	mov eax, [ebp-0x65c]
	mov [esp+0x4], eax
	mov [esp], edi
	call strcmp
	test eax, eax
	jz _Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__70
	add ebx, 0x1
	mov edi, [edi+0x430]
	test edi, edi
	jnz _Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__80
_Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__60:
	mov dword [esp+0x4], _cstring_stringizing_oper
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z13SourceWarningP8source_sPcz
_Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__250:
	mov esi, [esi+0x430]
	test esi, esi
	jnz _Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__90
	mov eax, [ebp-0x664]
	test eax, eax
	jz _Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__100
	mov ebx, [ebp-0x664]
_Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__420:
	mov edi, [ebx+0x430]
	test edi, edi
	jz _Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__100
_Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__120:
	cmp word [edi], 0x2323
	jz _Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__110
_Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__180:
	mov ebx, edi
	mov edi, [ebx+0x430]
	test edi, edi
	jnz _Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__120
_Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__100:
	mov edx, [ebp-0x664]
	mov eax, [ebp+0x14]
	mov [eax], edx
	mov edx, [ebp-0x660]
	mov eax, [ebp+0x18]
	mov [eax], edx
	mov eax, [ebp+0x10]
	mov eax, [eax+0xc]
	test eax, eax
	jle _Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__130
	xor ebx, ebx
_Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__170:
	mov eax, [ebp+ebx*4-0x218]
	test eax, eax
	jnz _Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__140
	jmp _Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__150
_Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__160:
	mov eax, edi
_Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__140:
	mov edi, [eax+0x430]
	mov [esp], eax
	call _Z10FreeMemoryPv
	sub dword [numtokens], 0x1
	test edi, edi
	jnz _Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__160
_Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__150:
	add ebx, 0x1
	mov edx, [ebp+0x10]
	cmp ebx, [edx+0xc]
	jl _Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__170
_Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__130:
	mov eax, 0x1
_Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__400:
	add esp, 0x67c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__110:
	mov esi, [edi+0x430]
	test esi, esi
	jz _Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__180
	mov eax, [ebx+0x400]
	cmp eax, 0x4
	jz _Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__190
	sub eax, 0x1
	jz _Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__200
_Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__380:
	mov [esp+0xc], esi
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_cant_merge_s_wit
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z11SourceErrorP8source_sPcz
	xor eax, eax
	add esp, 0x67c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__20:
	mov edx, eax
	mov dword [esp+0xc], 0x80
	lea eax, [ebp-0x218]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si
	test eax, eax
	jz _Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__210
	mov edx, [ebp+0x10]
	mov esi, [edx+0x14]
	test esi, esi
	jnz _Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__220
_Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__30:
	mov dword [ebp-0x660], 0x0
	mov dword [ebp-0x664], 0x0
	jmp _Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__100
_Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__50:
	mov dword [esp], 0x440
	call _Z9GetMemorym
	mov edi, eax
	test eax, eax
	jz _Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__230
	mov dword [esp+0x8], 0x440
	mov [esp+0x4], esi
	mov [esp], eax
	call memcpy
	mov dword [edi+0x430], 0x0
	add dword [numtokens], 0x1
_Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__350:
	mov dword [edi+0x430], 0x0
	mov edx, [ebp-0x660]
	test edx, edx
	jz _Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__240
	mov edx, [ebp-0x660]
	mov [edx+0x430], edi
_Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__310:
	mov [ebp-0x660], edi
	jmp _Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__250
_Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__40:
	mov eax, [ebp+0x10]
	mov edi, [eax+0x10]
	test edi, edi
	jz _Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__260
	xor ebx, ebx
	jmp _Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__270
_Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__280:
	add ebx, 0x1
	mov edi, [edi+0x430]
	test edi, edi
	jz _Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__260
_Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__270:
	mov [esp+0x4], esi
	mov [esp], edi
	call strcmp
	test eax, eax
	jnz _Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__280
	test ebx, ebx
	js _Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__260
	mov ebx, [ebp+ebx*4-0x218]
	test ebx, ebx
	jz _Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__250
	mov dword [esp], 0x440
	call _Z9GetMemorym
	mov edi, eax
	test eax, eax
	jz _Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__290
_Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__320:
	mov dword [esp+0x8], 0x440
	mov [esp+0x4], ebx
	mov [esp], eax
	call memcpy
	mov dword [edi+0x430], 0x0
	add dword [numtokens], 0x1
	mov dword [edi+0x430], 0x0
	mov ecx, [ebp-0x660]
	test ecx, ecx
	jz _Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__300
_Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__330:
	mov edx, [ebp-0x660]
	mov [edx+0x430], edi
_Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__340:
	mov ebx, [ebx+0x430]
	test ebx, ebx
	jz _Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__310
	mov [ebp-0x660], edi
	mov dword [esp], 0x440
	call _Z9GetMemorym
	mov edi, eax
	test eax, eax
	jnz _Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__320
_Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__290:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	mov dword [edi+0x430], 0x0
	mov ecx, [ebp-0x660]
	test ecx, ecx
	jnz _Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__330
_Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__300:
	mov [ebp-0x664], edi
	jmp _Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__340
_Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__240:
	mov [ebp-0x660], edi
	mov [ebp-0x664], edi
	jmp _Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__250
_Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__230:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__350
_Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__70:
	test ebx, ebx
	js _Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__60
	lea edx, [ebp-0x658]
	mov [esp+0x4], edx
	mov eax, [ebp+ebx*4-0x218]
	mov [esp], eax
	call _Z18PC_StringizeTokensP7token_sS0_
	test eax, eax
	jz _Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__360
	mov dword [esp], 0x440
	call _Z9GetMemorym
	mov edi, eax
	test eax, eax
	jz _Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__370
	mov dword [esp+0x8], 0x440
	lea eax, [ebp-0x658]
	mov [esp+0x4], eax
	mov [esp], edi
	call memcpy
	mov dword [edi+0x430], 0x0
	add dword [numtokens], 0x1
	mov esi, [ebp-0x65c]
	jmp _Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__350
_Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__10:
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
	call _Z22PC_ExpandBuiltinDefineP8source_sP7token_sP8define_sPS2_S5_
	add esp, 0x67c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__190:
	mov eax, [esi+0x400]
	sub eax, 0x3
	cmp eax, 0x1
	ja _Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__380
	mov [esp+0x4], esi
	mov [esp], ebx
	call strcat
	jmp _Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__390
_Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__360:
	mov dword [esp+0x4], _cstring_cant_stringize_t
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z11SourceErrorP8source_sPcz
_Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__210:
	xor eax, eax
	jmp _Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__400
_Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__370:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	mov esi, [ebp-0x65c]
	jmp _Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__350
_Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__200:
	cmp dword [esi+0x400], 0x1
	jnz _Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__380
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
_Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__390:
	mov eax, [ebx+0x430]
	mov [esp], eax
	call _Z10FreeMemoryPv
	sub dword [numtokens], 0x1
	mov eax, [esi+0x430]
	mov [ebx+0x430], eax
	cmp [ebp-0x660], esi
	jz _Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__410
_Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__430:
	mov [esp], esi
	call _Z10FreeMemoryPv
	sub dword [numtokens], 0x1
	jmp _Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__420
_Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__410:
	mov [ebp-0x660], ebx
	jmp _Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5__430


;PC_ReadDirective(source_s*)
_Z16PC_ReadDirectiveP8source_s:
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
	call _Z18PC_ReadSourceTokenP8source_sP7token_s
	test eax, eax
	jz _Z16PC_ReadDirectiveP8source_s_10
	mov eax, [ebp-0x2c]
	test eax, eax
	jle _Z16PC_ReadDirectiveP8source_s_20
	mov dword [esp], 0x440
	call _Z9GetMemorym
	mov ebx, eax
	test eax, eax
	jz _Z16PC_ReadDirectiveP8source_s_30
	mov dword [esp+0x8], 0x440
	lea edx, [ebp-0x458]
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	mov dword [ebx+0x430], 0x0
	add dword [numtokens], 0x1
_Z16PC_ReadDirectiveP8source_s_80:
	mov eax, [edi+0x88]
	mov [ebx+0x430], eax
	mov [edi+0x88], ebx
	mov dword [esp+0x4], _cstring_found__at_end_of
	mov [esp], edi
	call _Z11SourceErrorP8source_sPcz
	xor eax, eax
_Z16PC_ReadDirectiveP8source_s_90:
	add esp, 0x45c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16PC_ReadDirectiveP8source_s_20:
	cmp dword [ebp-0x58], 0x4
	jz _Z16PC_ReadDirectiveP8source_s_40
_Z16PC_ReadDirectiveP8source_s_50:
	lea eax, [ebp-0x458]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_unknown_precompi
	mov [esp], edi
	call _Z11SourceErrorP8source_sPcz
	xor eax, eax
	add esp, 0x45c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16PC_ReadDirectiveP8source_s_10:
	mov dword [esp+0x4], _cstring_found__without_n
	mov [esp], edi
	call _Z11SourceErrorP8source_sPcz
	xor eax, eax
	add esp, 0x45c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16PC_ReadDirectiveP8source_s_40:
	mov eax, [directives]
	test eax, eax
	jz _Z16PC_ReadDirectiveP8source_s_50
	xor esi, esi
	mov ebx, directives
_Z16PC_ReadDirectiveP8source_s_70:
	lea edx, [ebp-0x458]
	mov [esp+0x4], edx
	mov [esp], eax
	call strcmp
	test eax, eax
	jz _Z16PC_ReadDirectiveP8source_s_60
	add esi, 0x1
	mov eax, [ebx+0x8]
	add ebx, 0x8
	test eax, eax
	jnz _Z16PC_ReadDirectiveP8source_s_70
	jmp _Z16PC_ReadDirectiveP8source_s_50
_Z16PC_ReadDirectiveP8source_s_30:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z16PC_ReadDirectiveP8source_s_80
_Z16PC_ReadDirectiveP8source_s_60:
	mov [esp], edi
	call dword [esi*8+directives+0x4]
	jmp _Z16PC_ReadDirectiveP8source_s_90
	nop


;PC_Directive_elif(source_s*)
_Z17PC_Directive_elifP8source_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, [ebp+0x8]
	mov edx, [ebx+0x94]
	test edx, edx
	jz _Z17PC_Directive_elifP8source_s_10
	mov eax, [edx+0x8]
	cmp eax, [ebx+0x84]
	jz _Z17PC_Directive_elifP8source_s_20
_Z17PC_Directive_elifP8source_s_10:
	mov dword [esp+0x4], _cstring_misplaced_elif
	mov [esp], ebx
	call _Z11SourceErrorP8source_sPcz
	xor eax, eax
_Z17PC_Directive_elifP8source_s_30:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17PC_Directive_elifP8source_s_20:
	mov esi, [edx]
	mov edi, [edx+0x4]
	mov eax, [edx+0xc]
	mov [ebx+0x94], eax
	xor eax, eax
	cmp dword [edx+0x4], 0x0
	setnz al
	sub [ebx+0x98], eax
	mov [esp], edx
	call _Z10FreeMemoryPv
	test esi, esi
	jz _Z17PC_Directive_elifP8source_s_10
	cmp esi, 0x2
	jz _Z17PC_Directive_elifP8source_s_10
	lea edx, [ebp-0x1c]
	mov dword [esp], 0x1
	xor ecx, ecx
	mov eax, ebx
	call _Z11PC_EvaluateP8source_sPlPdi
	test eax, eax
	jz _Z17PC_Directive_elifP8source_s_30
	sub edi, 0x1
	jz _Z17PC_Directive_elifP8source_s_40
	mov esi, 0x2
_Z17PC_Directive_elifP8source_s_50:
	mov dword [esp], 0x10
	call _Z9GetMemorym
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
	jmp _Z17PC_Directive_elifP8source_s_30
_Z17PC_Directive_elifP8source_s_40:
	mov edx, [ebp-0x1c]
	test edx, edx
	setz al
	movzx esi, al
	jmp _Z17PC_Directive_elifP8source_s_50


;PC_Directive_else(source_s*)
_Z17PC_Directive_elseP8source_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov esi, [ebp+0x8]
	mov edx, [esi+0x94]
	test edx, edx
	jz _Z17PC_Directive_elseP8source_s_10
	mov eax, [edx+0x8]
	cmp eax, [esi+0x84]
	jz _Z17PC_Directive_elseP8source_s_20
_Z17PC_Directive_elseP8source_s_10:
	mov dword [esp+0x4], _cstring_misplaced_else
	mov [esp], esi
	call _Z11SourceErrorP8source_sPcz
	xor eax, eax
_Z17PC_Directive_elseP8source_s_40:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17PC_Directive_elseP8source_s_20:
	mov ebx, [edx]
	mov edi, [edx+0x4]
	mov eax, [edx+0xc]
	mov [esi+0x94], eax
	xor eax, eax
	cmp dword [edx+0x4], 0x0
	setnz al
	sub [esi+0x98], eax
	mov [esp], edx
	call _Z10FreeMemoryPv
	test ebx, ebx
	jz _Z17PC_Directive_elseP8source_s_10
	cmp ebx, 0x2
	jz _Z17PC_Directive_elseP8source_s_30
	xor ebx, ebx
	cmp edi, 0x1
	setnz bl
	mov dword [esp], 0x10
	call _Z9GetMemorym
	mov dword [eax], 0x2
	mov edx, [esi+0x84]
	mov [eax+0x8], edx
	mov [eax+0x4], ebx
	add [esi+0x98], ebx
	mov edx, [esi+0x94]
	mov [eax+0xc], edx
	mov [esi+0x94], eax
	mov eax, 0x1
	jmp _Z17PC_Directive_elseP8source_s_40
_Z17PC_Directive_elseP8source_s_30:
	mov dword [esp+0x4], _cstring_else_after_else
	mov [esp], esi
	call _Z11SourceErrorP8source_sPcz
	xor eax, eax
	jmp _Z17PC_Directive_elseP8source_s_40


;PC_Directive_line(source_s*)
_Z17PC_Directive_lineP8source_s:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], _cstring_line_directive_n
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z11SourceErrorP8source_sPcz
	xor eax, eax
	leave
	ret
	nop


;PC_DollarEvaluate(source_s*, long*, double*, int)
_Z17PC_DollarEvaluateP8source_sPlPdi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x48c
	mov edx, [ebp+0xc]
	test edx, edx
	jz _Z17PC_DollarEvaluateP8source_sPlPdi_10
	mov eax, [ebp+0xc]
	mov dword [eax], 0x0
_Z17PC_DollarEvaluateP8source_sPlPdi_10:
	mov eax, [ebp+0x10]
	test eax, eax
	jz _Z17PC_DollarEvaluateP8source_sPlPdi_20
	mov edx, [ebp+0x10]
	mov dword [edx], 0x0
	mov dword [edx+0x4], 0x0
_Z17PC_DollarEvaluateP8source_sPlPdi_20:
	lea ebx, [ebp-0x468]
	mov [esp+0x4], ebx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z18PC_ReadSourceTokenP8source_sP7token_s
	test eax, eax
	jnz _Z17PC_DollarEvaluateP8source_sPlPdi_30
	mov dword [esp+0x4], _cstring_no_leading__afte
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z11SourceErrorP8source_sPcz
	xor eax, eax
_Z17PC_DollarEvaluateP8source_sPlPdi_350:
	add esp, 0x48c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17PC_DollarEvaluateP8source_sPlPdi_30:
	mov [esp+0x4], ebx
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z18PC_ReadSourceTokenP8source_sP7token_s
	test eax, eax
	jz _Z17PC_DollarEvaluateP8source_sPlPdi_40
	xor edi, edi
	mov dword [ebp-0x474], 0x1
	mov dword [ebp-0x470], 0x0
	mov dword [ebp-0x46c], 0x0
_Z17PC_DollarEvaluateP8source_sPlPdi_120:
	mov eax, [ebp-0x68]
	cmp eax, 0x4
	jz _Z17PC_DollarEvaluateP8source_sPlPdi_50
	cmp eax, 0x3
	jz _Z17PC_DollarEvaluateP8source_sPlPdi_60
	cmp eax, 0x5
	jnz _Z17PC_DollarEvaluateP8source_sPlPdi_70
_Z17PC_DollarEvaluateP8source_sPlPdi_60:
	movzx edx, byte [ebp-0x468]
	cmp dl, 0x28
	jz _Z17PC_DollarEvaluateP8source_sPlPdi_80
	mov eax, [ebp-0x474]
	sub eax, 0x1
	cmp dl, 0x29
	cmovnz eax, [ebp-0x474]
	mov [ebp-0x474], eax
_Z17PC_DollarEvaluateP8source_sPlPdi_210:
	mov eax, [ebp-0x474]
	test eax, eax
	jle _Z17PC_DollarEvaluateP8source_sPlPdi_90
	mov dword [esp], 0x440
	call _Z9GetMemorym
	mov esi, eax
	test eax, eax
	jz _Z17PC_DollarEvaluateP8source_sPlPdi_100
	mov dword [esp+0x8], 0x440
	mov [esp+0x4], ebx
	mov [esp], eax
	call memcpy
	mov dword [esi+0x430], 0x0
	add dword [numtokens], 0x1
_Z17PC_DollarEvaluateP8source_sPlPdi_280:
	mov dword [esi+0x430], 0x0
	mov eax, [ebp-0x46c]
	test eax, eax
	jz _Z17PC_DollarEvaluateP8source_sPlPdi_110
	mov edx, [ebp-0x46c]
	mov [edx+0x430], esi
	mov [ebp-0x46c], esi
_Z17PC_DollarEvaluateP8source_sPlPdi_200:
	mov [esp+0x4], ebx
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z18PC_ReadSourceTokenP8source_sP7token_s
	test eax, eax
	jnz _Z17PC_DollarEvaluateP8source_sPlPdi_120
_Z17PC_DollarEvaluateP8source_sPlPdi_90:
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
	call _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi
	test eax, eax
	jz _Z17PC_DollarEvaluateP8source_sPlPdi_130
	mov ecx, [ebp-0x470]
	test ecx, ecx
	jz _Z17PC_DollarEvaluateP8source_sPlPdi_140
	mov eax, [ebp-0x470]
	jmp _Z17PC_DollarEvaluateP8source_sPlPdi_150
_Z17PC_DollarEvaluateP8source_sPlPdi_160:
	mov eax, esi
_Z17PC_DollarEvaluateP8source_sPlPdi_150:
	mov esi, [eax+0x430]
	mov [esp], eax
	call _Z10FreeMemoryPv
	sub dword [numtokens], 0x1
	test esi, esi
	jnz _Z17PC_DollarEvaluateP8source_sPlPdi_160
_Z17PC_DollarEvaluateP8source_sPlPdi_140:
	mov eax, 0x1
	add esp, 0x48c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17PC_DollarEvaluateP8source_sPlPdi_50:
	test edi, edi
	jz _Z17PC_DollarEvaluateP8source_sPlPdi_170
	mov dword [esp], 0x440
	call _Z9GetMemorym
	mov esi, eax
	test eax, eax
	jz _Z17PC_DollarEvaluateP8source_sPlPdi_180
	mov dword [esp+0x8], 0x440
	mov [esp+0x4], ebx
	mov [esp], eax
	call memcpy
	mov dword [esi+0x430], 0x0
	add dword [numtokens], 0x1
_Z17PC_DollarEvaluateP8source_sPlPdi_340:
	mov dword [esi+0x430], 0x0
	mov eax, [ebp-0x46c]
	test eax, eax
	jz _Z17PC_DollarEvaluateP8source_sPlPdi_190
	mov edx, [ebp-0x46c]
	mov [edx+0x430], esi
	mov [ebp-0x46c], esi
	xor edi, edi
	jmp _Z17PC_DollarEvaluateP8source_sPlPdi_200
_Z17PC_DollarEvaluateP8source_sPlPdi_80:
	add dword [ebp-0x474], 0x1
	jmp _Z17PC_DollarEvaluateP8source_sPlPdi_210
_Z17PC_DollarEvaluateP8source_sPlPdi_170:
	mov edi, _cstring_defined
	mov ecx, 0x8
	cld
	mov esi, ebx
	repe cmpsb
	mov edx, 0x0
	jz _Z17PC_DollarEvaluateP8source_sPlPdi_220
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
_Z17PC_DollarEvaluateP8source_sPlPdi_220:
	test edx, edx
	jz _Z17PC_DollarEvaluateP8source_sPlPdi_230
	mov eax, [ebp+0x8]
	mov esi, [eax+0x90]
	movzx eax, byte [ebp-0x468]
	test al, al
	jnz _Z17PC_DollarEvaluateP8source_sPlPdi_240
	xor ecx, ecx
	xor edx, edx
	xor eax, eax
_Z17PC_DollarEvaluateP8source_sPlPdi_320:
	xor edx, ecx
	xor eax, edx
	and eax, 0x3ff
	mov esi, [esi+eax*4]
	test esi, esi
	jz _Z17PC_DollarEvaluateP8source_sPlPdi_250
_Z17PC_DollarEvaluateP8source_sPlPdi_270:
	mov [esp+0x4], ebx
	mov eax, [esi]
	mov [esp], eax
	call strcmp
	test eax, eax
	jz _Z17PC_DollarEvaluateP8source_sPlPdi_260
	mov esi, [esi+0x1c]
	test esi, esi
	jnz _Z17PC_DollarEvaluateP8source_sPlPdi_270
_Z17PC_DollarEvaluateP8source_sPlPdi_250:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_cant_evaluate_s_
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z11SourceErrorP8source_sPcz
_Z17PC_DollarEvaluateP8source_sPlPdi_130:
	xor eax, eax
	add esp, 0x48c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17PC_DollarEvaluateP8source_sPlPdi_110:
	mov [ebp-0x470], esi
	mov [ebp-0x46c], esi
	jmp _Z17PC_DollarEvaluateP8source_sPlPdi_200
_Z17PC_DollarEvaluateP8source_sPlPdi_100:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z17PC_DollarEvaluateP8source_sPlPdi_280
_Z17PC_DollarEvaluateP8source_sPlPdi_40:
	mov dword [esp+0x4], _cstring_nothing_to_evalu
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z11SourceErrorP8source_sPcz
	xor eax, eax
	add esp, 0x48c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17PC_DollarEvaluateP8source_sPlPdi_230:
	mov dword [esp], 0x440
	call _Z9GetMemorym
	mov esi, eax
	test eax, eax
	jz _Z17PC_DollarEvaluateP8source_sPlPdi_290
	mov dword [esp+0x8], 0x440
	mov [esp+0x4], ebx
	mov [esp], eax
	call memcpy
	mov dword [esi+0x430], 0x0
	add dword [numtokens], 0x1
_Z17PC_DollarEvaluateP8source_sPlPdi_360:
	mov dword [esi+0x430], 0x0
	mov eax, [ebp-0x46c]
	test eax, eax
	jz _Z17PC_DollarEvaluateP8source_sPlPdi_300
	mov ecx, [ebp-0x46c]
	mov [ecx+0x430], esi
	mov [ebp-0x46c], esi
	mov edi, 0x1
	jmp _Z17PC_DollarEvaluateP8source_sPlPdi_200
_Z17PC_DollarEvaluateP8source_sPlPdi_240:
	xor ecx, ecx
	mov edx, 0x77
_Z17PC_DollarEvaluateP8source_sPlPdi_310:
	movsx eax, al
	imul eax, edx
	add ecx, eax
	movzx eax, byte [edx+ebx-0x76]
	add edx, 0x1
	test al, al
	jnz _Z17PC_DollarEvaluateP8source_sPlPdi_310
	mov edx, ecx
	sar edx, 0xa
	mov eax, ecx
	sar eax, 0x14
	jmp _Z17PC_DollarEvaluateP8source_sPlPdi_320
_Z17PC_DollarEvaluateP8source_sPlPdi_260:
	lea eax, [ebp-0x20]
	mov [esp+0x10], eax
	lea eax, [ebp-0x1c]
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z15PC_ExpandDefineP8source_sP7token_sP8define_sPS2_S5_
	test eax, eax
	jz _Z17PC_DollarEvaluateP8source_sPlPdi_130
	mov eax, [ebp-0x1c]
	test eax, eax
	jz _Z17PC_DollarEvaluateP8source_sPlPdi_330
	mov edx, [ebp-0x20]
	test edx, edx
	jz _Z17PC_DollarEvaluateP8source_sPlPdi_330
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x88]
	mov [edx+0x430], eax
	mov eax, [ebp-0x1c]
	mov [ecx+0x88], eax
_Z17PC_DollarEvaluateP8source_sPlPdi_330:
	xor edi, edi
	jmp _Z17PC_DollarEvaluateP8source_sPlPdi_200
_Z17PC_DollarEvaluateP8source_sPlPdi_180:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z17PC_DollarEvaluateP8source_sPlPdi_340
_Z17PC_DollarEvaluateP8source_sPlPdi_190:
	mov [ebp-0x470], esi
	mov [ebp-0x46c], esi
	xor edi, edi
	jmp _Z17PC_DollarEvaluateP8source_sPlPdi_200
_Z17PC_DollarEvaluateP8source_sPlPdi_70:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_cant_evaluate_s
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z11SourceErrorP8source_sPcz
	xor eax, eax
	jmp _Z17PC_DollarEvaluateP8source_sPlPdi_350
_Z17PC_DollarEvaluateP8source_sPlPdi_300:
	mov [ebp-0x470], esi
	mov [ebp-0x46c], esi
	mov edi, 0x1
	jmp _Z17PC_DollarEvaluateP8source_sPlPdi_200
_Z17PC_DollarEvaluateP8source_sPlPdi_290:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z17PC_DollarEvaluateP8source_sPlPdi_360


;PC_EvaluateTokens(source_s*, token_s*, long*, double*, int)
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xb6c
	mov esi, [ebp+0xc]
	mov eax, [ebp+0x10]
	test eax, eax
	jz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_10
	mov eax, [ebp+0x10]
	mov dword [eax], 0x0
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_10:
	mov edi, [ebp+0x14]
	test edi, edi
	jz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_20
	mov edx, [ebp+0x14]
	mov dword [edx], 0x0
	mov dword [edx+0x4], 0x0
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_20:
	test esi, esi
	jz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_30
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
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_320:
	mov eax, [ebx+0x400]
	cmp eax, 0x4
	jz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_40
	cmp eax, 0x5
	jz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_50
	cmp eax, 0x3
	jz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_60
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_unknown_s_in_ife
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z11SourceErrorP8source_sPcz
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_570:
	mov edx, 0x1
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_720:
	mov eax, [ebp-0xb40]
	test eax, eax
	jz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_70
	mov eax, [ebp+0x10]
	test eax, eax
	jz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_80
	mov edi, [ebp-0xb40]
	mov eax, [edi]
	mov ecx, [ebp+0x10]
	mov [ecx], eax
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_80:
	mov eax, [ebp+0x14]
	test eax, eax
	jz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_70
	mov edi, [ebp-0xb40]
	movsd xmm0, qword [edi+0x4]
	mov eax, [ebp+0x14]
	movsd [eax], xmm0
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_70:
	mov eax, [ebp-0xb48]
	test eax, eax
	jz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_90
	mov eax, [ebp-0xb48]
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_100:
	mov eax, [eax+0x10]
	test eax, eax
	jnz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_100
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_90:
	mov ecx, [ebp-0xb40]
	test ecx, ecx
	jz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_110
	mov eax, [ebp-0xb40]
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_120:
	mov eax, [eax+0x14]
	test eax, eax
	jnz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_120
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_110:
	test edx, edx
	jz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_130
	mov edi, [ebp+0x10]
	test edi, edi
	jz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_140
	mov edx, [ebp+0x10]
	mov dword [edx], 0x0
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_140:
	mov esi, [ebp+0x14]
	test esi, esi
	jz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_150
	mov ecx, [ebp+0x14]
	mov dword [ecx], 0x0
	mov dword [ecx+0x4], 0x0
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_150:
	xor eax, eax
	add esp, 0xb6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_40:
	test edx, edx
	jnz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_160
	test ecx, ecx
	jnz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_160
	mov edi, _cstring_defined
	mov ecx, 0x8
	cld
	mov esi, ebx
	repe cmpsb
	mov edx, 0x0
	jz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_170
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_170:
	test edx, edx
	jnz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_180
	mov ebx, [ebx+0x430]
	mov edi, _cstring_1
	mov ecx, 0x2
	mov esi, ebx
	repe cmpsb
	mov edx, 0x0
	jz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_190
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_190:
	test edx, edx
	jz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_200
	mov dword [ebp-0xb38], 0x0
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_530:
	test ebx, ebx
	jz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_210
	cmp dword [ebx+0x400], 0x4
	jnz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_220
	cmp dword [ebp-0xb24], 0x3f
	jg _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_230
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
	jnz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_240
	xor ecx, ecx
	xor edx, edx
	xor eax, eax
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_550:
	xor ecx, edx
	xor ecx, eax
	and ecx, 0x3ff
	mov esi, [esi+ecx*4]
	test esi, esi
	jz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_250
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_270:
	mov [esp+0x4], ebx
	mov eax, [esi]
	mov [esp], eax
	call strcmp
	test eax, eax
	jz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_260
	mov esi, [esi+0x1c]
	test esi, esi
	jnz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_270
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_250:
	mov eax, [ebp-0xb64]
	mov dword [eax], 0x0
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x0
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_580:
	mov ecx, [ebp-0xb34]
	mov edx, [ebp-0xb64]
	mov [edx+0xc], ecx
	mov dword [edx+0x14], 0x0
	mov edi, [ebp-0xb3c]
	mov [edx+0x10], edi
	test edi, edi
	jz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_280
	mov edx, [ebp-0xb64]
	mov eax, [ebp-0xb3c]
	mov [eax+0x14], edx
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_590:
	mov esi, [ebp-0xb38]
	test esi, esi
	jz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_290
	mov ebx, [ebx+0x430]
	test ebx, ebx
	jz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_300
	mov dword [ebp-0xb4c], _cstring_2
	mov ecx, 0x2
	cld
	mov esi, ebx
	mov edi, _cstring_2
	repe cmpsb
	mov edx, 0x0
	jz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_310
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_310:
	test edx, edx
	jnz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_300
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_290:
	mov eax, [ebp-0xb64]
	mov [ebp-0xb3c], eax
	mov edx, 0x1
	xor ecx, ecx
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_520:
	mov ebx, [ebx+0x430]
	test ebx, ebx
	jnz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_320
	test edx, edx
	jz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_330
	mov edx, [ebp-0xb34]
	test edx, edx
	jnz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_340
	mov ebx, [ebp-0xb48]
	test ebx, ebx
	jz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_350
	mov dword [ebp-0xb30], 0x0
	pxor xmm1, xmm1
	movapd xmm2, xmm1
	mov dword [ebp-0xb2c], 0x0
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_710:
	mov ebx, [ebp-0xb40]
	mov esi, [ebp-0xb48]
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_360
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_400:
	mov eax, [esi]
	sub eax, 0x23
	cmp eax, 0x1
	jbe _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_370
	mov ebx, [ebx+0x14]
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_370:
	test ebx, ebx
	jz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_380
	mov esi, edx
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_360:
	mov edx, [esi+0x10]
	test edx, edx
	jz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_390
	mov eax, [edx+0x8]
	cmp [esi+0x8], eax
	jg _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_390
	jnz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_400
	mov eax, [esi+0x4]
	cmp eax, [edx+0x4]
	jl _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_400
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_390:
	mov edi, [ebx+0x14]
	mov edx, [esi]
	lea eax, [edx-0x5]
	cmp eax, 0x26
	ja _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_410
	jmp dword [eax*4+_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_jumptab_0]
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_50:
	test ecx, ecx
	jnz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_420
	mov eax, [ebx+0x404]
	cmp eax, 0x2c
	jz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_430
	cmp eax, 0x2d
	jz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_440
	mov ecx, [ebp+0x18]
	test ecx, ecx
	jnz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_450
	cmp eax, 0x23
	jz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_460
	cmp eax, 0x1c
	jz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_460
	cmp eax, 0x15
	jz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_460
	cmp eax, 0x16
	jz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_460
	cmp eax, 0x20
	jz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_460
	cmp eax, 0x21
	jz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_460
	cmp eax, 0x22
	jz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_460
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_450:
	sub eax, 0x5
	cmp eax, 0x26
	ja _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_470
	jmp dword [eax*4+_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_jumptab_1]
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_130:
	mov eax, 0x1
	add esp, 0xb6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_60:
	test edx, edx
	jnz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_480
	cmp dword [ebp-0xb24], 0x3f
	jg _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_490
	mov edx, [ebp-0xb24]
	lea eax, [edx+edx*2]
	lea edx, [ebp+eax*8-0xb18]
	add dword [ebp-0xb24], 0x1
	test ecx, ecx
	jz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_500
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
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_560:
	mov eax, [ebp-0xb34]
	mov [edx+0xc], eax
	mov dword [edx+0x14], 0x0
	mov ecx, [ebp-0xb3c]
	mov [edx+0x10], ecx
	test ecx, ecx
	jz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_510
	mov edi, [ebp-0xb3c]
	mov [edi+0x14], edx
	mov [ebp-0xb3c], edx
	mov edx, 0x1
	xor ecx, ecx
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_520
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_200:
	mov ebx, [ebx+0x430]
	mov dword [ebp-0xb38], 0x1
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_530
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_240:
	xor ecx, ecx
	mov edx, 0x77
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_540:
	movsx eax, al
	imul eax, edx
	add ecx, eax
	movzx eax, byte [ebx+edx-0x76]
	add edx, 0x1
	test al, al
	jnz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_540
	mov edx, ecx
	sar edx, 0xa
	mov eax, ecx
	sar eax, 0x14
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_550
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_500:
	mov eax, [ebx+0x408]
	mov [edx], eax
	fld tword [ebx+0x410]
	fstp qword [edx+0x4]
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_560
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_440:
	sub dword [ebp-0xb34], 0x1
	jns _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_520
	mov dword [esp+0x4], _cstring_too_many__in_ife
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z11SourceErrorP8source_sPcz
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_570
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_470:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_invalid_operator
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z11SourceErrorP8source_sPcz
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_570
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_30:
	mov dword [ebp-0xb48], 0x0
	mov dword [ebp-0xb40], 0x0
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_330:
	mov dword [esp+0x4], _cstring_trailing_operato
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z11SourceErrorP8source_sPcz
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_570
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_430:
	add dword [ebp-0xb34], 0x1
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_520
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_260:
	mov eax, [ebp-0xb64]
	mov dword [eax], 0x1
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x3ff00000
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_580
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_280:
	mov [ebp-0xb40], edx
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_590
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1160:
	mov dword [esp+0x4], _cstring__or__used_in_ife
	mov edi, [ebp+0x8]
	mov [esp], edi
	call _Z11SourceErrorP8source_sPcz
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_620:
	cmp dword [ebp-0xb28], 0x3f
	jg _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_600
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
	ja _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_610
	jmp dword [eax*4+_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_jumptab_2]
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1170:
	test edx, edx
	jnz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_620
	mov ecx, 0x1
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_520
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1180:
	test edx, edx
	jz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_620
	mov dword [esp+0x4], _cstring__or__after_value
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z11SourceErrorP8source_sPcz
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_570
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1150:
	test edx, edx
	jnz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_620
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_operator_s_after
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z11SourceErrorP8source_sPcz
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_570
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1130:
	mov eax, [ebp-0xb2c]
	test eax, eax
	jz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_630
	mov eax, [ebp+0x18]
	test eax, eax
	jz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_640
	mov ecx, [ebp-0xb30]
	test ecx, ecx
	jnz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_650
	mov eax, [edi]
	mov [ebx], eax
	mov dword [ebp-0xb2c], 0x0
	mov edx, [esi]
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_410:
	lea eax, [edx-0x23]
	cmp eax, 0x1
	jbe _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_660
	cmp edx, 0x2b
	jz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_670
	mov ebx, edi
	mov edi, [edi+0x14]
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_670:
	mov eax, [ebx+0x10]
	test eax, eax
	jz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_680
	mov [eax+0x14], edi
	mov edi, [ebx+0x14]
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_880:
	test edi, edi
	jz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_660
	mov [edi+0x10], eax
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_660:
	mov edx, [esi+0xc]
	test edx, edx
	jz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_690
	mov eax, [esi+0x10]
	mov [edx+0x10], eax
	mov eax, [esi+0x10]
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_870:
	test eax, eax
	jz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_700
	mov [eax+0xc], edx
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_700:
	mov eax, [ebp-0xb48]
	test eax, eax
	jnz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_710
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_350:
	xor edx, edx
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_720
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_610:
	xor eax, eax
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_740:
	mov [edx+0x4], eax
	mov eax, [ebp-0xb34]
	mov [edx+0x8], eax
	mov dword [edx+0x10], 0x0
	mov ecx, [ebp-0xb44]
	mov [edx+0xc], ecx
	test ecx, ecx
	jz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_730
	mov edi, [ebp-0xb44]
	mov [edi+0x10], edx
	mov [ebp-0xb44], edx
	xor edx, edx
	xor ecx, ecx
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_520
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1210:
	mov eax, 0xc
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_740
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1220:
	mov eax, 0xb
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_740
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1230:
	mov eax, 0xd
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_740
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1240:
	mov eax, 0xf
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_740
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1250:
	mov eax, 0xe
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_740
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1190:
	mov eax, 0x7
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_740
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1200:
	mov eax, 0x6
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_740
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1260:
	mov eax, 0xa
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_740
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1270:
	mov eax, 0x8
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_740
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1280:
	mov eax, 0x9
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_740
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1290:
	mov eax, 0x10
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_740
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1300:
	mov eax, 0x5
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_740
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1140:
	mov eax, [ebp-0xb2c]
	test eax, eax
	jnz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_750
	mov ecx, [ebx]
	mov [ebp-0xb30], ecx
	movsd xmm2, qword [ebx+0x4]
	mov dword [ebp-0xb2c], 0x1
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_410
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1120:
	mov eax, [ebx]
	cmp eax, [edi]
	setl al
	movzx eax, al
	mov [ebx], eax
	movsd xmm0, qword [edi+0x4]
	ucomisd xmm0, [ebx+0x4]
	jbe _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_760
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_790:
	movsd xmm0, qword [_double_1_00000000]
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_780:
	movsd [ebx+0x4], xmm0
	mov edx, [esi]
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_410
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1080:
	mov eax, [ebx]
	xor eax, [edi]
	mov [ebx], eax
	mov edx, [esi]
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_410
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1100:
	xor eax, eax
	cmp dword [ebx], 0x0
	setz al
	mov [ebx], eax
	ucomisd xmm1, [ebx+0x4]
	jz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_770
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_760:
	movapd xmm0, xmm1
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_780
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1110:
	mov eax, [ebx]
	cmp eax, [edi]
	setg al
	movzx eax, al
	mov [ebx], eax
	movsd xmm0, qword [ebx+0x4]
	ucomisd xmm0, [edi+0x4]
	ja _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_790
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_760
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1090:
	not dword [ebx]
	mov edx, [esi]
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_410
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1000:
	mov ecx, [edi]
	shl dword [ebx], cl
	mov edx, [esi]
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_410
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1010:
	mov eax, [ebx]
	imul eax, [edi]
	mov [ebx], eax
	movsd xmm0, qword [ebx+0x4]
	mulsd xmm0, [edi+0x4]
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_780
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1020:
	mov edx, [edi]
	test edx, edx
	jz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_800
	ucomisd xmm1, [edi+0x4]
	jz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_810
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_910:
	mov eax, [ebx]
	mov ecx, edx
	cdq
	idiv ecx
	mov [ebx], eax
	movsd xmm0, qword [ebx+0x4]
	divsd xmm0, qword [edi+0x4]
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_780
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1030:
	mov edx, [edi]
	test edx, edx
	jz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_820
	mov eax, [ebx]
	mov ecx, edx
	cdq
	idiv ecx
	mov [ebx], edx
	mov edx, [esi]
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_410
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1040:
	mov eax, [ebx]
	add eax, [edi]
	mov [ebx], eax
	movsd xmm0, qword [ebx+0x4]
	addsd xmm0, [edi+0x4]
	movsd [ebx+0x4], xmm0
	mov edx, [esi]
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_410
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_930:
	mov eax, [ebx]
	test eax, eax
	jz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_830
	mov eax, [edi]
	test eax, eax
	jz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_830
	mov eax, 0x1
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_900:
	mov [ebx], eax
	ucomisd xmm1, [ebx+0x4]
	jnz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_840
	jnp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_760
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_840:
	ucomisd xmm1, [edi+0x4]
	jp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_790
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_860:
	jnz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_790
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_760
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_940:
	mov eax, [ebx]
	test eax, eax
	jnz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_850
	mov eax, [edi]
	test eax, eax
	jnz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_850
	xor eax, eax
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_920:
	mov [ebx], eax
	ucomisd xmm1, [ebx+0x4]
	jnz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_790
	jp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_790
	ucomisd xmm1, [edi+0x4]
	jnz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_790
	jnp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_760
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_790
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_950:
	mov eax, [ebx]
	cmp eax, [edi]
	setge al
	movzx eax, al
	mov [ebx], eax
	movsd xmm0, qword [ebx+0x4]
	ucomisd xmm0, [edi+0x4]
	jae _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_790
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_760
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_960:
	mov eax, [ebx]
	cmp eax, [edi]
	setle al
	movzx eax, al
	mov [ebx], eax
	movsd xmm0, qword [edi+0x4]
	ucomisd xmm0, [ebx+0x4]
	jae _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_790
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_760
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_970:
	mov eax, [ebx]
	cmp eax, [edi]
	setz al
	movzx eax, al
	mov [ebx], eax
	movsd xmm0, qword [ebx+0x4]
	ucomisd xmm0, [edi+0x4]
	jnz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_760
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_770:
	jnp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_790
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_760
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_980:
	mov eax, [ebx]
	cmp eax, [edi]
	setnz al
	movzx eax, al
	mov [ebx], eax
	movsd xmm0, qword [ebx+0x4]
	ucomisd xmm0, [edi+0x4]
	jnp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_860
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_790
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_990:
	mov ecx, [edi]
	sar dword [ebx], cl
	mov edx, [esi]
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_410
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1060:
	mov eax, [ebx]
	and eax, [edi]
	mov [ebx], eax
	mov edx, [esi]
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_410
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1070:
	mov eax, [ebx]
	or eax, [edi]
	mov [ebx], eax
	mov edx, [esi]
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_410
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1050:
	mov eax, [ebx]
	sub eax, [edi]
	mov [ebx], eax
	movsd xmm0, qword [ebx+0x4]
	subsd xmm0, [edi+0x4]
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_780
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_510:
	mov [ebp-0xb40], edx
	mov [ebp-0xb3c], edx
	mov edx, 0x1
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_520
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_380:
	mov dword [esp+0x4], _cstring_mising_values_in
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z11SourceErrorP8source_sPcz
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_570
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_340:
	mov dword [esp+0x4], _cstring_too_many__in_ife1
	mov edi, [ebp+0x8]
	mov [esp], edi
	call _Z11SourceErrorP8source_sPcz
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_570
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_730:
	mov [ebp-0xb44], edx
	mov [ebp-0xb48], edx
	xor edx, edx
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_520
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_690:
	mov esi, [esi+0x10]
	mov [ebp-0xb48], esi
	mov eax, esi
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_870
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_160:
	mov dword [esp+0x4], _cstring_syntax_error_in_
	mov edi, [ebp+0x8]
	mov [esp], edi
	call _Z11SourceErrorP8source_sPcz
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_570
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_680:
	mov [ebp-0xb40], edi
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_880
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_460:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_illigal_operator
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z11SourceErrorP8source_sPcz
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_570
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_180:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_undefined_name_s
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z11SourceErrorP8source_sPcz
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_570
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_300:
	mov dword [esp+0x4], _cstring_defined_without_
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z11SourceErrorP8source_sPcz
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_570
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_210:
	mov esi, _cstring_endoffile
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_890:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_defined_without_1
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z11SourceErrorP8source_sPcz
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_570
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_220:
	mov esi, ebx
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_890
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_230:
	mov dword [esp+0x4], _cstring_out_of_value_spa
	mov edi, [ebp+0x8]
	mov [esp], edi
	call _Z11SourceErrorP8source_sPcz
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_570
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_420:
	mov dword [esp+0x4], _cstring_misplaced_minus_
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z11SourceErrorP8source_sPcz
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_570
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_480:
	mov dword [esp+0x4], _cstring_syntax_error_in_
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z11SourceErrorP8source_sPcz
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_570
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_490:
	mov dword [esp+0x4], _cstring_out_of_value_spa
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z11SourceErrorP8source_sPcz
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_570
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_600:
	mov dword [esp+0x4], _cstring_out_of_operator_
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z11SourceErrorP8source_sPcz
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_570
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_820:
	mov dword [esp+0x4], _cstring_divide_by_zero_i
	mov edi, [ebp+0x8]
	mov [esp], edi
	call _Z11SourceErrorP8source_sPcz
	mov edx, 0x1
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_720
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_830:
	xor eax, eax
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_900
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_750:
	mov dword [esp+0x4], _cstring__after__in_ifeli
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z11SourceErrorP8source_sPcz
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_570
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_810:
	jp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_910
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_800:
	mov dword [esp+0x4], _cstring_divide_by_zero_i
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z11SourceErrorP8source_sPcz
	mov edx, 0x1
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_720
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_850:
	mov eax, 0x1
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_920
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_650:
	mov dword [ebp-0xb2c], 0x0
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_410
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_640:
	ucomisd xmm2, xmm1
	jnz _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_650
	jp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_650
	movsd xmm0, qword [edi+0x4]
	movsd [ebx+0x4], xmm0
	mov dword [ebp-0xb2c], 0x0
	mov edx, [esi]
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_410
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_630:
	mov dword [esp+0x4], _cstring__without__in_ife
	mov edi, [ebp+0x8]
	mov [esp], edi
	call _Z11SourceErrorP8source_sPcz
	mov edx, 0x1
	jmp _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_720
	nop
	add [eax], al
	
	
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_jumptab_0:
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_930
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_940
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_950
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_960
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_970
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_980
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_410
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_410
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_410
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_410
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_410
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_410
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_410
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_410
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_410
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_410
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_990
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1000
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_410
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_410
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_410
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1010
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1020
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1030
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1040
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1050
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_410
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1060
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1070
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1080
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1090
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1100
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1110
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1120
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_410
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_410
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_410
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1130
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1140
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_jumptab_1:
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1150
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1150
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1150
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1150
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1150
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1150
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_470
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_470
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_470
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_470
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_470
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1160
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1160
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_470
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_470
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_470
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1150
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1150
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_470
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_470
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_470
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1150
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1150
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1150
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1150
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1170
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_470
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1150
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1150
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1150
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1180
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1180
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1150
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1150
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_470
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_470
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_470
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1150
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1150
_Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_jumptab_2:
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1190
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1200
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1210
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1210
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1220
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1220
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_610
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_610
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_610
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_610
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_610
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_610
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_610
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_610
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_610
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_610
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1230
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1230
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_610
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_610
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_610
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1240
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1240
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1240
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1250
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1250
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_610
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1260
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1270
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1280
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1290
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1290
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1210
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1210
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_610
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_610
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_610
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1300
	dd _Z17PC_EvaluateTokensP8source_sP7token_sPlPdi_1300


;PC_ReadLineHandle(int, pc_token_s*)
_Z17PC_ReadLineHandleiP10pc_token_s:
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
	ja _Z17PC_ReadLineHandleiP10pc_token_s_10
	mov eax, [edx*4+sourceFiles]
	test eax, eax
	jz _Z17PC_ReadLineHandleiP10pc_token_s_10
	lea ebx, [ebp-0x458]
	mov ecx, 0x1
	mov edx, ebx
	call _Z11PC_ReadLineP8source_sP7token_sh
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
	jz _Z17PC_ReadLineHandleiP10pc_token_s_20
	mov eax, edi
	add esp, 0x46c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17PC_ReadLineHandleiP10pc_token_s_10:
	xor edi, edi
	mov eax, edi
	add esp, 0x46c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17PC_ReadLineHandleiP10pc_token_s_20:
	mov eax, [ebp-0x460]
	mov [esp], eax
	call _Z17StripDoubleQuotesPc
	mov eax, edi
	add esp, 0x46c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;PC_Directive_endif(source_s*)
_Z18PC_Directive_endifP8source_s:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov edx, [esi+0x94]
	test edx, edx
	jz _Z18PC_Directive_endifP8source_s_10
	mov eax, [edx+0x8]
	cmp eax, [esi+0x84]
	jz _Z18PC_Directive_endifP8source_s_20
_Z18PC_Directive_endifP8source_s_10:
	mov dword [esp+0x4], _cstring_misplaced_endif
	mov [esp], esi
	call _Z11SourceErrorP8source_sPcz
	xor eax, eax
_Z18PC_Directive_endifP8source_s_30:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z18PC_Directive_endifP8source_s_20:
	mov ebx, [edx]
	mov eax, [edx+0xc]
	mov [esi+0x94], eax
	xor eax, eax
	cmp dword [edx+0x4], 0x0
	setnz al
	sub [esi+0x98], eax
	mov [esp], edx
	call _Z10FreeMemoryPv
	test ebx, ebx
	jz _Z18PC_Directive_endifP8source_s_10
	mov eax, 0x1
	jmp _Z18PC_Directive_endifP8source_s_30


;PC_Directive_error(source_s*)
_Z18PC_Directive_errorP8source_s:
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
	call _Z18PC_ReadSourceTokenP8source_sP7token_s
	mov eax, [ebx+0x98]
	test eax, eax
	jz _Z18PC_Directive_errorP8source_s_10
	mov eax, 0x1
	add esp, 0x450
	pop ebx
	pop esi
	pop ebp
	ret
_Z18PC_Directive_errorP8source_s_10:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_error_directive_
	mov [esp], ebx
	call _Z11SourceErrorP8source_sPcz
	xor eax, eax
	add esp, 0x450
	pop ebx
	pop esi
	pop ebp
	ret
	add [eax], al


;PC_Directive_ifdef(source_s*)
_Z18PC_Directive_ifdefP8source_s:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], 0x8
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z19PC_Directive_if_defP8source_si
	leave
	ret
	nop


;PC_Directive_undef(source_s*)
_Z18PC_Directive_undefP8source_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x46c
	mov esi, [ebp+0x8]
	mov eax, [esi+0x98]
	test eax, eax
	jle _Z18PC_Directive_undefP8source_s_10
_Z18PC_Directive_undefP8source_s_70:
	mov eax, 0x1
_Z18PC_Directive_undefP8source_s_50:
	add esp, 0x46c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18PC_Directive_undefP8source_s_10:
	xor ecx, ecx
	lea edx, [ebp-0x458]
	mov eax, esi
	call _Z11PC_ReadLineP8source_sP7token_sh
	test eax, eax
	jz _Z18PC_Directive_undefP8source_s_20
	cmp dword [ebp-0x58], 0x4
	jz _Z18PC_Directive_undefP8source_s_30
	mov dword [esp], 0x440
	call _Z9GetMemorym
	mov ebx, eax
	test eax, eax
	jz _Z18PC_Directive_undefP8source_s_40
	mov dword [esp+0x8], 0x440
	lea eax, [ebp-0x458]
	mov [esp+0x4], eax
	mov [esp], ebx
	call memcpy
	mov dword [ebx+0x430], 0x0
	add dword [numtokens], 0x1
_Z18PC_Directive_undefP8source_s_210:
	mov eax, [esi+0x88]
	mov [ebx+0x430], eax
	mov [esi+0x88], ebx
	lea edx, [ebp-0x458]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_expected_name_fo
	mov [esp], esi
	call _Z11SourceErrorP8source_sPcz
	xor eax, eax
	jmp _Z18PC_Directive_undefP8source_s_50
_Z18PC_Directive_undefP8source_s_30:
	movzx eax, byte [ebp-0x458]
	test al, al
	jnz _Z18PC_Directive_undefP8source_s_60
	xor ecx, ecx
	xor eax, eax
	xor edx, edx
_Z18PC_Directive_undefP8source_s_120:
	xor ecx, eax
	xor edx, ecx
	and edx, 0x3ff
	mov eax, [esi+0x90]
	lea edx, [eax+edx*4]
	mov [ebp-0x45c], edx
	mov ebx, [edx]
	test ebx, ebx
	jz _Z18PC_Directive_undefP8source_s_70
	xor edi, edi
	jmp _Z18PC_Directive_undefP8source_s_80
_Z18PC_Directive_undefP8source_s_100:
	mov edi, ebx
	mov ebx, eax
_Z18PC_Directive_undefP8source_s_80:
	lea eax, [ebp-0x458]
	mov [esp+0x4], eax
	mov eax, [ebx]
	mov [esp], eax
	call strcmp
	test eax, eax
	jz _Z18PC_Directive_undefP8source_s_90
	mov eax, [ebx+0x1c]
	test eax, eax
	jnz _Z18PC_Directive_undefP8source_s_100
	jmp _Z18PC_Directive_undefP8source_s_70
_Z18PC_Directive_undefP8source_s_20:
	mov dword [esp+0x4], _cstring_undef_without_na
	mov [esp], esi
	call _Z11SourceErrorP8source_sPcz
	xor eax, eax
	jmp _Z18PC_Directive_undefP8source_s_50
_Z18PC_Directive_undefP8source_s_60:
	xor ecx, ecx
	mov edx, 0x77
_Z18PC_Directive_undefP8source_s_110:
	movsx eax, al
	imul eax, edx
	add ecx, eax
	movzx eax, byte [edx+ebp-0x4ce]
	add edx, 0x1
	test al, al
	jnz _Z18PC_Directive_undefP8source_s_110
	mov eax, ecx
	sar eax, 0xa
	mov edx, ecx
	sar edx, 0x14
	jmp _Z18PC_Directive_undefP8source_s_120
_Z18PC_Directive_undefP8source_s_90:
	test byte [ebx+0x4], 0x1
	jnz _Z18PC_Directive_undefP8source_s_130
	test edi, edi
	jz _Z18PC_Directive_undefP8source_s_140
	mov eax, [ebx+0x1c]
	mov [edi+0x1c], eax
_Z18PC_Directive_undefP8source_s_220:
	mov eax, [ebx+0x10]
	test eax, eax
	jnz _Z18PC_Directive_undefP8source_s_150
	jmp _Z18PC_Directive_undefP8source_s_160
_Z18PC_Directive_undefP8source_s_170:
	mov eax, esi
_Z18PC_Directive_undefP8source_s_150:
	mov esi, [eax+0x430]
	mov [esp], eax
	call _Z10FreeMemoryPv
	sub dword [numtokens], 0x1
	test esi, esi
	jnz _Z18PC_Directive_undefP8source_s_170
_Z18PC_Directive_undefP8source_s_160:
	mov eax, [ebx+0x14]
	test eax, eax
	jnz _Z18PC_Directive_undefP8source_s_180
	jmp _Z18PC_Directive_undefP8source_s_190
_Z18PC_Directive_undefP8source_s_200:
	mov eax, esi
_Z18PC_Directive_undefP8source_s_180:
	mov esi, [eax+0x430]
	mov [esp], eax
	call _Z10FreeMemoryPv
	sub dword [numtokens], 0x1
	test esi, esi
	jnz _Z18PC_Directive_undefP8source_s_200
_Z18PC_Directive_undefP8source_s_190:
	mov [esp], ebx
	call _Z10FreeMemoryPv
	mov eax, 0x1
	jmp _Z18PC_Directive_undefP8source_s_50
_Z18PC_Directive_undefP8source_s_40:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z18PC_Directive_undefP8source_s_210
_Z18PC_Directive_undefP8source_s_130:
	lea eax, [ebp-0x458]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_cant_undef_s
	mov [esp], esi
	call _Z13SourceWarningP8source_sPcz
	jmp _Z18PC_Directive_undefP8source_s_70
_Z18PC_Directive_undefP8source_s_140:
	mov eax, [ebx+0x1c]
	mov edx, [ebp-0x45c]
	mov [edx], eax
	jmp _Z18PC_Directive_undefP8source_s_220


;PC_ReadDefineParms(source_s*, define_s*, token_s**, int)
_Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si:
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
	call _Z18PC_ReadSourceTokenP8source_sP7token_s
	test eax, eax
	jz _Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_10
	mov edx, [ebp+0xc]
	mov eax, [edx+0xc]
	cmp eax, [ebp+0x14]
	jg _Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_20
	test eax, eax
	jle _Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_30
	xor eax, eax
_Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_40:
	mov edx, [ebp+0x10]
	mov dword [edx+eax*4], 0x0
	add eax, 0x1
	mov edx, [ebp+0xc]
	cmp eax, [edx+0xc]
	jl _Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_40
_Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_30:
	mov ecx, 0x2
	cld
	mov esi, ebx
	mov edi, _cstring_1
	repe cmpsb
	mov eax, 0x0
	jz _Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_50
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_50:
	test eax, eax
	jnz _Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_60
	mov ecx, [ebp+0x14]
	test ecx, ecx
	jle _Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_70
	mov eax, [ebp+0xc]
	mov edx, [eax+0xc]
	test edx, edx
	jle _Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_80
	mov dword [ebp-0x460], 0x0
	mov dword [ebp-0x464], 0x0
	mov edx, [ebp-0x464]
_Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_280:
	mov eax, [ebp+0x10]
	lea edx, [eax+edx*4]
	mov [ebp-0x45c], edx
	mov dword [edx], 0x0
	mov dword [ebp-0x468], 0x1
	mov dword [ebp-0x46c], 0x0
	jmp _Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_90
_Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_160:
	add dword [ebp-0x460], 0x1
_Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_180:
	mov edx, [ebp-0x464]
	mov eax, [ebp+0xc]
	cmp [eax+0xc], edx
	jg _Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_100
_Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_200:
	mov dword [ebp-0x468], 0x0
_Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_90:
	mov [esp+0x4], ebx
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z18PC_ReadSourceTokenP8source_sP7token_s
	test eax, eax
	jz _Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_110
	mov edi, _cstring_3
	mov ecx, 0x2
	cld
	mov esi, ebx
	repe cmpsb
	mov edx, 0x0
	jz _Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_120
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
_Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_120:
	test edx, edx
	jnz _Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_130
	mov eax, [ebp-0x460]
	test eax, eax
	jz _Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_140
_Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_130:
	mov ecx, 0x2
	cld
	mov esi, ebx
	mov edi, _cstring_1
	repe cmpsb
	mov eax, 0x0
	jz _Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_150
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_150:
	test eax, eax
	jz _Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_160
	mov edi, _cstring_2
	mov ecx, 0x2
	cld
	mov esi, ebx
	repe cmpsb
	mov edx, 0x0
	jz _Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_170
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
_Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_170:
	test edx, edx
	jnz _Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_180
	mov eax, [ebp-0x460]
	test eax, eax
	jz _Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_190
	sub dword [ebp-0x460], 0x1
	mov edx, [ebp-0x464]
	mov eax, [ebp+0xc]
	cmp [eax+0xc], edx
	jle _Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_200
_Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_100:
	mov dword [esp], 0x440
	call _Z9GetMemorym
	mov esi, eax
	test eax, eax
	jz _Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_210
	mov dword [esp+0x8], 0x440
	mov [esp+0x4], ebx
	mov [esp], eax
	call memcpy
	mov dword [esi+0x430], 0x0
	add dword [numtokens], 0x1
	mov dword [esi+0x430], 0x0
	mov edi, [ebp-0x46c]
	test edi, edi
	jz _Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_220
_Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_250:
	mov edx, [ebp-0x46c]
	mov [edx+0x430], esi
	mov [ebp-0x46c], esi
	jmp _Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_200
_Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_20:
	mov eax, [ebp+0x14]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_define_with_more
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z11SourceErrorP8source_sPcz
	xor eax, eax
_Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_240:
	add esp, 0x47c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_60:
	mov dword [esp], 0x440
	call _Z9GetMemorym
	mov esi, eax
	test eax, eax
	jz _Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_230
	mov dword [esp+0x8], 0x440
	mov [esp+0x4], ebx
	mov [esp], eax
	call memcpy
	mov dword [esi+0x430], 0x0
	add dword [numtokens], 0x1
_Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_310:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x88]
	mov [esi+0x430], eax
	mov [edx+0x88], esi
_Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_10:
	mov edx, [ebp+0xc]
	mov eax, [edx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_define_s_missing
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z11SourceErrorP8source_sPcz
	xor eax, eax
	add esp, 0x47c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_80:
	mov edx, [ebp+0xc]
_Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_290:
	mov eax, [edx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_define_s_has_too
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z13SourceWarningP8source_sPcz
	xor eax, eax
	jmp _Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_240
_Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_210:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	mov dword [esi+0x430], 0x0
	mov edi, [ebp-0x46c]
	test edi, edi
	jnz _Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_250
_Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_220:
	mov eax, [ebp-0x45c]
	mov [eax], esi
	mov [ebp-0x46c], esi
	jmp _Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_200
_Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_110:
	mov edx, [ebp+0xc]
	mov eax, [edx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_define_s_incompl
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z11SourceErrorP8source_sPcz
	xor eax, eax
	add esp, 0x47c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_70:
	mov edx, [ebp+0xc]
	mov eax, [edx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_define_s_with_to
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z11SourceErrorP8source_sPcz
	xor eax, eax
	add esp, 0x47c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_140:
	mov eax, [ebp-0x468]
	test eax, eax
	jnz _Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_260
_Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_300:
	xor eax, eax
_Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_330:
	add dword [ebp-0x464], 0x1
	test eax, eax
	jnz _Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_270
	mov edx, [ebp-0x464]
	cmp [ebp+0x14], edx
	jz _Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_70
	mov eax, [ebp+0xc]
	cmp edx, [eax+0xc]
	jl _Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_280
	mov edx, eax
	jmp _Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_290
_Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_260:
	mov dword [esp+0x4], _cstring_too_many_commas
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z13SourceWarningP8source_sPcz
	jmp _Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_300
_Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_230:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_310
_Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_190:
	mov edx, [ebp+0xc]
	mov eax, [edx+0xc]
	mov edx, [ebp+0x10]
	mov eax, [edx+eax*4-0x4]
	test eax, eax
	jz _Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_320
	mov eax, 0x1
	jmp _Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_330
_Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_270:
	mov eax, 0x1
	jmp _Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_240
_Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_320:
	mov edx, [ebp+0xc]
	mov eax, [edx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_too_few_define_p
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z13SourceWarningP8source_sPcz
	mov eax, 0x1
	jmp _Z18PC_ReadDefineParmsP8source_sP8define_sPP7token_si_330


;PC_ReadSourceToken(source_s*, token_s*)
_Z18PC_ReadSourceTokenP8source_sP7token_s:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov eax, [ebx+0x88]
	test eax, eax
	jz _Z18PC_ReadSourceTokenP8source_sP7token_s_10
_Z18PC_ReadSourceTokenP8source_sP7token_s_30:
	mov dword [esp+0x8], 0x440
	mov [esp+0x4], eax
	mov [esp], esi
	call memcpy
	mov edx, [ebx+0x88]
	mov eax, [edx+0x430]
	mov [ebx+0x88], eax
	mov [esp], edx
	call _Z10FreeMemoryPv
	sub dword [numtokens], 0x1
_Z18PC_ReadSourceTokenP8source_sP7token_s_40:
	mov eax, 0x1
_Z18PC_ReadSourceTokenP8source_sP7token_s_20:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z18PC_ReadSourceTokenP8source_sP7token_s_50:
	mov edx, [ebx+0x84]
	mov eax, [edx+0x4c0]
	test eax, eax
	jz _Z18PC_ReadSourceTokenP8source_sP7token_s_20
	mov [ebx+0x84], eax
	mov [esp], edx
	call _Z10FreeScriptP8script_s
	mov eax, [ebx+0x88]
	test eax, eax
	jnz _Z18PC_ReadSourceTokenP8source_sP7token_s_30
_Z18PC_ReadSourceTokenP8source_sP7token_s_10:
	mov [esp+0x4], esi
	mov eax, [ebx+0x84]
	mov [esp], eax
	call _Z12PS_ReadTokenP8script_sP7token_s
	test eax, eax
	jnz _Z18PC_ReadSourceTokenP8source_sP7token_s_40
	mov eax, [ebx+0x84]
	mov [esp], eax
	call _Z11EndOfScriptP8script_s
	test eax, eax
	jz _Z18PC_ReadSourceTokenP8source_sP7token_s_50
	mov edx, [ebx+0x94]
_Z18PC_ReadSourceTokenP8source_sP7token_s_60:
	test edx, edx
	jz _Z18PC_ReadSourceTokenP8source_sP7token_s_50
	mov eax, [edx+0x8]
	cmp eax, [ebx+0x84]
	jnz _Z18PC_ReadSourceTokenP8source_sP7token_s_50
	mov dword [esp+0x4], _cstring_missing_endif
	mov [esp], ebx
	call _Z13SourceWarningP8source_sPcz
	mov edx, [ebx+0x94]
	mov ecx, edx
	test edx, edx
	jz _Z18PC_ReadSourceTokenP8source_sP7token_s_50
	mov eax, [edx+0x8]
	cmp eax, [ebx+0x84]
	jnz _Z18PC_ReadSourceTokenP8source_sP7token_s_60
	mov edx, [edx+0xc]
	mov [ebx+0x94], edx
	xor eax, eax
	cmp dword [ecx+0x4], 0x0
	setnz al
	sub [ebx+0x98], eax
	mov [esp], ecx
	call _Z10FreeMemoryPv
	mov edx, [ebx+0x94]
	jmp _Z18PC_ReadSourceTokenP8source_sP7token_s_60
	nop


;PC_ReadTokenHandle(int, pc_token_s*)
_Z18PC_ReadTokenHandleiP10pc_token_s:
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
	ja _Z18PC_ReadTokenHandleiP10pc_token_s_10
	mov eax, [edx*4+sourceFiles]
	test eax, eax
	jz _Z18PC_ReadTokenHandleiP10pc_token_s_10
	lea ebx, [ebp-0x458]
	mov [esp+0x4], ebx
	mov [esp], eax
	call _Z12PC_ReadTokenP8source_sP7token_s
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
	jz _Z18PC_ReadTokenHandleiP10pc_token_s_20
	mov eax, edi
	add esp, 0x46c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18PC_ReadTokenHandleiP10pc_token_s_10:
	xor edi, edi
	mov eax, edi
	add esp, 0x46c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z18PC_ReadTokenHandleiP10pc_token_s_20:
	mov eax, [ebp-0x460]
	mov [esp], eax
	call _Z17StripDoubleQuotesPc
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
_Z18PC_StringizeTokensP7token_sS0_:
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
	jz _Z18PC_StringizeTokensP7token_sS0__10
	mov ebx, edx
_Z18PC_StringizeTokensP7token_sS0__20:
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
	jnz _Z18PC_StringizeTokensP7token_sS0__20
_Z18PC_StringizeTokensP7token_sS0__10:
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
_Z19PC_DefineFromStringPKc:
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
	call _Z16LoadScriptMemoryPKciS0_
	mov edi, eax
	lea ebx, [ebp-0x4f8]
	mov dword [esp+0x8], 0x4e0
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call memset
	mov dword [ebp-0x4f8], 0x7478652a
	mov dword [ebp-0x4f4], 0x6e7265
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
	call _Z16GetClearedMemorym
	mov [ebp-0x468], eax
	mov [esp], ebx
	call _Z19PC_Directive_defineP8source_s
	mov ebx, eax
	mov eax, [ebp-0x470]
	mov edx, eax
	test eax, eax
	jz _Z19PC_DefineFromStringPKc_10
_Z19PC_DefineFromStringPKc_20:
	mov eax, [eax+0x430]
	mov [ebp-0x470], eax
	mov [esp], edx
	call _Z10FreeMemoryPv
	sub dword [numtokens], 0x1
	mov eax, [ebp-0x470]
	mov edx, eax
	test eax, eax
	jnz _Z19PC_DefineFromStringPKc_20
_Z19PC_DefineFromStringPKc_10:
	mov ecx, [ebp-0x468]
	xor edx, edx
	jmp _Z19PC_DefineFromStringPKc_30
_Z19PC_DefineFromStringPKc_50:
	add edx, 0x4
	cmp edx, 0x1000
	jz _Z19PC_DefineFromStringPKc_40
_Z19PC_DefineFromStringPKc_30:
	lea eax, [edx+ecx]
	mov esi, [eax]
	test esi, esi
	jz _Z19PC_DefineFromStringPKc_50
	mov esi, [eax]
_Z19PC_DefineFromStringPKc_150:
	mov [esp], ecx
	call _Z10FreeMemoryPv
	mov [esp], edi
	call _Z10FreeScriptP8script_s
	test ebx, ebx
	jle _Z19PC_DefineFromStringPKc_60
_Z19PC_DefineFromStringPKc_80:
	mov eax, esi
	add esp, 0x4fc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19PC_DefineFromStringPKc_60:
	mov ebx, [ebp-0x46c]
	test ebx, ebx
	jnz _Z19PC_DefineFromStringPKc_70
	xor esi, esi
	jmp _Z19PC_DefineFromStringPKc_80
_Z19PC_DefineFromStringPKc_70:
	mov eax, [esi+0x10]
	test eax, eax
	jnz _Z19PC_DefineFromStringPKc_90
	jmp _Z19PC_DefineFromStringPKc_100
_Z19PC_DefineFromStringPKc_110:
	mov eax, ebx
_Z19PC_DefineFromStringPKc_90:
	mov ebx, [eax+0x430]
	mov [esp], eax
	call _Z10FreeMemoryPv
	sub dword [numtokens], 0x1
	test ebx, ebx
	jnz _Z19PC_DefineFromStringPKc_110
_Z19PC_DefineFromStringPKc_100:
	mov eax, [esi+0x14]
	test eax, eax
	jnz _Z19PC_DefineFromStringPKc_120
	jmp _Z19PC_DefineFromStringPKc_130
_Z19PC_DefineFromStringPKc_140:
	mov eax, ebx
_Z19PC_DefineFromStringPKc_120:
	mov ebx, [eax+0x430]
	mov [esp], eax
	call _Z10FreeMemoryPv
	sub dword [numtokens], 0x1
	test ebx, ebx
	jnz _Z19PC_DefineFromStringPKc_140
_Z19PC_DefineFromStringPKc_130:
	mov [esp], esi
	call _Z10FreeMemoryPv
	xor esi, esi
	jmp _Z19PC_DefineFromStringPKc_80
_Z19PC_DefineFromStringPKc_40:
	xor esi, esi
	jmp _Z19PC_DefineFromStringPKc_150
	nop


;PC_Directive_define(source_s*)
_Z19PC_Directive_defineP8source_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8dc
	mov eax, [ebp+0x8]
	mov ecx, [eax+0x98]
	test ecx, ecx
	jle _Z19PC_Directive_defineP8source_s_10
_Z19PC_Directive_defineP8source_s_110:
	mov eax, 0x1
_Z19PC_Directive_defineP8source_s_50:
	add esp, 0x8dc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19PC_Directive_defineP8source_s_10:
	xor ecx, ecx
	lea edx, [ebp-0x458]
	call _Z11PC_ReadLineP8source_sP7token_sh
	test eax, eax
	jz _Z19PC_Directive_defineP8source_s_20
	cmp dword [ebp-0x58], 0x4
	jz _Z19PC_Directive_defineP8source_s_30
	mov dword [esp], 0x440
	call _Z9GetMemorym
	mov esi, eax
	test eax, eax
	jz _Z19PC_Directive_defineP8source_s_40
	mov dword [esp+0x8], 0x440
	lea ecx, [ebp-0x458]
	mov [esp+0x4], ecx
	mov [esp], eax
	call memcpy
	mov dword [esi+0x430], 0x0
	add dword [numtokens], 0x1
_Z19PC_Directive_defineP8source_s_470:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x88]
	mov [esi+0x430], eax
	mov [edx+0x88], esi
	lea ecx, [ebp-0x458]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_expected_name_af
	mov [esp], edx
	call _Z11SourceErrorP8source_sPcz
	xor eax, eax
	jmp _Z19PC_Directive_defineP8source_s_50
_Z19PC_Directive_defineP8source_s_30:
	mov esi, [ebp+0x8]
	mov ebx, [esi+0x90]
	movzx eax, byte [ebp-0x458]
	test al, al
	jnz _Z19PC_Directive_defineP8source_s_60
	xor ecx, ecx
	xor eax, eax
	xor edx, edx
_Z19PC_Directive_defineP8source_s_200:
	xor eax, ecx
	xor eax, edx
	and eax, 0x3ff
	mov esi, [ebx+eax*4]
	test esi, esi
	jz _Z19PC_Directive_defineP8source_s_70
_Z19PC_Directive_defineP8source_s_90:
	lea eax, [ebp-0x458]
	mov [esp+0x4], eax
	mov eax, [esi]
	mov [esp], eax
	call strcmp
	test eax, eax
	jz _Z19PC_Directive_defineP8source_s_80
	mov esi, [esi+0x1c]
	test esi, esi
	jnz _Z19PC_Directive_defineP8source_s_90
_Z19PC_Directive_defineP8source_s_70:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	lea edi, [ebp-0x458]
	repne scasb
	not ecx
	add ecx, 0x20
	mov [esp], ecx
	call _Z9GetMemorym
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
	jnz _Z19PC_Directive_defineP8source_s_100
	xor esi, esi
	xor edx, edx
	xor eax, eax
_Z19PC_Directive_defineP8source_s_450:
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
	call _Z11PC_ReadLineP8source_sP7token_sh
	test eax, eax
	jz _Z19PC_Directive_defineP8source_s_110
	mov eax, [ebp-0x34]
	sub eax, [ebp-0x38]
	test eax, eax
	jle _Z19PC_Directive_defineP8source_s_120
_Z19PC_Directive_defineP8source_s_220:
	xor ebx, ebx
	jmp _Z19PC_Directive_defineP8source_s_130
_Z19PC_Directive_defineP8source_s_170:
	mov dword [esp+0x8], 0x440
	lea edx, [ebp-0x458]
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	mov dword [esi+0x430], 0x0
	add dword [numtokens], 0x1
_Z19PC_Directive_defineP8source_s_180:
	cmp dword [esi+0x400], 0x4
	jz _Z19PC_Directive_defineP8source_s_140
_Z19PC_Directive_defineP8source_s_400:
	mov dword [esi+0x420], 0x0
	mov dword [esi+0x424], 0x0
	mov dword [esi+0x42c], 0x0
	mov dword [esi+0x430], 0x0
	test ebx, ebx
	jz _Z19PC_Directive_defineP8source_s_150
	mov [ebx+0x430], esi
	mov ebx, esi
_Z19PC_Directive_defineP8source_s_390:
	xor ecx, ecx
	lea edx, [ebp-0x458]
	mov eax, [ebp+0x8]
	call _Z11PC_ReadLineP8source_sP7token_sh
	test eax, eax
	jz _Z19PC_Directive_defineP8source_s_160
_Z19PC_Directive_defineP8source_s_130:
	mov dword [esp], 0x440
	call _Z9GetMemorym
	mov esi, eax
	test eax, eax
	jnz _Z19PC_Directive_defineP8source_s_170
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z19PC_Directive_defineP8source_s_180
_Z19PC_Directive_defineP8source_s_20:
	mov dword [esp+0x4], _cstring_define_without_n
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z11SourceErrorP8source_sPcz
	xor eax, eax
	jmp _Z19PC_Directive_defineP8source_s_50
_Z19PC_Directive_defineP8source_s_60:
	xor ecx, ecx
	mov edx, 0x77
_Z19PC_Directive_defineP8source_s_190:
	movsx eax, al
	imul eax, edx
	add ecx, eax
	movzx eax, byte [edx+ebp-0x4ce]
	add edx, 0x1
	test al, al
	jnz _Z19PC_Directive_defineP8source_s_190
	mov eax, ecx
	sar eax, 0xa
	mov edx, ecx
	sar edx, 0x14
	jmp _Z19PC_Directive_defineP8source_s_200
_Z19PC_Directive_defineP8source_s_120:
	mov edi, _cstring_1
	mov ecx, 0x2
	cld
	lea esi, [ebp-0x458]
	repe cmpsb
	mov edx, 0x0
	jz _Z19PC_Directive_defineP8source_s_210
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
_Z19PC_Directive_defineP8source_s_210:
	test edx, edx
	jnz _Z19PC_Directive_defineP8source_s_220
	lea esi, [ebp-0x898]
	mov [esp+0x4], esi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z12PC_ReadTokenP8source_sP7token_s
	test eax, eax
	jnz _Z19PC_Directive_defineP8source_s_230
_Z19PC_Directive_defineP8source_s_570:
	xor edi, edi
_Z19PC_Directive_defineP8source_s_360:
	xor ecx, ecx
	lea edx, [ebp-0x458]
	mov eax, [ebp+0x8]
	call _Z11PC_ReadLineP8source_sP7token_sh
	test eax, eax
	jz _Z19PC_Directive_defineP8source_s_240
	cmp dword [ebp-0x58], 0x4
	jnz _Z19PC_Directive_defineP8source_s_250
	mov esi, [ebp-0x89c]
	mov ebx, [esi+0x10]
	test ebx, ebx
	jz _Z19PC_Directive_defineP8source_s_260
	xor esi, esi
_Z19PC_Directive_defineP8source_s_280:
	lea eax, [ebp-0x458]
	mov [esp+0x4], eax
	mov [esp], ebx
	call strcmp
	test eax, eax
	jz _Z19PC_Directive_defineP8source_s_270
	add esi, 0x1
	mov ebx, [ebx+0x430]
	test ebx, ebx
	jnz _Z19PC_Directive_defineP8source_s_280
_Z19PC_Directive_defineP8source_s_260:
	mov dword [esp], 0x440
	call _Z9GetMemorym
	mov ebx, eax
	test eax, eax
	jz _Z19PC_Directive_defineP8source_s_290
	mov dword [esp+0x8], 0x440
	lea edx, [ebp-0x458]
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	mov dword [ebx+0x430], 0x0
	add dword [numtokens], 0x1
_Z19PC_Directive_defineP8source_s_550:
	mov dword [ebx+0x420], 0x0
	mov dword [ebx+0x424], 0x0
	mov dword [ebx+0x42c], 0x0
	mov dword [ebx+0x430], 0x0
	test edi, edi
	jz _Z19PC_Directive_defineP8source_s_300
	mov [edi+0x430], ebx
_Z19PC_Directive_defineP8source_s_540:
	mov esi, [ebp-0x89c]
	add dword [esi+0xc], 0x1
	xor ecx, ecx
	lea edx, [ebp-0x458]
	mov eax, [ebp+0x8]
	call _Z11PC_ReadLineP8source_sP7token_sh
	test eax, eax
	jz _Z19PC_Directive_defineP8source_s_310
	mov edi, _cstring_2
	mov ecx, 0x2
	cld
	lea esi, [ebp-0x458]
	repe cmpsb
	mov edx, 0x0
	jz _Z19PC_Directive_defineP8source_s_320
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
_Z19PC_Directive_defineP8source_s_320:
	test edx, edx
	jz _Z19PC_Directive_defineP8source_s_330
	mov edi, _cstring_3
	mov ecx, 0x2
	lea esi, [ebp-0x458]
	repe cmpsb
	mov edx, 0x0
	jz _Z19PC_Directive_defineP8source_s_340
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
_Z19PC_Directive_defineP8source_s_340:
	test edx, edx
	jnz _Z19PC_Directive_defineP8source_s_350
	mov edi, ebx
	jmp _Z19PC_Directive_defineP8source_s_360
_Z19PC_Directive_defineP8source_s_230:
	mov edi, _cstring_2
	mov ecx, 0x2
	cld
	repe cmpsb
	mov edx, 0x0
	jz _Z19PC_Directive_defineP8source_s_370
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
_Z19PC_Directive_defineP8source_s_370:
	test edx, edx
	jnz _Z19PC_Directive_defineP8source_s_380
_Z19PC_Directive_defineP8source_s_330:
	xor ecx, ecx
	lea edx, [ebp-0x458]
	mov eax, [ebp+0x8]
	call _Z11PC_ReadLineP8source_sP7token_sh
	test eax, eax
	jnz _Z19PC_Directive_defineP8source_s_220
	jmp _Z19PC_Directive_defineP8source_s_110
_Z19PC_Directive_defineP8source_s_150:
	mov eax, [ebp-0x89c]
	mov [eax+0x14], esi
	mov ebx, esi
	jmp _Z19PC_Directive_defineP8source_s_390
_Z19PC_Directive_defineP8source_s_140:
	mov ecx, [ebp-0x89c]
	mov eax, [ecx]
	mov [esp+0x4], eax
	mov [esp], esi
	call strcmp
	test eax, eax
	jnz _Z19PC_Directive_defineP8source_s_400
	mov dword [esp+0x4], _cstring_recursive_define
	mov esi, [ebp+0x8]
	mov [esp], esi
	call _Z11SourceErrorP8source_sPcz
	jmp _Z19PC_Directive_defineP8source_s_390
_Z19PC_Directive_defineP8source_s_160:
	test ebx, ebx
	jz _Z19PC_Directive_defineP8source_s_110
	mov edx, [ebp-0x89c]
	mov edx, [edx+0x14]
	mov ecx, 0x3
	cld
	mov esi, edx
	mov edi, _cstring_5
	repe cmpsb
	mov eax, 0x0
	jz _Z19PC_Directive_defineP8source_s_410
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_Z19PC_Directive_defineP8source_s_410:
	test eax, eax
	jz _Z19PC_Directive_defineP8source_s_420
	mov ecx, 0x3
	mov esi, ebx
	mov edi, _cstring_5
	repe cmpsb
	mov eax, 0x0
	jz _Z19PC_Directive_defineP8source_s_430
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
_Z19PC_Directive_defineP8source_s_430:
	test eax, eax
	jnz _Z19PC_Directive_defineP8source_s_110
_Z19PC_Directive_defineP8source_s_420:
	mov dword [esp+0x4], _cstring_define_with_misp
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z11SourceErrorP8source_sPcz
	xor eax, eax
	jmp _Z19PC_Directive_defineP8source_s_50
_Z19PC_Directive_defineP8source_s_100:
	xor esi, esi
	mov edx, 0x77
_Z19PC_Directive_defineP8source_s_440:
	movsx eax, al
	imul eax, edx
	add esi, eax
	movzx eax, byte [ecx+edx-0x76]
	add edx, 0x1
	test al, al
	jnz _Z19PC_Directive_defineP8source_s_440
	mov edx, esi
	sar edx, 0xa
	mov eax, esi
	sar eax, 0x14
	jmp _Z19PC_Directive_defineP8source_s_450
_Z19PC_Directive_defineP8source_s_80:
	test byte [esi+0x4], 0x1
	jz _Z19PC_Directive_defineP8source_s_460
	lea edx, [ebp-0x458]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_cant_redefine_s
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z11SourceErrorP8source_sPcz
	xor eax, eax
	jmp _Z19PC_Directive_defineP8source_s_50
_Z19PC_Directive_defineP8source_s_40:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z19PC_Directive_defineP8source_s_470
_Z19PC_Directive_defineP8source_s_460:
	lea esi, [ebp-0x458]
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_redefinition_of_
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z13SourceWarningP8source_sPcz
	mov dword [esp], 0x440
	call _Z9GetMemorym
	mov ebx, eax
	test eax, eax
	jz _Z19PC_Directive_defineP8source_s_480
	mov dword [esp+0x8], 0x440
	lea edx, [ebp-0x458]
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	mov dword [ebx+0x430], 0x0
	add dword [numtokens], 0x1
_Z19PC_Directive_defineP8source_s_530:
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x88]
	mov [ebx+0x430], eax
	mov [ecx+0x88], ebx
	mov [esp], ecx
	call _Z18PC_Directive_undefP8source_s
	test eax, eax
	jz _Z19PC_Directive_defineP8source_s_50
	mov esi, [ebp+0x8]
	mov ebx, [esi+0x90]
	movzx eax, byte [ebp-0x458]
	test al, al
	jnz _Z19PC_Directive_defineP8source_s_490
	xor ecx, ecx
	xor edx, edx
	xor eax, eax
_Z19PC_Directive_defineP8source_s_520:
	xor edx, ecx
	xor eax, edx
	and eax, 0x3ff
	mov ebx, [ebx+eax*4]
	test ebx, ebx
	jz _Z19PC_Directive_defineP8source_s_70
_Z19PC_Directive_defineP8source_s_500:
	lea eax, [ebp-0x458]
	mov [esp+0x4], eax
	mov eax, [ebx]
	mov [esp], eax
	call strcmp
	test eax, eax
	jz _Z19PC_Directive_defineP8source_s_70
	mov ebx, [ebx+0x1c]
	test ebx, ebx
	jnz _Z19PC_Directive_defineP8source_s_500
	jmp _Z19PC_Directive_defineP8source_s_70
_Z19PC_Directive_defineP8source_s_490:
	xor ecx, ecx
	mov edx, 0x77
_Z19PC_Directive_defineP8source_s_510:
	movsx eax, al
	imul eax, edx
	add ecx, eax
	movzx eax, byte [edx+ebp-0x4ce]
	add edx, 0x1
	test al, al
	jnz _Z19PC_Directive_defineP8source_s_510
	mov edx, ecx
	sar edx, 0xa
	mov eax, ecx
	sar eax, 0x14
	jmp _Z19PC_Directive_defineP8source_s_520
_Z19PC_Directive_defineP8source_s_480:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z19PC_Directive_defineP8source_s_530
_Z19PC_Directive_defineP8source_s_270:
	test esi, esi
	js _Z19PC_Directive_defineP8source_s_260
	mov dword [esp+0x4], _cstring_two_of_the_same_
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z11SourceErrorP8source_sPcz
	xor eax, eax
	jmp _Z19PC_Directive_defineP8source_s_50
_Z19PC_Directive_defineP8source_s_300:
	mov ecx, [ebp-0x89c]
	mov [ecx+0x10], ebx
	jmp _Z19PC_Directive_defineP8source_s_540
_Z19PC_Directive_defineP8source_s_290:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z19PC_Directive_defineP8source_s_550
_Z19PC_Directive_defineP8source_s_350:
	mov dword [esp+0x4], _cstring_define_not_termi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z11SourceErrorP8source_sPcz
	xor eax, eax
	jmp _Z19PC_Directive_defineP8source_s_50
_Z19PC_Directive_defineP8source_s_380:
	mov dword [esp], 0x440
	call _Z9GetMemorym
	mov ebx, eax
	test eax, eax
	jz _Z19PC_Directive_defineP8source_s_560
	mov dword [esp+0x8], 0x440
	lea edx, [ebp-0x898]
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	mov dword [ebx+0x430], 0x0
	add dword [numtokens], 0x1
_Z19PC_Directive_defineP8source_s_580:
	mov ecx, [ebp+0x8]
	mov eax, [ecx+0x88]
	mov [ebx+0x430], eax
	mov [ecx+0x88], ebx
	jmp _Z19PC_Directive_defineP8source_s_570
_Z19PC_Directive_defineP8source_s_310:
	mov dword [esp+0x4], _cstring_define_parameter
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z11SourceErrorP8source_sPcz
	xor eax, eax
	jmp _Z19PC_Directive_defineP8source_s_50
_Z19PC_Directive_defineP8source_s_560:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z19PC_Directive_defineP8source_s_580
_Z19PC_Directive_defineP8source_s_250:
	mov dword [esp+0x4], _cstring_invalid_define_p
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z11SourceErrorP8source_sPcz
	xor eax, eax
	jmp _Z19PC_Directive_defineP8source_s_50
_Z19PC_Directive_defineP8source_s_240:
	mov dword [esp+0x4], _cstring_expected_define_
	mov esi, [ebp+0x8]
	mov [esp], esi
	call _Z11SourceErrorP8source_sPcz
	xor eax, eax
	jmp _Z19PC_Directive_defineP8source_s_50


;PC_Directive_if_def(source_s*, int)
_Z19PC_Directive_if_defP8source_si:
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
	call _Z11PC_ReadLineP8source_sP7token_sh
	test eax, eax
	jz _Z19PC_Directive_if_defP8source_si_10
	cmp dword [ebp-0x58], 0x4
	jz _Z19PC_Directive_if_defP8source_si_20
	mov dword [esp], 0x440
	call _Z9GetMemorym
	mov ebx, eax
	test eax, eax
	jz _Z19PC_Directive_if_defP8source_si_30
	mov dword [esp+0x8], 0x440
	lea eax, [ebp-0x458]
	mov [esp+0x4], eax
	mov [esp], ebx
	call memcpy
	mov dword [ebx+0x430], 0x0
	add dword [numtokens], 0x1
_Z19PC_Directive_if_defP8source_si_100:
	mov eax, [edi+0x88]
	mov [ebx+0x430], eax
	mov [edi+0x88], ebx
	lea edx, [ebp-0x458]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_expected_name_af1
	mov [esp], edi
	call _Z11SourceErrorP8source_sPcz
	xor eax, eax
	add esp, 0x45c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19PC_Directive_if_defP8source_si_20:
	mov ebx, [edi+0x90]
	movzx eax, byte [ebp-0x458]
	test al, al
	jnz _Z19PC_Directive_if_defP8source_si_40
	xor ecx, ecx
	xor edx, edx
	xor eax, eax
_Z19PC_Directive_if_defP8source_si_90:
	xor ecx, edx
	xor eax, ecx
	and eax, 0x3ff
	mov esi, [ebx+eax*4]
	test esi, esi
	jz _Z19PC_Directive_if_defP8source_si_50
_Z19PC_Directive_if_defP8source_si_70:
	lea eax, [ebp-0x458]
	mov [esp+0x4], eax
	mov eax, [esi]
	mov [esp], eax
	call strcmp
	test eax, eax
	jz _Z19PC_Directive_if_defP8source_si_60
	mov esi, [esi+0x1c]
	test esi, esi
	jnz _Z19PC_Directive_if_defP8source_si_70
_Z19PC_Directive_if_defP8source_si_50:
	xor esi, esi
_Z19PC_Directive_if_defP8source_si_60:
	cmp dword [ebp+0xc], 0x8
	setnz bl
	test esi, esi
	setz al
	xor bl, al
	movzx ebx, bl
	mov dword [esp], 0x10
	call _Z9GetMemorym
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
_Z19PC_Directive_if_defP8source_si_10:
	mov dword [esp+0x4], _cstring_ifdef_without_na
	mov [esp], edi
	call _Z11SourceErrorP8source_sPcz
	xor eax, eax
	add esp, 0x45c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19PC_Directive_if_defP8source_si_40:
	xor ecx, ecx
	mov edx, 0x77
_Z19PC_Directive_if_defP8source_si_80:
	movsx eax, al
	imul eax, edx
	add ecx, eax
	movzx eax, byte [edx+ebp-0x4ce]
	add edx, 0x1
	test al, al
	jnz _Z19PC_Directive_if_defP8source_si_80
	mov edx, ecx
	sar edx, 0xa
	mov eax, ecx
	sar eax, 0x14
	jmp _Z19PC_Directive_if_defP8source_si_90
_Z19PC_Directive_if_defP8source_si_30:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z19PC_Directive_if_defP8source_si_100


;PC_Directive_ifndef(source_s*)
_Z19PC_Directive_ifndefP8source_s:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x4], 0x10
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z19PC_Directive_if_defP8source_si
	leave
	ret
	nop


;PC_Directive_pragma(source_s*)
_Z19PC_Directive_pragmaP8source_s:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x450
	mov esi, [ebp+0x8]
	mov dword [esp+0x4], _cstring_pragma_directive
	mov [esp], esi
	call _Z13SourceWarningP8source_sPcz
	lea ebx, [ebp-0x448]
_Z19PC_Directive_pragmaP8source_s_10:
	xor ecx, ecx
	mov edx, ebx
	mov eax, esi
	call _Z11PC_ReadLineP8source_sP7token_sh
	test eax, eax
	jnz _Z19PC_Directive_pragmaP8source_s_10
	mov al, 0x1
	add esp, 0x450
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;PC_FreeSourceHandle(int)
_Z19PC_FreeSourceHandlei:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	lea eax, [ebx-0x1]
	cmp eax, 0x3e
	ja _Z19PC_FreeSourceHandlei_10
	mov eax, [ebx*4+sourceFiles]
	test eax, eax
	jz _Z19PC_FreeSourceHandlei_10
	mov [esp], eax
	call _Z10FreeSourceP8source_s
	mov dword [ebx*4+sourceFiles], 0x0
	mov eax, 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z19PC_FreeSourceHandlei_10:
	xor eax, eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop
	add [eax], al


;PC_LoadSourceHandle(char const*, char const**)
_Z19PC_LoadSourceHandlePKcPS0_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, [ebp+0xc]
	mov edi, 0x1
	mov eax, sourceFiles
	jmp _Z19PC_LoadSourceHandlePKcPS0__10
_Z19PC_LoadSourceHandlePKcPS0__30:
	add edi, 0x1
	add eax, 0x4
	cmp edi, 0x40
	jz _Z19PC_LoadSourceHandlePKcPS0__20
_Z19PC_LoadSourceHandlePKcPS0__10:
	mov edx, [eax+0x4]
	test edx, edx
	jnz _Z19PC_LoadSourceHandlePKcPS0__30
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z14LoadSourceFilePKc
	mov [ebp-0x24], eax
	test eax, eax
	jz _Z19PC_LoadSourceHandlePKcPS0__20
	test ebx, ebx
	jz _Z19PC_LoadSourceHandlePKcPS0__40
	mov eax, [ebx]
	test eax, eax
	jz _Z19PC_LoadSourceHandlePKcPS0__40
	mov [ebp-0x1c], ebx
	jmp _Z19PC_LoadSourceHandlePKcPS0__50
_Z19PC_LoadSourceHandlePKcPS0__70:
	xor esi, esi
	xor eax, eax
	xor edx, edx
_Z19PC_LoadSourceHandlePKcPS0__90:
	xor eax, esi
	xor eax, edx
	and eax, 0x3ff
	mov ecx, [ebp-0x20]
	lea edx, [ecx+eax*4]
	mov eax, [edx]
	mov [ebx+0x1c], eax
	mov [edx], ebx
_Z19PC_LoadSourceHandlePKcPS0__60:
	mov edx, [ebp-0x1c]
	mov eax, [edx+0x4]
	add edx, 0x4
	mov [ebp-0x1c], edx
	test eax, eax
	jz _Z19PC_LoadSourceHandlePKcPS0__40
_Z19PC_LoadSourceHandlePKcPS0__50:
	mov [esp], eax
	call _Z19PC_DefineFromStringPKc
	mov ebx, eax
	test eax, eax
	jz _Z19PC_LoadSourceHandlePKcPS0__60
	mov edx, [ebp-0x24]
	mov edx, [edx+0x90]
	mov [ebp-0x20], edx
	mov ecx, [eax]
	movzx eax, byte [ecx]
	test al, al
	jz _Z19PC_LoadSourceHandlePKcPS0__70
	xor esi, esi
	mov edx, 0x77
_Z19PC_LoadSourceHandlePKcPS0__80:
	movsx eax, al
	imul eax, edx
	add esi, eax
	movzx eax, byte [ecx+edx-0x76]
	add edx, 0x1
	test al, al
	jnz _Z19PC_LoadSourceHandlePKcPS0__80
	mov eax, esi
	sar eax, 0xa
	mov edx, esi
	sar edx, 0x14
	jmp _Z19PC_LoadSourceHandlePKcPS0__90
_Z19PC_LoadSourceHandlePKcPS0__40:
	mov ecx, [ebp-0x24]
	mov [edi*4+sourceFiles], ecx
	mov eax, edi
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19PC_LoadSourceHandlePKcPS0__20:
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
_Z19PC_OperatorPriorityi:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	sub eax, 0x5
	cmp eax, 0x26
	ja _Z19PC_OperatorPriorityi_10
	jmp dword [eax*4+_Z19PC_OperatorPriorityi_jumptab_0]
_Z19PC_OperatorPriorityi_10:
	xor eax, eax
	pop ebp
	ret
_Z19PC_OperatorPriorityi_20:
	mov eax, 0x7
	pop ebp
	ret
_Z19PC_OperatorPriorityi_30:
	mov eax, 0x6
	pop ebp
	ret
_Z19PC_OperatorPriorityi_50:
	mov eax, 0xb
	pop ebp
	ret
_Z19PC_OperatorPriorityi_60:
	mov eax, 0xd
	pop ebp
	ret
_Z19PC_OperatorPriorityi_70:
	mov eax, 0xf
	pop ebp
	ret
_Z19PC_OperatorPriorityi_80:
	mov eax, 0xe
	pop ebp
	ret
_Z19PC_OperatorPriorityi_90:
	mov eax, 0xa
	pop ebp
	ret
_Z19PC_OperatorPriorityi_100:
	mov eax, 0x8
	pop ebp
	ret
_Z19PC_OperatorPriorityi_110:
	mov eax, 0x9
	pop ebp
	ret
_Z19PC_OperatorPriorityi_120:
	mov eax, 0x10
	pop ebp
	ret
_Z19PC_OperatorPriorityi_40:
	mov eax, 0xc
	pop ebp
	ret
_Z19PC_OperatorPriorityi_130:
	mov eax, 0x5
	pop ebp
	ret
	nop
	add [eax], al
	
	
_Z19PC_OperatorPriorityi_jumptab_0:
	dd _Z19PC_OperatorPriorityi_20
	dd _Z19PC_OperatorPriorityi_30
	dd _Z19PC_OperatorPriorityi_40
	dd _Z19PC_OperatorPriorityi_40
	dd _Z19PC_OperatorPriorityi_50
	dd _Z19PC_OperatorPriorityi_50
	dd _Z19PC_OperatorPriorityi_10
	dd _Z19PC_OperatorPriorityi_10
	dd _Z19PC_OperatorPriorityi_10
	dd _Z19PC_OperatorPriorityi_10
	dd _Z19PC_OperatorPriorityi_10
	dd _Z19PC_OperatorPriorityi_10
	dd _Z19PC_OperatorPriorityi_10
	dd _Z19PC_OperatorPriorityi_10
	dd _Z19PC_OperatorPriorityi_10
	dd _Z19PC_OperatorPriorityi_10
	dd _Z19PC_OperatorPriorityi_60
	dd _Z19PC_OperatorPriorityi_60
	dd _Z19PC_OperatorPriorityi_10
	dd _Z19PC_OperatorPriorityi_10
	dd _Z19PC_OperatorPriorityi_10
	dd _Z19PC_OperatorPriorityi_70
	dd _Z19PC_OperatorPriorityi_70
	dd _Z19PC_OperatorPriorityi_70
	dd _Z19PC_OperatorPriorityi_80
	dd _Z19PC_OperatorPriorityi_80
	dd _Z19PC_OperatorPriorityi_10
	dd _Z19PC_OperatorPriorityi_90
	dd _Z19PC_OperatorPriorityi_100
	dd _Z19PC_OperatorPriorityi_110
	dd _Z19PC_OperatorPriorityi_120
	dd _Z19PC_OperatorPriorityi_120
	dd _Z19PC_OperatorPriorityi_40
	dd _Z19PC_OperatorPriorityi_40
	dd _Z19PC_OperatorPriorityi_10
	dd _Z19PC_OperatorPriorityi_10
	dd _Z19PC_OperatorPriorityi_10
	dd _Z19PC_OperatorPriorityi_130
	dd _Z19PC_OperatorPriorityi_130


;PC_Directive_include(source_s*)
_Z20PC_Directive_includeP8source_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x49c
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x98]
	test eax, eax
	jle _Z20PC_Directive_includeP8source_s_10
_Z20PC_Directive_includeP8source_s_340:
	mov eax, 0x1
_Z20PC_Directive_includeP8source_s_160:
	add esp, 0x49c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20PC_Directive_includeP8source_s_10:
	lea eax, [ebp-0x498]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z18PC_ReadSourceTokenP8source_sP7token_s
	test eax, eax
	jz _Z20PC_Directive_includeP8source_s_20
	mov eax, [ebp-0x6c]
	test eax, eax
	jle _Z20PC_Directive_includeP8source_s_30
_Z20PC_Directive_includeP8source_s_20:
	mov dword [esp+0x4], _cstring_include_without_
	mov [esp], ebx
	call _Z11SourceErrorP8source_sPcz
	xor eax, eax
	add esp, 0x49c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20PC_Directive_includeP8source_s_30:
	mov eax, [ebp-0x98]
	cmp eax, 0x1
	jz _Z20PC_Directive_includeP8source_s_40
	cmp eax, 0x5
	jnz _Z20PC_Directive_includeP8source_s_20
	cmp byte [ebp-0x498], 0x3c
	jnz _Z20PC_Directive_includeP8source_s_20
	lea eax, [ebx+0x40]
	mov [esp+0x4], eax
	lea eax, [ebp-0x58]
	mov [esp], eax
	call strcpy
	jmp _Z20PC_Directive_includeP8source_s_50
_Z20PC_Directive_includeP8source_s_90:
	mov eax, [ebp-0x6c]
	test eax, eax
	jg _Z20PC_Directive_includeP8source_s_60
	cmp dword [ebp-0x98], 0x5
	jnz _Z20PC_Directive_includeP8source_s_70
	cmp byte [ebp-0x498], 0x3e
	jz _Z20PC_Directive_includeP8source_s_80
_Z20PC_Directive_includeP8source_s_70:
	mov dword [esp+0x8], 0x40
	lea eax, [ebp-0x498]
	mov [esp+0x4], eax
	lea eax, [ebp-0x58]
	mov [esp], eax
	call strncat
_Z20PC_Directive_includeP8source_s_50:
	lea eax, [ebp-0x498]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z18PC_ReadSourceTokenP8source_sP7token_s
	test eax, eax
	jnz _Z20PC_Directive_includeP8source_s_90
_Z20PC_Directive_includeP8source_s_360:
	cmp byte [ebp-0x498], 0x3e
	jz _Z20PC_Directive_includeP8source_s_80
	mov dword [esp+0x4], _cstring_include_missing_
	mov [esp], ebx
	call _Z13SourceWarningP8source_sPcz
_Z20PC_Directive_includeP8source_s_80:
	cmp byte [ebp-0x58], 0x0
	jz _Z20PC_Directive_includeP8source_s_100
	lea esi, [ebp-0x58]
_Z20PC_Directive_includeP8source_s_280:
	movzx eax, byte [esi]
	test al, al
	jz _Z20PC_Directive_includeP8source_s_110
_Z20PC_Directive_includeP8source_s_130:
	cmp al, 0x5c
	jz _Z20PC_Directive_includeP8source_s_120
	cmp al, 0x2f
	jz _Z20PC_Directive_includeP8source_s_120
	add esi, 0x1
	movzx eax, byte [esi]
	test al, al
	jnz _Z20PC_Directive_includeP8source_s_130
_Z20PC_Directive_includeP8source_s_110:
	movzx eax, byte [ebp-0x58]
	test al, al
	jnz _Z20PC_Directive_includeP8source_s_140
_Z20PC_Directive_includeP8source_s_390:
	lea eax, [ebp-0x58]
	mov [esp], eax
	call _Z14LoadScriptFilePKc
	mov edi, eax
	test eax, eax
	jnz _Z20PC_Directive_includeP8source_s_150
	lea eax, [ebp-0x58]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_file_s_not_found
	mov [esp], ebx
	call _Z11SourceErrorP8source_sPcz
	xor eax, eax
	jmp _Z20PC_Directive_includeP8source_s_160
_Z20PC_Directive_includeP8source_s_40:
	lea eax, [ebp-0x498]
	mov [esp], eax
	call _Z17StripDoubleQuotesPc
	lea esi, [ebp-0x498]
_Z20PC_Directive_includeP8source_s_260:
	movzx eax, byte [esi]
	test al, al
	jz _Z20PC_Directive_includeP8source_s_170
_Z20PC_Directive_includeP8source_s_190:
	cmp al, 0x5c
	jz _Z20PC_Directive_includeP8source_s_180
	cmp al, 0x2f
	jz _Z20PC_Directive_includeP8source_s_180
	add esi, 0x1
	movzx eax, byte [esi]
	test al, al
	jnz _Z20PC_Directive_includeP8source_s_190
_Z20PC_Directive_includeP8source_s_170:
	movzx eax, byte [ebp-0x498]
	test al, al
	jnz _Z20PC_Directive_includeP8source_s_200
_Z20PC_Directive_includeP8source_s_310:
	lea eax, [ebp-0x498]
	mov [esp], eax
	call _Z14LoadScriptFilePKc
	mov edi, eax
	test eax, eax
	jz _Z20PC_Directive_includeP8source_s_210
_Z20PC_Directive_includeP8source_s_150:
	mov eax, [ebx+0x84]
	mov esi, eax
	test eax, eax
	jz _Z20PC_Directive_includeP8source_s_220
_Z20PC_Directive_includeP8source_s_240:
	mov [esp+0x4], edi
	mov [esp], esi
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z20PC_Directive_includeP8source_s_230
	mov esi, [esi+0x4c0]
	test esi, esi
	jnz _Z20PC_Directive_includeP8source_s_240
	mov eax, [ebx+0x84]
_Z20PC_Directive_includeP8source_s_220:
	mov [edi+0x4c0], eax
	mov [ebx+0x84], edi
	mov eax, 0x1
	jmp _Z20PC_Directive_includeP8source_s_160
_Z20PC_Directive_includeP8source_s_180:
	lea edx, [esi+0x1]
	movzx eax, byte [esi+0x1]
	cmp al, 0x5c
	jz _Z20PC_Directive_includeP8source_s_250
	cmp al, 0x2f
	jz _Z20PC_Directive_includeP8source_s_250
	mov esi, edx
	jmp _Z20PC_Directive_includeP8source_s_260
_Z20PC_Directive_includeP8source_s_250:
	mov [esp+0x4], edx
	mov [esp], esi
	call strcpy
	jmp _Z20PC_Directive_includeP8source_s_260
_Z20PC_Directive_includeP8source_s_120:
	lea edx, [esi+0x1]
	movzx eax, byte [esi+0x1]
	cmp al, 0x5c
	jz _Z20PC_Directive_includeP8source_s_270
	cmp al, 0x2f
	jz _Z20PC_Directive_includeP8source_s_270
	mov esi, edx
	jmp _Z20PC_Directive_includeP8source_s_280
_Z20PC_Directive_includeP8source_s_270:
	mov [esp+0x4], edx
	mov [esp], esi
	call strcpy
	jmp _Z20PC_Directive_includeP8source_s_280
_Z20PC_Directive_includeP8source_s_200:
	lea edx, [ebp-0x498]
	jmp _Z20PC_Directive_includeP8source_s_290
_Z20PC_Directive_includeP8source_s_320:
	cmp al, 0x5c
	jz _Z20PC_Directive_includeP8source_s_300
_Z20PC_Directive_includeP8source_s_330:
	movzx eax, byte [edx+0x1]
	add edx, 0x1
	test al, al
	jz _Z20PC_Directive_includeP8source_s_310
_Z20PC_Directive_includeP8source_s_290:
	cmp al, 0x2f
	jnz _Z20PC_Directive_includeP8source_s_320
_Z20PC_Directive_includeP8source_s_300:
	mov byte [edx], 0x2f
	jmp _Z20PC_Directive_includeP8source_s_330
_Z20PC_Directive_includeP8source_s_230:
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_s_recursively_in
	mov [esp], ebx
	call _Z11SourceErrorP8source_sPcz
	jmp _Z20PC_Directive_includeP8source_s_340
_Z20PC_Directive_includeP8source_s_60:
	mov dword [esp], 0x440
	call _Z9GetMemorym
	mov esi, eax
	test eax, eax
	jz _Z20PC_Directive_includeP8source_s_350
	mov dword [esp+0x8], 0x440
	lea eax, [ebp-0x498]
	mov [esp+0x4], eax
	mov [esp], esi
	call memcpy
	mov dword [esi+0x430], 0x0
	add dword [numtokens], 0x1
_Z20PC_Directive_includeP8source_s_420:
	mov eax, [ebx+0x88]
	mov [esi+0x430], eax
	mov [ebx+0x88], esi
	jmp _Z20PC_Directive_includeP8source_s_360
_Z20PC_Directive_includeP8source_s_140:
	lea edx, [ebp-0x58]
	jmp _Z20PC_Directive_includeP8source_s_370
_Z20PC_Directive_includeP8source_s_400:
	cmp al, 0x5c
	jz _Z20PC_Directive_includeP8source_s_380
_Z20PC_Directive_includeP8source_s_410:
	movzx eax, byte [edx+0x1]
	add edx, 0x1
	test al, al
	jz _Z20PC_Directive_includeP8source_s_390
_Z20PC_Directive_includeP8source_s_370:
	cmp al, 0x2f
	jnz _Z20PC_Directive_includeP8source_s_400
_Z20PC_Directive_includeP8source_s_380:
	mov byte [edx], 0x2f
	jmp _Z20PC_Directive_includeP8source_s_410
_Z20PC_Directive_includeP8source_s_100:
	mov dword [esp+0x4], _cstring_include_without_1
	mov [esp], ebx
	call _Z11SourceErrorP8source_sPcz
	xor eax, eax
	jmp _Z20PC_Directive_includeP8source_s_160
_Z20PC_Directive_includeP8source_s_210:
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
	jmp _Z20PC_Directive_includeP8source_s_390
_Z20PC_Directive_includeP8source_s_350:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z20PC_Directive_includeP8source_s_420
	add [eax], al


;PC_SourceFileAndLine(int, char*, int*)
_Z20PC_SourceFileAndLineiPcPi:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov edx, [ebp+0x8]
	lea eax, [edx-0x1]
	cmp eax, 0x3e
	ja _Z20PC_SourceFileAndLineiPcPi_10
	mov eax, [edx*4+sourceFiles]
	test eax, eax
	jz _Z20PC_SourceFileAndLineiPcPi_10
	mov ebx, [eax+0x84]
	test ebx, ebx
	jz _Z20PC_SourceFileAndLineiPcPi_20
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
_Z20PC_SourceFileAndLineiPcPi_10:
	xor eax, eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z20PC_SourceFileAndLineiPcPi_20:
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
_Z22PC_Directive_evalfloatP8source_s:
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
	call _Z11PC_EvaluateP8source_sPlPdi
	test eax, eax
	jnz _Z22PC_Directive_evalfloatP8source_s_10
	add esp, 0x8ac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22PC_Directive_evalfloatP8source_s_10:
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
	call _Z9GetMemorym
	mov ebx, eax
	test eax, eax
	jz _Z22PC_Directive_evalfloatP8source_s_20
	mov dword [esp+0x8], 0x440
	mov [esp+0x4], edi
	mov [esp], eax
	call memcpy
	mov dword [ebx+0x430], 0x0
	add dword [numtokens], 0x1
_Z22PC_Directive_evalfloatP8source_s_60:
	mov eax, [esi+0x88]
	mov [ebx+0x430], eax
	mov [esi+0x88], ebx
	pxor xmm0, xmm0
	ucomisd xmm0, [ebp-0x20]
	ja _Z22PC_Directive_evalfloatP8source_s_30
	mov eax, 0x1
_Z22PC_Directive_evalfloatP8source_s_50:
	add esp, 0x8ac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22PC_Directive_evalfloatP8source_s_30:
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
	call _Z9GetMemorym
	mov ebx, eax
	test eax, eax
	jz _Z22PC_Directive_evalfloatP8source_s_40
	mov dword [esp+0x8], 0x440
	mov [esp+0x4], edi
	mov [esp], eax
	call memcpy
	mov dword [ebx+0x430], 0x0
	add dword [numtokens], 0x1
_Z22PC_Directive_evalfloatP8source_s_70:
	mov eax, [esi+0x88]
	mov [ebx+0x430], eax
	mov [esi+0x88], ebx
	mov eax, 0x1
	jmp _Z22PC_Directive_evalfloatP8source_s_50
_Z22PC_Directive_evalfloatP8source_s_20:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z22PC_Directive_evalfloatP8source_s_60
_Z22PC_Directive_evalfloatP8source_s_40:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z22PC_Directive_evalfloatP8source_s_70


;PC_ExpandBuiltinDefine(source_s*, token_s*, define_s*, token_s**, token_s**)
_Z22PC_ExpandBuiltinDefineP8source_sP7token_sP8define_sPS2_S5_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov ebx, [ebp+0xc]
	mov dword [esp], 0x440
	call _Z9GetMemorym
	mov esi, eax
	test eax, eax
	jz _Z22PC_ExpandBuiltinDefineP8source_sP7token_sP8define_sPS2_S5__10
	mov dword [esp+0x8], 0x440
	mov [esp+0x4], ebx
	mov [esp], eax
	call memcpy
	mov dword [esi+0x430], 0x0
	add dword [numtokens], 0x1
_Z22PC_ExpandBuiltinDefineP8source_sP7token_sP8define_sPS2_S5__80:
	mov eax, [ebp+0x10]
	mov eax, [eax+0x8]
	cmp eax, 0x2
	jz _Z22PC_ExpandBuiltinDefineP8source_sP7token_sP8define_sPS2_S5__20
	jg _Z22PC_ExpandBuiltinDefineP8source_sP7token_sP8define_sPS2_S5__30
	sub eax, 0x1
	jz _Z22PC_ExpandBuiltinDefineP8source_sP7token_sP8define_sPS2_S5__40
_Z22PC_ExpandBuiltinDefineP8source_sP7token_sP8define_sPS2_S5__60:
	mov eax, [ebp+0x14]
	mov dword [eax], 0x0
	mov edx, [ebp+0x18]
	mov dword [edx], 0x0
_Z22PC_ExpandBuiltinDefineP8source_sP7token_sP8define_sPS2_S5__70:
	mov eax, 0x1
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22PC_ExpandBuiltinDefineP8source_sP7token_sP8define_sPS2_S5__30:
	cmp eax, 0x3
	jz _Z22PC_ExpandBuiltinDefineP8source_sP7token_sP8define_sPS2_S5__50
	cmp eax, 0x4
	jnz _Z22PC_ExpandBuiltinDefineP8source_sP7token_sP8define_sPS2_S5__60
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
	jmp _Z22PC_ExpandBuiltinDefineP8source_sP7token_sP8define_sPS2_S5__70
_Z22PC_ExpandBuiltinDefineP8source_sP7token_sP8define_sPS2_S5__20:
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
_Z22PC_ExpandBuiltinDefineP8source_sP7token_sP8define_sPS2_S5__10:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z22PC_ExpandBuiltinDefineP8source_sP7token_sP8define_sPS2_S5__80
_Z22PC_ExpandBuiltinDefineP8source_sP7token_sP8define_sPS2_S5__50:
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
_Z22PC_ExpandBuiltinDefineP8source_sP7token_sP8define_sPS2_S5__40:
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
_Z22PC_ReadDollarDirectiveP8source_s:
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
	call _Z18PC_ReadSourceTokenP8source_sP7token_s
	test eax, eax
	jz _Z22PC_ReadDollarDirectiveP8source_s_10
	mov eax, [ebp-0x2c]
	test eax, eax
	jle _Z22PC_ReadDollarDirectiveP8source_s_20
	mov dword [esp], 0x440
	call _Z9GetMemorym
	mov ebx, eax
	test eax, eax
	jz _Z22PC_ReadDollarDirectiveP8source_s_30
	mov dword [esp+0x8], 0x440
	lea edx, [ebp-0x458]
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	mov dword [ebx+0x430], 0x0
	add dword [numtokens], 0x1
_Z22PC_ReadDollarDirectiveP8source_s_90:
	mov eax, [edi+0x88]
	mov [ebx+0x430], eax
	mov [edi+0x88], ebx
	mov dword [esp+0x4], _cstring_found__at_end_of1
	mov [esp], edi
	call _Z11SourceErrorP8source_sPcz
	xor eax, eax
_Z22PC_ReadDollarDirectiveP8source_s_110:
	add esp, 0x45c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22PC_ReadDollarDirectiveP8source_s_20:
	cmp dword [ebp-0x58], 0x4
	jz _Z22PC_ReadDollarDirectiveP8source_s_40
_Z22PC_ReadDollarDirectiveP8source_s_60:
	mov dword [esp], 0x440
	call _Z9GetMemorym
	mov ebx, eax
	test eax, eax
	jz _Z22PC_ReadDollarDirectiveP8source_s_50
	mov dword [esp+0x8], 0x440
	lea eax, [ebp-0x458]
	mov [esp+0x4], eax
	mov [esp], ebx
	call memcpy
	mov dword [ebx+0x430], 0x0
	add dword [numtokens], 0x1
_Z22PC_ReadDollarDirectiveP8source_s_100:
	mov eax, [edi+0x88]
	mov [ebx+0x430], eax
	mov [edi+0x88], ebx
	lea edx, [ebp-0x458]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_unknown_precompi
	mov [esp], edi
	call _Z11SourceErrorP8source_sPcz
	xor eax, eax
	add esp, 0x45c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22PC_ReadDollarDirectiveP8source_s_10:
	mov dword [esp+0x4], _cstring_found__without_n1
	mov [esp], edi
	call _Z11SourceErrorP8source_sPcz
	xor eax, eax
	add esp, 0x45c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22PC_ReadDollarDirectiveP8source_s_40:
	mov eax, [dollardirectives]
	test eax, eax
	jz _Z22PC_ReadDollarDirectiveP8source_s_60
	xor esi, esi
	mov ebx, dollardirectives
_Z22PC_ReadDollarDirectiveP8source_s_80:
	lea edx, [ebp-0x458]
	mov [esp+0x4], edx
	mov [esp], eax
	call strcmp
	test eax, eax
	jz _Z22PC_ReadDollarDirectiveP8source_s_70
	add esi, 0x1
	mov eax, [ebx+0x8]
	add ebx, 0x8
	test eax, eax
	jnz _Z22PC_ReadDollarDirectiveP8source_s_80
	jmp _Z22PC_ReadDollarDirectiveP8source_s_60
_Z22PC_ReadDollarDirectiveP8source_s_30:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z22PC_ReadDollarDirectiveP8source_s_90
_Z22PC_ReadDollarDirectiveP8source_s_50:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z22PC_ReadDollarDirectiveP8source_s_100
_Z22PC_ReadDollarDirectiveP8source_s_70:
	mov [esp], edi
	call dword [esi*8+dollardirectives+0x4]
	jmp _Z22PC_ReadDollarDirectiveP8source_s_110


;PC_DollarDirective_evalint(source_s*)
_Z26PC_DollarDirective_evalintP8source_s:
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
	call _Z17PC_DollarEvaluateP8source_sPlPdi
	test eax, eax
	jnz _Z26PC_DollarDirective_evalintP8source_s_10
_Z26PC_DollarDirective_evalintP8source_s_60:
	add esp, 0x8ac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26PC_DollarDirective_evalintP8source_s_10:
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
	call _Z9GetMemorym
	mov ebx, eax
	test eax, eax
	jz _Z26PC_DollarDirective_evalintP8source_s_20
	mov dword [esp+0x8], 0x440
	mov [esp+0x4], edi
	mov [esp], eax
	call memcpy
	mov dword [ebx+0x430], 0x0
	add dword [numtokens], 0x1
_Z26PC_DollarDirective_evalintP8source_s_40:
	mov eax, [esi+0x88]
	mov [ebx+0x430], eax
	mov [esi+0x88], ebx
	mov ecx, [ebp-0x1c]
	test ecx, ecx
	js _Z26PC_DollarDirective_evalintP8source_s_30
	mov eax, 0x1
	add esp, 0x8ac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26PC_DollarDirective_evalintP8source_s_20:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z26PC_DollarDirective_evalintP8source_s_40
_Z26PC_DollarDirective_evalintP8source_s_30:
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
	call _Z9GetMemorym
	mov ebx, eax
	test eax, eax
	jz _Z26PC_DollarDirective_evalintP8source_s_50
	mov dword [esp+0x8], 0x440
	mov [esp+0x4], edi
	mov [esp], eax
	call memcpy
	mov dword [ebx+0x430], 0x0
	add dword [numtokens], 0x1
_Z26PC_DollarDirective_evalintP8source_s_70:
	mov eax, [esi+0x88]
	mov [ebx+0x430], eax
	mov [esi+0x88], ebx
	mov eax, 0x1
	jmp _Z26PC_DollarDirective_evalintP8source_s_60
_Z26PC_DollarDirective_evalintP8source_s_50:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z26PC_DollarDirective_evalintP8source_s_70


;PC_DollarDirective_evalfloat(source_s*)
_Z28PC_DollarDirective_evalfloatP8source_s:
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
	call _Z17PC_DollarEvaluateP8source_sPlPdi
	test eax, eax
	jnz _Z28PC_DollarDirective_evalfloatP8source_s_10
_Z28PC_DollarDirective_evalfloatP8source_s_60:
	add esp, 0x8dc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z28PC_DollarDirective_evalfloatP8source_s_10:
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
	call _Z9GetMemorym
	mov ebx, eax
	test eax, eax
	jz _Z28PC_DollarDirective_evalfloatP8source_s_20
	mov dword [esp+0x8], 0x440
	mov [esp+0x4], edi
	mov [esp], eax
	call memcpy
	mov dword [ebx+0x430], 0x0
	add dword [numtokens], 0x1
_Z28PC_DollarDirective_evalfloatP8source_s_40:
	mov eax, [esi+0x88]
	mov [ebx+0x430], eax
	mov [esi+0x88], ebx
	pxor xmm0, xmm0
	ucomisd xmm0, [ebp-0x20]
	ja _Z28PC_DollarDirective_evalfloatP8source_s_30
	mov eax, 0x1
	add esp, 0x8dc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z28PC_DollarDirective_evalfloatP8source_s_20:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z28PC_DollarDirective_evalfloatP8source_s_40
_Z28PC_DollarDirective_evalfloatP8source_s_30:
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
	call _Z9GetMemorym
	mov ebx, eax
	test eax, eax
	jz _Z28PC_DollarDirective_evalfloatP8source_s_50
	mov dword [esp+0x8], 0x440
	mov [esp+0x4], edi
	mov [esp], eax
	call memcpy
	mov dword [ebx+0x430], 0x0
	add dword [numtokens], 0x1
_Z28PC_DollarDirective_evalfloatP8source_s_70:
	mov eax, [esi+0x88]
	mov [ebx+0x430], eax
	mov [esi+0x88], ebx
	mov eax, 0x1
	jmp _Z28PC_DollarDirective_evalfloatP8source_s_60
_Z28PC_DollarDirective_evalfloatP8source_s_50:
	mov dword [esp+0x4], _cstring_exe_err_out_of_m
	mov dword [esp], 0x1
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z28PC_DollarDirective_evalfloatP8source_s_70


;Initialized global or static variables of l_precomp:
SECTION .data
dollardirectives: dd _cstring_evalint, _Z26PC_DollarDirective_evalintP8source_s, _cstring_evalfloat, _Z28PC_DollarDirective_evalfloatP8source_s, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of l_precomp:
SECTION .rdata
directives: dd 0x2ee4dc, 0x46f76, 0x2ee4e0, 0x44b7c, 0x2ee4e8, 0x44b60, 0x2ee4f0, 0x46fe0, 0x2ee4f8, 0x42496, 0x2ee500, 0x42558, 0x2ee508, 0x4380c, 0x2ee510, 0x450d6, 0x2ee518, 0x44b98, 0x2ee520, 0x423d6, 0x2ee528, 0x426d0, 0x2ee530, 0x44978, 0x2ee538, 0x46bfa, 0x2ee4d0, 0x46db4, 0x0, 0x0, 0x0, 0x0


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



;All constant floats and doubles:
SECTION .rdata
_data16_0:		dd 0x0, 0x80000000, 0x0, 0x0	; OWORD
_double_1_00000000:		dq 0x3ff0000000000000	; 1
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; OWORD
_data16_01:		dd 0x0, 0x41e00000, 0x0, 0x0	; OWORD
_data16_ffe00000:		dd 0xffe00000, 0x41efffff, 0x0, 0x0	; OWORD

