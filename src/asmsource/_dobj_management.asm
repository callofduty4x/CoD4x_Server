;Imports of dobj_management:
	extern Com_Memset
	extern DObjUnarchive
	extern DObjArchive
	extern DObjCreate
	extern Com_Error
	extern DObjFree
	extern DObjSkelClear

;Exports of dobj_management:
	global g_bDObjInited
	global com_lastDObjIndex
	global serverObjMap
	global clientObjMap
	global objFreeCount
	global objAlloced
	global objBuf
	global Com_InitDObj
	global DB_LoadDObjs
	global DB_SaveDObjs
	global Com_ShutdownDObj
	global Com_GetClientDObj
	global Com_GetServerDObj
	global Com_ClientDObjCreate
	global Com_ServerDObjCreate
	global Com_SafeClientDObjFree
	global Com_SafeServerDObjFree
	global Com_ClientDObjClearAllSkel


SECTION .text


;Com_InitDObj()
Com_InitDObj:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0x8], 0x800
	mov dword [esp+0x4], 0x0
	mov dword [esp], objAlloced
	call Com_Memset
	mov dword [objFreeCount], 0x7ff
	mov dword [esp+0x8], 0x900
	mov dword [esp+0x4], 0x0
	mov dword [esp], clientObjMap
	call Com_Memset
	mov dword [esp+0x8], 0x800
	mov dword [esp+0x4], 0x0
	mov dword [esp], serverObjMap
	call Com_Memset
	mov dword [com_lastDObjIndex], 0x1
	mov dword [g_bDObjInited], 0x1
	leave
	ret


;DB_LoadDObjs()
DB_LoadDObjs:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, clientObjMap
DB_LoadDObjs_20:
	movzx eax, word [ebx]
	test ax, ax
	jz DB_LoadDObjs_10
	cwde
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	lea eax, [eax*4+objBuf]
	test eax, eax
	jz DB_LoadDObjs_10
	mov [esp], eax
	call DObjUnarchive
DB_LoadDObjs_10:
	add ebx, 0x2
	cmp ebx, objFreeCount
	jnz DB_LoadDObjs_20
	mov ebx, serverObjMap
	mov esi, clientObjMap
DB_LoadDObjs_40:
	movzx eax, word [ebx]
	test ax, ax
	jz DB_LoadDObjs_30
	cwde
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	lea eax, [eax*4+objBuf]
	test eax, eax
	jz DB_LoadDObjs_30
	mov [esp], eax
	call DObjUnarchive
DB_LoadDObjs_30:
	add ebx, 0x2
	cmp esi, ebx
	jnz DB_LoadDObjs_40
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;DB_SaveDObjs()
DB_SaveDObjs:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, clientObjMap
DB_SaveDObjs_20:
	movzx eax, word [ebx]
	test ax, ax
	jz DB_SaveDObjs_10
	cwde
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	lea eax, [eax*4+objBuf]
	test eax, eax
	jz DB_SaveDObjs_10
	mov [esp], eax
	call DObjArchive
DB_SaveDObjs_10:
	add ebx, 0x2
	cmp ebx, objFreeCount
	jnz DB_SaveDObjs_20
	mov ebx, serverObjMap
	mov esi, clientObjMap
DB_SaveDObjs_40:
	movzx eax, word [ebx]
	test ax, ax
	jz DB_SaveDObjs_30
	cwde
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	lea eax, [eax*4+objBuf]
	test eax, eax
	jz DB_SaveDObjs_30
	mov [esp], eax
	call DObjArchive
DB_SaveDObjs_30:
	add ebx, 0x2
	cmp esi, ebx
	jnz DB_SaveDObjs_40
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;Com_ShutdownDObj()
Com_ShutdownDObj:
	push ebp
	mov ebp, esp
	mov dword [g_bDObjInited], 0x0
	pop ebp
	ret
	nop


;Com_GetClientDObj(int, int)
Com_GetClientDObj:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0xc]
	lea eax, [eax+eax*8]
	shl eax, 0x7
	add eax, [ebp+0x8]
	movzx eax, word [eax+eax+clientObjMap]
	test ax, ax
	jz Com_GetClientDObj_10
	cwde
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	lea eax, [eax*4+objBuf]
	pop ebp
	ret
