;Imports of cm_load:
	extern _Z9I_stricmpPKcS0_
	extern _Z17CM_LoadMapFromBspPKch
	extern _Z19CM_LoadStaticModelsv
	extern _Z19DynEnt_LoadEntitiesv
	extern _Z19DB_FindXAssetHeader10XAssetTypePKc
	extern useFastFile
	extern g_traceThreadInfo
	extern _Z18Hunk_AllocInternali
	extern memcpy
	extern _Z9Com_Error11errorParm_tPKcz
	extern _Z10Com_MemsetPvii
	extern _Z20CM_ClipHandleToModelj
	extern Hunk_ClearTempMemoryHigh
	extern Hunk_AllocateTempMemoryHigh
	extern _Z9Sys_ErrorPKcz

;Exports of cm_load:
	global g_box_model
	global g_box_brush
	global _Z22CM_LoadMapData_LoadObjPKc
	global _Z23CM_LoadMapData_FastFilePKc
	global _Z10CM_LoadMapPKcPi
	global _Z11CM_Shutdownv
	global _Z13CM_Hunk_AllociPKci
	global _Z14CM_LeafClusteri
	global _Z14CM_ModelBoundsjPfS_
	global _Z27CM_Hunk_ClearTempMemoryHighv
	global _Z30CM_Hunk_AllocateTempMemoryHighiPKc
	global _Z32CM_Hunk_CheckTempMemoryHighClearv
	global _Z9CM_Unloadv
	global cm


SECTION .text


;CM_LoadMapData_LoadObj(char const*)
_Z22CM_LoadMapData_LoadObjPKc:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov eax, [cm+0x4]
	test eax, eax
	jz _Z22CM_LoadMapData_LoadObjPKc_10
	mov [esp+0x4], ebx
	mov eax, [cm]
	mov [esp], eax
	call _Z9I_stricmpPKcS0_
	test eax, eax
	jz _Z22CM_LoadMapData_LoadObjPKc_20
_Z22CM_LoadMapData_LoadObjPKc_10:
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	call _Z17CM_LoadMapFromBspPKch
	call _Z19CM_LoadStaticModelsv
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _Z19DynEnt_LoadEntitiesv
_Z22CM_LoadMapData_LoadObjPKc_20:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;CM_LoadMapData_FastFile(char const*)
_Z23CM_LoadMapData_FastFilePKc:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], 0xb
	call _Z19DB_FindXAssetHeader10XAssetTypePKc
	leave
	ret
	nop


;CM_LoadMap(char const*, int*)
_Z10CM_LoadMapPKcPi:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	test ebx, ebx
	jz _Z10CM_LoadMapPKcPi_10
	cmp byte [ebx], 0x0
	jz _Z10CM_LoadMapPKcPi_10
_Z10CM_LoadMapPKcPi_20:
	mov eax, useFastFile
	mov eax, [eax]
	mov edx, _Z23CM_LoadMapData_FastFilePKc
	cmp byte [eax+0xc], 0x0
	mov eax, _Z22CM_LoadMapData_LoadObjPKc
	cmovz edx, eax
	mov [esp], ebx
	call edx
	mov ebx, g_traceThreadInfo
	mov dword [ebx], 0x0
	mov eax, [cm+0x74]
	shl eax, 0x2
	mov [esp], eax
	call _Z18Hunk_AllocInternali
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
_Z10CM_LoadMapPKcPi_10:
	mov dword [esp+0x4], _cstring_cm_loadmap_null_
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z10CM_LoadMapPKcPi_20


;CM_Shutdown()
_Z11CM_Shutdownv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [cm]
	mov dword [esp+0x8], 0x11c
	mov dword [esp+0x4], 0x0
	mov dword [esp], cm
	call _Z10Com_MemsetPvii
	mov [cm], ebx
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;CM_Hunk_Alloc(int, char const*, int)
_Z13CM_Hunk_AllociPKci:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _Z18Hunk_AllocInternali
	nop
	add [eax], al


;CM_LeafCluster(int)
_Z14CM_LeafClusteri:
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
_Z14CM_ModelBoundsjPfS_:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0xc]
	mov esi, [ebp+0x10]
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z20CM_ClipHandleToModelj
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
_Z27CM_Hunk_ClearTempMemoryHighv:
	push ebp
	mov ebp, esp
	pop ebp
	jmp Hunk_ClearTempMemoryHigh
	nop


;CM_Hunk_AllocateTempMemoryHigh(int, char const*)
_Z30CM_Hunk_AllocateTempMemoryHighiPKc:
	push ebp
	mov ebp, esp
	pop ebp
	jmp Hunk_AllocateTempMemoryHigh
	nop


;CM_Hunk_CheckTempMemoryHighClear()
_Z32CM_Hunk_CheckTempMemoryHighClearv:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;CM_Unload()
_Z9CM_Unloadv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [cm+0x4]
	test edx, edx
	jnz _Z9CM_Unloadv_10
	leave
	ret
_Z9CM_Unloadv_10:
	mov dword [esp], _cstring_cannot_unload_co
	call _Z9Sys_ErrorPKcz
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

