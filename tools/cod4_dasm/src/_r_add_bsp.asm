;Imports of r_add_bsp:
	extern rgp
	extern R_InitDelayedCmdBuf
	extern scene
	extern R_EndCmdBuf
	extern sm_fastSunShadow
	extern frontEndDataOut
	extern dx_ctx
	extern r_pretess
	extern R_AllocPreTessIndices
	extern R_AllocDrawSurf
	extern gfxBuf
	extern R_WritePrimDrawSurfInt
	extern R_WritePrimDrawSurfData
	extern Com_Memcpy

;Exports of r_add_bsp:
	global R_AddAllBspDrawSurfacesRangeCamera
	global R_AddAllBspDrawSurfacesRangeSunShadow
	global R_AddBspDrawSurfs
	global R_InitBspDrawSurf
	global R_AddAllBspDrawSurfacesCamera
	global R_AddAllBspDrawSurfacesSunShadow
	global R_AddAllBspDrawSurfacesSpotShadow
	global R_AddAllBspDrawSurfacesCameraNonlit


SECTION .text


;R_AddAllBspDrawSurfacesRangeCamera(unsigned int, unsigned int, unsigned int, unsigned int)
R_AddAllBspDrawSurfacesRangeCamera:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x16c
	mov [ebp-0x14c], eax
	mov [ebp-0x150], edx
	mov [ebp-0x154], ecx
	mov ebx, rgp
	mov eax, [ebx+0x20a0]
	mov eax, [eax+0x27c]
	mov [ebp-0x140], eax
	lea eax, [ebp-0x30]
	mov [esp], eax
	call R_InitDelayedCmdBuf
	mov esi, scene
	mov ecx, [ebp-0x154]
	mov edx, [esi+ecx*4+0xe4190]
	mov [ebp-0x20], edx
	mov eax, [ebx+0x20a0]
	mov ecx, [eax+0x2a0]
	mov eax, [ebp+0x8]
	lea eax, [edx+eax*8]
	mov [ebp-0x1c], eax
	mov dword [ebp-0x148], 0xffffffff
	mov dword [ebp-0x144], 0xffffffff
	mov eax, [ebp-0x150]
	cmp [ebp-0x14c], eax
	jae R_AddAllBspDrawSurfacesRangeCamera_10
	mov edx, [ebp-0x14c]
	lea edi, [ecx+edx*8]
	xor ecx, ecx
	mov dword [ebp-0x13c], 0x0
	add esi, 0xe4000
	mov [ebp-0x158], esi
	jmp R_AddAllBspDrawSurfacesRangeCamera_20
R_AddAllBspDrawSurfacesRangeCamera_40:
	add dword [ebp-0x13c], 0x1
	add edi, 0x8
	mov eax, [ebp-0x150]
	sub eax, [ebp-0x14c]
	cmp [ebp-0x13c], eax
	jz R_AddAllBspDrawSurfacesRangeCamera_30
R_AddAllBspDrawSurfacesRangeCamera_70:
	mov edx, [ebp-0x14c]
R_AddAllBspDrawSurfacesRangeCamera_20:
	mov eax, [ebp-0x140]
	add eax, [ebp-0x13c]
	cmp byte [eax+edx], 0x0
	jz R_AddAllBspDrawSurfacesRangeCamera_40
	mov ebx, [edi]
	mov esi, [edi+0x4]
	mov edx, [ebp-0x144]
	xor edx, esi
	mov eax, [ebp-0x148]
	xor eax, ebx
	or edx, eax
	jz R_AddAllBspDrawSurfacesRangeCamera_50
	test ecx, ecx
	jnz R_AddAllBspDrawSurfacesRangeCamera_60
R_AddAllBspDrawSurfacesRangeCamera_90:
	mov eax, esi
	shr eax, 0xa
	and eax, 0xff
	mov ecx, eax
	mov edx, eax
	sar edx, 0x5
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	mov ecx, [ebp-0x158]
	or [ecx+edx*4], eax
	mov [ebp-0x148], ebx
	mov [ebp-0x144], esi
	xor edx, edx
	mov ecx, 0x1
