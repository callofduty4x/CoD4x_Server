;Imports of ui_localvars:
	extern strcmp
	extern atoi
	extern FreeStringInternal
	extern atof
	extern memset
	extern Com_sprintf
	extern CopyStringInternal

;Exports of ui_localvars:
	global UILocalVar_Find
	global UILocalVar_Init
	global UILocalVar_GetInt
	global UILocalVar_SetInt
	global UILocalVar_GetBool
	global UILocalVar_SetBool
	global UILocalVar_GetFloat
	global UILocalVar_SetFloat
	global UILocalVar_Shutdown
	global UILocalVar_GetString
	global UILocalVar_SetString
	global UILocalVar_FindOrCreate


SECTION .text


;UILocalVar_Find(UILocalVarContext*, char const*)
UILocalVar_Find:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edx, [ebp+0xc]
	movzx eax, byte [edx]
	test al, al
	jnz UILocalVar_Find_10
	xor ecx, ecx
	xor eax, eax
UILocalVar_Find_60:
	add eax, ecx
	movzx edi, al
	mov ebx, edi
UILocalVar_Find_40:
	lea eax, [ebx+ebx*2]
	mov edx, [ebp+0x8]
	lea esi, [edx+eax*4]
	mov eax, [esi+0x4]
	test eax, eax
	jz UILocalVar_Find_20
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], eax
	call strcmp
	test eax, eax
	jz UILocalVar_Find_30
	lea eax, [ebx+0x1]
	movzx ebx, al
	cmp edi, ebx
	jnz UILocalVar_Find_40
UILocalVar_Find_20:
	xor eax, eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
UILocalVar_Find_10:
	xor ecx, ecx
	mov edx, 0x77
	mov ebx, [ebp+0xc]
UILocalVar_Find_50:
	movsx eax, al
	imul eax, edx
	add ecx, eax
	movzx eax, byte [ebx+edx-0x76]
	add edx, 0x1
	test al, al
	jnz UILocalVar_Find_50
	mov eax, ecx
	shr eax, 0x8
	jmp UILocalVar_Find_60
UILocalVar_Find_30:
	mov eax, esi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	add [eax], al


;UILocalVar_Init(UILocalVarContext*)
UILocalVar_Init:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;UILocalVar_GetInt(UILocalVar const*)
UILocalVar_GetInt:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [eax]
	test edx, edx
	jz UILocalVar_GetInt_10
	sub edx, 0x1
	jz UILocalVar_GetInt_20
	mov eax, [eax+0x8]
	mov [ebp+0x8], eax
	pop ebp
	jmp atoi
UILocalVar_GetInt_10:
	mov eax, [eax+0x8]
	pop ebp
	ret
UILocalVar_GetInt_20:
	cvttss2si eax, [eax+0x8]
	pop ebp
	ret
	nop


