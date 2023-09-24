;Imports of dobj_management:
	extern _Z10Com_MemsetPvii
	extern _Z13DObjUnarchiveP6DObj_s
	extern _Z11DObjArchiveP6DObj_s
	extern _Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj
	extern _Z9Com_Error11errorParm_tPKcz
	extern _Z8DObjFreeP6DObj_s
	extern _Z13DObjSkelClearPK6DObj_s

;Exports of dobj_management:
	global g_bDObjInited
	global com_lastDObjIndex
	global serverObjMap
	global clientObjMap
	global objFreeCount
	global objAlloced
	global objBuf
	global _Z12Com_InitDObjv
	global _Z12DB_LoadDObjsv
	global _Z12DB_SaveDObjsv
	global _Z16Com_ShutdownDObjv
	global _Z17Com_GetClientDObjii
	global _Z17Com_GetServerDObji
	global _Z20Com_ClientDObjCreateP11DObjModel_stP11XAnimTree_sii
	global _Z20Com_ServerDObjCreateP11DObjModel_stP11XAnimTree_si
	global _Z22Com_SafeClientDObjFreeii
	global _Z22Com_SafeServerDObjFreei
	global _Z26Com_ClientDObjClearAllSkeli


SECTION .text


;Com_InitDObj()
_Z12Com_InitDObjv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], 0x800
	mov dword [esp+0x4], 0x0
	mov dword [esp], objAlloced
	call _Z10Com_MemsetPvii
	mov dword [objFreeCount], 0x7ff
	mov dword [esp+0x8], 0x900
	mov dword [esp+0x4], 0x0
	mov dword [esp], clientObjMap
	call _Z10Com_MemsetPvii
	mov dword [esp+0x8], 0x800
	mov dword [esp+0x4], 0x0
	mov dword [esp], serverObjMap
	call _Z10Com_MemsetPvii
	mov dword [com_lastDObjIndex], 0x1
	mov dword [g_bDObjInited], 0x1
	leave
	ret


;DB_LoadDObjs()
_Z12DB_LoadDObjsv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, clientObjMap
_Z12DB_LoadDObjsv_20:
	movzx eax, word [ebx]
	test ax, ax
	jz _Z12DB_LoadDObjsv_10
	cwde
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	lea eax, [eax*4+objBuf]
	test eax, eax
	jz _Z12DB_LoadDObjsv_10
	mov [esp], eax
	call _Z13DObjUnarchiveP6DObj_s
_Z12DB_LoadDObjsv_10:
	add ebx, 0x2
	cmp ebx, objFreeCount
	jnz _Z12DB_LoadDObjsv_20
	mov ebx, serverObjMap
	mov esi, clientObjMap
_Z12DB_LoadDObjsv_40:
	movzx eax, word [ebx]
	test ax, ax
	jz _Z12DB_LoadDObjsv_30
	cwde
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	lea eax, [eax*4+objBuf]
	test eax, eax
	jz _Z12DB_LoadDObjsv_30
	mov [esp], eax
	call _Z13DObjUnarchiveP6DObj_s
_Z12DB_LoadDObjsv_30:
	add ebx, 0x2
	cmp esi, ebx
	jnz _Z12DB_LoadDObjsv_40
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;DB_SaveDObjs()
_Z12DB_SaveDObjsv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, clientObjMap
_Z12DB_SaveDObjsv_20:
	movzx eax, word [ebx]
	test ax, ax
	jz _Z12DB_SaveDObjsv_10
	cwde
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	lea eax, [eax*4+objBuf]
	test eax, eax
	jz _Z12DB_SaveDObjsv_10
	mov [esp], eax
	call _Z11DObjArchiveP6DObj_s
_Z12DB_SaveDObjsv_10:
	add ebx, 0x2
	cmp ebx, objFreeCount
	jnz _Z12DB_SaveDObjsv_20
	mov ebx, serverObjMap
	mov esi, clientObjMap
_Z12DB_SaveDObjsv_40:
	movzx eax, word [ebx]
	test ax, ax
	jz _Z12DB_SaveDObjsv_30
	cwde
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	lea eax, [eax*4+objBuf]
	test eax, eax
	jz _Z12DB_SaveDObjsv_30
	mov [esp], eax
	call _Z11DObjArchiveP6DObj_s
