;Imports of WrapAPI:
	extern dvarPool
	extern getsegbyname

;Exports of WrapAPI:
	global entries
	global DRGetLastError
	global DRInitializeWrapAPI
	global DRIsWrapped
	global GetVariable
	global VerifyKey


SECTION .text


;DRGetLastError
DRGetLastError:
	call DRGetLastError_10
DRGetLastError_10:
	pop edx
	push ebp
	mov ebp, esp
	mov ecx, [edx+dvarPool+0x11474]
	leave
	jmp ecx


;DRInitializeWrapAPI
DRInitializeWrapAPI:
	push ebp
	mov ebp, esp
	push ebx
	call DRInitializeWrapAPI_10
DRInitializeWrapAPI_10:
	pop ebx
	sub esp, 0x14
	lea eax, [ebx+0x50416]
	mov [esp], eax
	call getsegbyname
	test eax, eax
	jz DRInitializeWrapAPI_20
	mov eax, [eax+0x18]
	mov edx, [eax+0x4]
	cmp edx, 0x105ef05
	jz DRInitializeWrapAPI_20
	lea eax, [ebx+dvarPool+0x114ae]
	mov [esp], eax
	call edx
DRInitializeWrapAPI_20:
	add esp, 0x14
	pop ebx
	leave
	ret


;DRIsWrapped
DRIsWrapped:
	push ebp
	mov ebp, esp
	push ebx
	call DRIsWrapped_10
DRIsWrapped_10:
	pop ebx
	sub esp, 0x14
	lea eax, [ebx+0x5043f]
	mov [esp], eax
	call getsegbyname
	test eax, eax
	setnz al
	add esp, 0x14
	pop ebx
	movzx eax, al
	leave
	ret


;GetVariable
GetVariable:
	call GetVariable_10
GetVariable_10:
	pop edx
	push ebp
	mov ebp, esp
	mov ecx, [edx+dvarPool+0x1146e]
	leave
	jmp ecx


;VerifyKey
VerifyKey:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov eax, [ebp+0xc]
	call VerifyKey_10
VerifyKey_10:
	pop ebx
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call dword [ebx+dvarPool+0x11456]
	add esp, 0x14
	pop ebx
	leave
	movzx eax, al
	ret
	add [eax], al


;Initialized global or static variables of WrapAPI:
SECTION .data


;Initialized constant data of WrapAPI:
SECTION .rdata


;Zero initialized global or static variables of WrapAPI:
SECTION .bss
entries: resb 0x80


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

