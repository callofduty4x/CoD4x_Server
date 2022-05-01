;Imports of r_water_load_obj:
	extern memcpy
	extern _Z14Material_Alloci
	extern exp
	extern _Z14GaussianRandomPfS_
	extern _Z2vaPKcz
	extern _Z16R_CreateWaterMapPctt
	extern _Z14Com_PrintErroriPKcz

;Exports of r_water_load_obj:
	global sceneWaterMapSetupsCount
	global sceneWaterMapSetups
	global _Z15R_InitLoadWaterv
	global _Z16R_LoadWaterSetupPK7water_t
	global _Z19R_ShutdownLoadWaterv


SECTION .text


;R_InitLoadWater()
_Z15R_InitLoadWaterv:
	push ebp
	mov ebp, esp
	pop ebp
	ret
	nop


;R_LoadWaterSetup(water_t const*)
_Z16R_LoadWaterSetupPK7water_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xac
	mov eax, [sceneWaterMapSetupsCount]
	mov [ebp-0x2c], eax
	test eax, eax
	jle _Z16R_LoadWaterSetupPK7water_t_10
	mov edx, [ebp+0x8]
	mov ebx, [edx+0xc]
	xor ecx, ecx
	movss xmm6, dword [_data16_7fffffff]
	movsd xmm7, qword [_double_0_10000000]
	mov esi, edx
	add esi, 0x24
	mov edx, sceneWaterMapSetups
	jmp _Z16R_LoadWaterSetupPK7water_t_20
_Z16R_LoadWaterSetupPK7water_t_40:
	add ecx, 0x1
	add edx, 0x44
	cmp ecx, [ebp-0x2c]
	jz _Z16R_LoadWaterSetupPK7water_t_30
_Z16R_LoadWaterSetupPK7water_t_20:
	cmp [edx+0xc], ebx
	jnz _Z16R_LoadWaterSetupPK7water_t_40
	mov eax, [edx+0x10]
	mov edi, [ebp+0x8]
	cmp eax, [edi+0x10]
	jnz _Z16R_LoadWaterSetupPK7water_t_40
	movss xmm0, dword [edx+0x14]
	ucomiss xmm0, [edi+0x14]
	jnz _Z16R_LoadWaterSetupPK7water_t_40
	jp _Z16R_LoadWaterSetupPK7water_t_40
	movss xmm0, dword [edx+0x18]
	ucomiss xmm0, [edi+0x18]
	jnz _Z16R_LoadWaterSetupPK7water_t_40
	jp _Z16R_LoadWaterSetupPK7water_t_40
	movss xmm0, dword [edx+0x2c]
	subss xmm0, [edi+0x2c]
	andps xmm0, xmm6
	ucomiss xmm0, [_float_0_00100000]
	ja _Z16R_LoadWaterSetupPK7water_t_40
	movss xmm0, dword [edx+0x1c]
	subss xmm0, [edi+0x1c]
	andps xmm0, xmm6
	cvtss2sd xmm0, xmm0
	ucomisd xmm0, xmm7
	ja _Z16R_LoadWaterSetupPK7water_t_40
	movss xmm0, dword [edx+0x20]
	subss xmm0, [edi+0x20]
	andps xmm0, xmm6
	cvtss2sd xmm0, xmm0
	ucomisd xmm0, xmm7
	ja _Z16R_LoadWaterSetupPK7water_t_40
	movss xmm0, dword [edx+0x24]
	movss xmm1, dword [edi+0x24]
	movss xmm3, dword [edx+0x28]
	movss xmm5, dword [esi+0x4]
	movaps xmm4, xmm0
	mulss xmm4, xmm1
	movaps xmm2, xmm3
	mulss xmm2, xmm5
	addss xmm4, xmm2
	mulss xmm0, xmm0
	mulss xmm3, xmm3
	addss xmm0, xmm3
	mulss xmm1, xmm1
	mulss xmm5, xmm5
	addss xmm1, xmm5
	mulss xmm0, xmm1
	sqrtss xmm0, xmm0
	cvtss2sd xmm0, xmm0
	addsd xmm0, [_double_0_00000000]
	cvtsd2ss xmm0, xmm0
	divss xmm4, xmm0
	subss xmm4, [_float_1_00000000]
	andps xmm4, xmm6
	ucomiss xmm4, [_float_0_00100000]
	ja _Z16R_LoadWaterSetupPK7water_t_40
	mov edi, edx
	jmp _Z16R_LoadWaterSetupPK7water_t_50
_Z16R_LoadWaterSetupPK7water_t_10:
	mov dword [ebp-0x2c], 0x0
	mov eax, [ebp+0x8]
	mov ebx, [eax+0xc]