_Z12DB_SaveDObjsv_30:
	add ebx, 0x2
	cmp esi, ebx
	jnz _Z12DB_SaveDObjsv_40
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;Com_ShutdownDObj()
_Z16Com_ShutdownDObjv:
	push ebp
	mov ebp, esp
	mov dword [g_bDObjInited], 0x0
	pop ebp
	ret
	nop


;Com_GetClientDObj(int, int)
_Z17Com_GetClientDObjii:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0xc]
	lea eax, [eax+eax*8]
	shl eax, 0x7
	add eax, [ebp+0x8]
	movzx eax, word [eax+eax+clientObjMap]
	test ax, ax
	jz _Z17Com_GetClientDObjii_10
	cwde
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	lea eax, [eax*4+objBuf]
	pop ebp
	ret
_Z17Com_GetClientDObjii_10:
	xor eax, eax
	pop ebp
	ret


;Com_GetServerDObj(int)
_Z17Com_GetServerDObji:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	movzx eax, word [eax+eax+serverObjMap]
	test ax, ax
	jz _Z17Com_GetServerDObji_10
	cwde
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	lea eax, [eax*4+objBuf]
	pop ebp
	ret
_Z17Com_GetServerDObji_10:
	xor eax, eax
	pop ebp
	ret
	nop


;Com_ClientDObjCreate(DObjModel_s*, unsigned short, XAnimTree_s*, int, int)
_Z20Com_ClientDObjCreateP11DObjModel_stP11XAnimTree_sii:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	movzx esi, word [ebp+0xc]
	mov ecx, [com_lastDObjIndex]
	lea ebx, [ecx+0x1]
	cmp ebx, 0x7ff
	jle _Z20Com_ClientDObjCreateP11DObjModel_stP11XAnimTree_sii_10
_Z20Com_ClientDObjCreateP11DObjModel_stP11XAnimTree_sii_100:
	test ecx, ecx
	jg _Z20Com_ClientDObjCreateP11DObjModel_stP11XAnimTree_sii_20
_Z20Com_ClientDObjCreateP11DObjModel_stP11XAnimTree_sii_70:
	xor ebx, ebx
	xor edx, edx
	jmp _Z20Com_ClientDObjCreateP11DObjModel_stP11XAnimTree_sii_30
_Z20Com_ClientDObjCreateP11DObjModel_stP11XAnimTree_sii_10:
	cmp byte [ebx+objAlloced], 0x0
	jnz _Z20Com_ClientDObjCreateP11DObjModel_stP11XAnimTree_sii_40
_Z20Com_ClientDObjCreateP11DObjModel_stP11XAnimTree_sii_90:
	mov [com_lastDObjIndex], ebx
	mov byte [ebx+objAlloced], 0x1
	sub dword [objFreeCount], 0x1
	mov edx, ebx
_Z20Com_ClientDObjCreateP11DObjModel_stP11XAnimTree_sii_30:
	mov eax, [ebp+0x14]
	mov [eax+eax+clientObjMap], dx
	mov dword [esp+0x10], 0x0
	lea eax, [ebx+ebx*4]
	lea eax, [eax+eax*4]
	lea eax, [eax*4+objBuf]
	mov [esp+0xc], eax
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	movzx eax, si
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj
	mov edx, [objFreeCount]
	test edx, edx
	jnz _Z20Com_ClientDObjCreateP11DObjModel_stP11XAnimTree_sii_50
	mov dword [esp+0x4], _cstring_no_free_dobjs
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z20Com_ClientDObjCreateP11DObjModel_stP11XAnimTree_sii_50:
	lea eax, [ebx+ebx*4]
	lea eax, [eax+eax*4]
	lea eax, [eax*4+objBuf]
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
_Z20Com_ClientDObjCreateP11DObjModel_stP11XAnimTree_sii_20:
	cmp byte [objAlloced+0x1], 0x0
	jz _Z20Com_ClientDObjCreateP11DObjModel_stP11XAnimTree_sii_60
	mov ebx, 0x1
_Z20Com_ClientDObjCreateP11DObjModel_stP11XAnimTree_sii_80:
	add ebx, 0x1
	cmp ecx, ebx
	jl _Z20Com_ClientDObjCreateP11DObjModel_stP11XAnimTree_sii_70
	cmp byte [ebx+objAlloced], 0x0
	jnz _Z20Com_ClientDObjCreateP11DObjModel_stP11XAnimTree_sii_80
	jmp _Z20Com_ClientDObjCreateP11DObjModel_stP11XAnimTree_sii_90
