;Imports of MacGlobals:

;Exports of MacGlobals:
	global sSystemLock
	global _ZN10MacGlobals10LockSystemEv
	global _ZN10MacGlobals12UnlockSystemEv
	global _ZN10MacGlobals14IsSystemLockedEv


SECTION .text


;MacGlobals::LockSystem()
_ZN10MacGlobals10LockSystemEv:
	push ebp
	mov ebp, esp
	add dword [sSystemLock], 0x1
	pop ebp
	ret


;MacGlobals::UnlockSystem()
_ZN10MacGlobals12UnlockSystemEv:
	push ebp
	mov ebp, esp
	mov eax, [sSystemLock]
	test eax, eax
	jle _ZN10MacGlobals12UnlockSystemEv_10
	sub eax, 0x1
	mov [sSystemLock], eax
_ZN10MacGlobals12UnlockSystemEv_10:
	pop ebp
	ret


;MacGlobals::IsSystemLocked()
_ZN10MacGlobals14IsSystemLockedEv:
	push ebp
	mov ebp, esp
	xor eax, eax
	cmp dword [sSystemLock], 0x0
	setg al
	pop ebp
	ret


;Initialized global or static variables of MacGlobals:
SECTION .data


;Initialized constant data of MacGlobals:
SECTION .rdata


;Zero initialized global or static variables of MacGlobals:
SECTION .bss
sSystemLock: resb 0x80


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

