;Imports of r_drawsurf:
	extern frontEndDataOut
	extern _Z14R_EndMeshVertsP11GfxMeshData
	extern _Z14R_GetMeshVertsP11GfxMeshDatat
	extern rgp
	extern _Z32R_AddShadowSurfaceToPrimaryLightP8GfxWorldjj
	extern _Z37R_ForEachPrimaryLightAffectingSurfaceP8GfxWorldPK10GfxSurfacejPFvS0_jjE
	extern memset
	extern _Z16R_BeginMeshVertsP11GfxMeshData
	extern gfxDrawMethod
	extern r_fullbright
	extern _Z18R_WarnOncePerFrame14GfxWarningTypez
	extern iInterlockedExchangeAdd
	extern scene
	extern iInterlockedIncrement
	extern iInterlockedDecrement
	extern iInterlockedExchange
	extern _Z18R_ReserveMeshVertsP11GfxMeshDataiPt
	extern _Z20R_ReserveMeshIndicesP11GfxMeshDataiPP16r_double_index_th

;Exports of r_drawsurf:
	global _Z15R_SortDrawSurfsP11GfxDrawSurfi
	global _Z17R_GetCodeMeshArgsj
	global _Z18R_EndCodeMeshVertsv
	global _Z18R_EndMarkMeshVertsv
	global _Z18R_GetCodeMeshVertst
	global _Z18R_GetMarkMeshVertst
	global _Z19R_SortWorldSurfacesv
	global _Z20R_BeginCodeMeshVertsv
	global _Z20R_BeginMarkMeshVertsv
	global _Z21R_AddCodeMeshDrawSurfP8MaterialP16r_double_index_tjjjPKc
	global _Z21R_AddMarkMeshDrawSurfP8MaterialPK14GfxMarkContextPtj
	global _Z21R_ReserveCodeMeshArgsiPj
	global _Z22R_ReserveCodeMeshVertsiPt
	global _Z22R_ReserveMarkMeshVertsiPt
	global _Z22R_ReverseSortDrawSurfsP11GfxDrawSurfi
	global _Z24R_ReserveCodeMeshIndicesiPP16r_double_index_t
	global _Z24R_ReserveMarkMeshIndicesiPP16r_double_index_t
	global _Z26R_AddParticleCloudDrawSurfjP8Material


SECTION .text


;R_SortDrawSurfs(GfxDrawSurf*, int)
_Z15R_SortDrawSurfsP11GfxDrawSurfi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x12c
	mov eax, [ebp+0xc]
	cmp eax, 0x1
	jle _Z15R_SortDrawSurfsP11GfxDrawSurfi_10
	mov edx, [ebp+0x8]
	lea eax, [edx+eax*8-0x8]
	mov [ebp-0x11c], eax
	mov dword [ebp-0x120], 0x0
_Z15R_SortDrawSurfsP11GfxDrawSurfi_210:
	sub eax, [ebp+0x8]
	sar eax, 0x3
	add eax, 0x1
	cmp eax, 0x8
	jle _Z15R_SortDrawSurfsP11GfxDrawSurfi_20
_Z15R_SortDrawSurfsP11GfxDrawSurfi_140:
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
_Z15R_SortDrawSurfsP11GfxDrawSurfi_80:
	add edi, 0x8
	cmp [ebp-0x11c], edi
	jae _Z15R_SortDrawSurfsP11GfxDrawSurfi_30
_Z15R_SortDrawSurfsP11GfxDrawSurfi_60:
	sub esi, 0x8
	cmp [ebp+0x8], esi
	jae _Z15R_SortDrawSurfsP11GfxDrawSurfi_40
_Z15R_SortDrawSurfsP11GfxDrawSurfi_90:
	mov ecx, [esi]
	mov ebx, [esi+0x4]
	cmp [ebp-0x114], ebx
	ja _Z15R_SortDrawSurfsP11GfxDrawSurfi_50
	jb _Z15R_SortDrawSurfsP11GfxDrawSurfi_60
	cmp [ebp-0x118], ecx
	jbe _Z15R_SortDrawSurfsP11GfxDrawSurfi_60
_Z15R_SortDrawSurfsP11GfxDrawSurfi_50:
	cmp esi, edi
	jb _Z15R_SortDrawSurfsP11GfxDrawSurfi_70
