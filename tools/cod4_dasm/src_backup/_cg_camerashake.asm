;Imports of cg_camerashake:
	extern cgArray
	extern sin
	extern _Z7crandomv
	extern memset

;Exports of cg_camerashake:
	global s_cameraShakeSet
	global _Z14CG_ShakeCamerai
	global _Z19CG_StartShakeCameraifiPff
	global _Z20CG_ClearCameraShakesi


SECTION .text


;CG_ShakeCamera(int)
_Z14CG_ShakeCamerai:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov eax, [ebp+0x8]
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*4]
	lea esi, [edx*4+s_cameraShakeSet]
	mov ebx, cgArray
	cvtsi2ss xmm6, dword [ebx+0x46128]
	divss xmm6, dword [_float_600_00000000]
	pxor xmm5, xmm5
	movaps xmm7, xmm5
	movss [ebp-0x6c], xmm5
	mov edi, [ebp-0x6c]
	xor ecx, ecx
	mov edx, esi
_Z14CG_ShakeCamerai_30:
	mov eax, [ebx+0x46128]
	sub eax, [edx]
	js _Z14CG_ShakeCamerai_10
	cvtsi2ss xmm3, eax
	movss xmm4, dword [edx+0x8]
	ucomiss xmm3, xmm4
	jb _Z14CG_ShakeCamerai_20
_Z14CG_ShakeCamerai_10:
	add ecx, 0x1
	add edx, 0x24
	cmp ecx, 0x4
	jnz _Z14CG_ShakeCamerai_30
	movss xmm0, dword [ebx+0x50490]
	movss [ebp-0x1c], xmm0
	ucomiss xmm0, xmm5
	jbe _Z14CG_ShakeCamerai_40
	movaps xmm5, xmm0
	ucomiss xmm7, xmm5
	jae _Z14CG_ShakeCamerai_50
_Z14CG_ShakeCamerai_70:
	movss xmm0, dword [_float_1_00000000]
	minss xmm0, xmm5
	movaps xmm5, xmm0
	cvtss2sd xmm6, xmm6
	movsd [ebp-0x30], xmm6
	cvtss2sd xmm1, [esi+0x90]
	movsd [ebp-0x28], xmm1
	movapd xmm0, xmm6
	mulsd xmm0, [_double_25_13274123]
	addsd xmm0, xmm1
	movsd [esp], xmm0
	movss [ebp-0x68], xmm5
	call sin
	fstp qword [ebp-0x40]
	cvtsd2ss xmm0, [ebp-0x40]
	mulss xmm0, [ebp-0x1c]
	mulss xmm0, [_float_18_00000000]
	movss xmm5, dword [ebp-0x68]
	mulss xmm0, xmm5
	addss xmm0, [ebx+0x4d360]
	movss [ebx+0x4d360], xmm0
	movsd xmm0, qword [ebp-0x30]
	mulsd xmm0, [_double_47_12388980]
	addsd xmm0, [ebp-0x28]
	movsd [esp], xmm0
	movss [ebp-0x68], xmm5
	call sin
	fstp qword [ebp-0x48]
	cvtsd2ss xmm0, [ebp-0x48]
	mulss xmm0, [ebp-0x1c]
	mulss xmm0, [_float_16_00000000]
	movss xmm5, dword [ebp-0x68]
	mulss xmm0, xmm5
	addss xmm0, [ebx+0x4d364]
	movss [ebx+0x4d364], xmm0
	movsd xmm0, qword [ebp-0x30]
	mulsd xmm0, [_double_37_69911184]
	movsd xmm1, qword [ebp-0x28]
	addsd xmm1, xmm0
	movsd [esp], xmm1
	movss [ebp-0x68], xmm5
	call sin
	fstp qword [ebp-0x50]
	cvtsd2ss xmm0, [ebp-0x50]
	mulss xmm0, [ebp-0x1c]
	movss [ebp-0x1c], xmm0
	mulss xmm0, [_float_10_00000000]
	movss xmm5, dword [ebp-0x68]
	mulss xmm5, xmm0
	addss xmm5, [ebx+0x4d368]
	movss [ebx+0x4d368], xmm5
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14CG_ShakeCamerai_20:
	movss xmm0, dword [ebx+0x492e0]
	subss xmm0, [edx+0x10]
	movss xmm1, dword [ebx+0x492e4]
	subss xmm1, [edx+0x14]
	movss xmm2, dword [ebx+0x492e8]
	subss xmm2, [edx+0x18]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm0, xmm0
	divss xmm0, dword [edx+0xc]
	movss xmm1, dword [_float_1_00000000]
	subss xmm1, xmm0
	movaps xmm0, xmm1
	divss xmm3, xmm4
	movss xmm1, dword [_float_1_00000000]
	subss xmm1, xmm3
	mulss xmm1, [edx+0x4]
	ucomiss xmm7, xmm1
	jae _Z14CG_ShakeCamerai_10
	ucomiss xmm0, xmm7
	jb _Z14CG_ShakeCamerai_60
	mulss xmm0, xmm1
