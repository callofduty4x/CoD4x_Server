;Imports of sv_world:
	extern SV_GentityNum
	extern CM_TraceBox
	extern CM_TransformedBoxTrace
	extern Com_GetServerDObj
	extern AnglesToAxis
	extern MatrixTransposeTransformVector43
	extern DObjGeomTracelinePartBits
	extern G_DObjCalcPose
	extern DObjGeomTraceline
	extern DObjHasContents
	extern CM_TempBoxModel
	extern DObjGetRadius
	extern DObjTracelinePartBits
	extern DObjTraceline
	extern vec3_origin
	extern sv


;	extern svs
;	extern bg_itemlist

;Exports of sv_world:
	global SV_PointTraceToEntity

SECTION .text



;SV_PointTraceToEntity(pointtrace_t const*, svEntity_s*, trace_t*)
SV_PointTraceToEntity:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xec
	mov eax, sv
	add eax, 0x1b30
	mov edx, [ebp+0xc]
	sub edx, eax
	mov eax, edx
	sar eax, 0x3
	imul ebx, eax, 0x677d46cf
	mov [esp], ebx
	call SV_GentityNum
	mov edi, eax
	mov eax, [ebp+0x8]
	mov ecx, [eax+0x28]
	test [edi+0x120], ecx
	jz SV_PointTraceToEntity_10
	mov edx, [eax+0x24]
	test edx, edx
	jz SV_PointTraceToEntity_20
	mov esi, [edx]
	cmp esi, 0x3ff
	jz SV_PointTraceToEntity_20
	cmp byte [edx+0x8], 0x0
	jnz SV_PointTraceToEntity_30
	cmp byte [edx+0x9], 0x0
	jnz SV_PointTraceToEntity_40
SV_PointTraceToEntity_160:
	lea eax, [edi+0x154]
	mov [ebp-0xb0], eax
	cmp word [edi+0x154], 0x0
	jz SV_PointTraceToEntity_20
SV_PointTraceToEntity_170:
	cmp byte [edx+0xa], 0x0
	jz SV_PointTraceToEntity_50
	movzx eax, word [edi+0x154]
	sub eax, 0x1
	cmp eax, [edx+0x4]
	jz SV_PointTraceToEntity_60
SV_PointTraceToEntity_50:
	cmp byte [edx+0xb], 0x0
	jz SV_PointTraceToEntity_20
	mov edx, [ebp-0xb0]
	movzx eax, word [edx]
	sub eax, 0x1
	cmp eax, esi
	jz SV_PointTraceToEntity_10
SV_PointTraceToEntity_20:
	mov ebx, [ebp+0x8]
	mov esi, [ebx+0x2c]
	test esi, esi
	jnz SV_PointTraceToEntity_70
SV_PointTraceToEntity_100:
	mov edx, [ebp+0xc]
	test [edx+0x164], ecx
	jz SV_PointTraceToEntity_10
	mov ebx, [ebp+0x10]
	mov eax, [ebx]
	mov [esp+0xc], eax
	lea eax, [edi+0x130]
	mov [esp+0x8], eax
	lea eax, [edi+0x124]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CM_TraceBox
	test eax, eax
	jnz SV_PointTraceToEntity_10
	cmp byte [edi+0xf5], 0x0
	jz SV_PointTraceToEntity_80
	mov ecx, [edi+0x88]
SV_PointTraceToEntity_190:
	lea eax, [edi+0x148]
	cmp byte [edi+0xf5], 0x0
	jnz SV_PointTraceToEntity_90
	mov edx, vec3_origin
	mov eax, edx
SV_PointTraceToEntity_180:
	mov ebx, [ebp+0x10]
	movss xmm0, dword [ebx]
	movss [ebp-0xac], xmm0
	mov [esp+0x20], eax
	lea eax, [edi+0x13c]
	mov [esp+0x1c], eax
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x28]
	mov [esp+0x18], eax
	mov [esp+0x14], ecx
	mov [esp+0x10], edx
	mov [esp+0xc], edx
	mov eax, ebx
	add eax, 0xc
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov eax, [ebp+0x10]
	mov [esp], eax
	call CM_TransformedBoxTrace
	mov edx, [ebp+0x10]
	movss xmm0, dword [edx]
	ucomiss xmm0, [ebp-0xac]
	jae SV_PointTraceToEntity_10
	mov word [edx+0x22], 0x0
	mov word [edx+0x24], 0x0
	mov word [edx+0x26], 0x0
SV_PointTraceToEntity_150:
	movzx eax, word [edi]
	mov ebx, [ebp+0x10]
	mov dword [ebx+0x1c], 0x1
	mov [ebx+0x20], ax
	mov eax, [edi+0x120]
	mov [ebx+0x14], eax
	mov dword [ebx+0x18], 0x0