Com_GetClientDObj_10:
	xor eax, eax
	pop ebp
	ret


;Com_GetServerDObj(int)
Com_GetServerDObj:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	movzx eax, word [eax+eax+serverObjMap]
	test ax, ax
	jz Com_GetServerDObj_10
	cwde
	lea eax, [eax+eax*4]
	lea eax, [eax+eax*4]
	lea eax, [eax*4+objBuf]
	pop ebp
	ret
Com_GetServerDObj_10:
	xor eax, eax
	pop ebp
	ret
	nop


;Com_ClientDObjCreate(DObjModel_s*, unsigned short, XAnimTree_s*, int, int)
Com_ClientDObjCreate:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	movzx esi, word [ebp+0xc]
	mov ecx, [com_lastDObjIndex]
	lea ebx, [ecx+0x1]
	cmp ebx, 0x7ff
	jle Com_ClientDObjCreate_10
Com_ClientDObjCreate_100:
	test ecx, ecx
	jg Com_ClientDObjCreate_20
Com_ClientDObjCreate_70:
	xor ebx, ebx
	xor edx, edx
	jmp Com_ClientDObjCreate_30
Com_ClientDObjCreate_10:
	cmp byte [ebx+objAlloced], 0x0
	jnz Com_ClientDObjCreate_40
Com_ClientDObjCreate_90:
	mov [com_lastDObjIndex], ebx
	mov byte [ebx+objAlloced], 0x1
	sub dword [objFreeCount], 0x1
	mov edx, ebx
Com_ClientDObjCreate_30:
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
	call DObjCreate
	mov edx, [objFreeCount]
	test edx, edx
	jnz Com_ClientDObjCreate_50
	mov dword [esp+0x4], _cstring_no_free_dobjs
	mov dword [esp], 0x2
	call Com_Error
Com_ClientDObjCreate_50:
	lea eax, [ebx+ebx*4]
	lea eax, [eax+eax*4]
	lea eax, [eax*4+objBuf]
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
Com_ClientDObjCreate_20:
	cmp byte [objAlloced+0x1], 0x0
	jz Com_ClientDObjCreate_60
	mov ebx, 0x1
Com_ClientDObjCreate_80:
	add ebx, 0x1
	cmp ecx, ebx
	jl Com_ClientDObjCreate_70
	cmp byte [ebx+objAlloced], 0x0
	jnz Com_ClientDObjCreate_80
	jmp Com_ClientDObjCreate_90
Com_ClientDObjCreate_40:
	lea edx, [ebx+objAlloced]
Com_ClientDObjCreate_110:
	add ebx, 0x1
	cmp ebx, 0x800
	jz Com_ClientDObjCreate_100
	movzx eax, byte [edx+0x1]
	add edx, 0x1
	test al, al
	jnz Com_ClientDObjCreate_110
	jmp Com_ClientDObjCreate_90
Com_ClientDObjCreate_60:
	mov ebx, 0x1
	jmp Com_ClientDObjCreate_90
	add [eax], al


;Com_ServerDObjCreate(DObjModel_s*, unsigned short, XAnimTree_s*, int)
Com_ServerDObjCreate:
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
	jle Com_ServerDObjCreate_10
Com_ServerDObjCreate_100:
	test ecx, ecx
	jg Com_ServerDObjCreate_20
Com_ServerDObjCreate_70:
	xor ebx, ebx
	xor eax, eax
	jmp Com_ServerDObjCreate_30
Com_ServerDObjCreate_10:
	cmp byte [ebx+objAlloced], 0x0
	jnz Com_ServerDObjCreate_40
Com_ServerDObjCreate_90:
	mov [com_lastDObjIndex], ebx
	mov byte [ebx+objAlloced], 0x1
	sub dword [objFreeCount], 0x1
	mov eax, ebx
Com_ServerDObjCreate_30:
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
	call DObjCreate
	mov eax, [objFreeCount]
	test eax, eax
	jnz Com_ServerDObjCreate_50
	mov dword [esp+0x4], _cstring_no_free_dobjs
	mov dword [esp], 0x2
	call Com_Error
