;Imports of ui_expressions_obj:
	extern Z_FreeInternal
	extern _Z18PC_ReadTokenHandleiP10pc_token_s
	extern _Z9I_stricmpPKcS0_
	extern _Z14Com_PrintErroriPKcz
	extern Z_MallocInternal
	extern _Z10I_strncpyzPcPKci
	extern _Z11Com_sprintfPciPKcz

;Exports of ui_expressions_obj:
	global _Z15free_expressionP11statement_s
	global _Z16parse_expressioniP11statement_si
	global g_expOperatorNames


SECTION .text


;free_expression(statement_s*)
_Z15free_expressionP11statement_s:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x8]
	cmp dword [edi], 0x0
	jz _Z15free_expressionP11statement_s_10
	jle _Z15free_expressionP11statement_s_20
	xor esi, esi
	jmp _Z15free_expressionP11statement_s_30
_Z15free_expressionP11statement_s_40:
	mov [esp], ebx
	call Z_FreeInternal
	mov eax, [edi+0x4]
	mov edx, [ebp-0x1c]
	mov dword [eax+edx], 0x0
	add esi, 0x1
	cmp [edi], esi
	jle _Z15free_expressionP11statement_s_20
_Z15free_expressionP11statement_s_30:
	lea eax, [esi*4]
	mov [ebp-0x1c], eax
	mov eax, [edi+0x4]
	mov edx, [ebp-0x1c]
	mov ebx, [eax+edx]
	cmp dword [ebx], 0x1
	jnz _Z15free_expressionP11statement_s_40
	cmp dword [ebx+0x4], 0x2
	jnz _Z15free_expressionP11statement_s_40
	mov eax, [ebx+0x8]
	mov [esp], eax
	call Z_FreeInternal
	mov [esp], ebx
	call Z_FreeInternal
	mov eax, [edi+0x4]
	mov edx, [ebp-0x1c]
	mov dword [eax+edx], 0x0
	add esi, 0x1
	cmp [edi], esi
	jg _Z15free_expressionP11statement_s_30
_Z15free_expressionP11statement_s_20:
	mov eax, [edi+0x4]
	mov [esp], eax
	call Z_FreeInternal
	mov dword [edi+0x4], 0x0
	mov dword [edi], 0x0
_Z15free_expressionP11statement_s_10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;parse_expression(int, statement_s*, int)
_Z16parse_expressioniP11statement_si:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x45c
	mov eax, [ebp+0xc]
	mov dword [eax], 0x0
	mov dword [ebp-0x430], 0x0
_Z16parse_expressioniP11statement_si_130:
	lea edx, [ebp-0x428]
	mov [esp+0x4], edx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z18PC_ReadTokenHandleiP10pc_token_s
	test eax, eax
	jz _Z16parse_expressioniP11statement_si_10
	mov dword [esp+0x4], _cstring_
	lea ebx, [ebp-0x418]
	mov [esp], ebx
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z16parse_expressioniP11statement_si_10
	mov eax, [ebp+0x10]
	mov edi, [ebp+0xc]
	cmp eax, [edi]
	jz _Z16parse_expressioniP11statement_si_20
	cmp dword [ebp-0x428], 0x1
	jz _Z16parse_expressioniP11statement_si_30
	xor esi, esi
	mov ebx, g_expOperatorNames
	jmp _Z16parse_expressioniP11statement_si_40
_Z16parse_expressioniP11statement_si_50:
	add esi, 0x1
	add ebx, 0x4
	cmp esi, 0x51
	jz _Z16parse_expressioniP11statement_si_30
_Z16parse_expressioniP11statement_si_40:
	lea edi, [ebp-0x418]
	mov [esp+0x4], edi
	mov eax, [ebx]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z16parse_expressioniP11statement_si_50
	test esi, esi
	jnz _Z16parse_expressioniP11statement_si_60
_Z16parse_expressioniP11statement_si_30:
	mov eax, [ebp-0x428]
	cmp eax, 0x3
	jz _Z16parse_expressioniP11statement_si_70
	cmp eax, 0x4
	jz _Z16parse_expressioniP11statement_si_80
	sub eax, 0x1
	jz _Z16parse_expressioniP11statement_si_80
	lea eax, [ebp-0x418]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_unknown_to
	mov dword [esp], 0x10
	call _Z14Com_PrintErroriPKcz
	mov edx, [ebp+0xc]
	cmp dword [edx], 0x0
	jz _Z16parse_expressioniP11statement_si_90
	jle _Z16parse_expressioniP11statement_si_100
	xor esi, esi
	jmp _Z16parse_expressioniP11statement_si_110
