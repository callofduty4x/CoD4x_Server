;Imports of scr_yacc:
	extern malloc
	extern Scr_YYACError
	extern exit
	extern memcpy
	extern CompileError
	extern node_pos
	extern node5
	extern sscanf
	extern SL_GetStringOfSize
	extern fwrite
	extern node0
	extern linked_list_end
	extern node2_
	extern append_node
	extern SL_ConvertToLowercase
	extern prepend_node
	extern node2
	extern node3
	extern node1
	extern node6
	extern gScrCompilePub
	extern node1_
	extern node4
	extern SL_GetString_
	extern node8
	extern node7
	extern Scr_ScanFile
	extern realloc
	extern yy_create_buffer
	extern yy_stdin
	extern yy_stdout
;Exports of scr_yacc:
	global yaccResult
	global yy_start
	global yy_current_buffer
	global ch_buf
	global yy_init
	global g_dummyVal
	global g_parse_user
	global g_sourcePos
	global g_out_pos
	global yy_hold_char
	global yy_c_buf_p
	global yy_n_chars
	global yy_did_buffer_switch_on_eof
	global yydefgoto
	global yypgoto
	global yyr1
	global yyr2
	global yydefact
	global yytable
	global yycheck
	global yytranslate
	global yypact
	global yy_nxt
	global yy_chk
	global yy_base
	global yy_meta
	global yy_def
	global yy_last_accepting_cpos
	global yy_last_accepting_state
	global yy_accept
	global yy_ec
	global ScriptParse
	global yyparse
	global yychar
	global yyin
	global yyleng
	global yylval
	global yynerrs
	global yyout
	global yytext


SECTION .text


;ScriptParse(sval_u*, unsigned char)
ScriptParse:
	push ebp
	mov ebp, esp
	sub esp, 0x38
	mov dword [g_out_pos], 0xffffffff
	mov dword [g_sourcePos], 0x0
	mov eax, [ebp+0xc]
	mov [g_parse_user], al
	mov dword [g_dummyVal], 0x0
	mov dword [yy_init], 0x1
	mov dword [ebp-0x24], 0x4000
	mov dword [ebp-0x2c], ch_buf
	mov dword [ebp-0x1c], 0x0
	mov dword [ebp-0x20], 0x0
	mov byte [ch_buf], 0x0
	mov byte [ch_buf+0x1], 0x0
	mov dword [ebp-0x28], ch_buf
	mov dword [ebp-0x14], 0x1
	mov dword [ebp-0xc], 0x0
	lea edx, [ebp-0x30]
	cmp edx, [yy_current_buffer]
	jz ScriptParse_10
ScriptParse_20:
	mov dword [ebp-0x30], 0x0
	mov dword [ebp-0x10], 0x1
	mov dword [ebp-0x18], 0x0
	mov [yy_current_buffer], edx
	mov dword [yy_start], 0x3
	call yyparse
	mov edx, [yaccResult]
	mov eax, [ebp+0x8]
	mov [eax], edx
	leave
	ret
ScriptParse_10:
	mov dword [yy_n_chars], 0x0
	mov dword [yy_c_buf_p], ch_buf
	mov dword [yytext], ch_buf
	mov eax, [ebp-0x30]
	mov [yyin], eax
	mov byte [yy_hold_char], 0x0
	jmp ScriptParse_20
	add [eax], al


;yyparse()
yyparse:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x28ac
	mov dword [yynerrs], 0x0
	mov dword [yyin], 0x0
	mov dword [yychar], 0xfffffffe
	lea eax, [ebp-0x1aa]
	mov [ebp-0x284c], eax
	lea edx, [ebp-0x1a8]
	mov [ebp-0x2840], edx
	lea ecx, [ebp-0x7e8]
	mov [ebp-0x283c], ecx
	mov dword [ebp-0x2838], 0xc8
	mov dword [ebp-0x2854], 0x0
	mov dword [ebp-0x2844], 0x0
	mov [ebp-0x2848], ecx
	mov dword [ebp-0x2810], 0x0
yyparse_180:
	add dword [ebp-0x284c], 0x2
	movzx edi, word [ebp-0x2854]
	mov ebx, [ebp-0x284c]
	mov [ebx], di
	mov edx, [ebp-0x2838]
	add edx, edx
	mov ecx, [ebp-0x2840]
	lea eax, [ecx+edx-0x2]
	cmp ebx, eax
	jb yyparse_10
	sub ebx, ecx
	sar ebx, 1
	mov [ebp-0x284c], ebx
	add ebx, 0x1
	cmp dword [ebp-0x2838], 0x270f
	jg yyparse_20
	mov [ebp-0x2838], edx
	cmp edx, 0x2710
	jle yyparse_30
	mov dword [ebp-0x2838], 0x2710
	mov edi, 0x2710
	mov dword [ebp-0x2808], 0x2710
yyparse_240:
	lea eax, [edi+edi+0x1e]
	and eax, 0xfffffff0
	sub esp, eax
	lea eax, [esp+0x30]
	mov [ebp-0x286c], eax
	lea esi, [ebx+ebx]
	mov [esp+0x8], esi
	mov edx, [ebp-0x2840]
	mov [esp+0x4], edx
	mov [esp], eax
	call memcpy
	lea eax, [edi*8+0x10]
	sub esp, eax
	lea edi, [esp+0x30]
	shl ebx, 0x3
	mov [esp+0x8], ebx
	mov ecx, [ebp-0x283c]
	mov [esp+0x4], ecx
	mov [esp], edi
	call memcpy
	mov eax, [ebp-0x286c]
	lea esi, [eax+esi-0x2]
	mov [ebp-0x284c], esi
	lea ebx, [edi+ebx-0x8]
	mov [ebp-0x2848], ebx
	mov edx, [ebp-0x2808]
	mov ecx, eax
	lea eax, [eax+edx*2-0x2]
	cmp esi, eax
	jae yyparse_40
	mov [ebp-0x2840], ecx
	mov [ebp-0x283c], edi
yyparse_10:
	mov ebx, [ebp-0x2854]
	movzx eax, word [ebx+ebx+yypact]
	movsx edi, ax
	mov [ebp-0x2804], edi
	cmp ax, 0x8000
	jz yyparse_50
	cmp dword [yychar], 0xfffffffe
	jz yyparse_60
	mov eax, [yychar]
yyparse_430:
	test eax, eax
	jle yyparse_70
	cmp eax, 0x158
	jbe yyparse_80
	mov ecx, 0x77
yyparse_250:
	mov ebx, [ebp-0x2804]
	lea edx, [ecx+ebx]
	cmp edx, 0x543
	ja yyparse_90
	movsx eax, word [edx+edx+yycheck]
	cmp ecx, eax
	jz yyparse_100
yyparse_90:
	mov edx, [ebp-0x2854]
	movzx eax, word [edx+edx+yydefact]
	movsx ecx, ax
	mov [ebp-0x2850], ecx
	test ax, ax
	jnz yyparse_110
yyparse_190:
	mov ebx, [ebp-0x2844]
	test ebx, ebx
	jz yyparse_120
	cmp dword [ebp-0x2844], 0x3
	jz yyparse_130
yyparse_270:
	mov ecx, [ebp-0x284c]
	mov edx, [ebp-0x2854]
	jmp yyparse_140
yyparse_150:
	cmp [ebp-0x2840], ecx
	jz yyparse_40
	sub dword [ebp-0x2848], 0x8
	movsx eax, word [ecx-0x2]
	mov [ebp-0x2854], eax
	sub ecx, 0x2
	mov edx, eax
yyparse_140:
	mov [ebp-0x284c], ecx
	movzx eax, word [edx+edx+yypact]
	movsx edx, ax
	cmp ax, 0x8000
	jz yyparse_150
	lea eax, [edx+0x1]
	cmp eax, 0x543
	ja yyparse_150
	cmp word [eax+eax+yycheck], 0x1
	jnz yyparse_150
	movzx eax, word [eax+eax+yytable]
	movsx ebx, ax
	test ebx, ebx
	js yyparse_160
	test ax, ax
	jz yyparse_150
	cmp ax, 0x105
	jz yyparse_170
	add dword [ebp-0x2848], 0x8
	mov eax, [yylval]
	mov edx, [yylval+0x4]
	mov ecx, [ebp-0x2848]
	mov [ecx], eax
	mov [ecx+0x4], edx
	mov [ebp-0x2854], ebx
	mov dword [ebp-0x2844], 0x3
	jmp yyparse_180
yyparse_50:
	mov edx, ebx
	movzx eax, word [edx+edx+yydefact]
	movsx ecx, ax
	mov [ebp-0x2850], ecx
	test ax, ax
	jz yyparse_190
yyparse_110:
	mov ebx, ecx
yyparse_280:
	movsx ebx, word [ebx+ebx+yyr2]
	mov [ebp-0x2834], ebx
	test ebx, ebx
	jle yyparse_200
	mov eax, 0x1
	sub eax, ebx
	mov ecx, [ebp-0x2848]
	mov edx, [ecx+eax*8]
	mov ecx, [ecx+eax*8+0x4]
	mov [ebp-0x2868], edx
	mov [ebp-0x2864], ecx
	mov [ebp-0x280c], edx
	mov [ebp-0x2810], ecx
yyparse_200:
	cmp dword [ebp-0x2850], 0x85
	jbe yyparse_210
	mov ebx, [ebp-0x280c]
	mov edi, [ebp-0x2810]
yyparse_420:
	mov eax, [ebp-0x2834]
	shl eax, 0x3
	mov edx, [ebp-0x2848]
	sub edx, eax
	mov eax, [ebp-0x2834]
	add eax, eax
	sub [ebp-0x284c], eax
	lea ecx, [edx+0x8]
	mov [ebp-0x2848], ecx
	mov [ebp-0x2868], ebx
	mov [ebp-0x2864], edi
	mov ecx, [ebp-0x2868]
	mov ebx, [ebp-0x2864]
	mov [edx+0x8], ecx
	mov [edx+0xc], ebx
	mov ebx, [ebp-0x2850]
	movsx eax, word [ebx+ebx+yyr1]
	lea ebx, [eax-0x5b]
	mov edi, [ebp-0x284c]
	movsx ecx, word [edi]
	movsx eax, word [ebx+ebx+yypgoto]
	lea edx, [eax+ecx]
	cmp edx, 0x543
	ja yyparse_220
	movsx eax, word [edx+edx+yycheck]
	cmp ecx, eax
	jz yyparse_230
yyparse_220:
	movsx ebx, word [ebx+ebx+yydefgoto]
	mov [ebp-0x2854], ebx
	jmp yyparse_180
yyparse_30:
	mov [ebp-0x2808], edx
	mov edi, edx
	jmp yyparse_240
yyparse_80:
	movsx ecx, byte [eax+yytranslate]
	jmp yyparse_250
yyparse_120:
	add dword [yynerrs], 0x1
	mov eax, [yychar]
	test eax, eax
	jz yyparse_260
	cmp eax, 0x101
	jz yyparse_270
	mov dword [esp+0x4], _cstring_bad_syntax
	mov eax, [g_sourcePos]
	mov [esp], eax
	call CompileError
	jmp yyparse_270
yyparse_210:
	mov ebx, [ebp-0x2850]
	jmp dword [ebx*4+yyparse_jumptab_0]
yyparse_40:
	mov eax, 0x1
yyparse_590:
	lea esp, [ebp-0xc]
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
yyparse_160:
	cmp ax, 0x8000
	jz yyparse_150
	neg ebx
	mov [ebp-0x2850], ebx
	mov dword [ebp-0x2844], 0x3
	jmp yyparse_280
yyparse_60:
	mov edi, [yy_init]
	test edi, edi
	jz yyparse_290
	mov dword [yy_init], 0x0
	mov eax, 0x1
	mov esi, [yy_start]
	test esi, esi
	cmovnz eax, [yy_start]
	mov [yy_start], eax
	mov ebx, [yyin]
	test ebx, ebx
	jz yyparse_300
yyparse_410:
	mov ecx, [yyout]
	test ecx, ecx
	jz yyparse_310
yyparse_550:
	mov edx, [yy_current_buffer]
	test edx, edx
	jz yyparse_320
	mov edx, [yy_current_buffer]
yyparse_560:
	mov eax, [edx+0x10]
	mov [yy_n_chars], eax
	mov eax, [edx+0x8]
	mov [yy_c_buf_p], eax
	mov ebx, eax
	mov [yytext], eax
	mov eax, [edx]
	mov [yyin], eax
	movzx eax, byte [ebx]
	mov [yy_hold_char], al
yyparse_290:
	mov eax, [yy_c_buf_p]
	mov [ebp-0x2800], eax
	movzx eax, byte [yy_hold_char]
	mov edx, [ebp-0x2800]
	mov [edx], al
	mov ecx, [yy_start]
	mov edi, edx
yyparse_360:
	movzx eax, byte [edi]
	movzx esi, byte [eax*4+yy_ec]
	cmp word [ecx+ecx+yy_accept], 0x0
	jz yyparse_330
	mov [yy_last_accepting_state], ecx
	mov [yy_last_accepting_cpos], edi
yyparse_330:
	movsx eax, word [ecx+ecx+yy_base]
	mov edx, esi
	movzx ebx, dl
	lea edx, [eax+ebx]
	movsx eax, word [edx+edx+yy_chk]
	cmp ecx, eax
	jz yyparse_340
yyparse_350:
	movsx ecx, word [ecx+ecx+yy_def]
	cmp ecx, 0x101
	jle yyparse_330
	movzx esi, byte [ebx*4+yy_meta]
	movsx eax, word [ecx+ecx+yy_base]
	mov edx, esi
	movzx ebx, dl
	lea edx, [eax+ebx]
	movsx eax, word [edx+edx+yy_chk]
	cmp ecx, eax
	jnz yyparse_350
yyparse_340:
	movsx ecx, word [edx+edx+yy_nxt]
	add edi, 0x1
	cmp word [ecx+ecx+yy_base], 0x1b3
	jnz yyparse_360
	mov ebx, [ebp-0x2800]
	mov [ebp-0x27fc], ebx
yyparse_540:
	movzx eax, word [ecx+ecx+yy_accept]
	movsx edx, ax
	test ax, ax
	jnz yyparse_370
	mov edi, [yy_last_accepting_cpos]
	mov eax, [yy_last_accepting_state]
	movsx edx, word [eax+eax+yy_accept]
yyparse_370:
	mov ebx, [ebp-0x27fc]
	mov [yytext], ebx
	mov eax, edi
	sub eax, ebx
	mov [yyleng], eax
	movzx eax, byte [edi]
	mov [yy_hold_char], al
	mov byte [edi], 0x0
	mov [yy_c_buf_p], edi
yyparse_500:
	cmp edx, 0x62
	ja yyparse_380
	jmp dword [edx*4+yyparse_jumptab_1]
yyparse_70:
	mov dword [yychar], 0x0
	xor ecx, ecx
	jmp yyparse_250
yyparse_380:
	mov dword [esp+0x4], _cstring_fatal_flex_scann
yyparse_810:
	mov dword [esp], _cstring_s
	call Scr_YYACError
	mov dword [esp], 0x2
	call exit
yyparse_100:
	movzx eax, word [edx+edx+yytable]
	movsx ecx, ax
	test ecx, ecx
	js yyparse_390
	test ax, ax
	jz yyparse_190
	cmp ax, 0x105
	jz yyparse_170
	mov eax, 0xfffffffe
	mov edi, [yychar]
	test edi, edi
	cmovz eax, [yychar]
	mov [yychar], eax
	add dword [ebp-0x2848], 0x8
	mov eax, [yylval]
	mov edx, [yylval+0x4]
	mov edi, [ebp-0x2848]
	mov [edi], eax
	mov [edi+0x4], edx
	mov esi, [ebp-0x2844]
	test esi, esi
	jnz yyparse_400
	mov [ebp-0x2854], ecx
	jmp yyparse_180
yyparse_260:
	mov dword [esp+0x4], _cstring_unexpected_end_o
	mov eax, [g_sourcePos]
	mov [esp], eax
	call CompileError
	jmp yyparse_270
yyparse_130:
	mov ecx, [yychar]
	test ecx, ecx
	jz yyparse_40
	mov dword [yychar], 0xfffffffe
	jmp yyparse_270
yyparse_230:
	movsx edx, word [edx+edx+yytable]
	mov [ebp-0x2854], edx
	jmp yyparse_180
yyparse_300:
	call yy_stdin
	mov [yyin], eax
	jmp yyparse_410
yyparse_400:
	sub dword [ebp-0x2844], 0x1
	mov [ebp-0x2854], ecx
	jmp yyparse_180
yyparse_2450:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	jmp yyparse_290
yyparse_1230:
	mov esi, [ebp-0x2848]
	sub esi, 0x8
	mov eax, [esi+0x4]
	mov [esp], eax
	call node_pos
	mov edi, eax
	mov ecx, [ebp-0x2848]
	mov eax, [ecx+0x4]
	mov [esp], eax
	call node_pos
	mov ebx, eax
	mov edx, [ebp-0x2848]
	mov eax, [edx-0xc]
	mov [esp], eax
	call node_pos
	mov edx, [ebp-0x2848]
	mov ecx, [edx]
	mov edx, [edx-0x10]
	mov [esp+0x14], edi
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	mov [esp+0x8], ecx
	mov [esp+0x4], edx
	mov dword [esp], 0x30
	call node5
	mov [ebp-0x280c], eax
	mov esi, [esi+0x4]
	mov [ebp-0x2810], esi
	mov ebx, eax
	mov edi, esi
	jmp yyparse_420
yyparse_1220:
	mov esi, [ebp-0x2848]
	sub esi, 0x8
	mov eax, [esi+0x4]
	mov [esp], eax
	call node_pos
	mov edi, eax
	mov edx, [ebp-0x2848]
	mov eax, [edx+0x4]
	mov [esp], eax
	call node_pos
	mov ebx, eax
	mov ecx, [ebp-0x2848]
	mov eax, [ecx-0xc]
	mov [esp], eax
	call node_pos
	mov edx, [ebp-0x2848]
	mov ecx, [edx]
	mov edx, [edx-0x10]
	mov [esp+0x14], edi
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	mov [esp+0x8], ecx
	mov [esp+0x4], edx
	mov dword [esp], 0x2f
	call node5
	mov [ebp-0x280c], eax
	mov esi, [esi+0x4]
	mov [ebp-0x2810], esi
	mov ebx, eax
	mov edi, esi
	jmp yyparse_420
yyparse_3060:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x13d
yyparse_440:
	mov [yychar], eax
	jmp yyparse_430
yyparse_3050:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x13c
	jmp yyparse_440
yyparse_3040:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x13b
	jmp yyparse_440
yyparse_3030:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x13a
	jmp yyparse_440
yyparse_3020:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x139
	jmp yyparse_440
yyparse_3010:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x138
	jmp yyparse_440
yyparse_3000:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x137
	jmp yyparse_440
yyparse_2990:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x136
	jmp yyparse_440
yyparse_2980:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x135
	jmp yyparse_440
yyparse_2970:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x134
	jmp yyparse_440