_Z15R_SortDrawSurfsP11GfxDrawSurfi_100:
	mov eax, [edi]
	mov edx, [edi+0x4]
	mov [edi], ecx
	mov [edi+0x4], ebx
	mov [esi], eax
	mov [esi+0x4], edx
	add edi, 0x8
	cmp [ebp-0x11c], edi
	jb _Z15R_SortDrawSurfsP11GfxDrawSurfi_60
_Z15R_SortDrawSurfsP11GfxDrawSurfi_30:
	mov eax, [edi]
	mov edx, [edi+0x4]
	cmp [ebp-0x114], edx
	ja _Z15R_SortDrawSurfsP11GfxDrawSurfi_80
	jb _Z15R_SortDrawSurfsP11GfxDrawSurfi_60
	cmp [ebp-0x118], eax
	jae _Z15R_SortDrawSurfsP11GfxDrawSurfi_80
	sub esi, 0x8
	cmp [ebp+0x8], esi
	jb _Z15R_SortDrawSurfsP11GfxDrawSurfi_90
_Z15R_SortDrawSurfsP11GfxDrawSurfi_40:
	mov ecx, [esi]
	mov ebx, [esi+0x4]
	cmp esi, edi
	jae _Z15R_SortDrawSurfsP11GfxDrawSurfi_100
_Z15R_SortDrawSurfsP11GfxDrawSurfi_70:
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
	jl _Z15R_SortDrawSurfsP11GfxDrawSurfi_110
	cmp [ebp+0x8], esi
	ja _Z15R_SortDrawSurfsP11GfxDrawSurfi_120
	mov ebx, [ebp+0x8]
	mov ecx, [ebp-0x120]
	mov [ebp+ecx*4-0x90], ebx
	lea eax, [esi-0x8]
	mov [ebp+ecx*4-0x108], eax
	add ecx, 0x1
	mov [ebp-0x120], ecx
_Z15R_SortDrawSurfsP11GfxDrawSurfi_120:
	cmp [ebp-0x11c], edi
	jbe _Z15R_SortDrawSurfsP11GfxDrawSurfi_130
	mov [ebp+0x8], edi
	mov eax, [ebp-0x11c]
	sub eax, [ebp+0x8]
	sar eax, 0x3
	add eax, 0x1
	cmp eax, 0x8
	jg _Z15R_SortDrawSurfsP11GfxDrawSurfi_140
_Z15R_SortDrawSurfsP11GfxDrawSurfi_20:
	mov esi, [ebp-0x11c]
	cmp [ebp+0x8], esi
	jae _Z15R_SortDrawSurfsP11GfxDrawSurfi_130
	mov eax, [ebp+0x8]
	add eax, 0x8
	mov [ebp-0x10c], eax
	mov edx, eax
	jmp _Z15R_SortDrawSurfsP11GfxDrawSurfi_150
_Z15R_SortDrawSurfsP11GfxDrawSurfi_160:
	mov edi, eax
_Z15R_SortDrawSurfsP11GfxDrawSurfi_200:
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
	jae _Z15R_SortDrawSurfsP11GfxDrawSurfi_130
	mov edx, [ebp-0x10c]
_Z15R_SortDrawSurfsP11GfxDrawSurfi_150:
	mov eax, [ebp+0x8]
	mov ebx, [eax]
	mov esi, [eax+0x4]
	cmp [ebp-0x11c], edx
	jb _Z15R_SortDrawSurfsP11GfxDrawSurfi_160
	mov ecx, edx
	mov edi, eax
_Z15R_SortDrawSurfsP11GfxDrawSurfi_190:
	mov eax, [ecx]
	mov edx, [ecx+0x4]
	cmp esi, edx
	ja _Z15R_SortDrawSurfsP11GfxDrawSurfi_170
	jb _Z15R_SortDrawSurfsP11GfxDrawSurfi_180
	cmp ebx, eax
	jae _Z15R_SortDrawSurfsP11GfxDrawSurfi_170
_Z15R_SortDrawSurfsP11GfxDrawSurfi_180:
	mov edi, ecx
	mov ebx, eax
	mov esi, edx
