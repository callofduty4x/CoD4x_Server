;Imports of fx_archive:
	extern _Z14DB_EnumXAssets10XAssetTypePFv12XAssetHeaderPvES1_h
	extern _Z20MemFile_WriteCStringP10MemoryFilePKc
	extern _Z17MemFile_WriteDataP10MemoryFileiPKv
	extern _Z19FX_ForEachEffectDefPFvPK11FxEffectDefPvES2_
	extern _Z17MemFile_IsWritingP10MemoryFile
	extern _Z12FX_GetSystemi
	extern _Z19FX_GetSystemBuffersi
	extern _Z16MemFile_ReadDataP10MemoryFileiPv
	extern _Z11FX_RegisterPKc
	extern _Z19MemFile_ReadCStringP10MemoryFile
	extern _Z20FX_LinkSystemBuffersP8FxSystemP15FxSystemBuffers
	extern _Z17FX_RelocateSystemP8FxSystemi
	extern fx_randomTable
	extern _Z12Phys_ObjLoad9PhysWorldP10MemoryFile
	extern _Z30Phys_ObjSetCollisionFromXModelPK6XModel9PhysWorldi
	extern _Z9Com_Error11errorParm_tPKcz
	extern useFastFile
	extern _Z12Phys_ObjSaveiP10MemoryFile

;Exports of fx_archive:
	global _Z30FX_SaveEffectDefTable_FastFileP10MemoryFile
	global _Z35FX_SaveEffectDefTableEntry_FastFile12XAssetHeaderPv
	global _Z29FX_SaveEffectDefTable_LoadObjP10MemoryFile
	global _Z38FX_SaveEffectDefTableEntry_FileLoadObjPK11FxEffectDefPv
	global _Z10FX_ArchiveiP10MemoryFile
	global _Z10FX_RestoreiP10MemoryFile
	global _Z7FX_SaveiP10MemoryFile


SECTION .text


;FX_SaveEffectDefTable_FastFile(MemoryFile*)
_Z30FX_SaveEffectDefTable_FastFileP10MemoryFile:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0xc], 0x0
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _Z35FX_SaveEffectDefTableEntry_FastFile12XAssetHeaderPv
	mov dword [esp], 0x19
	call _Z14DB_EnumXAssets10XAssetTypePFv12XAssetHeaderPvES1_h
	leave
	ret
	nop


