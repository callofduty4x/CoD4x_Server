;Imports of statmonitor:
	extern com_statmon
	extern Sys_EnterCriticalSection
	extern Sys_Milliseconds
	extern Sys_LeaveCriticalSection
	extern cls
	extern Material_RegisterHandle

;Exports of statmonitor:
	global statCount
	global stats
	global StatMon_Reset
	global StatMon_Warning
	global StatMon_GetStatsArray


SECTION .text


;StatMon_Reset()
StatMon_Reset:
	push ebp
	mov ebp, esp
	push edi
	mov edi, stats
	cld
	mov ecx, 0xe
	xor eax, eax
	rep stosd
	mov dword [statCount], 0x0
	pop edi
	pop ebp
	ret


;StatMon_Warning(int, int, char const*)
StatMon_Warning:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov edi, [ebp+0x10]
	mov eax, com_statmon
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz StatMon_Warning_10
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
StatMon_Warning_10:
	mov dword [esp], 0x3
	call Sys_EnterCriticalSection
	call Sys_Milliseconds
	add eax, esi
	mov [ebx*8+stats], eax
	mov edx, [ebx*8+stats+0x4]
	test edx, edx
	jz StatMon_Warning_20
StatMon_Warning_40:
	cmp ebx, [statCount]
	jl StatMon_Warning_30
	lea eax, [ebx+0x1]
	mov [statCount], eax
StatMon_Warning_30:
	mov dword [ebp+0x8], 0x3
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp Sys_LeaveCriticalSection
StatMon_Warning_20:
	mov eax, cls
	mov eax, [eax+0x108]
	test eax, eax
	jz StatMon_Warning_40
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	call Material_RegisterHandle
	mov edx, stats
	mov [edx+ebx*8+0x4], eax
	jmp StatMon_Warning_40
	nop


;StatMon_GetStatsArray(statmonitor_s const**, int*)
StatMon_GetStatsArray:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov dword [eax], stats
	mov edx, [statCount]
	mov eax, [ebp+0xc]
	mov [eax], edx
	pop ebp
	ret
	nop


;Initialized global or static variables of statmonitor:
SECTION .data


;Initialized constant data of statmonitor:
SECTION .rdata


;Zero initialized global or static variables of statmonitor:
SECTION .bss
statCount: resb 0x20
stats: resb 0x60


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

