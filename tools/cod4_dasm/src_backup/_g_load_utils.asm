;Imports of g_load_utils:
	extern _Z12SL_GetStringPKcj
	extern _Z9Com_Error11errorParm_tPKcz
	extern _Z9I_stricmpPKcS0_
	extern _Z9Com_ParsePPKc
	extern _Z10I_strncpyzPcPKci
	extern memcpy
	extern _Z15CM_EntityStringv
	extern _Z11Com_sprintfPciPKcz

;Exports of g_load_utils:
	global g_entityEndParsePoint
	global g_entityBeginParsePoint
	global _ZZ4vtosPKfE3str
	global _ZZ4vtosPKfE5index
	global _Z11G_NewStringPKc
	global _Z13G_SpawnStringPK8SpawnVarPKcS3_PS3_
	global _Z16G_ParseSpawnVarsP8SpawnVar
	global _Z21G_GetEntityParsePointv
	global _Z21G_SetEntityParsePointPKc
	global _Z23G_ResetEntityParsePointv
	global _Z4vtosPKf


SECTION .text


;G_NewString(char const*)
_Z11G_NewStringPKc:
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
	ja _Z11G_NewStringPKc_10
	test ebx, ebx
	jz _Z11G_NewStringPKc_20
_Z11G_NewStringPKc_80:
	lea ecx, [ebp-0x4018]
	xor edx, edx
	lea edi, [ebx-0x1]
_Z11G_NewStringPKc_40:
	movzx eax, byte [esi+edx]
	cmp al, 0x5c
	jz _Z11G_NewStringPKc_30
_Z11G_NewStringPKc_50:
	mov [ecx], al
	add ecx, 0x1
_Z11G_NewStringPKc_70:
	add edx, 0x1
	cmp ebx, edx
	ja _Z11G_NewStringPKc_40
_Z11G_NewStringPKc_20:
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0x4018]
	mov [esp], eax
	call _Z12SL_GetStringPKcj
	add esp, 0x401c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z11G_NewStringPKc_30:
	cmp edx, edi
	jae _Z11G_NewStringPKc_50
	add edx, 0x1
	cmp byte [esi+edx], 0x6e
	jz _Z11G_NewStringPKc_60
	mov byte [ecx], 0x5c
	add ecx, 0x1
	jmp _Z11G_NewStringPKc_70
_Z11G_NewStringPKc_10:
	mov dword [esp+0xc], 0x4000
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_g_newstring_len_
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z11G_NewStringPKc_80
_Z11G_NewStringPKc_60:
	mov byte [ecx], 0xa
	add ecx, 0x1
	jmp _Z11G_NewStringPKc_70


;G_SpawnString(SpawnVar const*, char const*, char const*, char const**)
_Z13G_SpawnStringPK8SpawnVarPKcS3_PS3_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	mov eax, [edi+0x4]
	test eax, eax
	jg _Z13G_SpawnStringPK8SpawnVarPKcS3_PS3__10
_Z13G_SpawnStringPK8SpawnVarPKcS3_PS3__30:
	mov edx, [ebp+0x10]
	mov eax, [ebp+0x14]
	mov [eax], edx
	xor eax, eax
_Z13G_SpawnStringPK8SpawnVarPKcS3_PS3__50:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z13G_SpawnStringPK8SpawnVarPKcS3_PS3__10:
	mov ebx, edi
	xor esi, esi
	jmp _Z13G_SpawnStringPK8SpawnVarPKcS3_PS3__20
_Z13G_SpawnStringPK8SpawnVarPKcS3_PS3__40:
	add esi, 0x1
	add ebx, 0x8
	cmp esi, [edi+0x4]
	jge _Z13G_SpawnStringPK8SpawnVarPKcS3_PS3__30
_Z13G_SpawnStringPK8SpawnVarPKcS3_PS3__20:
	mov eax, [ebx+0x8]
	mov [esp+0x4], eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jnz _Z13G_SpawnStringPK8SpawnVarPKcS3_PS3__40
	mov eax, [edi+esi*8+0xc]
	mov edx, [ebp+0x14]
	mov [edx], eax
	mov eax, 0x1
	jmp _Z13G_SpawnStringPK8SpawnVarPKcS3_PS3__50


;G_ParseSpawnVars(SpawnVar*)
_Z16G_ParseSpawnVarsP8SpawnVar:
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
	call _Z9Com_ParsePPKc
	mov dword [esp+0x8], 0x400
	mov [esp+0x4], eax
	lea edx, [ebp-0x818]
	mov [esp], edx
	call _Z10I_strncpyzPcPKci
	mov eax, [g_entityBeginParsePoint]
	test eax, eax
	jz _Z16G_ParseSpawnVarsP8SpawnVar_10
	mov [g_entityEndParsePoint], eax
	cmp byte [ebp-0x818], 0x7b
	jz _Z16G_ParseSpawnVarsP8SpawnVar_20
	lea ecx, [ebp-0x818]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_g_parsespawnvars
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z16G_ParseSpawnVarsP8SpawnVar_20:
	mov eax, [ebp+0x8]
	add eax, 0x20c
	mov [ebp-0x824], eax
	jmp _Z16G_ParseSpawnVarsP8SpawnVar_30
_Z16G_ParseSpawnVarsP8SpawnVar_100:
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
	jg _Z16G_ParseSpawnVarsP8SpawnVar_40