_Z20Com_ClientDObjCreateP11DObjModel_stP11XAnimTree_sii_40:
	lea edx, [ebx+objAlloced]
_Z20Com_ClientDObjCreateP11DObjModel_stP11XAnimTree_sii_110:
	add ebx, 0x1
	cmp ebx, 0x800
	jz _Z20Com_ClientDObjCreateP11DObjModel_stP11XAnimTree_sii_100
	movzx eax, byte [edx+0x1]
	add edx, 0x1
	test al, al
	jnz _Z20Com_ClientDObjCreateP11DObjModel_stP11XAnimTree_sii_110
	jmp _Z20Com_ClientDObjCreateP11DObjModel_stP11XAnimTree_sii_90
_Z20Com_ClientDObjCreateP11DObjModel_stP11XAnimTree_sii_60:
	mov ebx, 0x1
	jmp _Z20Com_ClientDObjCreateP11DObjModel_stP11XAnimTree_sii_90
	add [eax], al


;Com_ServerDObjCreate(DObjModel_s*, unsigned short, XAnimTree_s*, int)
_Z20Com_ServerDObjCreateP11DObjModel_stP11XAnimTree_si:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0x14]
	movzx esi, word [ebp+0xc]
	mov ecx, [com_lastDObjIndex]
	lea ebx, [ecx+0x1]
	cmp ebx, 0x7ff
	jle _Z20Com_ServerDObjCreateP11DObjModel_stP11XAnimTree_si_10
_Z20Com_ServerDObjCreateP11DObjModel_stP11XAnimTree_si_100:
	test ecx, ecx
	jg _Z20Com_ServerDObjCreateP11DObjModel_stP11XAnimTree_si_20
_Z20Com_ServerDObjCreateP11DObjModel_stP11XAnimTree_si_70:
	xor ebx, ebx
	xor eax, eax
	jmp _Z20Com_ServerDObjCreateP11DObjModel_stP11XAnimTree_si_30
_Z20Com_ServerDObjCreateP11DObjModel_stP11XAnimTree_si_10:
	cmp byte [ebx+objAlloced], 0x0
	jnz _Z20Com_ServerDObjCreateP11DObjModel_stP11XAnimTree_si_40
_Z20Com_ServerDObjCreateP11DObjModel_stP11XAnimTree_si_90:
	mov [com_lastDObjIndex], ebx
	mov byte [ebx+objAlloced], 0x1
	sub dword [objFreeCount], 0x1
	mov eax, ebx
_Z20Com_ServerDObjCreateP11DObjModel_stP11XAnimTree_si_30:
	mov [edi+edi+serverObjMap], ax
	lea eax, [edi+0x1]
	movzx eax, ax
	mov [esp+0x10], eax
	lea eax, [ebx+ebx*4]
	lea eax, [eax+eax*4]
	lea eax, [eax*4+objBuf]
	mov [esp+0xc], eax
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	movzx eax, si
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z10DObjCreateP11DObjModel_sjP11XAnimTree_sPcj
	mov eax, [objFreeCount]
	test eax, eax
	jnz _Z20Com_ServerDObjCreateP11DObjModel_stP11XAnimTree_si_50
	mov dword [esp+0x4], _cstring_no_free_dobjs
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
_Z20Com_ServerDObjCreateP11DObjModel_stP11XAnimTree_si_50:
	lea eax, [ebx+ebx*4]
	lea eax, [eax+eax*4]
	lea eax, [eax*4+objBuf]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20Com_ServerDObjCreateP11DObjModel_stP11XAnimTree_si_20:
	cmp byte [objAlloced+0x1], 0x0
	jz _Z20Com_ServerDObjCreateP11DObjModel_stP11XAnimTree_si_60
	mov ebx, 0x1
_Z20Com_ServerDObjCreateP11DObjModel_stP11XAnimTree_si_80:
	add ebx, 0x1
	cmp ecx, ebx
	jl _Z20Com_ServerDObjCreateP11DObjModel_stP11XAnimTree_si_70
	cmp byte [ebx+objAlloced], 0x0
	jnz _Z20Com_ServerDObjCreateP11DObjModel_stP11XAnimTree_si_80
	jmp _Z20Com_ServerDObjCreateP11DObjModel_stP11XAnimTree_si_90
