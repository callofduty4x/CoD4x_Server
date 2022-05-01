;Imports of initobj:
	extern _keymgr_set_and_unlock_processwide_ptr
	extern malloc
	extern _keymgr_get_and_lock_processwide_ptr_2
	extern calloc
	extern dlopen
	extern dlsym
	extern free
	extern _keymgr_get_and_lock_processwide_ptr
	extern g_snd

;Exports of initobj:
	global __i686.get_pc_thunk.bx
	global __i686.get_pc_thunk.cx
	global atexit_common
	global get_globals
	global add_routine
	global check_cxa_atexit
	global __cxa_atexit


SECTION .text


;__i686.get_pc_thunk.bx
__i686.get_pc_thunk.bx:
	mov ebx, [esp]
	ret


;__i686.get_pc_thunk.cx
__i686.get_pc_thunk.cx:
	mov ecx, [esp]


;atexit_common
atexit_common:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x44
	call __i686.get_pc_thunk.bx
	call get_globals
	mov [ebp-0x24], eax
	cmp dword [ebp-0x24], 0x0
	jnz atexit_common_10
	mov dword [ebp-0x2c], 0xffffffff
	jmp atexit_common_20
atexit_common_10:
	mov eax, [ebp-0x24]
	movzx eax, byte [eax+0x2]
	test al, al
	jnz atexit_common_30
	mov eax, [ebp-0x24]
	movzx eax, byte [eax+0x3]
	cmp al, 0x1
	jnz atexit_common_40
atexit_common_30:
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, [ebp-0x24]
	mov [esp], eax
	call add_routine
	mov [ebp-0x2c], eax
	jmp atexit_common_20
atexit_common_40:
	mov eax, [ebp-0x24]
	movzx eax, byte [eax+0x3]
	cmp al, 0xf
	jbe atexit_common_50
	mov eax, [ebp+0x8]
	mov eax, [eax+0x4]
	test eax, eax
	jz atexit_common_60
	mov eax, [ebp-0x24]
	mov eax, [eax+0x8]
	mov [ebp-0x1c], eax
	mov eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov dword [esp], 0xe
	call _keymgr_set_and_unlock_processwide_ptr
	mov [ebp-0x20], eax
	cmp dword [ebp-0x20], 0x0
	jz atexit_common_70
	mov dword [ebp-0x2c], 0xffffffff
	jmp atexit_common_20
atexit_common_70:
	mov eax, [ebp+0x8]
	mov edx, [eax+0x8]
	mov eax, [ebp+0x8]
	mov ecx, [eax]
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ecx
	mov eax, [ebp-0x1c]
	call eax
	mov [ebp-0x2c], eax
	jmp atexit_common_20
atexit_common_60:
	mov eax, [ebp-0x24]
	mov eax, [eax+0x10]
	mov [ebp-0x18], eax
	mov eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov dword [esp], 0xe
	call _keymgr_set_and_unlock_processwide_ptr
	mov [ebp-0x20], eax
	cmp dword [ebp-0x20], 0x0
	jz atexit_common_80
	mov dword [ebp-0x2c], 0xffffffff
	jmp atexit_common_20
atexit_common_80:
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov [esp], eax
	mov eax, [ebp-0x18]
	call eax
	mov [ebp-0x2c], eax
	jmp atexit_common_20
atexit_common_50:
	mov eax, [ebp-0x24]
	mov eax, [eax+0x8]
	mov [ebp-0x14], eax
	mov eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov dword [esp], 0xe
	call _keymgr_set_and_unlock_processwide_ptr
	mov [ebp-0xc], eax
	cmp dword [ebp-0xc], 0x0
	jz atexit_common_90
	mov dword [ebp-0x2c], 0xffffffff
	jmp atexit_common_20
atexit_common_90:
	mov dword [esp], 0xc
	call malloc
	mov [ebp-0x10], eax
	cmp dword [ebp-0x10], 0x0
	jnz atexit_common_100
	mov dword [ebp-0x2c], 0xffffffff
	jmp atexit_common_20