R_AddAllBspDrawSurfacesRangeCamera_80:
	movzx eax, word [ebp-0x14c]
	add ax, [ebp-0x13c]
	mov [ebp+edx*2-0x130], ax
	cmp ecx, 0x7f
	jbe R_AddAllBspDrawSurfacesRangeCamera_40
	lea eax, [ebp-0x30]
	mov [esp+0x10], eax
	mov [esp+0xc], ecx
	lea edx, [ebp-0x130]
	mov [esp+0x8], edx
	mov [esp], ebx
	mov [esp+0x4], esi
	call R_AddBspDrawSurfs
	xor ecx, ecx
	add dword [ebp-0x13c], 0x1
	add edi, 0x8
	mov eax, [ebp-0x150]
	sub eax, [ebp-0x14c]
	cmp [ebp-0x13c], eax
	jnz R_AddAllBspDrawSurfacesRangeCamera_70
R_AddAllBspDrawSurfacesRangeCamera_30:
	test ecx, ecx
	jz R_AddAllBspDrawSurfacesRangeCamera_10
	lea eax, [ebp-0x30]
	mov [esp+0x10], eax
	mov [esp+0xc], ecx
	lea eax, [ebp-0x130]
	mov [esp+0x8], eax
	mov edx, [ebp-0x148]
	mov ecx, [ebp-0x144]
	mov [esp], edx
	mov [esp+0x4], ecx
	call R_AddBspDrawSurfs
R_AddAllBspDrawSurfacesRangeCamera_10:
	lea ecx, [ebp-0x30]
	mov [esp], ecx
	call R_EndCmdBuf
	mov edx, scene
	mov eax, [ebp-0x20]
	mov ecx, [ebp-0x154]
	sub eax, [edx+ecx*4+0xe4190]
	sar eax, 0x3
	mov [edx+ecx*4+0xe4108], eax
	add esp, 0x16c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_AddAllBspDrawSurfacesRangeCamera_50:
	mov edx, ecx
	add ecx, 0x1
	jmp R_AddAllBspDrawSurfacesRangeCamera_80
R_AddAllBspDrawSurfacesRangeCamera_60:
	lea eax, [ebp-0x30]
	mov [esp+0x10], eax
	mov [esp+0xc], ecx
	lea edx, [ebp-0x130]
	mov [esp+0x8], edx
	mov eax, [ebp-0x148]
	mov edx, [ebp-0x144]
	mov [esp], eax
	mov [esp+0x4], edx
	call R_AddBspDrawSurfs
	jmp R_AddAllBspDrawSurfacesRangeCamera_90


;R_AddAllBspDrawSurfacesRangeSunShadow(unsigned int, unsigned int, unsigned int, unsigned int)
R_AddAllBspDrawSurfacesRangeSunShadow:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x17c
	mov ebx, eax
	mov [ebp-0x164], edx
	mov [ebp-0x168], ecx
	mov esi, rgp
	mov eax, [esi+0x20a0]
	mov eax, [eax+ebx*4+0x280]
	mov [ebp-0x154], eax
	lea eax, [ebp-0x30]
	mov [esp], eax
	call R_InitDelayedCmdBuf
	lea ebx, [ebx+ebx*2+0xf]
	mov [ebp-0x158], ebx
	mov eax, scene
	mov edx, [eax+ebx*4+0xe4190]
	mov [ebp-0x20], edx
	mov ecx, [esi+0x20a0]
	mov ebx, [ecx+0x2a0]
	mov eax, [ebp+0x8]
	lea eax, [edx+eax*8]
	mov [ebp-0x1c], eax
	mov dword [ebp-0x160], 0xffffffff
	mov dword [ebp-0x15c], 0xffffffff
	mov ecx, [ecx+0x2a4]
	mov [ebp-0x148], ecx
	mov eax, sm_fastSunShadow
	mov eax, [eax]
	movzx edx, byte [eax+0xc]
	mov eax, frontEndDataOut
	mov eax, [eax]
	mov eax, [eax+0x11e710]
	test eax, eax
	jnz R_AddAllBspDrawSurfacesRangeSunShadow_10
	test dl, dl
	jnz R_AddAllBspDrawSurfacesRangeSunShadow_20
R_AddAllBspDrawSurfacesRangeSunShadow_10:
	mov ecx, [ebp-0x168]
	cmp [ebp-0x164], ecx
	jae R_AddAllBspDrawSurfacesRangeSunShadow_30
	mov eax, [ebp-0x164]
	lea ebx, [ebx+eax*8]
	mov [ebp-0x144], ebx
	mov dword [ebp-0x150], 0x0
	mov dword [ebp-0x14c], 0x0
	xor edi, edi
	mov edx, eax
	jmp R_AddAllBspDrawSurfacesRangeSunShadow_40
