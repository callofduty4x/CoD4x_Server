;Imports of r_dpvs_sceneent:
	extern scene
	extern rgp
	extern gfxCfg
	extern R_AddEntitySurfacesInFrustumCmd
	extern R_AddWorkerCmd

;Exports of r_dpvs_sceneent:
	global R_AddCellSceneEntSurfacesInFrustumCmd


SECTION .text


;R_AddCellSceneEntSurfacesInFrustumCmd(void*)
R_AddCellSceneEntSurfacesInFrustumCmd:
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
	jz R_AddCellSceneEntSurfacesInFrustumCmd_10
	mov [ebp-0x3c], ecx
	mov dword [ebp-0x58], 0x0
	mov edx, ecx
R_AddCellSceneEntSurfacesInFrustumCmd_200:
	mov edi, [edx]
R_AddCellSceneEntSurfacesInFrustumCmd_70:
	test edi, 0xffff0000
	jnz R_AddCellSceneEntSurfacesInFrustumCmd_20
R_AddCellSceneEntSurfacesInFrustumCmd_140:
	mov ecx, 0x10
	mov esi, 0x10
	mov edx, edi
	shl edx, cl
	test edx, 0xff000000
	jnz R_AddCellSceneEntSurfacesInFrustumCmd_30
R_AddCellSceneEntSurfacesInFrustumCmd_150:
	mov ebx, 0x8
	mov eax, 0x8
	lea esi, [eax+esi]
	mov ecx, ebx
	shl edx, cl
	test edx, 0xf0000000
	jnz R_AddCellSceneEntSurfacesInFrustumCmd_40
R_AddCellSceneEntSurfacesInFrustumCmd_160:
	mov ebx, 0x4
	mov eax, 0x4
	lea esi, [eax+esi]
	mov ecx, ebx
	shl edx, cl
	test edx, 0xc0000000
	jnz R_AddCellSceneEntSurfacesInFrustumCmd_50
R_AddCellSceneEntSurfacesInFrustumCmd_170:
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
	ja R_AddCellSceneEntSurfacesInFrustumCmd_60
R_AddCellSceneEntSurfacesInFrustumCmd_180:
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
	jnz R_AddCellSceneEntSurfacesInFrustumCmd_70
	lea ecx, [ebx+ebx]
	mov edx, [ebp-0x4c]
	movzx eax, word [edx+ecx]
	movzx edx, ax
	add ax, 0x1
	jz R_AddCellSceneEntSurfacesInFrustumCmd_80
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
	jg R_AddCellSceneEntSurfacesInFrustumCmd_90
R_AddCellSceneEntSurfacesInFrustumCmd_210:
	lea ebx, [esi+0x30]
	mov ecx, [ebp-0x64]
	test ecx, ecx
	jle R_AddCellSceneEntSurfacesInFrustumCmd_100
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
	jae R_AddCellSceneEntSurfacesInFrustumCmd_70
	mov ecx, 0x1
	jmp R_AddCellSceneEntSurfacesInFrustumCmd_110
R_AddCellSceneEntSurfacesInFrustumCmd_120:
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
	jae R_AddCellSceneEntSurfacesInFrustumCmd_70
R_AddCellSceneEntSurfacesInFrustumCmd_110:
	add edx, 0x14
	cmp ecx, [ebp-0x64]
	jnz R_AddCellSceneEntSurfacesInFrustumCmd_120
R_AddCellSceneEntSurfacesInFrustumCmd_100:
	mov [ebp-0x28], esi
	mov eax, [esi+0x2c]
	cmp eax, 0x1
	jbe R_AddCellSceneEntSurfacesInFrustumCmd_130
	lea eax, [ebp-0x28]
	mov [esp], eax
	call R_AddEntitySurfacesInFrustumCmd
	test edi, 0xffff0000
	jz R_AddCellSceneEntSurfacesInFrustumCmd_140
R_AddCellSceneEntSurfacesInFrustumCmd_20:
	xor ecx, ecx
	xor esi, esi
	mov edx, edi
	shl edx, cl
	test edx, 0xff000000
	jz R_AddCellSceneEntSurfacesInFrustumCmd_150
