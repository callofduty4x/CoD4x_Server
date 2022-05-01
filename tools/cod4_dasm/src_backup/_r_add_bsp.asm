;Imports of r_add_bsp:
	extern rgp
	extern _Z19R_InitDelayedCmdBufP16GfxDelayedCmdBuf
	extern scene
	extern _Z11R_EndCmdBufP16GfxDelayedCmdBuf
	extern sm_fastSunShadow
	extern frontEndDataOut
	extern dx_ctx
	extern r_pretess
	extern _Z21R_AllocPreTessIndicesi
	extern _Z15R_AllocDrawSurfP16GfxDelayedCmdBuf11GfxDrawSurfP15GfxDrawSurfListj
	extern gfxBuf
	extern _Z22R_WritePrimDrawSurfIntP16GfxDelayedCmdBufj
	extern _Z23R_WritePrimDrawSurfDataP16GfxDelayedCmdBufPKvj
	extern Com_Memcpy

;Exports of r_add_bsp:
	global _Z34R_AddAllBspDrawSurfacesRangeCamerajjjj
	global _Z37R_AddAllBspDrawSurfacesRangeSunShadowjjjj
	global _Z17R_AddBspDrawSurfs11GfxDrawSurfPKtjP18GfxBspDrawSurfData
	global _Z17R_InitBspDrawSurfP18GfxBspDrawSurfData
	global _Z29R_AddAllBspDrawSurfacesCamerav
	global _Z32R_AddAllBspDrawSurfacesSunShadowv
	global _Z33R_AddAllBspDrawSurfacesSpotShadowjj
	global _Z35R_AddAllBspDrawSurfacesCameraNonlitjjj


SECTION .text


;R_AddAllBspDrawSurfacesRangeCamera(unsigned int, unsigned int, unsigned int, unsigned int)
_Z34R_AddAllBspDrawSurfacesRangeCamerajjjj:
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
	call _Z19R_InitDelayedCmdBufP16GfxDelayedCmdBuf
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
	jae _Z34R_AddAllBspDrawSurfacesRangeCamerajjjj_10
	mov edx, [ebp-0x14c]
	lea edi, [ecx+edx*8]
	xor ecx, ecx
	mov dword [ebp-0x13c], 0x0
	add esi, 0xe4000
	mov [ebp-0x158], esi
	jmp _Z34R_AddAllBspDrawSurfacesRangeCamerajjjj_20
_Z34R_AddAllBspDrawSurfacesRangeCamerajjjj_40:
	add dword [ebp-0x13c], 0x1
	add edi, 0x8
	mov eax, [ebp-0x150]
	sub eax, [ebp-0x14c]
	cmp [ebp-0x13c], eax
	jz _Z34R_AddAllBspDrawSurfacesRangeCamerajjjj_30
_Z34R_AddAllBspDrawSurfacesRangeCamerajjjj_70:
	mov edx, [ebp-0x14c]
_Z34R_AddAllBspDrawSurfacesRangeCamerajjjj_20:
	mov eax, [ebp-0x140]
	add eax, [ebp-0x13c]
	cmp byte [eax+edx], 0x0
	jz _Z34R_AddAllBspDrawSurfacesRangeCamerajjjj_40
	mov ebx, [edi]
	mov esi, [edi+0x4]
	mov edx, [ebp-0x144]
	xor edx, esi
	mov eax, [ebp-0x148]
	xor eax, ebx
	or edx, eax
	jz _Z34R_AddAllBspDrawSurfacesRangeCamerajjjj_50
	test ecx, ecx
	jnz _Z34R_AddAllBspDrawSurfacesRangeCamerajjjj_60