_Z16parse_expressioniP11statement_si_120:
	mov [esp], ebx
	call Z_FreeInternal
	mov ebx, [ebp+0xc]
	mov eax, [ebx+0x4]
	mov dword [eax+edi], 0x0
	add esi, 0x1
	cmp esi, [ebx]
	jge _Z16parse_expressioniP11statement_si_100
_Z16parse_expressioniP11statement_si_110:
	lea edi, [esi*4]
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0x4]
	mov ebx, [eax+edi]
	cmp dword [ebx], 0x1
	jnz _Z16parse_expressioniP11statement_si_120
	cmp dword [ebx+0x4], 0x2
	jnz _Z16parse_expressioniP11statement_si_120
	mov eax, [ebx+0x8]
	mov [esp], eax
	call Z_FreeInternal
	mov [esp], ebx
	call Z_FreeInternal
	mov ebx, [ebp+0xc]
	mov eax, [ebx+0x4]
	mov dword [eax+edi], 0x0
	add esi, 0x1
	cmp esi, [ebx]
	jl _Z16parse_expressioniP11statement_si_110
_Z16parse_expressioniP11statement_si_100:
	mov edi, [ebp+0xc]
	mov eax, [edi+0x4]
	mov [esp], eax
	call Z_FreeInternal
	mov dword [edi+0x4], 0x0
	mov dword [edi], 0x0
	xor eax, eax
_Z16parse_expressioniP11statement_si_260:
	movzx eax, al
	add esp, 0x45c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16parse_expressioniP11statement_si_80:
	mov dword [esp], 0xc
	call Z_MallocInternal
	mov ebx, eax
	mov dword [eax], 0x1
	mov dword [eax+0x4], 0x2
	xor esi, esi
	cld
	mov ecx, 0xffffffff
	lea edi, [ebp-0x418]
	mov eax, esi
	repne scasb
	not ecx
	mov [esp], ecx
	call Z_MallocInternal
	mov [ebp-0x440], eax
	mov [ebx+0x8], eax
	cld
	mov ecx, 0xffffffff
	lea edi, [ebp-0x418]
	mov eax, esi
	repne scasb
	not ecx
	mov [esp+0x8], ecx
	lea eax, [ebp-0x418]
	mov [esp+0x4], eax
	mov edx, [ebp-0x440]
	mov [esp], edx
	call _Z10I_strncpyzPcPKci
	mov ecx, [ebp+0xc]
	mov edx, [ecx]
	mov eax, [ecx+0x4]
	mov [eax+edx*4], ebx
	add dword [ecx], 0x1
	jmp _Z16parse_expressioniP11statement_si_130
_Z16parse_expressioniP11statement_si_70:
	mov ebx, [ebp-0x420]
	movss xmm0, dword [ebp-0x41c]
	movss [ebp-0x434], xmm0
	cvtsi2ss xmm0, ebx
	ucomiss xmm0, [ebp-0x434]
	jp _Z16parse_expressioniP11statement_si_140
	jnz _Z16parse_expressioniP11statement_si_140
	mov dword [esp], 0xc
	call Z_MallocInternal
	mov dword [eax], 0x1
	mov dword [eax+0x4], 0x0
	mov [eax+0x8], ebx
	mov edi, [ebp+0xc]
	mov ecx, [edi]
	mov edx, [edi+0x4]
	mov [edx+ecx*4], eax
	add dword [edi], 0x1
	jmp _Z16parse_expressioniP11statement_si_130
_Z16parse_expressioniP11statement_si_60:
	cmp esi, 0x10
	jz _Z16parse_expressioniP11statement_si_150
	cmp esi, 0x1
	jz _Z16parse_expressioniP11statement_si_160
_Z16parse_expressioniP11statement_si_180:
	mov dword [esp], 0xc
	call Z_MallocInternal
	mov dword [eax], 0x0
	mov [eax+0x4], esi
	mov ebx, [ebp+0xc]
	mov ecx, [ebx]
	mov edx, [ebx+0x4]
	mov [edx+ecx*4], eax
	add dword [ebx], 0x1
	jmp _Z16parse_expressioniP11statement_si_130
