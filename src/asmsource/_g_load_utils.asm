;Imports of g_load_utils:
	extern SL_GetString
	extern Com_Error
	extern Q_stricmp
	extern Com_Parse
	extern Q_strncpyz
	extern memcpy
	extern CM_EntityString
	extern Com_sprintf

;Exports of g_load_utils:
	global g_entityEndParsePoint
	global g_entityBeginParsePoint
	global _ZZ4vtosPKfE3str
	global _ZZ4vtosPKfE5index
	global G_NewString
	global G_ParseSpawnVars
	global G_GetEntityParsePoint
	global G_SetEntityParsePoint
	global G_ResetEntityParsePoint
	global vtos


SECTION .text


;G_NewString(char const*)
G_NewString:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x401c
	mov esi, [ebp+0x8]
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, esi
	repne scasb
	mov ebx, ecx
	not ebx
	cmp ebx, 0x4000
	ja G_NewString_10
	test ebx, ebx
	jz G_NewString_20
G_NewString_80:
	lea ecx, [ebp-0x4018]
	xor edx, edx
	lea edi, [ebx-0x1]
G_NewString_40:
	movzx eax, byte [esi+edx]
	cmp al, 0x5c
	jz G_NewString_30
G_NewString_50:
	mov [ecx], al
	add ecx, 0x1
G_NewString_70:
	add edx, 0x1
	cmp ebx, edx
	ja G_NewString_40
G_NewString_20:
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0x4018]
	mov [esp], eax
	call SL_GetString
	add esp, 0x401c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_NewString_30:
	cmp edx, edi
	jae G_NewString_50
	add edx, 0x1
	cmp byte [esi+edx], 0x6e
	jz G_NewString_60
	mov byte [ecx], 0x5c
	add ecx, 0x1
	jmp G_NewString_70
G_NewString_10:
	mov dword [esp+0xc], 0x4000
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_g_newstring_len_
	mov dword [esp], 0x2
	call Com_Error
	jmp G_NewString_80
G_NewString_60:
	mov byte [ecx], 0xa
	add ecx, 0x1
	jmp G_NewString_70


;G_ParseSpawnVars(SpawnVar*)
G_ParseSpawnVars:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x82c
	mov eax, [ebp+0x8]
	mov byte [eax], 0x0
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x208], 0x0
	mov dword [esp], g_entityBeginParsePoint
	call Com_Parse
	mov dword [esp+0x8], 0x400
	mov [esp+0x4], eax
	lea edx, [ebp-0x818]
	mov [esp], edx
	call Q_strncpyz
	mov eax, [g_entityBeginParsePoint]
	test eax, eax
	jz G_ParseSpawnVars_10
	mov [g_entityEndParsePoint], eax
	cmp byte [ebp-0x818], 0x7b
	jz G_ParseSpawnVars_20
	lea ecx, [ebp-0x818]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_g_parsespawnvars
	mov dword [esp], 0x2
	call Com_Error
G_ParseSpawnVars_20:
	mov eax, [ebp+0x8]
	add eax, 0x20c
	mov [ebp-0x824], eax
	jmp G_ParseSpawnVars_30
G_ParseSpawnVars_100:
	mov ebx, [ebp-0x824]
	add ebx, edx
	mov [esp+0x8], esi
	lea eax, [ebp-0x418]
	mov [esp+0x4], eax
	mov [esp], ebx
	call memcpy
	mov edx, [ebp+0x8]
	add edi, [edx+0x208]
	lea edx, [edi+0x1]
	mov ecx, [ebp+0x8]
	mov [ecx+0x208], edx
	mov eax, [ebp-0x820]
	mov [ecx+eax*8+0x8], ebx
	mov ecx, [ecx+0x4]
	mov [ebp-0x81c], ecx
	cld
	mov ecx, 0xffffffff
	lea edi, [ebp-0x818]
	xor eax, eax
	repne scasb
	mov esi, ecx
	not esi
	lea edi, [esi-0x1]
	lea eax, [edi+edx+0x1]
	cmp eax, 0x800
	jg G_ParseSpawnVars_40
G_ParseSpawnVars_110:
	mov ebx, [ebp-0x824]
	add ebx, edx
	mov [esp+0x8], esi
	lea edx, [ebp-0x818]
	mov [esp+0x4], edx
	mov [esp], ebx
	call memcpy
	mov ecx, [ebp+0x8]
	add edi, [ecx+0x208]
	lea eax, [edi+0x1]
	mov [ecx+0x208], eax
	mov eax, [ebp-0x81c]
	mov [ecx+eax*8+0xc], ebx
	add dword [ecx+0x4], 0x1
G_ParseSpawnVars_30:
	mov dword [esp], g_entityBeginParsePoint
	call Com_Parse
	mov dword [esp+0x8], 0x400
	mov [esp+0x4], eax
	lea edx, [ebp-0x418]
	mov [esp], edx
	call Q_strncpyz
	mov eax, [g_entityBeginParsePoint]
	test eax, eax
	jz G_ParseSpawnVars_50
	mov [g_entityEndParsePoint], eax
	cmp byte [ebp-0x418], 0x7d
	jz G_ParseSpawnVars_60