_Z34R_AddAllBspDrawSurfacesRangeCamerajjjj_90:
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
_Z34R_AddAllBspDrawSurfacesRangeCamerajjjj_80:
	movzx eax, word [ebp-0x14c]
	add ax, [ebp-0x13c]
	mov [ebp+edx*2-0x130], ax
	cmp ecx, 0x7f
	jbe _Z34R_AddAllBspDrawSurfacesRangeCamerajjjj_40
	lea eax, [ebp-0x30]
	mov [esp+0x10], eax
	mov [esp+0xc], ecx
	lea edx, [ebp-0x130]
	mov [esp+0x8], edx
	mov [esp], ebx
	mov [esp+0x4], esi
	call _Z17R_AddBspDrawSurfs11GfxDrawSurfPKtjP18GfxBspDrawSurfData
	xor ecx, ecx
	add dword [ebp-0x13c], 0x1
	add edi, 0x8
	mov eax, [ebp-0x150]
	sub eax, [ebp-0x14c]
	cmp [ebp-0x13c], eax
	jnz _Z34R_AddAllBspDrawSurfacesRangeCamerajjjj_70
_Z34R_AddAllBspDrawSurfacesRangeCamerajjjj_30:
	test ecx, ecx
	jz _Z34R_AddAllBspDrawSurfacesRangeCamerajjjj_10
	lea eax, [ebp-0x30]
	mov [esp+0x10], eax
	mov [esp+0xc], ecx
	lea eax, [ebp-0x130]
	mov [esp+0x8], eax
	mov edx, [ebp-0x148]
	mov ecx, [ebp-0x144]
	mov [esp], edx
	mov [esp+0x4], ecx
	call _Z17R_AddBspDrawSurfs11GfxDrawSurfPKtjP18GfxBspDrawSurfData
_Z34R_AddAllBspDrawSurfacesRangeCamerajjjj_10:
	lea ecx, [ebp-0x30]
	mov [esp], ecx
	call _Z11R_EndCmdBufP16GfxDelayedCmdBuf
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
_Z34R_AddAllBspDrawSurfacesRangeCamerajjjj_50:
	mov edx, ecx
	add ecx, 0x1
	jmp _Z34R_AddAllBspDrawSurfacesRangeCamerajjjj_80
_Z34R_AddAllBspDrawSurfacesRangeCamerajjjj_60:
	lea eax, [ebp-0x30]
	mov [esp+0x10], eax
	mov [esp+0xc], ecx
	lea edx, [ebp-0x130]
	mov [esp+0x8], edx
	mov eax, [ebp-0x148]
	mov edx, [ebp-0x144]
	mov [esp], eax
	mov [esp+0x4], edx
	call _Z17R_AddBspDrawSurfs11GfxDrawSurfPKtjP18GfxBspDrawSurfData
	jmp _Z34R_AddAllBspDrawSurfacesRangeCamerajjjj_90


;R_AddAllBspDrawSurfacesRangeSunShadow(unsigned int, unsigned int, unsigned int, unsigned int)
_Z37R_AddAllBspDrawSurfacesRangeSunShadowjjjj:
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
	call _Z19R_InitDelayedCmdBufP16GfxDelayedCmdBuf
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
	jnz _Z37R_AddAllBspDrawSurfacesRangeSunShadowjjjj_10
	test dl, dl
	jnz _Z37R_AddAllBspDrawSurfacesRangeSunShadowjjjj_20
_Z37R_AddAllBspDrawSurfacesRangeSunShadowjjjj_10:
	mov ecx, [ebp-0x168]
	cmp [ebp-0x164], ecx
	jae _Z37R_AddAllBspDrawSurfacesRangeSunShadowjjjj_30
	mov eax, [ebp-0x164]
	lea ebx, [ebx+eax*8]
	mov [ebp-0x144], ebx
	mov dword [ebp-0x150], 0x0
	mov dword [ebp-0x14c], 0x0
	xor edi, edi
	mov edx, eax
	jmp _Z37R_AddAllBspDrawSurfacesRangeSunShadowjjjj_40
_Z37R_AddAllBspDrawSurfacesRangeSunShadowjjjj_90:
	mov edx, [ebp-0x164]
_Z37R_AddAllBspDrawSurfacesRangeSunShadowjjjj_40:
	mov eax, [ebp-0x154]
	add eax, edi
	cmp byte [eax+edx], 0x0
	jz _Z37R_AddAllBspDrawSurfacesRangeSunShadowjjjj_50
	mov ecx, [ebp-0x144]
	mov ebx, [ecx]
	mov esi, [ecx+0x4]
	mov edx, [ebp-0x15c]
	xor edx, esi
	mov eax, [ebp-0x160]
	xor eax, ebx
	or edx, eax
	jz _Z37R_AddAllBspDrawSurfacesRangeSunShadowjjjj_60
	mov eax, [ebp-0x14c]
	test eax, eax
	jnz _Z37R_AddAllBspDrawSurfacesRangeSunShadowjjjj_70
