;Imports of assertive:
	extern Cvar_IsSystemActive
	extern Cvar_VariableBooleanValue
	extern Cvar_VariableIntegerValue

;Exports of assertive:
	global shouldQuitOnError
	global QuitOnError
	global RefreshQuitOnErrorCondition
	global alwaysfails


SECTION .text


;QuitOnError()
QuitOnError:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	call Cvar_IsSystemActive
	test al, al
	jnz QuitOnError_10
	movzx eax, byte [shouldQuitOnError]
	leave
	ret
QuitOnError_10:
	mov dword [esp], _cstring_quitonerror
	call Cvar_VariableBooleanValue
	test al, al
	jz QuitOnError_20
QuitOnError_30:
	mov eax, 0x1
QuitOnError_40:
	mov [shouldQuitOnError], al
	movzx eax, byte [shouldQuitOnError]
	leave
	ret
QuitOnError_20:
	mov dword [esp], _cstring_r_vc_compile
	call Cvar_VariableIntegerValue
	cmp eax, 0x2
	jz QuitOnError_30
	xor eax, eax
	jmp QuitOnError_40
	add [eax], al


;RefreshQuitOnErrorCondition()
RefreshQuitOnErrorCondition:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	call Cvar_IsSystemActive
	test al, al
	jnz RefreshQuitOnErrorCondition_10
	leave
	ret
RefreshQuitOnErrorCondition_10:
	mov dword [esp], _cstring_quitonerror
	call Cvar_VariableBooleanValue
	test al, al
	jz RefreshQuitOnErrorCondition_20
RefreshQuitOnErrorCondition_30:
	mov eax, 0x1
RefreshQuitOnErrorCondition_40:
	mov [shouldQuitOnError], al
	leave
	ret
RefreshQuitOnErrorCondition_20:
	mov dword [esp], _cstring_r_vc_compile
	call Cvar_VariableIntegerValue
	cmp eax, 0x2
	jz RefreshQuitOnErrorCondition_30
	xor eax, eax
	jmp RefreshQuitOnErrorCondition_40


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