;FX_SaveEffectDefTableEntry_FastFile(XAssetHeader, void*)
_Z35FX_SaveEffectDefTableEntry_FastFile12XAssetHeaderPv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z20MemFile_WriteCStringP10MemoryFilePKc
	mov [ebp-0xc], ebx
	lea eax, [ebp-0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4
	mov [esp], esi
	call _Z17MemFile_WriteDataP10MemoryFileiPKv
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret


;FX_SaveEffectDefTable_LoadObj(MemoryFile*)
_Z29FX_SaveEffectDefTable_LoadObjP10MemoryFile:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov dword [esp], _Z38FX_SaveEffectDefTableEntry_FileLoadObjPK11FxEffectDefPv
	call _Z19FX_ForEachEffectDefPFvPK11FxEffectDefPvES2_
	leave
	ret
	nop


;FX_SaveEffectDefTableEntry_FileLoadObj(FxEffectDef const*, void*)
_Z38FX_SaveEffectDefTableEntry_FileLoadObjPK11FxEffectDefPv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z20MemFile_WriteCStringP10MemoryFilePKc
	mov [ebp-0xc], ebx
	lea eax, [ebp-0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4
	mov [esp], esi
	call _Z17MemFile_WriteDataP10MemoryFileiPKv
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;FX_Archive(int, MemoryFile*)
_Z10FX_ArchiveiP10MemoryFile:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov [esp], ebx
	call _Z17MemFile_IsWritingP10MemoryFile
	test al, al
	jz _Z10FX_ArchiveiP10MemoryFile_10
	mov [ebp+0xc], ebx
	mov [ebp+0x8], esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _Z7FX_SaveiP10MemoryFile
_Z10FX_ArchiveiP10MemoryFile_10:
	mov [ebp+0xc], ebx
	mov [ebp+0x8], esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _Z10FX_RestoreiP10MemoryFile


;FX_Restore(int, MemoryFile*)
_Z10FX_RestoreiP10MemoryFile:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x204c
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call _Z12FX_GetSystemi
	mov [ebp-0x2044], eax
	mov [esp], ebx
	call _Z19FX_GetSystemBuffersi
	mov [ebp-0x2040], eax
	mov dword [ebp-0x202c], 0x0
	xor edi, edi
	jmp _Z10FX_RestoreiP10MemoryFile_10
_Z10FX_RestoreiP10MemoryFile_20:
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4
	mov edx, [ebp+0xc]
	mov [esp], edx
	call _Z16MemFile_ReadDataP10MemoryFileiPv
	mov ebx, [ebp-0x1c]
	mov [esp], esi
	call _Z11FX_RegisterPKc
	mov [edi+ebp-0x201c], ebx
	mov [edi+ebp-0x2018], eax
	add dword [ebp-0x202c], 0x1
	add edi, 0x8
_Z10FX_RestoreiP10MemoryFile_10:
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	call _Z19MemFile_ReadCStringP10MemoryFile
	mov esi, eax
	cmp byte [eax], 0x0
	jnz _Z10FX_RestoreiP10MemoryFile_20
	mov ebx, [ebp-0x2044]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0xa60
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z16MemFile_ReadDataP10MemoryFileiPv
	mov eax, [ebx+0x9cc]
	test eax, eax
	jnz _Z10FX_RestoreiP10MemoryFile_30
_Z10FX_RestoreiP10MemoryFile_200:
	mov edx, [ebp-0x2040]
	mov [esp+0x4], edx
	mov ecx, [ebp-0x2044]
	mov [esp], ecx
	call _Z20FX_LinkSystemBuffersP8FxSystemP15FxSystemBuffers
	mov ebx, [ebp-0x2040]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x47480
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z16MemFile_ReadDataP10MemoryFileiPv
	mov edx, [ebp-0x2044]
	mov ecx, [edx+0x1b0]
	mov eax, [edx+0x1b4]
	cmp ecx, eax
	jz _Z10FX_RestoreiP10MemoryFile_40
	mov edi, [ebp-0x201c]
	lea esi, [ebp-0x2020]
	mov ebx, [ebp-0x2044]
_Z10FX_RestoreiP10MemoryFile_80:
	mov eax, ecx
	and eax, 0x3ff
	movzx edx, word [ebx+eax*2+0x1bc]
	mov eax, [ebx+0x170]
	lea ebx, [eax+edx*4]
	mov edx, [ebx]
	mov eax, [ebp-0x202c]
	test eax, eax
	jle _Z10FX_RestoreiP10MemoryFile_50
	cmp edx, edi
	jz _Z10FX_RestoreiP10MemoryFile_60
	xor eax, eax
_Z10FX_RestoreiP10MemoryFile_70:
	add eax, 0x1
	cmp [ebp-0x202c], eax
	jz _Z10FX_RestoreiP10MemoryFile_50
	cmp edx, [esi+eax*8+0x4]
	jnz _Z10FX_RestoreiP10MemoryFile_70
_Z10FX_RestoreiP10MemoryFile_190:
	mov eax, [ebp+eax*8-0x2018]
	mov [ebx], eax
	add ecx, 0x1
	mov edx, [ebp-0x2044]
	mov eax, [edx+0x1b4]
	cmp ecx, eax
	jz _Z10FX_RestoreiP10MemoryFile_40
_Z10FX_RestoreiP10MemoryFile_90:
	mov ebx, edx
	jmp _Z10FX_RestoreiP10MemoryFile_80
_Z10FX_RestoreiP10MemoryFile_50:
	xor eax, eax
	mov [ebx], eax
	add ecx, 0x1
	mov edx, [ebp-0x2044]
	mov eax, [edx+0x1b4]
	cmp ecx, eax
	jnz _Z10FX_RestoreiP10MemoryFile_90
_Z10FX_RestoreiP10MemoryFile_40:
	lea ecx, [ebp-0x1c]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x4
	mov ebx, [ebp+0xc]
	mov [esp], ebx
	call _Z16MemFile_ReadDataP10MemoryFileiPv
	mov eax, [ebp-0x2044]
	sub eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov eax, [ebp-0x2044]
	mov [esp], eax
	call _Z17FX_RelocateSystemP8FxSystemi
	mov edx, [ebp-0x2044]
	mov edx, [edx+0x1b0]
	mov [ebp-0x2038], edx
	mov ecx, [ebp-0x2044]
	mov eax, [ecx+0x1b4]
	cmp edx, eax
	jz _Z10FX_RestoreiP10MemoryFile_100
	mov ebx, fx_randomTable
	mov [ebp-0x2048], ebx
	mov ecx, [ebp-0x2044]
_Z10FX_RestoreiP10MemoryFile_160:
	mov eax, [ebp-0x2038]
	and eax, 0x3ff
	movzx edx, word [ecx+eax*2+0x1bc]
	mov eax, [ecx+0x170]
	lea edx, [eax+edx*4]
	mov [ebp-0x2034], edx
	movzx edi, word [edx+0xa]
	cmp di, 0xffff
	jz _Z10FX_RestoreiP10MemoryFile_110
	mov ebx, [ebp-0x2048]
	mov [ebp-0x2030], ebx
	jmp _Z10FX_RestoreiP10MemoryFile_120
_Z10FX_RestoreiP10MemoryFile_140:
	cmp di, 0xffff
	jz _Z10FX_RestoreiP10MemoryFile_130
_Z10FX_RestoreiP10MemoryFile_120:
	movzx edx, di
	mov ecx, [ebp-0x2044]
	mov eax, [ecx+0x174]
	lea ebx, [eax+edx*4]
	mov eax, [ebp-0x2034]
	mov ecx, [eax]
	movzx eax, byte [ebx]
	lea edx, [eax*4]
	mov esi, eax
	shl esi, 0x8
	sub esi, edx
	add esi, [ecx+0x1c]
	movzx edi, word [ebx+0x4]
	cmp byte [esi+0xb0], 0x5
	jnz _Z10FX_RestoreiP10MemoryFile_140
	test byte [esi+0x3], 0x8
	jz _Z10FX_RestoreiP10MemoryFile_140
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov dword [esp], 0x1
	call _Z12Phys_ObjLoad9PhysWorldP10MemoryFile
	mov [ebp-0x203c], eax
	mov [ebx+0x18], eax
	mov ecx, [ebp-0x2034]
	movzx edx, word [ecx+0x12]
	add edx, [ebx+0x8]
	movzx eax, byte [ebx+0x1]
	lea ecx, [eax+eax*8]
	lea ecx, [eax+ecx*4]
	lea ecx, [edx+ecx*8]
	mov edx, 0x11a3019b
	mov eax, ecx
	mul edx
	mov eax, ecx
	sub eax, edx
	shr eax, 1
	add edx, eax
	shr edx, 0x8
	mov ebx, edx
	shl ebx, 0x5
	mov eax, edx
	shl eax, 0x9
	sub eax, ebx
	sub eax, edx
	sub ecx, eax
	movzx edx, cx
	movzx eax, byte [esi+0xb1]
	cmp al, 0x1
	jz _Z10FX_RestoreiP10MemoryFile_150
	movzx eax, al
	mov ecx, [ebp-0x2030]
	movzx edx, word [ecx+edx*4+0x54]
	imul eax, edx
	sar eax, 0x10
	mov edx, [esi+0xbc]
	mov eax, [edx+eax*4]
_Z10FX_RestoreiP10MemoryFile_180:
	mov ebx, [ebp-0x203c]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call _Z30Phys_ObjSetCollisionFromXModelPK6XModel9PhysWorldi
	cmp di, 0xffff
	jnz _Z10FX_RestoreiP10MemoryFile_120
_Z10FX_RestoreiP10MemoryFile_130:
	mov edx, [ebp-0x2044]
	add dword [ebp-0x2038], 0x1
	mov eax, [edx+0x1b4]
	cmp eax, [ebp-0x2038]
	jz _Z10FX_RestoreiP10MemoryFile_100
_Z10FX_RestoreiP10MemoryFile_170:
	mov ecx, edx
	jmp _Z10FX_RestoreiP10MemoryFile_160
_Z10FX_RestoreiP10MemoryFile_110:
	mov edx, ecx
	add dword [ebp-0x2038], 0x1
	mov eax, [edx+0x1b4]
	cmp eax, [ebp-0x2038]
	jnz _Z10FX_RestoreiP10MemoryFile_170
_Z10FX_RestoreiP10MemoryFile_100:
	add esp, 0x204c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z10FX_RestoreiP10MemoryFile_150:
	mov eax, [esi+0xbc]
	jmp _Z10FX_RestoreiP10MemoryFile_180
_Z10FX_RestoreiP10MemoryFile_60:
	xor eax, eax
	jmp _Z10FX_RestoreiP10MemoryFile_190
_Z10FX_RestoreiP10MemoryFile_30:
	mov dword [esp+0x4], _cstring_invalid_save_fil
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z10FX_RestoreiP10MemoryFile_200
	nop


;FX_Save(int, MemoryFile*)
_Z7FX_SaveiP10MemoryFile:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov ebx, [ebp+0x8]
	mov [esp], ebx
	call _Z12FX_GetSystemi
	mov edi, eax
	mov [esp], ebx
	call _Z19FX_GetSystemBuffersi
	mov ebx, eax
	mov eax, useFastFile
	mov eax, [eax]
	mov edx, _Z30FX_SaveEffectDefTable_FastFileP10MemoryFile
	cmp byte [eax+0xc], 0x0
	mov eax, _Z29FX_SaveEffectDefTable_LoadObjP10MemoryFile
	cmovz edx, eax
	mov eax, [ebp+0xc]
	mov [esp], eax
	call edx
	mov dword [esp+0x4], _cstring_null
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z20MemFile_WriteCStringP10MemoryFilePKc
	mov [esp+0x8], edi
	mov dword [esp+0x4], 0xa60
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z17MemFile_WriteDataP10MemoryFileiPKv
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x47480
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z17MemFile_WriteDataP10MemoryFileiPKv
	mov [ebp-0x1c], edi
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z17MemFile_WriteDataP10MemoryFileiPKv
	mov eax, [edi+0x1b0]
	mov [ebp-0x30], eax
	mov eax, [edi+0x1b4]
	cmp [ebp-0x30], eax
	jz _Z7FX_SaveiP10MemoryFile_10
_Z7FX_SaveiP10MemoryFile_50:
	mov eax, [ebp-0x30]
	and eax, 0x3ff
	movzx edx, word [edi+eax*2+0x1bc]
	mov eax, [edi+0x170]
	lea edx, [eax+edx*4]
	mov [ebp-0x2c], edx
	movzx esi, word [edx+0xa]
_Z7FX_SaveiP10MemoryFile_30:
	cmp si, 0xffff
	jz _Z7FX_SaveiP10MemoryFile_20
_Z7FX_SaveiP10MemoryFile_40:
	movzx edx, si
	mov eax, [edi+0x174]
	lea ebx, [eax+edx*4]
	mov eax, [ebp-0x2c]
	mov ecx, [eax]
	movzx eax, byte [ebx]
	lea edx, [eax*4]
	shl eax, 0x8
	sub eax, edx
	add eax, [ecx+0x1c]
	movzx esi, word [ebx+0x4]
	cmp byte [eax+0xb0], 0x5
	jnz _Z7FX_SaveiP10MemoryFile_30
	test byte [eax+0x3], 0x8
	jz _Z7FX_SaveiP10MemoryFile_30
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov eax, [ebx+0x18]
	mov [esp], eax
	call _Z12Phys_ObjSaveiP10MemoryFile
	cmp si, 0xffff
	jnz _Z7FX_SaveiP10MemoryFile_40
_Z7FX_SaveiP10MemoryFile_20:
	add dword [ebp-0x30], 0x1
	mov eax, [edi+0x1b4]
	cmp [ebp-0x30], eax
	jnz _Z7FX_SaveiP10MemoryFile_50
_Z7FX_SaveiP10MemoryFile_10:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Initialized global or static variables of fx_archive:
SECTION .data


;Initialized constant data of fx_archive:
SECTION .rdata


;Zero initialized global or static variables of fx_archive:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_invalid_save_fil:		db "Invalid save file",0
_cstring_null:		db 0



;All constant floats and doubles:
SECTION .rdata