yyparse_2960:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x133
	jmp yyparse_440
yyparse_2950:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x132
	jmp yyparse_440
yyparse_2940:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x131
	jmp yyparse_440
yyparse_2930:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x130
	jmp yyparse_440
yyparse_2920:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x12f
	jmp yyparse_440
yyparse_2910:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x12e
	jmp yyparse_440
yyparse_2900:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x12d
	jmp yyparse_440
yyparse_2890:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x12c
	jmp yyparse_440
yyparse_2880:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x12b
	jmp yyparse_440
yyparse_2870:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x12a
	jmp yyparse_440
yyparse_2860:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x129
	jmp yyparse_440
yyparse_2850:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x128
	jmp yyparse_440
yyparse_2840:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x127
	jmp yyparse_440
yyparse_2830:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x124
	jmp yyparse_440
yyparse_2820:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x125
	jmp yyparse_440
yyparse_2810:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x123
	jmp yyparse_440
yyparse_2800:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x126
	jmp yyparse_440
yyparse_2790:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x121
	jmp yyparse_440
yyparse_2780:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x122
	jmp yyparse_440
yyparse_2770:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov dword [esp+0x8], yylval
	mov dword [esp+0x4], _cstring_f
	mov eax, [yytext]
	mov [esp], eax
	call sscanf
	mov eax, 0x120
	jmp yyparse_440
yyparse_2760:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov dword [esp+0x8], yylval
	mov dword [esp+0x4], _cstring_d
	mov eax, [yytext]
	mov [esp], eax
	call sscanf
	mov eax, 0x11f
	jmp yyparse_440
yyparse_2750:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x11e
	jmp yyparse_440
yyparse_3220:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x14e
	jmp yyparse_440
yyparse_3210:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x14d
	jmp yyparse_440
yyparse_3200:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x14c
	jmp yyparse_440
yyparse_3190:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x14b
	jmp yyparse_440
yyparse_3180:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x14a
	jmp yyparse_440
yyparse_3170:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x149
	jmp yyparse_440
yyparse_3160:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x148
	jmp yyparse_440
yyparse_3150:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x147
	jmp yyparse_440
yyparse_3140:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x146
	jmp yyparse_440
yyparse_3130:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x145
	jmp yyparse_440
yyparse_3120:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x143
	jmp yyparse_440
yyparse_3110:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x142
	jmp yyparse_440
yyparse_3100:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x141
	jmp yyparse_440
yyparse_3090:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x140
	jmp yyparse_440
yyparse_3080:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x13f
	jmp yyparse_440
yyparse_3070:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x13e
	jmp yyparse_440
yyparse_3300:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x156
	jmp yyparse_440
yyparse_3290:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x155
	jmp yyparse_440
yyparse_3280:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x154
	jmp yyparse_440
yyparse_3270:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x153
	jmp yyparse_440
yyparse_3260:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x152
	jmp yyparse_440
yyparse_3250:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x151
	jmp yyparse_440
yyparse_3240:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x150
	jmp yyparse_440
yyparse_3230:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x14f
	jmp yyparse_440
yyparse_3340:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	mov edx, eax
	add edx, [yyleng]
	mov [g_out_pos], edx
	mov edx, [yytext]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_bad_token_s
	mov [esp], eax
	call CompileError
	mov eax, 0x101
	jmp yyparse_440
yyparse_3330:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	mov edx, [yyleng]
	add eax, edx
	mov [g_out_pos], eax
	mov dword [esp+0xc], 14
	add edx, 0x1
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x0
	mov eax, [yytext]
	mov [esp], eax
	call SL_GetStringOfSize
	mov [yylval], eax
	mov eax, 0x144
	jmp yyparse_440
yyparse_3320:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	mov edx, [yyleng]
	add eax, edx
	mov [g_out_pos], eax
	mov dword [esp+0xc], 14
	add edx, 0x1
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x0
	mov eax, [yytext]
	mov [esp], eax
	call SL_GetStringOfSize
	mov [yylval], eax
	mov eax, 0x102
	jmp yyparse_440
yyparse_3310:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x157
	jmp yyparse_440
yyparse_3360:
	mov eax, edi
	sub eax, [yytext]
	sub eax, 0x1
	mov [ebp-0x2830], eax
	movzx eax, byte [yy_hold_char]
	mov [edi], al
	mov esi, [yy_current_buffer]
	mov eax, [esi+0x24]
	test eax, eax
	jnz yyparse_450
	mov eax, [esi+0x10]
	mov [yy_n_chars], eax
	mov eax, [yyin]
	mov [esi], eax
	mov dword [esi+0x24], 0x1
yyparse_450:
	mov eax, [esi+0x4]
	mov [ebp-0x2824], eax
	mov edx, [yy_n_chars]
	mov [ebp-0x287c], edx
	mov edx, [yy_c_buf_p]
	add eax, [ebp-0x287c]
	cmp eax, edx
	jae yyparse_460
	mov ebx, [yytext]
	mov ecx, ebx
	add eax, 0x1
	cmp edx, eax
	ja yyparse_470
	mov eax, [esi+0x20]
	test eax, eax
	jnz yyparse_480
	sub edx, ebx
	sub edx, 0x1
	jnz yyparse_490
yyparse_920:
	mov dword [yy_did_buffer_switch_on_eof], 0x0
	mov [yy_c_buf_p], ebx
	mov edx, [yy_start]
	sub edx, 0x1
	mov eax, edx
	shr eax, 0x1f
	add eax, edx
	sar eax, 1
	lea edx, [eax+0x60]
	jmp yyparse_500
yyparse_3350:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	mov edx, [yyleng]
	add eax, edx
	mov [g_out_pos], eax
	mov eax, [yyout]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x1
	mov [esp+0x4], edx
	mov eax, [yytext]
	mov [esp], eax
	call fwrite
	jmp yyparse_290
yyparse_3370:
	xor eax, eax
	jmp yyparse_440
yyparse_2430:
	mov dword [esp], 0x0
	call node0
	mov [esp], eax
	call linked_list_end
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_2320:
	mov ecx, [ebp-0x2848]
	mov eax, [ecx+0x4]
	mov [esp], eax
	call node_pos
	mov ebx, [ebp-0x2848]
	mov ecx, [ebx]
	mov [esp+0x4], eax
	mov [esp], ecx
	call node2_
	mov ebx, eax
	mov dword [esp], 0x0
	call node0
	mov [esp], eax
	call linked_list_end
	mov [esp+0x4], ebx
	mov [esp], eax
	call append_node
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_2310:
	mov edi, [ebp-0x2848]
	mov eax, [edi+0x4]
	mov [esp], eax
	call node_pos
	mov ecx, [edi]
	mov [esp+0x4], eax
	mov [esp], ecx
	call node2_
	mov edx, [edi-0x10]
	mov [esp+0x4], eax
	mov [esp], edx
	call append_node
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_2300:
	mov ecx, [ebp-0x2848]
	mov eax, [ecx+0x4]
	mov [esp], eax
	call node_pos
	mov ebx, [ebp-0x2848]
	mov ecx, [ebx]
	mov [esp+0x4], eax
	mov [esp], ecx
	call node2_
	mov ebx, eax
	mov dword [esp], 0x0
	call node0
	mov [esp], eax
	call linked_list_end
	mov [esp+0x4], ebx
	mov [esp], eax
	call append_node
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_2290:
	mov dword [esp+0x8], 14
	movzx eax, byte [g_parse_user]
	mov [esp+0x4], eax
	mov edi, [ebp-0x2848]
	mov eax, [edi]
	mov [esp], eax
	call SL_ConvertToLowercase
	mov [edi], eax
	mov eax, [edi+0x4]
	mov [esp], eax
	call node_pos
	mov ecx, [edi]
	mov [esp+0x4], eax
	mov [esp], ecx
	call node2_
	mov edx, [edi-0x10]
	mov [esp+0x4], eax
	mov [esp], edx
	call append_node
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_2280:
	mov dword [esp], 0x0
	call node0
	mov [esp], eax
	call linked_list_end
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_1160:
	mov ebx, [ebp-0x280c]
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_2270:
	mov dword [esp+0x8], 14
	movzx eax, byte [g_parse_user]
	mov [esp+0x4], eax
	mov edx, [ebp-0x2848]
	mov eax, [edx]
	mov [esp], eax
	call SL_ConvertToLowercase
	mov ecx, [ebp-0x2848]
	mov [ecx], eax
	mov eax, [ecx+0x4]
	mov [esp], eax
	call node_pos
	mov ebx, [ebp-0x2848]
	mov ecx, [ebx]
	mov [esp+0x4], eax
	mov [esp], ecx
	call node2_
	mov ebx, eax
	mov dword [esp], 0x0
	call node0
	mov [esp], eax
	call linked_list_end
	mov [esp+0x4], ebx
	mov [esp], eax
	call append_node
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_2260:
	mov dword [esp+0x8], 14
	movzx eax, byte [g_parse_user]
	mov [esp+0x4], eax
	mov edx, [ebp-0x2848]
	mov eax, [edx]
	mov [esp], eax
	call SL_ConvertToLowercase
	mov ecx, [ebp-0x2848]
	mov [ecx], eax
	mov eax, [ecx+0x4]
	mov [esp], eax
	call node_pos
	mov ebx, [ebp-0x2848]
	mov ecx, [ebx]
	mov [esp+0x4], eax
	mov [esp], ecx
	call node2_
	mov edi, [ebx-0x10]
	mov [esp+0x4], eax
	mov [esp], edi
	call append_node
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_2250:
	mov dword [esp], 0x0
	call node0
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_2240:
	mov dword [esp], 0x0
	call node0
	mov ebx, eax
	mov edx, [ebp-0x2848]
	mov eax, [edx+0x4]
	mov [esp], eax
	call node_pos
	mov edi, [ebp-0x2848]
	mov ecx, [edi]
	mov [esp+0x4], eax
	mov [esp], ecx
	call node2_
	mov [esp+0x4], ebx
	mov [esp], eax
	call prepend_node
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_2230:
	mov ecx, [ebp-0x2848]
	mov ecx, [ecx-0x10]
	mov [ebp-0x285c], ecx
	mov ebx, [ebp-0x2848]
	mov eax, [ebx+0x4]
	mov [esp], eax
	call node_pos
	mov ecx, [ebx]
	mov [esp+0x4], eax
	mov [esp], ecx
	call node2_
	mov edi, [ebp-0x285c]
	mov [esp+0x4], edi
	mov [esp], eax
	call prepend_node
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_2220:
	mov dword [esp], 0x0
	call node0
	mov [esp], eax
	call linked_list_end
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_2210:
	mov eax, [ebp-0x2848]
	mov ecx, [eax]
	mov edx, [eax-0x8]
	mov [esp+0x4], ecx
	mov [esp], edx
	call append_node
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_2200:
	mov ebx, [g_dummyVal]
	mov edi, [ebp-0x2848]
	mov eax, [edi-0x4]
	mov [esp], eax
	call node_pos
	mov [esp+0x8], ebx
	mov [esp+0x4], eax
	mov dword [esp], 0x3e
	call node2
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_2190:
	mov ebx, [g_dummyVal]
	mov edx, [ebp-0x2848]
	mov eax, [edx-0xc]
	mov [esp], eax
	call node_pos
	mov ecx, [ebp-0x2848]
	mov ecx, [ecx-0x8]
	mov [esp+0xc], ebx
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov dword [esp], 0x3d
	call node3
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_2180:
	mov dword [esp], 0x0
	call node0
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_2400:
	mov dword [esp], 0x0
	call node0
	mov [esp], eax
	call linked_list_end
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_2390:
	mov ebx, [ebp-0x2848]
	mov ecx, [ebx]
	mov edi, [ebx-0x8]
	mov [esp+0x4], ecx
	mov [esp], edi
	call append_node
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_2380:
	mov ecx, [ebp-0x2848]
	mov eax, [ecx+0x4]
	mov [esp], eax
	call node_pos
	mov [esp+0x4], eax
	mov dword [esp], 0x46
	call node1
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_2370:
	mov edx, [ebp-0x2848]
	mov eax, [edx+0x4]
	mov [esp], eax
	call node_pos
	mov [esp+0x4], eax
	mov dword [esp], 0x45
	call node1
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_2360:
	mov edx, [ebp-0x2848]
	mov eax, [edx-0xc]
	mov [esp], eax
	call node_pos
	mov ebx, eax
	mov ecx, [ebp-0x2848]
	mov eax, [ecx-0x1c]
	mov [esp], eax
	call node_pos
	mov edi, [ebp-0x2848]
	mov edi, [edi-0x10]
	mov [esp+0xc], ebx
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov dword [esp], 0x47
	call node3
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_2350:
	mov esi, [ebp-0x2848]
	sub esi, 0x30
	mov dword [esp+0x8], 14
	movzx eax, byte [g_parse_user]
	mov [esp+0x4], eax
	mov edx, [ebp-0x2848]
	mov eax, [edx-0x30]
	mov [esp], eax
	call SL_ConvertToLowercase
	mov ecx, [ebp-0x2848]
	mov [ecx-0x30], eax
	mov edi, [g_dummyVal]
	mov eax, [ecx+0x4]
	mov [esp], eax
	call node_pos
	mov ebx, eax
	mov eax, [esi+0x4]
	mov [esp], eax
	call node_pos
	mov edx, [ebp-0x2848]
	mov edx, [edx-0x8]
	mov [ebp-0x2860], edx
	mov ecx, [ebp-0x2848]
	mov ecx, [ecx-0x20]
	mov [ebp-0x2858], ecx
	mov ecx, [ebp-0x2848]
	mov edx, [ecx-0x30]
	mov [esp+0x18], edi
	mov [esp+0x14], ebx
	mov [esp+0x10], eax
	mov ebx, [ebp-0x2860]
	mov [esp+0xc], ebx
	mov edi, [ebp-0x2858]
	mov [esp+0x8], edi
	mov [esp+0x4], edx
	mov dword [esp], 0x44
	call node6
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_2340:
	mov dword [esp], 0x0
	call node0
	mov ebx, eax
	mov edi, [ebp-0x2848]
	mov eax, [edi+0x4]
	mov [esp], eax
	call node_pos
	mov ecx, [edi]
	mov [esp+0x4], eax
	mov [esp], ecx
	call node2_
	mov [esp+0x4], ebx
	mov [esp], eax
	call prepend_node
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_2330:
	mov edi, [ebp-0x2848]
	mov edi, [edi-0x10]
	mov edx, [ebp-0x2848]
	mov eax, [edx+0x4]
	mov [esp], eax
	call node_pos
	mov ebx, [ebp-0x2848]
	mov ecx, [ebx]
	mov [esp+0x4], eax
	mov [esp], ecx
	call node2_
	mov [esp+0x4], edi
	mov [esp], eax
	call prepend_node
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_2420:
	mov edi, [ebp-0x2848]
	mov edi, [edi-0x8]
	mov eax, [ebp-0x2848]
	mov eax, [eax-0x10]
	mov [esp+0x4], edi
	mov [esp], eax
	call append_node
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_2410:
	mov edx, [ebp-0x2848]
	mov eax, [edx-0x4]
	mov [esp], eax
	call node_pos
	mov ebx, [ebp-0x2848]
	mov ecx, [ebx]
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov dword [esp], 0x56
	call node2
	mov [ebp-0x280c], eax
	mov eax, gScrCompilePub
	add dword [eax+0x4], 0x1
	mov ebx, [ebp-0x280c]
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_1170:
	mov edi, [ebp-0x2848]
	mov ecx, [edi]
	mov eax, [edi-0x8]
	mov [esp+0x4], ecx
	mov [esp], eax
	call node2_
	mov [yaccResult], eax
	mov ebx, [ebp-0x280c]
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_1210:
	mov edx, [ebp-0x2848]
	mov eax, [edx+0x4]
	mov [esp], eax
	call node_pos
	mov ebx, [ebp-0x2848]
	mov ecx, [ebx]
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov dword [esp], 0x6
	call node2
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_1200:
	mov edi, [ebp-0x2848]
	mov ecx, [edi]
	mov [esp+0x4], ecx
	mov dword [esp], 0x53
	call node1
	mov [yaccResult], eax
	mov ebx, [ebp-0x280c]
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_1190:
	mov ebx, [ebp-0x2848]
	mov ecx, [ebx]
	mov [esp+0x4], ecx
	mov dword [esp], 0x53
	call node1
	mov [yaccResult], eax
	mov ebx, [ebp-0x280c]
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_1180:
	mov edx, [ebp-0x2848]
	mov ecx, [edx]
	mov [esp+0x4], ecx
	mov dword [esp], 0x41
	call node1
	mov [yaccResult], eax
	mov ebx, [ebp-0x280c]
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_1270:
	mov esi, [ebp-0x2848]
	sub esi, 0x8
	mov eax, [esi+0x4]
	mov [esp], eax
	call node_pos
	mov ebx, eax
	mov dword [esp], 0x69
	call node1_
	mov edi, [ebp-0x2848]
	mov ecx, [edi]
	mov edx, [edi-0x10]
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	mov [esp+0x8], ecx
	mov [esp+0x4], edx
	mov dword [esp], 0x31
	call node4
	mov [ebp-0x280c], eax
	mov esi, [esi+0x4]
	mov [ebp-0x2810], esi
	mov ebx, eax
	mov edi, esi
	jmp yyparse_420
yyparse_1260:
	mov esi, [ebp-0x2848]
	sub esi, 0x8
	mov eax, [esi+0x4]
	mov [esp], eax
	call node_pos
	mov ebx, eax
	mov dword [esp], 0x68
	call node1_
	mov edi, [ebp-0x2848]
	mov ecx, [edi]
	mov edx, [edi-0x10]
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	mov [esp+0x8], ecx
	mov [esp+0x4], edx
	mov dword [esp], 0x31
	call node4
	mov [ebp-0x280c], eax
	mov esi, [esi+0x4]
	mov [ebp-0x2810], esi
	mov ebx, eax
	mov edi, esi
	jmp yyparse_420
yyparse_1250:
	mov esi, [ebp-0x2848]
	sub esi, 0x8
	mov eax, [esi+0x4]
	mov [esp], eax
	call node_pos
	mov ebx, eax
	mov dword [esp], 0x67
	call node1_
	mov edi, [ebp-0x2848]
	mov ecx, [edi]
	mov edx, [edi-0x10]
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	mov [esp+0x8], ecx
	mov [esp+0x4], edx
	mov dword [esp], 0x31
	call node4
	mov [ebp-0x280c], eax
	mov esi, [esi+0x4]
	mov [ebp-0x2810], esi
	mov ebx, eax
	mov edi, esi
	jmp yyparse_420
yyparse_1240:
	mov esi, [ebp-0x2848]
	sub esi, 0x8
	mov eax, [esi+0x4]
	mov [esp], eax
	call node_pos
	mov ebx, eax
	mov dword [esp], 0x66
	call node1_
	mov edi, [ebp-0x2848]
	mov ecx, [edi]
	mov edx, [edi-0x10]
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	mov [esp+0x8], ecx
	mov [esp+0x4], edx
	mov dword [esp], 0x31
	call node4
	mov [ebp-0x280c], eax
	mov esi, [esi+0x4]
	mov [ebp-0x2810], esi
	mov ebx, eax
	mov edi, esi
	jmp yyparse_420
