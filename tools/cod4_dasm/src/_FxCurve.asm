;Imports of FxCurve:

;Exports of FxCurve:
	global FxCurveIterator_Create
	global FxCurveIterator_Release


SECTION .text


;FxCurveIterator_Create(FxCurveIterator*, FxCurve const*)
FxCurveIterator_Create:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov [edx], eax
	mov dword [edx+0x4], 0x0
	pop ebp
	ret


;FxCurveIterator_Release(FxCurveIterator*)
FxCurveIterator_Release:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov dword [eax], 0x0
	pop ebp
	ret
	add [eax], al


;Initialized global or static variables of FxCurve:
SECTION .data


;Initialized constant data of FxCurve:
SECTION .rdata


;Zero initialized global or static variables of FxCurve:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

