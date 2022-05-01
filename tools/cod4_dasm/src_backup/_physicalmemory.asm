;Imports of physicalmemory:
	extern _Z25Sys_OutOfMemErrorInternalPKci
	extern _Z14Com_PrintErroriPKcz
	extern _Z10Com_PrintfiPKcz
	extern iVirtualAlloc
	extern memset

;Exports of physicalmemory:
	global g_mem
	global g_overAllocatedSize
	global _Z10PMem_Allocjjjj
	global _Z13PMem_EndAllocPKcj
	global _Z15PMem_BeginAllocPKcj
	global _Z17PMem_DumpMemStatsv
	global _Z25PMem_GetOverAllocatedSizev
	global _Z9PMem_FreePKcj
	global _Z9PMem_Initv


SECTION .text


;PMem_Alloc(unsigned int, unsigned int, unsigned int, unsigned int)
_Z10PMem_Allocjjjj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edx, [ebp+0x14]
	mov eax, edx
	shl eax, 0x5
	add eax, edx
	lea eax, [edx+eax*2]
	lea esi, [eax*4+g_mem+0x4]
	mov eax, [ebp+0xc]
	sub eax, 0x1
	test edx, edx
	jnz _Z10PMem_Allocjjjj_10
	mov ebx, eax
	add ebx, [esi+0x8]
	not eax
	and ebx, eax
	mov edi, [ebp+0x8]
	add edi, ebx
	mov eax, edi
	sub eax, [g_mem+0x118]
	mov [g_overAllocatedSize], eax
	test eax, eax
	jg _Z10PMem_Allocjjjj_20
_Z10PMem_Allocjjjj_50:
	mov [esi+0x8], edi
	add ebx, [g_mem]
	mov eax, ebx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z10PMem_Allocjjjj_10:
	mov ebx, [esi+0x8]
	sub ebx, [ebp+0x8]
	not eax
	and ebx, eax
	mov eax, [g_mem+0xc]
	sub eax, ebx
	mov [g_overAllocatedSize], eax
	test eax, eax
	jg _Z10PMem_Allocjjjj_30
	mov [esi+0x8], ebx
_Z10PMem_Allocjjjj_40:
	add ebx, [g_mem]
	mov eax, ebx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z10PMem_Allocjjjj_30:
	mov dword [esp+0x4], 0x281
	mov dword [esp], _cstring_aspyrbuilddepotc
	call _Z25Sys_OutOfMemErrorInternalPKci
	mov [esi+0x8], ebx
	jmp _Z10PMem_Allocjjjj_40
_Z10PMem_Allocjjjj_20:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_need_i_more_byte
	mov dword [esp], 0x10
	call _Z14Com_PrintErroriPKcz
	mov dword [esp+0x4], 0x260
	mov dword [esp], _cstring_aspyrbuilddepotc
	call _Z25Sys_OutOfMemErrorInternalPKci
	jmp _Z10PMem_Allocjjjj_50


;PMem_EndAlloc(char const*, unsigned int)
_Z13PMem_EndAllocPKcj:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0xc]
	mov eax, edx
	shl eax, 0x5
	add eax, edx
	lea eax, [edx+eax*2]
	mov dword [eax*4+g_mem+0x4], 0x0
	pop ebp
	ret
	nop


;PMem_BeginAlloc(char const*, unsigned int)
_Z15PMem_BeginAllocPKcj:
	push ebp
	mov ebp, esp
	push ebx
	mov ebx, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov eax, edx
	shl eax, 0x5
	add eax, edx
	lea eax, [edx+eax*2]
	lea eax, [eax*4+g_mem]
	lea edx, [eax+0x4]
	mov [eax+0x4], ebx
	mov eax, [edx+0x4]
	lea ecx, [edx+eax*8]
	add eax, 0x1
	mov [edx+0x4], eax
	mov [ecx+0xc], ebx
	mov eax, [edx+0x8]
	mov [ecx+0x10], eax
	pop ebx
	pop ebp
	ret
	nop


;PMem_DumpMemStats()
_Z17PMem_DumpMemStatsv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edx, [g_mem+0x114]
	test edx, edx
	jz _Z17PMem_DumpMemStatsv_10
	xor esi, esi
	jmp _Z17PMem_DumpMemStatsv_20
_Z17PMem_DumpMemStatsv_30:
	lea ebx, [esi+0x1]
	mov ecx, [ebx*8+g_mem+0x120]