yyparse_1350:
	mov esi, [ebp-0x2848]
	sub esi, 0x8
	mov eax, [esi+0x4]
	mov [esp], eax
	call node_pos
	mov ebx, eax
	mov dword [esp], 0x71
	call node1_
	mov edi, [ebp-0x2848]
	mov ecx, [edi]
	mov edx, [edi-0x10]
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	mov [esp+0x8], ecx
	mov [esp+0x4], edx
	mov dword [esp], 0x31
	call node4
	mov [ebp-0x280c], eax
	mov esi, [esi+0x4]
	mov [ebp-0x2810], esi
	mov ebx, eax
	mov edi, esi
	jmp yyparse_420
yyparse_1340:
	mov esi, [ebp-0x2848]
	sub esi, 0x8
	mov eax, [esi+0x4]
	mov [esp], eax
	call node_pos
	mov ebx, eax
	mov dword [esp], 0x70
	call node1_
	mov edi, [ebp-0x2848]
	mov ecx, [edi]
	mov edx, [edi-0x10]
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	mov [esp+0x8], ecx
	mov [esp+0x4], edx
	mov dword [esp], 0x31
	call node4
	mov [ebp-0x280c], eax
	mov esi, [esi+0x4]
	mov [ebp-0x2810], esi
	mov ebx, eax
	mov edi, esi
	jmp yyparse_420
yyparse_1330:
	mov esi, [ebp-0x2848]
	sub esi, 0x8
	mov eax, [esi+0x4]
	mov [esp], eax
	call node_pos
	mov ebx, eax
	mov dword [esp], 0x6f
	call node1_
	mov edi, [ebp-0x2848]
	mov ecx, [edi]
	mov edx, [edi-0x10]
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	mov [esp+0x8], ecx
	mov [esp+0x4], edx
	mov dword [esp], 0x31
	call node4
	mov [ebp-0x280c], eax
	mov esi, [esi+0x4]
	mov [ebp-0x2810], esi
	mov ebx, eax
	mov edi, esi
	jmp yyparse_420
yyparse_1320:
	mov esi, [ebp-0x2848]
	sub esi, 0x8
	mov eax, [esi+0x4]
	mov [esp], eax
	call node_pos
	mov ebx, eax
	mov dword [esp], 0x6e
	call node1_
	mov edi, [ebp-0x2848]
	mov ecx, [edi]
	mov edx, [edi-0x10]
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	mov [esp+0x8], ecx
	mov [esp+0x4], edx
	mov dword [esp], 0x31
	call node4
	mov [ebp-0x280c], eax
	mov esi, [esi+0x4]
	mov [ebp-0x2810], esi
	mov ebx, eax
	mov edi, esi
	jmp yyparse_420
yyparse_1310:
	mov esi, [ebp-0x2848]
	sub esi, 0x8
	mov eax, [esi+0x4]
	mov [esp], eax
	call node_pos
	mov ebx, eax
	mov dword [esp], 0x6d
	call node1_
	mov edi, [ebp-0x2848]
	mov ecx, [edi]
	mov edx, [edi-0x10]
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	mov [esp+0x8], ecx
	mov [esp+0x4], edx
	mov dword [esp], 0x31
	call node4
	mov [ebp-0x280c], eax
	mov esi, [esi+0x4]
	mov [ebp-0x2810], esi
	mov ebx, eax
	mov edi, esi
	jmp yyparse_420
yyparse_1300:
	mov esi, [ebp-0x2848]
	sub esi, 0x8
	mov eax, [esi+0x4]
	mov [esp], eax
	call node_pos
	mov ebx, eax
	mov dword [esp], 0x6c
	call node1_
	mov edi, [ebp-0x2848]
	mov ecx, [edi]
	mov edx, [edi-0x10]
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	mov [esp+0x8], ecx
	mov [esp+0x4], edx
	mov dword [esp], 0x31
	call node4
	mov [ebp-0x280c], eax
	mov esi, [esi+0x4]
	mov [ebp-0x2810], esi
	mov ebx, eax
	mov edi, esi
	jmp yyparse_420
yyparse_1290:
	mov esi, [ebp-0x2848]
	sub esi, 0x8
	mov eax, [esi+0x4]
	mov [esp], eax
	call node_pos
	mov ebx, eax
	mov dword [esp], 0x6b
	call node1_
	mov edi, [ebp-0x2848]
	mov ecx, [edi]
	mov edx, [edi-0x10]
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	mov [esp+0x8], ecx
	mov [esp+0x4], edx
	mov dword [esp], 0x31
	call node4
	mov [ebp-0x280c], eax
	mov esi, [esi+0x4]
	mov [ebp-0x2810], esi
	mov ebx, eax
	mov edi, esi
	jmp yyparse_420
yyparse_1280:
	mov esi, [ebp-0x2848]
	sub esi, 0x8
	mov eax, [esi+0x4]
	mov [esp], eax
	call node_pos
	mov ebx, eax
	mov dword [esp], 0x6a
	call node1_
	mov edi, [ebp-0x2848]
	mov ecx, [edi]
	mov edx, [edi-0x10]
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	mov [esp+0x8], ecx
	mov [esp+0x4], edx
	mov dword [esp], 0x31
	call node4
	mov [ebp-0x280c], eax
	mov esi, [esi+0x4]
	mov [ebp-0x2810], esi
	mov ebx, eax
	mov edi, esi
	jmp yyparse_420
yyparse_1510:
	mov edx, [ebp-0x2848]
	mov eax, [edx-0xc]
	mov [esp], eax
	call node_pos
	mov ecx, [ebp-0x2848]
	mov ecx, [ecx-0x10]
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov dword [esp], 0x16
	call node2
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_1500:
	mov edi, [ebp-0x2848]
	mov eax, [edi+0x4]
	mov [esp], eax
	call node_pos
	mov ecx, [edi]
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov dword [esp], 0x12
	call node2
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_1490:
	mov dword [esp+0x8], 14
	movzx eax, byte [g_parse_user]
	mov [esp+0x4], eax
	mov ebx, [ebp-0x2848]
	mov eax, [ebx]
	mov [esp], eax
	call SL_ConvertToLowercase
	mov [ebx], eax
	mov eax, [ebx-0x4]
	mov [esp], eax
	call node_pos
	mov ecx, [ebx]
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov dword [esp], 0x14
	call node2
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_1480:
	mov dword [esp+0x8], 14
	movzx eax, byte [g_parse_user]
	mov [esp+0x4], eax
	mov edi, [ebp-0x2848]
	mov eax, [edi]
	mov [esp], eax
	call SL_ConvertToLowercase
	mov [edi], eax
	mov eax, [edi-0xc]
	mov [esp], eax
	call node_pos
	mov ecx, [edi]
	mov edx, [edi-0x10]
	mov [esp+0xc], eax
	mov [esp+0x8], ecx
	mov [esp+0x4], edx
	mov dword [esp], 0x15
	call node3
	mov [ebp-0x280c], eax
	mov ecx, [edi-0x4]
	mov [ebp-0x2810], ecx
	mov eax, gScrCompilePub
	add dword [eax+0x4], 0x1
	mov ebx, [ebp-0x280c]
	mov edi, ecx
	jmp yyparse_420
yyparse_1470:
	mov dword [esp+0x8], 14
	movzx eax, byte [g_parse_user]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x2848]
	mov eax, [ecx]
	mov [esp], eax
	call SL_ConvertToLowercase
	mov ebx, [ebp-0x2848]
	mov [ebx], eax
	mov eax, [ebx+0x4]
	mov [esp], eax
	call node_pos
	mov ecx, [ebx]
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov dword [esp], 0x14
	call node2
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_1460:
	mov dword [esp+0x8], 14
	movzx eax, byte [g_parse_user]
	mov [esp+0x4], eax
	mov edi, [ebp-0x2848]
	mov eax, [edi]
	mov [esp], eax
	call SL_ConvertToLowercase
	mov [edi], eax
	mov eax, [edi-0xc]
	mov [esp], eax
	call node_pos
	mov ecx, [edi]
	mov edx, [edi-0x10]
	mov [esp+0xc], eax
	mov [esp+0x8], ecx
	mov [esp+0x4], edx
	mov dword [esp], 0x15
	call node3
	mov [ebp-0x280c], eax
	mov eax, gScrCompilePub
	add dword [eax+0x4], 0x1
	mov ebx, [ebp-0x280c]
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_1450:
	mov dword [esp+0x8], 14
	movzx eax, byte [g_parse_user]
	mov [esp+0x4], eax
	mov ebx, [ebp-0x2848]
	mov eax, [ebx]
	mov [esp], eax
	call SL_ConvertToLowercase
	mov [ebx], eax
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_1440:
	mov dword [esp+0x8], 14
	movzx eax, byte [g_parse_user]
	mov [esp+0x4], eax
	mov edx, [ebp-0x2848]
	mov eax, [edx]
	mov [esp], eax
	call SL_ConvertToLowercase
	mov ecx, [ebp-0x2848]
	mov [ecx], eax
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_1430:
	mov dword [esp], 0x0
	call node0
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_1420:
	mov eax, [ebp-0x2848]
	mov ecx, [eax]
	mov [esp+0x4], ecx
	mov dword [esp], 0x41
	call node1
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_1410:
	mov edi, [ebp-0x2848]
	mov eax, [edi+0x4]
	mov [esp], eax
	call node_pos
	mov ecx, [edi]
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov dword [esp], 0x33
	call node2
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_1400:
	mov ecx, [ebp-0x2848]
	mov eax, [ecx+0x4]
	mov [esp], eax
	call node_pos
	mov ebx, [ebp-0x2848]
	mov ecx, [ebx]
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov dword [esp], 0x32
	call node2
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_1390:
	mov esi, [ebp-0x2848]
	sub esi, 0x8
	mov eax, [esi+0x4]
	mov [esp], eax
	call node_pos
	mov ebx, eax
	mov dword [esp], 0x75
	call node1_
	mov edi, [ebp-0x2848]
	mov ecx, [edi]
	mov edx, [edi-0x10]
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	mov [esp+0x8], ecx
	mov [esp+0x4], edx
	mov dword [esp], 0x31
	call node4
	mov [ebp-0x280c], eax
	mov esi, [esi+0x4]
	mov [ebp-0x2810], esi
	mov ebx, eax
	mov edi, esi
	jmp yyparse_420
yyparse_1380:
	mov esi, [ebp-0x2848]
	sub esi, 0x8
	mov eax, [esi+0x4]
	mov [esp], eax
	call node_pos
	mov ebx, eax
	mov dword [esp], 0x74
	call node1_
	mov edi, [ebp-0x2848]
	mov ecx, [edi]
	mov edx, [edi-0x10]
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	mov [esp+0x8], ecx
	mov [esp+0x4], edx
	mov dword [esp], 0x31
	call node4
	mov [ebp-0x280c], eax
	mov esi, [esi+0x4]
	mov [ebp-0x2810], esi
	mov ebx, eax
	mov edi, esi
	jmp yyparse_420
yyparse_1370:
	mov esi, [ebp-0x2848]
	sub esi, 0x8
	mov eax, [esi+0x4]
	mov [esp], eax
	call node_pos
	mov ebx, eax
	mov dword [esp], 0x73
	call node1_
	mov edi, [ebp-0x2848]
	mov ecx, [edi]
	mov edx, [edi-0x10]
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	mov [esp+0x8], ecx
	mov [esp+0x4], edx
	mov dword [esp], 0x31
	call node4
	mov [ebp-0x280c], eax
	mov esi, [esi+0x4]
	mov [ebp-0x2810], esi
	mov ebx, eax
	mov edi, esi
	jmp yyparse_420
yyparse_1360:
	mov esi, [ebp-0x2848]
	sub esi, 0x8
	mov eax, [esi+0x4]
	mov [esp], eax
	call node_pos
	mov ebx, eax
	mov dword [esp], 0x72
	call node1_
	mov edi, [ebp-0x2848]
	mov ecx, [edi]
	mov edx, [edi-0x10]
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	mov [esp+0x8], ecx
	mov [esp+0x4], edx
	mov dword [esp], 0x31
	call node4
	mov [ebp-0x280c], eax
	mov esi, [esi+0x4]
	mov [ebp-0x2810], esi
	mov ebx, eax
	mov edi, esi
	jmp yyparse_420
yyparse_1830:
	mov ebx, [ebp-0x2848]
	mov eax, [ebx+0x4]
	mov [esp], eax
	call node_pos
	mov ebx, eax
	mov edi, [ebp-0x2848]
	mov eax, [edi-0x4]
	mov [esp], eax
	call node_pos
	mov ecx, [edi]
	mov edx, [edi-0x10]
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	mov [esp+0x8], ecx
	mov [esp+0x4], edx
	mov dword [esp], 0x2
	call node4
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_1820:
	mov edi, [ebp-0x2848]
	mov eax, [edi-0xc]
	mov [esp], eax
	call node_pos
	mov edx, [edi-0x10]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x35
	call node2
	mov [ebp-0x280c], eax
	mov ecx, [edi+0x4]
	mov [ebp-0x2810], ecx
	mov ebx, eax
	mov edi, ecx
	jmp yyparse_420
yyparse_1810:
	mov dword [esp+0x8], 14
	movzx eax, byte [g_parse_user]
	mov [esp+0x4], eax
	mov edx, [ebp-0x2848]
	mov eax, [edx]
	mov [esp], eax
	call SL_ConvertToLowercase
	mov ecx, [ebp-0x2848]
	mov [ecx], eax
	mov eax, [ecx-0x4]
	mov [esp], eax
	call node_pos
	mov ebx, [ebp-0x2848]
	mov ecx, [ebx]
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov dword [esp], 0x50
	call node2
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_1800:
	mov dword [esp+0x8], 14
	movzx eax, byte [g_parse_user]
	mov [esp+0x4], eax
	mov edi, [ebp-0x2848]
	mov eax, [edi]
	mov [esp], eax
	call SL_ConvertToLowercase
	mov [edi], eax
	mov eax, [edi+0x4]
	mov [esp], eax
	call node_pos
	mov ecx, [edi]
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov dword [esp], 0x4
	call node2
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_1790:
	mov edx, [ebp-0x2848]
	mov eax, [edx-0x4]
	mov [esp], eax
	call node_pos
	mov ebx, eax
	mov ecx, [ebp-0x2848]
	mov eax, [ecx-0x14]
	mov [esp], eax
	call node_pos
	mov edi, [ebp-0x2848]
	mov edi, [edi-0x8]
	mov ecx, [ebp-0x2848]
	mov edx, [ecx-0x18]
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	mov [esp+0x4], edx
	mov dword [esp], 0xd
	call node4
	mov [ebp-0x280c], eax
	mov ebx, [ebp-0x2848]
	mov ebx, [ebx-0xc]
	mov [ebp-0x2810], ebx
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_1780:
	mov dword [esp+0x8], 14
	movzx eax, byte [g_parse_user]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x2848]
	mov eax, [ecx]
	mov [esp], eax
	call SL_ConvertToLowercase
	mov ebx, [ebp-0x2848]
	mov [ebx], eax
	mov eax, [ebx-0xc]
	mov [esp], eax
	call node_pos
	mov ecx, [ebx]
	mov edi, [ebx-0x10]
	mov [esp+0xc], eax
	mov [esp+0x8], ecx
	mov [esp+0x4], edi
	mov dword [esp], 0xf
	call node3
	mov [ebp-0x280c], eax
	mov eax, [ebx+0x4]
	mov [ebp-0x2810], eax
	mov ebx, [ebp-0x280c]
	mov edi, eax
	jmp yyparse_420
yyparse_1770:
	mov ebx, [ebp-0x2848]
	mov eax, [ebx-0x14]
	mov [esp], eax
	call node_pos
	mov edi, [ebx-0x8]
	mov edx, [ebx-0x20]
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	mov [esp+0x4], edx
	mov dword [esp], 0x4b
	call node3
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_1760:
	mov ecx, [ebp-0x2848]
	mov eax, [ecx+0x4]
	mov [esp], eax
	call node_pos
	mov [esp+0x4], eax
	mov dword [esp], 0x4a
	call node1
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_1750:
	mov edx, [ebp-0x2848]
	mov eax, [edx+0x4]
	mov [esp], eax
	call node_pos
	mov [esp+0x4], eax
	mov dword [esp], 0x49
	call node1
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_1740:
	mov edi, [ebp-0x2848]
	mov eax, [edi+0x4]
	mov [esp], eax
	call node_pos
	mov [esp+0x4], eax
	mov dword [esp], 0x48
	call node1
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_1730:
	mov dword [esp+0x8], 14
	movzx eax, byte [g_parse_user]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x2848]
	mov eax, [ecx]
	mov [esp], eax
	call SL_ConvertToLowercase
	mov ebx, [ebp-0x2848]
	mov [ebx], eax
	mov eax, [ebx+0x4]
	mov [esp], eax
	call node_pos
	mov ecx, [ebx]
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov dword [esp], 0x43
	call node2
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_1720:
	mov edx, [ebp-0x2848]
	mov eax, [edx-0x4]
	mov [esp], eax
	call node_pos
	mov [esp+0x4], eax
	mov dword [esp], 0x42
	call node1
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_1710:
	mov edi, [ebp-0x2848]
	mov eax, [edi+0x4]
	mov [esp], eax
	call node_pos
	mov ecx, [edi]
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov dword [esp], 0x12
	call node2
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_1700:
	mov edx, [ebp-0x2848]
	mov eax, [edx-0x4]
	mov [esp], eax
	call node_pos
	mov ecx, [ebp-0x2848]
	mov ecx, [ecx-0x8]
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov dword [esp], 0x34
	call node2
	mov [ebp-0x280c], eax
	mov ebx, [ebp-0x2848]
	mov ebx, [ebx+0x4]
	mov [ebp-0x2810], ebx
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_1690:
	mov edi, [ebp-0x2848]
	mov eax, [edi+0x4]
	mov [esp], eax
	call node_pos
	mov [esp+0x4], eax
	mov dword [esp], 0x24
	call node1
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_1680:
	mov ebx, [ebp-0x2848]
	mov eax, [ebx+0x4]
	mov [esp], eax
	call node_pos
	mov [esp+0x4], eax
	mov dword [esp], 0x23
	call node1
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_1670:
	mov ecx, [ebp-0x2848]
	mov eax, [ecx+0x4]
	mov [esp], eax
	call node_pos
	mov [esp+0x4], eax
	mov dword [esp], 0x22
	call node1
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_1660:
	mov edx, [ebp-0x2848]
	mov eax, [edx+0x4]
	mov [esp], eax
	call node_pos
	mov [esp+0x4], eax
	mov dword [esp], 0x20
	call node1
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_1650:
	mov edi, [ebp-0x2848]
	mov eax, [edi+0x4]
	mov [esp], eax
	call node_pos
	mov [esp+0x4], eax
	mov dword [esp], 0x1f
	call node1
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_1640:
	mov edx, [ebp-0x2848]
	mov eax, [edx+0x4]
	mov [esp], eax
	call node_pos
	mov ebx, [ebp-0x2848]
	mov ecx, [ebx]
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov dword [esp], 0x11
	call node2
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_1630:
	mov eax, [ebp-0x2848]
	mov ecx, [eax]
	mov [esp+0x4], ecx
	mov dword [esp], 0x13
	call node1
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_1620:
	mov edi, [ebp-0x2848]
	mov eax, [edi+0x4]
	mov [esp], eax
	call node_pos
	mov ecx, [edi]
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov dword [esp], 0xc
	call node2
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_1610:
	mov edx, [ebp-0x2848]
	mov eax, [edx+0x4]
	mov [esp], eax
	call node_pos
	mov ebx, [ebp-0x2848]
	mov ecx, [ebx]
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov dword [esp], 0xb
	call node2
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_1600:
	mov edi, [ebp-0x2848]
	mov eax, [edi-0x4]
	mov [esp], eax
	call node_pos
	mov ecx, [edi]
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov dword [esp], 0xa
	call node2
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_1590:
	mov edx, [ebp-0x2848]
	mov eax, [edx-0x4]
	mov [esp], eax
	call node_pos
	mov ebx, [ebp-0x2848]
	mov ecx, [ebx]
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov dword [esp], 0x9
	call node2
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_1580:
	mov edi, [ebp-0x2848]
	mov eax, [edi+0x4]
	mov [esp], eax
	call node_pos
	mov ecx, [edi]
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov dword [esp], 0x8
	call node2
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_1570:
	mov ecx, [ebp-0x2848]
	mov eax, [ecx+0x4]
	mov [esp], eax
	call node_pos
	mov ebx, [ebp-0x2848]
	mov ecx, [ebx]
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov dword [esp], 0x7
	call node2
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_1560:
	mov edi, [ebp-0x2848]
	mov eax, [edi-0xc]
	mov [esp], eax
	call node_pos
	mov edx, [edi-0x8]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x2e
	call node2
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_1550:
	mov esi, [ebp-0x2848]
	sub esi, 0x10
	mov eax, [esi+0x4]
	mov [esp], eax
	call node_pos
	mov ebx, eax
	mov edx, [ebp-0x2848]
	mov eax, [edx-0x1c]
	mov [esp], eax
	call node_pos
	mov ecx, [ebp-0x2848]
	mov ecx, [ecx-0x8]
	mov [ebp-0x2860], ecx
	mov edi, [ebp-0x2848]
	mov edx, [edi-0x18]
	mov ecx, [edi-0x20]
	mov [esp+0x14], ebx
	mov [esp+0x10], eax
	mov ebx, [ebp-0x2860]
	mov [esp+0xc], ebx
	mov [esp+0x8], edx
	mov [esp+0x4], ecx
	mov dword [esp], 0x18
	call node5
	mov [ebp-0x280c], eax
	mov esi, [esi+0x4]
	mov [ebp-0x2810], esi
	mov ebx, eax
	mov edi, esi
	jmp yyparse_420