atexit_common_100:
	mov ecx, [ebp-0x10]
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [ecx], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov eax, [ebp-0x10]
	mov [esp+0x4], eax
	lea eax, [ebx-0xdd]
	mov [esp], eax
	mov eax, [ebp-0x14]
	call eax
	mov [ebp-0x2c], eax
atexit_common_20:
	mov eax, [ebp-0x2c]
	add esp, 0x44
	pop ebx
	pop ebp
	ret


;get_globals
get_globals:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x34
	call __i686.get_pc_thunk.bx
	lea eax, [ebp-0x18]
	mov [esp+0x4], eax
	mov dword [esp], 0xe
	call _keymgr_get_and_lock_processwide_ptr_2
	test eax, eax
	jz get_globals_10
	mov dword [ebp-0x1c], 0x0
	jmp get_globals_20
get_globals_10:
	mov eax, [ebp-0x18]
	mov [ebp-0x14], eax
	cmp dword [ebp-0x14], 0x0
	jnz get_globals_30
	mov dword [esp+0x4], 0x1
	mov dword [esp], 0x14
	call calloc
	mov [ebp-0x14], eax
	cmp dword [ebp-0x14], 0x0
	jnz get_globals_30
	mov dword [ebp-0x1c], 0x0
	jmp get_globals_20
get_globals_30:
	mov eax, [ebp-0x14]
	movzx eax, byte [eax+0x3]
	test al, al
	jnz get_globals_40
	mov dword [esp+0x4], 0x10
	lea eax, [ebx+0x2e1e6a]
	mov [esp], eax
	call dlopen
	mov [ebp-0x10], eax
	cmp dword [ebp-0x10], 0x0
	jz get_globals_50
	lea eax, [ebx+0x2e1e86]
	mov [esp+0x4], eax
	mov eax, [ebp-0x10]
	mov [esp], eax
	call dlsym
	mov edx, eax
	mov eax, [ebp-0x14]
	mov [eax+0x8], edx
	lea eax, [ebx+0x2e1e96]
	mov [esp+0x4], eax
	mov eax, [ebp-0x10]
	mov [esp], eax
	call dlsym
	mov edx, eax
	mov eax, [ebp-0x14]
	mov [eax+0xc], edx
	mov eax, [ebp-0x14]
	mov eax, [eax+0x8]
	test eax, eax
	jz get_globals_50
	mov eax, [ebp-0x14]
	mov eax, [eax+0xc]
	test eax, eax
	jz get_globals_50
	mov eax, [ebp-0x14]
	mov edx, [eax+0xc]
	mov eax, [ebp-0x14]
	mov eax, [eax+0x8]
	mov [esp+0x4], edx
	mov [esp], eax
	call check_cxa_atexit
	mov [ebp-0xc], eax
	cmp dword [ebp-0xc], 0xffffffff
	jz get_globals_50
	cmp dword [ebp-0xc], 0x0
	jnz get_globals_60
	mov eax, [ebp-0x14]
	mov byte [eax+0x3], 0x2
	jmp get_globals_40
get_globals_60:
	lea eax, [ebx+0x2e1ea6]
	mov [esp+0x4], eax
	mov eax, [ebp-0x10]
	mov [esp], eax
	call dlsym
	mov edx, eax
	mov eax, [ebp-0x14]
	mov [eax+0x10], edx
	mov eax, [ebp-0x14]
	mov eax, [eax+0x10]
	test eax, eax
	jz get_globals_50
	mov eax, [ebp-0x14]
	mov byte [eax+0x3], 0x10
get_globals_40:
	mov eax, [ebp-0x14]
	mov [ebp-0x1c], eax
	jmp get_globals_20
get_globals_50:
	mov eax, [ebp-0x14]
	mov [esp+0x4], eax
	mov dword [esp], 0xe
	call _keymgr_set_and_unlock_processwide_ptr
	mov dword [ebp-0x1c], 0x0
get_globals_20:
	mov eax, [ebp-0x1c]
	add esp, 0x34
	pop ebx
	pop ebp
	ret


