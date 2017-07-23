;Imports of r_drawsurf:
	extern frontEndDataOut
	extern R_EndMeshVerts
	extern R_GetMeshVerts
	extern rgp
	extern R_AddShadowSurfaceToPrimaryLight
	extern R_ForEachPrimaryLightAffectingSurface
	extern memset
	extern R_BeginMeshVerts
	extern gfxDrawMethod
	extern r_fullbright
	extern R_WarnOncePerFrame
	extern InterlockedExchangeAdd
	extern scene
	extern InterlockedIncrement
	extern InterlockedDecrement
	extern InterlockedExchange
	extern R_ReserveMeshVerts
	extern R_ReserveMeshIndices

;Exports of r_drawsurf:
	global R_SortDrawSurfs
	global R_GetCodeMeshArgs
	global R_EndCodeMeshVerts
	global R_EndMarkMeshVerts
	global R_GetCodeMeshVerts
	global R_GetMarkMeshVerts
	global R_SortWorldSurfaces
	global R_BeginCodeMeshVerts
	global R_BeginMarkMeshVerts
	global R_AddCodeMeshDrawSurf
	global R_AddMarkMeshDrawSurf
	global R_ReserveCodeMeshArgs
	global R_ReserveCodeMeshVerts
	global R_ReserveMarkMeshVerts
	global R_ReverseSortDrawSurfs
	global R_ReserveCodeMeshIndices
	global R_ReserveMarkMeshIndices
	global R_AddParticleCloudDrawSurf


SECTION .text


;R_SortDrawSurfs(GfxDrawSurf*, int)
R_SortDrawSurfs:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x12c
	mov eax, [ebp+0xc]
	cmp eax, 0x1
	jle R_SortDrawSurfs_10
	mov edx, [ebp+0x8]
	lea eax, [edx+eax*8-0x8]
	mov [ebp-0x11c], eax
	mov dword [ebp-0x120], 0x0
R_SortDrawSurfs_210:
	sub eax, [ebp+0x8]
	sar eax, 0x3
	add eax, 0x1
	cmp eax, 0x8
	jle R_SortDrawSurfs_20
R_SortDrawSurfs_140:
	sar eax, 1
	mov ebx, [ebp+0x8]
	lea ecx, [ebx+eax*8]
	mov eax, [ecx]
	mov edx, [ecx+0x4]
	mov [ebp-0x118], eax
	mov [ebp-0x114], edx
	mov eax, [ebx]
	mov edx, [ebx+0x4]
	mov [ecx], eax
	mov [ecx+0x4], edx
	mov eax, [ebp-0x118]
	mov edx, [ebp-0x114]
	mov ecx, [ebp+0x8]
	mov [ecx], eax
	mov [ecx+0x4], edx
	mov esi, [ebp-0x11c]
	add esi, 0x8
	mov edi, ecx
R_SortDrawSurfs_80:
	add edi, 0x8
	cmp [ebp-0x11c], edi
	jae R_SortDrawSurfs_30
R_SortDrawSurfs_60:
	sub esi, 0x8
	cmp [ebp+0x8], esi
	jae R_SortDrawSurfs_40
R_SortDrawSurfs_90:
	mov ecx, [esi]
	mov ebx, [esi+0x4]
	cmp [ebp-0x114], ebx
	ja R_SortDrawSurfs_50
	jb R_SortDrawSurfs_60
	cmp [ebp-0x118], ecx
	jbe R_SortDrawSurfs_60
R_SortDrawSurfs_50:
	cmp esi, edi
	jb R_SortDrawSurfs_70
R_SortDrawSurfs_100:
	mov eax, [edi]
	mov edx, [edi+0x4]
	mov [edi], ecx
	mov [edi+0x4], ebx
	mov [esi], eax
	mov [esi+0x4], edx
	add edi, 0x8
	cmp [ebp-0x11c], edi
	jb R_SortDrawSurfs_60
R_SortDrawSurfs_30:
	mov eax, [edi]
	mov edx, [edi+0x4]
	cmp [ebp-0x114], edx
	ja R_SortDrawSurfs_80
	jb R_SortDrawSurfs_60
	cmp [ebp-0x118], eax
	jae R_SortDrawSurfs_80
	sub esi, 0x8
	cmp [ebp+0x8], esi
	jb R_SortDrawSurfs_90
R_SortDrawSurfs_40:
	mov ecx, [esi]
	mov ebx, [esi+0x4]
	cmp esi, edi
	jae R_SortDrawSurfs_100