R_AddAllBspDrawSurfacesRangeSunShadow_90:
	mov edx, [ebp-0x164]
R_AddAllBspDrawSurfacesRangeSunShadow_40:
	mov eax, [ebp-0x154]
	add eax, edi
	cmp byte [eax+edx], 0x0
	jz R_AddAllBspDrawSurfacesRangeSunShadow_50
	mov ecx, [ebp-0x144]
	mov ebx, [ecx]
	mov esi, [ecx+0x4]
	mov edx, [ebp-0x15c]
	xor edx, esi
	mov eax, [ebp-0x160]
	xor eax, ebx
	or edx, eax
	jz R_AddAllBspDrawSurfacesRangeSunShadow_60
	mov eax, [ebp-0x14c]
	test eax, eax
	jnz R_AddAllBspDrawSurfacesRangeSunShadow_70
R_AddAllBspDrawSurfacesRangeSunShadow_170:
	mov [ebp-0x160], ebx
	mov [ebp-0x15c], esi
	xor eax, eax
	test dword [ebp-0x160], 0x1f000000
	setz al
	mov [ebp-0x150], eax
	mov dword [ebp-0x14c], 0x0
R_AddAllBspDrawSurfacesRangeSunShadow_60:
	mov eax, [ebp-0x150]
	test eax, eax
	jnz R_AddAllBspDrawSurfacesRangeSunShadow_50
	movzx eax, word [ebp-0x164]
	add eax, edi
	mov edx, [ebp-0x14c]
	mov [ebp+edx*2-0x130], ax
	add edx, 0x1
	mov [ebp-0x14c], edx
	cmp edx, 0x7f
	ja R_AddAllBspDrawSurfacesRangeSunShadow_80
R_AddAllBspDrawSurfacesRangeSunShadow_50:
	add edi, 0x1
	add dword [ebp-0x144], 0x8
	mov eax, [ebp-0x168]
	sub eax, [ebp-0x164]
	cmp eax, edi
	jnz R_AddAllBspDrawSurfacesRangeSunShadow_90
R_AddAllBspDrawSurfacesRangeSunShadow_160:
	mov ecx, [ebp-0x14c]
	test ecx, ecx
	jz R_AddAllBspDrawSurfacesRangeSunShadow_30
	lea edx, [ebp-0x30]
	mov [esp+0x10], edx
	mov ecx, [ebp-0x14c]
	mov [esp+0xc], ecx
	lea eax, [ebp-0x130]
	mov [esp+0x8], eax
	mov eax, [ebp-0x160]
	mov edx, [ebp-0x15c]
	mov [esp], eax
	mov [esp+0x4], edx
	call R_AddBspDrawSurfs
R_AddAllBspDrawSurfacesRangeSunShadow_30:
	lea edx, [ebp-0x30]
	mov [esp], edx
	call R_EndCmdBuf
	mov edx, scene
	mov eax, [ebp-0x20]
	mov ecx, [ebp-0x158]
	sub eax, [edx+ecx*4+0xe4190]
	sar eax, 0x3
	mov [edx+ecx*4+0xe4108], eax
	add esp, 0x17c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_AddAllBspDrawSurfacesRangeSunShadow_20:
	mov eax, [ebp-0x168]
	cmp [ebp-0x164], eax
	jae R_AddAllBspDrawSurfacesRangeSunShadow_30
	mov eax, [ebp-0x154]
	add eax, [ebp-0x164]
	mov [ebp-0x140], eax
	mov edx, [ebp-0x164]
	lea ebx, [ebx+edx*8]
	mov [ebp-0x13c], ebx
	mov edi, edx
	mov dword [ebp-0x14c], 0x0
	jmp R_AddAllBspDrawSurfacesRangeSunShadow_100
R_AddAllBspDrawSurfacesRangeSunShadow_150:
	mov eax, [ebp-0x140]
R_AddAllBspDrawSurfacesRangeSunShadow_100:
	cmp byte [eax], 0x0
	jz R_AddAllBspDrawSurfacesRangeSunShadow_110
	mov edx, edi
	shr edx, 0x5
	mov ecx, edi
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	mov ecx, [ebp-0x148]
	test [ecx+edx*4], eax
	jz R_AddAllBspDrawSurfacesRangeSunShadow_110
	mov eax, [ebp-0x13c]
	mov ebx, [eax]
	mov esi, [eax+0x4]
	mov edx, [ebp-0x15c]
	xor edx, esi
	mov eax, [ebp-0x160]
	xor eax, ebx
	or edx, eax
	jz R_AddAllBspDrawSurfacesRangeSunShadow_120
	mov eax, [ebp-0x14c]
	test eax, eax
	jnz R_AddAllBspDrawSurfacesRangeSunShadow_130
