;Imports of MacDebug:

;Exports of MacDebug:
	global _Z7dprintfPKcz


SECTION .text


;dprintf(char const*, ...)
_Z7dprintfPKcz:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	leave
	ret


;Initialized global or static variables of MacDebug:
SECTION .data


;Initialized constant data of MacDebug:
SECTION .rdata


;Zero initialized global or static variables of MacDebug:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

