;Imports of r_model_lighting:
	extern rgp
	extern R_GetNonSunPrimaryLightForBox
	extern R_GetNonSunPrimaryLightForSphere
	extern r_cacheModelLighting
	extern R_CalcReflectionProbeIndex
	extern PIXBeginNamedEvent
	extern R_GetLightingAtPoint
	extern R_WarnOncePerFrame
	extern Com_Memset
	extern Cvar_VariableBooleanValue
	extern R_SetLightGridSampleDeltas
	extern g_keepZ
	extern dx_ctx
	extern R_ApplyLightGridColorsPatch
	extern Image_AllocProg
	extern Image_SetupAndLoad
	extern R_UncacheStaticModel
	extern gfxCfg
	extern Z_VirtualAllocInternal
	extern frontEndDataOut
	extern InterlockedExchangeAdd
	extern Com_Error
	extern Image_Release
	extern Z_VirtualFreeInternal

;Exports of r_model_lighting:
	global smodelLightGlob
	global modelLightGlob
	global s_modelLightingSampleDelta
	global R_DynEntPrimaryLightCallback
	global R_GetPrimaryLightForBoxCallback
	global R_GetPrimaryLightForSphereCallback
	global R_AllocModelLighting
	global R_ResetModelLighting
	global RB_PatchModelLighting
	global R_AllocModelLighting_Box
	global R_InitModelLightingImage
	global R_InitStaticModelLighting
	global R_AllocStaticModelLighting
	global R_InitModelLightingGlobals
	global R_ToggleModelLightingFrame
	global R_AllocModelLighting_Sphere
	global R_SetAllStaticModelLighting
	global R_SetupDynamicModelLighting
	global R_ShutdownModelLightingImage
	global R_BeginAllStaticModelLighting
	global R_ShutdownModelLightingGlobals
	global R_SetupCachedStaticModelLighting
	global R_AllocModelLighting_PrimaryLight
	global R_SetModelLightingCoordsForSource
	global R_GetPackedStaticModelLightingCoords
	global R_SetStaticModelLightingCoordsForSource


SECTION .text


;R_DynEntPrimaryLightCallback(void const*)
R_DynEntPrimaryLightCallback:
	push ebp
	mov ebp, esp
	mov eax, rgp
	mov eax, [eax+0x20a0]
	mov edx, [eax+0x238]
	mov eax, [ebp+0x8]
	mov eax, [eax]
	movzx eax, byte [edx+eax]
	pop ebp
	ret
	nop


;R_GetPrimaryLightForBoxCallback(void const*)
R_GetPrimaryLightForBoxCallback:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [ebp+0x8]
	lea eax, [edx+0x10]
	mov [esp+0x8], eax
	lea eax, [edx+0x4]
	mov [esp+0x4], eax
	mov eax, [edx]
	mov [esp], eax
	call R_GetNonSunPrimaryLightForBox
	leave
	ret
	nop


;R_GetPrimaryLightForSphereCallback(void const*)
R_GetPrimaryLightForSphereCallback:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [ebp+0x8]
	mov eax, [edx+0x10]
	mov [esp+0x8], eax
	lea eax, [edx+0x4]
	mov [esp+0x4], eax
	mov eax, [edx]
	mov [esp], eax
	call R_GetNonSunPrimaryLightForSphere
	leave
	ret
	nop


;R_AllocModelLighting(float const*, unsigned short*, unsigned int (*)(void const*), void const*, GfxLightingInfo*)
R_AllocModelLighting:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov [ebp-0x34], eax
	mov [ebp-0x38], edx
	mov [ebp-0x3c], ecx
	movzx edx, word [edx]
	test dx, dx
	jz R_AllocModelLighting_10
	mov eax, r_cacheModelLighting
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jnz R_AllocModelLighting_20
R_AllocModelLighting_10:
	mov eax, [modelLightGlob+0x34]
	test eax, eax
	jnz R_AllocModelLighting_30
	mov esi, [modelLightGlob+0x5c]
	mov [ebp-0x24], esi
	mov eax, [modelLightGlob+0x50]
	mov [ebp-0x40], eax
	mov edx, [modelLightGlob+0x4c]
	mov [ebp-0x30], edx
	mov ecx, [modelLightGlob+0x48]
	mov [ebp-0x2c], ecx
	mov esi, [modelLightGlob+0x58]
	mov [ebp-0x28], esi
	mov ebx, [ebp-0x24]
	mov edx, eax
	jmp R_AllocModelLighting_40
R_AllocModelLighting_100:
	mov ecx, 0x10
	mov dword [ebp-0x20], 0x10
	mov edx, eax
	shl edx, cl
	test edx, 0xff000000
	jnz R_AllocModelLighting_50
R_AllocModelLighting_110:
	mov edi, 0x8
	mov eax, 0x8
	add eax, [ebp-0x20]
	mov [ebp-0x4c], eax
	mov ecx, edi
	shl edx, cl
	test edx, 0xf0000000
	jnz R_AllocModelLighting_60
R_AllocModelLighting_120:
	mov edi, 0x4
	mov eax, 0x4
	add eax, [ebp-0x4c]
	mov [ebp-0x4c], eax
	mov ecx, edi
	shl edx, cl
	test edx, 0xc0000000
	jnz R_AllocModelLighting_70
R_AllocModelLighting_130:
	mov edi, 0x2
	mov eax, 0x2
	add eax, [ebp-0x4c]
	mov ecx, edi
	shl edx, cl
	mov ecx, edx
	not ecx
	shr ecx, 0x1f
	add eax, ecx
	shl edx, cl
	not edx
	shr edx, 0x1f
	lea ecx, [eax+edx]
	cmp ecx, 0x1f
	jbe R_AllocModelLighting_80