R_SortDrawSurfs_70:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov edx, [edx+0x4]
	mov [ebp-0x130], eax
	mov [ebp-0x12c], edx
	mov eax, [ebp+0x8]
	mov [eax], ecx
	mov [eax+0x4], ebx
	mov edx, [ebp-0x130]
	mov ecx, [ebp-0x12c]
	mov [esi], edx
	mov [esi+0x4], ecx
	mov edx, esi
	sub edx, eax
	sub edx, 0x8
	sar edx, 0x3
	mov eax, [ebp-0x11c]
	sub eax, edi
	sar eax, 0x3
	cmp edx, eax
	jl R_SortDrawSurfs_110
	cmp [ebp+0x8], esi
	ja R_SortDrawSurfs_120
	mov ebx, [ebp+0x8]
	mov ecx, [ebp-0x120]
	mov [ebp+ecx*4-0x90], ebx
	lea eax, [esi-0x8]
	mov [ebp+ecx*4-0x108], eax
	add ecx, 0x1
	mov [ebp-0x120], ecx
R_SortDrawSurfs_120:
	cmp [ebp-0x11c], edi
	jbe R_SortDrawSurfs_130
	mov [ebp+0x8], edi
	mov eax, [ebp-0x11c]
	sub eax, [ebp+0x8]
	sar eax, 0x3
	add eax, 0x1
	cmp eax, 0x8
	jg R_SortDrawSurfs_140
R_SortDrawSurfs_20:
	mov esi, [ebp-0x11c]
	cmp [ebp+0x8], esi
	jae R_SortDrawSurfs_130
	mov eax, [ebp+0x8]
	add eax, 0x8
	mov [ebp-0x10c], eax
	mov edx, eax
	jmp R_SortDrawSurfs_150
R_SortDrawSurfs_160:
	mov edi, eax
R_SortDrawSurfs_200:
	mov ecx, [edi]
	mov ebx, [edi+0x4]
	mov esi, [ebp-0x11c]
	mov eax, [esi]
	mov edx, [esi+0x4]
	mov [edi], eax
	mov [edi+0x4], edx
	mov [esi], ecx
	mov [esi+0x4], ebx
	sub esi, 0x8
	mov [ebp-0x11c], esi
	cmp [ebp+0x8], esi
	jae R_SortDrawSurfs_130
	mov edx, [ebp-0x10c]
R_SortDrawSurfs_150:
	mov eax, [ebp+0x8]
	mov ebx, [eax]
	mov esi, [eax+0x4]
	cmp [ebp-0x11c], edx
	jb R_SortDrawSurfs_160
	mov ecx, edx
	mov edi, eax
R_SortDrawSurfs_190:
	mov eax, [ecx]
	mov edx, [ecx+0x4]
	cmp esi, edx
	ja R_SortDrawSurfs_170
	jb R_SortDrawSurfs_180
	cmp ebx, eax
	jae R_SortDrawSurfs_170
R_SortDrawSurfs_180:
	mov edi, ecx
	mov ebx, eax
	mov esi, edx
R_SortDrawSurfs_170:
	add ecx, 0x8
	cmp [ebp-0x11c], ecx
	jae R_SortDrawSurfs_190
	jmp R_SortDrawSurfs_200
R_SortDrawSurfs_130:
	sub dword [ebp-0x120], 0x1
	js R_SortDrawSurfs_10
	mov ecx, [ebp-0x120]
	mov ecx, [ebp+ecx*4-0x90]
	mov [ebp+0x8], ecx
	mov ebx, [ebp-0x120]
	mov ebx, [ebp+ebx*4-0x108]
	mov [ebp-0x11c], ebx
	mov eax, ebx
	jmp R_SortDrawSurfs_210
R_SortDrawSurfs_110:
	cmp [ebp-0x11c], edi
	jbe R_SortDrawSurfs_220
	mov eax, [ebp-0x120]
	mov [ebp+eax*4-0x90], edi
	mov edx, [ebp-0x11c]
	mov [ebp+eax*4-0x108], edx
	add eax, 0x1
	mov [ebp-0x120], eax
R_SortDrawSurfs_220:
	sub esi, 0x8
	mov [ebp-0x11c], esi
	cmp [ebp+0x8], esi
	jae R_SortDrawSurfs_130
	mov eax, esi
	jmp R_SortDrawSurfs_210
R_SortDrawSurfs_10:
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;R_GetCodeMeshArgs(unsigned int)
R_GetCodeMeshArgs:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	shl eax, 0x4
	mov edx, frontEndDataOut
	mov edx, [edx]
	lea eax, [eax+edx+0x6b000]
	pop ebp
	ret


;R_EndCodeMeshVerts()
R_EndCodeMeshVerts:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, frontEndDataOut
	mov eax, [eax]
	add eax, 0xb0000
	mov [esp], eax
	call R_EndMeshVerts
	leave
	ret


;R_EndMarkMeshVerts()
R_EndMarkMeshVerts:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, frontEndDataOut
	mov eax, [eax]
	add eax, 0x11e670
	mov [esp], eax
	call R_EndMeshVerts
	leave
	ret


