;Imports of error:
	extern fflush
	extern fprintf
	extern vfprintf
	extern fputc

;Exports of error:
	global message_function
	global dMessage


SECTION .text


;dMessage
dMessage:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edi, [ebp+0x8]
	lea esi, [ebp+0x10]
	mov [ebp-0x1c], esi
	mov eax, [message_function]
	test eax, eax
	jz dMessage_10
	mov [esp+0x8], esi
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov [esp], edi
	call eax
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
dMessage_10:
	mov ebx, [0xd5cc920]
	lea eax, [ebx+0xb0]
	mov [ebp-0x2c], eax
	mov [esp], eax
	call fflush
	add ebx, 0x58
	mov [esp], ebx
	call fflush
	test edi, edi
	jz dMessage_20
	mov [esp+0xc], edi
	mov dword [esp+0x8], _cstring_ode_message
	mov dword [esp+0x4], _cstring_s_d_
	mov edx, [ebp-0x2c]
	mov [esp], edx
	call fprintf
dMessage_30:
	mov [esp+0x8], esi
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov ebx, [0xd5cc920]
	add ebx, 0xb0
	mov [esp], ebx
	call vfprintf
	mov [esp+0x4], ebx
	mov dword [esp], 0xa
	call fputc
	mov [esp], ebx
	call fflush
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
dMessage_20:
	mov dword [esp+0x8], _cstring_ode_message
	mov dword [esp+0x4], _cstring_s_
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call fprintf
	jmp dMessage_30
	add [eax], al


;Initialized global or static variables of error:
SECTION .data


;Initialized constant data of error:
SECTION .rdata


;Zero initialized global or static variables of error:
SECTION .bss
message_function: resb 0x80


;All cstrings:
SECTION .rdata
_cstring_ode_message:		db "ODE Message",0
_cstring_s_d_:		db 0ah,"%s %d: ",0
_cstring_s_:		db 0ah,"%s: ",0



;All constant floats and doubles:
SECTION .rdata

