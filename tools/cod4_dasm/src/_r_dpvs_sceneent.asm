;Imports of r_dpvs_sceneent:
	extern scene
	extern rgp
	extern gfxCfg
	extern _Z31R_AddEntitySurfacesInFrustumCmdPv
	extern _Z14R_AddWorkerCmd13WorkerCmdTypePv

;Exports of r_dpvs_sceneent:
	global _Z37R_AddCellSceneEntSurfacesInFrustumCmdPv


SECTION .text


;R_AddCellSceneEntSurfacesInFrustumCmd(void*)
_Z37R_AddCellSceneEntSurfacesInFrustumCmdPv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov ecx, [ebp+0x8]
	mov ebx, scene
	mov edi, [ebx+0x154c90]
	mov eax, rgp
	mov eax, [eax+0x20a0]
	add eax, 0xf0
	mov [ebp-0x48], eax
	mov eax, gfxCfg
	mov eax, [eax+0x4]
	shr eax, 0x5
	mov [ebp-0x5c], eax
	mov eax, [ebx+edi*4+0x154cb8]
	mov [ebp-0x54], eax
	mov edx, [ebx+0x154cb0]
	mov [ebp-0x50], edx
	mov eax, [ebx+0x154cb4]
	mov [ebp-0x4c], eax
	mov edx, [ecx+0x4]
	mov eax, [ecx]
	mov [ebp-0x30], eax
	movzx eax, byte [ecx+0x8]
	mov [ebp-0x64], eax
	movzx esi, byte [ecx+0x9]
	movzx eax, word [ecx+0xa]
	mov eax, [ebx+eax*4+0x154c94]
	mov [ebp-0x1c], eax
	mov ecx, [ebp-0x30]
	mov [ebp-0x24], ecx
	movzx ebx, word [ebp-0x64]
	mov [ebp-0x20], bx
	mov [ebp-0x1e], dx
	imul edi, [ebp-0x5c]
	shl edx, 0x7
	lea edx, [edi+edx]
	mov [ebp-0x34], edx
	mov eax, [ebp-0x48]
	mov edx, [eax+0xc]
	mov ebx, [ebp-0x34]
	lea ecx, [edx+ebx*4]
	lea eax, [esi+esi*4]
	mov ebx, [ebp-0x30]
	lea eax, [ebx+eax*4]
	mov [ebp-0x38], eax
	mov eax, [ebp-0x64]
	sub eax, esi
	mov [ebp-0x60], eax
	mov ebx, [ebp-0x5c]
	test ebx, ebx
	jz _Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_10
	mov [ebp-0x3c], ecx
	mov dword [ebp-0x58], 0x0
	mov edx, ecx
_Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_200:
	mov edi, [edx]
_Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_70:
	test edi, 0xffff0000
	jnz _Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_20
_Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_140:
	mov ecx, 0x10
	mov esi, 0x10
	mov edx, edi
	shl edx, cl
	test edx, 0xff000000
	jnz _Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_30
_Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_150:
	mov ebx, 0x8
	mov eax, 0x8
	lea esi, [eax+esi]
	mov ecx, ebx
	shl edx, cl
	test edx, 0xf0000000
	jnz _Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_40
_Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_160:
	mov ebx, 0x4
	mov eax, 0x4
	lea esi, [eax+esi]
	mov ecx, ebx
	shl edx, cl
	test edx, 0xc0000000
	jnz _Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_50
_Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_170:
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
	ja _Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_60
_Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_180:
	mov eax, [ebp-0x58]
	shl eax, 0x5
	lea ebx, [ecx+eax]
	mov eax, 0x80000000
	shr eax, cl
	not eax
	and edi, eax
	mov esi, ebx
	add esi, [ebp-0x1c]
	cmp byte [esi], 0x0
	jnz _Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_70
	lea ecx, [ebx+ebx]
	mov edx, [ebp-0x4c]
	movzx eax, word [edx+ecx]
	movzx edx, ax
	add ax, 0x1
	jz _Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_80
	lea eax, [edx*4]
	shl edx, 0x7
	sub edx, eax
	mov eax, scene
	lea eax, [edx+eax+0x12b400]
	lea esi, [eax+0x30]
	mov edx, [ebp-0x54]
	movss xmm4, dword [edx+ebx*4]
	add eax, 0x4c
	mov ebx, [ebp-0x60]
	test ebx, ebx
	jg _Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_90
_Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_210:
	lea ebx, [esi+0x30]
	mov ecx, [ebp-0x64]
	test ecx, ecx
	jle _Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_100
	mov edx, [ebp-0x30]
	movzx eax, byte [edx+0x10]
	movss xmm0, dword [eax+ebx]
	movzx eax, byte [edx+0x11]
	movss xmm1, dword [ebx+eax]
	movzx eax, byte [edx+0x12]
	movss xmm2, dword [ebx+eax]
	mulss xmm0, [edx]
	addss xmm0, [edx+0xc]
	mulss xmm1, [edx+0x4]
	addss xmm0, xmm1
	mulss xmm2, [edx+0x8]
	addss xmm0, xmm2
	pxor xmm3, xmm3
	ucomiss xmm3, xmm0
	jae _Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_70
	mov ecx, 0x1
	jmp _Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_110
_Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_120:
	movzx eax, byte [edx+0x10]
	movss xmm0, dword [eax+ebx]
	movzx eax, byte [edx+0x11]
	movss xmm1, dword [eax+ebx]
	movzx eax, byte [edx+0x12]
	movss xmm2, dword [eax+ebx]
	add ecx, 0x1
	mulss xmm0, [edx]
	addss xmm0, [edx+0xc]
	mulss xmm1, [edx+0x4]
	addss xmm0, xmm1
	mulss xmm2, [edx+0x8]
	addss xmm0, xmm2
	ucomiss xmm3, xmm0
	jae _Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_70
_Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_110:
	add edx, 0x14
	cmp ecx, [ebp-0x64]
	jnz _Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_120
_Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_100:
	mov [ebp-0x28], esi
	mov eax, [esi+0x2c]
	cmp eax, 0x1
	jbe _Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_130
	lea eax, [ebp-0x28]
	mov [esp], eax
	call _Z31R_AddEntitySurfacesInFrustumCmdPv
	test edi, 0xffff0000
	jz _Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_140
_Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_20:
	xor ecx, ecx
	xor esi, esi
	mov edx, edi
	shl edx, cl
	test edx, 0xff000000
	jz _Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_150
_Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_30:
	xor ebx, ebx
	xor eax, eax
	lea esi, [eax+esi]
	mov ecx, ebx
	shl edx, cl
	test edx, 0xf0000000
	jz _Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_160
_Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_40:
	xor ebx, ebx
	xor eax, eax
	lea esi, [eax+esi]
	mov ecx, ebx
	shl edx, cl
	test edx, 0xc0000000
	jz _Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_170
_Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_50:
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
	jbe _Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_180
_Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_60:
	add dword [ebp-0x58], 0x1
	add dword [ebp-0x3c], 0x4
	mov ecx, [ebp-0x58]
	cmp [ebp-0x5c], ecx
	jz _Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_190
	mov edx, [ebp-0x3c]
	jmp _Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_200
_Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_90:
	movss xmm5, dword [eax]
	lea ebx, [eax+0x4]
	movss xmm0, dword [eax+0x4]
	lea ecx, [eax+0x8]
	movss xmm2, dword [eax+0x8]
	mov eax, [ebp-0x38]
	movss xmm1, dword [eax]
	mulss xmm1, xmm5
	mulss xmm0, [eax+0x4]
	addss xmm1, xmm0
	mulss xmm2, [eax+0x8]
	addss xmm1, xmm2
	addss xmm1, [eax+0xc]
	addss xmm1, xmm4
	pxor xmm3, xmm3
	ucomiss xmm3, xmm1
	jae _Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_70
	mov edx, 0x1
_Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_220:
	add eax, 0x14
	cmp edx, [ebp-0x60]
	jz _Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_210
	movss xmm0, dword [ebx]
	movss xmm1, dword [ecx]
	add edx, 0x1
	mulss xmm1, [eax+0x8]
	movaps xmm2, xmm5
	mulss xmm2, [eax]
	mulss xmm0, [eax+0x4]
	addss xmm2, xmm0
	addss xmm1, xmm2
	addss xmm1, [eax+0xc]
	addss xmm1, xmm4
	ucomiss xmm3, xmm1
	jb _Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_220
	jmp _Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_70
_Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_80:
	mov edx, [ebp-0x50]
	movzx eax, word [edx+ecx]
	movzx edx, ax
	add ax, 0x1
	jz _Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_70
	mov ecx, [ebp-0x54]
	movss xmm4, dword [ecx+ebx*4]
	lea edx, [edx+edx*8]
	mov eax, scene
	lea eax, [eax+edx*8+0x13ba00]
	lea ebx, [eax+0x50]
	mov edx, [ebp-0x60]
	test edx, edx
	jle _Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_230
	movss xmm0, dword [eax+0x50]
	lea ecx, [eax+0x54]
	mov [ebp-0x44], ecx
	movss xmm1, dword [eax+0x54]
	lea edx, [eax+0x58]
	mov [ebp-0x6c], edx
	movss xmm2, dword [eax+0x58]
	mov ecx, [ebp-0x38]
	mulss xmm0, [ecx]
	mulss xmm1, [ecx+0x4]
	addss xmm0, xmm1
	mulss xmm2, [ecx+0x8]
	addss xmm0, xmm2
	addss xmm0, [ecx+0xc]
	addss xmm0, xmm4
	pxor xmm3, xmm3
	ucomiss xmm3, xmm0
	jae _Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_70
	mov eax, ecx
	mov edx, 0x1
	jmp _Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_240
_Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_250:
	movss xmm0, dword [ebx]
	mov ecx, [ebp-0x44]
	movss xmm1, dword [ecx]
	mov ecx, [ebp-0x6c]
	movss xmm2, dword [ecx]
	add edx, 0x1
	mulss xmm0, [eax]
	mulss xmm1, [eax+0x4]
	addss xmm0, xmm1
	mulss xmm2, [eax+0x8]
	addss xmm0, xmm2
	addss xmm0, [eax+0xc]
	addss xmm0, xmm4
	ucomiss xmm3, xmm0
	jae _Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_70
_Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_240:
	add eax, 0x14
	cmp edx, [ebp-0x60]
	jnz _Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_250
_Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_230:
	mov byte [esi], 0x1
	jmp _Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_70
_Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_130:
	lea eax, [ebp-0x28]
	mov [esp+0x4], eax
	mov dword [esp], 0x7
	call _Z14R_AddWorkerCmd13WorkerCmdTypePv
	jmp _Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_70
_Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_10:
	mov ecx, [ebp-0x48]
_Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_420:
	mov eax, [ecx]
	shl eax, 0x7
	add eax, [ebp-0x34]
	lea eax, [edx+eax*4]
	mov edx, [ebp-0x5c]
	test edx, edx
	jz _Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_260
	mov [ebp-0x40], eax
	mov dword [ebp-0x2c], 0x0
	pxor xmm4, xmm4
	mov ebx, eax
_Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_410:
	mov edi, [ebx]
_Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_320:
	test edi, 0xffff0000
	jnz _Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_270
_Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_360:
	mov ecx, 0x10
	mov esi, 0x10
	mov edx, edi
	shl edx, cl
	test edx, 0xff000000
	jnz _Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_280
_Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_370:
	mov ebx, 0x8
	mov eax, 0x8
	add esi, eax
	mov ecx, ebx
	shl edx, cl
	test edx, 0xf0000000
	jnz _Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_290
_Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_380:
	mov ebx, 0x4
	mov eax, 0x4
	add esi, eax
	mov ecx, ebx
	shl edx, cl
	test edx, 0xc0000000
	jnz _Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_300
_Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_390:
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
	ja _Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_310
_Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_400:
	mov eax, [ebp-0x2c]
	shl eax, 0x5
	lea edx, [ecx+eax]
	mov eax, 0x80000000
	shr eax, cl
	not eax
	and edi, eax
	mov esi, edx
	add esi, [ebp-0x1c]
	cmp byte [esi], 0x0
	jnz _Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_320
	mov eax, [ebp-0x54]
	mov ebx, [eax+edx*4]
	mov eax, [ebp-0x60]
	test eax, eax
	jle _Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_330
	mov ecx, [ebp-0x38]
	movzx eax, byte [ecx+0x10]
	movss xmm2, dword [ebx+eax]
	movzx eax, byte [ecx+0x11]
	movss xmm0, dword [ebx+eax]
	movzx eax, byte [ecx+0x12]
	movss xmm1, dword [eax+ebx]
	mulss xmm1, [ecx+0x8]
	mulss xmm0, [ecx+0x4]
	mulss xmm2, [ecx]
	addss xmm2, [ecx+0xc]
	addss xmm0, xmm2
	addss xmm1, xmm0
	movaps xmm3, xmm4
	ucomiss xmm4, xmm1
	jae _Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_320
	mov edx, ecx
	mov ecx, 0x1
	jmp _Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_340
_Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_350:
	movzx eax, byte [edx+0x10]
	movss xmm0, dword [eax+ebx]
	movzx eax, byte [edx+0x11]
	movss xmm2, dword [eax+ebx]
	movzx eax, byte [edx+0x12]
	movss xmm1, dword [eax+ebx]
	add ecx, 0x1
	mulss xmm1, [edx+0x8]
	mulss xmm0, [edx]
	addss xmm0, [edx+0xc]
	mulss xmm2, [edx+0x4]
	addss xmm0, xmm2
	addss xmm1, xmm0
	ucomiss xmm3, xmm1
	jae _Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_320
_Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_340:
	add edx, 0x14
	cmp [ebp-0x60], ecx
	jnz _Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_350
_Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_330:
	mov byte [esi], 0x1
	test edi, 0xffff0000
	jz _Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_360
_Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_270:
	xor ecx, ecx
	xor esi, esi
	mov edx, edi
	shl edx, cl
	test edx, 0xff000000
	jz _Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_370
_Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_280:
	xor ebx, ebx
	xor eax, eax
	add esi, eax
	mov ecx, ebx
	shl edx, cl
	test edx, 0xf0000000
	jz _Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_380
_Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_290:
	xor ebx, ebx
	xor eax, eax
	add esi, eax
	mov ecx, ebx
	shl edx, cl
	test edx, 0xc0000000
	jz _Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_390
_Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_300:
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
	jbe _Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_400
_Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_310:
	add dword [ebp-0x2c], 0x1
	add dword [ebp-0x40], 0x4
	mov edx, [ebp-0x2c]
	cmp [ebp-0x5c], edx
	jz _Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_260
	mov ebx, [ebp-0x40]
	jmp _Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_410
_Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_260:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_190:
	mov ebx, [ebp-0x48]
	mov edx, [ebx+0xc]
	mov ecx, ebx
	jmp _Z37R_AddCellSceneEntSurfacesInFrustumCmdPv_420
	add [eax], al


;Initialized global or static variables of r_dpvs_sceneent:
SECTION .data


;Initialized constant data of r_dpvs_sceneent:
SECTION .rdata


;Zero initialized global or static variables of r_dpvs_sceneent:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

