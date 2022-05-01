;Imports of scr_parsetree:
	extern _Z14Hunk_UserAllocP8HunkUserii
	extern _Z15Hunk_UserCreateiPKchhi
	extern _Z16Hunk_UserDestroyP8HunkUser

;Exports of scr_parsetree:
	global g_allocNodeUser
	global _Z11append_node6sval_uS_
	global _Z12prepend_node6sval_uS_
	global _Z15linked_list_end6sval_u
	global _Z17Scr_InitAllocNodev
	global _Z21Scr_ShutdownAllocNodev
	global _Z5node0i
	global _Z5node1i6sval_u
	global _Z5node2i6sval_uS_
	global _Z5node3i6sval_uS_S_
	global _Z5node4i6sval_uS_S_S_
	global _Z5node5i6sval_uS_S_S_S_
	global _Z5node6i6sval_uS_S_S_S_S_
	global _Z5node7i6sval_uS_S_S_S_S_S_
	global _Z5node8i6sval_uS_S_S_S_S_S_S_
	global _Z6node1_i
	global _Z6node2_6sval_uS_
	global _Z8node_posj


SECTION .text


;append_node(sval_u, sval_u)
_Z11append_node6sval_uS_:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], 0x8
	mov eax, [g_allocNodeUser]
	mov [esp], eax
	call _Z14Hunk_UserAllocP8HunkUserii
	mov edx, [ebp+0xc]
	mov [eax], edx
	mov dword [eax+0x4], 0x0
	mov edx, [ebx+0x4]
	mov [edx+0x4], eax
	mov [ebx+0x4], eax
	mov eax, ebx
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;prepend_node(sval_u, sval_u)
_Z12prepend_node6sval_uS_:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0xc]
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], 0x8
	mov eax, [g_allocNodeUser]
	mov [esp], eax
	call _Z14Hunk_UserAllocP8HunkUserii
	mov edx, [ebp+0x8]
	mov [eax], edx
	mov edx, [ebx]
	mov [eax+0x4], edx
	mov [ebx], eax
	mov eax, ebx
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;linked_list_end(sval_u)
_Z15linked_list_end6sval_u:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], 0x8
	mov eax, [g_allocNodeUser]
	mov [esp], eax
	call _Z14Hunk_UserAllocP8HunkUserii
	mov ebx, eax
	mov eax, [ebp+0x8]
	mov [ebx], eax
	mov dword [ebx+0x4], 0x0
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], 0x8
	mov eax, [g_allocNodeUser]
	mov [esp], eax
	call _Z14Hunk_UserAllocP8HunkUserii
	mov [eax], ebx
	mov [eax+0x4], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;Scr_InitAllocNode()
_Z17Scr_InitAllocNodev:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov dword [esp+0x10], 0x7
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_scr_initallocnod
	mov dword [esp], 0x10000
	call _Z15Hunk_UserCreateiPKchhi
	mov [g_allocNodeUser], eax
	leave
	ret
	nop


;Scr_ShutdownAllocNode()
_Z21Scr_ShutdownAllocNodev:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [g_allocNodeUser]
	test eax, eax
	jz _Z21Scr_ShutdownAllocNodev_10
	mov [esp], eax
	call _Z16Hunk_UserDestroyP8HunkUser
	mov dword [g_allocNodeUser], 0x0
_Z21Scr_ShutdownAllocNodev_10:
	leave
	ret
	nop


;node0(int)
_Z5node0i:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], 0x4
	mov eax, [g_allocNodeUser]
	mov [esp], eax
	call _Z14Hunk_UserAllocP8HunkUserii
	mov edx, [ebp+0x8]
	mov [eax], edx
	leave
	ret


;node1(int, sval_u)
_Z5node1i6sval_u:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], 0x8
	mov eax, [g_allocNodeUser]
	mov [esp], eax
	call _Z14Hunk_UserAllocP8HunkUserii
	mov edx, [ebp+0x8]
	mov [eax], edx
	mov edx, [ebp+0xc]
	mov [eax+0x4], edx
	leave
	ret


;node2(int, sval_u, sval_u)
_Z5node2i6sval_uS_:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], 0xc
	mov eax, [g_allocNodeUser]
	mov [esp], eax
	call _Z14Hunk_UserAllocP8HunkUserii
	mov edx, [ebp+0x8]
	mov [eax], edx
	mov edx, [ebp+0xc]
	mov [eax+0x4], edx
	mov edx, [ebp+0x10]
	mov [eax+0x8], edx
	leave
	ret


;node3(int, sval_u, sval_u, sval_u)
_Z5node3i6sval_uS_S_:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], 0x10
	mov eax, [g_allocNodeUser]
	mov [esp], eax
	call _Z14Hunk_UserAllocP8HunkUserii
	mov edx, [ebp+0x8]
	mov [eax], edx
	mov edx, [ebp+0xc]
	mov [eax+0x4], edx
	mov edx, [ebp+0x10]
	mov [eax+0x8], edx
	mov edx, [ebp+0x14]
	mov [eax+0xc], edx
	leave
	ret
	add [eax], al