_Z16R_LoadWaterSetupPK7water_t_120:
	mov eax, [ebp-0x2c]
	shl eax, 0x6
	mov edx, [ebp-0x2c]
	lea edi, [eax+edx*4+sceneWaterMapSetups]
	mov eax, [ebp+0x8]
	imul ebx, [eax+0x10]
	mov dword [esp+0x8], 0x44
	mov [esp+0x4], eax
	mov [esp], edi
	call memcpy
	lea eax, [ebx*8]
	mov [esp], eax
	call _Z14Material_Alloci
	mov [edi+0x4], eax
	shl ebx, 0x2
	mov [esp], ebx
	call _Z14Material_Alloci
	mov [edi+0x8], eax
	movss xmm5, dword [edi+0x20]
	mulss xmm5, xmm5
	mulss xmm5, xmm5
	divss xmm5, dword [edi+0x1c]
	mov esi, [edi+0x10]
	cvtsi2ss xmm0, esi
	mulss xmm0, [edi+0x14]
	cvtss2sd xmm0, xmm0
	movsd xmm1, qword [_double_6_28318531]
	movapd xmm2, xmm1
	divsd xmm2, xmm0
	cvtsd2ss xmm0, xmm2
	movss [ebp-0x48], xmm0
	cvtsi2ss xmm0, dword [edi+0xc]
	mulss xmm0, [edi+0x18]
	cvtss2sd xmm0, xmm0
	divsd xmm1, xmm0
	cvtsd2ss xmm1, xmm1
	movss [ebp-0x44], xmm1
	mov edx, esi
	neg edx
	mov eax, edx
	shr eax, 0x1f
	add eax, edx
	sar eax, 1
	mov [ebp-0x4c], eax
	mov eax, esi
	shr eax, 0x1f
	add eax, esi
	sar eax, 1
	cmp [ebp-0x4c], eax
	jge _Z16R_LoadWaterSetupPK7water_t_60
	mov dword [ebp-0x3c], 0x0
	mov ecx, [edi+0xc]
	jmp _Z16R_LoadWaterSetupPK7water_t_70
_Z16R_LoadWaterSetupPK7water_t_80:
	add dword [ebp-0x4c], 0x1
	mov eax, esi
	shr eax, 0x1f
	add eax, esi
	sar eax, 1
	cmp eax, [ebp-0x4c]
	jle _Z16R_LoadWaterSetupPK7water_t_60
_Z16R_LoadWaterSetupPK7water_t_70:
	cvtsi2ss xmm0, dword [ebp-0x4c]
	movss xmm1, dword [ebp-0x48]
	mulss xmm1, xmm0
	movss [ebp-0x40], xmm1
	mov edx, ecx
	neg edx
	mov eax, edx
	shr eax, 0x1f
	lea ebx, [eax+edx]
	sar ebx, 1
	mov eax, ecx
	shr eax, 0x1f
	add eax, ecx
	sar eax, 1
	cmp ebx, eax
	jge _Z16R_LoadWaterSetupPK7water_t_80
	mulss xmm1, xmm1
	movss [ebp-0x34], xmm1
	mov esi, [ebp-0x3c]
	shl esi, 0x3
	mov eax, [ebp-0x3c]
	shl eax, 0x2
	mov [ebp-0x30], eax
	jmp _Z16R_LoadWaterSetupPK7water_t_90
_Z16R_LoadWaterSetupPK7water_t_110:
	movss xmm0, dword [edi+0x2c]
	movss [ebp-0x50], xmm0
	cvtss2sd xmm1, xmm0
	movaps xmm2, xmm5
	mulss xmm2, xmm3
	movss xmm0, dword [_float__1_00000000]
	divss xmm0, xmm2
	cvtss2sd xmm0, xmm0
	movsd [esp], xmm0
	movsd [ebp-0x78], xmm1
	movss [ebp-0x88], xmm3
	movss [ebp-0x98], xmm4
	movss [ebp-0xa8], xmm5
	call exp
	fstp qword [ebp-0x58]
	movsd xmm1, qword [ebp-0x78]
	mulsd xmm1, [ebp-0x58]
	movss xmm3, dword [ebp-0x88]
	movaps xmm0, xmm3
	mulss xmm0, xmm3
	mulss xmm3, xmm0
	cvtss2sd xmm0, xmm3
	divsd xmm1, xmm0
	movss xmm4, dword [ebp-0x98]
	mulss xmm4, xmm4
	cvtss2sd xmm0, xmm4
	mulsd xmm1, xmm0
	cvtsd2ss xmm0, xmm1
	mulss xmm0, [_float_0_50000000]
	sqrtss xmm0, xmm0
	mulss xmm0, [ebp-0x50]
	mov eax, [edi+0x4]
	movaps xmm1, xmm0
	mulss xmm1, [ebp-0x20]
	movss [eax+esi], xmm1
	mov eax, [edi+0x4]
	mulss xmm0, [ebp-0x1c]
	movss [eax+esi+0x4], xmm0
	sqrtss xmm0, [ebp-0x38]
	mov eax, [edi+0x8]
	mov edx, [ebp-0x30]
	movss [eax+edx], xmm0
	movss xmm5, dword [ebp-0xa8]
	add dword [ebp-0x3c], 0x1
	add ebx, 0x1
	add esi, 0x8
	add dword [ebp-0x30], 0x4
	mov ecx, [edi+0xc]
	mov eax, ecx
	shr eax, 0x1f
	add eax, ecx
	sar eax, 1
	cmp ebx, eax
	jge _Z16R_LoadWaterSetupPK7water_t_100
