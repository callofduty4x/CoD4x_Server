;Imports of MacSavers:
	extern GetPort
	extern SetPortWindowPort
	extern SetPort

;Exports of MacSavers:
	global _ZN11StPortStateC1EP15OpaqueWindowPtr
	global _ZN11StPortStateD1Ev


SECTION .text


;StPortState::StPortState(OpaqueWindowPtr*)
_ZN11StPortStateC1EP15OpaqueWindowPtr:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0xc]
	mov eax, [ebp+0x8]
	mov [esp], eax
	call GetPort
	mov [ebp+0x8], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp SetPortWindowPort
	add [eax], al


;StPortState::~StPortState()
_ZN11StPortStateD1Ev:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov [ebp+0x8], eax
	pop ebp
	jmp SetPort
	nop
	add [eax], al


;Initialized global or static variables of MacSavers:
SECTION .data


;Initialized constant data of MacSavers:
SECTION .rdata


;Zero initialized global or static variables of MacSavers:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