R_AddAllBspDrawSurfacesRangeSunShadow_190:
	mov [ebp-0x160], ebx
	mov [ebp-0x15c], esi
	xor eax, eax
	mov dword [ebp-0x14c], 0x1
R_AddAllBspDrawSurfacesRangeSunShadow_180:
	mov [ebp+eax*2-0x130], di
	cmp dword [ebp-0x14c], 0x7f
	ja R_AddAllBspDrawSurfacesRangeSunShadow_140
R_AddAllBspDrawSurfacesRangeSunShadow_110:
	add edi, 0x1
	add dword [ebp-0x140], 0x1
	add dword [ebp-0x13c], 0x8
	cmp edi, [ebp-0x168]
	jnz R_AddAllBspDrawSurfacesRangeSunShadow_150
	jmp R_AddAllBspDrawSurfacesRangeSunShadow_160
R_AddAllBspDrawSurfacesRangeSunShadow_70:
	lea eax, [ebp-0x30]
	mov [esp+0x10], eax
	mov edx, [ebp-0x14c]
	mov [esp+0xc], edx
	lea eax, [ebp-0x130]
	mov [esp+0x8], eax
	mov eax, [ebp-0x160]
	mov edx, [ebp-0x15c]
	mov [esp], eax
	mov [esp+0x4], edx
	call R_AddBspDrawSurfs
	jmp R_AddAllBspDrawSurfacesRangeSunShadow_170
R_AddAllBspDrawSurfacesRangeSunShadow_80:
	lea ecx, [ebp-0x30]
	mov [esp+0x10], ecx
	mov [esp+0xc], edx
	lea eax, [ebp-0x130]
	mov [esp+0x8], eax
	mov [esp], ebx
	mov [esp+0x4], esi
	call R_AddBspDrawSurfs
	mov dword [ebp-0x14c], 0x0
	jmp R_AddAllBspDrawSurfacesRangeSunShadow_50
R_AddAllBspDrawSurfacesRangeSunShadow_140:
	lea ecx, [ebp-0x30]
	mov [esp+0x10], ecx
	mov eax, [ebp-0x14c]
	mov [esp+0xc], eax
	lea eax, [ebp-0x130]
	mov [esp+0x8], eax
	mov [esp], ebx
	mov [esp+0x4], esi
	call R_AddBspDrawSurfs
	mov dword [ebp-0x14c], 0x0
	jmp R_AddAllBspDrawSurfacesRangeSunShadow_110
R_AddAllBspDrawSurfacesRangeSunShadow_120:
	mov eax, [ebp-0x14c]
	mov edx, eax
	add edx, 0x1
	mov [ebp-0x14c], edx
	jmp R_AddAllBspDrawSurfacesRangeSunShadow_180
R_AddAllBspDrawSurfacesRangeSunShadow_130:
	lea ecx, [ebp-0x30]
	mov [esp+0x10], ecx
	mov eax, [ebp-0x14c]
	mov [esp+0xc], eax
	lea eax, [ebp-0x130]
	mov [esp+0x8], eax
	mov edx, [ebp-0x160]
	mov ecx, [ebp-0x15c]
	mov [esp], edx
	mov [esp+0x4], ecx
	call R_AddBspDrawSurfs
	jmp R_AddAllBspDrawSurfacesRangeSunShadow_190
	nop


;R_AddBspDrawSurfs(GfxDrawSurf, unsigned short const*, unsigned int, GfxBspDrawSurfData*)
R_AddBspDrawSurfs:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x24c
	mov eax, dx_ctx
	cmp byte [eax+0x2c6c], 0x0
	jnz R_AddBspDrawSurfs_10
	mov eax, r_pretess
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz R_AddBspDrawSurfs_10
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov [ebp-0x238], eax
	mov [ebp-0x234], edx
	mov edx, [ebp+0x14]
	test edx, edx
	jnz R_AddBspDrawSurfs_20
	xor eax, eax
R_AddBspDrawSurfs_60:
	mov [esp], eax
	call R_AllocPreTessIndices
	mov [ebp-0x22c], eax
	test eax, eax
	jz R_AddBspDrawSurfs_10
	mov eax, [ebp+0x14]
	test eax, eax
	jnz R_AddBspDrawSurfs_30
	xor esi, esi
	mov eax, 0x2