_Z37R_AddAllBspDrawSurfacesRangeSunShadowjjjj_170:
	mov [ebp-0x160], ebx
	mov [ebp-0x15c], esi
	xor eax, eax
	test dword [ebp-0x160], 0x1f000000
	setz al
	mov [ebp-0x150], eax
	mov dword [ebp-0x14c], 0x0
_Z37R_AddAllBspDrawSurfacesRangeSunShadowjjjj_60:
	mov eax, [ebp-0x150]
	test eax, eax
	jnz _Z37R_AddAllBspDrawSurfacesRangeSunShadowjjjj_50
	movzx eax, word [ebp-0x164]
	add eax, edi
	mov edx, [ebp-0x14c]
	mov [ebp+edx*2-0x130], ax
	add edx, 0x1
	mov [ebp-0x14c], edx
	cmp edx, 0x7f
	ja _Z37R_AddAllBspDrawSurfacesRangeSunShadowjjjj_80
_Z37R_AddAllBspDrawSurfacesRangeSunShadowjjjj_50:
	add edi, 0x1
	add dword [ebp-0x144], 0x8
	mov eax, [ebp-0x168]
	sub eax, [ebp-0x164]
	cmp eax, edi
	jnz _Z37R_AddAllBspDrawSurfacesRangeSunShadowjjjj_90
_Z37R_AddAllBspDrawSurfacesRangeSunShadowjjjj_160:
	mov ecx, [ebp-0x14c]
	test ecx, ecx
	jz _Z37R_AddAllBspDrawSurfacesRangeSunShadowjjjj_30
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
	call _Z17R_AddBspDrawSurfs11GfxDrawSurfPKtjP18GfxBspDrawSurfData
_Z37R_AddAllBspDrawSurfacesRangeSunShadowjjjj_30:
	lea edx, [ebp-0x30]
	mov [esp], edx
	call _Z11R_EndCmdBufP16GfxDelayedCmdBuf
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
_Z37R_AddAllBspDrawSurfacesRangeSunShadowjjjj_20:
	mov eax, [ebp-0x168]
	cmp [ebp-0x164], eax
	jae _Z37R_AddAllBspDrawSurfacesRangeSunShadowjjjj_30
	mov eax, [ebp-0x154]
	add eax, [ebp-0x164]
	mov [ebp-0x140], eax
	mov edx, [ebp-0x164]
	lea ebx, [ebx+edx*8]
	mov [ebp-0x13c], ebx
	mov edi, edx
	mov dword [ebp-0x14c], 0x0
	jmp _Z37R_AddAllBspDrawSurfacesRangeSunShadowjjjj_100
_Z37R_AddAllBspDrawSurfacesRangeSunShadowjjjj_150:
	mov eax, [ebp-0x140]
_Z37R_AddAllBspDrawSurfacesRangeSunShadowjjjj_100:
	cmp byte [eax], 0x0
	jz _Z37R_AddAllBspDrawSurfacesRangeSunShadowjjjj_110
	mov edx, edi
	shr edx, 0x5
	mov ecx, edi
	and ecx, 0x1f
	mov eax, 0x1
	shl eax, cl
	mov ecx, [ebp-0x148]
	test [ecx+edx*4], eax
	jz _Z37R_AddAllBspDrawSurfacesRangeSunShadowjjjj_110
	mov eax, [ebp-0x13c]
	mov ebx, [eax]
	mov esi, [eax+0x4]
	mov edx, [ebp-0x15c]
	xor edx, esi
	mov eax, [ebp-0x160]
	xor eax, ebx
	or edx, eax
	jz _Z37R_AddAllBspDrawSurfacesRangeSunShadowjjjj_120
	mov eax, [ebp-0x14c]
	test eax, eax
	jnz _Z37R_AddAllBspDrawSurfacesRangeSunShadowjjjj_130