_Z16G_ParseSpawnVarsP8SpawnVar_110:
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
_Z16G_ParseSpawnVarsP8SpawnVar_30:
	mov dword [esp], g_entityBeginParsePoint
	call _Z9Com_ParsePPKc
	mov dword [esp+0x8], 0x400
	mov [esp+0x4], eax
	lea edx, [ebp-0x418]
	mov [esp], edx
	call _Z10I_strncpyzPcPKci
	mov eax, [g_entityBeginParsePoint]
	test eax, eax
	jz _Z16G_ParseSpawnVarsP8SpawnVar_50
	mov [g_entityEndParsePoint], eax
	cmp byte [ebp-0x418], 0x7d
	jz _Z16G_ParseSpawnVarsP8SpawnVar_60
_Z16G_ParseSpawnVarsP8SpawnVar_120:
	mov dword [esp], g_entityBeginParsePoint
	call _Z9Com_ParsePPKc
	mov dword [esp+0x8], 0x400
	mov [esp+0x4], eax
	lea ecx, [ebp-0x818]
	mov [esp], ecx
	call _Z10I_strncpyzPcPKci
	mov eax, [g_entityBeginParsePoint]
	test eax, eax
	jz _Z16G_ParseSpawnVarsP8SpawnVar_70
	mov [g_entityEndParsePoint], eax
	cmp byte [ebp-0x818], 0x7d
	jz _Z16G_ParseSpawnVarsP8SpawnVar_80
_Z16G_ParseSpawnVarsP8SpawnVar_130:
	mov eax, [ebp+0x8]
	cmp dword [eax+0x4], 0x40
	jz _Z16G_ParseSpawnVarsP8SpawnVar_90
_Z16G_ParseSpawnVarsP8SpawnVar_140:
	mov edx, eax
_Z16G_ParseSpawnVarsP8SpawnVar_150:
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
	jle _Z16G_ParseSpawnVarsP8SpawnVar_100
	mov dword [esp+0x4], _cstring_g_addspawnvartok
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x208]
	jmp _Z16G_ParseSpawnVarsP8SpawnVar_100
_Z16G_ParseSpawnVarsP8SpawnVar_40:
	mov dword [esp+0x4], _cstring_g_addspawnvartok
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov eax, [ebp+0x8]
	mov edx, [eax+0x208]
	jmp _Z16G_ParseSpawnVarsP8SpawnVar_110
_Z16G_ParseSpawnVarsP8SpawnVar_50:
	mov dword [esp+0x4], _cstring_g_parsespawnvars1
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	cmp byte [ebp-0x418], 0x7d
	jnz _Z16G_ParseSpawnVarsP8SpawnVar_120
_Z16G_ParseSpawnVarsP8SpawnVar_60:
	mov edx, [ebp+0x8]
	mov byte [edx], 0x1
	mov eax, 0x1
_Z16G_ParseSpawnVarsP8SpawnVar_10:
	add esp, 0x82c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16G_ParseSpawnVarsP8SpawnVar_70:
	mov dword [esp+0x4], _cstring_g_parsespawnvars1
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	cmp byte [ebp-0x818], 0x7d
	jnz _Z16G_ParseSpawnVarsP8SpawnVar_130
_Z16G_ParseSpawnVarsP8SpawnVar_80:
	mov dword [esp+0x4], _cstring_g_parsespawnvars2
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov eax, [ebp+0x8]
	cmp dword [eax+0x4], 0x40
	jnz _Z16G_ParseSpawnVarsP8SpawnVar_140
_Z16G_ParseSpawnVarsP8SpawnVar_90:
	mov dword [esp+0x4], _cstring_g_parsespawnvars3
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov edx, [ebp+0x8]
	jmp _Z16G_ParseSpawnVarsP8SpawnVar_150
	add [eax], al


;G_GetEntityParsePoint()
_Z21G_GetEntityParsePointv:
	push ebp
	mov ebp, esp
	mov eax, [g_entityEndParsePoint]
	pop ebp
	ret
	add [eax], al


;G_SetEntityParsePoint(char const*)
_Z21G_SetEntityParsePointPKc:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov [g_entityBeginParsePoint], eax
	mov [g_entityEndParsePoint], eax
	pop ebp
	ret


;G_ResetEntityParsePoint()
_Z23G_ResetEntityParsePointv:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	call _Z15CM_EntityStringv
	mov [g_entityBeginParsePoint], eax
	mov [g_entityEndParsePoint], eax
	leave
	ret
	nop


;vtos(float const*)
_Z4vtosPKf:
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
	call _Z11Com_sprintfPciPKcz
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
_cstring_g_newstring_len_:		db 015h,"G_NewString: len = %i > %i",0ah,0
_cstring_g_parsespawnvars:		db 015h,"G_ParseSpawnVars: found %s when expecting {",0
_cstring_g_addspawnvartok:		db 015h,"G_AddSpawnVarToken: MAX_SPAWN_VARS",0
_cstring_g_parsespawnvars1:		db 015h,"G_ParseSpawnVars: EOF without closing brace",0
_cstring_g_parsespawnvars2:		db 015h,"G_ParseSpawnVars: closing brace without data",0
_cstring_g_parsespawnvars3:		db 015h,"G_ParseSpawnVars: MAX_SPAWN_VARS",0
_cstring_i_i_i:		db "(%i %i %i)",0



;All constant floats and doubles:
SECTION .rdata