SV_PointTraceToEntity_10:
	add esp, 0xec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SV_PointTraceToEntity_70:
	movzx eax, byte [edi+0xf6]
	test al, 0x6
	jz SV_PointTraceToEntity_100
	test al, 0x2
	jz SV_PointTraceToEntity_110
	mov ebx, [ebx+0x30]
	test ebx, ebx
	jz SV_PointTraceToEntity_100
SV_PointTraceToEntity_110:
	mov eax, [edi]
	mov [esp], eax
	call Com_GetServerDObj
	mov esi, eax
	test eax, eax
	jz SV_PointTraceToEntity_120
	test byte [edi+0xf6], 0x4
	jnz SV_PointTraceToEntity_130
	lea eax, [edi+0x13c]
	movss xmm1, dword [edi+0x13c]
	movss [ebp-0x80], xmm1
	movss xmm2, dword [eax+0x4]
	movss [ebp-0x7c], xmm2
	movss xmm3, dword [eax+0x8]
	movss [ebp-0x78], xmm3
	movaps xmm0, xmm1
	addss xmm0, [actorLocationalMins]
	movss [ebp-0x3c], xmm0
	movaps xmm0, xmm2
	addss xmm0, [actorLocationalMins+0x4]
	movss [ebp-0x38], xmm0
	movaps xmm0, xmm3
	addss xmm0, [actorLocationalMins+0x8]
	movss [ebp-0x34], xmm0
	addss xmm1, [actorLocationalMaxs]
	movss [ebp-0x30], xmm1
	addss xmm2, [actorLocationalMaxs+0x4]
	movss [ebp-0x2c], xmm2
	addss xmm3, [actorLocationalMaxs+0x8]
	movss [ebp-0x28], xmm3
SV_PointTraceToEntity_200:
	mov ebx, [ebp+0x10]
	mov eax, [ebx]
	mov [esp+0xc], eax
	lea eax, [ebp-0x30]
	mov [esp+0x8], eax
	lea eax, [ebp-0x3c]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call CM_TraceBox
	test eax, eax
	jnz SV_PointTraceToEntity_10
	lea ebx, [ebp-0xa4]
	mov [esp+0x4], ebx
	lea eax, [edi+0x148]
	mov [esp], eax
	call AnglesToAxis
	lea edx, [ebp-0x24]
	mov [esp+0x8], edx
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call MatrixTransposeTransformVector43
	lea edx, [ebp-0x48]
	mov [esp+0x8], edx
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	add eax, 0xc
	mov [esp], eax
	call MatrixTransposeTransformVector43
	mov ebx, [ebp+0x10]
	mov eax, [ebx]
	mov [ebp-0x74], eax
	test byte [edi+0xf6], 0x4
	jz SV_PointTraceToEntity_140
	lea ebx, [ebp-0x58]
	mov [esp+0x8], ebx
	mov edx, [ebp+0x8]
	mov eax, [edx+0x28]
	mov [esp+0x4], eax
	mov [esp], esi
	call DObjGeomTracelinePartBits
	mov [esp+0x4], ebx
	mov [esp], edi
	call G_DObjCalcPose
	lea eax, [ebp-0x74]
	mov [esp+0x10], eax
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x28]
	mov [esp+0xc], eax
	lea eax, [ebp-0x48]
	mov [esp+0x8], eax
	lea edx, [ebp-0x24]
	mov [esp+0x4], edx
	mov [esp], esi
	call DObjGeomTraceline
SV_PointTraceToEntity_210:
	movss xmm0, dword [ebp-0x74]
	mov ebx, [ebp+0x10]
	ucomiss xmm0, [ebx]
	jae SV_PointTraceToEntity_10
	movss [ebx], xmm0
	mov eax, [ebp-0x70]
	mov [ebx+0x10], eax
	movzx eax, word [ebp-0x60]
	mov [ebx+0x22], ax
	movzx eax, word [ebp-0x5e]
	mov [ebx+0x24], ax
	movzx eax, word [ebp-0x5c]
	mov [ebx+0x26], ax
	mov eax, ebx
	add eax, 0x4
	movss xmm2, dword [ebp-0x6c]
	movaps xmm1, xmm2
	mulss xmm1, [ebp-0xa4]
	movss xmm4, dword [ebp-0x68]
	movaps xmm0, xmm4
	mulss xmm0, [ebp-0x98]
	addss xmm1, xmm0
	movss xmm3, dword [ebp-0x64]
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0x8c]
	addss xmm1, xmm0
	movss [ebx+0x4], xmm1
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0xa0]
	movaps xmm1, xmm4
	mulss xmm1, [ebp-0x94]
	addss xmm0, xmm1
	movaps xmm1, xmm3
	mulss xmm1, [ebp-0x88]
	addss xmm0, xmm1
	movss [eax+0x4], xmm0
	mulss xmm2, [ebp-0x9c]
	mulss xmm4, [ebp-0x90]
	addss xmm2, xmm4
	mulss xmm3, [ebp-0x84]
	addss xmm2, xmm3
	movss [eax+0x8], xmm2
	movss xmm0, dword [ebx+0xc]
	ucomiss xmm0, [_float_0_69999999]
	setae byte [ebx+0x2a]
	jmp SV_PointTraceToEntity_150