_Z16parse_expressioniP11statement_si_140:
	mov dword [esp], 0xc
	call Z_MallocInternal
	mov dword [eax], 0x1
	mov dword [eax+0x4], 0x1
	movss xmm0, dword [ebp-0x434]
	movss [eax+0x8], xmm0
	mov edx, [ebp+0xc]
	mov ecx, [edx]
	mov ebx, edx
	mov edx, [edx+0x4]
	mov [edx+ecx*4], eax
	add dword [ebx], 0x1
	jmp _Z16parse_expressioniP11statement_si_130
_Z16parse_expressioniP11statement_si_20:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_need_to_incremen
	mov dword [esp], 0x10
	call _Z14Com_PrintErroriPKcz
	cmp dword [edi], 0x0
	jnz _Z16parse_expressioniP11statement_si_170
_Z16parse_expressioniP11statement_si_90:
	xor eax, eax
	movzx eax, al
	add esp, 0x45c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16parse_expressioniP11statement_si_150:
	add dword [ebp-0x430], 0x1
	mov eax, [ebp+0xc]
	mov edx, [eax]
	test edx, edx
	jz _Z16parse_expressioniP11statement_si_180
	mov eax, [eax+0x4]
	mov eax, [eax+edx*4-0x4]
	mov edx, [eax]
	test edx, edx
	jz _Z16parse_expressioniP11statement_si_190
	sub edx, 0x1
	jnz _Z16parse_expressioniP11statement_si_180
	mov ecx, [eax+0x4]
	mov ebx, [eax+0x8]
	mov edi, ecx
	mov eax, [currentTempOperand]
	mov edx, eax
	shl edx, 0x8
	add edx, s_tempOperandValueAsString
	mov [ebp-0x42c], edx
	add eax, 0x1
	and eax, 0x80000003
	js _Z16parse_expressioniP11statement_si_200
_Z16parse_expressioniP11statement_si_320:
	mov [currentTempOperand], eax
	cmp edi, 0x2
	jz _Z16parse_expressioniP11statement_si_210
	test edi, edi
	jz _Z16parse_expressioniP11statement_si_220
	sub edi, 0x1
	jz _Z16parse_expressioniP11statement_si_230
_Z16parse_expressioniP11statement_si_310:
	mov edx, [ebp-0x42c]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_probably_ui_expr
	mov dword [esp], 0x10
	call _Z14Com_PrintErroriPKcz
	jmp _Z16parse_expressioniP11statement_si_180
_Z16parse_expressioniP11statement_si_160:
	sub dword [ebp-0x430], 0x1
	cmp dword [ebp-0x430], 0x0
	jl _Z16parse_expressioniP11statement_si_240
	jnz _Z16parse_expressioniP11statement_si_180
_Z16parse_expressioniP11statement_si_10:
	mov eax, 0x1
_Z16parse_expressioniP11statement_si_300:
	movzx eax, al
	add esp, 0x45c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16parse_expressioniP11statement_si_190:
	mov eax, [eax+0x4]
	cmp eax, 0x7
	jz _Z16parse_expressioniP11statement_si_130
	sub eax, 0x17
	cmp eax, 0x39
	jbe _Z16parse_expressioniP11statement_si_130
	jmp _Z16parse_expressioniP11statement_si_180
_Z16parse_expressioniP11statement_si_170:
	jg _Z16parse_expressioniP11statement_si_250
_Z16parse_expressioniP11statement_si_280:
	mov ebx, [ebp+0xc]
	mov eax, [ebx+0x4]
	mov [esp], eax
	call Z_FreeInternal
	mov dword [ebx+0x4], 0x0
	mov dword [ebx], 0x0
	xor eax, eax
	jmp _Z16parse_expressioniP11statement_si_260
_Z16parse_expressioniP11statement_si_250:
	xor esi, esi
	jmp _Z16parse_expressioniP11statement_si_270
_Z16parse_expressioniP11statement_si_290:
	mov [esp], ebx
	call Z_FreeInternal
	mov ecx, [ebp+0xc]
	mov eax, [ecx+0x4]
	mov dword [eax+edi], 0x0
	add esi, 0x1
	cmp esi, [ecx]
	jge _Z16parse_expressioniP11statement_si_280