_Z15R_SortDrawSurfsP11GfxDrawSurfi_170:
	add ecx, 0x8
	cmp [ebp-0x11c], ecx
	jae _Z15R_SortDrawSurfsP11GfxDrawSurfi_190
	jmp _Z15R_SortDrawSurfsP11GfxDrawSurfi_200
_Z15R_SortDrawSurfsP11GfxDrawSurfi_130:
	sub dword [ebp-0x120], 0x1
	js _Z15R_SortDrawSurfsP11GfxDrawSurfi_10
	mov ecx, [ebp-0x120]
	mov ecx, [ebp+ecx*4-0x90]
	mov [ebp+0x8], ecx
	mov ebx, [ebp-0x120]
	mov ebx, [ebp+ebx*4-0x108]
	mov [ebp-0x11c], ebx
	mov eax, ebx
	jmp _Z15R_SortDrawSurfsP11GfxDrawSurfi_210
_Z15R_SortDrawSurfsP11GfxDrawSurfi_110:
	cmp [ebp-0x11c], edi
	jbe _Z15R_SortDrawSurfsP11GfxDrawSurfi_220
	mov eax, [ebp-0x120]
	mov [ebp+eax*4-0x90], edi
	mov edx, [ebp-0x11c]
	mov [ebp+eax*4-0x108], edx
	add eax, 0x1
	mov [ebp-0x120], eax
_Z15R_SortDrawSurfsP11GfxDrawSurfi_220:
	sub esi, 0x8
	mov [ebp-0x11c], esi
	cmp [ebp+0x8], esi
	jae _Z15R_SortDrawSurfsP11GfxDrawSurfi_130
	mov eax, esi
	jmp _Z15R_SortDrawSurfsP11GfxDrawSurfi_210
_Z15R_SortDrawSurfsP11GfxDrawSurfi_10:
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;R_GetCodeMeshArgs(unsigned int)
_Z17R_GetCodeMeshArgsj:
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
_Z18R_EndCodeMeshVertsv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, frontEndDataOut
	mov eax, [eax]
	add eax, 0xb0000
	mov [esp], eax
	call _Z14R_EndMeshVertsP11GfxMeshData
	leave
	ret


;R_EndMarkMeshVerts()
_Z18R_EndMarkMeshVertsv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, frontEndDataOut
	mov eax, [eax]
	add eax, 0x11e670
	mov [esp], eax
	call _Z14R_EndMeshVertsP11GfxMeshData
	leave
	ret