yyparse_1540:
	mov ebx, [ebp-0x2848]
	sub ebx, 0x10
	mov eax, [ebx+0x4]
	mov [esp], eax
	call node_pos
	mov edx, [ebp-0x2848]
	mov edx, [edx-0x8]
	mov [ebp-0x2860], edx
	mov ecx, [ebp-0x2848]
	mov edx, [ecx-0x18]
	mov [esp+0xc], eax
	mov edi, [ebp-0x2860]
	mov [esp+0x8], edi
	mov [esp+0x4], edx
	mov dword [esp], 0x17
	call node3
	mov [ebp-0x280c], eax
	mov ebx, [ebx+0x4]
	mov [ebp-0x2810], ebx
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_1530:
	mov edi, [ebp-0x2848]
	mov eax, [edi+0x4]
	mov [esp], eax
	call node_pos
	mov ebx, eax
	mov eax, [edi-0x4]
	mov [esp], eax
	call node_pos
	mov ecx, [edi]
	mov [esp+0xc], ebx
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov dword [esp], 0x1e
	call node3
	mov [ebp-0x280c], eax
	mov eax, [edi+0x4]
	mov [ebp-0x2810], eax
	mov ebx, [ebp-0x280c]
	mov edi, eax
	jmp yyparse_420
yyparse_1520:
	mov ebx, [ebp-0x2848]
	mov eax, [ebx+0x4]
	mov [esp], eax
	call node_pos
	mov ecx, [ebx]
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov dword [esp], 0x1a
	call node2
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_2740:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x11d
	jmp yyparse_440
yyparse_2730:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x11c
	jmp yyparse_440
yyparse_2720:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x11b
	jmp yyparse_440
yyparse_2710:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x11a
	jmp yyparse_440
yyparse_2700:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x119
	jmp yyparse_440
yyparse_2690:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x118
	jmp yyparse_440
yyparse_2680:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x117
	jmp yyparse_440
yyparse_2670:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x116
	jmp yyparse_440
yyparse_2660:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x115
	jmp yyparse_440
yyparse_2650:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x114
	jmp yyparse_440
yyparse_2640:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x113
	jmp yyparse_440
yyparse_2630:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x112
	jmp yyparse_440
yyparse_2620:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x111
	jmp yyparse_440
yyparse_2610:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x110
	jmp yyparse_440
yyparse_2600:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x10f
	jmp yyparse_440
yyparse_2590:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x10e
	jmp yyparse_440
yyparse_2580:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x10d
	jmp yyparse_440
yyparse_2570:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x10c
	jmp yyparse_440
yyparse_2560:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x10b
	jmp yyparse_440
yyparse_2550:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x10a
	jmp yyparse_440
yyparse_2540:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x109
	jmp yyparse_440
yyparse_2530:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x108
	jmp yyparse_440
yyparse_2520:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x107
	jmp yyparse_440
yyparse_2510:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x106
	jmp yyparse_440
yyparse_2500:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov eax, 0x105
	jmp yyparse_440
yyparse_2490:
	mov ecx, [g_out_pos]
	mov [yylval+0x4], ecx
	mov [g_sourcePos], ecx
	mov edx, [yyleng]
	lea eax, [ecx+edx]
	mov [g_out_pos], eax
	sub edx, 0x3
	mov ebx, [yytext]
	add ebx, 0x2
	cmp edx, 0x1fff
	jg yyparse_510
	test edx, edx
	jnz yyparse_520
	lea esi, [ebp-0x27e8]
	mov eax, esi
yyparse_690:
	mov byte [eax], 0x0
	mov dword [esp+0x8], 14
	movzx eax, byte [g_parse_user]
	mov [esp+0x4], eax
	mov [esp], esi
	call SL_GetString_
	mov [yylval], eax
	mov eax, 0x104
	jmp yyparse_440
yyparse_2480:
	mov ecx, [g_out_pos]
	mov [yylval+0x4], ecx
	mov [g_sourcePos], ecx
	mov edx, [yyleng]
	lea eax, [ecx+edx]
	mov [g_out_pos], eax
	sub edx, 0x2
	mov ebx, [yytext]
	add ebx, 0x1
	cmp edx, 0x1fff
	jg yyparse_510
	test edx, edx
	jnz yyparse_530
	lea esi, [ebp-0x27e8]
	mov eax, esi
yyparse_610:
	mov byte [eax], 0x0
	mov dword [esp+0x8], 14
	movzx eax, byte [g_parse_user]
	mov [esp+0x4], eax
	mov [esp], esi
	call SL_GetString_
	mov [yylval], eax
	mov eax, 0x103
	jmp yyparse_440
yyparse_2470:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov dword [yy_start], 0x5
	jmp yyparse_290
yyparse_2460:
	mov eax, [g_out_pos]
	mov [yylval+0x4], eax
	mov [g_sourcePos], eax
	add eax, [yyleng]
	mov [g_out_pos], eax
	mov dword [yy_start], 0x3
	jmp yyparse_290
yyparse_2440:
	movzx eax, byte [yy_hold_char]
	mov [edi], al
	mov edi, [yy_last_accepting_cpos]
	mov edx, [yy_last_accepting_state]
yyparse_760:
	mov ecx, edx
	jmp yyparse_540
yyparse_2170:
	mov ebx, [g_dummyVal]
	mov ecx, [ebp-0x2848]
	mov eax, [ecx-0xc]
	mov [esp], eax
	call node_pos
	mov edi, [ebp-0x2848]
	mov edi, [edi-0x8]
	mov [esp+0xc], ebx
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov dword [esp], 0x2d
	call node3
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_2160:
	mov ebx, [ebp-0x2848]
	mov eax, [ebx-0x1c]
	mov [esp], eax
	call node_pos
	mov edi, [ebx-0x8]
	mov edx, [ebx-0x20]
	mov [esp+0xc], eax
	mov [esp+0x8], edi
	mov [esp+0x4], edx
	mov dword [esp], 0x3c
	call node3
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_2150:
	mov ebx, [g_dummyVal]
	mov ecx, [ebp-0x2848]
	mov eax, [ecx-0x34]
	mov [esp], eax
	call node_pos
	mov esi, eax
	mov edi, [ebp-0x2848]
	mov eax, [edi-0x1c]
	mov [esp], eax
	call node_pos
	mov ecx, [edi]
	mov edx, [edi-0x10]
	mov [ebp-0x285c], edx
	mov edi, [edi-0x20]
	mov [ebp-0x2858], edi
	mov edi, [ebp-0x2848]
	mov edx, [edi-0x28]
	mov [esp+0x20], ebx
	mov [esp+0x1c], ebx
	mov [esp+0x18], esi
	mov [esp+0x14], eax
	mov [esp+0x10], ecx
	mov eax, [ebp-0x285c]
	mov [esp+0xc], eax
	mov ecx, [ebp-0x2858]
	mov [esp+0x8], ecx
	mov [esp+0x4], edx
	mov dword [esp], 0x28
	call node8
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_2140:
	mov esi, [g_dummyVal]
	mov edx, [ebp-0x2848]
	mov eax, [edx-0x1c]
	mov [esp], eax
	call node_pos
	mov ebx, eax
	mov ecx, [ebp-0x2848]
	mov eax, [ecx-0xc]
	mov [esp], eax
	call node_pos
	mov edi, [ebp-0x2848]
	mov ecx, [edi]
	mov edx, [edi-0x10]
	mov [esp+0x14], esi
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	mov [esp+0x8], ecx
	mov [esp+0x4], edx
	mov dword [esp], 0x27
	call node5
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_2130:
	mov ebx, [g_dummyVal]
	mov ecx, [ebp-0x2848]
	mov eax, [ecx-0x4]
	mov [esp], eax
	call node_pos
	mov esi, eax
	mov edi, [ebp-0x2848]
	mov eax, [edi-0x1c]
	mov [esp], eax
	call node_pos
	mov ecx, [edi]
	mov edx, [edi-0x10]
	mov edi, [edi-0x20]
	mov [esp+0x1c], ebx
	mov [esp+0x18], ebx
	mov [esp+0x14], esi
	mov [esp+0x10], eax
	mov [esp+0xc], ecx
	mov [esp+0x8], edx
	mov [esp+0x4], edi
	mov dword [esp], 0x26
	call node7
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_2120:
	mov ebx, [g_dummyVal]
	mov ecx, [ebp-0x2848]
	mov eax, [ecx-0xc]
	mov [esp], eax
	call node_pos
	mov edi, [ebp-0x2848]
	mov ecx, [edi]
	mov edx, [edi-0x10]
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	mov [esp+0x8], ecx
	mov [esp+0x4], edx
	mov dword [esp], 0x25
	call node4
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_2110:
	mov edi, [ebp-0x2848]
	mov eax, [edi+0x4]
	mov [esp], eax
	call node_pos
	mov ebx, eax
	mov eax, [edi-0xc]
	mov [esp], eax
	call node_pos
	mov edx, [edi-0x8]
	mov [esp+0xc], ebx
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x2c
	call node3
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_2100:
	mov dword [esp], 0x0
	call node0
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_2090:
	mov ebx, [ebp-0x2848]
	mov ecx, [ebx]
	mov [esp+0x4], ecx
	mov dword [esp], 0x19
	call node1
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_2080:
	mov edi, [ebp-0x2848]
	mov eax, [edi-0x14]
	mov [esp], eax
	call node_pos
	mov edx, [edi-0x8]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov dword [esp], 0x4e
	call node2
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_2070:
	mov ecx, [ebp-0x2848]
	mov eax, [ecx-0x14]
	mov [esp], eax
	call node_pos
	mov ebx, [ebp-0x2848]
	mov ebx, [ebx-0x8]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov dword [esp], 0x4d
	call node2
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_2060:
	mov edx, [ebp-0x2848]
	mov eax, [edx+0x4]
	mov [esp], eax
	call node_pos
	mov [esp+0x4], eax
	mov dword [esp], 0x4c
	call node1
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_2050:
	mov edi, [ebp-0x2848]
	mov eax, [edi+0x4]
	mov [esp], eax
	call node_pos
	mov [esp+0x4], eax
	mov dword [esp], 0x40
	call node1
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_2040:
	mov ebx, [ebp-0x2848]
	mov eax, [ebx+0x4]
	mov [esp], eax
	call node_pos
	mov [esp+0x4], eax
	mov dword [esp], 0x3f
	call node1
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_2030:
	mov ebx, [ebp-0x2848]
	mov eax, [ebx-0x4]
	mov [esp], eax
	call node_pos
	mov ebx, eax
	mov edi, [ebp-0x2848]
	mov eax, [edi-0x1c]
	mov [esp], eax
	call node_pos
	mov edx, [edi-0x8]
	mov ecx, [edi-0x20]
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	mov [esp+0x4], ecx
	mov dword [esp], 0x3b
	call node4
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_2020:
	mov edi, [ebp-0x2848]
	mov eax, [edi-0x14]
	mov [esp], eax
	call node_pos
	mov ebx, eax
	mov eax, [edi-0x1c]
	mov [esp], eax
	call node_pos
	mov edx, [edi-0x8]
	mov ecx, [edi-0x20]
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	mov [esp+0x4], ecx
	mov dword [esp], 0x3a
	call node4
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_2010:
	mov ebx, [ebp-0x2848]
	mov eax, [ebx+0x4]
	mov [esp], eax
	call node_pos
	mov [esp+0x4], eax
	mov dword [esp], 0x39
	call node1
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_2000:
	mov ebx, [ebp-0x2848]
	mov eax, [ebx-0x14]
	mov [esp], eax
	call node_pos
	mov ebx, eax
	mov edi, [ebp-0x2848]
	mov eax, [edi-0x1c]
	mov [esp], eax
	call node_pos
	mov edx, [edi-0x8]
	mov ecx, [edi-0x20]
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	mov [esp+0x4], ecx
	mov dword [esp], 0x38
	call node4
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_1990:
	mov ecx, [ebp-0x2848]
	mov eax, [ecx-0x14]
	mov [esp], eax
	call node_pos
	mov ebx, eax
	mov edi, [ebp-0x2848]
	mov eax, [edi-0x1c]
	mov [esp], eax
	call node_pos
	mov edx, [edi-0x8]
	mov ecx, [edi-0x20]
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	mov [esp+0x4], ecx
	mov dword [esp], 0x37
	call node4
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_1980:
	mov ecx, [ebp-0x2848]
	mov eax, [ecx-0x4]
	mov [esp], eax
	call node_pos
	mov ebx, eax
	mov dword [esp], 0x75
	call node1_
	mov edi, [ebp-0x2848]
	mov ecx, [edi]
	mov edx, [edi-0x10]
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	mov [esp+0x8], ecx
	mov [esp+0x4], edx
	mov dword [esp], 0x2b
	call node4
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_1970:
	mov ecx, [ebp-0x2848]
	mov eax, [ecx-0x4]
	mov [esp], eax
	call node_pos
	mov ebx, eax
	mov dword [esp], 0x74
	call node1_
	mov edi, [ebp-0x2848]
	mov ecx, [edi]
	mov edx, [edi-0x10]
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	mov [esp+0x8], ecx
	mov [esp+0x4], edx
	mov dword [esp], 0x2b
	call node4
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_1960:
	mov ecx, [ebp-0x2848]
	mov eax, [ecx-0x4]
	mov [esp], eax
	call node_pos
	mov ebx, eax
	mov dword [esp], 0x73
	call node1_
	mov edi, [ebp-0x2848]
	mov ecx, [edi]
	mov edx, [edi-0x10]
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	mov [esp+0x8], ecx
	mov [esp+0x4], edx
	mov dword [esp], 0x2b
	call node4
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_1950:
	mov ecx, [ebp-0x2848]
	mov eax, [ecx-0x4]
	mov [esp], eax
	call node_pos
	mov ebx, eax
	mov dword [esp], 0x72
	call node1_
	mov edi, [ebp-0x2848]
	mov ecx, [edi]
	mov edx, [edi-0x10]
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	mov [esp+0x8], ecx
	mov [esp+0x4], edx
	mov dword [esp], 0x2b
	call node4
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_1940:
	mov ecx, [ebp-0x2848]
	mov eax, [ecx-0x4]
	mov [esp], eax
	call node_pos
	mov ebx, eax
	mov dword [esp], 0x71
	call node1_
	mov edi, [ebp-0x2848]
	mov ecx, [edi]
	mov edx, [edi-0x10]
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	mov [esp+0x8], ecx
	mov [esp+0x4], edx
	mov dword [esp], 0x2b
	call node4
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_1930:
	mov ecx, [ebp-0x2848]
	mov eax, [ecx-0x4]
	mov [esp], eax
	call node_pos
	mov ebx, eax
	mov dword [esp], 0x70
	call node1_
	mov edi, [ebp-0x2848]
	mov ecx, [edi]
	mov edx, [edi-0x10]
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	mov [esp+0x8], ecx
	mov [esp+0x4], edx
	mov dword [esp], 0x2b
	call node4
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_1920:
	mov ecx, [ebp-0x2848]
	mov eax, [ecx-0x4]
	mov [esp], eax
	call node_pos
	mov ebx, eax
	mov dword [esp], 0x6f
	call node1_
	mov edi, [ebp-0x2848]
	mov ecx, [edi]
	mov edx, [edi-0x10]
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	mov [esp+0x8], ecx
	mov [esp+0x4], edx
	mov dword [esp], 0x2b
	call node4
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_1910:
	mov ecx, [ebp-0x2848]
	mov eax, [ecx-0x4]
	mov [esp], eax
	call node_pos
	mov ebx, eax
	mov dword [esp], 0x68
	call node1_
	mov edi, [ebp-0x2848]
	mov ecx, [edi]
	mov edx, [edi-0x10]
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	mov [esp+0x8], ecx
	mov [esp+0x4], edx
	mov dword [esp], 0x2b
	call node4
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_1900:
	mov ecx, [ebp-0x2848]
	mov eax, [ecx-0x4]
	mov [esp], eax
	call node_pos
	mov ebx, eax
	mov dword [esp], 0x67
	call node1_
	mov edi, [ebp-0x2848]
	mov ecx, [edi]
	mov edx, [edi-0x10]
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	mov [esp+0x8], ecx
	mov [esp+0x4], edx
	mov dword [esp], 0x2b
	call node4
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_1890:
	mov edx, [ebp-0x2848]
	mov eax, [edx-0x4]
	mov [esp], eax
	call node_pos
	mov ebx, eax
	mov dword [esp], 0x66
	call node1_
	mov edi, [ebp-0x2848]
	mov ecx, [edi]
	mov edx, [edi-0x10]
	mov [esp+0x10], ebx
	mov [esp+0xc], eax
	mov [esp+0x8], ecx
	mov [esp+0x4], edx
	mov dword [esp], 0x2b
	call node4
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_1880:
	mov ebx, [ebp-0x2848]
	mov eax, [ebx-0x4]
	mov [esp], eax
	call node_pos
	mov edi, [ebx-0x8]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov dword [esp], 0x2a
	call node2
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_1870:
	mov edx, [ebp-0x2848]
	mov eax, [edx-0x4]
	mov [esp], eax
	call node_pos
	mov ecx, [ebp-0x2848]
	mov ecx, [ecx-0x8]
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov dword [esp], 0x29
	call node2
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_1860:
	mov edx, [ebp-0x2848]
	mov eax, [edx-0x4]
	mov [esp], eax
	call node_pos
	mov ebx, eax
	mov ecx, [ebp-0x2848]
	mov eax, [ecx+0x4]
	mov [esp], eax
	call node_pos
	mov edi, [ebp-0x2848]
	mov ecx, [edi]
	mov [esp+0xc], ebx
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov dword [esp], 0x1d
	call node3
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_1850:
	mov edi, [ebp-0x2848]
	mov eax, [edi+0x4]
	mov [esp], eax
	call node_pos
	mov [esp+0x4], eax
	mov dword [esp], 0x1c
	call node1
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_1840:
	mov ecx, [ebp-0x2848]
	mov eax, [ecx-0x4]
	mov [esp], eax
	call node_pos
	mov ebx, [ebp-0x2848]
	mov ecx, [ebx]
	mov [esp+0x8], eax
	mov [esp+0x4], ecx
	mov dword [esp], 0x1b
	call node2
	mov [ebp-0x280c], eax
	mov ebx, eax
	mov edi, [ebp-0x2810]
	jmp yyparse_420
