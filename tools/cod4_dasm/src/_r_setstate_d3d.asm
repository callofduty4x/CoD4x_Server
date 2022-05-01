;Imports of r_setstate_d3d:
	extern dx_ctx
	extern _Z24Sys_EnterCriticalSection15CriticalSection
	extern _Z24Sys_LeaveCriticalSection15CriticalSection

;Exports of r_setstate_d3d:
	global _Z16R_FinishGpuFencev
	global _Z21RB_IsGpuFenceFinishedv
	global _Z21R_AcquireGpuFenceLockv
	global _Z21R_ReleaseGpuFenceLockv


SECTION .text


;R_FinishGpuFence()
_Z16R_FinishGpuFencev:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, dx_ctx
_Z16R_FinishGpuFencev_20:
	cmp byte [ebx+0x2ca4], 0x0
	jnz _Z16R_FinishGpuFencev_10
_Z16R_FinishGpuFencev_40:
	mov eax, 0x1
	test al, al
	jz _Z16R_FinishGpuFencev_20
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z16R_FinishGpuFencev_10:
	mov eax, [ebx+0x2c88]
	mov edx, [eax]
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call dword [edx+0x1c]
	cmp eax, 0x88760868
	jz _Z16R_FinishGpuFencev_30
	sub eax, 0x1
	jz _Z16R_FinishGpuFencev_20
_Z16R_FinishGpuFencev_30:
	mov byte [ebx+0x2ca4], 0x0
	jmp _Z16R_FinishGpuFencev_40


;RB_IsGpuFenceFinished()
_Z21RB_IsGpuFenceFinishedv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, dx_ctx
	cmp byte [eax+0x2ca4], 0x0
	jnz _Z21RB_IsGpuFenceFinishedv_10
	mov eax, 0x1
_Z21RB_IsGpuFenceFinishedv_40:
	leave
	ret
_Z21RB_IsGpuFenceFinishedv_10:
	mov eax, [eax+0x2c88]
	mov edx, [eax]
	mov dword [esp+0xc], 0x1
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call dword [edx+0x1c]
	cmp eax, 0x88760868
	jz _Z21RB_IsGpuFenceFinishedv_20
	cmp eax, 0x1
	jz _Z21RB_IsGpuFenceFinishedv_30
_Z21RB_IsGpuFenceFinishedv_20:
	mov eax, dx_ctx
	mov byte [eax+0x2ca4], 0x0
	mov eax, 0x1
	jmp _Z21RB_IsGpuFenceFinishedv_40
_Z21RB_IsGpuFenceFinishedv_30:
	and eax, 0xffffff00
	leave
	ret
	nop


;R_AcquireGpuFenceLock()
_Z21R_AcquireGpuFenceLockv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp], 0x8
	call _Z24Sys_EnterCriticalSection15CriticalSection
	leave
	ret


;R_ReleaseGpuFenceLock()
_Z21R_ReleaseGpuFenceLockv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp], 0x8
	call _Z24Sys_LeaveCriticalSection15CriticalSection
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