R_AllocModelLighting_140:
	lea eax, [ebx+0x1]
	xor edx, edx
	div dword [ebp-0x28]
	mov ebx, edx
	cmp [ebp-0x24], edx
	jz R_AllocModelLighting_90
	mov edx, [ebp-0x40]
R_AllocModelLighting_40:
	lea esi, [ebx*4]
	mov eax, [edx+esi]
	mov ecx, [ebp-0x30]
	and eax, [esi+ecx]
	mov edx, [ebp-0x2c]
	and eax, [esi+edx]
	test eax, 0xffff0000
	jz R_AllocModelLighting_100
	xor ecx, ecx
	mov dword [ebp-0x20], 0x0
	mov edx, eax
	shl edx, cl
	test edx, 0xff000000
	jz R_AllocModelLighting_110
R_AllocModelLighting_50:
	xor edi, edi
	xor eax, eax
	add eax, [ebp-0x20]
	mov [ebp-0x4c], eax
	mov ecx, edi
	shl edx, cl
	test edx, 0xf0000000
	jz R_AllocModelLighting_120
R_AllocModelLighting_60:
	xor edi, edi
	xor eax, eax
	add eax, [ebp-0x4c]
	mov [ebp-0x4c], eax
	mov ecx, edi
	shl edx, cl
	test edx, 0xc0000000
	jz R_AllocModelLighting_130
R_AllocModelLighting_70:
	xor edi, edi
	xor eax, eax
	add eax, [ebp-0x4c]
	mov ecx, edi
	shl edx, cl
	mov ecx, edx
	not ecx
	shr ecx, 0x1f
	add eax, ecx
	shl edx, cl
	not edx
	shr edx, 0x1f
	lea ecx, [eax+edx]
	cmp ecx, 0x1f
	ja R_AllocModelLighting_140
R_AllocModelLighting_80:
	mov [modelLightGlob+0x5c], ebx
	mov eax, 0x80000000
	shr eax, cl
	not eax
	mov edx, [ebp-0x40]
	and [esi+edx], eax
	shl ebx, 0x5
	lea edi, [ecx+ebx]
	mov ebx, edi
	add ebx, [modelLightGlob+0x4]
	lea ecx, [ebx+0x1]
	movzx ecx, cx
	mov [ebp-0x1a], cx
	lea edx, [edi+edi*2]
	mov eax, [modelLightGlob+0x30]
	lea edx, [eax+edx*4]
	mov esi, [ebp-0x34]
	mov eax, [esi]
	mov [edx], eax
	mov eax, [esi+0x4]
	mov [edx+0x4], eax
	mov eax, [esi+0x8]
	mov [edx+0x8], eax
	mov eax, [ebp-0x38]
	mov [eax], cx
	mov [esp], esi
	call R_CalcReflectionProbeIndex
	mov edx, [ebp+0xc]
	mov [edx+0x1], al
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call dword [ebp-0x3c]
	mov esi, eax
	mov dword [esp+0x4], _cstring_model_lighting
	mov dword [esp], 0xffffffff
	call PIXBeginNamedEvent
	mov dword [esp+0x10], 0x1
	movzx ebx, bx
	mov [esp+0xc], ebx
	mov [esp+0x8], esi
	mov esi, [ebp-0x34]
	mov [esp+0x4], esi
	mov eax, rgp
	mov eax, [eax+0x20a0]
	add eax, 0x110
	mov [esp], eax
	call R_GetLightingAtPoint
	mov edx, [ebp+0xc]
	mov [edx], al
	mov ecx, [ebp+0xc]
	movzx edx, word [ecx]
	mov eax, [modelLightGlob+0x2c]
	mov [eax+edi*2], dx
	movzx eax, word [ebp-0x1a]
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_AllocModelLighting_90:
	mov dword [modelLightGlob+0x34], 0x1
	mov dword [esp], 0x3
	call R_WarnOncePerFrame
R_AllocModelLighting_30:
	xor eax, eax
R_AllocModelLighting_150:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_AllocModelLighting_20:
	movzx edi, dx
	lea esi, [edi-0x1]
	sub esi, [modelLightGlob+0x4]
	lea eax, [esi+esi*2]
	mov edx, [modelLightGlob+0x30]
	lea eax, [edx+eax*4]
	mov edx, [ebp-0x34]
	movss xmm0, dword [edx]
	ucomiss xmm0, [eax]
	jnz R_AllocModelLighting_10
	jp R_AllocModelLighting_10
	movss xmm0, dword [edx+0x4]
	ucomiss xmm0, [eax+0x4]
	jnz R_AllocModelLighting_10
	jp R_AllocModelLighting_10
	movss xmm0, dword [edx+0x8]
	ucomiss xmm0, [eax+0x8]
	jnz R_AllocModelLighting_10
	jp R_AllocModelLighting_10
	mov ebx, esi
	shr ebx, 0x5
	mov edx, [modelLightGlob+0x50]
	mov ecx, esi
	and ecx, 0x1f
	mov eax, 0x80000000
	shr eax, cl
	not eax
	and [edx+ebx*4], eax
	mov eax, [modelLightGlob+0x2c]
	movzx eax, word [eax+esi*2]
	mov ecx, [ebp+0xc]
	mov [ecx], ax
	mov eax, edi
	jmp R_AllocModelLighting_150


;R_ResetModelLighting()
R_ResetModelLighting:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, modelLightGlob
R_ResetModelLighting_10:
	mov eax, [modelLightGlob+0x54]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xff
	mov eax, [ebx+0x38]
	mov [esp], eax
	call Com_Memset
	add ebx, 0x4
	cmp ebx, modelLightGlob+0x10
	jnz R_ResetModelLighting_10
	mov ebx, [modelLightGlob+0x28]
	test ebx, ebx
	jnz R_ResetModelLighting_20
