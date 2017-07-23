;Imports of r_setstate_d3d:
	extern dx_ctx
	extern Sys_EnterCriticalSection
	extern Sys_LeaveCriticalSection

;Exports of r_setstate_d3d:
	global R_FinishGpuFence
	global RB_IsGpuFenceFinished
	global R_AcquireGpuFenceLock
	global R_ReleaseGpuFenceLock


SECTION .text


;R_FinishGpuFence()
R_FinishGpuFence:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, dx_ctx
R_FinishGpuFence_20:
	cmp byte [ebx+0x2ca4], 0x0
	jnz R_FinishGpuFence_10
R_FinishGpuFence_40:
	mov eax, 0x1
	test al, al
	jz R_FinishGpuFence_20
	add esp, 0x14
	pop ebx
	pop ebp
	ret
R_FinishGpuFence_10:
	mov eax, [ebx+0x2c88]
	mov edx, [eax]
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call dword [edx+0x1c]
	cmp eax, 0x88760868
	jz R_FinishGpuFence_30
	sub eax, 0x1
	jz R_FinishGpuFence_20
R_FinishGpuFence_30:
	mov byte [ebx+0x2ca4], 0x0
	jmp R_FinishGpuFence_40


;RB_IsGpuFenceFinished()
RB_IsGpuFenceFinished:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, dx_ctx
	cmp byte [eax+0x2ca4], 0x0
	jnz RB_IsGpuFenceFinished_10
	mov eax, 0x1
RB_IsGpuFenceFinished_40:
	leave
	ret
RB_IsGpuFenceFinished_10:
	mov eax, [eax+0x2c88]
	mov edx, [eax]
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call dword [edx+0x1c]
	cmp eax, 0x88760868
	jz RB_IsGpuFenceFinished_20
	cmp eax, 0x1
	jz RB_IsGpuFenceFinished_30
RB_IsGpuFenceFinished_20:
	mov eax, dx_ctx
	mov byte [eax+0x2ca4], 0x0
	mov eax, 0x1
	jmp RB_IsGpuFenceFinished_40
RB_IsGpuFenceFinished_30:
	and eax, 0xffffff00
	leave
	ret
	nop


;R_AcquireGpuFenceLock()
R_AcquireGpuFenceLock:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp], 0x8
	call Sys_EnterCriticalSection
	leave
	ret


;R_ReleaseGpuFenceLock()
R_ReleaseGpuFenceLock:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp], 0x8
	call Sys_LeaveCriticalSection
	leave
	ret


;Initialized global or static variables of r_setstate_d3d:
SECTION .data


;Initialized constant data of r_setstate_d3d:
SECTION .rdata


;Zero initialized global or static variables of r_setstate_d3d:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