;R_GetCodeMeshVerts(unsigned short)
_Z18R_GetCodeMeshVertst:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	movzx eax, word [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, frontEndDataOut
	mov eax, [eax]
	add eax, 0xb0000
	mov [esp], eax
	call _Z14R_GetMeshVertsP11GfxMeshDatat
	leave
	ret


;R_GetMarkMeshVerts(unsigned short)
_Z18R_GetMarkMeshVertst:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	movzx eax, word [ebp+0x8]
	mov [esp+0x4], eax
	mov eax, frontEndDataOut
	mov eax, [eax]
	add eax, 0x11e670
	mov [esp], eax
	call _Z14R_GetMeshVertsP11GfxMeshDatat
	leave
	ret


;R_SortWorldSurfaces()
_Z19R_SortWorldSurfacesv:
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
	jnz _Z19R_SortWorldSurfacesv_10
_Z19R_SortWorldSurfacesv_110:
	mov edx, [ebp-0x28]
	mov eax, [edx+0x20a0]
	mov ecx, [eax+0xdc]
	test ecx, ecx
	jz _Z19R_SortWorldSurfacesv_20
	xor ecx, ecx
	xor edx, edx
_Z19R_SortWorldSurfacesv_30:
	mov eax, [eax+0x23c]
	mov word [eax+edx], 0x0
	add ecx, 0x1
	mov ebx, [ebp-0x28]
	mov eax, [ebx+0x20a0]
	add edx, 0xc
	cmp ecx, [eax+0xdc]
	jb _Z19R_SortWorldSurfacesv_30
	mov esi, ebx
_Z19R_SortWorldSurfacesv_70:
	mov edx, [esi+0x20a0]
	mov eax, [edx+0x154]
	cmp word [eax+0x30], 0x0
	jz _Z19R_SortWorldSurfacesv_40
	xor esi, esi
	xor ebx, ebx
	mov edi, rgp
	jmp _Z19R_SortWorldSurfacesv_50
_Z19R_SortWorldSurfacesv_60:
	mov ecx, [ebp-0x28]
	add esi, 0x1
	mov edx, [ecx+0x20a0]
	add ebx, 0x30
	mov eax, [edx+0x154]
	movzx eax, word [eax+0x30]
	cmp esi, eax
	jae _Z19R_SortWorldSurfacesv_40
_Z19R_SortWorldSurfacesv_50:
	mov eax, [edx+0x2a0]
	test byte [eax+esi*8+0x3], 0x1f
	jz _Z19R_SortWorldSurfacesv_60
	mov eax, _Z32R_AddShadowSurfaceToPrimaryLightP8GfxWorldjj
	mov [esp+0xc], eax
	mov [esp+0x8], esi
	mov eax, ebx
	add eax, [edx+0x294]
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z37R_ForEachPrimaryLightAffectingSurfaceP8GfxWorldPK10GfxSurfacejPFvS0_jjE
	mov [ebp-0x28], edi
	mov ecx, edi
	add esi, 0x1
	mov edx, [ecx+0x20a0]
	add ebx, 0x30
	mov eax, [edx+0x154]
	movzx eax, word [eax+0x30]
	cmp esi, eax
	jb _Z19R_SortWorldSurfacesv_50
_Z19R_SortWorldSurfacesv_40:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19R_SortWorldSurfacesv_20:
	mov esi, edx
	jmp _Z19R_SortWorldSurfacesv_70
_Z19R_SortWorldSurfacesv_10:
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
	jmp _Z19R_SortWorldSurfacesv_80
_Z19R_SortWorldSurfacesv_100:
	mov ebx, [ebp-0x1c]
_Z19R_SortWorldSurfacesv_80:
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
	jz _Z19R_SortWorldSurfacesv_90
	mov eax, [ebp-0x1c]
	test byte [eax+0x17], 0x1
	jz _Z19R_SortWorldSurfacesv_90
	mov eax, [edx+0x20a0]
	mov edx, esi
	shr edx, 0x5
	mov eax, [eax+0x2a4]
	mov ecx, esi
	and ecx, 0x1f
	mov ebx, 0x1
	shl ebx, cl
	or [eax+edx*4], ebx
_Z19R_SortWorldSurfacesv_90:
	add dword [ebp-0x20], 0x1
	add dword [ebp-0x1c], 0x30
	mov esi, [ebp-0x20]
	cmp [ebp-0x24], esi
	ja _Z19R_SortWorldSurfacesv_100
	jmp _Z19R_SortWorldSurfacesv_110


;R_BeginCodeMeshVerts()
_Z20R_BeginCodeMeshVertsv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, frontEndDataOut
	mov eax, [eax]
	add eax, 0xb0000
	mov [esp], eax
	call _Z16R_BeginMeshVertsP11GfxMeshData
	leave
	ret


;R_BeginMarkMeshVerts()
_Z20R_BeginMarkMeshVertsv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, frontEndDataOut
	mov eax, [eax]
	add eax, 0x11e670
	mov [esp], eax
	call _Z16R_BeginMeshVertsP11GfxMeshData
	leave
	ret


;R_AddCodeMeshDrawSurf(Material*, r_double_index_t*, unsigned int, unsigned int, unsigned int, char const*)
_Z21R_AddCodeMeshDrawSurfP8MaterialP16r_double_index_tjjjPKc:
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
	jz _Z21R_AddCodeMeshDrawSurfP8MaterialP16r_double_index_tjjjPKc_10
	test byte [ebx+0x4], 0x2
	jz _Z21R_AddCodeMeshDrawSurfP8MaterialP16r_double_index_tjjjPKc_20
_Z21R_AddCodeMeshDrawSurfP8MaterialP16r_double_index_tjjjPKc_10:
	mov eax, r_fullbright
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z21R_AddCodeMeshDrawSurfP8MaterialP16r_double_index_tjjjPKc_30
_Z21R_AddCodeMeshDrawSurfP8MaterialP16r_double_index_tjjjPKc_60:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21R_AddCodeMeshDrawSurfP8MaterialP16r_double_index_tjjjPKc_30:
	mov eax, [ebx]
	mov [ebp+0x10], ecx
	mov [ebp+0xc], eax
	mov dword [ebp+0x8], 0x11
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z18R_WarnOncePerFrame14GfxWarningTypez
_Z21R_AddCodeMeshDrawSurfP8MaterialP16r_double_index_tjjjPKc_20:
	mov edx, frontEndDataOut
	mov eax, [edx]
	add eax, 0x118664
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call iInterlockedExchangeAdd
	mov [ebp-0x20], eax
	cmp eax, 0x7ff
	ja _Z21R_AddCodeMeshDrawSurfP8MaterialP16r_double_index_tjjjPKc_40
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
	call iInterlockedIncrement
	lea edx, [eax-0x1]
	lea eax, [edi+esi+0xe4080]
	mov eax, [eax]
	cmp edx, eax
	jge _Z21R_AddCodeMeshDrawSurfP8MaterialP16r_double_index_tjjjPKc_50
	lea eax, [edi+esi+0xe4190]
	mov eax, [eax]
	lea ecx, [eax+edx*8]
	test ecx, ecx
	jz _Z21R_AddCodeMeshDrawSurfP8MaterialP16r_double_index_tjjjPKc_60
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
_Z21R_AddCodeMeshDrawSurfP8MaterialP16r_double_index_tjjjPKc_40:
	mov dword [ebp+0x8], 0xd
_Z21R_AddCodeMeshDrawSurfP8MaterialP16r_double_index_tjjjPKc_70:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z18R_WarnOncePerFrame14GfxWarningTypez
_Z21R_AddCodeMeshDrawSurfP8MaterialP16r_double_index_tjjjPKc_50:
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call iInterlockedDecrement
	mov dword [ebp+0x8], 0x10
	jmp _Z21R_AddCodeMeshDrawSurfP8MaterialP16r_double_index_tjjjPKc_70


;R_AddMarkMeshDrawSurf(Material*, GfxMarkContext const*, unsigned short*, unsigned int)
_Z21R_AddMarkMeshDrawSurfP8MaterialPK14GfxMarkContextPtj:
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
	jz _Z21R_AddMarkMeshDrawSurfP8MaterialPK14GfxMarkContextPtj_10
	mov ebx, frontEndDataOut
	mov eax, [ebx]
	add eax, 0x11866c
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call iInterlockedExchangeAdd
	mov [ebp-0x1c], eax
	cmp eax, 0x5ff
	ja _Z21R_AddMarkMeshDrawSurfP8MaterialPK14GfxMarkContextPtj_20
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
	call iInterlockedIncrement
	lea edx, [eax-0x1]
	lea eax, [esi+ebx+0xe4080]
	mov eax, [eax]
	cmp edx, eax
	jge _Z21R_AddMarkMeshDrawSurfP8MaterialPK14GfxMarkContextPtj_30
	lea eax, [esi+ebx+0xe4190]
	mov eax, [eax]
	lea ecx, [eax+edx*8]
	test ecx, ecx
	jz _Z21R_AddMarkMeshDrawSurfP8MaterialPK14GfxMarkContextPtj_40
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
_Z21R_AddMarkMeshDrawSurfP8MaterialPK14GfxMarkContextPtj_40:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z21R_AddMarkMeshDrawSurfP8MaterialPK14GfxMarkContextPtj_20:
	mov dword [ebp+0x8], 0xe
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z18R_WarnOncePerFrame14GfxWarningTypez
_Z21R_AddMarkMeshDrawSurfP8MaterialPK14GfxMarkContextPtj_30:
	mov [esp], edi
	call iInterlockedDecrement
	mov dword [ebp+0x8], 0x10
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z18R_WarnOncePerFrame14GfxWarningTypez
_Z21R_AddMarkMeshDrawSurfP8MaterialPK14GfxMarkContextPtj_10:
	mov dword [ebp+0x8], 0x12
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _Z18R_WarnOncePerFrame14GfxWarningTypez
	add [eax], al


;R_ReserveCodeMeshArgs(int, unsigned int*)
_Z21R_ReserveCodeMeshArgsiPj:
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
	jbe _Z21R_ReserveCodeMeshArgsiPj_10
	mov dword [esp], 0x1c
	call _Z18R_WarnOncePerFrame14GfxWarningTypez
	xor eax, eax
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z21R_ReserveCodeMeshArgsiPj_10:
	mov ebx, [ebp+0xc]
	mov [ebx], eax
	mov eax, [ecx]
	add eax, 0x118668
	mov [esp+0x4], edx
	mov [esp], eax
	call iInterlockedExchange
	mov eax, 0x1
	add esp, 0x14
	pop ebx
	pop ebp
	ret
	nop


;R_ReserveCodeMeshVerts(int, unsigned short*)
_Z22R_ReserveCodeMeshVertsiPt:
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
	call _Z18R_ReserveMeshVertsP11GfxMeshDataiPt
	test al, al
	jz _Z22R_ReserveCodeMeshVertsiPt_10
	mov eax, 0x1
	leave
	ret
_Z22R_ReserveCodeMeshVertsiPt_10:
	mov dword [esp], 0x1b
	call _Z18R_WarnOncePerFrame14GfxWarningTypez
	xor eax, eax
	leave
	ret
	nop


;R_ReserveMarkMeshVerts(int, unsigned short*)
_Z22R_ReserveMarkMeshVertsiPt:
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
	call _Z18R_ReserveMeshVertsP11GfxMeshDataiPt
	test al, al
	jz _Z22R_ReserveMarkMeshVertsiPt_10
	mov eax, 0x1
	leave
	ret
_Z22R_ReserveMarkMeshVertsiPt_10:
	mov dword [esp], 0x1e
	call _Z18R_WarnOncePerFrame14GfxWarningTypez
	xor eax, eax
	leave
	ret
	nop


;R_ReverseSortDrawSurfs(GfxDrawSurf*, int)
_Z22R_ReverseSortDrawSurfsP11GfxDrawSurfi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x12c
	mov eax, [ebp+0xc]
	cmp eax, 0x1
	jle _Z22R_ReverseSortDrawSurfsP11GfxDrawSurfi_10
	mov edx, [ebp+0x8]
	lea eax, [edx+eax*8-0x8]
	mov [ebp-0x114], eax
	mov dword [ebp-0x124], 0x0
_Z22R_ReverseSortDrawSurfsP11GfxDrawSurfi_210:
	sub eax, [ebp+0x8]
	sar eax, 0x3
	add eax, 0x1
	cmp eax, 0x8
	jle _Z22R_ReverseSortDrawSurfsP11GfxDrawSurfi_20
_Z22R_ReverseSortDrawSurfsP11GfxDrawSurfi_140:
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
_Z22R_ReverseSortDrawSurfsP11GfxDrawSurfi_80:
	add dword [ebp-0x110], 0x8
	mov edx, [ebp-0x110]
	cmp [ebp-0x114], edx
	jae _Z22R_ReverseSortDrawSurfsP11GfxDrawSurfi_30
_Z22R_ReverseSortDrawSurfsP11GfxDrawSurfi_60:
	sub dword [ebp-0x128], 0x8
	mov eax, [ebp-0x128]
	cmp [ebp+0x8], eax
	jae _Z22R_ReverseSortDrawSurfsP11GfxDrawSurfi_40
_Z22R_ReverseSortDrawSurfsP11GfxDrawSurfi_90:
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
	ja _Z22R_ReverseSortDrawSurfsP11GfxDrawSurfi_50
	jb _Z22R_ReverseSortDrawSurfsP11GfxDrawSurfi_60
	cmp [ebp-0x130], esi
	jbe _Z22R_ReverseSortDrawSurfsP11GfxDrawSurfi_60
_Z22R_ReverseSortDrawSurfsP11GfxDrawSurfi_50:
	mov eax, [ebp-0x110]
	cmp [ebp-0x128], eax
	jb _Z22R_ReverseSortDrawSurfsP11GfxDrawSurfi_70
_Z22R_ReverseSortDrawSurfsP11GfxDrawSurfi_100:
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
	jb _Z22R_ReverseSortDrawSurfsP11GfxDrawSurfi_60
_Z22R_ReverseSortDrawSurfsP11GfxDrawSurfi_30:
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
	ja _Z22R_ReverseSortDrawSurfsP11GfxDrawSurfi_80
	jb _Z22R_ReverseSortDrawSurfsP11GfxDrawSurfi_60
	cmp [ebp-0x130], eax
	jae _Z22R_ReverseSortDrawSurfsP11GfxDrawSurfi_80
	sub dword [ebp-0x128], 0x8
	mov eax, [ebp-0x128]
	cmp [ebp+0x8], eax
	jb _Z22R_ReverseSortDrawSurfsP11GfxDrawSurfi_90
_Z22R_ReverseSortDrawSurfsP11GfxDrawSurfi_40:
	mov esi, [eax]
	mov edi, [eax+0x4]
	mov eax, [ebp-0x110]
	cmp [ebp-0x128], eax
	jae _Z22R_ReverseSortDrawSurfsP11GfxDrawSurfi_100
_Z22R_ReverseSortDrawSurfsP11GfxDrawSurfi_70:
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
	jl _Z22R_ReverseSortDrawSurfsP11GfxDrawSurfi_110
	cmp ecx, esi
	ja _Z22R_ReverseSortDrawSurfsP11GfxDrawSurfi_120
	mov edi, [ebp-0x124]
	mov [ebp+edi*4-0x90], ecx
	mov eax, esi
	sub eax, 0x8
	mov [ebp+edi*4-0x108], eax
	add edi, 0x1
	mov [ebp-0x124], edi
_Z22R_ReverseSortDrawSurfsP11GfxDrawSurfi_120:
	mov eax, [ebp-0x110]
	cmp [ebp-0x114], eax
	jbe _Z22R_ReverseSortDrawSurfsP11GfxDrawSurfi_130
	mov [ebp+0x8], eax
	mov eax, [ebp-0x114]
	sub eax, [ebp+0x8]
	sar eax, 0x3
	add eax, 0x1
	cmp eax, 0x8
	jg _Z22R_ReverseSortDrawSurfsP11GfxDrawSurfi_140
_Z22R_ReverseSortDrawSurfsP11GfxDrawSurfi_20:
	mov ecx, [ebp-0x114]
	cmp [ebp+0x8], ecx
	jae _Z22R_ReverseSortDrawSurfsP11GfxDrawSurfi_130
	mov esi, [ebp+0x8]
	add esi, 0x8
	mov [ebp-0x10c], esi
	jmp _Z22R_ReverseSortDrawSurfsP11GfxDrawSurfi_150
_Z22R_ReverseSortDrawSurfsP11GfxDrawSurfi_160:
	mov edi, [ebp+0x8]
_Z22R_ReverseSortDrawSurfsP11GfxDrawSurfi_200:
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
	jae _Z22R_ReverseSortDrawSurfsP11GfxDrawSurfi_130
_Z22R_ReverseSortDrawSurfsP11GfxDrawSurfi_150:
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
	jb _Z22R_ReverseSortDrawSurfsP11GfxDrawSurfi_160
	mov edi, [ebp+0x8]
_Z22R_ReverseSortDrawSurfsP11GfxDrawSurfi_190:
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
	ja _Z22R_ReverseSortDrawSurfsP11GfxDrawSurfi_170
	jb _Z22R_ReverseSortDrawSurfsP11GfxDrawSurfi_180
	cmp [ebp-0x120], ecx
	jae _Z22R_ReverseSortDrawSurfsP11GfxDrawSurfi_170
_Z22R_ReverseSortDrawSurfsP11GfxDrawSurfi_180:
	mov edi, esi
	mov [ebp-0x120], ecx
	mov [ebp-0x11c], ebx
_Z22R_ReverseSortDrawSurfsP11GfxDrawSurfi_170:
	add esi, 0x8
	cmp [ebp-0x114], esi
	jae _Z22R_ReverseSortDrawSurfsP11GfxDrawSurfi_190
	jmp _Z22R_ReverseSortDrawSurfsP11GfxDrawSurfi_200
_Z22R_ReverseSortDrawSurfsP11GfxDrawSurfi_130:
	sub dword [ebp-0x124], 0x1
	js _Z22R_ReverseSortDrawSurfsP11GfxDrawSurfi_10
	mov eax, [ebp-0x124]
	mov eax, [ebp+eax*4-0x90]
	mov [ebp+0x8], eax
	mov edx, [ebp-0x124]
	mov edx, [ebp+edx*4-0x108]
	mov [ebp-0x114], edx
	mov eax, edx
	jmp _Z22R_ReverseSortDrawSurfsP11GfxDrawSurfi_210
_Z22R_ReverseSortDrawSurfsP11GfxDrawSurfi_110:
	mov edx, [ebp-0x110]
	cmp [ebp-0x114], edx
	jbe _Z22R_ReverseSortDrawSurfsP11GfxDrawSurfi_220
	mov ecx, [ebp-0x124]
	mov [ebp+ecx*4-0x90], edx
	mov esi, [ebp-0x114]
	mov [ebp+ecx*4-0x108], esi
	add ecx, 0x1
	mov [ebp-0x124], ecx
_Z22R_ReverseSortDrawSurfsP11GfxDrawSurfi_220:
	mov edi, [ebp-0x128]
	sub edi, 0x8
	mov [ebp-0x114], edi
	cmp [ebp+0x8], edi
	jae _Z22R_ReverseSortDrawSurfsP11GfxDrawSurfi_130
	mov eax, edi
	jmp _Z22R_ReverseSortDrawSurfsP11GfxDrawSurfi_210
_Z22R_ReverseSortDrawSurfsP11GfxDrawSurfi_10:
	add esp, 0x12c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;R_ReserveCodeMeshIndices(int, r_double_index_t**)
_Z24R_ReserveCodeMeshIndicesiPP16r_double_index_t:
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
	call _Z20R_ReserveMeshIndicesP11GfxMeshDataiPP16r_double_index_th
	test al, al
	jz _Z24R_ReserveCodeMeshIndicesiPP16r_double_index_t_10
	mov eax, 0x1
	leave
	ret
_Z24R_ReserveCodeMeshIndicesiPP16r_double_index_t_10:
	mov dword [esp], 0x1a
	call _Z18R_WarnOncePerFrame14GfxWarningTypez
	xor eax, eax
	leave
	ret
	nop


;R_ReserveMarkMeshIndices(int, r_double_index_t**)
_Z24R_ReserveMarkMeshIndicesiPP16r_double_index_t:
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
	call _Z20R_ReserveMeshIndicesP11GfxMeshDataiPP16r_double_index_th
	test al, al
	jz _Z24R_ReserveMarkMeshIndicesiPP16r_double_index_t_10
	mov eax, 0x1
	leave
	ret
_Z24R_ReserveMarkMeshIndicesiPP16r_double_index_t_10:
	mov dword [esp], 0x1d
	call _Z18R_WarnOncePerFrame14GfxWarningTypez
	xor eax, eax
	leave
	ret
	nop


;R_AddParticleCloudDrawSurf(unsigned int, Material*)
_Z26R_AddParticleCloudDrawSurfjP8Material:
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
	jz _Z26R_AddParticleCloudDrawSurfjP8Material_10
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
	call iInterlockedIncrement
	lea edx, [eax-0x1]
	lea eax, [esi+ebx+0xe4080]
	mov eax, [eax]
	cmp edx, eax
	jge _Z26R_AddParticleCloudDrawSurfjP8Material_20
	lea eax, [esi+ebx+0xe4190]
	mov eax, [eax]
	lea ecx, [eax+edx*8]
	test ecx, ecx
	jz _Z26R_AddParticleCloudDrawSurfjP8Material_30
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
_Z26R_AddParticleCloudDrawSurfjP8Material_40:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26R_AddParticleCloudDrawSurfjP8Material_20:
	mov [esp], edi
	call iInterlockedDecrement
	mov dword [esp], 0x10
	call _Z18R_WarnOncePerFrame14GfxWarningTypez
_Z26R_AddParticleCloudDrawSurfjP8Material_30:
	xor eax, eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26R_AddParticleCloudDrawSurfjP8Material_10:
	mov ebx, [ebp+0xc]
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov dword [esp], 0x11
	call _Z18R_WarnOncePerFrame14GfxWarningTypez
	xor eax, eax
	jmp _Z26R_AddParticleCloudDrawSurfjP8Material_40


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

