;Imports of graph:
	extern _Z10Com_MemsetPvii
	extern _Z18Com_LoadInfoStringPKcS0_S0_Pc
	extern _Z10I_strncpyzPcPKci
	extern _Z21Com_BeginParseSessionPKc
	extern _Z9Com_ParsePPKc
	extern atoi
	extern atof
	extern _Z9Com_Error11errorParm_tPKcz
	extern _Z19Com_EndParseSessionv

;Exports of graph:
	global _Z15GraphFloat_LoadP10GraphFloatPKcf


SECTION .text


;GraphFloat_Load(GraphFloat*, char const*, float)
_Z15GraphFloat_LoadP10GraphFloatPKcf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x204c
	mov dword [esp+0x8], 0x148
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z10Com_MemsetPvii
	lea eax, [ebp-0x201c]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_graph_float_file
	mov dword [esp+0x4], _cstring_graph
	mov edx, [ebp+0xc]
	mov [esp], edx
	call _Z18Com_LoadInfoStringPKcS0_S0_Pc
	mov [ebp-0x1c], eax
	mov dword [esp+0x8], 0x40
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z10I_strncpyzPcPKci
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z21Com_BeginParseSessionPKc
	lea edi, [ebp-0x1c]
	mov [esp], edi
	call _Z9Com_ParsePPKc
	mov [esp], eax
	call atoi
	mov edx, [ebp+0x8]
	mov [edx+0x140], eax
	mov ebx, edx
	xor esi, esi
	jmp _Z15GraphFloat_LoadP10GraphFloatPKcf_10
_Z15GraphFloat_LoadP10GraphFloatPKcf_30:
	movss xmm0, dword [ebp-0x202c]
	movss [ebx+0x40], xmm0
	movss xmm0, dword [ebp-0x2030]
	movss [ebx+0x44], xmm0
	add esi, 0x1
	add ebx, 0x8
_Z15GraphFloat_LoadP10GraphFloatPKcf_10:
	mov [esp], edi
	call _Z9Com_ParsePPKc
	movzx edx, byte [eax]
	test dl, dl
	jz _Z15GraphFloat_LoadP10GraphFloatPKcf_20
	cmp dl, 0x7d
	jz _Z15GraphFloat_LoadP10GraphFloatPKcf_20
	mov [esp], eax
	call atof
	fstp qword [ebp-0x2040]
	cvtsd2ss xmm0, [ebp-0x2040]
	movss [ebp-0x202c], xmm0
	mov [esp], edi
	call _Z9Com_ParsePPKc
	movzx edx, byte [eax]
	test dl, dl
	jz _Z15GraphFloat_LoadP10GraphFloatPKcf_20
	cmp dl, 0x7d
	jz _Z15GraphFloat_LoadP10GraphFloatPKcf_20
	mov [esp], eax
	call atof
	fstp qword [ebp-0x2038]
	cvtsd2ss xmm0, [ebp-0x2038]
	movss [ebp-0x2030], xmm0
	cmp esi, 0x1f
	jle _Z15GraphFloat_LoadP10GraphFloatPKcf_30
	mov dword [esp+0xc], 0x20
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_graphfloat_parse
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z15GraphFloat_LoadP10GraphFloatPKcf_30
_Z15GraphFloat_LoadP10GraphFloatPKcf_20:
	call _Z19Com_EndParseSessionv
	mov eax, [ebp+0x8]
	cmp [eax+0x140], esi
	jz _Z15GraphFloat_LoadP10GraphFloatPKcf_40
	mov edx, [ebp+0xc]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_graphfloat_parse1
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov edx, [ebp+0x8]
	mov eax, [ebp+0x10]
	mov [edx+0x144], eax
	add esp, 0x204c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z15GraphFloat_LoadP10GraphFloatPKcf_40:
	mov edx, eax
	mov eax, [ebp+0x10]
	mov [edx+0x144], eax
	add esp, 0x204c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Initialized global or static variables of graph:
SECTION .data


;Initialized constant data of graph:
SECTION .rdata


;Zero initialized global or static variables of graph:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_graph_float_file:		db "GRAPH_FLOAT_FILE",0
_cstring_graph:		db "graph",0
_cstring_graphfloat_parse:		db 015h,"GraphFloat_ParseBuffer: File [%s] has too many knots.  Max is [%d]",0ah,0
_cstring_graphfloat_parse1:		db 015h,"GraphFloat_ParseBuffer: Error parsing graph file [%s]",0



;All constant floats and doubles:
SECTION .rdata