R_ResetModelLighting_60:
	mov ecx, [smodelLightGlob+0xa004]
	test ecx, ecx
	jz R_ResetModelLighting_30
	xor esi, esi
	mov ebx, smodelLightGlob
	mov edi, rgp
R_ResetModelLighting_40:
	mov eax, [edi+0x20a0]
	movzx edx, word [ebx+0x4000]
	mov ecx, [eax+0x29c]
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	mov word [ecx+eax*4+0x46], 0x0
	add esi, 0x1
	add ebx, 0x2
	cmp esi, [smodelLightGlob+0xa004]
	jb R_ResetModelLighting_40
R_ResetModelLighting_30:
	mov dword [smodelLightGlob+0xa004], 0x0
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_ResetModelLighting_20:
	xor ecx, ecx
	xor edx, edx
R_ResetModelLighting_50:
	mov eax, edx
	add eax, [modelLightGlob+0x30]
	mov dword [eax], 0x7f7fffff
	mov dword [eax+0x4], 0x7f7fffff
	mov dword [eax+0x8], 0x7f7fffff
	add ecx, 0x1
	add edx, 0xc
	cmp ecx, [modelLightGlob+0x28]
	jb R_ResetModelLighting_50
	jmp R_ResetModelLighting_60
	nop


;RB_PatchModelLighting(GfxModelLightingPatch const*, unsigned int)
RB_PatchModelLighting:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov edx, [ebp+0xc]
	test edx, edx
	jnz RB_PatchModelLighting_10
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
RB_PatchModelLighting_10:
	mov dword [esp], _cstring_r_altmodellighti
	call Cvar_VariableBooleanValue
	mov eax, [modelLightGlob+0x20]
	mov [ebp-0x48], eax
	cld
	mov ecx, 0x6
	xor eax, eax
	lea edi, [ebp-0x30]
	rep stosd
	mov dword [ebp-0x20], 0x0
	mov dword [ebp-0x1c], 0x4
	mov edx, [ebp-0x48]
	mov eax, [edx+0x4]
	mov edx, [eax]
	mov dword [esp+0x10], 0x8000
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], modelLightGlob+0x60
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call dword [edx+0x4c]
	mov ecx, [modelLightGlob+0x60]
	mov [ebp-0x40], ecx
	mov ebx, [modelLightGlob+0x64]
	mov [ebp-0x3c], ebx
	mov dword [ebp-0x44], 0x0
	mov dword [ebp-0x50], 0x0
RB_PatchModelLighting_40:
	mov ebx, [ebp-0x44]
	shl ebx, 0x4
	xor edi, edi
	xor esi, esi
RB_PatchModelLighting_30:
	lea edx, [ebx*4+s_modelLightingSampleDelta]
	mov ecx, [ebp-0x50]
	lea eax, [esi+ecx]
	xor ecx, ecx
RB_PatchModelLighting_20:
	mov [edx], eax
	add ecx, 0x1
	add edx, 0x4
	add eax, 0x4
	cmp ecx, 0x4
	jnz RB_PatchModelLighting_20
	add ebx, 0x4
	add edi, 0x1
	add esi, [ebp-0x40]
	cmp edi, 0x4
	jnz RB_PatchModelLighting_30
	add dword [ebp-0x44], 0x1
	mov ebx, [ebp-0x3c]
	add [ebp-0x50], ebx
	cmp dword [ebp-0x44], 0x4
	jnz RB_PatchModelLighting_40
	mov [esp+0x4], ebx
	mov eax, [ebp-0x40]
	mov [esp], eax
	call R_SetLightGridSampleDeltas
	mov edi, [ebp+0x8]
	mov dword [ebp-0x4c], 0x0
RB_PatchModelLighting_70:
	movzx ebx, word [edi]
	mov esi, ebx
	and esi, 0x3f
	lea eax, [esi*4]
	shr ebx, 0x4
	and ebx, 0xfffffffc
	mov [ebp-0x30], eax
	add eax, 0x4
	mov [ebp-0x28], eax
	mov [ebp-0x2c], ebx
	lea eax, [ebx+0x4]
	mov [ebp-0x24], eax
	mov edx, [ebp-0x48]
	mov eax, [edx+0x4]
	mov edx, [eax]
	lea ecx, [ebp-0x30]
	mov [esp+0x4], ecx
	mov [esp], eax
	call dword [edx+0x54]
	shl esi, 0x4
	imul ebx, [modelLightGlob+0x60]
	lea ebx, [esi+ebx]
	add ebx, [modelLightGlob+0x68]
	cmp byte [edi+0x3], 0x0
	jnz RB_PatchModelLighting_50
	mov ecx, s_modelLightingSampleDelta
	mov esi, g_keepZ
RB_PatchModelLighting_60:
	mov edx, [ecx]
	mov eax, [edi+0x4]
	mov [ebx+edx], eax
	add ecx, 0x4
	cmp esi, ecx
	jnz RB_PatchModelLighting_60
	add dword [ebp-0x4c], 0x1
	add edi, 0x28
	mov ebx, [ebp-0x4c]
	cmp [ebp+0xc], ebx
	jnz RB_PatchModelLighting_70