_Z16parse_expressioniP11statement_si_270:
	lea edi, [esi*4]
	mov edx, [ebp+0xc]
	mov eax, [edx+0x4]
	mov ebx, [eax+edi]
	cmp dword [ebx], 0x1
	jnz _Z16parse_expressioniP11statement_si_290
	cmp dword [ebx+0x4], 0x2
	jnz _Z16parse_expressioniP11statement_si_290
	mov eax, [ebx+0x8]
	mov [esp], eax
	call Z_FreeInternal
	jmp _Z16parse_expressioniP11statement_si_290
_Z16parse_expressioniP11statement_si_240:
	mov dword [esp+0x4], _cstring_ui_expression_er
	mov dword [esp], 0x10
	call _Z14Com_PrintErroriPKcz
	mov eax, 0x1
	jmp _Z16parse_expressioniP11statement_si_300
_Z16parse_expressioniP11statement_si_220:
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_i
	mov dword [esp+0x4], 0x100
	mov edi, [ebp-0x42c]
	mov [esp], edi
	call _Z11Com_sprintfPciPKcz
	jmp _Z16parse_expressioniP11statement_si_310
_Z16parse_expressioniP11statement_si_210:
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_s
	mov dword [esp+0x4], 0x100
	mov ebx, [ebp-0x42c]
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
	jmp _Z16parse_expressioniP11statement_si_310
_Z16parse_expressioniP11statement_si_200:
	sub eax, 0x1
	or eax, 0xfffffffc
	add eax, 0x1
	jmp _Z16parse_expressioniP11statement_si_320
_Z16parse_expressioniP11statement_si_230:
	mov [ebp-0x43c], ebx
	movss xmm0, dword [ebp-0x43c]
	cvtss2sd xmm0, xmm0
	movsd [esp+0xc], xmm0
	mov dword [esp+0x8], _cstring_f
	mov dword [esp+0x4], 0x100
	mov eax, [ebp-0x42c]
	mov [esp], eax
	call _Z11Com_sprintfPciPKcz
	jmp _Z16parse_expressioniP11statement_si_310
	add [eax], al


;Initialized global or static variables of ui_expressions_obj:
SECTION .data
g_expOperatorNames: dd _cstring_noop, _cstring_1, _cstring_2, _cstring_3, _cstring_4, _cstring_5, _cstring_6, _cstring_7, _cstring_8, _cstring_9, _cstring_10, _cstring_11, _cstring_12, _cstring_13, _cstring_14, _cstring_15, _cstring_16, _cstring_17, _cstring_18, _cstring_19, _cstring_20, _cstring_21, _cstring_22, _cstring_sin, _cstring_cos, _cstring_min, _cstring_max, _cstring_milliseconds, _cstring_dvarint, _cstring_dvarbool, _cstring_dvarfloat, _cstring_dvarstring, _cstring_stat, _cstring_ui_active, _cstring_flashbanged, _cstring_scoped, _cstring_scoreboard_visib, _cstring_inkillcam, _cstring_player, _cstring_selecting_locati, _cstring_team, _cstring_otherteam, _cstring_marinesfield, _cstring_opforfield, _cstring_menuisopen, _cstring_writingdata, _cstring_inlobby, _cstring_inprivateparty, _cstring_privatepartyhost, _cstring_privatepartyhost1, _cstring_aloneinparty, _cstring_adsjavelin, _cstring_weaplockblink, _cstring_weapattacktop, _cstring_weapattackdirect, _cstring_secondsastime, _cstring_tablelookup, _cstring_locstring, _cstring_localvarint, _cstring_localvarbool, _cstring_localvarfloat, _cstring_localvarstring, _cstring_timeleft, _cstring_secondsascountdo, _cstring_gamemsgwndactive, _cstring_int, _cstring_string, _cstring_float, _cstring_gametypename, _cstring_gametype, _cstring_gametypedescript, _cstring_scoreatrank, _cstring_friendsonline, _cstring_spectatingclient, _cstring_statrangeanybits, _cstring_keybinding, _cstring_actionslotusable, _cstring_hudfade, _cstring_maxrecommendedpl, _cstring_acceptinginvite, _cstring_isintermission, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of ui_expressions_obj:
SECTION .rdata


;Zero initialized global or static variables of ui_expressions_obj:
SECTION .bss
s_tempOperandValueAsString: resb 0x400
currentTempOperand: resb 0x80