yyparse_310:
	call yy_stdout
	mov [yyout], eax
	jmp yyparse_550
yyparse_390:
	cmp ax, 0x8000
	jz yyparse_190
	neg ecx
	mov [ebp-0x2850], ecx
	mov ebx, ecx
	jmp yyparse_280
yyparse_320:
	mov dword [esp+0x4], 0x4000
	mov eax, [yyin]
	mov [esp], eax
	call yy_create_buffer
	mov [yy_current_buffer], eax
	mov edx, eax
	jmp yyparse_560
yyparse_20:
	mov eax, [yychar]
	test eax, eax
	jz yyparse_570
	cmp eax, 0x101
	jz yyparse_580
	mov dword [esp+0x4], _cstring_bad_syntax
	mov eax, [g_sourcePos]
	mov [esp], eax
	call CompileError
	mov eax, 0x2
	jmp yyparse_590
yyparse_170:
	xor eax, eax
	jmp yyparse_590
yyparse_570:
	mov dword [esp+0x4], _cstring_unexpected_end_o
	mov eax, [g_sourcePos]
	mov [esp], eax
	call CompileError
	mov eax, 0x2
	jmp yyparse_590
yyparse_530:
	lea esi, [ebp-0x27e8]
	mov eax, esi
	jmp yyparse_600
yyparse_620:
	sub edx, 0x1
	mov [eax], cl
	add eax, 0x1
	add ebx, 0x1
yyparse_660:
	test edx, edx
	jz yyparse_610
yyparse_600:
	movzx ecx, byte [ebx]
	cmp cl, 0x5c
	jnz yyparse_620
	cmp edx, 0x1
	jz yyparse_610
	movzx ecx, byte [ebx+0x1]
	cmp cl, 0x72
	jz yyparse_630
	cmp cl, 0x74
	jz yyparse_640
	cmp cl, 0x6e
	jz yyparse_650
	mov [eax], cl
	add eax, 0x1
yyparse_670:
	sub edx, 0x2
	add ebx, 0x2
	jmp yyparse_660
yyparse_580:
	mov eax, 0x2
	jmp yyparse_590
yyparse_650:
	mov byte [eax], 0xa
	add eax, 0x1
	jmp yyparse_670
yyparse_640:
	mov byte [eax], 0x9
	add eax, 0x1
	jmp yyparse_670
yyparse_630:
	mov byte [eax], 0xd
	add eax, 0x1
	jmp yyparse_670
yyparse_520:
	lea esi, [ebp-0x27e8]
	mov eax, esi
	jmp yyparse_680
yyparse_700:
	sub edx, 0x1
	mov [eax], cl
	add eax, 0x1
	add ebx, 0x1
yyparse_740:
	test edx, edx
	jz yyparse_690
yyparse_680:
	movzx ecx, byte [ebx]
	cmp cl, 0x5c
	jnz yyparse_700
	cmp edx, 0x1
	jz yyparse_690
	movzx ecx, byte [ebx+0x1]
	cmp cl, 0x72
	jz yyparse_710
	cmp cl, 0x74
	jz yyparse_720
	cmp cl, 0x6e
	jz yyparse_730
	mov [eax], cl
	add eax, 0x1
yyparse_750:
	sub edx, 0x2
	add ebx, 0x2
	jmp yyparse_740
yyparse_510:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_max_string_lengt
	mov [esp], ecx
	call CompileError
	mov eax, 0x101
	jmp yyparse_440
yyparse_730:
	mov byte [eax], 0xa
	add eax, 0x1
	jmp yyparse_750
yyparse_720:
	mov byte [eax], 0x9
	add eax, 0x1
	jmp yyparse_750
yyparse_710:
	mov byte [eax], 0xd
	add eax, 0x1
	jmp yyparse_750
yyparse_930:
	mov edx, [yy_n_chars]
	mov [ebp-0x287c], edx
yyparse_490:
	mov eax, [yy_current_buffer]
	mov edi, [ebp-0x287c]
	add edi, [eax+0x4]
	mov [yy_c_buf_p], edi
	mov edx, [yy_start]
	mov [ebp-0x27fc], ebx
	cmp edi, ebx
	jbe yyparse_760
	mov ecx, [yy_last_accepting_cpos]
	mov [ebp-0x27f4], ecx
	mov eax, [yy_last_accepting_state]
	mov [ebp-0x2818], eax
	mov [ebp-0x2878], edi
yyparse_970:
	movzx eax, byte [ebx]
	test al, al
	jnz yyparse_770
	mov byte [ebp-0x2811], 0x1
yyparse_800:
	cmp word [edx+edx+yy_accept], 0x0
	jz yyparse_780
	mov [ebp-0x27f4], ebx
	mov [ebp-0x2818], edx
yyparse_780:
	movsx eax, word [edx+edx+yy_base]
	movzx esi, byte [ebp-0x2811]
	lea ecx, [eax+esi]
	movsx eax, word [ecx+ecx+yy_chk]
	cmp edx, eax
	jz yyparse_790
	movsx edx, word [edx+edx+yy_def]
	cmp edx, 0x101
	jle yyparse_780
	movzx ecx, byte [esi*4+yy_meta]
	mov [ebp-0x2811], cl
	jmp yyparse_780
yyparse_770:
	movzx eax, al
	movzx eax, byte [eax*4+yy_ec]
	mov [ebp-0x2811], al
	jmp yyparse_800
yyparse_470:
	mov dword [esp+0x4], _cstring_fatal_flex_scann1
	jmp yyparse_810
yyparse_460:
	mov ecx, [yytext]
	mov [ebp-0x27fc], ecx
	mov edi, ecx
	add edi, [ebp-0x2830]
	mov [yy_c_buf_p], edi
	mov edx, [yy_start]
	cmp edi, ecx
	jbe yyparse_820
	mov ebx, [yy_last_accepting_cpos]
	mov [ebp-0x282c], ebx
	mov eax, [yy_last_accepting_state]
	mov [ebp-0x27f0], eax
	mov ebx, ecx
	mov [ebp-0x2870], edi
yyparse_1110:
	movzx eax, byte [ebx]
	test al, al
	jnz yyparse_830
	mov byte [ebp-0x2826], 0x1
yyparse_860:
	cmp word [edx+edx+yy_accept], 0x0
	jz yyparse_840
	mov [ebp-0x282c], ebx
	mov [ebp-0x27f0], edx
yyparse_840:
	movsx eax, word [edx+edx+yy_base]
	movzx esi, byte [ebp-0x2826]
	lea ecx, [eax+esi]
	movsx eax, word [ecx+ecx+yy_chk]
	cmp edx, eax
	jz yyparse_850
	movsx edx, word [edx+edx+yy_def]
	cmp edx, 0x101
	jle yyparse_840
	movzx ecx, byte [esi*4+yy_meta]
	mov [ebp-0x2826], cl
	jmp yyparse_840
yyparse_830:
	movzx eax, al
	movzx eax, byte [eax*4+yy_ec]
	mov [ebp-0x2826], al
	jmp yyparse_860
yyparse_480:
	sub edx, ebx
	sub edx, 0x1
	mov [ebp-0x2820], edx
	test edx, edx
	jle yyparse_870
	xor edx, edx
yyparse_880:
	movzx eax, byte [ecx]
	mov ebx, [ebp-0x2824]
	mov [ebx], al
	add ebx, 0x1
	mov [ebp-0x2824], ebx
	add ecx, 0x1
	add edx, 0x1
	cmp [ebp-0x2820], edx
	jnz yyparse_880
yyparse_870:
	cmp dword [esi+0x24], 0x2
	jz yyparse_890
	mov edx, [ebp-0x2820]
	not edx
	add edx, [esi+0xc]
	test edx, edx
	jle yyparse_900
	mov esi, [yy_current_buffer]
yyparse_1070:
	cmp edx, 0x2001
	mov eax, 0x2000
	cmovge edx, eax
	mov [esp+0x4], edx
	mov eax, [ebp-0x2820]
	add eax, [esi+0x4]
	mov [esp], eax
	call Scr_ScanFile
	mov [yy_n_chars], eax
	mov edx, [yy_current_buffer]
	mov [edx+0x10], eax
yyparse_1100:
	mov eax, [yy_n_chars]
	test eax, eax
	jz yyparse_910
	xor esi, esi
yyparse_1030:
	mov ecx, [ebp-0x2820]
	add ecx, [yy_n_chars]
	mov [yy_n_chars], ecx
	mov edx, [yy_current_buffer]
	mov eax, [edx+0x4]
	mov byte [eax+ecx], 0x0
	mov eax, [edx+0x4]
	mov byte [eax+ecx+0x1], 0x0
	mov ebx, [edx+0x4]
	mov [ebp-0x2800], ebx
	mov [yytext], ebx
	cmp esi, 0x1
	jz yyparse_920
	cmp esi, 0x2
	jz yyparse_930
	test esi, esi
	jnz yyparse_290
	mov eax, [ebp-0x2830]
	lea edi, [ebx+eax]
	mov [yy_c_buf_p], edi
	mov ecx, [yy_start]
	cmp ebx, edi
	jae yyparse_360
	mov edx, [yy_last_accepting_cpos]
	mov [ebp-0x27f8], edx
	mov eax, [yy_last_accepting_state]
	mov [ebp-0x27ec], eax
	mov [ebp-0x2874], edi
yyparse_980:
	movzx eax, byte [ebx]
	test al, al
	jnz yyparse_940
	mov byte [ebp-0x2819], 0x1
yyparse_990:
	cmp word [ecx+ecx+yy_accept], 0x0
	jz yyparse_950
	mov [ebp-0x27f8], ebx
	mov [ebp-0x27ec], ecx
yyparse_950:
	movsx eax, word [ecx+ecx+yy_base]
	movzx esi, byte [ebp-0x2819]
	lea edx, [eax+esi]
	movsx eax, word [edx+edx+yy_chk]
	cmp ecx, eax
	jz yyparse_960
	movsx ecx, word [ecx+ecx+yy_def]
	cmp ecx, 0x101
	jle yyparse_950
	movzx edx, byte [esi*4+yy_meta]
	mov [ebp-0x2819], dl
	jmp yyparse_950
yyparse_790:
	movsx edx, word [ecx+ecx+yy_nxt]
	add ebx, 0x1
	cmp ebx, [ebp-0x2878]
	jnz yyparse_970
	mov ebx, [ebp-0x27f4]
	mov [yy_last_accepting_cpos], ebx
	mov eax, [ebp-0x2818]
	mov [yy_last_accepting_state], eax
	mov ecx, edx
	jmp yyparse_540
yyparse_960:
	movsx ecx, word [edx+edx+yy_nxt]
	add ebx, 0x1
	cmp ebx, [ebp-0x2874]
	jnz yyparse_980
	mov ebx, [ebp-0x27f8]
	mov [yy_last_accepting_cpos], ebx
	mov eax, [ebp-0x27ec]
	mov [yy_last_accepting_state], eax
	jmp yyparse_360
yyparse_940:
	movzx eax, al
	movzx eax, byte [eax*4+yy_ec]
	mov [ebp-0x2819], al
	jmp yyparse_990
yyparse_910:
	mov eax, [ebp-0x2820]
	test eax, eax
	jnz yyparse_1000
	mov esi, [yyin]
	mov eax, [yy_current_buffer]
	test eax, eax
	jnz yyparse_1010
	mov dword [esp+0x4], 0x4000
	mov [esp], esi
	call yy_create_buffer
	mov [yy_current_buffer], eax
yyparse_1010:
	mov edx, [yy_current_buffer]
	test edx, edx
	jz yyparse_1020
	mov dword [edx+0x10], 0x0
	mov eax, [edx+0x4]
	mov byte [eax], 0x0
	mov eax, [edx+0x4]
	mov byte [eax+0x1], 0x0
	mov eax, [edx+0x4]
	mov [edx+0x8], eax
	mov dword [edx+0x1c], 0x1
	mov dword [edx+0x24], 0x0
	mov eax, [edx+0x10]
	mov [yy_n_chars], eax
	mov eax, [edx+0x8]
	mov [yy_c_buf_p], eax
	mov ebx, eax
	mov [yytext], eax
	mov eax, [edx]
	mov [yyin], eax
	movzx eax, byte [ebx]
	mov [yy_hold_char], al
yyparse_1020:
	mov [edx], esi
	mov dword [edx+0x20], 0x1
	mov dword [edx+0x18], 0x0
	mov eax, [edx+0x10]
	mov [yy_n_chars], eax
	mov eax, [edx+0x8]
	mov [yy_c_buf_p], eax
	mov ebx, eax
	mov [yytext], eax
	mov eax, [edx]
	mov [yyin], eax
	movzx eax, byte [ebx]
	mov [yy_hold_char], al
	mov esi, 0x1
	jmp yyparse_1030
yyparse_1000:
	mov eax, [yy_current_buffer]
	mov dword [eax+0x24], 0x2
	mov esi, 0x2
	jmp yyparse_1030
yyparse_900:
	mov esi, [yy_current_buffer]
	jmp yyparse_1040
yyparse_1080:
	mov edx, [esi+0xc]
	lea eax, [edx+edx]
	test eax, eax
	jle yyparse_1050
	mov [esi+0xc], eax
yyparse_1150:
	mov eax, [esi+0xc]
	add eax, 0x2
	mov [esp+0x4], eax
	mov eax, [esi+0x4]
	mov [esp], eax
	call realloc
	mov [esi+0x4], eax
yyparse_1090:
	mov eax, [esi+0x4]
	test eax, eax
	jz yyparse_1060
	add eax, ebx
	mov [yy_c_buf_p], eax
	mov esi, [yy_current_buffer]
	mov edx, [ebp-0x2820]
	not edx
	add edx, [esi+0xc]
	test edx, edx
	jg yyparse_1070
yyparse_1040:
	mov ebx, [yy_c_buf_p]
	sub ebx, [esi+0x4]
	mov eax, [esi+0x14]
	test eax, eax
	jnz yyparse_1080
	mov dword [esi+0x4], 0x0
	jmp yyparse_1090
yyparse_890:
	mov dword [yy_n_chars], 0x0
	mov dword [esi+0x10], 0x0
	jmp yyparse_1100
yyparse_850:
	movsx edx, word [ecx+ecx+yy_nxt]
	add ebx, 0x1
	cmp ebx, [ebp-0x2870]
	jnz yyparse_1110
	mov ebx, [ebp-0x282c]
	mov [yy_last_accepting_cpos], ebx
	mov eax, [ebp-0x27f0]
	mov [yy_last_accepting_state], eax
yyparse_820:
	cmp word [edx+edx+yy_accept], 0x0
	jz yyparse_1120
	mov [yy_last_accepting_state], edx
	mov [yy_last_accepting_cpos], edi
yyparse_1120:
	mov ecx, edx
	mov byte [ebp-0x2825], 0x1
yyparse_1140:
	movsx eax, word [ecx+ecx+yy_base]
	movzx esi, byte [ebp-0x2825]
	lea ebx, [eax+esi]
	movsx eax, word [ebx+ebx+yy_chk]
	cmp ecx, eax
	jz yyparse_1130
	movsx ecx, word [ecx+ecx+yy_def]
	cmp ecx, 0x101
	jle yyparse_1140
	movzx ebx, byte [esi*4+yy_meta]
	mov [ebp-0x2825], bl
	jmp yyparse_1140
yyparse_1130:
	movzx eax, word [ebx+ebx+yy_nxt]
	movsx ecx, ax
	cmp ax, 0x101
	jz yyparse_760
	test ax, ax
	jz yyparse_760
	add edi, 0x1
	mov [yy_c_buf_p], edi
	mov eax, [ebp-0x27fc]
	mov [ebp-0x2800], eax
	jmp yyparse_360
yyparse_1060:
	mov dword [esp+0x4], _cstring_fatal_error__sca
	jmp yyparse_810
yyparse_1050:
	mov eax, edx
	shr eax, 0x3
	lea eax, [edx+eax]
	mov [esi+0xc], eax
	jmp yyparse_1150
	
	