_Z14CG_ShakeCamerai_80:
	movss [edx+0x1c], xmm0
	movss [edx+0x20], xmm1
	ucomiss xmm0, xmm5
	jbe _Z14CG_ShakeCamerai_10
	movaps xmm5, xmm0
	movss [ebp-0x6c], xmm1
	mov edi, [ebp-0x6c]
	jmp _Z14CG_ShakeCamerai_10
_Z14CG_ShakeCamerai_40:
	mov [ebp-0x1c], edi
	ucomiss xmm7, xmm5
	jb _Z14CG_ShakeCamerai_70
_Z14CG_ShakeCamerai_50:
	call _Z7crandomv
	fstp dword [ebp-0x34]
	cvtss2sd xmm0, [ebp-0x34]
	mulsd xmm0, [_double_3_14159265]
	cvtsd2ss xmm0, xmm0
	movss [esi+0x90], xmm0
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z14CG_ShakeCamerai_60:
	divss xmm0, xmm1
	jmp _Z14CG_ShakeCamerai_80
	add [eax], al


;CG_StartShakeCamera(int, float, int, float*, float)
_Z19CG_StartShakeCameraifiPff:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov ecx, [ebp+0x8]
	mov eax, [ebp+0x14]
	cvtsi2ss xmm4, dword [ebp+0x10]
	mov edx, cgArray
	mov esi, [edx+0x46128]
	movss xmm7, dword [eax]
	movss xmm6, dword [eax+0x4]
	movss xmm5, dword [eax+0x8]
	pxor xmm3, xmm3
	ucomiss xmm3, xmm4
	jb _Z19CG_StartShakeCameraifiPff_10
_Z19CG_StartShakeCameraifiPff_70:
	movaps xmm1, xmm3
_Z19CG_StartShakeCameraifiPff_90:
	lea eax, [ecx+ecx*8]
	lea eax, [ecx+eax*4]
	lea ebx, [eax*4+s_cameraShakeSet]
	mov edx, ebx
	xor ecx, ecx
	cvtsi2ss xmm2, esi
_Z19CG_StartShakeCameraifiPff_30:
	mov eax, [edx]
	cmp esi, eax
	jl _Z19CG_StartShakeCameraifiPff_20
	cvtsi2ss xmm0, eax
	addss xmm0, [edx+0x8]
	ucomiss xmm2, xmm0
	jae _Z19CG_StartShakeCameraifiPff_20
	add ecx, 0x1
	add edx, 0x24
	cmp ecx, 0x4
	jnz _Z19CG_StartShakeCameraifiPff_30
	mov eax, ebx
	movaps xmm2, xmm3
	xor edx, edx
_Z19CG_StartShakeCameraifiPff_50:
	movss xmm0, dword [eax+0x1c]
	ucomiss xmm2, xmm0
	jbe _Z19CG_StartShakeCameraifiPff_40
	mov ecx, edx
	movaps xmm2, xmm0