RB_PatchModelLighting_80:
	mov edx, [ebp-0x48]
	mov eax, [edx+0x4]
	mov edx, [eax]
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call dword [edx+0x50]
	mov dword [modelLightGlob+0x68], 0x0
	mov eax, dx_ctx
	mov edx, [eax+0x8]
	mov ecx, [edx]
	mov eax, [modelLightGlob+0x1c]
	mov eax, [eax+0x4]
	mov [esp+0x8], eax
	mov ebx, [ebp-0x48]
	mov eax, [ebx+0x4]
	mov [esp+0x4], eax
	mov [esp], edx
	call dword [ecx+0x7c]
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
RB_PatchModelLighting_50:
	mov [esp+0x4], ebx
	mov [esp], edi
	call R_ApplyLightGridColorsPatch
	add dword [ebp-0x4c], 0x1
	add edi, 0x28
	mov ebx, [ebp-0x4c]
	cmp [ebp+0xc], ebx
	jnz RB_PatchModelLighting_70
	jmp RB_PatchModelLighting_80
	nop


;R_AllocModelLighting_Box(GfxViewInfo const*, float const*, float const*, float const*, unsigned short*, GfxLightingInfo*)
R_AllocModelLighting_Box:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x30
	mov eax, [ebp+0xc]
	mov ebx, [ebp+0x10]
	mov esi, [ebp+0x14]
	mov edx, [ebp+0x18]
	mov ecx, [ebp+0x8]
	mov [ebp-0x24], ecx
	movss xmm2, dword [ebx]
	addss xmm2, [esi]
	movss xmm3, dword [_float_0_50000000]
	mulss xmm2, xmm3
	movss [ebp-0x20], xmm2
	movss xmm1, dword [ebx+0x4]
	addss xmm1, [esi+0x4]
	mulss xmm1, xmm3
	movss [ebp-0x1c], xmm1
	movss xmm0, dword [ebx+0x8]
	addss xmm0, [esi+0x8]
	mulss xmm0, xmm3
	movss [ebp-0x18], xmm0
	subss xmm2, [ebx]
	movss [ebp-0x14], xmm2
	subss xmm1, [ebx+0x4]
	movss [ebp-0x10], xmm1
	subss xmm0, [ebx+0x8]
	movss [ebp-0xc], xmm0
	mov ecx, [ebp+0x1c]
	mov [esp+0x4], ecx
	lea ecx, [ebp-0x24]
	mov [esp], ecx
	mov ecx, R_GetPrimaryLightForBoxCallback
	call R_AllocModelLighting
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret


;R_InitModelLightingImage()
R_InitModelLightingImage:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov dword [esp], _cstring_r_altmodellighti
	call Cvar_VariableBooleanValue
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x4
	mov dword [esp], 0xc
	call Image_AllocProg
	mov [modelLightGlob+0x1c], eax
	mov dword [esp+0x18], _cstring_model_lighting1
	mov dword [esp+0x14], 0x15
	mov dword [esp+0x10], 0x1000a
	mov dword [esp+0xc], 0x4
	mov edx, [modelLightGlob+0x10]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x100
	mov [esp], eax
	call Image_SetupAndLoad
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x4
	mov dword [esp], 0xd
	call Image_AllocProg
	mov [modelLightGlob+0x20], eax
	mov dword [esp+0x18], _cstring_model_lighting1
	mov dword [esp+0x14], 0x15
	mov dword [esp+0x10], 0x4000a
	mov dword [esp+0xc], 0x4
	mov edx, [modelLightGlob+0x10]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x100
	mov [esp], eax
	call Image_SetupAndLoad
	mov eax, [modelLightGlob+0x1c]
	mov [modelLightGlob+0x24], eax
	leave
	ret


;R_InitStaticModelLighting(unsigned int)
R_InitStaticModelLighting:
	push ebp
	mov ebp, esp
	mov dword [smodelLightGlob+0xa004], 0x0
	mov dword [smodelLightGlob+0xa008], 0x0
	pop ebp
	ret
	nop


;R_AllocStaticModelLighting(GfxStaticModelDrawInst const*, unsigned int)
R_AllocStaticModelLighting:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0xc]
	mov edx, [ebp+0x8]
	movzx eax, word [edx+0x46]
	test ax, ax
	jz R_AllocStaticModelLighting_10
	movzx eax, ax
	lea ebx, [eax-0x1]
R_AllocStaticModelLighting_60:
	mov eax, [smodelLightGlob+0xa00c]
	mov [ebx*4+smodelLightGlob+0x6000], eax
	mov eax, 0x1
R_AllocStaticModelLighting_70:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_AllocStaticModelLighting_10:
	mov ebx, [smodelLightGlob+0xa004]
	cmp ebx, [smodelLightGlob+0xa000]
	jb R_AllocStaticModelLighting_20
R_AllocStaticModelLighting_40:
	mov eax, [smodelLightGlob+0xa008]
	test eax, eax
	jz R_AllocStaticModelLighting_30
	sub eax, 0x1
	mov [smodelLightGlob+0xa008], eax
	movzx esi, word [eax+eax+smodelLightGlob]
	movzx eax, si
	lea ebx, [eax-0x1]
	mov eax, [smodelLightGlob+0xa00c]
	cmp eax, [ebx*4+smodelLightGlob+0x6000]
	jz R_AllocStaticModelLighting_40
	movzx edx, word [ebx+ebx+smodelLightGlob+0x4000]
	mov eax, rgp
	mov ecx, [eax+0x20a0]
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	shl eax, 0x2
	add eax, [ecx+0x29c]
	mov word [eax+0x46], 0x0
	mov [esp], edx
	call R_UncacheStaticModel
	jmp R_AllocStaticModelLighting_50
R_AllocStaticModelLighting_20:
	lea eax, [ebx+0x1]
	mov [smodelLightGlob+0xa004], eax
	lea esi, [ebx+0x1]