yyparse_jumptab_0:
	dd yyparse_1160
	dd yyparse_1170
	dd yyparse_1180
	dd yyparse_1190
	dd yyparse_1200
	dd yyparse_1210
	dd yyparse_1220
	dd yyparse_1230
	dd yyparse_1240
	dd yyparse_1250
	dd yyparse_1260
	dd yyparse_1270
	dd yyparse_1280
	dd yyparse_1290
	dd yyparse_1300
	dd yyparse_1310
	dd yyparse_1320
	dd yyparse_1330
	dd yyparse_1340
	dd yyparse_1350
	dd yyparse_1360
	dd yyparse_1370
	dd yyparse_1380
	dd yyparse_1390
	dd yyparse_1400
	dd yyparse_1410
	dd yyparse_1420
	dd yyparse_1430
	dd yyparse_1440
	dd yyparse_1450
	dd yyparse_1460
	dd yyparse_1470
	dd yyparse_1480
	dd yyparse_1490
	dd yyparse_1500
	dd yyparse_1510
	dd yyparse_1520
	dd yyparse_1530
	dd yyparse_1540
	dd yyparse_1550
	dd yyparse_1560
	dd yyparse_1570
	dd yyparse_1580
	dd yyparse_1590
	dd yyparse_1600
	dd yyparse_1610
	dd yyparse_1620
	dd yyparse_1630
	dd yyparse_1640
	dd yyparse_1650
	dd yyparse_1660
	dd yyparse_1670
	dd yyparse_1680
	dd yyparse_1690
	dd yyparse_1700
	dd yyparse_1710
	dd yyparse_1720
	dd yyparse_1730
	dd yyparse_1740
	dd yyparse_1750
	dd yyparse_1760
	dd yyparse_1770
	dd yyparse_1780
	dd yyparse_1790
	dd yyparse_1800
	dd yyparse_1810
	dd yyparse_1820
	dd yyparse_1830
	dd yyparse_1840
	dd yyparse_1850
	dd yyparse_1860
	dd yyparse_1870
	dd yyparse_1880
	dd yyparse_1890
	dd yyparse_1900
	dd yyparse_1910
	dd yyparse_1920
	dd yyparse_1930
	dd yyparse_1940
	dd yyparse_1950
	dd yyparse_1960
	dd yyparse_1970
	dd yyparse_1980
	dd yyparse_1990
	dd yyparse_2000
	dd yyparse_2010
	dd yyparse_2020
	dd yyparse_2030
	dd yyparse_2040
	dd yyparse_2050
	dd yyparse_2060
	dd yyparse_2070
	dd yyparse_2080
	dd yyparse_2090
	dd yyparse_1160
	dd yyparse_2100
	dd yyparse_1160
	dd yyparse_1160
	dd yyparse_2110
	dd yyparse_2120
	dd yyparse_2130
	dd yyparse_2140
	dd yyparse_2150
	dd yyparse_2160
	dd yyparse_2170
	dd yyparse_2180
	dd yyparse_2190
	dd yyparse_2200
	dd yyparse_1160
	dd yyparse_2210
	dd yyparse_2220
	dd yyparse_2230
	dd yyparse_2240
	dd yyparse_1160
	dd yyparse_2250
	dd yyparse_2260
	dd yyparse_2270
	dd yyparse_1160
	dd yyparse_2280
	dd yyparse_2290
	dd yyparse_2300
	dd yyparse_2310
	dd yyparse_2320
	dd yyparse_2330
	dd yyparse_2340
	dd yyparse_2350
	dd yyparse_2360
	dd yyparse_2370
	dd yyparse_2380
	dd yyparse_2390
	dd yyparse_2400
	dd yyparse_2410
	dd yyparse_2420
	dd yyparse_2430
yyparse_jumptab_1:
	dd yyparse_2440
	dd yyparse_2450
	dd yyparse_2460
	dd yyparse_2450
	dd yyparse_2450
	dd yyparse_2450
	dd yyparse_2470
	dd yyparse_2480
	dd yyparse_2490
	dd yyparse_2500
	dd yyparse_2510
	dd yyparse_2520
	dd yyparse_2530
	dd yyparse_2540
	dd yyparse_2550
	dd yyparse_2560
	dd yyparse_2570
	dd yyparse_2580
	dd yyparse_2590
	dd yyparse_2600
	dd yyparse_2610
	dd yyparse_2620
	dd yyparse_2630
	dd yyparse_2640
	dd yyparse_2650
	dd yyparse_2660
	dd yyparse_2670
	dd yyparse_2680
	dd yyparse_2690
	dd yyparse_2700
	dd yyparse_2710
	dd yyparse_2720
	dd yyparse_2730
	dd yyparse_2740
	dd yyparse_2750
	dd yyparse_2760
	dd yyparse_2770
	dd yyparse_2780
	dd yyparse_2790
	dd yyparse_2800
	dd yyparse_2810
	dd yyparse_2820
	dd yyparse_2830
	dd yyparse_2840
	dd yyparse_2850
	dd yyparse_2860
	dd yyparse_2870
	dd yyparse_2880
	dd yyparse_2890
	dd yyparse_2900
	dd yyparse_2910
	dd yyparse_2920
	dd yyparse_2930
	dd yyparse_2940
	dd yyparse_2950
	dd yyparse_2960
	dd yyparse_2970
	dd yyparse_2980
	dd yyparse_2990
	dd yyparse_3000
	dd yyparse_3010
	dd yyparse_3020
	dd yyparse_3030
	dd yyparse_3040
	dd yyparse_3050
	dd yyparse_3060
	dd yyparse_3070
	dd yyparse_3080
	dd yyparse_3090
	dd yyparse_3100
	dd yyparse_3110
	dd yyparse_3120
	dd yyparse_3130
	dd yyparse_3140
	dd yyparse_3150
	dd yyparse_3160
	dd yyparse_3170
	dd yyparse_3180
	dd yyparse_3190
	dd yyparse_3200
	dd yyparse_3210
	dd yyparse_3220
	dd yyparse_3230
	dd yyparse_3240
	dd yyparse_3250
	dd yyparse_3260
	dd yyparse_3270
	dd yyparse_3280
	dd yyparse_3290
	dd yyparse_3300
	dd yyparse_3310
	dd yyparse_3320
	dd yyparse_3330
	dd yyparse_3340
	dd yyparse_3350
	dd yyparse_3360
	dd yyparse_3370
	dd yyparse_3370
	dd yyparse_3370


;Initialized global or static variables of scr_yacc:
SECTION .data
yy_init: dd 0x1, 0x0, 0x0, 0x0, 0x0, 0x0
yyin: dd 0x0
yyout: dd 0x0