_Z19CG_StartShakeCameraifiPff_40:
	add edx, 0x1
	add eax, 0x24
	cmp edx, 0x4
	jnz _Z19CG_StartShakeCameraifiPff_50
	cmp ecx, 0x4
	jz _Z19CG_StartShakeCameraifiPff_60
	lea eax, [ecx+ecx*8]
	lea eax, [ebx+eax*4]
	movss xmm0, dword [ebp+0x18]
	movss [eax+0xc], xmm0
	movss [eax+0x18], xmm5
	movss [eax+0x14], xmm6
	movss [eax+0x10], xmm7
	mov [eax], esi
	movss [eax+0x8], xmm4
	movss xmm0, dword [ebp+0xc]
	movss [eax+0x4], xmm0
	movss [eax+0x20], xmm1
	movss [eax+0x1c], xmm3
_Z19CG_StartShakeCameraifiPff_60:
	pop ebx
	pop esi
	pop ebp
	ret
_Z19CG_StartShakeCameraifiPff_10:
	movss xmm0, dword [edx+0x492e0]
	subss xmm0, xmm7
	movss xmm1, dword [edx+0x492e4]
	subss xmm1, xmm6
	movss xmm2, dword [edx+0x492e8]
	subss xmm2, xmm5
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	sqrtss xmm0, xmm0
	divss xmm0, dword [ebp+0x18]
	movss xmm1, dword [_float_1_00000000]
	movaps xmm2, xmm1
	subss xmm2, xmm0
	movaps xmm0, xmm3
	divss xmm0, xmm4
	subss xmm1, xmm0
	mulss xmm1, [ebp+0xc]
	ucomiss xmm3, xmm1
	jae _Z19CG_StartShakeCameraifiPff_70
	ucomiss xmm2, xmm3
	jb _Z19CG_StartShakeCameraifiPff_80
	movaps xmm3, xmm2
	mulss xmm3, xmm1
	jmp _Z19CG_StartShakeCameraifiPff_90
_Z19CG_StartShakeCameraifiPff_20:
	movss xmm0, dword [ebp+0x18]
	movss [edx+0xc], xmm0
	movss [edx+0x18], xmm5
	movss [edx+0x14], xmm6
	movss [edx+0x10], xmm7
	mov [edx], esi
	movss [edx+0x8], xmm4
	movss xmm0, dword [ebp+0xc]
	movss [edx+0x4], xmm0
	movss [edx+0x20], xmm1
	movss [edx+0x1c], xmm3
	pop ebx
	pop esi
	pop ebp
	ret
_Z19CG_StartShakeCameraifiPff_80:
	movaps xmm3, xmm2
	divss xmm3, xmm1
	jmp _Z19CG_StartShakeCameraifiPff_90
	add [eax], al


;CG_ClearCameraShakes(int)
_Z20CG_ClearCameraShakesi:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	lea edx, [eax+eax*8]
	lea edx, [eax+edx*4]
	lea edx, [edx*4+s_cameraShakeSet]
	mov dword [esp+0x8], 0x90
	mov dword [esp+0x4], 0x0
	mov [esp], edx
	call memset
	leave
	ret


;Initialized global or static variables of cg_camerashake:
SECTION .data


;Initialized constant data of cg_camerashake:
SECTION .rdata


;Zero initialized global or static variables of cg_camerashake:
SECTION .bss
s_cameraShakeSet: resb 0x100


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_float_600_00000000:		dd 0x44160000	; 600
_float_1_00000000:		dd 0x3f800000	; 1
_double_25_13274123:		dq 0x403921fb54442d18	; 25.1327
_float_18_00000000:		dd 0x41900000	; 18
_double_47_12388980:		dq 0x40478fdb9effea46	; 47.1239
_float_16_00000000:		dd 0x41800000	; 16
_double_37_69911184:		dq 0x4042d97c7f3321d2	; 37.6991
_float_10_00000000:		dd 0x41200000	; 10
_double_3_14159265:		dq 0x400921fb54442d18	; 3.14159

