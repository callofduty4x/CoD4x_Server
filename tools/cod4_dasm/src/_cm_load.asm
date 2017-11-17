;Imports of cm_load:
	extern Q_stricmp
	extern CM_LoadMapFromBsp
	extern CM_LoadStaticModels
	extern DynEnt_LoadEntities
	extern DB_FindXAssetHeader
	extern useFastFile
	extern g_traceThreadInfo
	extern Hunk_AllocInternal
	extern memcpy
	extern Com_Error
	extern Com_Memset
	extern CM_ClipHandleToModel
	extern Hunk_ClearTempMemoryHigh
	extern Hunk_AllocateTempMemoryHigh
	extern Sys_Error

;Exports of cm_load:
	global g_box_model
	global g_box_brush
	global CM_LoadMapData_LoadObj
	global CM_LoadMapData_FastFile
	global CM_LoadMap
	global CM_Shutdown
	global CM_Hunk_Alloc
	global CM_LeafCluster
	global CM_ModelBounds
	global CM_Hunk_ClearTempMemoryHigh
	global CM_Hunk_AllocateTempMemoryHigh
	global CM_Hunk_CheckTempMemoryHighClear
	global CM_Unload
	global cm


SECTION .text


;CM_LoadMapData_LoadObj(char const*)
CM_LoadMapData_LoadObj:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, [cm+0x4]
	test eax, eax
	jz CM_LoadMapData_LoadObj_10
	mov [esp+0x4], ebx
	mov eax, [cm]
	mov [esp], eax
	call Q_stricmp
	test eax, eax
	jz CM_LoadMapData_LoadObj_20
CM_LoadMapData_LoadObj_10:
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	call CM_LoadMapFromBsp
	call CM_LoadStaticModels
	add esp, 0x14
	pop ebx
	pop ebp
	jmp DynEnt_LoadEntities
CM_LoadMapData_LoadObj_20:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;CM_LoadMapData_FastFile(char const*)
CM_LoadMapData_FastFile:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0xb
	call DB_FindXAssetHeader
	leave
	ret
	nop


;CM_LoadMap(char const*, int*)
CM_LoadMap:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	test ebx, ebx
	jz CM_LoadMap_10
	cmp byte [ebx], 0x0
	jz CM_LoadMap_10
CM_LoadMap_20:
	mov eax, useFastFile
	mov eax, [eax]
	mov edx, CM_LoadMapData_FastFile
	cmp byte [eax+0xc], 0x0
	mov eax, CM_LoadMapData_LoadObj
	cmovz edx, eax
	mov [esp], ebx
	call edx
	mov ebx, g_traceThreadInfo
	mov dword [ebx], 0x0
	mov eax, [cm+0x74]
	shl eax, 0x2
	mov [esp], eax
	call Hunk_AllocInternal
	mov [ebx+0x4], eax
	mov dword [ebx+0x8], g_box_brush
	mov dword [esp+0x8], 0x50
	mov eax, [cm+0xa8]
	mov [esp+0x4], eax
	mov dword [esp], g_box_brush
	call memcpy
	mov dword [ebx+0xc], g_box_model
	mov dword [esp+0x8], 0x48
	mov dword [esp+0x4], cm+0xac
	mov dword [esp], g_box_model
	call memcpy
	mov dword [cm+0x4], 0x1
	mov edx, [cm+0x118]
	mov eax, [ebp+0xc]
	mov [eax], edx
	add esp, 0x14
	pop ebx
	pop ebp
	ret
CM_LoadMap_10:
	mov dword [esp+0x4], _cstring_cm_loadmap_null_
	mov dword [esp], 0x2
	call Com_Error
	jmp CM_LoadMap_20


;CM_Shutdown()
CM_Shutdown:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [cm]
	mov dword [esp+0x8], 0x11c
	mov dword [esp+0x4], 0x0
	mov dword [esp], cm
	call Com_Memset
	mov [cm], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;CM_Hunk_Alloc(int, char const*, int)
CM_Hunk_Alloc:
	push ebp
	mov ebp, esp
	pop ebp
	jmp Hunk_AllocInternal
	nop
	add [eax], al


;CM_LeafCluster(int)
CM_LeafCluster:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*2]
	mov eax, [cm+0x3c]
	movsx eax, word [eax+edx*4+0x28]
	pop ebp
	ret


;CM_ModelBounds(unsigned int, float*, float*)
CM_ModelBounds:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0xc]
	mov esi, [ebp+0x10]
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CM_ClipHandleToModel
	mov edx, [eax]
	mov [ebx], edx
	mov edx, [eax+0x4]
	mov [ebx+0x4], edx
	mov edx, [eax+0x8]
	mov [ebx+0x8], edx
	lea edx, [eax+0xc]
	mov eax, [eax+0xc]
	mov [esi], eax
	mov eax, [edx+0x4]
	mov [esi+0x4], eax
	mov eax, [edx+0x8]
	mov [esi+0x8], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;CM_Hunk_ClearTempMemoryHigh()
CM_Hunk_ClearTempMemoryHigh:
	push ebp
	mov ebp, esp
	pop ebp
	jmp Hunk_ClearTempMemoryHigh
	nop


;CM_Hunk_AllocateTempMemoryHigh(int, char const*)
CM_Hunk_AllocateTempMemoryHigh:
	push ebp
	mov ebp, esp
	pop ebp
	jmp Hunk_AllocateTempMemoryHigh
	nop


;CM_Hunk_CheckTempMemoryHighClear()
CM_Hunk_CheckTempMemoryHighClear:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;CM_Unload()
CM_Unload:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [cm+0x4]
	test edx, edx
	jnz CM_Unload_10
	leave
	ret
CM_Unload_10:
	mov dword [esp], _cstring_cannot_unload_co
	call Sys_Error
	leave
	ret


;Initialized global or static variables of cm_load:
SECTION .data


;Initialized constant data of cm_load:
SECTION .rdata


;Zero initialized global or static variables of cm_load:
SECTION .bss
g_box_model: resb 0x60
g_box_brush: resb 0xa0
cm: resb 0x164


;All cstrings:
SECTION .rdata
_cstring_cm_loadmap_null_:		db 015h,"CM_LoadMap: NULL name",0
_cstring_cannot_unload_co:		db "Cannot unload collision while it is in use",0



;All constant floats and doubles:
SECTION .rdata

