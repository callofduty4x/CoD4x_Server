;Imports of ui_localvars:
	extern strcmp
	extern atoi
	extern FreeStringInternal
	extern atof
	extern memset
	extern _Z11Com_sprintfPciPKcz
	extern CopyStringInternal

;Exports of ui_localvars:
	global _Z15UILocalVar_FindP17UILocalVarContextPKc
	global _Z15UILocalVar_InitP17UILocalVarContext
	global _Z17UILocalVar_GetIntPK10UILocalVar
	global _Z17UILocalVar_SetIntPK10UILocalVari
	global _Z18UILocalVar_GetBoolPK10UILocalVar
	global _Z18UILocalVar_SetBoolPK10UILocalVarh
	global _Z19UILocalVar_GetFloatPK10UILocalVar
	global _Z19UILocalVar_SetFloatPK10UILocalVarf
	global _Z19UILocalVar_ShutdownP17UILocalVarContext
	global _Z20UILocalVar_GetStringPK10UILocalVarPci
	global _Z20UILocalVar_SetStringPK10UILocalVarPKc
	global _Z23UILocalVar_FindOrCreateP17UILocalVarContextPKc


SECTION .text


;UILocalVar_Find(UILocalVarContext*, char const*)
_Z15UILocalVar_FindP17UILocalVarContextPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edx, [ebp+0xc]
	movzx eax, byte [edx]
	test al, al
	jnz _Z15UILocalVar_FindP17UILocalVarContextPKc_10
	xor ecx, ecx
	xor eax, eax
_Z15UILocalVar_FindP17UILocalVarContextPKc_60:
	add eax, ecx
	movzx edi, al
	mov ebx, edi
_Z15UILocalVar_FindP17UILocalVarContextPKc_40:
	lea eax, [ebx+ebx*2]
	mov edx, [ebp+0x8]
	lea esi, [edx+eax*4]
	mov eax, [esi+0x4]
	test eax, eax
	jz _Z15UILocalVar_FindP17UILocalVarContextPKc_20
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], eax
	call strcmp
	test eax, eax
	jz _Z15UILocalVar_FindP17UILocalVarContextPKc_30
	lea eax, [ebx+0x1]
	movzx ebx, al
	cmp edi, ebx
	jnz _Z15UILocalVar_FindP17UILocalVarContextPKc_40
_Z15UILocalVar_FindP17UILocalVarContextPKc_20:
	xor eax, eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15UILocalVar_FindP17UILocalVarContextPKc_10:
	xor ecx, ecx
	mov edx, 0x77
	mov ebx, [ebp+0xc]
_Z15UILocalVar_FindP17UILocalVarContextPKc_50:
	movsx eax, al
	imul eax, edx
	add ecx, eax
	movzx eax, byte [ebx+edx-0x76]
	add edx, 0x1
	test al, al
	jnz _Z15UILocalVar_FindP17UILocalVarContextPKc_50
	mov eax, ecx
	shr eax, 0x8
	jmp _Z15UILocalVar_FindP17UILocalVarContextPKc_60
_Z15UILocalVar_FindP17UILocalVarContextPKc_30:
	mov eax, esi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	add [eax], al


;UILocalVar_Init(UILocalVarContext*)
_Z15UILocalVar_InitP17UILocalVarContext:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;UILocalVar_GetInt(UILocalVar const*)
_Z17UILocalVar_GetIntPK10UILocalVar:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov edx, [eax]
	test edx, edx
	jz _Z17UILocalVar_GetIntPK10UILocalVar_10
	sub edx, 0x1
	jz _Z17UILocalVar_GetIntPK10UILocalVar_20
	mov eax, [eax+0x8]
	mov [ebp+0x8], eax
	pop ebp
	jmp atoi
_Z17UILocalVar_GetIntPK10UILocalVar_10:
	mov eax, [eax+0x8]
	pop ebp
	ret
_Z17UILocalVar_GetIntPK10UILocalVar_20:
	cvttss2si eax, [eax+0x8]
	pop ebp
	ret
	nop