G_ParseSpawnVars_120:
	mov dword [esp], g_entityBeginParsePoint
	call Com_Parse
	mov dword [esp+0x8], 0x400
	mov [esp+0x4], eax
	lea ecx, [ebp-0x818]
	mov [esp], ecx
	call Q_strncpyz
	mov eax, [g_entityBeginParsePoint]
	test eax, eax
	jz G_ParseSpawnVars_70
	mov [g_entityEndParsePoint], eax
	cmp byte [ebp-0x818], 0x7d
	jz G_ParseSpawnVars_80
G_ParseSpawnVars_130:
	mov eax, [ebp+0x8]
	cmp dword [eax+0x4], 0x40
	jz G_ParseSpawnVars_90
G_ParseSpawnVars_140:
	mov edx, eax
G_ParseSpawnVars_150:
	mov edx, [edx+0x4]
	mov [ebp-0x820], edx
	cld
	mov ecx, 0xffffffff
	lea edi, [ebp-0x418]
	xor eax, eax
	repne scasb
	mov esi, ecx
	not esi
	lea edi, [esi-0x1]
	mov eax, [ebp+0x8]
	mov edx, [eax+0x208]
	lea eax, [edi+edx+0x1]
	cmp eax, 0x800
	jle G_ParseSpawnVars_100
	mov dword [esp+0x4], _cstring_g_addspawnvartok
	mov dword [esp], 0x2
	call Com_Error
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x208]
	jmp G_ParseSpawnVars_100
G_ParseSpawnVars_40:
	mov dword [esp+0x4], _cstring_g_addspawnvartok
	mov dword [esp], 0x2
	call Com_Error
	mov eax, [ebp+0x8]
	mov edx, [eax+0x208]
	jmp G_ParseSpawnVars_110
G_ParseSpawnVars_50:
	mov dword [esp+0x4], _cstring_g_parsespawnvars1
	mov dword [esp], 0x2
	call Com_Error
	cmp byte [ebp-0x418], 0x7d
	jnz G_ParseSpawnVars_120
G_ParseSpawnVars_60:
	mov edx, [ebp+0x8]
	mov byte [edx], 0x1
	mov eax, 0x1
G_ParseSpawnVars_10:
	add esp, 0x82c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
G_ParseSpawnVars_70:
	mov dword [esp+0x4], _cstring_g_parsespawnvars1
	mov dword [esp], 0x2
	call Com_Error
	cmp byte [ebp-0x818], 0x7d
	jnz G_ParseSpawnVars_130
G_ParseSpawnVars_80:
	mov dword [esp+0x4], _cstring_g_parsespawnvars2
	mov dword [esp], 0x2
	call Com_Error
	mov eax, [ebp+0x8]
	cmp dword [eax+0x4], 0x40
	jnz G_ParseSpawnVars_140
G_ParseSpawnVars_90:
	mov dword [esp+0x4], _cstring_g_parsespawnvars3
	mov dword [esp], 0x2
	call Com_Error
	mov edx, [ebp+0x8]
	jmp G_ParseSpawnVars_150
	add [eax], al


;G_GetEntityParsePoint()
G_GetEntityParsePoint:
	push ebp
	mov ebp, esp
	mov eax, [g_entityEndParsePoint]
	pop ebp
	ret
	add [eax], al


;G_SetEntityParsePoint(char const*)
G_SetEntityParsePoint:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov [g_entityBeginParsePoint], eax
	mov [g_entityEndParsePoint], eax
	pop ebp
	ret


;G_ResetEntityParsePoint()
G_ResetEntityParsePoint:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	call CM_EntityString
	mov [g_entityBeginParsePoint], eax
	mov [g_entityEndParsePoint], eax
	leave
	ret
	nop


;vtos(float const*)
vtos:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov edx, [ebp+0x8]
	mov eax, [_ZZ4vtosPKfE5index]
	mov ecx, eax
	shl ecx, 0x5
	lea ebx, [ecx+_ZZ4vtosPKfE3str]
	add eax, 0x1
	and eax, 0x7
	mov [_ZZ4vtosPKfE5index], eax
	cvttss2si eax, [edx+0x8]
	mov [esp+0x14], eax
	cvttss2si eax, [edx+0x4]
	mov [esp+0x10], eax
	cvttss2si eax, [edx]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_i_i_i
	mov dword [esp+0x4], 0x20
	mov [esp], ebx
	call Com_sprintf
	mov eax, ebx
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	nop


;Initialized global or static variables of g_load_utils:
SECTION .data


;Initialized constant data of g_load_utils:
SECTION .rdata


;Zero initialized global or static variables of g_load_utils:
SECTION .bss
g_entityEndParsePoint: resb 0x4
g_entityBeginParsePoint: resb 0x1c
_ZZ4vtosPKfE3str: resb 0x100
_ZZ4vtosPKfE5index: resb 0x60


;All cstrings:
SECTION .rdata
_cstring_g_newstring_len_:		db 15h,"G_NewString: len = %i > %i",0ah,0
_cstring_g_parsespawnvars:		db 15h,"G_ParseSpawnVars: found %s when expecting {",0
_cstring_g_addspawnvartok:		db 15h,"G_AddSpawnVarToken: MAX_SPAWN_VARS",0
_cstring_g_parsespawnvars1:		db 15h,"G_ParseSpawnVars: EOF without closing brace",0
_cstring_g_parsespawnvars2:		db 15h,"G_ParseSpawnVars: closing brace without data",0
_cstring_g_parsespawnvars3:		db 15h,"G_ParseSpawnVars: MAX_SPAWN_VARS",0
_cstring_i_i_i:		db "(%i %i %i)",0



;All constant floats and doubles:
SECTION .rdata