_Z37R_AddAllBspDrawSurfacesRangeSunShadowjjjj_190:
	mov [ebp-0x160], ebx
	mov [ebp-0x15c], esi
	xor eax, eax
	mov dword [ebp-0x14c], 0x1
_Z37R_AddAllBspDrawSurfacesRangeSunShadowjjjj_180:
	mov [ebp+eax*2-0x130], di
	cmp dword [ebp-0x14c], 0x7f
	ja _Z37R_AddAllBspDrawSurfacesRangeSunShadowjjjj_140
_Z37R_AddAllBspDrawSurfacesRangeSunShadowjjjj_110:
	add edi, 0x1
	add dword [ebp-0x140], 0x1
	add dword [ebp-0x13c], 0x8
	cmp edi, [ebp-0x168]
	jnz _Z37R_AddAllBspDrawSurfacesRangeSunShadowjjjj_150
	jmp _Z37R_AddAllBspDrawSurfacesRangeSunShadowjjjj_160
_Z37R_AddAllBspDrawSurfacesRangeSunShadowjjjj_70:
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
	call _Z17R_AddBspDrawSurfs11GfxDrawSurfPKtjP18GfxBspDrawSurfData
	jmp _Z37R_AddAllBspDrawSurfacesRangeSunShadowjjjj_170
_Z37R_AddAllBspDrawSurfacesRangeSunShadowjjjj_80:
	lea ecx, [ebp-0x30]
	mov [esp+0x10], ecx
	mov [esp+0xc], edx
	lea eax, [ebp-0x130]
	mov [esp+0x8], eax
	mov [esp], ebx
	mov [esp+0x4], esi
	call _Z17R_AddBspDrawSurfs11GfxDrawSurfPKtjP18GfxBspDrawSurfData
	mov dword [ebp-0x14c], 0x0
	jmp _Z37R_AddAllBspDrawSurfacesRangeSunShadowjjjj_50
_Z37R_AddAllBspDrawSurfacesRangeSunShadowjjjj_140:
	lea ecx, [ebp-0x30]
	mov [esp+0x10], ecx
	mov eax, [ebp-0x14c]
	mov [esp+0xc], eax
	lea eax, [ebp-0x130]
	mov [esp+0x8], eax
	mov [esp], ebx
	mov [esp+0x4], esi
	call _Z17R_AddBspDrawSurfs11GfxDrawSurfPKtjP18GfxBspDrawSurfData
	mov dword [ebp-0x14c], 0x0
	jmp _Z37R_AddAllBspDrawSurfacesRangeSunShadowjjjj_110
_Z37R_AddAllBspDrawSurfacesRangeSunShadowjjjj_120:
	mov eax, [ebp-0x14c]
	mov edx, eax
	add edx, 0x1
	mov [ebp-0x14c], edx
	jmp _Z37R_AddAllBspDrawSurfacesRangeSunShadowjjjj_180
_Z37R_AddAllBspDrawSurfacesRangeSunShadowjjjj_130:
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
	call _Z17R_AddBspDrawSurfs11GfxDrawSurfPKtjP18GfxBspDrawSurfData
	jmp _Z37R_AddAllBspDrawSurfacesRangeSunShadowjjjj_190
	nop


;R_AddBspDrawSurfs(GfxDrawSurf, unsigned short const*, unsigned int, GfxBspDrawSurfData*)
_Z17R_AddBspDrawSurfs11GfxDrawSurfPKtjP18GfxBspDrawSurfData:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x24c
	mov eax, dx_ctx
	cmp byte [eax+0x2c6c], 0x0
	jnz _Z17R_AddBspDrawSurfs11GfxDrawSurfPKtjP18GfxBspDrawSurfData_10
	mov eax, r_pretess
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz _Z17R_AddBspDrawSurfs11GfxDrawSurfPKtjP18GfxBspDrawSurfData_10
	mov eax, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov [ebp-0x238], eax
	mov [ebp-0x234], edx
	mov edx, [ebp+0x14]
	test edx, edx
	jnz _Z17R_AddBspDrawSurfs11GfxDrawSurfPKtjP18GfxBspDrawSurfData_20
	xor eax, eax