;UILocalVar_SetInt(UILocalVar const*, int)
_Z17UILocalVar_SetIntPK10UILocalVari:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	cmp dword [ebx], 0x2
	jz _Z17UILocalVar_SetIntPK10UILocalVari_10
	mov dword [ebx], 0x0
	mov eax, [ebp+0xc]
	mov [ebx+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z17UILocalVar_SetIntPK10UILocalVari_10:
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
_Z18UILocalVar_GetBoolPK10UILocalVar:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [ebp+0x8]
	mov eax, [edx]
	test eax, eax
	jz _Z18UILocalVar_GetBoolPK10UILocalVar_10
	sub eax, 0x1
	jz _Z18UILocalVar_GetBoolPK10UILocalVar_20
	mov eax, [edx+0x8]
	mov [esp], eax
	call atoi
	test eax, eax
	setnz al
	movzx eax, al
	leave
	ret
_Z18UILocalVar_GetBoolPK10UILocalVar_10:
	xor eax, eax
	cmp dword [edx+0x8], 0x0
	setnz al
	leave
	ret
_Z18UILocalVar_GetBoolPK10UILocalVar_20:
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
_Z18UILocalVar_SetBoolPK10UILocalVarh:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0x8]
	movzx esi, byte [ebp+0xc]
	cmp dword [ebx], 0x2
	jz _Z18UILocalVar_SetBoolPK10UILocalVarh_10
	mov dword [ebx], 0x0
	mov edx, esi
	movzx eax, dl
	mov [ebx+0x8], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z18UILocalVar_SetBoolPK10UILocalVarh_10:
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
_Z19UILocalVar_GetFloatPK10UILocalVar:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov edx, [ebp+0x8]
	mov eax, [edx]
	test eax, eax
	jz _Z19UILocalVar_GetFloatPK10UILocalVar_10
	sub eax, 0x1
	jz _Z19UILocalVar_GetFloatPK10UILocalVar_20
	mov eax, [edx+0x8]
	mov [esp], eax
	call atof
	fstp qword [ebp-0x10]
	cvtsd2ss xmm0, [ebp-0x10]
	movss [ebp-0x14], xmm0
	fld dword [ebp-0x14]
	leave
	ret
_Z19UILocalVar_GetFloatPK10UILocalVar_10:
	cvtsi2ss xmm0, dword [edx+0x8]
	movss [ebp-0x14], xmm0
	fld dword [ebp-0x14]
	leave
	ret
_Z19UILocalVar_GetFloatPK10UILocalVar_20:
	movss xmm0, dword [edx+0x8]
	movss [ebp-0x14], xmm0
	fld dword [ebp-0x14]
	leave
	ret
	nop