R_AllocStaticModelLighting_50:
	mov ecx, [ebp+0x8]
	mov [ecx+0x46], si
	mov [ebx+ebx+smodelLightGlob+0x4000], di
	mov edx, edi
	shr edx, 0x5
	and edi, 0x1f
	mov eax, 0x80000000
	mov ecx, edi
	shr eax, cl
	or [edx*4+smodelLightGlob+0x2000], eax
	mov dword [smodelLightGlob+0xa010], 0x1
	jmp R_AllocStaticModelLighting_60
R_AllocStaticModelLighting_30:
	xor eax, eax
	jmp R_AllocStaticModelLighting_70


;R_InitModelLightingGlobals()
R_InitModelLightingGlobals:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov eax, gfxCfg
	mov ebx, [eax]
	shl ebx, 0xa
	mov [modelLightGlob+0x28], ebx
	test ebx, 0xffff0000
	jnz R_InitModelLightingGlobals_10
	mov ecx, 0x10
	mov edi, 0x10
R_InitModelLightingGlobals_120:
	mov edx, ebx
	shl edx, cl
	test edx, 0xff000000
	jnz R_InitModelLightingGlobals_20
	mov esi, 0x8
	mov eax, 0x8
R_InitModelLightingGlobals_110:
	lea edi, [eax+edi]
	mov ecx, esi
	shl edx, cl
	test edx, 0xf0000000
	jnz R_InitModelLightingGlobals_30
	mov esi, 0x4
	mov eax, 0x4
R_InitModelLightingGlobals_100:
	add edi, eax
	mov ecx, esi
	shl edx, cl
	test edx, 0xc0000000
	jnz R_InitModelLightingGlobals_40
	mov esi, 0x2
	mov eax, 0x2
R_InitModelLightingGlobals_90:
	lea eax, [edi+eax]
	mov ecx, esi
	shl edx, cl
	mov ecx, edx
	not ecx
	shr ecx, 0x1f
	add eax, ecx
	shl edx, cl
	not edx
	shr edx, 0x1f
	add eax, edx
	mov ecx, 0x20
	sub ecx, eax
	mov eax, 0x1
	shl eax, cl
	mov edx, eax
	sub edx, ebx
	mov ebx, edx
	mov [smodelLightGlob+0xa000], edx
	cmp edx, 0x7ff
	ja R_InitModelLightingGlobals_50
	mov edx, 0x1
R_InitModelLightingGlobals_60:
	mov eax, edx
	shl eax, cl
	add ebx, eax
	add ecx, 0x1
	cmp ebx, 0x7ff
	jbe R_InitModelLightingGlobals_60
	mov [smodelLightGlob+0xa000], ebx
	mov eax, edx
	shl eax, cl
R_InitModelLightingGlobals_50:
	mov [modelLightGlob+0x8], eax
	lea eax, [ecx-0x6]
	mov [modelLightGlob+0xc], eax
	sub ecx, 0x4
	mov eax, 0x1
	shl eax, cl
	mov [modelLightGlob+0x10], eax
	test eax, eax
	js R_InitModelLightingGlobals_70
	cvtsi2ss xmm1, eax
R_InitModelLightingGlobals_130:
	movss xmm0, dword [_float_1_00000000]
	divss xmm0, xmm1
	movss [modelLightGlob], xmm0
	mov [modelLightGlob+0x4], ebx
	mov eax, [modelLightGlob+0x28]
	mov edx, eax
	shr edx, 0x3
	mov [modelLightGlob+0x54], edx
	mov edx, eax
	shr edx, 0x5
	mov [modelLightGlob+0x58], edx
	lea eax, [eax+eax*2]
	shl eax, 0x2
	mov [esp], eax
	call Z_VirtualAllocInternal
	mov [modelLightGlob+0x30], eax
	mov ebx, modelLightGlob
R_InitModelLightingGlobals_80:
	mov eax, [modelLightGlob+0x54]
	mov [esp], eax
	call Z_VirtualAllocInternal
	mov [ebx+0x38], eax
	add ebx, 0x4
	cmp ebx, modelLightGlob+0x10
	jnz R_InitModelLightingGlobals_80
	mov eax, [modelLightGlob+0x28]
	add eax, eax
	mov [esp], eax
	call Z_VirtualAllocInternal
	mov [modelLightGlob+0x2c], eax
	mov eax, [modelLightGlob+0x1c]
	mov [modelLightGlob+0x24], eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_InitModelLightingGlobals_40:
	xor esi, esi
	xor eax, eax
	jmp R_InitModelLightingGlobals_90
R_InitModelLightingGlobals_30:
	xor esi, esi
	xor eax, eax
	jmp R_InitModelLightingGlobals_100
R_InitModelLightingGlobals_20:
	xor esi, esi
	xor eax, eax
	jmp R_InitModelLightingGlobals_110
R_InitModelLightingGlobals_10:
	xor ecx, ecx
	xor edi, edi
	jmp R_InitModelLightingGlobals_120
R_InitModelLightingGlobals_70:
	mov edx, eax
	shr edx, 1
	and eax, 0x1
	or edx, eax
	cvtsi2ss xmm1, edx
	addss xmm1, xmm1
	jmp R_InitModelLightingGlobals_130
	nop


;R_ToggleModelLightingFrame()
R_ToggleModelLightingFrame:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	add dword [smodelLightGlob+0xa00c], 0x1
	mov edx, [modelLightGlob+0x18]
	add edx, 0x1
	and edx, 0x3
	mov [modelLightGlob+0x18], edx
	mov dword [modelLightGlob+0x34], 0x0
	lea eax, [edx+0x2]
	and eax, 0x3
	mov eax, [eax*4+modelLightGlob+0x38]
	mov [modelLightGlob+0x48], eax
	lea eax, [edx+0x3]
	and eax, 0x3
	mov eax, [eax*4+modelLightGlob+0x38]
	mov [modelLightGlob+0x4c], eax
	mov edx, [edx*4+modelLightGlob+0x38]
	mov [modelLightGlob+0x50], edx
	mov eax, [modelLightGlob+0x54]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xff
	mov [esp], edx
	call Com_Memset
	mov dword [smodelLightGlob+0xa008], 0x0
	mov eax, [smodelLightGlob+0xa004]
	test eax, eax
	jz R_ToggleModelLightingFrame_10
	xor edx, edx
	mov ecx, smodelLightGlob
	mov edi, [smodelLightGlob+0xa00c]
	xor ebx, ebx
	mov esi, [smodelLightGlob+0xa004]
