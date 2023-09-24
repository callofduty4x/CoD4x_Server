;Imports of assertive:
	extern _Z19Dvar_IsSystemActivev
	extern _Z12Dvar_GetBoolPKc
	extern _Z11Dvar_GetIntPKc

;Exports of assertive:
	global shouldQuitOnError
	global _Z11QuitOnErrorv
	global _Z27RefreshQuitOnErrorConditionv
	global alwaysfails


SECTION .text


;QuitOnError()
_Z11QuitOnErrorv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	call _Z19Dvar_IsSystemActivev
	test al, al
	jnz _Z11QuitOnErrorv_10
	movzx eax, byte [shouldQuitOnError]
	leave
	ret
_Z11QuitOnErrorv_10:
	mov dword [esp], _cstring_quitonerror
	call _Z12Dvar_GetBoolPKc
	test al, al
	jz _Z11QuitOnErrorv_20
_Z11QuitOnErrorv_30:
	mov eax, 0x1
_Z11QuitOnErrorv_40:
	mov [shouldQuitOnError], al
	movzx eax, byte [shouldQuitOnError]
	leave
	ret
_Z11QuitOnErrorv_20:
	mov dword [esp], _cstring_r_vc_compile
	call _Z11Dvar_GetIntPKc
	cmp eax, 0x2
	jz _Z11QuitOnErrorv_30
	xor eax, eax
	jmp _Z11QuitOnErrorv_40
	add [eax], al


;RefreshQuitOnErrorCondition()
_Z27RefreshQuitOnErrorConditionv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	call _Z19Dvar_IsSystemActivev
	test al, al
	jnz _Z27RefreshQuitOnErrorConditionv_10
	leave
	ret
_Z27RefreshQuitOnErrorConditionv_10:
	mov dword [esp], _cstring_quitonerror
	call _Z12Dvar_GetBoolPKc
	test al, al
	jz _Z27RefreshQuitOnErrorConditionv_20
_Z27RefreshQuitOnErrorConditionv_30:
	mov eax, 0x1
_Z27RefreshQuitOnErrorConditionv_40:
	mov [shouldQuitOnError], al
	leave
	ret
_Z27RefreshQuitOnErrorConditionv_20:
	mov dword [esp], _cstring_r_vc_compile
	call _Z11Dvar_GetIntPKc
	cmp eax, 0x2
	jz _Z27RefreshQuitOnErrorConditionv_30
	xor eax, eax
	jmp _Z27RefreshQuitOnErrorConditionv_40


;Initialized global or static variables of assertive:
SECTION .data
alwaysfails: dd 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of assertive:
SECTION .rdata


;Zero initialized global or static variables of assertive:
SECTION .bss
shouldQuitOnError: resb 0x80


;All cstrings:
SECTION .rdata
_cstring_quitonerror:		db "QuitOnError",0
_cstring_r_vc_compile:		db "r_vc_compile",0



;All constant floats and doubles:
SECTION .rdata