_Z17R_AddBspDrawSurfs11GfxDrawSurfPKtjP18GfxBspDrawSurfData_60:
	mov [esp], eax
	call _Z21R_AllocPreTessIndicesi
	mov [ebp-0x22c], eax
	test eax, eax
	jz _Z17R_AddBspDrawSurfs11GfxDrawSurfPKtjP18GfxBspDrawSurfData_10
	mov eax, [ebp+0x14]
	test eax, eax
	jnz _Z17R_AddBspDrawSurfs11GfxDrawSurfPKtjP18GfxBspDrawSurfData_30
	xor esi, esi
	mov eax, 0x2
_Z17R_AddBspDrawSurfs11GfxDrawSurfPKtjP18GfxBspDrawSurfData_110:
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
	call _Z15R_AllocDrawSurfP16GfxDelayedCmdBuf11GfxDrawSurfP15GfxDrawSurfListj
	test eax, eax
	jz _Z17R_AddBspDrawSurfs11GfxDrawSurfPKtjP18GfxBspDrawSurfData_40
	mov eax, gfxBuf
	mov eax, [eax+0x30]
	mov ecx, [eax+0xc]
	sub [ebp-0x22c], ecx
	sar dword [ebp-0x22c], 1
	mov [esp+0x4], esi
	mov eax, [ebp+0x18]
	mov [esp], eax
	call _Z22R_WritePrimDrawSurfIntP16GfxDelayedCmdBufj
	mov edx, [ebp-0x22c]
	mov [esp+0x4], edx
	mov ecx, [ebp+0x18]
	mov [esp], ecx
	call _Z22R_WritePrimDrawSurfIntP16GfxDelayedCmdBufj
	mov [esp+0x8], esi
	lea eax, [ebp-0x218]
	mov [esp+0x4], eax
	mov esi, [ebp+0x18]
	mov [esp], esi
	call _Z23R_WritePrimDrawSurfDataP16GfxDelayedCmdBufPKvj
_Z17R_AddBspDrawSurfs11GfxDrawSurfPKtjP18GfxBspDrawSurfData_40:
	add esp, 0x24c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17R_AddBspDrawSurfs11GfxDrawSurfPKtjP18GfxBspDrawSurfData_10:
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
	call _Z15R_AllocDrawSurfP16GfxDelayedCmdBuf11GfxDrawSurfP15GfxDrawSurfListj
	test eax, eax
	jz _Z17R_AddBspDrawSurfs11GfxDrawSurfPKtjP18GfxBspDrawSurfData_40
	mov ecx, [ebp+0x14]
	mov [esp+0x4], ecx
	mov esi, [ebp+0x18]
	mov [esp], esi
	call _Z22R_WritePrimDrawSurfIntP16GfxDelayedCmdBufj
	mov [esp+0x8], ebx
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov [esp], esi
	call _Z23R_WritePrimDrawSurfDataP16GfxDelayedCmdBufPKvj
	add esp, 0x24c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17R_AddBspDrawSurfs11GfxDrawSurfPKtjP18GfxBspDrawSurfData_20:
	mov eax, rgp
	mov eax, [eax+0x20a0]
	mov ebx, [eax+0x294]
	xor edx, edx
	xor ecx, ecx
	mov esi, [ebp+0x10]
_Z17R_AddBspDrawSurfs11GfxDrawSurfPKtjP18GfxBspDrawSurfData_50:
	movzx eax, word [esi+edx*2]
	lea eax, [eax+eax*2]
	shl eax, 0x4
	movzx eax, word [ebx+eax+0xa]
	add ecx, eax
	add edx, 0x1
	cmp [ebp+0x14], edx
	jnz _Z17R_AddBspDrawSurfs11GfxDrawSurfPKtjP18GfxBspDrawSurfData_50
	lea eax, [ecx+ecx*2]
	jmp _Z17R_AddBspDrawSurfs11GfxDrawSurfPKtjP18GfxBspDrawSurfData_60