R_AddBspDrawSurfs_110:
	mov edx, [ebp+0xc]
	and edx, 0xffc3ffff
	mov [ebp-0x234], edx
	or dword [ebp-0x234], 0x40000
	mov [esp+0x10], eax
	mov eax, [ebp+0x18]
	add eax, 0x10
	mov [esp+0xc], eax
	mov eax, [ebp-0x238]
	mov edx, [ebp-0x234]
	mov [esp+0x4], eax
	mov [esp+0x8], edx
	mov edx, [ebp+0x18]
	mov [esp], edx
	call R_AllocDrawSurf
	test eax, eax
	jz R_AddBspDrawSurfs_40
	mov eax, gfxBuf
	mov eax, [eax+0x30]
	mov ecx, [eax+0xc]
	sub [ebp-0x22c], ecx
	sar dword [ebp-0x22c], 1
	mov [esp+0x4], esi
	mov eax, [ebp+0x18]
	mov [esp], eax
	call R_WritePrimDrawSurfInt
	mov edx, [ebp-0x22c]
	mov [esp+0x4], edx
	mov ecx, [ebp+0x18]
	mov [esp], ecx
	call R_WritePrimDrawSurfInt
	mov [esp+0x8], esi
	lea eax, [ebp-0x218]
	mov [esp+0x4], eax
	mov esi, [ebp+0x18]
	mov [esp], esi
	call R_WritePrimDrawSurfData
R_AddBspDrawSurfs_40:
	add esp, 0x24c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_AddBspDrawSurfs_10:
	mov ebx, [ebp+0x14]
	add ebx, 0x1
	shr ebx, 1
	lea eax, [ebx+0x1]
	mov [esp+0x10], eax
	mov eax, [ebp+0x18]
	add eax, 0x10
	mov [esp+0xc], eax
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp+0x8], edx
	mov edx, [ebp+0x18]
	mov [esp], edx
	call R_AllocDrawSurf
	test eax, eax
	jz R_AddBspDrawSurfs_40
	mov ecx, [ebp+0x14]
	mov [esp+0x4], ecx
	mov esi, [ebp+0x18]
	mov [esp], esi
	call R_WritePrimDrawSurfInt
	mov [esp+0x8], ebx
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov [esp], esi
	call R_WritePrimDrawSurfData
	add esp, 0x24c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_AddBspDrawSurfs_20:
	mov eax, rgp
	mov eax, [eax+0x20a0]
	mov ebx, [eax+0x294]
	xor edx, edx
	xor ecx, ecx
	mov esi, [ebp+0x10]
R_AddBspDrawSurfs_50:
	movzx eax, word [esi+edx*2]
	lea eax, [eax+eax*2]
	shl eax, 0x4
	movzx eax, word [ebx+eax+0xa]
	add ecx, eax
	add edx, 0x1
	cmp [ebp+0x14], edx
	jnz R_AddBspDrawSurfs_50
	lea eax, [ecx+ecx*2]
	jmp R_AddBspDrawSurfs_60
R_AddBspDrawSurfs_30:
	mov dword [ebp-0x21c], 0x0
	mov dword [ebp-0x230], 0x0
	mov dword [ebp-0x228], 0x7fffffff
	mov dword [ebp-0x224], 0x1f
	mov dword [ebp-0x220], 0xff
	xor esi, esi
	mov eax, [ebp-0x21c]
	jmp R_AddBspDrawSurfs_70
R_AddBspDrawSurfs_90:
	movzx eax, byte [ebx+0x14]
	mov [ebp-0x224], eax
	movzx eax, byte [ebx+0x15]
	mov [ebp-0x220], eax
	mov [ebp+esi*4-0x218], cx
	mov word [ebp+esi*4-0x216], 0x0
	add esi, 0x1
	mov [ebp-0x228], edx
R_AddBspDrawSurfs_100:
	movzx eax, word [ebx+0xa]
	lea eax, [eax+eax*2]
	add eax, eax
	mov [esp+0x8], eax
	mov eax, [ebx+0xc]
	mov edx, [edi+0x14]
	lea eax, [edx+eax*2]
	mov [esp+0x4], eax
	mov edx, [ebp-0x230]
	mov ecx, [ebp-0x22c]
	lea eax, [ecx+edx*2]
	mov [esp], eax
	call Com_Memcpy
	movzx eax, word [ebx+0xa]
	lea edx, [eax+eax*2]
	add [ebp-0x230], edx
	add [ebp+esi*4-0x21a], ax
	add dword [ebp-0x21c], 0x1
	mov eax, [ebp-0x21c]
	cmp [ebp+0x14], eax
	jz R_AddBspDrawSurfs_80