;add_routine
add_routine:
	push ebp
	mov ebp, esp
	sub esp, 0x38
	mov dword [esp], 0x10
	call malloc
	mov [ebp-0x10], eax
	cmp dword [ebp-0x10], 0x0
	jnz add_routine_10
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0xe
	call _keymgr_set_and_unlock_processwide_ptr
	mov dword [ebp-0x20], 0xffffffff
	jmp add_routine_20
add_routine_10:
	mov ecx, [ebp-0x10]
	mov edx, [ebp+0xc]
	mov eax, [edx]
	mov [ecx+0x4], eax
	mov eax, [edx+0x4]
	mov [ecx+0x8], eax
	mov eax, [edx+0x8]
	mov [ecx+0xc], eax
	mov eax, [ebp+0x8]
	mov edx, [eax+0x4]
	mov eax, [ebp-0x10]
	mov [eax], edx
	mov edx, [ebp+0x8]
	mov eax, [ebp-0x10]
	mov [edx+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0xe
	call _keymgr_set_and_unlock_processwide_ptr
	mov [ebp-0xc], eax
	cmp dword [ebp-0xc], 0x0
	jnz add_routine_30
	mov dword [ebp-0x1c], 0x0
	jmp add_routine_40
add_routine_30:
	mov dword [ebp-0x1c], 0xffffffff
add_routine_40:
	mov eax, [ebp-0x1c]
	mov [ebp-0x20], eax
add_routine_20:
	mov eax, [ebp-0x20]
	leave
	ret
add_routine_150:
	push ebp
	mov ebp, esp
	sub esp, 0x38
add_routine_90:
	mov eax, [ebp+0x8]
	mov eax, [eax+0x4]
	mov [ebp-0xc], eax
	cmp dword [ebp-0xc], 0x0
	jz add_routine_50
	mov eax, [ebp-0xc]
	cmp eax, [ebp+0xc]
	jz add_routine_50
	mov eax, [ebp-0xc]
	mov edx, [eax]
	mov eax, [ebp+0x8]
	mov [eax+0x4], edx
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0xe
	call _keymgr_set_and_unlock_processwide_ptr
	mov eax, [ebp-0xc]
	mov eax, [eax+0x8]
	mov [ebp-0x1c], eax
	cmp dword [ebp-0x1c], 0x5
	ja add_routine_60
	mov eax, 0x1
	mov edx, eax
	movzx ecx, byte [ebp-0x1c]
	shl edx, cl
	mov [ebp-0x20], edx
	mov eax, [ebp-0x20]
	and eax, 0x15
	test eax, eax
	jnz add_routine_70
	mov eax, [ebp-0x20]
	and eax, 0x2a
	test eax, eax
	jnz add_routine_80
	jmp add_routine_60
add_routine_70:
	mov eax, [ebp-0xc]
	mov eax, [eax+0x4]
	call eax
	jmp add_routine_60
add_routine_80:
	mov eax, [ebp-0xc]
	mov edx, [eax+0x4]
	mov eax, [ebp-0xc]
	mov eax, [eax+0xc]
	mov [esp], eax
	call edx
add_routine_60:
	mov eax, [ebp-0xc]
	mov [esp], eax
	call free
	mov dword [esp], 0xe
	call _keymgr_get_and_lock_processwide_ptr
	mov [ebp+0x8], eax
	cmp dword [ebp+0x8], 0x0
	jnz add_routine_90
add_routine_50:
	mov eax, [ebp+0x8]
	leave
	ret
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov eax, [ebp+0x8]
	mov [ebp-0x18], eax
	mov dword [ebp-0x10], 0x0
	mov byte [ebp-0x9], 0x0
	mov dword [esp], 0xe
	call _keymgr_get_and_lock_processwide_ptr
	mov [ebp-0x14], eax
	cmp dword [ebp-0x14], 0x0
	jz add_routine_100
	mov eax, [ebp-0x14]
	movzx eax, byte [eax+0x2]
	mov [ebp-0x9], al
	mov eax, [ebp-0x14]
	mov byte [eax+0x2], 0x1
	mov eax, [ebp-0x14]
	mov eax, [eax+0x4]
	mov [ebp-0x10], eax
	mov eax, [ebp-0x14]
	mov [esp+0x4], eax
	mov dword [esp], 0xe
	call _keymgr_set_and_unlock_processwide_ptr
add_routine_100:
	mov eax, [ebp-0x18]
	mov eax, [eax+0x4]
	test eax, eax
	jz add_routine_110
	mov eax, [ebp-0x18]
	mov edx, [eax]
	mov eax, [ebp-0x18]
	mov eax, [eax+0x8]
	mov [esp], eax
	call edx
	jmp add_routine_120
add_routine_110:
	mov eax, [ebp-0x18]
	mov eax, [eax]
	call eax
add_routine_120:
	cmp dword [ebp-0x14], 0x0
	jz add_routine_130
	mov dword [esp], 0xe
	call _keymgr_get_and_lock_processwide_ptr
	mov [ebp-0x14], eax
add_routine_130:
	cmp dword [ebp-0x14], 0x0
	jz add_routine_140
	mov eax, [ebp-0x10]
	mov [esp+0x4], eax
	mov eax, [ebp-0x14]
	mov [esp], eax
	call add_routine_150
	mov [ebp-0x14], eax
add_routine_140:
	cmp dword [ebp-0x14], 0x0
	jz add_routine_160
	mov eax, [ebp-0x14]
	movzx edx, byte [ebp-0x9]
	mov [eax+0x2], dl
	mov eax, [ebp-0x14]
	mov [esp+0x4], eax
	mov dword [esp], 0xe
	call _keymgr_set_and_unlock_processwide_ptr
add_routine_160:
	leave
	ret


;check_cxa_atexit
check_cxa_atexit:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x34
	call __i686.get_pc_thunk.bx
	mov dword [ebp-0x10], 0x0
	mov eax, [ebp+0x8]
	mov [ebp-0xc], eax
	lea eax, [ebp-0x10]
	mov [esp+0x8], eax
	lea eax, [ebp-0x10]
	mov [esp+0x4], eax
	lea eax, [ebx-0x50]
	mov [esp], eax
	mov eax, [ebp+0x8]
	call eax
	test eax, eax
	jz check_cxa_atexit_10
	mov dword [ebp-0x1c], 0xffffffff
	jmp check_cxa_atexit_20
check_cxa_atexit_10:
	lea eax, [ebp-0x10]
	mov [esp], eax
	mov eax, [ebp+0xc]
	call eax
	mov eax, [ebp-0x10]
	test eax, eax
	jnz check_cxa_atexit_30
	lea eax, [ebp-0x10]
	mov [esp], eax
	mov eax, [ebp+0xc]
	call eax
	mov dword [ebp-0x10], 0x0
check_cxa_atexit_30:
	mov eax, [ebp-0x10]
	mov [ebp-0x1c], eax
check_cxa_atexit_20:
	mov eax, [ebp-0x1c]
	add esp, 0x34
	pop ebx
	pop ebp
	ret


;__cxa_atexit
__cxa_atexit:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov eax, [ebp+0x8]
	mov [ebp-0x14], eax
	mov dword [ebp-0x10], 0x1
	mov eax, [ebp+0xc]
	mov [ebp-0xc], eax
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	lea eax, [ebp-0x14]
	mov [esp], eax
	call atexit_common
	leave
	ret
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	call __i686.get_pc_thunk.bx
	mov eax, [ebp+0x8]
	mov [ebp-0x14], eax
	mov dword [ebp-0x10], 0x0
	lea eax, [ebx+g_snd+0x558c]
	mov eax, [eax]
	mov [esp+0x4], eax
	lea eax, [ebp-0x14]
	mov [esp], eax
	call atexit_common
	add esp, 0x24
	pop ebx
	pop ebp
	ret


;Initialized global or static variables of initobj:
SECTION .data


;Initialized constant data of initobj:
SECTION .rdata


;Zero initialized global or static variables of initobj:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

