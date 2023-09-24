;Imports of win_shared:
	extern itimeGetTime

;Exports of win_shared:
	global _ZZ16Sys_MillisecondsvE11initialized
	global _Z14Sys_SnapVectorPf
	global _Z16Sys_Millisecondsv
	global _Z19Sys_MillisecondsRawv
	global sys_timeBase


SECTION .text


;Sys_SnapVector(float*)
_Z14Sys_SnapVectorPf:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	cvttss2si eax, [edx]
	cvtsi2ss xmm0, eax
	movss [edx], xmm0
	cvttss2si eax, [edx+0x4]
	cvtsi2ss xmm0, eax
	movss [edx+0x4], xmm0
	cvttss2si eax, [edx+0x8]
	cvtsi2ss xmm0, eax
	movss [edx+0x8], xmm0
	pop ebp
	ret


;Sys_Milliseconds()
_Z16Sys_Millisecondsv:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov eax, [_ZZ16Sys_MillisecondsvE11initialized]
	test eax, eax
	jnz _Z16Sys_Millisecondsv_10
	call itimeGetTime
	mov [sys_timeBase], eax
	mov dword [_ZZ16Sys_MillisecondsvE11initialized], 0x1
_Z16Sys_Millisecondsv_10:
	call itimeGetTime
	sub eax, [sys_timeBase]
	leave
	ret


;Sys_MillisecondsRaw()
_Z19Sys_MillisecondsRawv:
	push ebp
	mov ebp, esp
	pop ebp
	jmp itimeGetTime
	nop
	add [eax], al


;Initialized global or static variables of win_shared:
SECTION .data


;Initialized constant data of win_shared:
SECTION .rdata


;Zero initialized global or static variables of win_shared:
SECTION .bss
_ZZ16Sys_MillisecondsvE11initialized: resb 0x80
sys_timeBase: resb 0x1c


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

