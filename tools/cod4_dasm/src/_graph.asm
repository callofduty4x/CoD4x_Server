;Imports of graph:
	extern Com_Memset
	extern Com_LoadInfoString
	extern Q_strncpyz
	extern Com_BeginParseSession
	extern Com_Parse
	extern atoi
	extern atof
	extern Com_Error
	extern Com_EndParseSession

;Exports of graph:
	global GraphFloat_Load


SECTION .text


;GraphFloat_Load(GraphFloat*, char const*, float)
GraphFloat_Load:
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
	call Com_Memset
	lea eax, [ebp-0x201c]
	mov [esp+0xc], eax
	mov dword [esp+0x8], _cstring_graph_float_file
	mov dword [esp+0x4], _cstring_graph
	mov edx, [ebp+0xc]
	mov [esp], edx
	call Com_LoadInfoString
	mov [ebp-0x1c], eax
	mov dword [esp+0x8], 0x40
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call Q_strncpyz
	mov eax, [ebp+0xc]
	mov [esp], eax
	call Com_BeginParseSession
	lea edi, [ebp-0x1c]
	mov [esp], edi
	call Com_Parse
	mov [esp], eax
	call atoi
	mov edx, [ebp+0x8]
	mov [edx+0x140], eax
	mov ebx, edx
	xor esi, esi
	jmp GraphFloat_Load_10
GraphFloat_Load_30:
	movss xmm0, dword [ebp-0x202c]
	movss [ebx+0x40], xmm0
	movss xmm0, dword [ebp-0x2030]
	movss [ebx+0x44], xmm0
	add esi, 0x1
	add ebx, 0x8
GraphFloat_Load_10:
	mov [esp], edi
	call Com_Parse
	movzx edx, byte [eax]
	test dl, dl
	jz GraphFloat_Load_20
	cmp dl, 0x7d
	jz GraphFloat_Load_20
	mov [esp], eax
	call atof
	fstp qword [ebp-0x2040]
	cvtsd2ss xmm0, [ebp-0x2040]
	movss [ebp-0x202c], xmm0
	mov [esp], edi
	call Com_Parse
	movzx edx, byte [eax]
	test dl, dl
	jz GraphFloat_Load_20
	cmp dl, 0x7d
	jz GraphFloat_Load_20
	mov [esp], eax
	call atof
	fstp qword [ebp-0x2038]
	cvtsd2ss xmm0, [ebp-0x2038]
	movss [ebp-0x2030], xmm0
	cmp esi, 0x1f
	jle GraphFloat_Load_30
	mov dword [esp+0xc], 0x20
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_graphfloat_parse
	mov dword [esp], 0x2
	call Com_Error
	jmp GraphFloat_Load_30
GraphFloat_Load_20:
	call Com_EndParseSession
	mov eax, [ebp+0x8]
	cmp [eax+0x140], esi
	jz GraphFloat_Load_40
	mov edx, [ebp+0xc]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_graphfloat_parse1
	mov dword [esp], 0x2
	call Com_Error
	mov edx, [ebp+0x8]
	mov eax, [ebp+0x10]
	mov [edx+0x144], eax
	add esp, 0x204c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
GraphFloat_Load_40:
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