;UILocalVar_SetFloat(UILocalVar const*, float)
_Z19UILocalVar_SetFloatPK10UILocalVarf:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	cmp dword [ebx], 0x2
	jz _Z19UILocalVar_SetFloatPK10UILocalVarf_10
	mov dword [ebx], 0x1
	mov eax, [ebp+0xc]
	mov [ebx+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z19UILocalVar_SetFloatPK10UILocalVarf_10:
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
_Z19UILocalVar_ShutdownP17UILocalVarContext:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [ebp+0x8]
	xor edi, edi
	mov esi, ebx
	jmp _Z19UILocalVar_ShutdownP17UILocalVarContext_10
_Z19UILocalVar_ShutdownP17UILocalVarContext_40:
	mov eax, [ebx+0x4]
	mov [esp], eax
	call FreeStringInternal
_Z19UILocalVar_ShutdownP17UILocalVarContext_30:
	add edi, 0x1
	add esi, 0xc
	add ebx, 0xc
	cmp edi, 0x100
	jz _Z19UILocalVar_ShutdownP17UILocalVarContext_20
_Z19UILocalVar_ShutdownP17UILocalVarContext_10:
	mov eax, [ebx+0x4]
	test eax, eax
	jz _Z19UILocalVar_ShutdownP17UILocalVarContext_30
	cmp dword [esi], 0x2
	jnz _Z19UILocalVar_ShutdownP17UILocalVarContext_40
	mov eax, [esi+0x8]
	mov [esp], eax
	call FreeStringInternal
	jmp _Z19UILocalVar_ShutdownP17UILocalVarContext_40
_Z19UILocalVar_ShutdownP17UILocalVarContext_20:
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
_Z20UILocalVar_GetStringPK10UILocalVarPci:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov eax, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov edx, [eax]
	test edx, edx
	jz _Z20UILocalVar_GetStringPK10UILocalVarPci_10
	sub edx, 0x1
	jz _Z20UILocalVar_GetStringPK10UILocalVarPci_20
	mov eax, [eax+0x8]
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_Z20UILocalVar_GetStringPK10UILocalVarPci_10:
	mov eax, [eax+0x8]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_i
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
	mov eax, ebx
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_Z20UILocalVar_GetStringPK10UILocalVarPci_20:
	cvtss2sd xmm0, [eax+0x8]
	movsd [esp+0xc], xmm0
	mov dword [esp+0x8], _cstring_g
	mov edx, [ebp+0x10]
	mov [esp+0x4], edx
	mov [esp], ebx
	call _Z11Com_sprintfPciPKcz
	mov eax, ebx
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	nop


;UILocalVar_SetString(UILocalVar const*, char const*)
_Z20UILocalVar_SetStringPK10UILocalVarPKc:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	cmp dword [ebx], 0x2
	jz _Z20UILocalVar_SetStringPK10UILocalVarPKc_10
	mov dword [ebx], 0x2
	mov eax, [ebp+0xc]
	mov [esp], eax
	call CopyStringInternal
	mov [ebx+0x8], eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z20UILocalVar_SetStringPK10UILocalVarPKc_10:
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
_Z23UILocalVar_FindOrCreateP17UILocalVarContextPKc:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edx, [ebp+0xc]
	movzx eax, byte [edx]
	test al, al
	jnz _Z23UILocalVar_FindOrCreateP17UILocalVarContextPKc_10
	xor ecx, ecx
	xor eax, eax
_Z23UILocalVar_FindOrCreateP17UILocalVarContextPKc_60:
	lea eax, [ecx+eax]
	movzx edi, al
	mov ebx, edi
_Z23UILocalVar_FindOrCreateP17UILocalVarContextPKc_40:
	lea eax, [ebx+ebx*2]
	mov edx, [ebp+0x8]
	lea esi, [edx+eax*4]
	mov eax, [esi+0x4]
	test eax, eax
	jz _Z23UILocalVar_FindOrCreateP17UILocalVarContextPKc_20
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], eax
	call strcmp
	test eax, eax
	jz _Z23UILocalVar_FindOrCreateP17UILocalVarContextPKc_30
	lea eax, [ebx+0x1]
	movzx ebx, al
	cmp edi, ebx
	jnz _Z23UILocalVar_FindOrCreateP17UILocalVarContextPKc_40
	mov eax, [ebp+0x8]
_Z23UILocalVar_FindOrCreateP17UILocalVarContextPKc_70:
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
_Z23UILocalVar_FindOrCreateP17UILocalVarContextPKc_10:
	xor ecx, ecx
	mov edx, 0x77
	mov ebx, [ebp+0xc]
_Z23UILocalVar_FindOrCreateP17UILocalVarContextPKc_50:
	movsx eax, al
	imul eax, edx
	add ecx, eax
	movzx eax, byte [ebx+edx-0x76]
	add edx, 0x1
	test al, al
	jnz _Z23UILocalVar_FindOrCreateP17UILocalVarContextPKc_50
	mov eax, ecx
	shr eax, 0x8
	jmp _Z23UILocalVar_FindOrCreateP17UILocalVarContextPKc_60
_Z23UILocalVar_FindOrCreateP17UILocalVarContextPKc_20:
	mov eax, edx
	jmp _Z23UILocalVar_FindOrCreateP17UILocalVarContextPKc_70
_Z23UILocalVar_FindOrCreateP17UILocalVarContextPKc_30:
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

