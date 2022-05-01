;Imports of cg_localents:
	extern memset
	extern _Z9Com_Error11errorParm_tPKcz
	extern cgArray
	extern _Z21BG_EvaluateTrajectoryPK12trajectory_tiPf
	extern _Z15Vec3NormalizeToPKfPf
	extern cg_tracerLength
	extern _Z13CG_DrawTracerPKfS0_PK8refdef_s

;Exports of cg_localents:
	global cg_localEntities
	global _Z19CG_AllocLocalEntityi
	global _Z20CG_InitLocalEntitiesi
	global _Z28CG_AddLocalEntityTracerBeamsi
	global cg_activeLocalEntities
	global cg_freeLocalEntities


SECTION .text


;CG_AllocLocalEntity(int)
_Z19CG_AllocLocalEntityi:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov edx, [esi*4+cg_freeLocalEntities]
	test edx, edx
	jz _Z19CG_AllocLocalEntityi_10
	mov ebx, [esi*4+cg_freeLocalEntities]
_Z19CG_AllocLocalEntityi_30:
	mov eax, [ebx+0x4]
	mov [esi*4+cg_freeLocalEntities], eax
	mov dword [esp+0x8], 0x50
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call memset
	lea edx, [esi+esi*4]
	shl edx, 0x4
	mov eax, [edx+cg_activeLocalEntities+0x4]
	mov [ebx+0x4], eax
	lea eax, [edx+cg_activeLocalEntities]
	mov [ebx], eax
	mov eax, [edx+cg_activeLocalEntities+0x4]
	mov [eax], ebx
	mov [edx+cg_activeLocalEntities+0x4], ebx
	mov eax, ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
_Z19CG_AllocLocalEntityi_10:
	lea eax, [esi+esi*4]
	shl eax, 0x4
	mov ebx, [eax+cg_activeLocalEntities]
	mov eax, [ebx]
	test eax, eax
	jz _Z19CG_AllocLocalEntityi_20
_Z19CG_AllocLocalEntityi_40:
	mov edx, [ebx]
	mov eax, [ebx+0x4]
	mov [edx+0x4], eax
	mov eax, [ebx+0x4]
	mov [eax], edx
	mov eax, [esi*4+cg_freeLocalEntities]
	mov [ebx+0x4], eax
	mov [esi*4+cg_freeLocalEntities], ebx
	jmp _Z19CG_AllocLocalEntityi_30
_Z19CG_AllocLocalEntityi_20:
	mov dword [esp+0x4], _cstring_cg_freelocalenti
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	jmp _Z19CG_AllocLocalEntityi_40
	add [eax], al


;CG_InitLocalEntities(int)
_Z20CG_InitLocalEntitiesi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov edi, [ebp+0x8]
	lea ebx, [edi+edi*4]
	mov esi, ebx
	shl esi, 0xb
	add esi, cg_localEntities
	mov dword [esp+0x8], 0x2800
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call memset
	shl ebx, 0x4
	lea eax, [ebx+cg_activeLocalEntities]
	mov [ebx+cg_activeLocalEntities+0x4], eax
	mov [ebx+cg_activeLocalEntities], eax
	mov [edi*4+cg_freeLocalEntities], esi
	mov edx, esi
	xor ecx, ecx
	mov eax, esi
_Z20CG_InitLocalEntitiesi_10:
	add ecx, 0x1
	add eax, 0x50
	mov [edx+0x4], eax
	add edx, 0x50
	cmp ecx, 0x7f
	jnz _Z20CG_InitLocalEntitiesi_10
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;CG_AddLocalEntityTracerBeams(int)
_Z28CG_AddLocalEntityTracerBeamsi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov edi, [ebp+0x8]
	lea eax, [edi+edi*4]
	shl eax, 0x4
	lea edx, [eax+cg_activeLocalEntities]
	mov [ebp-0x54], edx
	mov edx, cgArray
	mov ecx, [edx+0x46128]
	mov [ebp-0x50], ecx
	mov ebx, [eax+cg_activeLocalEntities]
	cmp [ebp-0x54], ebx
	jz _Z28CG_AddLocalEntityTracerBeamsi_10
	mov [ebp-0x58], edx
	jmp _Z28CG_AddLocalEntityTracerBeamsi_20
_Z28CG_AddLocalEntityTracerBeamsi_40:
	test esi, esi
	jz _Z28CG_AddLocalEntityTracerBeamsi_30