;UILocalVar_SetInt(UILocalVar const*, int)
UILocalVar_SetInt:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	cmp dword [ebx], 0x2
	jz UILocalVar_SetInt_10
	mov dword [ebx], 0x0
	mov eax, [ebp+0xc]
	mov [ebx+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
UILocalVar_SetInt_10:
	mov eax, [ebx+0x8]
	mov [esp], eax
	call FreeStringInternal
	mov dword [ebx], 0x0
	mov eax, [ebp+0xc]
	mov [ebx+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;UILocalVar_GetBool(UILocalVar const*)
UILocalVar_GetBool:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [ebp+0x8]
	mov eax, [edx]
	test eax, eax
	jz UILocalVar_GetBool_10
	sub eax, 0x1
	jz UILocalVar_GetBool_20
	mov eax, [edx+0x8]
	mov [esp], eax
	call atoi
	test eax, eax
	setnz al
	movzx eax, al
	leave
	ret
UILocalVar_GetBool_10:
	xor eax, eax
	cmp dword [edx+0x8], 0x0
	setnz al
	leave
	ret
UILocalVar_GetBool_20:
	pxor xmm0, xmm0
	ucomiss xmm0, [edx+0x8]
	setnz al
	setp dl
	or al, dl
	movzx eax, al
	leave
	ret
	nop


;UILocalVar_SetBool(UILocalVar const*, unsigned char)
UILocalVar_SetBool:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	movzx esi, byte [ebp+0xc]
	cmp dword [ebx], 0x2
	jz UILocalVar_SetBool_10
	mov dword [ebx], 0x0
	mov edx, esi
	movzx eax, dl
	mov [ebx+0x8], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
UILocalVar_SetBool_10:
	mov eax, [ebx+0x8]
	mov [esp], eax
	call FreeStringInternal
	mov dword [ebx], 0x0
	mov edx, esi
	movzx eax, dl
	mov [ebx+0x8], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;UILocalVar_GetFloat(UILocalVar const*)
UILocalVar_GetFloat:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov edx, [ebp+0x8]
	mov eax, [edx]
	test eax, eax
	jz UILocalVar_GetFloat_10
	sub eax, 0x1
	jz UILocalVar_GetFloat_20
	mov eax, [edx+0x8]
	mov [esp], eax
	call atof
	fstp qword [ebp-0x10]
	cvtsd2ss xmm0, [ebp-0x10]
	movss [ebp-0x14], xmm0
	fld dword [ebp-0x14]
	leave
	ret
UILocalVar_GetFloat_10:
	cvtsi2ss xmm0, dword [edx+0x8]
	movss [ebp-0x14], xmm0
	fld dword [ebp-0x14]
	leave
	ret
UILocalVar_GetFloat_20:
	movss xmm0, dword [edx+0x8]
	movss [ebp-0x14], xmm0
	fld dword [ebp-0x14]
	leave
	ret
	nop


;UILocalVar_SetFloat(UILocalVar const*, float)
UILocalVar_SetFloat:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	cmp dword [ebx], 0x2
	jz UILocalVar_SetFloat_10
	mov dword [ebx], 0x1
	mov eax, [ebp+0xc]
	mov [ebx+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
UILocalVar_SetFloat_10:
	mov eax, [ebx+0x8]
	mov [esp], eax
	call FreeStringInternal
	mov dword [ebx], 0x1
	mov eax, [ebp+0xc]
	mov [ebx+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;UILocalVar_Shutdown(UILocalVarContext*)
UILocalVar_Shutdown:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [ebp+0x8]
	xor edi, edi
	mov esi, ebx
	jmp UILocalVar_Shutdown_10
UILocalVar_Shutdown_40:
	mov eax, [ebx+0x4]
	mov [esp], eax
	call FreeStringInternal
UILocalVar_Shutdown_30:
	add edi, 0x1
	add esi, 0xc
	add ebx, 0xc
	cmp edi, 0x100
	jz UILocalVar_Shutdown_20
UILocalVar_Shutdown_10:
	mov eax, [ebx+0x4]
	test eax, eax
	jz UILocalVar_Shutdown_30
	cmp dword [esi], 0x2
	jnz UILocalVar_Shutdown_40
	mov eax, [esi+0x8]
	mov [esp], eax
	call FreeStringInternal
	jmp UILocalVar_Shutdown_40
UILocalVar_Shutdown_20:
	mov dword [esp+0x8], 0xc00
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call memset
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;UILocalVar_GetString(UILocalVar const*, char*, int)
UILocalVar_GetString:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov eax, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov edx, [eax]
	test edx, edx
	jz UILocalVar_GetString_10
	sub edx, 0x1
	jz UILocalVar_GetString_20
	mov eax, [eax+0x8]
	add esp, 0x24
	pop ebx
	pop ebp
	ret
UILocalVar_GetString_10:
	mov eax, [eax+0x8]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_i
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov [esp], ebx
	call Com_sprintf
	mov eax, ebx
	add esp, 0x24
	pop ebx
	pop ebp
	ret
UILocalVar_GetString_20:
	cvtss2sd xmm0, [eax+0x8]
	movsd [esp+0xc], xmm0
	mov dword [esp+0x8], _cstring_g
	mov edx, [ebp+0x10]
	mov [esp+0x4], edx
	mov [esp], ebx
	call Com_sprintf
	mov eax, ebx
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	nop


;UILocalVar_SetString(UILocalVar const*, char const*)
UILocalVar_SetString:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	cmp dword [ebx], 0x2
	jz UILocalVar_SetString_10
	mov dword [ebx], 0x2
	mov eax, [ebp+0xc]
	mov [esp], eax
	call CopyStringInternal
	mov [ebx+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
UILocalVar_SetString_10:
	mov eax, [ebx+0x8]
	mov [esp], eax
	call FreeStringInternal
	mov dword [ebx], 0x2
	mov eax, [ebp+0xc]
	mov [esp], eax
	call CopyStringInternal
	mov [ebx+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;UILocalVar_FindOrCreate(UILocalVarContext*, char const*)
UILocalVar_FindOrCreate:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edx, [ebp+0xc]
	movzx eax, byte [edx]
	test al, al
	jnz UILocalVar_FindOrCreate_10
	xor ecx, ecx
	xor eax, eax
UILocalVar_FindOrCreate_60:
	lea eax, [ecx+eax]
	movzx edi, al
	mov ebx, edi
UILocalVar_FindOrCreate_40:
	lea eax, [ebx+ebx*2]
	mov edx, [ebp+0x8]
	lea esi, [edx+eax*4]
	mov eax, [esi+0x4]
	test eax, eax
	jz UILocalVar_FindOrCreate_20
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], eax
	call strcmp
	test eax, eax
	jz UILocalVar_FindOrCreate_30
	lea eax, [ebx+0x1]
	movzx ebx, al
	cmp edi, ebx
	jnz UILocalVar_FindOrCreate_40
	mov eax, [ebp+0x8]
UILocalVar_FindOrCreate_70:
	lea ebx, [ebx+ebx*2]
	lea ebx, [eax+ebx*4]
	mov edx, [ebp+0xc]
	mov [esp], edx
	call CopyStringInternal
	mov [ebx+0x4], eax
	mov dword [ebx], 0x0
	mov dword [ebx+0x8], 0x0
	mov eax, ebx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
UILocalVar_FindOrCreate_10:
	xor ecx, ecx
	mov edx, 0x77
	mov ebx, [ebp+0xc]
UILocalVar_FindOrCreate_50:
	movsx eax, al
	imul eax, edx
	add ecx, eax
	movzx eax, byte [ebx+edx-0x76]
	add edx, 0x1
	test al, al
	jnz UILocalVar_FindOrCreate_50
	mov eax, ecx
	shr eax, 0x8
	jmp UILocalVar_FindOrCreate_60
UILocalVar_FindOrCreate_20:
	mov eax, edx
	jmp UILocalVar_FindOrCreate_70
UILocalVar_FindOrCreate_30:
	mov eax, esi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Initialized global or static variables of ui_localvars:
SECTION .data


;Initialized constant data of ui_localvars:
SECTION .rdata


;Zero initialized global or static variables of ui_localvars:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_i:		db "%i",0
_cstring_g:		db "%g",0



;All constant floats and doubles:
SECTION .rdata