SV_PointTraceToEntity_30:
	cmp ebx, esi
	jz SV_PointTraceToEntity_10
	cmp byte [edx+0x9], 0x0
	jz SV_PointTraceToEntity_160
SV_PointTraceToEntity_40:
	cmp ebx, [edx+0x4]
	jz SV_PointTraceToEntity_10
	lea eax, [edi+0x154]
	mov [ebp-0xb0], eax
	cmp word [edi+0x154], 0x0
	jz SV_PointTraceToEntity_20
	jmp SV_PointTraceToEntity_170
SV_PointTraceToEntity_90:
	mov edx, vec3_origin
	jmp SV_PointTraceToEntity_180
SV_PointTraceToEntity_80:
	mov eax, [edi+0x120]
	mov [esp+0x8], eax
	lea eax, [edi+0x114]
	mov [esp+0x4], eax
	lea eax, [edi+0x108]
	mov [esp], eax
	call CM_TempBoxModel
	mov ecx, eax
	jmp SV_PointTraceToEntity_190
SV_PointTraceToEntity_130:
	mov edx, [ebp+0x8]
	mov eax, [edx+0x28]
	mov [esp+0x4], eax
	mov [esp], esi
	call DObjHasContents
	test eax, eax
	jz SV_PointTraceToEntity_10
	lea edx, [edi+0x13c]
	mov eax, [edi+0x13c]
	mov [ebp-0x80], eax
	mov eax, [edx+0x4]
	mov [ebp-0x7c], eax
	mov eax, [edx+0x8]
	mov [ebp-0x78], eax
	mov [esp], esi
	call DObjGetRadius
	fstp dword [ebp-0xbc]
	movss xmm1, dword [ebp-0xbc]
	movss xmm3, dword [ebp-0x78]
	subss xmm3, xmm1
	movss xmm2, dword [ebp-0x7c]
	subss xmm2, xmm1
	movss xmm0, dword [ebp-0x80]
	subss xmm0, xmm1
	movss [ebp-0x3c], xmm0
	movss [ebp-0x38], xmm2
	movss [ebp-0x34], xmm3
	movaps xmm2, xmm1
	addss xmm2, [ebp-0x78]
	movaps xmm0, xmm1
	addss xmm0, [ebp-0x7c]
	addss xmm1, [ebp-0x80]
	movss [ebp-0x30], xmm1
	movss [ebp-0x2c], xmm0
	movss [ebp-0x28], xmm2
	jmp SV_PointTraceToEntity_200
SV_PointTraceToEntity_120:
	mov eax, [ebp+0x8]
	mov ecx, [eax+0x28]
	jmp SV_PointTraceToEntity_100
SV_PointTraceToEntity_60:
	cmp ebx, esi
	jnz SV_PointTraceToEntity_10
	jmp SV_PointTraceToEntity_50
SV_PointTraceToEntity_140:
	lea ebx, [ebp-0x58]
	mov [esp+0x4], ebx
	mov [esp], esi
	call DObjTracelinePartBits
	mov [esp+0x4], ebx
	mov [esp], edi
	call G_DObjCalcPose
	lea eax, [ebp-0x74]
	mov [esp+0x10], eax
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x30]
	mov [esp+0xc], eax
	lea eax, [ebp-0x48]
	mov [esp+0x8], eax
	lea edx, [ebp-0x24]
	mov [esp+0x4], edx
	mov [esp], esi
	call DObjTraceline
	jmp SV_PointTraceToEntity_210
	nop



;Initialized global or static variables of sv_world:
SECTION .data
actorLocationalMaxs: dd 0x42800000, 0x42800000, 0x42900000
actorLocationalMins: dd 0xc2800000, 0xc2800000, 0xc2000000, 0x0, 0x0


;Initialized constant data of sv_world:
SECTION .rdata


;Zero initialized global or static variables of sv_world:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_float_0_69999999:		dd 0x3f333333	; 0.7