R_AddBspDrawSurfs_70:
	mov edx, [ebp+0x10]
	movzx ecx, word [edx+eax*2]
	mov eax, rgp
	mov edi, [eax+0x20a0]
	movzx eax, cx
	lea ebx, [eax+eax*2]
	shl ebx, 0x4
	add ebx, [edi+0x294]
	mov edx, [ebx+0x4]
	cmp [ebp-0x228], edx
	jnz R_AddBspDrawSurfs_90
	movzx eax, byte [ebx+0x14]
	cmp [ebp-0x224], eax
	jnz R_AddBspDrawSurfs_90
	movzx eax, byte [ebx+0x15]
	cmp [ebp-0x220], eax
	jnz R_AddBspDrawSurfs_90
	jmp R_AddBspDrawSurfs_100
R_AddBspDrawSurfs_80:
	lea eax, [esi+0x2]
	jmp R_AddBspDrawSurfs_110
	nop


;R_InitBspDrawSurf(GfxBspDrawSurfData*)
R_InitBspDrawSurf:
	push ebp
	mov ebp, esp
	pop ebp
	jmp R_InitDelayedCmdBuf
	nop


;R_AddAllBspDrawSurfacesCamera()
R_AddAllBspDrawSurfacesCamera:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, rgp
	mov eax, [ebx+0x20a0]
	mov edx, [eax+0x254]
	mov eax, [eax+0x250]
	mov dword [esp], 0x2000
	xor ecx, ecx
	call R_AddAllBspDrawSurfacesRangeCamera
	mov eax, [ebx+0x20a0]
	mov edx, [eax+0x25c]
	mov eax, [eax+0x258]
	mov dword [esp], 0x200
	mov ecx, 0x3
	call R_AddAllBspDrawSurfacesRangeCamera
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;R_AddAllBspDrawSurfacesSunShadow()
R_AddAllBspDrawSurfacesSunShadow:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, rgp
	mov eax, [ebx+0x20a0]
	mov ecx, [eax+0x264]
	mov edx, [eax+0x250]
	mov dword [esp], 0x1000
	xor eax, eax
	call R_AddAllBspDrawSurfacesRangeSunShadow
	mov eax, [ebx+0x20a0]
	mov ecx, [eax+0x264]
	mov edx, [eax+0x250]
	mov dword [esp], 0x2000
	mov eax, 0x1
	call R_AddAllBspDrawSurfacesRangeSunShadow
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;R_AddAllBspDrawSurfacesSpotShadow(unsigned int, unsigned int)
R_AddAllBspDrawSurfacesSpotShadow:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x16c
	mov edx, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov esi, rgp
	mov eax, [esi+0x20a0]
	mov eax, [eax+0x2a0]
	mov [ebp-0x13c], eax
	lea edx, [edx+edx*2+0x15]
	mov [ebp-0x14c], edx
	lea eax, [ebp-0x30]
	mov [esp], eax
	call R_InitDelayedCmdBuf
	mov edx, scene
	mov edi, [ebp-0x14c]
	mov ecx, [edx+edi*4+0xe4190]
	mov eax, [edx+edi*4+0xe4108]
	lea eax, [ecx+eax*8]
	mov [ebp-0x140], eax
	mov [ebp-0x20], eax
	mov eax, [edx+edi*4+0xe4080]
	lea eax, [ecx+eax*8]
	mov [ebp-0x1c], eax
	mov dword [ebp-0x158], 0xffffffff
	mov dword [ebp-0x154], 0xffffffff
	mov eax, [esi+0x20a0]
	lea ebx, [ebx+ebx*2]
	mov eax, [eax+0x23c]
	lea ebx, [eax+ebx*4]
	mov [ebp-0x144], ebx
	cmp word [ebx], 0x0
	jz R_AddAllBspDrawSurfacesSpotShadow_10
	mov dword [ebp-0x148], 0x0
	xor ecx, ecx
	jmp R_AddAllBspDrawSurfacesSpotShadow_20
R_AddAllBspDrawSurfacesSpotShadow_60:
	add dword [ebp-0x148], 0x1
	mov ecx, [ebp-0x144]
	movzx eax, word [ecx]
	cmp eax, [ebp-0x148]
	jbe R_AddAllBspDrawSurfacesSpotShadow_30
