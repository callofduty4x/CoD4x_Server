;Imports of scr_parsetree:
	extern Hunk_UserAlloc
	extern Hunk_UserCreate
	extern Hunk_UserDestroy

;Exports of scr_parsetree:
	global g_allocNodeUser
	global append_node
	global prepend_node
	global linked_list_end
	global Scr_InitAllocNode
	global Scr_ShutdownAllocNode
	global node0
	global node1
	global node2
	global node3
	global node4
	global node5
	global node6
	global node7
	global node8
	global node1_
	global node2_
	global node_pos


SECTION .text


;append_node(sval_u, sval_u)
append_node:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], 0x8
	mov eax, [g_allocNodeUser]
	mov [esp], eax
	call Hunk_UserAlloc
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
prepend_node:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0xc]
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], 0x8
	mov eax, [g_allocNodeUser]
	mov [esp], eax
	call Hunk_UserAlloc
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
linked_list_end:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], 0x8
	mov eax, [g_allocNodeUser]
	mov [esp], eax
	call Hunk_UserAlloc
	mov ebx, eax
	mov eax, [ebp+0x8]
	mov [ebx], eax
	mov dword [ebx+0x4], 0x0
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], 0x8
	mov eax, [g_allocNodeUser]
	mov [esp], eax
	call Hunk_UserAlloc
	mov [eax], ebx
	mov [eax+0x4], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;Scr_InitAllocNode()
Scr_InitAllocNode:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov dword [esp+0x10], 0x7
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_scr_initallocnod
	mov dword [esp], 0x10000
	call Hunk_UserCreate
	mov [g_allocNodeUser], eax
	leave
	ret
	nop


;Scr_ShutdownAllocNode()
Scr_ShutdownAllocNode:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [g_allocNodeUser]
	test eax, eax
	jz Scr_ShutdownAllocNode_10
	mov [esp], eax
	call Hunk_UserDestroy
	mov dword [g_allocNodeUser], 0x0
Scr_ShutdownAllocNode_10:
	leave
	ret
	nop


;node0(int)
node0:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], 0x4
	mov eax, [g_allocNodeUser]
	mov [esp], eax
	call Hunk_UserAlloc
	mov edx, [ebp+0x8]
	mov [eax], edx
	leave
	ret


;node1(int, sval_u)
node1:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], 0x8
	mov eax, [g_allocNodeUser]
	mov [esp], eax
	call Hunk_UserAlloc
	mov edx, [ebp+0x8]
	mov [eax], edx
	mov edx, [ebp+0xc]
	mov [eax+0x4], edx
	leave
	ret


;node2(int, sval_u, sval_u)
node2:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], 0xc
	mov eax, [g_allocNodeUser]
	mov [esp], eax
	call Hunk_UserAlloc
	mov edx, [ebp+0x8]
	mov [eax], edx
	mov edx, [ebp+0xc]
	mov [eax+0x4], edx
	mov edx, [ebp+0x10]
	mov [eax+0x8], edx
	leave
	ret


;node3(int, sval_u, sval_u, sval_u)
node3:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], 0x10
	mov eax, [g_allocNodeUser]
	mov [esp], eax
	call Hunk_UserAlloc
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
node4:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], 0x14
	mov eax, [g_allocNodeUser]
	mov [esp], eax
	call Hunk_UserAlloc
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
node5:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], 0x18
	mov eax, [g_allocNodeUser]
	mov [esp], eax
	call Hunk_UserAlloc
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
node6:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], 0x1c
	mov eax, [g_allocNodeUser]
	mov [esp], eax
	call Hunk_UserAlloc
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
node7:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], 0x20
	mov eax, [g_allocNodeUser]
	mov [esp], eax
	call Hunk_UserAlloc
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
node8:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], 0x24
	mov eax, [g_allocNodeUser]
	mov [esp], eax
	call Hunk_UserAlloc
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
node1_:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	pop ebp
	ret


;node2_(sval_u, sval_u)
node2_:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], 0x4
	mov dword [esp+0x4], 0x8
	mov eax, [g_allocNodeUser]
	mov [esp], eax
	call Hunk_UserAlloc
	mov edx, [ebp+0x8]
	mov [eax], edx
	mov edx, [ebp+0xc]
	mov [eax+0x4], edx
	leave
	ret


;node_pos(unsigned int)
node_pos:
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