;R_GetCodeMeshVerts(unsigned short)
R_GetCodeMeshVerts:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	movzx eax, word [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, frontEndDataOut
	mov eax, [eax]
	add eax, 0xb0000
	mov [esp], eax
	call R_GetMeshVerts
	leave
	ret


;R_GetMarkMeshVerts(unsigned short)
R_GetMarkMeshVerts:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	movzx eax, word [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, frontEndDataOut
	mov eax, [eax]
	add eax, 0x11e670
	mov [esp], eax
	call R_GetMeshVerts
	leave
	ret


;R_SortWorldSurfaces()
R_SortWorldSurfaces:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov eax, rgp
	mov [ebp-0x28], eax
	mov edx, [eax+0x20a0]
	mov ebx, [edx+0x294]
	mov eax, [edx+0x154]
	movzx eax, word [eax+0x30]
	movzx ecx, ax
	mov [ebp-0x24], ecx
	test ax, ax
	jnz R_SortWorldSurfaces_10
R_SortWorldSurfaces_110:
	mov edx, [ebp-0x28]
	mov eax, [edx+0x20a0]
	mov ecx, [eax+0xdc]
	test ecx, ecx
	jz R_SortWorldSurfaces_20
	xor ecx, ecx
	xor edx, edx
R_SortWorldSurfaces_30:
	mov eax, [eax+0x23c]
	mov word [eax+edx], 0x0
	add ecx, 0x1
	mov ebx, [ebp-0x28]
	mov eax, [ebx+0x20a0]
	add edx, 0xc
	cmp ecx, [eax+0xdc]
	jb R_SortWorldSurfaces_30
	mov esi, ebx
R_SortWorldSurfaces_70:
	mov edx, [esi+0x20a0]
	mov eax, [edx+0x154]
	cmp word [eax+0x30], 0x0
	jz R_SortWorldSurfaces_40
	xor esi, esi
	xor ebx, ebx
	mov edi, rgp
	jmp R_SortWorldSurfaces_50
R_SortWorldSurfaces_60:
	mov ecx, [ebp-0x28]
	add esi, 0x1
	mov edx, [ecx+0x20a0]
	add ebx, 0x30
	mov eax, [edx+0x154]
	movzx eax, word [eax+0x30]
	cmp esi, eax
	jae R_SortWorldSurfaces_40
R_SortWorldSurfaces_50:
	mov eax, [edx+0x2a0]
	test byte [eax+esi*8+0x3], 0x1f
	jz R_SortWorldSurfaces_60
	mov eax, R_AddShadowSurfaceToPrimaryLight
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov eax, ebx
	add eax, [edx+0x294]
	mov [esp+0x4], eax
	mov [esp], edx
	call R_ForEachPrimaryLightAffectingSurface
	mov [ebp-0x28], edi
	mov ecx, edi
	add esi, 0x1
	mov edx, [ecx+0x20a0]
	add ebx, 0x30
	mov eax, [edx+0x154]
	movzx eax, word [eax+0x30]
	cmp esi, eax
	jb R_SortWorldSurfaces_50
R_SortWorldSurfaces_40:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_SortWorldSurfaces_20:
	mov esi, edx
	jmp R_SortWorldSurfaces_70
R_SortWorldSurfaces_10:
	mov eax, ecx
	sub eax, 0x1
	shr eax, 0x5
	lea eax, [eax*4+0x4]
	mov edx, [edx+0x2a4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], edx
	call memset
	mov [ebp-0x1c], ebx
	mov dword [ebp-0x20], 0x0
	jmp R_SortWorldSurfaces_80
R_SortWorldSurfaces_100:
	mov ebx, [ebp-0x1c]
R_SortWorldSurfaces_80:
	mov eax, [ebx+0x10]
	mov edx, [eax+0x8]
	mov ecx, [eax+0xc]
	mov [ebp-0x30], edx
	mov [ebp-0x2c], ecx
	mov ecx, edx
	mov esi, [ebp-0x1c]
	movzx eax, byte [esi+0x16]
	shl eax, 0xa
	and eax, 0x3fc00
	mov ebx, [ebp-0x2c]
	and ebx, 0xfffc03ff
	or ebx, eax
	mov edx, [ebp-0x28]
	mov eax, [edx+0x20a0]
	mov eax, [eax+0x2a0]
	mov esi, [ebp-0x20]
	mov [eax+esi*8], ecx
	mov [eax+esi*8+0x4], ebx
	and ecx, 0x1f000000
	jz R_SortWorldSurfaces_90
	mov eax, [ebp-0x1c]
	test byte [eax+0x17], 0x1
	jz R_SortWorldSurfaces_90
	mov eax, [edx+0x20a0]
	mov edx, esi
	shr edx, 0x5
	mov eax, [eax+0x2a4]
	mov ecx, esi
	and ecx, 0x1f
	mov ebx, 0x1
	shl ebx, cl
	or [eax+edx*4], ebx
R_SortWorldSurfaces_90:
	add dword [ebp-0x20], 0x1
	add dword [ebp-0x1c], 0x30
	mov esi, [ebp-0x20]
	cmp [ebp-0x24], esi
	ja R_SortWorldSurfaces_100
	jmp R_SortWorldSurfaces_110


;R_BeginCodeMeshVerts()
R_BeginCodeMeshVerts:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, frontEndDataOut
	mov eax, [eax]
	add eax, 0xb0000
	mov [esp], eax
	call R_BeginMeshVerts
	leave
	ret


;R_BeginMarkMeshVerts()
R_BeginMarkMeshVerts:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, frontEndDataOut
	mov eax, [eax]
	add eax, 0x11e670
	mov [esp], eax
	call R_BeginMeshVerts
	leave
	ret


;R_AddCodeMeshDrawSurf(Material*, r_double_index_t*, unsigned int, unsigned int, unsigned int, char const*)
R_AddCodeMeshDrawSurf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov ebx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov [ebp-0x24], eax
	mov esi, [ebp+0x10]
	mov edx, [ebp+0x14]
	mov [ebp-0x28], edx
	mov edi, [ebp+0x18]
	mov ecx, [ebp+0x1c]
	mov eax, [ebx+0x40]
	mov edx, [eax+0x8]
	mov eax, gfxDrawMethod
	mov eax, [eax+0x8]
	mov eax, [edx+eax*4+0xc]
	test eax, eax
	jz R_AddCodeMeshDrawSurf_10
	test byte [ebx+0x4], 0x2
	jz R_AddCodeMeshDrawSurf_20
R_AddCodeMeshDrawSurf_10:
	mov eax, r_fullbright
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz R_AddCodeMeshDrawSurf_30
R_AddCodeMeshDrawSurf_60:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_AddCodeMeshDrawSurf_30:
	mov eax, [ebx]
	mov [ebp+0x10], ecx
	mov [ebp+0xc], eax
	mov dword [ebp+0x8], 0x11
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp R_WarnOncePerFrame
R_AddCodeMeshDrawSurf_20:
	mov edx, frontEndDataOut
	mov eax, [edx]
	add eax, 0x118664
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call InterlockedExchangeAdd
	mov [ebp-0x20], eax
	cmp eax, 0x7ff
	ja R_AddCodeMeshDrawSurf_40
	mov eax, frontEndDataOut
	mov ecx, [eax]
	add ecx, 0x20000
	mov eax, [ebp-0x20]
	shl eax, 0x4
	add ecx, eax
	mov edx, 0xaaaaaaab
	mov eax, esi
	mul edx
	shr edx, 1
	mov [ecx], edx
	mov edx, [ebp-0x24]
	mov [ecx+0x4], edx
	mov [ecx+0xa], di
	movzx eax, word [ebp-0x28]
	mov [ecx+0x8], ax
	movzx eax, byte [ebx+0x5]
	xor edx, edx
	cmp al, 0x30
	setz dl
	cmp al, 0x18
	setz al
	movzx eax, al
	lea eax, [edx+eax*2+0xc]
	lea esi, [eax*4]
	mov edi, scene
	lea edx, [esi+edi+0xe4108]
	mov [ebp-0x1c], edx
	mov [esp], edx
	call InterlockedIncrement
	lea edx, [eax-0x1]
	lea eax, [edi+esi+0xe4080]
	mov eax, [eax]
	cmp edx, eax
	jge R_AddCodeMeshDrawSurf_50
	lea eax, [edi+esi+0xe4190]
	mov eax, [eax]
	lea ecx, [eax+edx*8]
	test ecx, ecx
	jz R_AddCodeMeshDrawSurf_60
	mov eax, [ebx+0x8]
	mov edx, [ebx+0xc]
	mov [ecx], eax
	mov [ecx+0x4], edx
	movzx edx, word [ebp-0x20]
	mov [ecx], dx
	movzx eax, byte [ecx+0x6]
	and al, 0xc3
	or al, 0x28
	mov [ecx+0x6], al
	mov eax, [ecx]
	mov edx, [ecx+0x4]
	mov [ecx], eax
	mov [ecx+0x4], edx
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_AddCodeMeshDrawSurf_40:
	mov dword [ebp+0x8], 0xd
R_AddCodeMeshDrawSurf_70:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp R_WarnOncePerFrame
R_AddCodeMeshDrawSurf_50:
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call InterlockedDecrement
	mov dword [ebp+0x8], 0x10
	jmp R_AddCodeMeshDrawSurf_70


;R_AddMarkMeshDrawSurf(Material*, GfxMarkContext const*, unsigned short*, unsigned int)
R_AddMarkMeshDrawSurf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0x8]
	mov [ebp-0x20], eax
	mov edx, [ebp+0xc]
	mov [ebp-0x24], edx
	mov edi, [ebp+0x10]
	mov esi, [ebp+0x14]
	mov eax, [eax+0x40]
	mov edx, [eax+0x8]
	mov eax, gfxDrawMethod
	movzx eax, byte [eax+0x59]
	mov eax, [edx+eax*4+0xc]
	test eax, eax
	jz R_AddMarkMeshDrawSurf_10
	mov ebx, frontEndDataOut
	mov eax, [ebx]
	add eax, 0x11866c
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call InterlockedExchangeAdd
	mov [ebp-0x1c], eax
	cmp eax, 0x5ff
	ja R_AddMarkMeshDrawSurf_20
	shl eax, 0x4
	lea ecx, [eax+0x118670]
	add ecx, [ebx]
	mov edx, 0xaaaaaaab
	mov eax, esi
	mul edx
	shr edx, 1
	mov [ecx], edx
	mov [ecx+0x4], edi
	mov ebx, [ebp-0x24]
	movzx edx, word [ebx+0x4]
	mov [ecx+0x8], dx
	movzx edx, byte [ebx+0x3]
	mov [ecx+0xa], dl
	mov edx, [ebp-0x20]
	movzx eax, byte [edx+0x5]
	xor edx, edx
	cmp al, 0x30
	setz dl
	cmp al, 0x18
	setz al
	movzx eax, al
	lea eax, [edx+eax*2+0x6]
	lea ebx, [eax*4]
	mov esi, scene
	lea edi, [ebx+esi+0xe4108]
	mov [esp], edi
	call InterlockedIncrement
	lea edx, [eax-0x1]
	lea eax, [esi+ebx+0xe4080]
	mov eax, [eax]
	cmp edx, eax
	jge R_AddMarkMeshDrawSurf_30
	lea eax, [esi+ebx+0xe4190]
	mov eax, [eax]
	lea ecx, [eax+edx*8]
	test ecx, ecx
	jz R_AddMarkMeshDrawSurf_40
	mov ebx, [ebp-0x20]
	mov eax, [ebx+0x8]
	mov edx, [ebx+0xc]
	mov [ecx], eax
	mov [ecx+0x4], edx
	movzx eax, word [ebp-0x1c]
	mov [ecx], ax
	mov ebx, [ebp-0x24]
	movzx eax, byte [ebx]
	mov edx, eax
	and dl, 0x1f
	movzx eax, byte [ecx+0x3]
	and al, 0xe0
	or al, dl
	mov [ecx+0x3], al
	movzx eax, byte [ecx+0x6]
	and al, 0xc3
	or al, 0x2c
	mov [ecx+0x6], al
	movzx eax, byte [ebx+0x2]
	mov [ecx+0x2], al
	movzx eax, byte [ebx+0x1]
	mov edx, eax
	shl edx, 0xa
	and edx, 0x3fc00
	mov eax, [ecx+0x4]
	and eax, 0xfffc03ff
	or eax, edx
	mov [ecx+0x4], eax
R_AddMarkMeshDrawSurf_40:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_AddMarkMeshDrawSurf_20:
	mov dword [ebp+0x8], 0xe
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp R_WarnOncePerFrame
R_AddMarkMeshDrawSurf_30:
	mov [esp], edi
	call InterlockedDecrement
	mov dword [ebp+0x8], 0x10
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp R_WarnOncePerFrame
R_AddMarkMeshDrawSurf_10:
	mov dword [ebp+0x8], 0x12
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp R_WarnOncePerFrame
	add [eax], al


;R_ReserveCodeMeshArgs(int, unsigned int*)
R_ReserveCodeMeshArgs:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ecx, frontEndDataOut
	mov eax, [ecx]
	mov eax, [eax+0x118668]
	mov edx, eax
	add edx, [ebp+0x8]
	cmp edx, 0xff
	jbe R_ReserveCodeMeshArgs_10
	mov dword [esp], 0x1c
	call R_WarnOncePerFrame
	xor eax, eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
R_ReserveCodeMeshArgs_10:
	mov ebx, [ebp+0xc]
	mov [ebx], eax
	mov eax, [ecx]
	add eax, 0x118668
	mov [esp+0x4], edx
	mov [esp], eax
	call InterlockedExchange
	mov eax, 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;R_ReserveCodeMeshVerts(int, unsigned short*)
R_ReserveCodeMeshVerts:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, frontEndDataOut
	mov eax, [eax]
	add eax, 0xb0000
	mov [esp], eax
	call R_ReserveMeshVerts
	test al, al
	jz R_ReserveCodeMeshVerts_10
	mov eax, 0x1
	leave
	ret
R_ReserveCodeMeshVerts_10:
	mov dword [esp], 0x1b
	call R_WarnOncePerFrame
	xor eax, eax
	leave
	ret
	nop


;R_ReserveMarkMeshVerts(int, unsigned short*)
R_ReserveMarkMeshVerts:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, frontEndDataOut
	mov eax, [eax]
	add eax, 0x11e670
	mov [esp], eax
	call R_ReserveMeshVerts
	test al, al
	jz R_ReserveMarkMeshVerts_10
	mov eax, 0x1
	leave
	ret
R_ReserveMarkMeshVerts_10:
	mov dword [esp], 0x1e
	call R_WarnOncePerFrame
	xor eax, eax
	leave
	ret
	nop


;R_ReverseSortDrawSurfs(GfxDrawSurf*, int)
R_ReverseSortDrawSurfs:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x12c
	mov eax, [ebp+0xc]
	cmp eax, 0x1
	jle R_ReverseSortDrawSurfs_10
	mov edx, [ebp+0x8]
	lea eax, [edx+eax*8-0x8]
	mov [ebp-0x114], eax
	mov dword [ebp-0x124], 0x0
R_ReverseSortDrawSurfs_210:
	sub eax, [ebp+0x8]
	sar eax, 0x3
	add eax, 0x1
	cmp eax, 0x8
	jle R_ReverseSortDrawSurfs_20
R_ReverseSortDrawSurfs_140:
	sar eax, 1
	mov edi, [ebp+0x8]
	lea esi, [edi+eax*8]
	mov ecx, [esi]
	mov ebx, [esi+0x4]
	mov eax, [edi]
	mov edx, [edi+0x4]
	mov [esi], eax
	mov [esi+0x4], edx
	mov [edi], ecx
	mov [edi+0x4], ebx
	mov eax, [ebp-0x114]
	add eax, 0x8
	mov [ebp-0x128], eax
	mov [ebp-0x130], ecx
	mov [ebp-0x12c], ebx
	mov eax, [ebp-0x12c]
	shr eax, 0x16
	and eax, 0x3f
	not eax
	and eax, 0x3f
	shl eax, 0x16
	and dword [ebp-0x12c], 0xf03fffff
	or [ebp-0x12c], eax
	mov [ebp-0x110], edi
R_ReverseSortDrawSurfs_80:
	add dword [ebp-0x110], 0x8
	mov edx, [ebp-0x110]
	cmp [ebp-0x114], edx
	jae R_ReverseSortDrawSurfs_30
R_ReverseSortDrawSurfs_60:
	sub dword [ebp-0x128], 0x8
	mov eax, [ebp-0x128]
	cmp [ebp+0x8], eax
	jae R_ReverseSortDrawSurfs_40
R_ReverseSortDrawSurfs_90:
	mov esi, [eax]
	mov edi, [eax+0x4]
	mov eax, edi
	shr eax, 0x16
	and eax, 0x3f
	not eax
	and eax, 0x3f
	shl eax, 0x16
	mov ebx, edi
	and ebx, 0xf03fffff
	or ebx, eax
	cmp [ebp-0x12c], ebx
	ja R_ReverseSortDrawSurfs_50
	jb R_ReverseSortDrawSurfs_60
	cmp [ebp-0x130], esi
	jbe R_ReverseSortDrawSurfs_60
R_ReverseSortDrawSurfs_50:
	mov eax, [ebp-0x110]
	cmp [ebp-0x128], eax
	jb R_ReverseSortDrawSurfs_70
R_ReverseSortDrawSurfs_100:
	mov ecx, eax
	mov eax, [eax]
	mov edx, [ecx+0x4]
	mov [ecx], esi
	mov [ecx+0x4], edi
	mov esi, [ebp-0x128]
	mov [esi], eax
	mov [esi+0x4], edx
	add dword [ebp-0x110], 0x8
	mov edx, [ebp-0x110]
	cmp [ebp-0x114], edx
	jb R_ReverseSortDrawSurfs_60
R_ReverseSortDrawSurfs_30:
	mov edi, [ebp-0x110]
	mov eax, [edi]
	mov edx, [edi+0x4]
	mov ecx, edx
	shr ecx, 0x16
	and ecx, 0x3f
	not ecx
	and ecx, 0x3f
	shl ecx, 0x16
	mov edi, edx
	and edi, 0xf03fffff
	or edi, ecx
	cmp [ebp-0x12c], edi
	ja R_ReverseSortDrawSurfs_80
	jb R_ReverseSortDrawSurfs_60
	cmp [ebp-0x130], eax
	jae R_ReverseSortDrawSurfs_80
	sub dword [ebp-0x128], 0x8
	mov eax, [ebp-0x128]
	cmp [ebp+0x8], eax
	jb R_ReverseSortDrawSurfs_90
R_ReverseSortDrawSurfs_40:
	mov esi, [eax]
	mov edi, [eax+0x4]
	mov eax, [ebp-0x110]
	cmp [ebp-0x128], eax
	jae R_ReverseSortDrawSurfs_100
R_ReverseSortDrawSurfs_70:
	mov ecx, [ebp+0x8]
	mov eax, [ecx]
	mov edx, [ecx+0x4]
	mov [ecx], esi
	mov [ecx+0x4], edi
	mov esi, [ebp-0x128]
	mov [esi], eax
	mov [esi+0x4], edx
	mov edx, esi
	sub edx, ecx
	sub edx, 0x8
	sar edx, 0x3
	mov eax, [ebp-0x114]
	sub eax, [ebp-0x110]
	sar eax, 0x3
	cmp edx, eax
	jl R_ReverseSortDrawSurfs_110
	cmp ecx, esi
	ja R_ReverseSortDrawSurfs_120
	mov edi, [ebp-0x124]
	mov [ebp+edi*4-0x90], ecx
	mov eax, esi
	sub eax, 0x8
	mov [ebp+edi*4-0x108], eax
	add edi, 0x1
	mov [ebp-0x124], edi
R_ReverseSortDrawSurfs_120:
	mov eax, [ebp-0x110]
	cmp [ebp-0x114], eax
	jbe R_ReverseSortDrawSurfs_130
	mov [ebp+0x8], eax
	mov eax, [ebp-0x114]
	sub eax, [ebp+0x8]
	sar eax, 0x3
	add eax, 0x1
	cmp eax, 0x8
	jg R_ReverseSortDrawSurfs_140
R_ReverseSortDrawSurfs_20:
	mov ecx, [ebp-0x114]
	cmp [ebp+0x8], ecx
	jae R_ReverseSortDrawSurfs_130
	mov esi, [ebp+0x8]
	add esi, 0x8
	mov [ebp-0x10c], esi
	jmp R_ReverseSortDrawSurfs_150
R_ReverseSortDrawSurfs_160:
	mov edi, [ebp+0x8]
R_ReverseSortDrawSurfs_200:
	mov ecx, [edi]
	mov ebx, [edi+0x4]
	mov esi, [ebp-0x114]
	mov eax, [esi]
	mov edx, [esi+0x4]
	mov [edi], eax
	mov [edi+0x4], edx
	mov [esi], ecx
	mov [esi+0x4], ebx
	sub esi, 0x8
	mov [ebp-0x114], esi
	cmp [ebp+0x8], esi
	jae R_ReverseSortDrawSurfs_130
R_ReverseSortDrawSurfs_150:
	mov ecx, [ebp+0x8]
	mov esi, [ecx]
	mov edi, [ecx+0x4]
	mov eax, edi
	shr eax, 0x16
	and eax, 0x3f
	not eax
	and eax, 0x3f
	shl eax, 0x16
	mov ebx, edi
	and ebx, 0xf03fffff
	or ebx, eax
	mov [ebp-0x120], esi
	mov [ebp-0x11c], ebx
	mov esi, [ebp-0x10c]
	cmp [ebp-0x114], esi
	jb R_ReverseSortDrawSurfs_160
	mov edi, [ebp+0x8]
R_ReverseSortDrawSurfs_190:
	mov ecx, [esi]
	mov ebx, [esi+0x4]
	mov eax, ebx
	shr eax, 0x16
	and eax, 0x3f
	not eax
	and eax, 0x3f
	shl eax, 0x16
	and ebx, 0xf03fffff
	or ebx, eax
	cmp [ebp-0x11c], ebx
	ja R_ReverseSortDrawSurfs_170
	jb R_ReverseSortDrawSurfs_180
	cmp [ebp-0x120], ecx
	jae R_ReverseSortDrawSurfs_170
R_ReverseSortDrawSurfs_180:
	mov edi, esi
	mov [ebp-0x120], ecx
	mov [ebp-0x11c], ebx
R_ReverseSortDrawSurfs_170:
	add esi, 0x8
	cmp [ebp-0x114], esi
	jae R_ReverseSortDrawSurfs_190
	jmp R_ReverseSortDrawSurfs_200
R_ReverseSortDrawSurfs_130:
	sub dword [ebp-0x124], 0x1
	js R_ReverseSortDrawSurfs_10
	mov eax, [ebp-0x124]
	mov eax, [ebp+eax*4-0x90]
	mov [ebp+0x8], eax
	mov edx, [ebp-0x124]
	mov edx, [ebp+edx*4-0x108]
	mov [ebp-0x114], edx
	mov eax, edx
	jmp R_ReverseSortDrawSurfs_210
R_ReverseSortDrawSurfs_110:
	mov edx, [ebp-0x110]
	cmp [ebp-0x114], edx
	jbe R_ReverseSortDrawSurfs_220
	mov ecx, [ebp-0x124]
	mov [ebp+ecx*4-0x90], edx
	mov esi, [ebp-0x114]
	mov [ebp+ecx*4-0x108], esi
	add ecx, 0x1
	mov [ebp-0x124], ecx
R_ReverseSortDrawSurfs_220:
	mov edi, [ebp-0x128]
	sub edi, 0x8
	mov [ebp-0x114], edi
	cmp [ebp+0x8], edi
	jae R_ReverseSortDrawSurfs_130
	mov eax, edi
	jmp R_ReverseSortDrawSurfs_210
R_ReverseSortDrawSurfs_10:
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;R_ReserveCodeMeshIndices(int, r_double_index_t**)
R_ReserveCodeMeshIndices:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0xc], 0x0
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, frontEndDataOut
	mov eax, [eax]
	add eax, 0xb0000
	mov [esp], eax
	call R_ReserveMeshIndices
	test al, al
	jz R_ReserveCodeMeshIndices_10
	mov eax, 0x1
	leave
	ret
