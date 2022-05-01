;Imports of r_pixelcost_load_obj:
	extern _Z10Com_PrintfiPKcz
	extern floorf

;Exports of r_pixelcost_load_obj:
	global s_pixelCostColorCodeTable
	global _Z29R_PixelCost_PrintColorCodeKeyv
	global _Z30RB_PixelCost_BuildColorCodeMapPA4_hi


SECTION .text


;R_PixelCost_PrintColorCodeKey()
_Z29R_PixelCost_PrintColorCodeKeyv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov dword [esp+0x4], _cstring__pixel_cost_key_
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	mov ebx, s_pixelCostColorCodeTable
_Z29R_PixelCost_PrintColorCodeKeyv_10:
	mov eax, [ebx+0x4]
	mov [esp+0x10], eax
	movzx eax, byte [ebx]
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float_1_56250000]
	cvtss2sd xmm0, xmm0
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring___30f_s
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	add ebx, 0x8
	cmp ebx, s_pixelCostColorCodeTable+0x30
	jnz _Z29R_PixelCost_PrintColorCodeKeyv_10
	mov dword [esp+0x4], _cstring_
	mov dword [esp], 0x8
	call _Z10Com_PrintfiPKcz
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	nop


;RB_PixelCost_BuildColorCodeMap(unsigned char (*) [4], int)
_Z30RB_PixelCost_BuildColorCodeMapPA4_hi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov edi, [ebp+0x8]
	mov dword [ebp-0x24], 0xffffffff
	mov dword [ebp-0x20], 0x0
	jmp _Z30RB_PixelCost_BuildColorCodeMapPA4_hi_10
_Z30RB_PixelCost_BuildColorCodeMapPA4_hi_30:
	movzx eax, byte [esi*8+s_pixelCostColorCodeTable+0x1]
	shl eax, 0x10
	movzx edx, byte [esi*8+s_pixelCostColorCodeTable+0x2]
	shl edx, 0x8
	or eax, edx
	movzx edx, byte [esi*8+s_pixelCostColorCodeTable+0x3]
	or eax, edx
	or eax, 0xff000000
	mov edx, [ebp-0x20]
	mov ecx, [ebp+0x8]
	mov [ecx+edx*4], eax
	mov [ebp-0x24], esi
	add dword [ebp-0x20], 0x1
	add edi, 0x4
	cmp dword [ebp-0x20], 0x100
	jz _Z30RB_PixelCost_BuildColorCodeMapPA4_hi_20
_Z30RB_PixelCost_BuildColorCodeMapPA4_hi_10:
	mov esi, [ebp-0x24]
	add esi, 0x1
	movzx eax, byte [esi*8+s_pixelCostColorCodeTable]
	cmp eax, [ebp-0x20]
	jz _Z30RB_PixelCost_BuildColorCodeMapPA4_hi_30
	mov ecx, [ebp-0x24]
	shl ecx, 0x3
	lea ebx, [ecx+s_pixelCostColorCodeTable]
	lea edx, [esi*8]
	lea esi, [edx+s_pixelCostColorCodeTable]
	mov eax, [ebp-0x24]
	movzx eax, byte [eax*8+s_pixelCostColorCodeTable]
	mov [ebp-0x3c], eax
	mov eax, [ebp-0x20]
	sub eax, [ebp-0x3c]
	cvtsi2ss xmm0, eax
	movss [ebp-0x1c], xmm0
	movzx eax, byte [edx+s_pixelCostColorCodeTable]
	movzx edx, byte [ecx+s_pixelCostColorCodeTable]
	sub eax, edx
	cvtsi2ss xmm0, eax
	movss xmm1, dword [ebp-0x1c]
	divss xmm1, xmm0
	movss [ebp-0x1c], xmm1
	movzx edx, byte [ebx+0x3]
	cvtsi2ss xmm1, edx
	movzx eax, byte [esi+0x3]
	sub eax, edx
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0x1c]
	addss xmm1, xmm0
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	call floorf
	fstp dword [ebp-0x28]
	cvttss2si eax, [ebp-0x28]
	mov [edi], al
	movzx edx, byte [ebx+0x2]
	cvtsi2ss xmm1, edx
	movzx eax, byte [esi+0x2]
	sub eax, edx
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0x1c]
	addss xmm1, xmm0
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	call floorf
	fstp dword [ebp-0x2c]
	cvttss2si eax, [ebp-0x2c]
	mov [edi+0x1], al
	movzx edx, byte [ebx+0x1]
	cvtsi2ss xmm1, edx
	movzx eax, byte [esi+0x1]
	sub eax, edx
	cvtsi2ss xmm0, eax
	mulss xmm0, [ebp-0x1c]
	addss xmm1, xmm0
	addss xmm1, [_float_0_50000000]
	movss [esp], xmm1
	call floorf
	fstp dword [ebp-0x30]
	cvttss2si eax, [ebp-0x30]
	mov [edi+0x2], al
	mov byte [edi+0x3], 0xff
	add dword [ebp-0x20], 0x1
	add edi, 0x4
	cmp dword [ebp-0x20], 0x100
	jnz _Z30RB_PixelCost_BuildColorCodeMapPA4_hi_10
_Z30RB_PixelCost_BuildColorCodeMapPA4_hi_20:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;Initialized global or static variables of r_pixelcost_load_obj:
SECTION .data


;Initialized constant data of r_pixelcost_load_obj:
SECTION .rdata
s_pixelCostColorCodeTable: dd 0x0, _cstring_black, 0xff0028, _cstring_green, 0xffff38, _cstring_yellow, 0x80ff48, _cstring_orange, 0xff80, _cstring_red, 0xffffffff, _cstring_white, 0x0, 0x0, 0x0, 0x0


;Zero initialized global or static variables of r_pixelcost_load_obj:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring__pixel_cost_key_:		db 0ah,"---- PIXEL COST KEY ----",0ah,0
_cstring___30f_s:		db "  %3.0f%%: %s",0ah,0
_cstring_:		db "----------------------",0ah,0ah,0
_cstring_black:		db "black",0
_cstring_green:		db "green",0
_cstring_yellow:		db "yellow",0
_cstring_orange:		db "orange",0
_cstring_red:		db "red",0
_cstring_white:		db "white",0



;All constant floats and doubles:
SECTION .rdata
_float_1_56250000:		dd 0x3fc80000	; 1.5625
_float_0_50000000:		dd 0x3f000000	; 0.5

