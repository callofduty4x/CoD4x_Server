;Imports of scr_tempmemory:
	extern _Z14Hunk_UserAllocP8HunkUserii
	extern _Z19Hunk_UserAllocAlignP8HunkUseri
	extern _Z15Hunk_UserSetPosP8HunkUserPv
	extern _Z25Hunk_UserAllocAlignStrictP8HunkUseri

;Exports of scr_tempmemory:
	global g_user
	global _Z10TempMalloci
	global _Z15TempMallocAligni
	global _Z15TempMemoryResetP8HunkUser
	global _Z16TempMemorySetPosPc
	global _Z21TempMallocAlignStricti


SECTION .text


;TempMalloc(int)
_Z10TempMalloci:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], 0x1
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [g_user]
	mov [esp], eax
	call _Z14Hunk_UserAllocP8HunkUserii
	leave
	ret


;TempMallocAlign(int)
_Z15TempMallocAligni:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [g_user]
	mov [esp], eax
	call _Z19Hunk_UserAllocAlignP8HunkUseri
	leave
	ret


;TempMemoryReset(HunkUser*)
_Z15TempMemoryResetP8HunkUser:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov [g_user], eax
	pop ebp
	ret
	nop


;TempMemorySetPos(char*)
_Z16TempMemorySetPosPc:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [g_user]
	mov [esp], eax
	call _Z15Hunk_UserSetPosP8HunkUserPv
	leave
	ret
	add [eax], al


;TempMallocAlignStrict(int)
_Z21TempMallocAlignStricti:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [g_user]
	mov [esp], eax
	call _Z25Hunk_UserAllocAlignStrictP8HunkUseri
	leave
	ret


;Initialized global or static variables of scr_tempmemory:
SECTION .data


;Initialized constant data of scr_tempmemory:
SECTION .rdata


;Zero initialized global or static variables of scr_tempmemory:
SECTION .bss
g_user: resb 0x80


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

