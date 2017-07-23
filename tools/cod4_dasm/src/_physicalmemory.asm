;Imports of physicalmemory:
	extern Sys_OutOfMemErrorInternal
	extern Com_PrintError
	extern Com_Printf
	extern VirtualAlloc
	extern memset

;Exports of physicalmemory:
	global g_mem
	global g_overAllocatedSize
	global PMem_Alloc
	global PMem_EndAlloc
	global PMem_BeginAlloc
	global PMem_DumpMemStats
	global PMem_GetOverAllocatedSize
	global PMem_Free
	global PMem_Init


SECTION .text


;PMem_Alloc(unsigned int, unsigned int, unsigned int, unsigned int)
PMem_Alloc:
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
	jnz PMem_Alloc_10
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
	jg PMem_Alloc_20
PMem_Alloc_50:
	mov [esi+0x8], edi
	add ebx, [g_mem]
	mov eax, ebx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PMem_Alloc_10:
	mov ebx, [esi+0x8]
	sub ebx, [ebp+0x8]
	not eax
	and ebx, eax
	mov eax, [g_mem+0xc]
	sub eax, ebx
	mov [g_overAllocatedSize], eax
	test eax, eax
	jg PMem_Alloc_30
	mov [esi+0x8], ebx
PMem_Alloc_40:
	add ebx, [g_mem]
	mov eax, ebx
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
PMem_Alloc_30:
	mov dword [esp+0x4], 0x281
	mov dword [esp], _cstring_aspyrbuilddepotc
	call Sys_OutOfMemErrorInternal
	mov [esi+0x8], ebx
	jmp PMem_Alloc_40
PMem_Alloc_20:
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_need_i_more_byte
	mov dword [esp], 0x10
	call Com_PrintError
	mov dword [esp+0x4], 0x260
	mov dword [esp], _cstring_aspyrbuilddepotc
	call Sys_OutOfMemErrorInternal
	jmp PMem_Alloc_50


;PMem_EndAlloc(char const*, unsigned int)
PMem_EndAlloc:
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
PMem_BeginAlloc:
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
PMem_DumpMemStats:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edx, [g_mem+0x114]
	test edx, edx
	jz PMem_DumpMemStats_10
	xor esi, esi
	jmp PMem_DumpMemStats_20
PMem_DumpMemStats_30:
	lea ebx, [esi+0x1]
	mov ecx, [ebx*8+g_mem+0x120]
PMem_DumpMemStats_40:
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
	call Com_Printf
	mov edx, [g_mem+0x114]
	cmp edx, ebx
	jbe PMem_DumpMemStats_10
	mov esi, ebx
PMem_DumpMemStats_20:
	lea eax, [edx-0x1]
	cmp esi, eax
	jnz PMem_DumpMemStats_30
	mov ecx, [g_mem+0x118]
	mov ebx, edx
	jmp PMem_DumpMemStats_40
PMem_DumpMemStats_10:
	mov eax, [g_mem+0x118]
	sub eax, [g_mem+0xc]
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float_0_00000095]
	cvtss2sd xmm0, xmm0
	movsd [esp+0x8], xmm0
	mov dword [esp+0x4], _cstring_free_physical___
	mov dword [esp], 0x10
	call Com_Printf
	mov edx, [g_mem+0xc]
	mov edi, [g_mem+0x8]
	mov eax, edi
	sub eax, 0x1
	js PMem_DumpMemStats_50
	lea ebx, [eax*8+g_mem+0x10]
	xor esi, esi
PMem_DumpMemStats_60:
	sub edx, [ebx+0x4]
	cvtsi2ss xmm0, edx
	mulss xmm0, [_float_0_00000095]
	cvtss2sd xmm0, xmm0
	movsd [esp+0xc], xmm0
	mov eax, [ebx]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_1818s_51f
	mov dword [esp], 0x10
	call Com_Printf
	mov edx, [ebx+0x4]
	add esi, 0x1
	sub ebx, 0x8
	cmp esi, edi
	jnz PMem_DumpMemStats_60
PMem_DumpMemStats_50:
	mov dword [esp+0x4], _cstring_
	mov dword [esp], 0x10
	call Com_Printf
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;PMem_GetOverAllocatedSize()
PMem_GetOverAllocatedSize:
	push ebp
	mov ebp, esp
	mov eax, [g_overAllocatedSize]
	pop ebp
	ret
	add [eax], al


;PMem_Free(char const*, unsigned int)
PMem_Free:
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
	jz PMem_Free_10
	cmp [ecx+0xc], ebx
	jz PMem_Free_20
	xor edx, edx
PMem_Free_30:
	add edx, 0x1
	cmp eax, edx
	jz PMem_Free_10
	cmp ebx, [ecx+edx*8+0xc]
	jnz PMem_Free_30
PMem_Free_50:
	lea eax, [ecx+edx*8]
	lea esi, [eax+0xc]
	mov dword [eax+0xc], 0x0
	mov ebx, [ecx+0x4]
	lea eax, [ebx-0x1]
	cmp eax, edx
	jnz PMem_Free_10
	lea edx, [ecx+ebx*8-0x8]
PMem_Free_40:
	mov eax, [esi+0x4]
	mov [ecx+0x8], eax
	lea eax, [ebx-0x1]
	mov ebx, eax
	sub edx, 0x8
	mov [ecx+0x4], eax
	test eax, eax
	jz PMem_Free_10
	lea esi, [edx+0xc]
	mov eax, [edx+0xc]
	test eax, eax
	jz PMem_Free_40
PMem_Free_10:
	pop ebx
	pop esi
	pop ebp
	ret
PMem_Free_20:
	xor edx, edx
	jmp PMem_Free_50
	nop


;PMem_Init()
PMem_Init:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov dword [esp+0xc], 0x4
	mov dword [esp+0x8], 0x1000
	mov dword [esp+0x4], 0x8000000
	mov dword [esp], 0x0
	call VirtualAlloc
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

