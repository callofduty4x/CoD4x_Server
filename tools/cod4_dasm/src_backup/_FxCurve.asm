;Imports of FxCurve:

;Exports of FxCurve:
	global _Z22FxCurveIterator_CreateP15FxCurveIteratorPK7FxCurve
	global _Z23FxCurveIterator_ReleaseP15FxCurveIterator


SECTION .text


;FxCurveIterator_Create(FxCurveIterator*, FxCurve const*)
_Z22FxCurveIterator_CreateP15FxCurveIteratorPK7FxCurve:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov [edx], eax
	mov dword [edx+0x4], 0x0
	pop ebp
	ret


;FxCurveIterator_Release(FxCurveIterator*)
_Z23FxCurveIterator_ReleaseP15FxCurveIterator:
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