_Z20Com_ServerDObjCreateP11DObjModel_stP11XAnimTree_si_40:
	lea edx, [ebx+objAlloced]
_Z20Com_ServerDObjCreateP11DObjModel_stP11XAnimTree_si_110:
	add ebx, 0x1
	cmp ebx, 0x800
	jz _Z20Com_ServerDObjCreateP11DObjModel_stP11XAnimTree_si_100
	movzx eax, byte [edx+0x1]
	add edx, 0x1
	test al, al
	jnz _Z20Com_ServerDObjCreateP11DObjModel_stP11XAnimTree_si_110
	jmp _Z20Com_ServerDObjCreateP11DObjModel_stP11XAnimTree_si_90
_Z20Com_ServerDObjCreateP11DObjModel_stP11XAnimTree_si_60:
	mov ebx, 0x1
	jmp _Z20Com_ServerDObjCreateP11DObjModel_stP11XAnimTree_si_90


;Com_SafeClientDObjFree(int, int)
_Z22Com_SafeClientDObjFreeii:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	movzx eax, word [ecx+ecx+clientObjMap]
	movsx edx, ax
	test ax, ax
	jnz _Z22Com_SafeClientDObjFreeii_10
	pop ebp
	ret
_Z22Com_SafeClientDObjFreeii_10:
	mov word [ecx+ecx+clientObjMap], 0x0
	mov byte [edx+objAlloced], 0x0
	add dword [objFreeCount], 0x1
	lea eax, [edx+edx*4]
	lea eax, [eax+eax*4]
	lea eax, [eax*4+objBuf]
	mov [ebp+0x8], eax
	pop ebp
	jmp _Z8DObjFreeP6DObj_s


;Com_SafeServerDObjFree(int)
_Z22Com_SafeServerDObjFreei:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	movzx eax, word [ecx+ecx+serverObjMap]
	movsx edx, ax
	test ax, ax
	jnz _Z22Com_SafeServerDObjFreei_10
	pop ebp
	ret
_Z22Com_SafeServerDObjFreei_10:
	mov word [ecx+ecx+serverObjMap], 0x0
	mov byte [edx+objAlloced], 0x0
	add dword [objFreeCount], 0x1
	lea eax, [edx+edx*4]
	lea eax, [eax+eax*4]
	lea eax, [eax*4+objBuf]
	mov [ebp+0x8], eax
	pop ebp
	jmp _Z8DObjFreeP6DObj_s


;Com_ClientDObjClearAllSkel(int)
_Z26Com_ClientDObjClearAllSkeli:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, clientObjMap
	mov esi, objFreeCount
	jmp _Z26Com_ClientDObjClearAllSkeli_10
_Z26Com_ClientDObjClearAllSkeli_30:
	add ebx, 0x2
	cmp esi, ebx
	jz _Z26Com_ClientDObjClearAllSkeli_20
_Z26Com_ClientDObjClearAllSkeli_10:
	movzx eax, word [ebx]
	movsx edx, ax
	test ax, ax
	jz _Z26Com_ClientDObjClearAllSkeli_30
	lea eax, [edx+edx*4]
	lea eax, [eax+eax*4]
	lea eax, [eax*4+objBuf]
	mov [esp], eax
	call _Z13DObjSkelClearPK6DObj_s
	add ebx, 0x2
	cmp esi, ebx
	jnz _Z26Com_ClientDObjClearAllSkeli_10
_Z26Com_ClientDObjClearAllSkeli_20:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;Initialized global or static variables of dobj_management:
SECTION .data


;Initialized constant data of dobj_management:
SECTION .rdata


;Zero initialized global or static variables of dobj_management:
SECTION .bss
g_bDObjInited: resb 0x4
com_lastDObjIndex: resb 0x1c
serverObjMap: resb 0x800
clientObjMap: resb 0x900
objFreeCount: resb 0x20
objAlloced: resb 0x800
objBuf: resb 0x32040


;All cstrings:
SECTION .rdata
_cstring_no_free_dobjs:		db 015h,"No free DObjs",0



;All constant floats and doubles:
SECTION .rdata