R_ReserveCodeMeshIndices_10:
	mov dword [esp], 0x1a
	call R_WarnOncePerFrame
	xor eax, eax
	leave
	ret
	nop


;R_ReserveMarkMeshIndices(int, r_double_index_t**)
R_ReserveMarkMeshIndices:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov dword [esp+0xc], 0x0
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov eax, [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, frontEndDataOut
	mov eax, [eax]
	add eax, 0x11e670
	mov [esp], eax
	call R_ReserveMeshIndices
	test al, al
	jz R_ReserveMarkMeshIndices_10
	mov eax, 0x1
	leave
	ret
R_ReserveMarkMeshIndices_10:
	mov dword [esp], 0x1d
	call R_WarnOncePerFrame
	xor eax, eax
	leave
	ret
	nop


;R_AddParticleCloudDrawSurf(unsigned int, Material*)
R_AddParticleCloudDrawSurf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edx, [ebp+0xc]
	mov eax, [edx+0x40]
	mov edx, [eax+0x8]
	mov eax, gfxDrawMethod
	mov eax, [eax+0x8]
	mov ebx, [edx+eax*4+0xc]
	test ebx, ebx
	jz R_AddParticleCloudDrawSurf_10
	mov edx, [ebp+0xc]
	movzx eax, byte [edx+0x5]
	xor edx, edx
	cmp al, 0x30
	setz dl
	cmp al, 0x18
	setz al
	movzx eax, al
	lea eax, [edx+eax*2+0xc]
	lea ebx, [eax*4]
	mov esi, scene
	lea edi, [ebx+esi+0xe4108]
	mov [esp], edi
	call InterlockedIncrement
	lea edx, [eax-0x1]
	lea eax, [esi+ebx+0xe4080]
	mov eax, [eax]
	cmp edx, eax
	jge R_AddParticleCloudDrawSurf_20
	lea eax, [esi+ebx+0xe4190]
	mov eax, [eax]
	lea ecx, [eax+edx*8]
	test ecx, ecx
	jz R_AddParticleCloudDrawSurf_30
	mov ebx, [ebp+0xc]
	mov eax, [ebx+0x8]
	mov edx, [ebx+0xc]
	mov [ecx], eax
	mov [ecx+0x4], edx
	movzx eax, word [ebp+0x8]
	mov [ecx], ax
	movzx eax, byte [ecx+0x6]
	and al, 0xc3
	or al, 0x30
	mov [ecx+0x6], al
	mov eax, [ecx]
	mov edx, [ecx+0x4]
	mov [ecx], eax
	mov [ecx+0x4], edx
	mov eax, 0x1
R_AddParticleCloudDrawSurf_40:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_AddParticleCloudDrawSurf_20:
	mov [esp], edi
	call InterlockedDecrement
	mov dword [esp], 0x10
	call R_WarnOncePerFrame
R_AddParticleCloudDrawSurf_30:
	xor eax, eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_AddParticleCloudDrawSurf_10:
	mov ebx, [ebp+0xc]
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov dword [esp], 0x11
	call R_WarnOncePerFrame
	xor eax, eax
	jmp R_AddParticleCloudDrawSurf_40


;Initialized global or static variables of r_drawsurf:
SECTION .data


;Initialized constant data of r_drawsurf:
SECTION .rdata


;Zero initialized global or static variables of r_drawsurf:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

