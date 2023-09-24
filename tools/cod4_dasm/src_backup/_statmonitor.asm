;Imports of statmonitor:
	extern com_statmon
	extern _Z24Sys_EnterCriticalSection15CriticalSection
	extern _Z16Sys_Millisecondsv
	extern _Z24Sys_LeaveCriticalSection15CriticalSection
	extern cls
	extern _Z23Material_RegisterHandlePKci

;Exports of statmonitor:
	global statCount
	global stats
	global _Z13StatMon_Resetv
	global _Z15StatMon_WarningiiPKc
	global _Z21StatMon_GetStatsArrayPPK13statmonitor_sPi


SECTION .text


;StatMon_Reset()
_Z13StatMon_Resetv:
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
_Z15StatMon_WarningiiPKc:
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
	jnz _Z15StatMon_WarningiiPKc_10
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15StatMon_WarningiiPKc_10:
	mov dword [esp], 0x3
	call _Z24Sys_EnterCriticalSection15CriticalSection
	call _Z16Sys_Millisecondsv
	add eax, esi
	mov [ebx*8+stats], eax
	mov edx, [ebx*8+stats+0x4]
	test edx, edx
	jz _Z15StatMon_WarningiiPKc_20
_Z15StatMon_WarningiiPKc_40:
	cmp ebx, [statCount]
	jl _Z15StatMon_WarningiiPKc_30
	lea eax, [ebx+0x1]
	mov [statCount], eax
_Z15StatMon_WarningiiPKc_30:
	mov dword [ebp+0x8], 0x3
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z24Sys_LeaveCriticalSection15CriticalSection
_Z15StatMon_WarningiiPKc_20:
	mov eax, cls
	mov eax, [eax+0x108]
	test eax, eax
	jz _Z15StatMon_WarningiiPKc_40
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	call _Z23Material_RegisterHandlePKci
	mov edx, stats
	mov [edx+ebx*8+0x4], eax
	jmp _Z15StatMon_WarningiiPKc_40
	nop


;StatMon_GetStatsArray(statmonitor_s const**, int*)
_Z21StatMon_GetStatsArrayPPK13statmonitor_sPi:
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