R_ToggleModelLightingFrame_30:
	mov eax, edi
	sub eax, [ecx+0x6000]
	cmp eax, 0x3
	jbe R_ToggleModelLightingFrame_20
	lea eax, [edx+0x1]
	mov [ebx+ebx+smodelLightGlob], ax
	add ebx, 0x1
R_ToggleModelLightingFrame_20:
	add edx, 0x1
	add ecx, 0x4
	cmp esi, edx
	ja R_ToggleModelLightingFrame_30
	mov [smodelLightGlob+0xa008], ebx
R_ToggleModelLightingFrame_10:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;R_AllocModelLighting_Sphere(GfxViewInfo const*, float const*, float const*, float, unsigned short*, GfxLightingInfo*)
R_AllocModelLighting_Sphere:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x34
	mov eax, [ebp+0xc]
	mov ebx, [ebp+0x10]
	mov edx, [ebp+0x18]
	mov ecx, [ebp+0x8]
	mov [ebp-0x1c], ecx
	mov ecx, [ebx]
	mov [ebp-0x18], ecx
	mov ecx, [ebx+0x4]
	mov [ebp-0x14], ecx
	mov ecx, [ebx+0x8]
	mov [ebp-0x10], ecx
	mov ecx, [ebp+0x14]
	mov [ebp-0xc], ecx
	mov ecx, [ebp+0x1c]
	mov [esp+0x4], ecx
	lea ecx, [ebp-0x1c]
	mov [esp], ecx
	mov ecx, R_GetPrimaryLightForSphereCallback
	call R_AllocModelLighting
	add esp, 0x34
	pop ebx
	pop ebp
	ret


;R_SetAllStaticModelLighting()
R_SetAllStaticModelLighting:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov edi, [smodelLightGlob+0xa010]
	test edi, edi
	jz R_SetAllStaticModelLighting_10
	mov dword [smodelLightGlob+0xa010], 0x0
	mov edx, rgp
	mov eax, [edx+0x20a0]
	mov eax, [eax+0x244]
	add eax, 0x1f
	shr eax, 0x5
	mov [ebp-0x40], eax
	jz R_SetAllStaticModelLighting_10
	mov dword [ebp-0x3c], 0x0
	mov dword [ebp-0x2c], smodelLightGlob
	mov [ebp-0x44], edx
R_SetAllStaticModelLighting_140:
	mov eax, [ebp-0x2c]
	mov eax, [eax+0x2000]
	mov [ebp-0x38], eax
	test eax, eax
	jz R_SetAllStaticModelLighting_20
	mov ecx, [ebp-0x3c]
	shl ecx, 0x5
	mov [ebp-0x34], ecx
R_SetAllStaticModelLighting_150:
	test dword [ebp-0x38], 0xffff0000
	jnz R_SetAllStaticModelLighting_30
R_SetAllStaticModelLighting_90:
	mov ecx, 0x10
	mov esi, 0x10
	mov edx, [ebp-0x38]
	shl edx, cl
	test edx, 0xff000000
	jnz R_SetAllStaticModelLighting_40
R_SetAllStaticModelLighting_100:
	mov ebx, 0x8
	mov eax, 0x8
	lea esi, [eax+esi]
	mov ecx, ebx
	shl edx, cl
	test edx, 0xf0000000
	jnz R_SetAllStaticModelLighting_50
R_SetAllStaticModelLighting_110:
	mov ebx, 0x4
	mov eax, 0x4
	add esi, eax
	mov ecx, ebx
	shl edx, cl
	test edx, 0xc0000000
	jnz R_SetAllStaticModelLighting_60
R_SetAllStaticModelLighting_120:
	mov ebx, 0x2
	mov eax, 0x2
	lea eax, [esi+eax]
	mov ecx, ebx
	shl edx, cl
	mov ecx, edx
	not ecx
	shr ecx, 0x1f
	add eax, ecx
	shl edx, cl
	not edx
	shr edx, 0x1f
	lea ecx, [eax+edx]
	cmp ecx, 0x1f
	ja R_SetAllStaticModelLighting_20
R_SetAllStaticModelLighting_130:
	mov eax, 0x80000000
	shr eax, cl
	not eax
	and [ebp-0x38], eax
	mov edx, [ebp-0x34]
	add edx, ecx
	mov eax, [ebp-0x44]
	mov ecx, [eax+0x20a0]
	lea eax, [edx*4]
	mov ebx, edx
	shl ebx, 0x5
	sub ebx, eax
	add ebx, [ecx+0x290]
	movss xmm0, dword [ebx+0xc]
	addss xmm0, [ebx]
	mulss xmm0, [_float_0_50000000]
	movss [ebp-0x24], xmm0
	movss xmm0, dword [ebx+0x10]
	addss xmm0, [ebx+0x4]
	mulss xmm0, [_float_0_50000000]
	movss [ebp-0x20], xmm0
	movss xmm0, dword [ebx+0x14]
	addss xmm0, [ebx+0x8]
	mulss xmm0, [_float_0_50000000]
	movss [ebp-0x1c], xmm0
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	lea edx, [eax*4]
	add edx, [ecx+0x29c]
	movzx eax, word [edx+0x46]
	sub eax, 0x1
	mov [ebp-0x30], eax
	mov esi, [ebx+0x18]
	test esi, esi
	jz R_SetAllStaticModelLighting_70
	mov eax, frontEndDataOut
	mov esi, [eax]
	lea eax, [esi+0x118228]
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call InterlockedExchangeAdd
	mov edi, eax
	cmp eax, 0xfff
	ja R_SetAllStaticModelLighting_80