_Z28CG_AddLocalEntityTracerBeamsi_60:
	mov eax, [ebx+0x4]
	mov [edx+0x4], eax
	mov eax, [ebx+0x4]
	mov [eax], edx
	mov eax, [edi*4+cg_freeLocalEntities]
	mov [ebx+0x4], eax
	mov [edi*4+cg_freeLocalEntities], ebx
	cmp [ebp-0x54], esi
	jz _Z28CG_AddLocalEntityTracerBeamsi_10
_Z28CG_AddLocalEntityTracerBeamsi_50:
	mov ebx, esi
_Z28CG_AddLocalEntityTracerBeamsi_20:
	mov esi, [ebx]
	mov edx, esi
	mov eax, [ebp-0x50]
	cmp eax, [ebx+0xc]
	jge _Z28CG_AddLocalEntityTracerBeamsi_40
	cmp eax, [ebx+0x14]
	jl _Z28CG_AddLocalEntityTracerBeamsi_40
	lea edx, [ebp-0x24]
	mov [esp+0x8], edx
	mov ecx, [ebp-0x58]
	mov eax, [ecx+0x46128]
	mov [esp+0x4], eax
	lea eax, [ebx+0x10]
	mov [esp], eax
	call _Z21BG_EvaluateTrajectoryPK12trajectory_tiPf
	lea eax, [ebp-0x3c]
	mov [esp+0x4], eax
	lea eax, [ebx+0x28]
	mov [esp], eax
	call _Z15Vec3NormalizeToPKfPf
	fstp st0
	lea eax, [ebx+0x1c]
	movss xmm5, dword [ebp-0x24]
	movss xmm6, dword [ebp-0x20]
	movss xmm0, dword [ebp-0x1c]
	movss [ebp-0x4c], xmm0
	movss xmm3, dword [ebp-0x3c]
	movss xmm4, dword [ebp-0x38]
	movaps xmm1, xmm5
	subss xmm1, [ebx+0x1c]
	mulss xmm1, xmm3
	movaps xmm0, xmm6
	subss xmm0, [eax+0x4]
	mulss xmm0, xmm4
	addss xmm1, xmm0
	movss xmm0, dword [ebp-0x4c]
	subss xmm0, [eax+0x8]
	mulss xmm0, [ebp-0x34]
	addss xmm1, xmm0
	movss xmm7, dword [ebx+0x44]
	subss xmm7, xmm1
	mov eax, cg_tracerLength
	mov eax, [eax]
	movss xmm2, dword [eax+0xc]
	movaps xmm1, xmm2
	subss xmm1, xmm7
	pxor xmm0, xmm0
	cmpss xmm0, xmm1, 0x2
	movaps xmm1, xmm7
	andps xmm1, xmm0
	movaps xmm7, xmm0
	andnps xmm7, xmm2
	orps xmm7, xmm1
	mulss xmm3, xmm7
	addss xmm5, xmm3
	movss [ebp-0x30], xmm5
	mulss xmm4, xmm7
	addss xmm6, xmm4
	movss [ebp-0x2c], xmm6
	mulss xmm7, [ebp-0x34]
	addss xmm7, [ebp-0x4c]
	movss [ebp-0x28], xmm7
	mov eax, [ebp-0x58]
	add eax, 0x492c8
	mov [esp+0x8], eax
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _Z13CG_DrawTracerPKfS0_PK8refdef_s
	cmp [ebp-0x54], esi
	jnz _Z28CG_AddLocalEntityTracerBeamsi_50
_Z28CG_AddLocalEntityTracerBeamsi_10:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z28CG_AddLocalEntityTracerBeamsi_30:
	mov dword [esp+0x4], _cstring_cg_freelocalenti
	mov dword [esp], 0x2
	call _Z9Com_Error11errorParm_tPKcz
	mov edx, [ebx]
	jmp _Z28CG_AddLocalEntityTracerBeamsi_60


;Initialized global or static variables of cg_localents:
SECTION .data


;Initialized constant data of cg_localents:
SECTION .rdata


;Zero initialized global or static variables of cg_localents:
SECTION .bss
cg_localEntities: resb 0x2800
cg_activeLocalEntities: resb 0x60
cg_freeLocalEntities: resb 0x1c


;All cstrings:
SECTION .rdata
_cstring_cg_freelocalenti:		db 015h,"CG_FreeLocalEntity: not active",0



;All constant floats and doubles:
SECTION .rdata