Com_ServerDObjCreate_50:
	lea eax, [ebx+ebx*4]
	lea eax, [eax+eax*4]
	lea eax, [eax*4+objBuf]
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Com_ServerDObjCreate_20:
	cmp byte [objAlloced+0x1], 0x0
	jz Com_ServerDObjCreate_60
	mov ebx, 0x1
Com_ServerDObjCreate_80:
	add ebx, 0x1
	cmp ecx, ebx
	jl Com_ServerDObjCreate_70
	cmp byte [ebx+objAlloced], 0x0
	jnz Com_ServerDObjCreate_80
	jmp Com_ServerDObjCreate_90
Com_ServerDObjCreate_40:
	lea edx, [ebx+objAlloced]
Com_ServerDObjCreate_110:
	add ebx, 0x1
	cmp ebx, 0x800
	jz Com_ServerDObjCreate_100
	movzx eax, byte [edx+0x1]
	add edx, 0x1
	test al, al
	jnz Com_ServerDObjCreate_110
	jmp Com_ServerDObjCreate_90
Com_ServerDObjCreate_60:
	mov ebx, 0x1
	jmp Com_ServerDObjCreate_90


;Com_SafeClientDObjFree(int, int)
Com_SafeClientDObjFree:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	movzx eax, word [ecx+ecx+clientObjMap]
	movsx edx, ax
	test ax, ax
	jnz Com_SafeClientDObjFree_10
	pop ebp
	ret
Com_SafeClientDObjFree_10:
	mov word [ecx+ecx+clientObjMap], 0x0
	mov byte [edx+objAlloced], 0x0
	add dword [objFreeCount], 0x1
	lea eax, [edx+edx*4]
	lea eax, [eax+eax*4]
	lea eax, [eax*4+objBuf]
	mov [ebp+0x8], eax
	pop ebp
	jmp DObjFree


;Com_SafeServerDObjFree(int)
Com_SafeServerDObjFree:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	movzx eax, word [ecx+ecx+serverObjMap]
	movsx edx, ax
	test ax, ax
	jnz Com_SafeServerDObjFree_10
	pop ebp
	ret
Com_SafeServerDObjFree_10:
	mov word [ecx+ecx+serverObjMap], 0x0
	mov byte [edx+objAlloced], 0x0
	add dword [objFreeCount], 0x1
	lea eax, [edx+edx*4]
	lea eax, [eax+eax*4]
	lea eax, [eax*4+objBuf]
	mov [ebp+0x8], eax
	pop ebp
	jmp DObjFree


;Com_ClientDObjClearAllSkel(int)
Com_ClientDObjClearAllSkel:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, clientObjMap
	mov esi, objFreeCount
	jmp Com_ClientDObjClearAllSkel_10
Com_ClientDObjClearAllSkel_30:
	add ebx, 0x2
	cmp esi, ebx
	jz Com_ClientDObjClearAllSkel_20
Com_ClientDObjClearAllSkel_10:
	movzx eax, word [ebx]
	movsx edx, ax
	test ax, ax
	jz Com_ClientDObjClearAllSkel_30
	lea eax, [edx+edx*4]
	lea eax, [eax+eax*4]
	lea eax, [eax*4+objBuf]
	mov [esp], eax
	call DObjSkelClear
	add ebx, 0x2
	cmp esi, ebx
	jnz Com_ClientDObjClearAllSkel_10
Com_ClientDObjClearAllSkel_20:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;Zero initialized global or static variables of dobj_management:
SECTION .bss
g_bDObjInited: resb 0x4
com_lastDObjIndex: resb 0x1c
serverObjMap: resb 0x800
clientObjMap: resb 0x900
objFreeCount: resb 0x20
objAlloced: resb 0x800
objBuf: resb 0x32040


;Initialized global or static variables of dobj_management:
SECTION .data


;Initialized constant data of dobj_management:
SECTION .rdata


;All cstrings:
SECTION .rdata
_cstring_no_free_dobjs:		db 15h,"No free DObjs",0



;All constant floats and doubles:
SECTION .rdata