;Initialized constant data of scr_yacc:
SECTION .rdata
yydefgoto: dd 0x390103, 0x2a00ce, 0x2c002b, 0x2e002d, 0x3b003a, 0x8d003c, 0xf50033, 0x8f008e, 0x3d0038, 0xde003e, 0xd500df, 0xd900d7, 0x360086, 0x30037, 0x0, 0x0
yypgoto: dd 0x218000, 0x98000, 0x80008000, 0xffda00cc, 0xfffe0002, 0xde000e, 0x8000fffa, 0x930007, 0x8000ffe0, 0x8000ff9a, 0x80008000, 0x80008000, 0x80008000, 0x80008000, 0x0, 0x0
yyr1: dd 0x5b0000, 0x5b005b, 0x5c005b, 0x5c005c, 0x5c005c, 0x5c005c, 0x5c005c, 0x5c005c, 0x5c005c, 0x5c005c, 0x5c005c, 0x5c005c, 0x5c005c, 0x5d005d, 0x5e005e, 0x5f005f, 0x600060, 0x610061, 0x620062, 0x630063, 0x640064, 0x640064, 0x640064, 0x640064, 0x640064, 0x640064, 0x640064, 0x640064, 0x640064, 0x640064, 0x640064, 0x650065, 0x650065, 0x660065, 0x660066, 0x660066, 0x660066, 0x660066, 0x660066, 0x660066, 0x660066, 0x660066, 0x660066, 0x660066, 0x660066, 0x660066, 0x670066, 0x680067, 0x690068, 0x690069, 0x690069, 0x690069, 0x6a0069, 0x6a006a, 0x6b006a, 0x6c006b, 0x6d006c, 0x6e006d, 0x6f006e, 0x70006f, 0x710070, 0x720071, 0x730072, 0x730073, 0x740073, 0x750074, 0x760076, 0x0, 0x0, 0x0, 0x0, 0x0
yyr2: dd 0x30000, 0x20002, 0x10002, 0x30003, 0x30003, 0x30003, 0x30003, 0x30003, 0x30003, 0x30003, 0x30003, 0x30003, 0x20002, 0x1, 0x10001, 0x10003, 0x20003, 0x50001, 0x20001, 0x50004, 0x10003, 0x20001, 0x10002, 0x10001, 0x10001, 0x10001, 0x10001, 0x10002, 0x20002, 0x10001, 0x50001, 0x40003, 0x20001, 0x30003, 0x10002, 0x20002, 0x30002, 0x30003, 0x30003, 0x30003, 0x30003, 0x50003, 0x10005, 0x50005, 0x10001, 0x40001, 0x10004, 0x1, 0x20001, 0x50003, 0x50007, 0x70008, 0x10003, 0x20003, 0x20001, 0x30000, 0x10001, 0x30000, 0x10001, 0x30000, 0x30001, 0x30001, 0x70001, 0x10005, 0x20001, 0x20000, 0x3, 0x0, 0x0, 0x0, 0x0, 0x0
yydefact: dd 0x850000, 0x820000, 0x2d0040, 0x6e002e, 0x72, 0x0, 0x0, 0x2a0029, 0x45, 0x310000, 0x330032, 0x350034, 0x0, 0x3c0000, 0x1d0000, 0x55, 0x590058, 0x3b003a, 0x5a, 0x6e0000, 0x20000, 0x220000, 0x240037, 0x2f0000, 0x300005, 0x3, 0x4, 0x1, 0x700000, 0x5002f, 0x710030, 0x0, 0x2b0038, 0x39002c, 0x190018, 0x460044, 0x1c, 0x250000, 0x0, 0x210000, 0x0, 0x0, 0x41, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x72, 0x360000, 0x0, 0x0, 0x0, 0x470000, 0x48, 0x0, 0x0, 0x0, 0x0, 0x610000, 0x83001c, 0x0, 0x80007f, 0x840081, 0x690062, 0x0, 0x5e0000, 0x6d006c, 0x280000, 0x0, 0x0, 0x1b, 0x0, 0x60068, 0x80007, 0xa0009, 0xc000b, 0xe000d, 0x10000f, 0x120011, 0x140013, 0x160015, 0x200017, 0x0, 0x3e0000, 0x42, 0x0, 0x0, 0x430072, 0x4a0049, 0x4c004b, 0x4e004d, 0x50004f, 0x520051, 0x76, 0x6b0000, 0x6f, 0x1e, 0x1a0000, 0x0, 0x5c005b, 0x3f0026, 0x78, 0x7a, 0x7c, 0x0, 0x740000, 0x75, 0x6a0000, 0x630023, 0x5f0065, 0x53006e, 0x540000, 0x560000, 0x570000, 0x27003d, 0x0, 0x0, 0x60, 0x770000, 0x7b0079, 0x6e0073, 0x64007e, 0x670000, 0x660000, 0x7d, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
yytable: dd 0x820030, 0xffa300ae, 0x48002f, 0x5300e7, 0x340048, 0x10071, 0x20069, 0x6900b1, 0xffe10031, 0xffa20035, 0x710080, 0x410048, 0xe90042, 0x4a004c, 0x490043, 0xffa300eb, 0x3f00e8, 0x290040, 0x4d006a, 0x6a00e1, 0x650064, 0x4e0066, 0x440012, 0x120045, 0x46004f, 0xea0047, 0x540050, 0xb2008c, 0x4a00ec, 0x51002f, 0x670052, 0x830081, 0x7f0068, 0x87006b, 0x6b004a, 0x1d0031, 0x910090, 0xffe1001d, 0xffe4008c, 0x98003f, 0x8c002f, 0x8400dc, 0x2f0085, 0x99001d, 0xad001d, 0xc70070, 0x700031, 0xb30093, 0x310092, 0xb500b4, 0xb700b6, 0x620071, 0x640063, 0x660065, 0x9400b8, 0xc40095, 0x9700c5, 0xd000ca, 0xffe200d1, 0x9c009b, 0x9e009d, 0xa0009f, 0xa200a1, 0xa400a3, 0xa600a5, 0xa800a7, 0xaa00a9, 0xac00ab, 0xd200c6, 0x6000b0, 0x620061, 0x640063, 0x660065, 0xb900dd, 0x4a0072, 0xbb00ba, 0xbd00bc, 0xbf00be, 0xc100c0, 0xc300c2, 0xe00071, 0x740073, 0x760075, 0x780077, 0x7a0079, 0x7c007b, 0x7e007d, 0xe500e2, 0xc800e6, 0xf000ef, 0xf200f1, 0xcd00f3, 0x5a0059, 0x5c005b, 0x5e005d, 0x60005f, 0x620061, 0x640063, 0x660065, 0xf700f6, 0x8c00fa, 0xfc008c, 0x2f00fb, 0x4a002f, 0xfe0092, 0xe400e3, 0xd600d4, 0xda00d8, 0x3100db, 0x1000031, 0x1050104, 0xf4004b, 0x960032, 0x8c0000, 0x0, 0x2f0000, 0x48, 0x0, 0x0, 0x690000, 0x8c0000, 0x310000, 0x2f008c, 0x0, 0x2f, 0xfd, 0x8c, 0x8c, 0x31002f, 0x2f, 0x1010031, 0x6a0000, 0x0, 0xf80000, 0xf90031, 0x120031, 0x0, 0x0, 0x0, 0x0, 0x40000, 0x60005, 0x880007, 0x8, 0x9, 0x0, 0x6b0000, 0x0, 0x0, 0x6c001d, 0x6d, 0x6e, 0xa, 0xb0000, 0x6f, 0xf000e, 0x0, 0x890000, 0x700000, 0x110010, 0x130012, 0x150014, 0x170016, 0x18, 0x1a0019, 0x5b005a, 0x5d005c, 0x5f005e, 0x610060, 0x630062, 0x650064, 0x66, 0x1b, 0x1d001c, 0x0, 0x1e, 0x8a001f, 0x20008b, 0x21, 0x230022, 0x250024, 0x270026, 0x280000, 0x50004, 0x70006, 0x80000, 0x90000, 0x590058, 0x5b005a, 0x5d005c, 0x5f005e, 0x610060, 0x630062, 0x650064, 0xa0066, 0x0, 0xb, 0xe0000, 0xf, 0x0, 0x89, 0x100000, 0x120011, 0x140013, 0x160015, 0x180017, 0x190000, 0x5c001a, 0x5e005d, 0x60005f, 0x620061, 0x640063, 0x660065, 0x0, 0x1b0000, 0x1c0000, 0x1d, 0x1e0000, 0x1f0000, 0x8b008a, 0x210020, 0x220000, 0x240023, 0x260025, 0x9a0027, 0x40028, 0x60005, 0xff0007, 0x8, 0x9, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xa, 0xb0000, 0x0, 0xf000e, 0x0, 0x890000, 0x0, 0x110010, 0x130012, 0x150014, 0x170016, 0x18, 0x1a0019, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1b, 0x1d001c, 0x0, 0x1e, 0x8a001f, 0x20008b, 0x21, 0x230022, 0x250024, 0x270026, 0x280000, 0x50004, 0x70006, 0x80102, 0x90000, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xa0000, 0x0, 0xb, 0xe0000, 0xf, 0x0, 0x89, 0x100000, 0x120011, 0x140013, 0x160015, 0x180017, 0x190000, 0x1a, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1b0000, 0x1c0000, 0x1d, 0x1e0000, 0x1f0000, 0x8b008a, 0x210020, 0x220000, 0x240023, 0x260025, 0x27, 0x40028, 0x60005, 0x7, 0x8, 0x9, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xa, 0xb0000, 0x0, 0xf000e, 0x0, 0x890000, 0x0, 0x110010, 0x130012, 0x150014, 0x170016, 0x18, 0x1a0019, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1b, 0x1d001c, 0x0, 0x1e, 0x8a001f, 0x20008b, 0x21, 0x230022, 0x250024, 0x270026, 0x280000, 0x50004, 0x70006, 0x80000, 0x90000, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xa0000, 0x0, 0xc000b, 0xe000d, 0xf, 0x0, 0x0, 0x100000, 0x120011, 0x140013, 0x160015, 0x180017, 0x190000, 0x1a, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1b0000, 0x1c0000, 0x1d, 0x1e0000, 0x1f0000, 0x0, 0x210020, 0x220000, 0x240023, 0x260025, 0x27, 0x40028, 0x60005, 0x7, 0x8, 0x9, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xa, 0xb0000, 0x0, 0xf000e, 0x0, 0x0, 0x0, 0x110010, 0x130012, 0x150014, 0x170016, 0x18, 0x1a0019, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1b, 0x1d001c, 0x0, 0x1e, 0x1f, 0x200000, 0x21, 0x230022, 0x250024, 0x270026, 0x280000, 0x50004, 0x6, 0x80000, 0x90000, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xa0000, 0x0, 0xb, 0xe0000, 0xf, 0x0, 0x0, 0x100000, 0x120011, 0x140013, 0x160015, 0x550017, 0x570056, 0x590058, 0x5b005a, 0x5d005c, 0x5f005e, 0x610060, 0x630062, 0x650064, 0x1b0066, 0x1c0000, 0x1d, 0x1e0000, 0x0, 0x0, 0x210020, 0x220000, 0x240023, 0x260025, 0x0, 0x40028, 0x60005, 0x0, 0x8, 0x4000af, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xa, 0xb0000, 0xd000c, 0xf000e, 0x50004, 0x6, 0x80000, 0x90000, 0x130012, 0x150014, 0x170016, 0x0, 0x0, 0x0, 0x0, 0xa0000, 0x0, 0xc000b, 0xe000d, 0xf, 0x1b, 0x1d001c, 0x0, 0x120000, 0x140013, 0x160015, 0x17, 0x230022, 0x0, 0x0, 0x280000, 0x0, 0x0, 0x0, 0x0, 0x1b0000, 0x1c0000, 0x4001d, 0x60005, 0x0, 0x8, 0xaf, 0x220000, 0x23, 0x0, 0x0, 0x28, 0x0, 0x0, 0xa, 0xb0000, 0xd000c, 0xf000e, 0x50004, 0x6, 0x80000, 0x90000, 0x130012, 0x150014, 0x170016, 0x0, 0x0, 0x0, 0x0, 0xa0000, 0x0, 0xb, 0xe0000, 0xf, 0x1b, 0x1d001c, 0x0, 0x120000, 0x140013, 0x160015, 0x17, 0x230022, 0x0, 0x0, 0x280000, 0x0, 0x0, 0x0, 0x0, 0x1b0000, 0x1c0000, 0x1d, 0x0, 0x0, 0x0, 0x0, 0x220000, 0x23, 0x0, 0xcb, 0x550028, 0x570056, 0x590058, 0x5b005a, 0x5d005c, 0x5f005e, 0x610060, 0x630062, 0x650064, 0xcc0066, 0x0, 0x560055, 0x580057, 0x5a0059, 0x5c005b, 0x5e005d, 0x60005f, 0x620061, 0x640063, 0x660065, 0xcf, 0x550000, 0x570056, 0x590058, 0x5b005a, 0x5d005c, 0x5f005e, 0x610060, 0x630062, 0x650064, 0xed0066, 0x0, 0x560055, 0x580057, 0x5a0059, 0x5c005b, 0x5e005d, 0x60005f, 0x620061, 0x640063, 0x660065, 0xee, 0x550000, 0x570056, 0x590058, 0x5b005a, 0x5d005c, 0x5f005e, 0x610060, 0x630062, 0x650064, 0xc90066, 0x560055, 0x580057, 0x5a0059, 0x5c005b, 0x5e005d, 0x60005f, 0x620061, 0x640063, 0x660065, 0x5500d3, 0x570056, 0x590058, 0x5b005a, 0x5d005c, 0x5f005e, 0x610060, 0x630062, 0x650064, 0x560066, 0x580057, 0x5a0059, 0x5c005b, 0x5e005d, 0x60005f, 0x620061, 0x640063, 0x660065, 0x580057, 0x5a0059, 0x5c005b, 0x5e005d, 0x60005f, 0x620061, 0x640063, 0x660065, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
yycheck: dd 0x40002, 0xa0068, 0x40002, 0x27000a, 0x20004, 0x1a0030, 0x1c000b, 0xb0004, 0x90002, 0x260044, 0x3b0004, 0x210004, 0xa0022, 0x120009, 0xb0004, 0x26000a, 0xb0024, 0x2000c, 0x90023, 0x230025, 0x1d001c, 0x9001e, 0xc002b, 0x2b000d, 0x100004, 0x240011, 0x40009, 0x2d0038, 0x300024, 0x90038, 0x450009, 0x420035, 0x260009, 0x260041, 0x41003b, 0x460038, 0xa0024, 0x90046, 0x45004e, 0x5000b, 0x53004e, 0x5600b8, 0x530057, 0x50046, 0x40046, 0x250059, 0x59004e, 0x90045, 0x53003f, 0x90009, 0x90009, 0x1a008c, 0x1c001b, 0x1e001d, 0x4c0009, 0x9004d, 0x500009, 0xa0004, 0x9000a, 0x560055, 0x580057, 0x5a0059, 0x5c005b, 0x5e005d, 0x60005f, 0x620061, 0x640063, 0x660065, 0xa008a, 0x180069, 0x1a0019, 0x1c001b, 0x1e001d, 0x720004, 0x8c0027, 0x760075, 0x780077, 0x7a0079, 0x7c007b, 0x7e007d, 0x500c6, 0x360035, 0x380037, 0x3a0039, 0x3c003b, 0x3e003d, 0x40003f, 0x26000c, 0x900007, 0x24000a, 0xa000a, 0x960032, 0x120011, 0x140013, 0x160015, 0x180017, 0x1a0019, 0x1c001b, 0x1e001d, 0x400e6, 0xcb0004, 0x2600cc, 0xcb0007, 0xc600cc, 0xa00af, 0xcc00cb, 0xb400b3, 0xb600b5, 0xcb00b7, 0xfb00cc, 0x0, 0xe50012, 0x4e0002, 0xe5ffff, 0xffffffff, 0xe5ffff, 0xffff0004, 0xffffffff, 0xffffffff, 0xbffff, 0xf3ffff, 0xe5ffff, 0xf300f6, 0xffffffff, 0xffff00f6, 0xffff00f3, 0xffff00fe, 0xffff0100, 0xf300fe, 0xffff0100, 0xfe00f6, 0x23ffff, 0xffffffff, 0xeaffff, 0xec00fe, 0x2b0100, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0x4ffff, 0x60005, 0x80007, 0xffff0009, 0xffff000b, 0xffffffff, 0x41ffff, 0xffffffff, 0xffffffff, 0x470046, 0xffff0048, 0xffff004a, 0xffff001b, 0x1effff, 0xffff0050, 0x220021, 0xffffffff, 0x26ffff, 0x59ffff, 0x2a0029, 0x2c002b, 0x2e002d, 0x30002f, 0xffff0031, 0x340033, 0x130012, 0x150014, 0x170016, 0x190018, 0x1b001a, 0x1d001c, 0xffff001e, 0xffff0043, 0x460045, 0xffffffff, 0xffff0049, 0x4c004b, 0x4e004d, 0xffff004f, 0x520051, 0x540053, 0x560055, 0x58ffff, 0x50004, 0x70006, 0x9ffff, 0xbffff, 0x110010, 0x130012, 0x150014, 0x170016, 0x190018, 0x1b001a, 0x1d001c, 0x1b001e, 0xffffffff, 0xffff001e, 0x21ffff, 0xffff0022, 0xffffffff, 0xffff0026, 0x29ffff, 0x2b002a, 0x2d002c, 0x2f002e, 0x310030, 0x33ffff, 0x140034, 0x160015, 0x180017, 0x1a0019, 0x1c001b, 0x1e001d, 0xffffffff, 0x43ffff, 0x45ffff, 0xffff0046, 0x49ffff, 0x4bffff, 0x4d004c, 0x4f004e, 0x51ffff, 0x530052, 0x550054, 0x570056, 0x40058, 0x60005, 0x80007, 0xffff0009, 0xffff000b, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffff001b, 0x1effff, 0xffffffff, 0x220021, 0xffffffff, 0x26ffff, 0xffffffff, 0x2a0029, 0x2c002b, 0x2e002d, 0x30002f, 0xffff0031, 0x340033, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffff0043, 0x460045, 0xffffffff, 0xffff0049, 0x4c004b, 0x4e004d, 0xffff004f, 0x520051, 0x540053, 0x560055, 0x58ffff, 0x50004, 0x70006, 0x90008, 0xbffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0x1bffff, 0xffffffff, 0xffff001e, 0x21ffff, 0xffff0022, 0xffffffff, 0xffff0026, 0x29ffff, 0x2b002a, 0x2d002c, 0x2f002e, 0x310030, 0x33ffff, 0xffff0034, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0x43ffff, 0x45ffff, 0xffff0046, 0x49ffff, 0x4bffff, 0x4d004c, 0x4f004e, 0x51ffff, 0x530052, 0x550054, 0xffff0056, 0x40058, 0x60005, 0xffff0007, 0xffff0009, 0xffff000b, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffff001b, 0x1effff, 0xffffffff, 0x220021, 0xffffffff, 0x26ffff, 0xffffffff, 0x2a0029, 0x2c002b, 0x2e002d, 0x30002f, 0xffff0031, 0x340033, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffff0043, 0x460045, 0xffffffff, 0xffff0049, 0x4c004b, 0x4e004d, 0xffff004f, 0x520051, 0x540053, 0x560055, 0x58ffff, 0x50004, 0x70006, 0x9ffff, 0xbffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0x1bffff, 0xffffffff, 0x1f001e, 0x210020, 0xffff0022, 0xffffffff, 0xffffffff, 0x29ffff, 0x2b002a, 0x2d002c, 0x2f002e, 0x310030, 0x33ffff, 0xffff0034, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0x43ffff, 0x45ffff, 0xffff0046, 0x49ffff, 0x4bffff, 0xffffffff, 0x4f004e, 0x51ffff, 0x530052, 0x550054, 0xffff0056, 0x40058, 0x60005, 0xffff0007, 0xffff0009, 0xffff000b, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffff001b, 0x1effff, 0xffffffff, 0x220021, 0xffffffff, 0xffffffff, 0xffffffff, 0x2a0029, 0x2c002b, 0x2e002d, 0x30002f, 0xffff0031, 0x340033, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffff0043, 0x460045, 0xffffffff, 0xffff0049, 0xffff004b, 0x4effff, 0xffff004f, 0x520051, 0x540053, 0x560055, 0x58ffff, 0x50004, 0xffff0006, 0x9ffff, 0xbffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0x1bffff, 0xffffffff, 0xffff001e, 0x21ffff, 0xffff0022, 0xffffffff, 0xffffffff, 0x29ffff, 0x2b002a, 0x2d002c, 0x2f002e, 0xd0030, 0xf000e, 0x110010, 0x130012, 0x150014, 0x170016, 0x190018, 0x1b001a, 0x1d001c, 0x43001e, 0x45ffff, 0xffff0046, 0x49ffff, 0xffffffff, 0xffffffff, 0x4f004e, 0x51ffff, 0x530052, 0x550054, 0xffffffff, 0x40058, 0x60005, 0xffffffff, 0xffff0009, 0xc000b, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffff001b, 0x1effff, 0x20001f, 0x220021, 0x50004, 0xffff0006, 0x9ffff, 0xbffff, 0x2c002b, 0x2e002d, 0x30002f, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0x1bffff, 0xffffffff, 0x1f001e, 0x210020, 0xffff0022, 0xffff0043, 0x460045, 0xffffffff, 0x2bffff, 0x2d002c, 0x2f002e, 0xffff0030, 0x520051, 0xffffffff, 0xffffffff, 0x58ffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0x43ffff, 0x45ffff, 0x40046, 0x60005, 0xffffffff, 0xffff0009, 0xffff000b, 0x51ffff, 0xffff0052, 0xffffffff, 0xffffffff, 0xffff0058, 0xffffffff, 0xffffffff, 0xffff001b, 0x1effff, 0x20001f, 0x220021, 0x50004, 0xffff0006, 0x9ffff, 0xbffff, 0x2c002b, 0x2e002d, 0x30002f, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0x1bffff, 0xffffffff, 0xffff001e, 0x21ffff, 0xffff0022, 0xffff0043, 0x460045, 0xffffffff, 0x2bffff, 0x2d002c, 0x2f002e, 0xffff0030, 0x520051, 0xffffffff, 0xffffffff, 0x58ffff, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0x43ffff, 0x45ffff, 0xffff0046, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff, 0x51ffff, 0xffff0052, 0xffffffff, 0xffff000a, 0xd0058, 0xf000e, 0x110010, 0x130012, 0x150014, 0x170016, 0x190018, 0x1b001a, 0x1d001c, 0xa001e, 0xffffffff, 0xe000d, 0x10000f, 0x120011, 0x140013, 0x160015, 0x180017, 0x1a0019, 0x1c001b, 0x1e001d, 0xffff000a, 0xdffff, 0xf000e, 0x110010, 0x130012, 0x150014, 0x170016, 0x190018, 0x1b001a, 0x1d001c, 0xa001e, 0xffffffff, 0xe000d, 0x10000f, 0x120011, 0x140013, 0x160015, 0x180017, 0x1a0019, 0x1c001b, 0x1e001d, 0xffff000a, 0xdffff, 0xf000e, 0x110010, 0x130012, 0x150014, 0x170016, 0x190018, 0x1b001a, 0x1d001c, 0xc001e, 0xe000d, 0x10000f, 0x120011, 0x140013, 0x160015, 0x180017, 0x1a0019, 0x1c001b, 0x1e001d, 0xd000c, 0xf000e, 0x110010, 0x130012, 0x150014, 0x170016, 0x190018, 0x1b001a, 0x1d001c, 0xe001e, 0x10000f, 0x120011, 0x140013, 0x160015, 0x180017, 0x1a0019, 0x1c001b, 0x1e001d, 0x10000f, 0x120011, 0x140013, 0x160015, 0x180017, 0x1a0019, 0x1c001b, 0x1e001d, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
yytranslate: dd 0x2020200, 0x2020202, 0x2020202, 0x2020202, 0x2020202, 0x2020202, 0x2020202, 0x2020202, 0x2020202, 0x2020202, 0x2020202, 0x2020202, 0x2020202, 0x2020202, 0x2020202, 0x2020202, 0x2020202, 0x2020202, 0x2020202, 0x2020202, 0x2020202, 0x2020202, 0x2020202, 0x2020202, 0x2020202, 0x2020202, 0x2020202, 0x2020202, 0x2020202, 0x2020202, 0x2020202, 0x2020202, 0x2020202, 0x2020202, 0x2020202, 0x2020202, 0x2020202, 0x2020202, 0x2020202, 0x2020202, 0x2020202, 0x2020202, 0x2020202, 0x2020202, 0x2020202, 0x2020202, 0x2020202, 0x2020202, 0x2020202, 0x2020202, 0x2020202, 0x2020202, 0x2020202, 0x2020202, 0x2020202, 0x2020202, 0x2020202, 0x2020202, 0x2020202, 0x2020202, 0x2020202, 0x2020202, 0x2020202, 0x2020202, 0x5040301, 0x9080706, 0xd0c0b0a, 0x11100f0e, 0x15141312, 0x19181716, 0x1d1c1b1a, 0x21201f1e, 0x25242322, 0x29282726, 0x2d2c2b2a, 0x31302f2e, 0x35343332, 0x39383736, 0x3d3c3b3a, 0x41403f3e, 0x45444342, 0x49484746, 0x4d4c4b4a, 0x51504f4e, 0x55545352, 0x59585756, 0x5a, 0x0
yypact: dd 0x8000fff1, 0xffce02be, 0x80000008, 0x80008000, 0x1603dc, 0x18fff6, 0x3dc03dc, 0x80008000, 0x3dc03dc, 0x80000012, 0x80008000, 0x80008000, 0x1c0011, 0x80000022, 0x8000002c, 0x2b8000, 0x80008000, 0x80008000, 0x328000, 0x80000033, 0x38c0031, 0x8000fff8, 0x80008000, 0xfff90037, 0x6d00e4, 0x1bffed, 0x108000, 0x1dfffd, 0x38c0115, 0x48000, 0x248000, 0x3dc003f, 0x80008000, 0x80008000, 0x80008000, 0x38c038c, 0x430042, 0x80000019, 0x3dc03dc, 0x80000269, 0x4a03dc, 0x16a0052, 0x3dc8000, 0x3dc03dc, 0x3dc03dc, 0x3dc03dc, 0x3dc03dc, 0x3dc03dc, 0x3dc03dc, 0x3dc03dc, 0x3dc03dc, 0x5503dc, 0x41f03dc, 0x8000000a, 0x590056, 0x5b005a, 0x63005c, 0x800003dc, 0x3dc8000, 0x3dc03dc, 0x3dc03dc, 0x3dc03dc, 0x3dc03dc, 0x800003dc, 0x80008000, 0x670066, 0x80008000, 0x80008000, 0x80008000, 0x36043e, 0x800000e4, 0x80008000, 0x800003dc, 0x6e04f1, 0x49f048a, 0x4b403dc, 0x6a0069, 0x5158000, 0x1660525, 0x13800a7, 0x18b018b, 0x730073, 0x730073, 0x4d004d, 0xc000c, 0x80008000, 0x6c8000, 0x3bd007f, 0x80000504, 0x3dc8000, 0x3dc03dc, 0x3dc03dc, 0x38c03dc, 0x38c038c, 0x38c038c, 0x38c038c, 0x38c038c, 0x38c038c, 0x9c008e, 0x80000001, 0xa2038c, 0x3138000, 0x38c0313, 0xa90089, 0x80008000, 0x80008000, 0xfffc038c, 0xf038c, 0x14038c, 0x4de04c9, 0x800000a8, 0xaa008f, 0x800000ab, 0x848000, 0x3688000, 0x80008000, 0x800000c3, 0x800003dc, 0x800003dc, 0x80008000, 0xc500c4, 0x31300a5, 0xc78000, 0x800001bf, 0x38c038c, 0x80008000, 0x80008000, 0x80000313, 0x80000214, 0xdc8000, 0x800000dd, 0x0, 0x0, 0x0, 0x0, 0x0
yy_nxt: dd 0x80000, 0x9000a, 0xc000b, 0xe000d, 0x10000f, 0x120011, 0x140013, 0x160015, 0x180017, 0x1a0019, 0x1c001b, 0x1e001d, 0x20001f, 0x210020, 0x220008, 0x200023, 0x250024, 0x270026, 0x290028, 0x20002a, 0x20002b, 0x20002c, 0x20002d, 0x2f002e, 0x310030, 0x200032, 0x200033, 0x340020, 0x360035, 0x90037, 0x3d0009, 0x44003f, 0x4a0048, 0x45004c, 0x390039, 0x5c004e, 0x49004b, 0x570056, 0x40004f, 0x5a0059, 0x500046, 0x5c005c, 0x41003e, 0x520051, 0x53005c, 0x62005f, 0x5c0060, 0x42005c, 0x54004d, 0x5c005e, 0x5c005c, 0x650069, 0x610067, 0x63005c, 0x64005c, 0x5c0068, 0x5c005c, 0x74005c, 0x5c0066, 0x6c003d, 0x72006d, 0x6a007b, 0x4c006f, 0x6b005c, 0x520073, 0x530071, 0x540070, 0x7f005c, 0x7f006e, 0x540084, 0x3e0080, 0x5c0085, 0x7c005c, 0x5c005c, 0x75005c, 0x5c005c, 0x5c005c, 0x88005c, 0x8a005c, 0x5c005c, 0x5c0087, 0x86008b, 0x5c005c, 0x89005c, 0x7b008d, 0x90008c, 0x92005c, 0x8e005c, 0x8f0093, 0x910097, 0x960094, 0x5c005c, 0x5c0098, 0x95005c, 0x9f005c, 0xa0005c, 0x5c007c, 0x5c00a2, 0x9e00a3, 0x5c005c, 0x5c005c, 0x5c0083, 0x5c005c, 0xa100a6, 0x5c00a7, 0xa800a4, 0xab00a9, 0xa5005c, 0xad005c, 0x5c005c, 0x5c005c, 0xaa00ae, 0x5c00af, 0x5c00ac, 0x5c005c, 0x5c005c, 0xb100b7, 0x5c00b6, 0x5c00ba, 0xb000bc, 0xbf00bd, 0xb9005c, 0x5c00bb, 0xb800c0, 0x5c005c, 0x5c00be, 0x5c005c, 0x5c00c1, 0xc3005c, 0x5c005c, 0xcc005c, 0x5c005c, 0x5c00cd, 0xc900ca, 0xc2005c, 0xc800c7, 0xcf00d0, 0xd100ce, 0xd7005c, 0x5c005c, 0xd800cb, 0x5c005c, 0x5c00d6, 0xda005c, 0x5c00d2, 0x5c005c, 0x5c005c, 0x5c00e2, 0xdd00e4, 0xd900db, 0xdc00e5, 0xe300e1, 0xe6005c, 0x5c005c, 0x5c005c, 0xe9005c, 0xeb005c, 0x5c005c, 0xec00ea, 0xf400f2, 0x5c005c, 0xed005c, 0xf0005c, 0xf8005c, 0xf100ef, 0x5c00fa, 0xf500fd, 0xf7005c, 0xfb005c, 0x5c00fe, 0x10000fc, 0xf600f9, 0x5c005c, 0xff00f3, 0x80008, 0x80008, 0x380038, 0x380038, 0x5c003c, 0x3c003c, 0x5b005b, 0xee007a, 0x7a007a, 0x5c007e, 0x7e007e, 0x9d009d, 0xe8005c, 0x5c00e7, 0xe0005c, 0xde00df, 0x5c005c, 0x5c005c, 0xd400d5, 0x5c00d3, 0x5c005c, 0xc6005c, 0xc400c5, 0x5c005c, 0x5c005c, 0x5c005c, 0xb5005c, 0xb300b4, 0x5c00b2, 0x80005c, 0x9c0080, 0x9a009b, 0x5c0099, 0x82005c, 0x4c0081, 0x79007d, 0x770078, 0x76003a, 0x5c005d, 0x550058, 0x430047, 0x3a003b, 0x90101, 0x70009, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x0
yy_chk: dd 0x30000, 0x30003, 0x30003, 0x30003, 0x30003, 0x30003, 0x30003, 0x30003, 0x30003, 0x30003, 0x30003, 0x30003, 0x30003, 0x30003, 0x30003, 0x30003, 0x30003, 0x30003, 0x30003, 0x30003, 0x30003, 0x30003, 0x30003, 0x30003, 0x30003, 0x30003, 0x30003, 0x30003, 0x30003, 0x50003, 0xc0006, 0x10000d, 0x160014, 0x100017, 0x60005, 0x250018, 0x140016, 0x1c001c, 0xd0018, 0x1e001e, 0x180010, 0x270024, 0xd000c, 0x190018, 0x190026, 0x270025, 0x280026, 0xd002c, 0x190017, 0x290024, 0x2b002a, 0x29002c, 0x26002a, 0x28002d, 0x28002e, 0x2f002b, 0x310030, 0x350032, 0x330029, 0x2f003c, 0x330030, 0x2d0044, 0x4c0031, 0x2e005e, 0x530033, 0x530032, 0x4c0031, 0x54005f, 0x540030, 0x53005e, 0x3c0054, 0x60005f, 0x440061, 0x630062, 0x350065, 0x660064, 0x670069, 0x62006b, 0x64006a, 0x6d006c, 0x6f0061, 0x600065, 0x70006e, 0x630072, 0x7a0067, 0x6b0066, 0x6d0073, 0x690071, 0x6a006e, 0x6c0072, 0x71006f, 0x860084, 0x850073, 0x700087, 0x850089, 0x860088, 0x8a007a, 0x8b0088, 0x840089, 0x8f008d, 0x91008e, 0x900108, 0x930092, 0x87008d, 0x94008e, 0x8f008a, 0x920090, 0x8b0095, 0x940096, 0x980097, 0x9f00a1, 0x910095, 0xa20096, 0xa40093, 0xa800a5, 0xaa00a7, 0x9800a1, 0xac009f, 0xa900a5, 0x9700a8, 0xac00a9, 0xa400ad, 0xaf00a7, 0xa200ad, 0xb100b0, 0xb700aa, 0xb600b8, 0xbc00af, 0xb100bd, 0xc900be, 0xbd00c8, 0xc100bf, 0xc000bd, 0xb700b8, 0xb000c7, 0xb600b6, 0xbf00c0, 0xc100be, 0xc800c2, 0xcc00ca, 0xc900bc, 0xd200cd, 0xd100c7, 0xcc00d8, 0xdb00c2, 0xdd00d7, 0xda00dc, 0xe100d8, 0xd200db, 0xca00cd, 0xd100dc, 0xda00d7, 0xdd00e3, 0xe900e5, 0xea00e6, 0xe100ec, 0xe500f2, 0xf100ed, 0xe600e3, 0xf100ed, 0xf500f4, 0xe600f7, 0xea00fa, 0xf500f8, 0xec00e9, 0xfd00f7, 0xf200fa, 0xf400ff, 0xf80100, 0xfb00fc, 0xff00f9, 0xf300f6, 0xef00f0, 0xfd00ee, 0x1020102, 0x1020102, 0x1030103, 0x1030103, 0xeb0104, 0x1040104, 0x1050105, 0xe80106, 0x1060106, 0xe40107, 0x1070107, 0x1090109, 0xe000e2, 0xd900de, 0xd500d6, 0xd300d4, 0xcf00d0, 0xcb00ce, 0xc500c6, 0xc300c4, 0xba00bb, 0xb400b9, 0xb200b3, 0xab00ae, 0xa300a6, 0x9e00a0, 0x9c009d, 0x9a009b, 0x8c0099, 0x800083, 0x7d007f, 0x780079, 0x680077, 0x5a005b, 0x520056, 0x42004d, 0x400041, 0x39003a, 0x200023, 0x1a001d, 0xf0013, 0xa000b, 0x20007, 0x1010001, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x0
yy_base: dd 0x1af0000, 0x1ae, 0x380000, 0x1b00039, 0x1b301b3, 0x19801ad, 0x2d0038, 0x19701b3, 0x1b3003a, 0x19601b3, 0x1b30033, 0x300032, 0x470040, 0x1b30198, 0x1940035, 0x1b30038, 0x1b3018d, 0x19201b3, 0x2b0036, 0x37003c, 0x470041, 0x490048, 0x4e0042, 0x530050, 0x550054, 0x590056, 0x5d01b3, 0x1b301b3, 0x19601b3, 0x1b301a4, 0x1b30071, 0x1b30000, 0x1780179, 0x1b30173, 0x1b30075, 0x1b301b3, 0x1b301b3, 0x1b301b3, 0x17a006b, 0x1b301b3, 0x1b30000, 0x71018f, 0x1b3007a, 0x1b3018a, 0x1b301b3, 0x1820189, 0x1b30000, 0x6a0062, 0x740073, 0x770076, 0x78007a, 0x7d007b, 0x7c0181, 0x7e0080, 0x830082, 0x850088, 0x920089, 0x90008a, 0x1b301b3, 0x17401b3, 0x1720179, 0x1b300a4, 0x1630000, 0x1860000, 0x1b30185, 0x17a01b3, 0x9d009a, 0x9e009b, 0xa000a2, 0xa700a5, 0xaa0179, 0xab00ac, 0xad00af, 0xb100b0, 0xba00b5, 0xbe00bc, 0x16900bf, 0x1660169, 0x174016d, 0xc10173, 0xc00172, 0x17100c5, 0xc800c7, 0xca0170, 0xd100c9, 0x16f00cb, 0xd600cf, 0xd9016e, 0xdd00dc, 0x1560158, 0x1b30161, 0xdf00e1, 0x16a00e0, 0x1680169, 0xe400e3, 0xea00e6, 0xeb00ed, 0x16700f8, 0x15e0153, 0xf00161, 0xe700e8, 0x16300fa, 0xfe00fb, 0x1610162, 0x1010160, 0x15700ff, 0x1590156, 0x106015c, 0x15b0102, 0x1050109, 0x1070108, 0x1b30152, 0x10b0149, 0x1140158, 0x1160153, 0x1b30118, 0x1170143, 0x1490119, 0x11e011a, 0x13d012f, 0x11f013c, 0x126011c, 0x1250124, 0x1260127, 0x130012a, 0x1370128, 0x12f012e, 0x13201b3, 0x1b30134, 0x15f015b, 0x1650163, 0x16d0169, 0x16f00c6, 0x0, 0x0, 0x0
yy_meta: dd 0x0, 0x1, 0x1, 0x2, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x3, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x4, 0x4, 0x1, 0x3, 0x1, 0x1, 0x4, 0x4, 0x4, 0x4, 0x4, 0x4, 0x4, 0x4, 0x4, 0x4, 0x4, 0x4, 0x4, 0x4, 0x4, 0x4, 0x4, 0x4, 0x4, 0x4, 0x4, 0x4, 0x4, 0x4, 0x1, 0x1, 0x1, 0x1, 0x0, 0x0, 0x0, 0x0, 0x0
yy_def: dd 0x1020000, 0x1010102, 0x1030003, 0x1010103, 0x1010101, 0x1010101, 0x1010104, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1010105, 0x1010101, 0x1050105, 0x1050105, 0x1050105, 0x1050105, 0x1050105, 0x1050105, 0x1050105, 0x1050105, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1010104, 0x1010104, 0x1010101, 0x1010101, 0x1010106, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1010107, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x1050101, 0x1010108, 0x1050105, 0x1050105, 0x1050105, 0x1050105, 0x1050105, 0x1050105, 0x1050105, 0x1050105, 0x1050105, 0x1050105, 0x1050105, 0x1010101, 0x1010101, 0x1010101, 0x1010106, 0x1010106, 0x1010107, 0x1010101, 0x1090101, 0x1050105, 0x1050105, 0x1050105, 0x1050105, 0x1050105, 0x1050105, 0x1050105, 0x1050105, 0x1050105, 0x1050105, 0x1010105, 0x1010101, 0x1090101, 0x1050105, 0x1050105, 0x1050105, 0x1050105, 0x1050105, 0x1050105, 0x1050105, 0x1050105, 0x1050105, 0x1050105, 0x1010101, 0x1010101, 0x1050105, 0x1050105, 0x1050105, 0x1050105, 0x1050105, 0x1050105, 0x1050105, 0x1010101, 0x1050101, 0x1050105, 0x1050105, 0x1050105, 0x1050105, 0x1050105, 0x1010105, 0x1010101, 0x1050105, 0x1050105, 0x1050105, 0x1050105, 0x1010101, 0x1050101, 0x1050105, 0x1050105, 0x1010105, 0x1050101, 0x1050105, 0x1050105, 0x1050101, 0x1050105, 0x1010105, 0x1050105, 0x1050101, 0x1010105, 0x1050105, 0x1050101, 0x1050101, 0x105, 0x1010101, 0x1010101, 0x1010101, 0x1010101, 0x0, 0x0, 0x0
yy_accept: dd 0x0, 0x0, 0x0, 0x5f0000, 0x1005d, 0x210004, 0x5d005d, 0x200059, 0xb0013, 0x1e000c, 0x25001c, 0x26001d, 0x23001f, 0x2a0028, 0x290016, 0x270017, 0xd005b, 0x12000e, 0x5b005b, 0x5b005b, 0x5b005b, 0x5b005b, 0x5b005b, 0x5b005b, 0x5b005b, 0x5b005b, 0x110009, 0x22000a, 0x30003, 0x150004, 0x70000, 0x580000, 0x0, 0x420000, 0x100000, 0x40003b, 0x3e0037, 0x3f0038, 0x24, 0x60057, 0x410005, 0x230000, 0x470000, 0x18001a, 0x190014, 0x5b001b, 0x3a0000, 0x5b005b, 0x5b005b, 0x5b005b, 0x5b005b, 0x5b005b, 0x5b0033, 0x5b005b, 0x5b005b, 0x5b005b, 0x5b005b, 0x5b005b, 0xf0039, 0x2, 0x0, 0x80000, 0x0, 0x5, 0x3c0024, 0x5c003d, 0x5b005b, 0x5b005b, 0x5b005b, 0x5b005b, 0x5b0036, 0x5b005b, 0x5b005b, 0x5b005b, 0x5b005b, 0x5b005b, 0x5b, 0x0, 0x5c0000, 0x5b0032, 0x5b004d, 0x34005b, 0x5b005b, 0x5b0031, 0x5b005b, 0x2f005b, 0x5b005b, 0x5b0053, 0x5b002c, 0x0, 0x430000, 0x5b004f, 0x51005b, 0x300052, 0x5b005b, 0x5b005b, 0x5b005b, 0x35005b, 0x0, 0x5b0000, 0x5b005b, 0x4b005b, 0x5b005b, 0x4c002b, 0x5b002d, 0x5b, 0x0, 0x5b005a, 0x4e005b, 0x5b005b, 0x5b005b, 0x460000, 0x5b0000, 0x5b0050, 0x5b0056, 0x450048, 0x5b0000, 0x2e005b, 0x5b005b, 0x540000, 0x5b0055, 0x5b, 0x5b005b, 0x5b0000, 0x5b, 0x49005b, 0x5b0000, 0x5b0044, 0x4a, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
yy_ec: dd 0x0, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x2, 0x3, 0x1, 0x1, 0x2, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x2, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0x1, 0xa, 0xb, 0xc, 0xd, 0xe, 0xf, 0x10, 0x11, 0x12, 0x12, 0x12, 0x12, 0x12, 0x12, 0x12, 0x12, 0x12, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x1, 0x19, 0x19, 0x19, 0x19, 0x1a, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x19, 0x1b, 0x1c, 0x1d, 0x1e, 0x1f, 0x1, 0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 0x28, 0x19, 0x29, 0x2a, 0x2b, 0x2c, 0x2d, 0x2e, 0x19, 0x2f, 0x30, 0x31, 0x32, 0x33, 0x34, 0x19, 0x35, 0x36, 0x37, 0x38, 0x39, 0x3a, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x17faa1, 0x180040, 0x180109, 0x1800db, 0x1800ad, 0x18006d, 0x17ee65, 0x17ede8, 0x18025a, 0x1801f9, 0x180198, 0x180137, 0x180562, 0x180501, 0x1804a0, 0x18043f, 0x1803de, 0x18037d, 0x18031c, 0x1802bb, 0x180a32, 0x1809d1, 0x180970, 0x18090f, 0x1808cf, 0x180895, 0x18086a, 0x18084b, 0x18080d, 0x1807d5, 0x180768, 0x180709, 0x180697, 0x18063e, 0x180604, 0x1805c3, 0x181319, 0x1812c5, 0x18125f, 0x1811df, 0x1811a4, 0x181164, 0x18112a, 0x1810ea, 0x1810b0, 0x181070, 0x181036, 0x18100b, 0x180fcb, 0x180f97, 0x180f63, 0x180f2f, 0x180efb, 0x180ec7, 0x180e77, 0x180e3d, 0x180e09, 0x180daa, 0x180d76, 0x180d42, 0x180d0e, 0x180ccc, 0x180c5d, 0x180be9, 0x180b90, 0x180b2b, 0x180aeb, 0x180a93, 0x182235, 0x182201, 0x1821aa, 0x182169, 0x18212e, 0x1820d5, 0x18207c, 0x182023, 0x181fca, 0x181f71, 0x181f18, 0x181ebf, 0x181e66, 0x181e0d, 0x181db4, 0x181d5b, 0x181d02, 0x181cce, 0x181c7b, 0x181c22, 0x181bee, 0x181bba, 0x181b86, 0x181b45, 0x181b0a, 0x181adf, 0x17faa1, 0x181ac0, 0x17faa1, 0x17faa1, 0x181a74, 0x181a23, 0x1819b6, 0x18194e, 0x1818bc, 0x18187a, 0x18182f, 0x17fd3b, 0x17fcf0, 0x17fcb2, 0x17faa1, 0x17fc88, 0x17fc61, 0x17fc0e, 0x17fbbc, 0x17faa1, 0x17fb9d, 0x17fb31, 0x17fab2, 0x17faa1, 0x17fa7a, 0x17fa1a, 0x17f9c0, 0x17f97f, 0x17f925, 0x17ff75, 0x17ff29, 0x17fe6b, 0x17fe13, 0x17fddf, 0x17fdab, 0x17fd81, 0x17fd5a, 0x17fff3, 0x17ffc2, 0x17f8fe, 0x181813, 0x17edc9, 0x1817ea, 0x17edc9, 0x17edc9, 0x17edc9, 0x1817c1, 0x18174c, 0x1816d7, 0x1816b3, 0x18168f, 0x18166b, 0x181647, 0x181623, 0x1815ff, 0x1815db, 0x1815b7, 0x181593, 0x18156f, 0x18154b, 0x181527, 0x181503, 0x1814df, 0x1814bb, 0x181497, 0x181473, 0x18144f, 0x18142b, 0x181407, 0x1813e3, 0x1813bf, 0x18139b, 0x181377, 0x181353, 0x17f374, 0x17f333, 0x17f2f2, 0x17f2ce, 0x17f2aa, 0x17f286, 0x17f262, 0x17f23e, 0x17f21a, 0x17f1f6, 0x17f1d2, 0x17f1ae, 0x17f18a, 0x17f166, 0x17f142, 0x17f11e, 0x17f0fa, 0x17f0d6, 0x17f0b2, 0x17f08e, 0x17f06a, 0x17f046, 0x17f022, 0x17effe, 0x17efda, 0x17efb6, 0x17ef92, 0x17ef6e, 0x17ef4d, 0x17ef2c, 0x17ef0b, 0x17eee2, 0x17f5b4, 0x17f590, 0x17f56c, 0x17f548, 0x17f524, 0x17f500, 0x17f4dc, 0x17f4b8, 0x17f494, 0x17f470, 0x17f44c, 0x17f428, 0x17f404, 0x17f3e0, 0x17f3bc, 0x17f398, 0x17f6d4, 0x17f6b0, 0x17f68c, 0x17f668, 0x17f644, 0x17f620, 0x17f5fc, 0x17f5d8, 0x17f7d7, 0x17f788, 0x17f739, 0x17f6f8, 0x17f8b4, 0x17f7fb, 0x17f8f7, 0x17f8f7, 0x17f8f7, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x18db12, 0x18db12, 0x18d940, 0x18d940, 0x18d940, 0x18d940, 0x18d940, 0x18d940, 0x18d940, 0x18d940, 0x18d940, 0x18d940, 0x18d940, 0x18d940, 0x18d940, 0x18d940, 0x18d940, 0x18d940, 0x18d940, 0x18d940, 0x18d940, 0x18d940, 0x18d940, 0x18d940, 0x18d940, 0x18d940, 0x18d940, 0x18d940, 0x18d940, 0x18d940, 0x18db12, 0x18db12, 0x18d940, 0x18db91, 0x18d940, 0x18d940, 0x18d940, 0x18d940, 0x18d940, 0x18d940, 0x18d940, 0x18d940, 0x18d940, 0x18d940, 0x18db12, 0x18db12, 0x18db12, 0x18db12, 0x18d940, 0x18db12, 0x18d940, 0x18db91, 0x0, 0x0, 0x0, 0x0