R_AddCellSceneEntSurfacesInFrustumCmd_30:
	xor ebx, ebx
	xor eax, eax
	lea esi, [eax+esi]
	mov ecx, ebx
	shl edx, cl
	test edx, 0xf0000000
	jz R_AddCellSceneEntSurfacesInFrustumCmd_160
R_AddCellSceneEntSurfacesInFrustumCmd_40:
	xor ebx, ebx
	xor eax, eax
	lea esi, [eax+esi]
	mov ecx, ebx
	shl edx, cl
	test edx, 0xc0000000
	jz R_AddCellSceneEntSurfacesInFrustumCmd_170
R_AddCellSceneEntSurfacesInFrustumCmd_50:
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
	jbe R_AddCellSceneEntSurfacesInFrustumCmd_180
R_AddCellSceneEntSurfacesInFrustumCmd_60:
	add dword [ebp-0x58], 0x1
	add dword [ebp-0x3c], 0x4
	mov ecx, [ebp-0x58]
	cmp [ebp-0x5c], ecx
	jz R_AddCellSceneEntSurfacesInFrustumCmd_190
	mov edx, [ebp-0x3c]
	jmp R_AddCellSceneEntSurfacesInFrustumCmd_200
R_AddCellSceneEntSurfacesInFrustumCmd_90:
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
	jae R_AddCellSceneEntSurfacesInFrustumCmd_70
	mov edx, 0x1
R_AddCellSceneEntSurfacesInFrustumCmd_220:
	add eax, 0x14
	cmp edx, [ebp-0x60]
	jz R_AddCellSceneEntSurfacesInFrustumCmd_210
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
	jb R_AddCellSceneEntSurfacesInFrustumCmd_220
	jmp R_AddCellSceneEntSurfacesInFrustumCmd_70
R_AddCellSceneEntSurfacesInFrustumCmd_80:
	mov edx, [ebp-0x50]
	movzx eax, word [edx+ecx]
	movzx edx, ax
	add ax, 0x1
	jz R_AddCellSceneEntSurfacesInFrustumCmd_70
	mov ecx, [ebp-0x54]
	movss xmm4, dword [ecx+ebx*4]
	lea edx, [edx+edx*8]
	mov eax, scene
	lea eax, [eax+edx*8+0x13ba00]
	lea ebx, [eax+0x50]
	mov edx, [ebp-0x60]
	test edx, edx
	jle R_AddCellSceneEntSurfacesInFrustumCmd_230
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
	jae R_AddCellSceneEntSurfacesInFrustumCmd_70
	mov eax, ecx
	mov edx, 0x1
	jmp R_AddCellSceneEntSurfacesInFrustumCmd_240
R_AddCellSceneEntSurfacesInFrustumCmd_250:
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
	jae R_AddCellSceneEntSurfacesInFrustumCmd_70
R_AddCellSceneEntSurfacesInFrustumCmd_240:
	add eax, 0x14
	cmp edx, [ebp-0x60]
	jnz R_AddCellSceneEntSurfacesInFrustumCmd_250
R_AddCellSceneEntSurfacesInFrustumCmd_230:
	mov byte [esi], 0x1
	jmp R_AddCellSceneEntSurfacesInFrustumCmd_70
R_AddCellSceneEntSurfacesInFrustumCmd_130:
	lea eax, [ebp-0x28]
	mov [esp+0x4], eax
	mov dword [esp], 0x7
	call R_AddWorkerCmd
	jmp R_AddCellSceneEntSurfacesInFrustumCmd_70
R_AddCellSceneEntSurfacesInFrustumCmd_10:
	mov ecx, [ebp-0x48]
R_AddCellSceneEntSurfacesInFrustumCmd_420:
	mov eax, [ecx]
	shl eax, 0x7
	add eax, [ebp-0x34]
	lea eax, [edx+eax*4]
	mov edx, [ebp-0x5c]
	test edx, edx
	jz R_AddCellSceneEntSurfacesInFrustumCmd_260
	mov [ebp-0x40], eax
	mov dword [ebp-0x2c], 0x0
	pxor xmm4, xmm4
	mov ebx, eax
R_AddCellSceneEntSurfacesInFrustumCmd_410:
	mov edi, [ebx]