R_SetAllStaticModelLighting_160:
	lea edx, [edi+edi*4]
	lea edx, [esi+edx*8+0xf0220]
	lea edi, [edx+0x8]
	cld
	mov ecx, 0xa
	xor eax, eax
	rep stosd
	movzx ecx, word [ebp-0x30]
	mov [edx+0x8], cx
	mov eax, [ebx+0x18]
	mov [edx+0xc], eax
	test dword [ebp-0x38], 0xffff0000
	jz R_SetAllStaticModelLighting_90
R_SetAllStaticModelLighting_30:
	xor ecx, ecx
	xor esi, esi
	mov edx, [ebp-0x38]
	shl edx, cl
	test edx, 0xff000000
	jz R_SetAllStaticModelLighting_100
R_SetAllStaticModelLighting_40:
	xor ebx, ebx
	xor eax, eax
	lea esi, [eax+esi]
	mov ecx, ebx
	shl edx, cl
	test edx, 0xf0000000
	jz R_SetAllStaticModelLighting_110
R_SetAllStaticModelLighting_50:
	xor ebx, ebx
	xor eax, eax
	add esi, eax
	mov ecx, ebx
	shl edx, cl
	test edx, 0xc0000000
	jz R_SetAllStaticModelLighting_120
R_SetAllStaticModelLighting_60:
	xor ebx, ebx
	xor eax, eax
	lea eax, [esi+eax]
	mov ecx, ebx
	shl edx, cl
	mov ecx, edx
	not ecx
	shr ecx, 0x1f
	add eax, ecx
	shl edx, cl
	not edx
	shr edx, 0x1f
	lea ecx, [eax+edx]
	cmp ecx, 0x1f
	jbe R_SetAllStaticModelLighting_130
R_SetAllStaticModelLighting_20:
	add dword [ebp-0x3c], 0x1
	add dword [ebp-0x2c], 0x4
	mov ecx, [ebp-0x3c]
	cmp [ebp-0x40], ecx
	jnz R_SetAllStaticModelLighting_140
R_SetAllStaticModelLighting_10:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_SetAllStaticModelLighting_70:
	movzx ebx, byte [edx+0x45]
	mov dword [esp+0x4], _cstring_model_lighting
	mov dword [esp], 0xffffffff
	call PIXBeginNamedEvent
	mov eax, [ebp-0x44]
	mov edx, [eax+0x20a0]
	add edx, 0x110
	mov dword [esp+0x10], 0x0
	movzx eax, word [ebp-0x30]
	mov [esp+0xc], eax
	movzx ebx, bl
	mov [esp+0x8], ebx
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov [esp], edx
	call R_GetLightingAtPoint
	jmp R_SetAllStaticModelLighting_150
R_SetAllStaticModelLighting_80:
	mov dword [esp+0x4], _cstring_modellightingpat
	mov dword [esp], 0x1
	call Com_Error
	jmp R_SetAllStaticModelLighting_160


;R_SetupDynamicModelLighting(GfxCmdBufInput*)
R_SetupDynamicModelLighting:
	push ebp
	mov ebp, esp
	mov edx, [ebp+0x8]
	mov eax, [modelLightGlob+0x24]
	mov [edx+0x3ac], eax
	movss xmm0, dword [_float_1_50000000]
	mulss xmm0, [modelLightGlob]
	lea eax, [edx+0x260]
	mov dword [edx+0x260], 0x3bc00000
	movss [eax+0x4], xmm0
	mov dword [eax+0x8], 0x3ec00000
	mov dword [eax+0xc], 0x0
	pop ebp
	ret


;R_ShutdownModelLightingImage()
R_ShutdownModelLightingImage:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, modelLightGlob
	mov esi, modelLightGlob+0x8
R_ShutdownModelLightingImage_20:
	mov eax, [ebx+0x1c]
	test eax, eax
	jz R_ShutdownModelLightingImage_10
	mov [esp], eax
	call Image_Release
	mov dword [ebx+0x1c], 0x0
R_ShutdownModelLightingImage_10:
	add ebx, 0x4
	cmp esi, ebx
	jnz R_ShutdownModelLightingImage_20
	mov dword [modelLightGlob+0x24], 0x0
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;R_BeginAllStaticModelLighting()
R_BeginAllStaticModelLighting:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, rgp
	mov eax, [eax+0x20a0]
	mov eax, [eax+0x244]
	add eax, 0x1f
	shr eax, 0x5
	shl eax, 0x2
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov dword [esp], smodelLightGlob+0x2000
	call Com_Memset
	leave
	ret


;R_ShutdownModelLightingGlobals()
R_ShutdownModelLightingGlobals:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, modelLightGlob
R_ShutdownModelLightingGlobals_10:
	mov eax, [ebx+0x38]
	mov [esp], eax
	call Z_VirtualFreeInternal
	add ebx, 0x4
	cmp ebx, modelLightGlob+0x10
	jnz R_ShutdownModelLightingGlobals_10
	mov eax, [modelLightGlob+0x30]
	mov [esp], eax
	call Z_VirtualFreeInternal
	mov eax, [modelLightGlob+0x2c]
	mov [esp], eax
	call Z_VirtualFreeInternal
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;R_SetupCachedStaticModelLighting(GfxCmdBufSourceState*)
R_SetupCachedStaticModelLighting:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	lea edx, [eax+0xc10]
	xor ecx, ecx
	mov [eax+0xc10], ecx
	mov [edx+0x4], ecx
	mov dword [edx+0x8], 0x3f000000
	mov dword [edx+0xc], 0x3f800000
	add word [eax+0xea2], 0x1
	pop ebp
	ret
	nop