R_AddAllBspDrawSurfacesSpotShadow_70:
	mov ecx, edx
R_AddAllBspDrawSurfacesSpotShadow_20:
	mov edx, [ebp-0x144]
	mov eax, [edx+0x4]
	mov edx, [ebp-0x148]
	movzx edi, word [eax+edx*2]
	mov eax, [ebp-0x13c]
	mov ebx, [eax+edi*8]
	mov esi, [eax+edi*8+0x4]
	mov edx, [ebp-0x154]
	xor edx, esi
	mov eax, [ebp-0x158]
	xor eax, ebx
	or edx, eax
	jz R_AddAllBspDrawSurfacesSpotShadow_40
	test ecx, ecx
	jnz R_AddAllBspDrawSurfacesSpotShadow_50
R_AddAllBspDrawSurfacesSpotShadow_90:
	mov [ebp-0x158], ebx
	mov [ebp-0x154], esi
	xor ecx, ecx
	mov edx, 0x1
R_AddAllBspDrawSurfacesSpotShadow_80:
	mov [ebp+ecx*2-0x130], di
	cmp edx, 0x7f
	jbe R_AddAllBspDrawSurfacesSpotShadow_60
	lea ecx, [ebp-0x30]
	mov [esp+0x10], ecx
	mov [esp+0xc], edx
	lea edi, [ebp-0x130]
	mov [esp+0x8], edi
	mov [esp], ebx
	mov [esp+0x4], esi
	call R_AddBspDrawSurfs
	xor edx, edx
	add dword [ebp-0x148], 0x1
	mov ecx, [ebp-0x144]
	movzx eax, word [ecx]
	cmp eax, [ebp-0x148]
	ja R_AddAllBspDrawSurfacesSpotShadow_70
R_AddAllBspDrawSurfacesSpotShadow_30:
	test edx, edx
	jz R_AddAllBspDrawSurfacesSpotShadow_10
	lea edi, [ebp-0x30]
	mov [esp+0x10], edi
	mov [esp+0xc], edx
	lea eax, [ebp-0x130]
	mov [esp+0x8], eax
	mov eax, [ebp-0x158]
	mov edx, [ebp-0x154]
	mov [esp], eax
	mov [esp+0x4], edx
	call R_AddBspDrawSurfs
R_AddAllBspDrawSurfacesSpotShadow_10:
	lea edx, [ebp-0x30]
	mov [esp], edx
	call R_EndCmdBuf
	mov eax, scene
	mov edi, [ebp-0x14c]
	mov ecx, [eax+edi*4+0xe4108]
	mov edx, [ebp-0x20]
	sub edx, [ebp-0x140]
	sar edx, 0x3
	add edx, ecx
	mov [eax+edi*4+0xe4108], edx
	add esp, 0x16c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_AddAllBspDrawSurfacesSpotShadow_40:
	lea edx, [ecx+0x1]
	jmp R_AddAllBspDrawSurfacesSpotShadow_80
R_AddAllBspDrawSurfacesSpotShadow_50:
	lea edx, [ebp-0x30]
	mov [esp+0x10], edx
	mov [esp+0xc], ecx
	lea ecx, [ebp-0x130]
	mov [esp+0x8], ecx
	mov eax, [ebp-0x158]
	mov edx, [ebp-0x154]
	mov [esp], eax
	mov [esp+0x4], edx
	call R_AddBspDrawSurfs
	jmp R_AddAllBspDrawSurfacesSpotShadow_90
	add [eax], al


;R_AddAllBspDrawSurfacesCameraNonlit(unsigned int, unsigned int, unsigned int)
R_AddAllBspDrawSurfacesCameraNonlit:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x15c
	mov eax, rgp
	mov eax, [eax+0x20a0]
	mov edx, [eax+0x27c]
	mov [ebp-0x140], edx
	mov ebx, [eax+0x2a0]
	lea ecx, [ebp-0x30]
	mov [esp], ecx
	call R_InitDelayedCmdBuf
	mov eax, scene
	mov ecx, [ebp+0x10]
	mov edx, [eax+ecx*4+0xe4190]
	mov [ebp-0x20], edx
	mov eax, [eax+ecx*4+0xe4080]
	lea eax, [edx+eax*8]
	mov [ebp-0x1c], eax
	mov dword [ebp-0x148], 0xffffffff
	mov dword [ebp-0x144], 0xffffffff
	mov eax, [ebp+0xc]
	cmp [ebp+0x8], eax
	jae R_AddAllBspDrawSurfacesCameraNonlit_10
	mov edx, [ebp+0x8]
	lea edi, [ebx+edx*8]
	xor ecx, ecx
	mov dword [ebp-0x13c], 0x0
	jmp R_AddAllBspDrawSurfacesCameraNonlit_20