R_AddCellSceneEntSurfacesInFrustumCmd_320:
	test edi, 0xffff0000
	jnz R_AddCellSceneEntSurfacesInFrustumCmd_270
R_AddCellSceneEntSurfacesInFrustumCmd_360:
	mov ecx, 0x10
	mov esi, 0x10
	mov edx, edi
	shl edx, cl
	test edx, 0xff000000
	jnz R_AddCellSceneEntSurfacesInFrustumCmd_280
R_AddCellSceneEntSurfacesInFrustumCmd_370:
	mov ebx, 0x8
	mov eax, 0x8
	add esi, eax
	mov ecx, ebx
	shl edx, cl
	test edx, 0xf0000000
	jnz R_AddCellSceneEntSurfacesInFrustumCmd_290
R_AddCellSceneEntSurfacesInFrustumCmd_380:
	mov ebx, 0x4
	mov eax, 0x4
	add esi, eax
	mov ecx, ebx
	shl edx, cl
	test edx, 0xc0000000
	jnz R_AddCellSceneEntSurfacesInFrustumCmd_300
R_AddCellSceneEntSurfacesInFrustumCmd_390:
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
	ja R_AddCellSceneEntSurfacesInFrustumCmd_310
R_AddCellSceneEntSurfacesInFrustumCmd_400:
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
	jnz R_AddCellSceneEntSurfacesInFrustumCmd_320
	mov eax, [ebp-0x54]
	mov ebx, [eax+edx*4]
	mov eax, [ebp-0x60]
	test eax, eax
	jle R_AddCellSceneEntSurfacesInFrustumCmd_330
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
	jae R_AddCellSceneEntSurfacesInFrustumCmd_320
	mov edx, ecx
	mov ecx, 0x1
	jmp R_AddCellSceneEntSurfacesInFrustumCmd_340
R_AddCellSceneEntSurfacesInFrustumCmd_350:
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
	jae R_AddCellSceneEntSurfacesInFrustumCmd_320
R_AddCellSceneEntSurfacesInFrustumCmd_340:
	add edx, 0x14
	cmp [ebp-0x60], ecx
	jnz R_AddCellSceneEntSurfacesInFrustumCmd_350
R_AddCellSceneEntSurfacesInFrustumCmd_330:
	mov byte [esi], 0x1
	test edi, 0xffff0000
	jz R_AddCellSceneEntSurfacesInFrustumCmd_360
R_AddCellSceneEntSurfacesInFrustumCmd_270:
	xor ecx, ecx
	xor esi, esi
	mov edx, edi
	shl edx, cl
	test edx, 0xff000000
	jz R_AddCellSceneEntSurfacesInFrustumCmd_370
R_AddCellSceneEntSurfacesInFrustumCmd_280:
	xor ebx, ebx
	xor eax, eax
	add esi, eax
	mov ecx, ebx
	shl edx, cl
	test edx, 0xf0000000
	jz R_AddCellSceneEntSurfacesInFrustumCmd_380
R_AddCellSceneEntSurfacesInFrustumCmd_290:
	xor ebx, ebx
	xor eax, eax
	add esi, eax
	mov ecx, ebx
	shl edx, cl
	test edx, 0xc0000000
	jz R_AddCellSceneEntSurfacesInFrustumCmd_390
R_AddCellSceneEntSurfacesInFrustumCmd_300:
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
	jbe R_AddCellSceneEntSurfacesInFrustumCmd_400
R_AddCellSceneEntSurfacesInFrustumCmd_310:
	add dword [ebp-0x2c], 0x1
	add dword [ebp-0x40], 0x4
	mov edx, [ebp-0x2c]
	cmp [ebp-0x5c], edx
	jz R_AddCellSceneEntSurfacesInFrustumCmd_260
	mov ebx, [ebp-0x40]
	jmp R_AddCellSceneEntSurfacesInFrustumCmd_410
R_AddCellSceneEntSurfacesInFrustumCmd_260:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_AddCellSceneEntSurfacesInFrustumCmd_190:
	mov ebx, [ebp-0x48]
	mov edx, [ebx+0xc]
	mov ecx, ebx
	jmp R_AddCellSceneEntSurfacesInFrustumCmd_420
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

