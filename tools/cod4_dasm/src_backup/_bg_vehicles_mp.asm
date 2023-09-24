;Imports of bg_vehicles_mp:
	extern scr_const

;Exports of bg_vehicles_mp:
	global _Z25BG_VehiclesGetSlotTagNamei


SECTION .text


;BG_VehiclesGetSlotTagName(int)
_Z25BG_VehiclesGetSlotTagNamei:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	test eax, eax
	jz _Z25BG_VehiclesGetSlotTagNamei_10
	sub eax, 0x1
	jz _Z25BG_VehiclesGetSlotTagNamei_20
	mov eax, scr_const
	movzx eax, word [eax+0x14c]
	movzx eax, ax
	pop ebp
	ret
_Z25BG_VehiclesGetSlotTagNamei_10:
	mov eax, scr_const
	movzx eax, word [eax+0x148]
	movzx eax, ax
	pop ebp
	ret
_Z25BG_VehiclesGetSlotTagNamei_20:
	mov eax, scr_const
	movzx eax, word [eax+0x14a]
	movzx eax, ax
	pop ebp
	ret
	add [eax], al


;Initialized global or static variables of bg_vehicles_mp:
SECTION .data


;Initialized constant data of bg_vehicles_mp:
SECTION .rdata


;Zero initialized global or static variables of bg_vehicles_mp:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