;R_AllocModelLighting_PrimaryLight(float const*, unsigned int, unsigned short*, GfxLightingInfo*)
R_AllocModelLighting_PrimaryLight:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov edx, [ebp+0x10]
	mov ecx, [ebp+0x14]
	mov [esp+0x4], ecx
	lea ecx, [ebp+0xc]
	mov [esp], ecx
	mov ecx, R_DynEntPrimaryLightCallback
	call R_AllocModelLighting
	leave
	ret
	nop


;R_SetModelLightingCoordsForSource(unsigned short, GfxCmdBufSourceState*)
R_SetModelLightingCoordsForSource:
	push ebp
	mov ebp, esp
	push ebx
	mov ebx, [ebp+0xc]
	lea ecx, [ebx+0xc10]
	movzx edx, word [ebp+0x8]
	sub edx, 0x1
	mov eax, edx
	shr eax, 0x4
	and eax, 0xfffffffc
	cvtsi2ss xmm1, eax
	movss xmm2, dword [_float_2_00000000]
	addss xmm1, xmm2
	mulss xmm1, [modelLightGlob]
	and edx, 0x3f
	mov eax, edx
	shl eax, 0x2
	js R_SetModelLightingCoordsForSource_10
	cvtsi2ss xmm0, eax
R_SetModelLightingCoordsForSource_20:
	addss xmm0, xmm2
	mulss xmm0, [_float_0_00390625]
	movss [ecx], xmm0
	movss [ecx+0x4], xmm1
	mov dword [ecx+0x8], 0x3f000000
	mov dword [ecx+0xc], 0x3f800000
	add word [ebx+0xea2], 0x1
	pop ebx
	pop ebp
	ret
R_SetModelLightingCoordsForSource_10:
	shr eax, 1
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp R_SetModelLightingCoordsForSource_20


;R_GetPackedStaticModelLightingCoords(unsigned int, PackedLightingCoords*)
R_GetPackedStaticModelLightingCoords:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov edx, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov eax, rgp
	mov eax, [eax+0x20a0]
	mov ecx, [eax+0x29c]
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	movzx edx, word [ecx+eax*4+0x46]
	lea esi, [edx-0x1]
	mov eax, esi
	and eax, 0x3f
	lea eax, [eax*4+0x2]
	mov [ebx], al
	shr esi, 0x4
	and esi, 0xfffffffc
	mov eax, 0x100
	xor edx, edx
	div dword [modelLightGlob+0x10]
	lea eax, [esi+eax*2]
	mov [ebx+0x1], al
	mov byte [ebx+0x2], 0x80
	mov byte [ebx+0x3], 0x0
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;R_SetStaticModelLightingCoordsForSource(unsigned int, GfxCmdBufSourceState*)
R_SetStaticModelLightingCoordsForSource:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov edx, [ebp+0x8]
	mov esi, [ebp+0xc]
	lea ebx, [esi+0xc10]
	mov eax, rgp
	mov eax, [eax+0x20a0]
	mov ecx, [eax+0x29c]
	lea eax, [edx+edx*8]
	lea eax, [edx+eax*2]
	movzx edx, word [ecx+eax*4+0x46]
	sub edx, 0x1
	mov eax, edx
	shr eax, 0x4
	and eax, 0xfffffffc
	cvtsi2ss xmm1, eax
	movss xmm2, dword [_float_2_00000000]
	addss xmm1, xmm2
	mulss xmm1, [modelLightGlob]
	and edx, 0x3f
	mov eax, edx
	shl eax, 0x2
	js R_SetStaticModelLightingCoordsForSource_10
	cvtsi2ss xmm0, eax
R_SetStaticModelLightingCoordsForSource_20:
	addss xmm0, xmm2
	mulss xmm0, [_float_0_00390625]
	movss [ebx], xmm0
	movss [ebx+0x4], xmm1
	mov dword [ebx+0x8], 0x3f000000
	mov dword [ebx+0xc], 0x3f800000
	add word [esi+0xea2], 0x1
	pop ebx
	pop esi
	pop ebp
	ret
R_SetStaticModelLightingCoordsForSource_10:
	shr eax, 1
	cvtsi2ss xmm0, eax
	addss xmm0, xmm0
	jmp R_SetStaticModelLightingCoordsForSource_20


;Initialized global or static variables of r_model_lighting:
SECTION .data


;Initialized constant data of r_model_lighting:
SECTION .rdata


;Zero initialized global or static variables of r_model_lighting:
SECTION .bss
smodelLightGlob: resb 0xa080
modelLightGlob: resb 0x80
s_modelLightingSampleDelta: resb 0x100


;All cstrings:
SECTION .rdata
_cstring_model_lighting:		db "model lighting",0
_cstring_r_altmodellighti:		db "r_altModelLightingUpdate",0
_cstring_model_lighting1:		db "<model lighting>",0
_cstring_modellightingpat:		db "modelLightingPatchList ran out of elements.",0



;All constant floats and doubles:
SECTION .rdata
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_1_00000000:		dd 0x3f800000	; 1
_float_1_50000000:		dd 0x3fc00000	; 1.5
_float_2_00000000:		dd 0x40000000	; 2
_float_0_00390625:		dd 0x3b800000	; 0.00390625