_Z17R_AddBspDrawSurfs11GfxDrawSurfPKtjP18GfxBspDrawSurfData_30:
	mov dword [ebp-0x21c], 0x0
	mov dword [ebp-0x230], 0x0
	mov dword [ebp-0x228], 0x7fffffff
	mov dword [ebp-0x224], 0x1f
	mov dword [ebp-0x220], 0xff
	xor esi, esi
	mov eax, [ebp-0x21c]
	jmp _Z17R_AddBspDrawSurfs11GfxDrawSurfPKtjP18GfxBspDrawSurfData_70
_Z17R_AddBspDrawSurfs11GfxDrawSurfPKtjP18GfxBspDrawSurfData_90:
	movzx eax, byte [ebx+0x14]
	mov [ebp-0x224], eax
	movzx eax, byte [ebx+0x15]
	mov [ebp-0x220], eax
	mov [ebp+esi*4-0x218], cx
	mov word [ebp+esi*4-0x216], 0x0
	add esi, 0x1
	mov [ebp-0x228], edx
_Z17R_AddBspDrawSurfs11GfxDrawSurfPKtjP18GfxBspDrawSurfData_100:
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
	jz _Z17R_AddBspDrawSurfs11GfxDrawSurfPKtjP18GfxBspDrawSurfData_80
_Z17R_AddBspDrawSurfs11GfxDrawSurfPKtjP18GfxBspDrawSurfData_70:
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
	jnz _Z17R_AddBspDrawSurfs11GfxDrawSurfPKtjP18GfxBspDrawSurfData_90
	movzx eax, byte [ebx+0x14]
	cmp [ebp-0x224], eax
	jnz _Z17R_AddBspDrawSurfs11GfxDrawSurfPKtjP18GfxBspDrawSurfData_90
	movzx eax, byte [ebx+0x15]
	cmp [ebp-0x220], eax
	jnz _Z17R_AddBspDrawSurfs11GfxDrawSurfPKtjP18GfxBspDrawSurfData_90
	jmp _Z17R_AddBspDrawSurfs11GfxDrawSurfPKtjP18GfxBspDrawSurfData_100
_Z17R_AddBspDrawSurfs11GfxDrawSurfPKtjP18GfxBspDrawSurfData_80:
	lea eax, [esi+0x2]
	jmp _Z17R_AddBspDrawSurfs11GfxDrawSurfPKtjP18GfxBspDrawSurfData_110
	nop


;R_InitBspDrawSurf(GfxBspDrawSurfData*)
_Z17R_InitBspDrawSurfP18GfxBspDrawSurfData:
	push ebp
	mov ebp, esp
	pop ebp
	jmp _Z19R_InitDelayedCmdBufP16GfxDelayedCmdBuf
	nop


;R_AddAllBspDrawSurfacesCamera()
_Z29R_AddAllBspDrawSurfacesCamerav:
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
	call _Z34R_AddAllBspDrawSurfacesRangeCamerajjjj
	mov eax, [ebx+0x20a0]
	mov edx, [eax+0x25c]
	mov eax, [eax+0x258]
	mov dword [esp], 0x200
	mov ecx, 0x3
	call _Z34R_AddAllBspDrawSurfacesRangeCamerajjjj
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;R_AddAllBspDrawSurfacesSunShadow()
_Z32R_AddAllBspDrawSurfacesSunShadowv:
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
	call _Z37R_AddAllBspDrawSurfacesRangeSunShadowjjjj
	mov eax, [ebx+0x20a0]
	mov ecx, [eax+0x264]
	mov edx, [eax+0x250]
	mov dword [esp], 0x2000
	mov eax, 0x1
	call _Z37R_AddAllBspDrawSurfacesRangeSunShadowjjjj
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;R_AddAllBspDrawSurfacesSpotShadow(unsigned int, unsigned int)
_Z33R_AddAllBspDrawSurfacesSpotShadowjj:
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
	call _Z19R_InitDelayedCmdBufP16GfxDelayedCmdBuf
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
	jz _Z33R_AddAllBspDrawSurfacesSpotShadowjj_10
	mov dword [ebp-0x148], 0x0
	xor ecx, ecx
	jmp _Z33R_AddAllBspDrawSurfacesSpotShadowjj_20