;All cstrings:
SECTION .rdata
_cstring_:		db ";",0
_cstring_error_unknown_to:		db "ERROR: Unknown token ",27h,"%s",27h,0ah,0
_cstring_need_to_incremen:		db "Need to increment MAX_TOKENS_PER_STATEMENT - this statement has more than %i tokens",0ah,0
_cstring_probably_ui_expr:		db "Probably UI Expression error: %s(...",0ah,0
_cstring_ui_expression_er:		db "UI Expression error: Found a right parenthesis that doesn",27h,"t match any left parenthesis",0ah,0
_cstring_i:		db "%i",0
_cstring_s:		db "%s",0
_cstring_f:		db "%f",0
_cstring_noop:		db "NOOP",0
_cstring_1:		db ")",0
_cstring_2:		db "*",0
_cstring_3:		db "/",0
_cstring_4:		db "%",0
_cstring_5:		db "+",0
_cstring_6:		db "-",0
_cstring_7:		db "!",0
_cstring_8:		db "<",0
_cstring_9:		db "<=",0
_cstring_10:		db ">",0
_cstring_11:		db ">=",0
_cstring_12:		db "==",0
_cstring_13:		db "!=",0
_cstring_14:		db "&&",0
_cstring_15:		db "||",0
_cstring_16:		db "(",0
_cstring_17:		db ",",0
_cstring_18:		db "&",0
_cstring_19:		db "|",0
_cstring_20:		db "~",0
_cstring_21:		db "<<",0
_cstring_22:		db ">>",0
_cstring_sin:		db "sin",0
_cstring_cos:		db "cos",0
_cstring_min:		db "min",0
_cstring_max:		db "max",0
_cstring_milliseconds:		db "milliseconds",0
_cstring_dvarint:		db "dvarint",0
_cstring_dvarbool:		db "dvarbool",0
_cstring_dvarfloat:		db "dvarfloat",0
_cstring_dvarstring:		db "dvarstring",0
_cstring_stat:		db "stat",0
_cstring_ui_active:		db "ui_active",0
_cstring_flashbanged:		db "flashbanged",0
_cstring_scoped:		db "scoped",0
_cstring_scoreboard_visib:		db "scoreboard_visible",0
_cstring_inkillcam:		db "inkillcam",0
_cstring_player:		db "player",0
_cstring_selecting_locati:		db "selecting_location",0
_cstring_team:		db "team",0
_cstring_otherteam:		db "otherteam",0
_cstring_marinesfield:		db "marinesfield",0
_cstring_opforfield:		db "opforfield",0
_cstring_menuisopen:		db "menuisopen",0
_cstring_writingdata:		db "writingdata",0
_cstring_inlobby:		db "inlobby",0
_cstring_inprivateparty:		db "inprivateparty",0
_cstring_privatepartyhost:		db "privatepartyhost",0
_cstring_privatepartyhost1:		db "privatepartyhostinlobby",0
_cstring_aloneinparty:		db "aloneinparty",0
_cstring_adsjavelin:		db "adsjavelin",0
_cstring_weaplockblink:		db "weaplockblink",0
_cstring_weapattacktop:		db "weapattacktop",0
_cstring_weapattackdirect:		db "weapattackdirect",0
_cstring_secondsastime:		db "secondsastime",0
_cstring_tablelookup:		db "tablelookup",0
_cstring_locstring:		db "locstring",0
_cstring_localvarint:		db "localvarint",0
_cstring_localvarbool:		db "localvarbool",0
_cstring_localvarfloat:		db "localvarfloat",0
_cstring_localvarstring:		db "localvarstring",0
_cstring_timeleft:		db "timeleft",0
_cstring_secondsascountdo:		db "secondsascountdown",0
_cstring_gamemsgwndactive:		db "gamemsgwndactive",0
_cstring_int:		db "int",0
_cstring_string:		db "string",0
_cstring_float:		db "float",0
_cstring_gametypename:		db "gametypename",0
_cstring_gametype:		db "gametype",0
_cstring_gametypedescript:		db "gametypedescription",0
_cstring_scoreatrank:		db "scoreatrank",0
_cstring_friendsonline:		db "friendsonline",0
_cstring_spectatingclient:		db "spectatingclient",0
_cstring_statrangeanybits:		db "statrangeanybitsset",0
_cstring_keybinding:		db "keybinding",0
_cstring_actionslotusable:		db "actionslotusable",0
_cstring_hudfade:		db "hudfade",0
_cstring_maxrecommendedpl:		db "maxrecommendedplayers",0
_cstring_acceptinginvite:		db "acceptinginvite",0
_cstring_isintermission:		db "isintermission",0



;All constant floats and doubles:
SECTION .rdata

