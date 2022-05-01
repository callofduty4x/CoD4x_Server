;Imports of MacFeatures:
	extern LMGetKbdType
	extern KBGetLayoutType
	extern sysctl
	extern Gestalt
	extern KLGetCurrentKeyboardLayout
	extern KLGetKeyboardLayoutProperty
	extern GetScriptVariable

;Exports of MacFeatures:
	global _ZZN11MacFeatures16GetSystemVersionEvE7sResult
	global _ZZN11MacFeatures16GetSystemVersionEvE7sTested
	global _ZZN11MacFeatures19GetKeyboardLanguageEvE17sKeyboardLanguage
	global _ZZN11MacFeatures13IsISOKeyboardEvE19sKeyboardLayoutType
	global _ZN11MacFeatures13IsISOKeyboardEv
	global _ZN11MacFeatures16GetCPUSpeedInGHzEv
	global _ZN11MacFeatures16GetSystemVersionEv
	global _ZN11MacFeatures17GetMemorySizeInMBEv
	global _ZN11MacFeatures19GetKeyboardLanguageEv
	global _ZN11MacFeatures19HasGestaltAttributeEmm


SECTION .text


;MacFeatures::IsISOKeyboard()
_ZN11MacFeatures13IsISOKeyboardEv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	cmp dword [_ZZN11MacFeatures13IsISOKeyboardEvE19sKeyboardLayoutType], 0x3f3f3f3f
	jz _ZN11MacFeatures13IsISOKeyboardEv_10
	xor eax, eax
	cmp dword [_ZZN11MacFeatures13IsISOKeyboardEvE19sKeyboardLayoutType], 0x49534f20
	setz al
	leave
	ret
_ZN11MacFeatures13IsISOKeyboardEv_10:
	call LMGetKbdType
	movzx eax, al
	mov [esp], eax
	call KBGetLayoutType
	mov [_ZZN11MacFeatures13IsISOKeyboardEvE19sKeyboardLayoutType], eax
	xor eax, eax
	cmp dword [_ZZN11MacFeatures13IsISOKeyboardEvE19sKeyboardLayoutType], 0x49534f20
	setz al
	leave
	ret
	nop


;MacFeatures::GetCPUSpeedInGHz()
_ZN11MacFeatures16GetCPUSpeedInGHzEv:
	push ebp
	mov ebp, esp
	sub esp, 0x48
	mov dword [ebp-0x18], 0x6
	mov dword [ebp-0x14], 0xf
	mov dword [ebp-0x10], 0x4
	lea edx, [ebp-0xc]
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	lea eax, [ebp-0x10]
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x2
	lea eax, [ebp-0x18]
	mov [esp], eax
	call sysctl
	test eax, eax
	jz _ZN11MacFeatures16GetCPUSpeedInGHzEv_10
	mov edx, 0x320
	mov dword [ebp-0xc], 0x320
_ZN11MacFeatures16GetCPUSpeedInGHzEv_20:
	cvtsi2ss xmm0, edx
	divss xmm0, dword [_float_1000_00000000]
	movss [ebp-0x1c], xmm0
	fld dword [ebp-0x1c]
	leave
	ret
_ZN11MacFeatures16GetCPUSpeedInGHzEv_10:
	mov eax, 0x431bde83
	mul dword [ebp-0xc]
	shr edx, 0x12
	mov [ebp-0xc], edx
	jmp _ZN11MacFeatures16GetCPUSpeedInGHzEv_20


;MacFeatures::GetSystemVersion()
_ZN11MacFeatures16GetSystemVersionEv:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	cmp byte [_ZZN11MacFeatures16GetSystemVersionEvE7sTested], 0x0
	jz _ZN11MacFeatures16GetSystemVersionEv_10
_ZN11MacFeatures16GetSystemVersionEv_20:
	movsx eax, word [_ZZN11MacFeatures16GetSystemVersionEvE7sResult]
	leave
	ret