;node4(int, sval_u, sval_u, sval_u, sval_u)
_Z5node4i6sval_uS_S_S_:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], 0x14
	mov eax, [g_allocNodeUser]
	mov [esp], eax
	call _Z14Hunk_UserAllocP8HunkUserii
	mov edx, [ebp+0x8]
	mov [eax], edx
	mov edx, [ebp+0xc]
	mov [eax+0x4], edx
	mov edx, [ebp+0x10]
	mov [eax+0x8], edx
	mov edx, [ebp+0x14]
	mov [eax+0xc], edx
	mov edx, [ebp+0x18]
	mov [eax+0x10], edx
	leave
	ret


;node5(int, sval_u, sval_u, sval_u, sval_u, sval_u)
_Z5node5i6sval_uS_S_S_S_:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], 0x18
	mov eax, [g_allocNodeUser]
	mov [esp], eax
	call _Z14Hunk_UserAllocP8HunkUserii
	mov edx, [ebp+0x8]
	mov [eax], edx
	mov edx, [ebp+0xc]
	mov [eax+0x4], edx
	mov edx, [ebp+0x10]
	mov [eax+0x8], edx
	mov edx, [ebp+0x14]
	mov [eax+0xc], edx
	mov edx, [ebp+0x18]
	mov [eax+0x10], edx
	mov edx, [ebp+0x1c]
	mov [eax+0x14], edx
	leave
	ret


;node6(int, sval_u, sval_u, sval_u, sval_u, sval_u, sval_u)
_Z5node6i6sval_uS_S_S_S_S_:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], 0x1c
	mov eax, [g_allocNodeUser]
	mov [esp], eax
	call _Z14Hunk_UserAllocP8HunkUserii
	mov edx, [ebp+0x8]
	mov [eax], edx
	mov edx, [ebp+0xc]
	mov [eax+0x4], edx
	mov edx, [ebp+0x10]
	mov [eax+0x8], edx
	mov edx, [ebp+0x14]
	mov [eax+0xc], edx
	mov edx, [ebp+0x18]
	mov [eax+0x10], edx
	mov edx, [ebp+0x1c]
	mov [eax+0x14], edx
	mov edx, [ebp+0x20]
	mov [eax+0x18], edx
	leave
	ret


;node7(int, sval_u, sval_u, sval_u, sval_u, sval_u, sval_u, sval_u)
_Z5node7i6sval_uS_S_S_S_S_S_:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], 0x20
	mov eax, [g_allocNodeUser]
	mov [esp], eax
	call _Z14Hunk_UserAllocP8HunkUserii
	mov edx, [ebp+0x8]
	mov [eax], edx
	mov edx, [ebp+0xc]
	mov [eax+0x4], edx
	mov edx, [ebp+0x10]
	mov [eax+0x8], edx
	mov edx, [ebp+0x14]
	mov [eax+0xc], edx
	mov edx, [ebp+0x18]
	mov [eax+0x10], edx
	mov edx, [ebp+0x1c]
	mov [eax+0x14], edx
	mov edx, [ebp+0x20]
	mov [eax+0x18], edx
	mov edx, [ebp+0x24]
	mov [eax+0x1c], edx
	leave
	ret


;node8(int, sval_u, sval_u, sval_u, sval_u, sval_u, sval_u, sval_u, sval_u)
_Z5node8i6sval_uS_S_S_S_S_S_S_:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], 0x24
	mov eax, [g_allocNodeUser]
	mov [esp], eax
	call _Z14Hunk_UserAllocP8HunkUserii
	mov edx, [ebp+0x8]
	mov [eax], edx
	mov edx, [ebp+0xc]
	mov [eax+0x4], edx
	mov edx, [ebp+0x10]
	mov [eax+0x8], edx
	mov edx, [ebp+0x14]
	mov [eax+0xc], edx
	mov edx, [ebp+0x18]
	mov [eax+0x10], edx
	mov edx, [ebp+0x1c]
	mov [eax+0x14], edx
	mov edx, [ebp+0x20]
	mov [eax+0x18], edx
	mov edx, [ebp+0x24]
	mov [eax+0x1c], edx
	mov edx, [ebp+0x28]
	mov [eax+0x20], edx
	leave
	ret


;node1_(int)
_Z6node1_i:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	pop ebp
	ret


;node2_(sval_u, sval_u)
_Z6node2_6sval_uS_:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], 0x8
	mov eax, [g_allocNodeUser]
	mov [esp], eax
	call _Z14Hunk_UserAllocP8HunkUserii
	mov edx, [ebp+0x8]
	mov [eax], edx
	mov edx, [ebp+0xc]
	mov [eax+0x4], edx
	leave
	ret


;node_pos(unsigned int)
_Z8node_posj:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	pop ebp
	ret


;Initialized global or static variables of scr_parsetree:
SECTION .data


;Initialized constant data of scr_parsetree:
SECTION .rdata


;Zero initialized global or static variables of scr_parsetree:
SECTION .bss
g_allocNodeUser: resb 0x80


;All cstrings:
SECTION .rdata
_cstring_scr_initallocnod:		db "Scr_InitAllocNode",0



;All constant floats and doubles:
SECTION .rdata