_Z16R_LoadWaterSetupPK7water_t_90:
	cvtsi2ss xmm0, ebx
	mulss xmm0, [ebp-0x44]
	lea edx, [ebp-0x1c]
	mov [esp+0x4], edx
	lea eax, [ebp-0x20]
	mov [esp], eax
	movss [ebp-0x68], xmm0
	movss [ebp-0xa8], xmm5
	call _Z14GaussianRandomPfS_
	movss xmm0, dword [ebp-0x68]
	movaps xmm3, xmm0
	mulss xmm3, xmm0
	addss xmm3, [ebp-0x34]
	sqrtss xmm1, xmm3
	movss [ebp-0x38], xmm1
	mulss xmm1, [edi+0x1c]
	movss [ebp-0x38], xmm1
	movss xmm4, dword [ebp-0x40]
	mulss xmm4, [edi+0x24]
	mulss xmm0, [edi+0x28]
	addss xmm4, xmm0
	pxor xmm2, xmm2
	ucomiss xmm2, xmm4
	movss xmm5, dword [ebp-0xa8]
	jb _Z16R_LoadWaterSetupPK7water_t_110
	mov eax, [edi+0x4]
	mov dword [eax+esi], 0x0
	mov eax, [edi+0x4]
	mov dword [eax+esi+0x4], 0x0
	mov eax, [edi+0x8]
	mov edx, [ebp-0x30]
	mov dword [eax+edx], 0x0
	add dword [ebp-0x3c], 0x1
	add ebx, 0x1
	add esi, 0x8
	add dword [ebp-0x30], 0x4
	mov ecx, [edi+0xc]
	mov eax, ecx
	shr eax, 0x1f
	add eax, ecx
	sar eax, 1
	cmp ebx, eax
	jl _Z16R_LoadWaterSetupPK7water_t_90
_Z16R_LoadWaterSetupPK7water_t_100:
	mov esi, [edi+0x10]
	add dword [ebp-0x4c], 0x1
	mov eax, esi
	shr eax, 0x1f
	add eax, esi
	sar eax, 1
	cmp eax, [ebp-0x4c]
	jg _Z16R_LoadWaterSetupPK7water_t_70
_Z16R_LoadWaterSetupPK7water_t_60:
	mov eax, [ebp+0x8]
	movzx ebx, word [eax+0x10]
	movzx esi, word [eax+0xc]
	mov edx, [ebp-0x2c]
	mov [esp+0x4], edx
	mov dword [esp], _cstring_watersetupi
	call _Z2vaPKcz
	mov [esp+0x8], ebx
	mov [esp+0x4], esi
	mov [esp], eax
	call _Z16R_CreateWaterMapPctt
	mov [edi+0x40], eax
	add dword [sceneWaterMapSetupsCount], 0x1
_Z16R_LoadWaterSetupPK7water_t_50:
	mov eax, edi
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16R_LoadWaterSetupPK7water_t_30:
	cmp dword [ebp-0x2c], 0x10
	jnz _Z16R_LoadWaterSetupPK7water_t_120
	mov dword [esp+0x8], 0x10
	mov dword [esp+0x4], _cstring_error_map_uses_m
	mov dword [esp], 0x8
	call _Z14Com_PrintErroriPKcz
	xor edi, edi
	mov eax, edi
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;R_ShutdownLoadWater()
_Z19R_ShutdownLoadWaterv:
	push ebp
	mov ebp, esp
	mov dword [sceneWaterMapSetupsCount], 0x0
	pop ebp
	ret
	nop


;Initialized global or static variables of r_water_load_obj:
SECTION .data


;Initialized constant data of r_water_load_obj:
SECTION .rdata


;Zero initialized global or static variables of r_water_load_obj:
SECTION .bss
sceneWaterMapSetupsCount: resb 0x20
sceneWaterMapSetups: resb 0x460


;All cstrings:
SECTION .rdata
_cstring_watersetupi:		db "watersetup%i",0
_cstring_error_map_uses_m:		db "ERROR: map uses more than %i waterMap textures",0ah,0



;All constant floats and doubles:
SECTION .rdata
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; OWORD
_double_0_10000000:		dq 0x3fb999999999999a	; 0.1
_float_0_00100000:		dd 0x3a83126f	; 0.001
_double_0_00000000:		dq 0x3ddb7cdfd9d7bdbb	; 1e-10
_float_1_00000000:		dd 0x3f800000	; 1
_double_6_28318531:		dq 0x401921fb54442d18	; 6.28319
_float__1_00000000:		dd 0xbf800000	; -1
_float_0_50000000:		dd 0x3f000000	; 0.5