_ZN11MacFeatures16GetSystemVersionEv_10:
	mov byte [_ZZN11MacFeatures16GetSystemVersionEvE7sTested], 0x1
	lea eax, [ebp-0xc]
	mov [esp+0x4], eax
	mov dword [esp], 0x73797376
	call Gestalt
	test ax, ax
	jnz _ZN11MacFeatures16GetSystemVersionEv_20
	mov eax, [ebp-0xc]
	mov [_ZZN11MacFeatures16GetSystemVersionEvE7sResult], ax
	movsx eax, word [_ZZN11MacFeatures16GetSystemVersionEvE7sResult]
	leave
	ret
	nop


;MacFeatures::GetMemorySizeInMB()
_ZN11MacFeatures17GetMemorySizeInMBEv:
	push ebp
	mov ebp, esp
	sub esp, 0x38
	mov dword [ebp-0x18], 0x6
	mov dword [ebp-0x14], 0x5
	mov dword [ebp-0x10], 0x4
	lea edx, [ebp-0xc]
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	lea eax, [ebp-0x10]
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x2
	lea eax, [ebp-0x18]
	mov [esp], eax
	call sysctl
	test eax, eax
	jnz _ZN11MacFeatures17GetMemorySizeInMBEv_10
	mov eax, [ebp-0xc]
	shr eax, 0x14
	mov [ebp-0xc], eax
	leave
	ret
_ZN11MacFeatures17GetMemorySizeInMBEv_10:
	mov eax, 0x80
	mov dword [ebp-0xc], 0x80
	leave
	ret


;MacFeatures::GetKeyboardLanguage()
_ZN11MacFeatures19GetKeyboardLanguageEv:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	cmp dword [_ZZN11MacFeatures19GetKeyboardLanguageEvE17sKeyboardLanguage], 0xffffffff
	jz _ZN11MacFeatures19GetKeyboardLanguageEv_10
_ZN11MacFeatures19GetKeyboardLanguageEv_20:
	mov eax, [_ZZN11MacFeatures19GetKeyboardLanguageEvE17sKeyboardLanguage]
	leave
	ret
_ZN11MacFeatures19GetKeyboardLanguageEv_10:
	lea eax, [ebp-0xc]
	mov [esp], eax
	call KLGetCurrentKeyboardLayout
	test eax, eax
	jnz _ZN11MacFeatures19GetKeyboardLanguageEv_20
	lea eax, [ebp-0x10]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x6
	mov eax, [ebp-0xc]
	mov [esp], eax
	call KLGetKeyboardLayoutProperty
	test eax, eax
	jnz _ZN11MacFeatures19GetKeyboardLanguageEv_20
	mov dword [esp+0x4], 0x1c
	movsx eax, word [ebp-0x10]
	mov [esp], eax
	call GetScriptVariable
	mov [_ZZN11MacFeatures19GetKeyboardLanguageEvE17sKeyboardLanguage], eax
	leave
	ret


;MacFeatures::HasGestaltAttribute(unsigned long, unsigned long)
_ZN11MacFeatures19HasGestaltAttributeEmm:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	lea eax, [ebp-0xc]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call Gestalt
	test ax, ax
	jnz _ZN11MacFeatures19HasGestaltAttributeEmm_10
	mov eax, [ebp-0xc]
	movzx ecx, byte [ebp+0xc]
	sar eax, cl
	test al, 0x1
	jz _ZN11MacFeatures19HasGestaltAttributeEmm_10
	mov eax, 0x1
	leave
	ret
_ZN11MacFeatures19HasGestaltAttributeEmm_10:
	xor eax, eax
	leave
	ret
	nop


;Initialized global or static variables of MacFeatures:
SECTION .data
_ZZN11MacFeatures19GetKeyboardLanguageEvE17sKeyboardLanguage: dd 0xffffffff
_ZZN11MacFeatures13IsISOKeyboardEvE19sKeyboardLayoutType: dd 0x3f3f3f3f, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of MacFeatures:
SECTION .rdata


;Zero initialized global or static variables of MacFeatures:
SECTION .bss
_ZZN11MacFeatures16GetSystemVersionEvE7sResult: resb 0x2
_ZZN11MacFeatures16GetSystemVersionEvE7sTested: resb 0x7e


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_float_1000_00000000:		dd 0x447a0000	; 1000