;Zero initialized global or static variables of scr_yacc:
SECTION .bss
yaccResult: resb 0x4
yy_start: resb 0x4
yy_current_buffer: resb 0x18
ch_buf: resb 0x4004
g_dummyVal: resb 0x4
g_parse_user: resb 0x4
g_sourcePos: resb 0x4
g_out_pos: resb 0x4
yy_hold_char: resb 0x4
yy_c_buf_p: resb 0x4
yy_n_chars: resb 0x4
yy_did_buffer_switch_on_eof: resb 0x4
yy_last_accepting_cpos: resb 0x4
yy_last_accepting_state: resb 0x38
yychar: resb 0x70
yyleng: resb 0x4
yylval: resb 0x8
yynerrs: resb 0x4
yytext: resb 0x4


;All cstrings:
SECTION .rdata
_cstring_out_of_dynamic_m:		db "out of dynamic memory in yy_create_buffer()",0
_cstring_s:		db "%s",0ah,0
_cstring_bad_syntax:		db "bad syntax",0
_cstring_fatal_flex_scann:		db "fatal flex scanner internal error--no action found",0
_cstring_unexpected_end_o:		db "unexpected end of file found",0
_cstring_f:		db "%f",0
_cstring_d:		db "%d",0
_cstring_bad_token_s:		db "bad token ",27h,"%s",27h,0
_cstring_max_string_lengt:		db "max string length exceeded: ",22h,"%s",22h,0
_cstring_fatal_flex_scann1:		db "fatal flex scanner internal error--end of buffer missed",0
_cstring_fatal_error__sca:		db "fatal error - scanner input buffer overflow",0



;All constant floats and doubles:
SECTION .rdata