_Z17PMem_DumpMemStatsv_40:
	mov eax, [esi*8+g_mem+0x120]
	sub eax, ecx
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float_0_00000095]
	cvtss2sd xmm0, xmm0
	movsd [esp+0xc], xmm0
	mov eax, [esi*8+g_mem+0x11c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_1818s_51f
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	mov edx, [g_mem+0x114]
	cmp edx, ebx
	jbe _Z17PMem_DumpMemStatsv_10
	mov esi, ebx
_Z17PMem_DumpMemStatsv_20:
	lea eax, [edx-0x1]
	cmp esi, eax
	jnz _Z17PMem_DumpMemStatsv_30
	mov ecx, [g_mem+0x118]
	mov ebx, edx
	jmp _Z17PMem_DumpMemStatsv_40
_Z17PMem_DumpMemStatsv_10:
	mov eax, [g_mem+0x118]
	sub eax, [g_mem+0xc]
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float_0_00000095]
	cvtss2sd xmm0, xmm0
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_free_physical___
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	mov edx, [g_mem+0xc]
	mov edi, [g_mem+0x8]
	mov eax, edi
	sub eax, 0x1
	js _Z17PMem_DumpMemStatsv_50
	lea ebx, [eax*8+g_mem+0x10]
	xor esi, esi
_Z17PMem_DumpMemStatsv_60:
	sub edx, [ebx+0x4]
	cvtsi2ss xmm0, edx
	mulss xmm0, [_float_0_00000095]
	cvtss2sd xmm0, xmm0
	movsd [esp+0xc], xmm0
	mov eax, [ebx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_1818s_51f
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	mov edx, [ebx+0x4]
	add esi, 0x1
	sub ebx, 0x8
	cmp esi, edi
	jnz _Z17PMem_DumpMemStatsv_60
_Z17PMem_DumpMemStatsv_50:
	mov dword [esp+0x4], _cstring_
	mov dword [esp], 0x10
	call _Z10Com_PrintfiPKcz
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;PMem_GetOverAllocatedSize()
_Z25PMem_GetOverAllocatedSizev:
	push ebp
	mov ebp, esp
	mov eax, [g_overAllocatedSize]
	pop ebp
	ret
	add [eax], al


;PMem_Free(char const*, unsigned int)
_Z9PMem_FreePKcj:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov ebx, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov eax, edx
	shl eax, 0x5
	add eax, edx
	lea eax, [edx+eax*2]
	lea ecx, [eax*4+g_mem+0x4]
	mov eax, [ecx+0x4]
	test eax, eax
	jz _Z9PMem_FreePKcj_10
	cmp [ecx+0xc], ebx
	jz _Z9PMem_FreePKcj_20
	xor edx, edx
_Z9PMem_FreePKcj_30:
	add edx, 0x1
	cmp eax, edx
	jz _Z9PMem_FreePKcj_10
	cmp ebx, [ecx+edx*8+0xc]
	jnz _Z9PMem_FreePKcj_30
_Z9PMem_FreePKcj_50:
	lea eax, [ecx+edx*8]
	lea esi, [eax+0xc]
	mov dword [eax+0xc], 0x0
	mov ebx, [ecx+0x4]
	lea eax, [ebx-0x1]
	cmp eax, edx
	jnz _Z9PMem_FreePKcj_10
	lea edx, [ecx+ebx*8-0x8]
_Z9PMem_FreePKcj_40:
	mov eax, [esi+0x4]
	mov [ecx+0x8], eax
	lea eax, [ebx-0x1]
	mov ebx, eax
	sub edx, 0x8
	mov [ecx+0x4], eax
	test eax, eax
	jz _Z9PMem_FreePKcj_10
	lea esi, [edx+0xc]
	mov eax, [edx+0xc]
	test eax, eax
	jz _Z9PMem_FreePKcj_40
_Z9PMem_FreePKcj_10:
	pop ebx
	pop esi
	pop ebp
	ret
_Z9PMem_FreePKcj_20:
	xor edx, edx
	jmp _Z9PMem_FreePKcj_50
	nop


;PMem_Init()
_Z9PMem_Initv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov dword [esp+0xc], 0x4
	mov dword [esp+0x8], 0x1000
	mov dword [esp+0x4], 0x8000000
	mov dword [esp], 0x0
	call iVirtualAlloc
	mov ebx, eax
	mov dword [esp+0x8], 0x21c
	mov dword [esp+0x4], 0x0
	mov dword [esp], g_mem
	call memset
	mov [g_mem], ebx
	mov dword [g_mem+0x118], 0x8000000
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;Initialized global or static variables of physicalmemory:
SECTION .data


;Initialized constant data of physicalmemory:
SECTION .rdata


;Zero initialized global or static variables of physicalmemory:
SECTION .bss
g_mem: resb 0x21c
g_overAllocatedSize: resb 0x64


;All cstrings:
SECTION .rdata
_cstring_aspyrbuilddepotc:		db "/AspyrBuild/depot/CoD4/PC/src/universal/physicalmemory.cpp",0
_cstring_need_i_more_byte:		db "Need %i more bytes of ram for alloc to succeed",0ah,0
_cstring_1818s_51f:		db "%-18.18s %5.1f",0ah,0
_cstring_free_physical___:		db "free physical      %5.1f",0ah,0
_cstring_:		db "------------------------",0ah,0



;All constant floats and doubles:
SECTION .rdata
_float_0_00000095:		dd 0x35800000	; 9.53674e-07