_Z33R_AddAllBspDrawSurfacesSpotShadowjj_60:
	add dword [ebp-0x148], 0x1
	mov ecx, [ebp-0x144]
	movzx eax, word [ecx]
	cmp eax, [ebp-0x148]
	jbe _Z33R_AddAllBspDrawSurfacesSpotShadowjj_30
_Z33R_AddAllBspDrawSurfacesSpotShadowjj_70:
	mov ecx, edx
_Z33R_AddAllBspDrawSurfacesSpotShadowjj_20:
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
	jz _Z33R_AddAllBspDrawSurfacesSpotShadowjj_40
	test ecx, ecx
	jnz _Z33R_AddAllBspDrawSurfacesSpotShadowjj_50
_Z33R_AddAllBspDrawSurfacesSpotShadowjj_90:
	mov [ebp-0x158], ebx
	mov [ebp-0x154], esi
	xor ecx, ecx
	mov edx, 0x1
_Z33R_AddAllBspDrawSurfacesSpotShadowjj_80:
	mov [ebp+ecx*2-0x130], di
	cmp edx, 0x7f
	jbe _Z33R_AddAllBspDrawSurfacesSpotShadowjj_60
	lea ecx, [ebp-0x30]
	mov [esp+0x10], ecx
	mov [esp+0xc], edx
	lea edi, [ebp-0x130]
	mov [esp+0x8], edi
	mov [esp], ebx
	mov [esp+0x4], esi
	call _Z17R_AddBspDrawSurfs11GfxDrawSurfPKtjP18GfxBspDrawSurfData
	xor edx, edx
	add dword [ebp-0x148], 0x1
	mov ecx, [ebp-0x144]
	movzx eax, word [ecx]
	cmp eax, [ebp-0x148]
	ja _Z33R_AddAllBspDrawSurfacesSpotShadowjj_70
_Z33R_AddAllBspDrawSurfacesSpotShadowjj_30:
	test edx, edx
	jz _Z33R_AddAllBspDrawSurfacesSpotShadowjj_10
	lea edi, [ebp-0x30]
	mov [esp+0x10], edi
	mov [esp+0xc], edx
	lea eax, [ebp-0x130]
	mov [esp+0x8], eax
	mov eax, [ebp-0x158]
	mov edx, [ebp-0x154]
	mov [esp], eax
	mov [esp+0x4], edx
	call _Z17R_AddBspDrawSurfs11GfxDrawSurfPKtjP18GfxBspDrawSurfData
_Z33R_AddAllBspDrawSurfacesSpotShadowjj_10:
	lea edx, [ebp-0x30]
	mov [esp], edx
	call _Z11R_EndCmdBufP16GfxDelayedCmdBuf
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
_Z33R_AddAllBspDrawSurfacesSpotShadowjj_40:
	lea edx, [ecx+0x1]
	jmp _Z33R_AddAllBspDrawSurfacesSpotShadowjj_80
_Z33R_AddAllBspDrawSurfacesSpotShadowjj_50:
	lea edx, [ebp-0x30]
	mov [esp+0x10], edx
	mov [esp+0xc], ecx
	lea ecx, [ebp-0x130]
	mov [esp+0x8], ecx
	mov eax, [ebp-0x158]
	mov edx, [ebp-0x154]
	mov [esp], eax
	mov [esp+0x4], edx
	call _Z17R_AddBspDrawSurfs11GfxDrawSurfPKtjP18GfxBspDrawSurfData
	jmp _Z33R_AddAllBspDrawSurfacesSpotShadowjj_90
	add [eax], al


;R_AddAllBspDrawSurfacesCameraNonlit(unsigned int, unsigned int, unsigned int)
_Z35R_AddAllBspDrawSurfacesCameraNonlitjjj:
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
	call _Z19R_InitDelayedCmdBufP16GfxDelayedCmdBuf
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
	jae _Z35R_AddAllBspDrawSurfacesCameraNonlitjjj_10
	mov edx, [ebp+0x8]
	lea edi, [ebx+edx*8]
	xor ecx, ecx
	mov dword [ebp-0x13c], 0x0
	jmp _Z35R_AddAllBspDrawSurfacesCameraNonlitjjj_20