R_AddAllBspDrawSurfacesCameraNonlit_40:
	add dword [ebp-0x13c], 0x1
	add edi, 0x8
	mov eax, [ebp+0xc]
	sub eax, [ebp+0x8]
	cmp [ebp-0x13c], eax
	jz R_AddAllBspDrawSurfacesCameraNonlit_30
R_AddAllBspDrawSurfacesCameraNonlit_70:
	mov edx, [ebp+0x8]
R_AddAllBspDrawSurfacesCameraNonlit_20:
	mov eax, [ebp-0x140]
	add eax, [ebp-0x13c]
	cmp byte [eax+edx], 0x0
	jz R_AddAllBspDrawSurfacesCameraNonlit_40
	mov ebx, [edi]
	mov esi, [edi+0x4]
	mov edx, [ebp-0x144]
	xor edx, esi
	mov eax, [ebp-0x148]
	xor eax, ebx
	or edx, eax
	jz R_AddAllBspDrawSurfacesCameraNonlit_50
	test ecx, ecx
	jnz R_AddAllBspDrawSurfacesCameraNonlit_60
R_AddAllBspDrawSurfacesCameraNonlit_90:
	mov [ebp-0x148], ebx
	mov [ebp-0x144], esi
	xor edx, edx
	mov ecx, 0x1
R_AddAllBspDrawSurfacesCameraNonlit_80:
	movzx eax, word [ebp+0x8]
	add ax, [ebp-0x13c]
	mov [ebp+edx*2-0x130], ax
	cmp ecx, 0x7f
	jbe R_AddAllBspDrawSurfacesCameraNonlit_40
	lea edx, [ebp-0x30]
	mov [esp+0x10], edx
	mov [esp+0xc], ecx
	lea ecx, [ebp-0x130]
	mov [esp+0x8], ecx
	mov [esp], ebx
	mov [esp+0x4], esi
	call R_AddBspDrawSurfs
	xor ecx, ecx
	add dword [ebp-0x13c], 0x1
	add edi, 0x8
	mov eax, [ebp+0xc]
	sub eax, [ebp+0x8]
	cmp [ebp-0x13c], eax
	jnz R_AddAllBspDrawSurfacesCameraNonlit_70
R_AddAllBspDrawSurfacesCameraNonlit_30:
	test ecx, ecx
	jz R_AddAllBspDrawSurfacesCameraNonlit_10
	lea eax, [ebp-0x30]
	mov [esp+0x10], eax
	mov [esp+0xc], ecx
	lea eax, [ebp-0x130]
	mov [esp+0x8], eax
	mov edx, [ebp-0x148]
	mov ecx, [ebp-0x144]
	mov [esp], edx
	mov [esp+0x4], ecx
	call R_AddBspDrawSurfs
R_AddAllBspDrawSurfacesCameraNonlit_10:
	lea ecx, [ebp-0x30]
	mov [esp], ecx
	call R_EndCmdBuf
	mov edx, scene
	mov eax, [ebp-0x20]
	mov ecx, [ebp+0x10]
	sub eax, [edx+ecx*4+0xe4190]
	sar eax, 0x3
	mov [edx+ecx*4+0xe4108], eax
	add esp, 0x15c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_AddAllBspDrawSurfacesCameraNonlit_50:
	mov edx, ecx
	add ecx, 0x1
	jmp R_AddAllBspDrawSurfacesCameraNonlit_80
R_AddAllBspDrawSurfacesCameraNonlit_60:
	lea eax, [ebp-0x30]
	mov [esp+0x10], eax
	mov [esp+0xc], ecx
	lea edx, [ebp-0x130]
	mov [esp+0x8], edx
	mov eax, [ebp-0x148]
	mov edx, [ebp-0x144]
	mov [esp], eax
	mov [esp+0x4], edx
	call R_AddBspDrawSurfs
	jmp R_AddAllBspDrawSurfacesCameraNonlit_90
	nop


;Initialized global or static variables of r_add_bsp:
SECTION .data


;Initialized constant data of r_add_bsp:
SECTION .rdata


;Zero initialized global or static variables of r_add_bsp:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

