;Imports of sv_world:
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

;Exports of sv_world:
	global SV_PointTraceToEntityIntern
;	global SV_PointTraceToEntity_trail
SECTION .text



SV_PointTraceToEntityIntern:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xec

;Function start
	mov edi, [ebp+0xc] ;touch
	mov esi, [ebp+0x14] ;obj
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




;arg6 = obj*
;arg5 = clip*
;arg4 = axis*
;arg3 = trace*
;arg2 = objtrace*
;arg1 = touch*

;void SV_PointTraceToEntity_trail(gentity_t* touch, DObjTrace* objTrace, trace_t* trace, float* entAxis, pointtrace_t* clip,DObj* obj)
SV_PointTraceToEntity_trail:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xec
	mov edi, [ebp+0x8] ;touch
	mov esi, [ebp+0xc] ;objtrace
	mov ebx, [ebp+0x10] ;trace
	mov ecx, [ebp+0x14] ;Axis


	test byte [edi+0xf6], 0x4
	jnz SV_PointTraceToEntity_trail_130
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
SV_PointTraceToEntity_trail_200:
	mov eax, [ebx]
	mov [esp+0xc], eax
	lea eax, [ebp-0x30]
	mov [esp+0x8], eax
	lea eax, [ebp-0x3c]
	mov [esp+0x4], eax
	mov eax, [ebp+0x18]
	mov [esp], eax
	call CM_TraceBox
	test eax, eax
	jnz SV_PointTraceToEntity_trail_10

	mov ecx, [ebp+0x14] ;Axis
	mov [esp+0x4], ecx
	lea eax, [edi+0x148]
	mov [esp], eax
	call AnglesToAxis
	lea edx, [ebp-0x24]
	mov [esp+0x8], edx

	mov ecx, [ebp+0x14] ;Axis
	mov [esp+0x4], ecx
	mov eax, [ebp+0x18] ;clip
	mov [esp], eax
	call MatrixTransposeTransformVector43
	lea edx, [ebp-0x48]
 	mov [esp+0x8], edx
	mov ecx, [ebp+0x14] ;Axis
	mov [esp+0x4], ecx
	mov eax, [ebp+0x18] ;clip
	add eax, 0xc
	mov [esp], eax
	call MatrixTransposeTransformVector43
	mov ebx, [ebp+0x10]
	mov eax, [ebx]
	mov [esi], eax
	test byte [edi+0xf6], 0x4
	jz SV_PointTraceToEntity_trail_140
	lea ecx, [ebp-0x58]
	mov [esp+0x8], ecx
	mov edx, [ebp+0x18]
	mov eax, [edx+0x28]
	mov [esp+0x4], eax
	mov eax, [ebp+0x1c] ;obj
	mov [esp], eax
	call DObjGeomTracelinePartBits
	lea ecx, [ebp-0x58]
	mov [esp+0x4], ecx
	mov [esp], edi
	call G_DObjCalcPose
	mov [esp+0x10], esi
	mov ecx, [ebp+0x18]
	mov eax, [ecx+0x28]
	mov [esp+0xc], eax
	lea eax, [ebp-0x48]
	mov [esp+0x8], eax
	lea edx, [ebp-0x24]
	mov [esp+0x4], edx
	mov eax, [ebp+0x1c] ;obj
	mov [esp], eax
	call DObjGeomTraceline
SV_PointTraceToEntity_trail_210:





	movss xmm0, dword [esi+0x0]
	ucomiss xmm0, [ebx]
	jae SV_PointTraceToEntity_trail_10
	movss [ebx], xmm0
	mov eax, [esi+0x4]
	mov [ebx+0x10], eax
	movzx eax, word [esi+0x14]
	mov [ebx+0x22], ax
	movzx eax, word [esi+0x16]
	mov [ebx+0x24], ax
	movzx eax, word [esi+0x18]
	mov [ebx+0x26], ax
	mov eax, ebx
	add eax, 0x4
	mov ecx, [ebp+0x14] ;Axis
	movss xmm2, dword [esi+0x8]
	movaps xmm1, xmm2
	mulss xmm1, [ecx+0x0]
	movss xmm4, dword [esi+0xc]
	movaps xmm0, xmm4
	mulss xmm0, [ecx+0xc]
	addss xmm1, xmm0
	movss xmm3, dword [esi+0x10]
	movaps xmm0, xmm3
	mulss xmm0, [ecx+0x18]
	addss xmm1, xmm0
	movss [ebx+0x4], xmm1
	movaps xmm0, xmm2
	mulss xmm0, [ecx+0x4]
	movaps xmm1, xmm4
	mulss xmm1, [ecx+0x10]
	addss xmm0, xmm1
	movaps xmm1, xmm3
	mulss xmm1, [ecx+0x1c]
	addss xmm0, xmm1
	movss [eax+0x4], xmm0
	mulss xmm2, [ecx+0x8]
	mulss xmm4, [ecx+0x14]
	addss xmm2, xmm4
	mulss xmm3, [ecx+0x20]
	addss xmm2, xmm3
	movss [eax+0x8], xmm2
	movss xmm0, dword [ebx+0xc]
	ucomiss xmm0, [_float_0_69999999]
	setae byte [ebx+0x2a]

	movzx eax, word [edi]
	mov ebx, [ebp+0x10]
	mov dword [ebx+0x1c], 0x1
	mov [ebx+0x20], ax
	mov eax, [edi+0x120]
	mov [ebx+0x14], eax
	mov dword [ebx+0x18], 0x0
SV_PointTraceToEntity_trail_10:
	add esp, 0xec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


SV_PointTraceToEntity_trail_140:
	lea ecx, [ebp-0x58]
	mov [esp+0x4], ecx
	mov eax, [ebp+0x1c] ;obj
	mov [esp], eax
	call DObjTracelinePartBits

	lea ecx, [ebp-0x58]
	mov [esp+0x4], ecx
	mov [esp], edi
	call G_DObjCalcPose

	mov [esp+0x10], esi
	mov ecx, [ebp+0x18]
	mov eax, [ecx+0x30]
	mov [esp+0xc], eax
	lea eax, [ebp-0x48]
	mov [esp+0x8], eax
	lea edx, [ebp-0x24]
	mov [esp+0x4], edx
	mov eax, [ebp+0x1c] ;obj
	mov [esp], eax
	call DObjTraceline
	jmp SV_PointTraceToEntity_trail_210



SV_PointTraceToEntity_trail_130:
	mov edx, [ebp+0x18] ;clip
	mov eax, [edx+0x28]
	mov [esp+0x4], eax
	mov eax, [ebp+0x1c] ;obj
	mov [esp], eax
	call DObjHasContents
	test eax, eax
	jz SV_PointTraceToEntity_trail_10
	lea edx, [edi+0x13c]
	mov eax, [edi+0x13c]
	mov [ebp-0x80], eax
	mov eax, [edx+0x4]
	mov [ebp-0x7c], eax
	mov eax, [edx+0x8]
	mov [ebp-0x78], eax
	mov eax, [ebp+0x1c] ;obj
	mov [esp], eax
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
	jmp SV_PointTraceToEntity_trail_200




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