_Z35R_AddAllBspDrawSurfacesCameraNonlitjjj_40:
	add dword [ebp-0x13c], 0x1
	add edi, 0x8
	mov eax, [ebp+0xc]
	sub eax, [ebp+0x8]
	cmp [ebp-0x13c], eax
	jz _Z35R_AddAllBspDrawSurfacesCameraNonlitjjj_30
_Z35R_AddAllBspDrawSurfacesCameraNonlitjjj_70:
	mov edx, [ebp+0x8]
_Z35R_AddAllBspDrawSurfacesCameraNonlitjjj_20:
	mov eax, [ebp-0x140]
	add eax, [ebp-0x13c]
	cmp byte [eax+edx], 0x0
	jz _Z35R_AddAllBspDrawSurfacesCameraNonlitjjj_40
	mov ebx, [edi]
	mov esi, [edi+0x4]
	mov edx, [ebp-0x144]
	xor edx, esi
	mov eax, [ebp-0x148]
	xor eax, ebx
	or edx, eax
	jz _Z35R_AddAllBspDrawSurfacesCameraNonlitjjj_50
	test ecx, ecx
	jnz _Z35R_AddAllBspDrawSurfacesCameraNonlitjjj_60
_Z35R_AddAllBspDrawSurfacesCameraNonlitjjj_90:
	mov [ebp-0x148], ebx
	mov [ebp-0x144], esi
	xor edx, edx
	mov ecx, 0x1
_Z35R_AddAllBspDrawSurfacesCameraNonlitjjj_80:
	movzx eax, word [ebp+0x8]
	add ax, [ebp-0x13c]
	mov [ebp+edx*2-0x130], ax
	cmp ecx, 0x7f
	jbe _Z35R_AddAllBspDrawSurfacesCameraNonlitjjj_40
	lea edx, [ebp-0x30]
	mov [esp+0x10], edx
	mov [esp+0xc], ecx
	lea ecx, [ebp-0x130]
	mov [esp+0x8], ecx
	mov [esp], ebx
	mov [esp+0x4], esi
	call _Z17R_AddBspDrawSurfs11GfxDrawSurfPKtjP18GfxBspDrawSurfData
	xor ecx, ecx
	add dword [ebp-0x13c], 0x1
	add edi, 0x8
	mov eax, [ebp+0xc]
	sub eax, [ebp+0x8]
	cmp [ebp-0x13c], eax
	jnz _Z35R_AddAllBspDrawSurfacesCameraNonlitjjj_70
_Z35R_AddAllBspDrawSurfacesCameraNonlitjjj_30:
	test ecx, ecx
	jz _Z35R_AddAllBspDrawSurfacesCameraNonlitjjj_10
	lea eax, [ebp-0x30]
	mov [esp+0x10], eax
	mov [esp+0xc], ecx
	lea eax, [ebp-0x130]
	mov [esp+0x8], eax
	mov edx, [ebp-0x148]
	mov ecx, [ebp-0x144]
	mov [esp], edx
	mov [esp+0x4], ecx
	call _Z17R_AddBspDrawSurfs11GfxDrawSurfPKtjP18GfxBspDrawSurfData
_Z35R_AddAllBspDrawSurfacesCameraNonlitjjj_10:
	lea ecx, [ebp-0x30]
	mov [esp], ecx
	call _Z11R_EndCmdBufP16GfxDelayedCmdBuf
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
_Z35R_AddAllBspDrawSurfacesCameraNonlitjjj_50:
	mov edx, ecx
	add ecx, 0x1
	jmp _Z35R_AddAllBspDrawSurfacesCameraNonlitjjj_80
_Z35R_AddAllBspDrawSurfacesCameraNonlitjjj_60:
	lea eax, [ebp-0x30]
	mov [esp+0x10], eax
	mov [esp+0xc], ecx
	lea edx, [ebp-0x130]
	mov [esp+0x8], edx
	mov eax, [ebp-0x148]
	mov edx, [ebp-0x144]
	mov [esp], eax
	mov [esp+0x4], edx
	call _Z17R_AddBspDrawSurfs11GfxDrawSurfPKtjP18GfxBspDrawSurfData
	jmp _Z35R_AddAllBspDrawSurfacesCameraNonlitjjj_90
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

