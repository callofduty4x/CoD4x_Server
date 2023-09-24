;Imports of DynEntity_coll:
	extern _Z19DynEnt_GetEntityDeft17DynEntityDrawType
	extern _Z20DynEnt_GetEntityColl17DynEntityCollTypet
	extern _Z22DynEnt_GetClientEntityt17DynEntityDrawType
	extern memset
	extern _Z14CM_ModelBoundsjPfS_
	extern _Z14UnitQuatToAxisPKfPA3_f
	extern vec3_origin
	extern _Z29CM_TransformedBoxTraceRotatedP7trace_tPKfS2_S2_S2_jiS2_PA3_S1_
	extern _Z12DynEnt_GetIdPK12DynEntityDef17DynEntityDrawType
	extern _Z32MatrixTransposeTransformVector43PKfPA3_S_Pf
	extern _Z15XModelTraceLinePK6XModelP7trace_tPKfS5_i
	extern _Z15Vec3NormalizeToPKfPf
	extern _Z30Phys_ObjSetCollisionFromXModelPK6XModel9PhysWorldi
	extern _Z15XModelGetBoundsPK6XModelPfS2_
	extern _Z18Phys_ObjAddGeomBox9PhysWorldiPKfS1_
	extern _Z23Phys_ObjAddGeomCylinder9PhysWorldiPKfS1_
	extern _Z25Phys_ObjAddGeomBrushModel9PhysWorlditPK8PhysMass
	extern _Z21DynEnt_GetEntityProps13DynEntityType
	extern _Z14CM_TraceSpherePK12TraceExtentsPKfff

;Exports of DynEntity_coll:
	global dynEntCollWorlds
	global _Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1_
	global _Z18DynEnt_GetContentsPK12DynEntityDef
	global _Z19DynEnt_EntityInAreaPK12DynEntityDefPK13DynEntityPosePKfS6_i
	global _Z19DynEnt_UnlinkEntity17DynEntityCollTypet
	global _Z20DynEnt_GetCollSector17DynEntityCollTypej
	global _Z21DynEnt_ClearCollWorld17DynEntityCollType
	global _Z23DynEnt_GetRadiusDistSqrPK13DynEntityPosePKf
	global _Z24DynEnt_PointTraceToBrushPK12DynEntityDefPK13DynEntityPosePK12pointtrace_tP7trace_t
	global _Z24DynEnt_PointTraceToModelPK12DynEntityDefPK13DynEntityPosePK12pointtrace_tP7trace_t
	global _Z26DynEnt_SetPhysObjCollisionPK12DynEntityDefi
	global _Z27DynEnt_ClipMoveTraceToBrushPK12DynEntityDefPK13DynEntityPosePK10moveclip_tP7trace_t
	global _Z34DynEnt_GetCylindricalRadiusDistSqrPK13DynEntityPosePKf


SECTION .text


;DynEnt_LinkEntity(DynEntityCollType, unsigned short, float const*, float const*)
_Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xac
	mov edx, [ebp+0x8]
	lea eax, [edx+edx*4]
	shl eax, 0x7
	add eax, edx
	shl eax, 0x3
	sub eax, edx
	lea eax, [eax*4+dynEntCollWorlds]
	mov [ebp-0x74], eax
	and edx, 0x1
	mov [ebp-0x6c], edx
	movzx ecx, word [ebp+0xc]
	mov [ebp-0x78], ecx
	mov [esp+0x4], edx
	mov [esp], ecx
	call _Z19DynEnt_GetEntityDeft17DynEntityDrawType
	mov ebx, eax
	mov edi, [ebp-0x78]
	mov [esp+0x4], edi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z20DynEnt_GetEntityColl17DynEntityCollTypet
	mov [ebp-0x70], eax
	mov ebx, [ebx+0x5c]
	mov [ebp-0x8c], ebx
	mov edx, [ebp-0x74]
	add edx, 0xc
	mov [ebp-0x7c], edx
	add eax, 0x4
	mov [ebp-0x68], eax
	mov ecx, [ebp-0x70]
	add ecx, 0xc
	mov [ebp-0x64], ecx
_Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1__80:
	mov edi, [ebp-0x74]
	mov eax, [edi]
	mov [ebp-0x20], eax
	mov eax, [edi+0x4]
	mov [ebp-0x1c], eax
	mov eax, [edi+0xc]
	mov [ebp-0x28], eax
	mov eax, [edx+0x4]
	mov [ebp-0x24], eax
	mov esi, 0x1
	mov ecx, edi
_Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1__30:
	movzx ebx, si
	lea eax, [ebx+ebx*4]
	lea eax, [ecx+eax*4+0x10]
	lea edx, [eax+0xc]
	movzx ecx, word [edx+0x4]
	movss xmm1, dword [eax+0xc]
	mov edi, [ebp-0x8c]
	or [edx+0xc], edi
	lea eax, [ecx*4]
	mov edi, [ebp+0x10]
	movss xmm0, dword [eax+edi]
	ucomiss xmm0, xmm1
	jbe _Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1__10
	movss [ebp+ecx*4-0x20], xmm1
	movzx eax, word [edx+0x8]
	test ax, ax
	jz _Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1__20
_Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1__50:
	mov esi, eax
	mov ecx, [ebp-0x74]
	jmp _Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1__30
_Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1__10:
	mov edi, [ebp+0x14]
	ucomiss xmm1, [eax+edi]
	jbe _Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1__40
	movss [ebp+ecx*4-0x28], xmm1
	movzx eax, word [edx+0xa]
	test ax, ax
	jnz _Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1__50
_Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1__20:
	mov edx, [ebp-0x70]
	movzx eax, word [edx]
	test ax, ax
	jz _Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1__60
_Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1__100:
	cmp ax, si
	jz _Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1__70
	mov ecx, [ebp-0x78]
	mov [esp+0x4], ecx
	mov edi, [ebp+0x8]
	mov [esp], edi
	call _Z19DynEnt_UnlinkEntity17DynEntityCollTypet
	mov edx, [ebp-0x7c]
	jmp _Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1__80
_Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1__40:
	mov ecx, [ebp-0x70]
	cmp [ecx], si
	jz _Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1__90
	mov edx, ecx
	movzx eax, word [edx]
	test ax, ax
	jnz _Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1__100
_Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1__60:
	mov [ebp-0x5e], bx
	movzx esi, bx
	mov ebx, [ebp-0x78]
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z20DynEnt_GetEntityColl17DynEntityCollTypet
	mov edi, eax
	lea eax, [esi+esi*4]
	mov edx, [ebp-0x74]
	lea eax, [edx+eax*4+0x10]
	lea ecx, [eax+0x1c]
	movzx edx, word [eax+0x1c]
	movzx eax, dx
	sub eax, 0x1
	cmp eax, ebx
	jbe _Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1__110
_Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1__130:
	movzx eax, word [ebp-0x5e]
	mov [edi], ax
	movzx eax, word [ecx]
	mov [edi+0x2], ax
	lea eax, [ebx+0x1]
	mov [ecx], ax
_Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1__140:
	mov edx, [ebp+0x10]
	mov eax, [edx]
	mov ecx, [ebp-0x70]
	mov [ecx+0x4], eax
	mov eax, [edx+0x4]
	mov [ecx+0x8], eax
	mov edi, [ebp+0x14]
	mov eax, [edi]
	mov [ecx+0xc], eax
	mov eax, [edi+0x4]
	mov [ecx+0x10], eax
	lea eax, [esi+esi*4]
	mov edx, [ebp-0x74]
	lea eax, [edx+eax*4+0x10]
	lea ecx, [eax+0xc]
	mov [ebp-0x58], ecx
	movzx edi, word [ecx+0x4]
	mov [ebp-0x50], edi
	movss xmm0, dword [eax+0xc]
	movss [ebp-0x4c], xmm0
	movzx ebx, word [ecx+0x10]
	test bx, bx
	jnz _Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1__120
_Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1__190:
	mov ecx, [ebp-0x6c]
	mov [esp+0x4], ecx
	mov edi, [ebp-0x78]
	mov [esp], edi
	call _Z22DynEnt_GetClientEntityt17DynEntityDrawType
	or word [eax+0x4], 0x4
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1__110:
	lea eax, [edx-0x1]
	movzx eax, ax
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z20DynEnt_GetEntityColl17DynEntityCollTypet
	lea ecx, [eax+0x2]
	movzx edx, word [eax+0x2]
	movzx eax, dx
	sub eax, 0x1
	cmp eax, ebx
	jbe _Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1__110
	jmp _Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1__130
_Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1__70:
	mov [ebp-0x5e], bx
	movzx esi, bx
	jmp _Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1__140
_Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1__120:
	mov dword [ebp-0x54], 0x0
	jmp _Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1__150
_Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1__200:
	mov edx, [ebp-0x58]
	movzx eax, word [edx+0x8]
	test ax, ax
	jnz _Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1__160
	mov ecx, [ebp-0x74]
	movzx edx, word [ecx+0x18]
	test dx, dx
	jz _Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1__170
	movss xmm1, dword [ebp-0x28]
	subss xmm1, [ebp-0x20]
	movss [ebp-0x30], xmm1
	movss xmm0, dword [ebp-0x24]
	subss xmm0, [ebp-0x1c]
	movss [ebp-0x2c], xmm0
	xor eax, eax
	ucomiss xmm0, xmm1
	setae al
	mov [ebp-0x46], ax
	movzx edi, ax
	movss xmm0, dword [_float_512_00000000]
	ucomiss xmm0, [ebp+edi*4-0x30]
	jb _Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1__180
_Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1__170:
	movzx ebx, word [esi+0x2]
	mov [ebp-0x54], esi
_Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1__240:
	test bx, bx
	jz _Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1__190
_Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1__150:
	lea eax, [ebx-0x1]
	movzx eax, ax
	mov [ebp-0x5c], eax
	mov eax, [ebp-0x6c]
	mov [esp+0x4], eax
	mov edx, [ebp-0x5c]
	mov [esp], edx
	call _Z19DynEnt_GetEntityDeft17DynEntityDrawType
	mov [ebp-0x3c], eax
	mov ecx, [ebp-0x5c]
	mov [esp+0x4], ecx
	mov edi, [ebp+0x8]
	mov [esp], edi
	call _Z20DynEnt_GetEntityColl17DynEntityCollTypet
	mov esi, eax
	mov eax, [ebp-0x50]
	movss xmm0, dword [esi+eax*4+0x4]
	ucomiss xmm0, [ebp-0x4c]
	ja _Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1__200
	movss xmm0, dword [ebp-0x4c]
	ucomiss xmm0, [esi+eax*4+0xc]
	jbe _Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1__170
	mov edx, [ebp-0x58]
	movzx eax, word [edx+0xa]
	test ax, ax
	jnz _Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1__160
	mov ecx, [ebp-0x74]
	movzx edx, word [ecx+0x18]
	test dx, dx
	jz _Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1__170
	movss xmm1, dword [ebp-0x28]
	subss xmm1, [ebp-0x20]
	movss [ebp-0x30], xmm1
	movss xmm0, dword [ebp-0x24]
	subss xmm0, [ebp-0x1c]
	movss [ebp-0x2c], xmm0
	xor eax, eax
	ucomiss xmm0, xmm1
	setae al
	mov [ebp-0x44], ax
	movzx edi, ax
	movss xmm0, dword [_float_512_00000000]
	ucomiss xmm0, [ebp+edi*4-0x30]
	jae _Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1__170
	movzx ebx, dx
	lea edx, [ebx+ebx*4]
	lea edx, [ecx+edx*4+0x10]
	mov [ebp-0x9c], edx
	mov ecx, edx
	add ecx, 0xc
	movzx edx, word [ecx+0x6]
	mov eax, [ebp-0x74]
	mov [eax+0x18], dx
	movzx eax, word [ebp-0x44]
	mov [ecx+0x4], ax
	movss xmm0, dword [ebp+edi*4-0x28]
	addss xmm0, [ebp+edi*4-0x20]
	mulss xmm0, [_float_0_50000000]
	mov edx, [ebp-0x9c]
	movss [edx+0xc], xmm0
	mov eax, ebx
	test bx, bx
	jz _Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1__170
	mov ecx, [ebp-0x58]
	mov [ecx+0xa], bx
_Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1__260:
	movzx edi, ax
	lea eax, [edi+edi*4]
	movzx ecx, word [ebp-0x5e]
	mov edx, [ebp-0x74]
	mov [edx+eax*4+0x22], cx
	jmp _Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1__210
_Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1__160:
	movzx edi, ax
_Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1__210:
	movzx ebx, word [esi+0x2]
	mov [ebp-0x42], di
	mov esi, [ebp-0x5c]
	mov [esp+0x4], esi
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z20DynEnt_GetEntityColl17DynEntityCollTypet
	mov [ebp-0x40], eax
	movzx eax, word [ebp-0x42]
	lea eax, [eax+eax*4]
	mov edx, [ebp-0x74]
	lea eax, [edx+eax*4+0x10]
	lea ecx, [eax+0x1c]
	movzx edx, word [eax+0x1c]
	movzx eax, dx
	sub eax, 0x1
	cmp esi, eax
	jae _Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1__220
_Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1__250:
	movzx edx, word [ebp-0x42]
	mov eax, [ebp-0x40]
	mov [eax], dx
	movzx eax, word [ecx]
	mov edx, [ebp-0x40]
	mov [edx+0x2], ax
	lea eax, [esi+0x1]
	mov [ecx], ax
	lea edx, [edi+edi*4]
	mov ecx, [ebp-0x74]
	lea edx, [ecx+edx*4]
	mov eax, [edx+0x28]
	mov edi, [ebp-0x3c]
	or eax, [edi+0x5c]
	mov [edx+0x28], eax
	mov ecx, [ebp-0x54]
	test ecx, ecx
	jz _Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1__230
	mov edx, [ebp-0x54]
	mov [edx+0x2], bx
	jmp _Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1__240
_Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1__220:
	lea eax, [edx-0x1]
	movzx eax, ax
	mov [esp+0x4], eax
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _Z20DynEnt_GetEntityColl17DynEntityCollTypet
	lea ecx, [eax+0x2]
	movzx edx, word [eax+0x2]
	movzx eax, dx
	sub eax, 0x1
	cmp esi, eax
	jae _Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1__220
	jmp _Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1__250
_Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1__90:
	mov edi, [ebp+0x10]
	mov eax, [edi]
	mov [ecx+0x4], eax
	mov eax, [edi+0x4]
	mov edx, [ebp-0x68]
	mov [edx+0x4], eax
	mov ecx, [ebp+0x14]
	mov eax, [ecx]
	mov edi, [ebp-0x70]
	mov [edi+0xc], eax
	mov eax, [ecx+0x4]
	mov edx, [ebp-0x64]
	mov [edx+0x4], eax
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1__230:
	mov eax, [ebp-0x58]
	mov [eax+0x10], bx
	jmp _Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1__240
_Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1__180:
	movzx ebx, dx
	lea edx, [ebx+ebx*4]
	lea edx, [ecx+edx*4+0x10]
	mov [ebp-0x9c], edx
	mov ecx, edx
	add ecx, 0xc
	movzx edx, word [ecx+0x6]
	mov eax, [ebp-0x74]
	mov [eax+0x18], dx
	movzx eax, word [ebp-0x46]
	mov [ecx+0x4], ax
	movss xmm0, dword [ebp+edi*4-0x28]
	addss xmm0, [ebp+edi*4-0x20]
	mulss xmm0, [_float_0_50000000]
	mov edx, [ebp-0x9c]
	movss [edx+0xc], xmm0
	mov eax, ebx
	test bx, bx
	jz _Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1__170
	mov ecx, [ebp-0x58]
	mov [ecx+0x8], bx
	jmp _Z17DynEnt_LinkEntity17DynEntityCollTypetPKfS1__260
	nop


;DynEnt_GetContents(DynEntityDef const*)
_Z18DynEnt_GetContentsPK12DynEntityDef:
	push ebp
	mov ebp, esp
	mov eax, [ebp+0x8]
	mov eax, [eax+0x5c]
	pop ebp
	ret
	nop
	add [eax], al


;DynEnt_EntityInArea(DynEntityDef const*, DynEntityPose const*, float const*, float const*, int)
_Z19DynEnt_EntityInAreaPK12DynEntityDefPK13DynEntityPosePKfS6_i:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov edx, [ebp+0xc]
	mov ecx, [ebp+0x14]
	mov eax, [ebp+0x8]
	mov eax, [eax+0x5c]
	test [ebp+0x18], eax
	jz _Z19DynEnt_EntityInAreaPK12DynEntityDefPK13DynEntityPosePKfS6_i_10
	movss xmm1, dword [edx+0x1c]
	movaps xmm0, xmm1
	xorps xmm0, [_data16_80000000]
	lea eax, [edx+0x10]
	movss xmm4, dword [edx+0x10]
	movss xmm3, dword [eax+0x4]
	movaps xmm5, xmm0
	addss xmm5, xmm3
	movss xmm2, dword [eax+0x8]
	movaps xmm6, xmm0
	addss xmm6, xmm2
	movaps xmm7, xmm1
	addss xmm7, xmm4
	addss xmm3, xmm1
	addss xmm1, xmm2
	addss xmm0, xmm4
	ucomiss xmm0, [ecx]
	ja _Z19DynEnt_EntityInAreaPK12DynEntityDefPK13DynEntityPosePKfS6_i_10
	ucomiss xmm5, [ecx+0x4]
	ja _Z19DynEnt_EntityInAreaPK12DynEntityDefPK13DynEntityPosePKfS6_i_10
	ucomiss xmm6, [ecx+0x8]
	ja _Z19DynEnt_EntityInAreaPK12DynEntityDefPK13DynEntityPosePKfS6_i_10
	mov eax, [ebp+0x10]
	movss xmm0, dword [eax]
	ucomiss xmm0, xmm7
	ja _Z19DynEnt_EntityInAreaPK12DynEntityDefPK13DynEntityPosePKfS6_i_10
	movss xmm0, dword [eax+0x4]
	ucomiss xmm0, xmm3
	ja _Z19DynEnt_EntityInAreaPK12DynEntityDefPK13DynEntityPosePKfS6_i_10
	movss xmm0, dword [eax+0x8]
	ucomiss xmm0, xmm1
	jbe _Z19DynEnt_EntityInAreaPK12DynEntityDefPK13DynEntityPosePKfS6_i_20
_Z19DynEnt_EntityInAreaPK12DynEntityDefPK13DynEntityPosePKfS6_i_10:
	xor eax, eax
	leave
	ret
_Z19DynEnt_EntityInAreaPK12DynEntityDefPK13DynEntityPosePKfS6_i_20:
	mov eax, 0x1
	leave
	ret
	nop


;DynEnt_UnlinkEntity(DynEntityCollType, unsigned short)
_Z19DynEnt_UnlinkEntity17DynEntityCollTypet:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edx, [ebp+0x8]
	lea eax, [edx+edx*4]
	shl eax, 0x7
	add eax, edx
	shl eax, 0x3
	sub eax, edx
	lea edi, [eax*4+dynEntCollWorlds]
	movzx eax, word [ebp+0xc]
	mov [ebp-0x2c], eax
	mov [esp+0x4], eax
	mov [esp], edx
	call _Z20DynEnt_GetEntityColl17DynEntityCollTypet
	mov [ebp-0x24], eax
	movzx edx, word [eax]
	mov [ebp-0x1e], dx
	test dx, dx
	jz _Z19DynEnt_UnlinkEntity17DynEntityCollTypet_10
	movzx eax, dx
	lea eax, [eax+eax*4]
	lea ebx, [edi+eax*4+0x1c]
	mov eax, [ebp-0x24]
	mov word [eax], 0x0
	movzx edx, word [ebx+0x10]
	movzx eax, dx
	sub eax, 0x1
	cmp [ebp-0x2c], eax
	jz _Z19DynEnt_UnlinkEntity17DynEntityCollTypet_20
	lea eax, [edx-0x1]
	movzx eax, ax
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z20DynEnt_GetEntityColl17DynEntityCollTypet
	mov esi, eax
	jmp _Z19DynEnt_UnlinkEntity17DynEntityCollTypet_30
_Z19DynEnt_UnlinkEntity17DynEntityCollTypet_40:
	mov esi, eax
_Z19DynEnt_UnlinkEntity17DynEntityCollTypet_30:
	movzx eax, word [esi+0x2]
	sub eax, 0x1
	movzx eax, ax
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z20DynEnt_GetEntityColl17DynEntityCollTypet
	cmp [ebp-0x24], eax
	jnz _Z19DynEnt_UnlinkEntity17DynEntityCollTypet_40
	mov edx, [ebp-0x24]
	movzx eax, word [edx+0x2]
	mov [esi+0x2], ax
_Z19DynEnt_UnlinkEntity17DynEntityCollTypet_130:
	cmp word [ebx+0x10], 0x0
	jnz _Z19DynEnt_UnlinkEntity17DynEntityCollTypet_50
_Z19DynEnt_UnlinkEntity17DynEntityCollTypet_70:
	mov edx, [ebx+0x8]
	test edx, edx
	jnz _Z19DynEnt_UnlinkEntity17DynEntityCollTypet_50
	mov dword [ebx+0xc], 0x0
	movzx edx, word [ebx+0x6]
	test dx, dx
	jz _Z19DynEnt_UnlinkEntity17DynEntityCollTypet_50
	movzx eax, word [edi+0x18]
	mov [ebx+0x6], ax
	movzx eax, word [ebp-0x1e]
	mov [edi+0x18], ax
	movzx eax, dx
	lea eax, [eax+eax*4]
	lea ebx, [edi+eax*4+0x1c]
	movzx eax, word [ebp-0x1e]
	cmp ax, [ebx+0x8]
	jz _Z19DynEnt_UnlinkEntity17DynEntityCollTypet_60
	mov word [ebx+0xa], 0x0
	mov [ebp-0x1e], dx
_Z19DynEnt_UnlinkEntity17DynEntityCollTypet_140:
	cmp word [ebx+0x10], 0x0
	jz _Z19DynEnt_UnlinkEntity17DynEntityCollTypet_70
_Z19DynEnt_UnlinkEntity17DynEntityCollTypet_50:
	mov edx, [ebp+0x8]
	and edx, 0x1
	mov [ebp-0x1c], edx
	mov [esp+0x4], edx
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call _Z19DynEnt_GetEntityDeft17DynEntityDrawType
	mov [ebp-0x28], eax
	jmp _Z19DynEnt_UnlinkEntity17DynEntityCollTypet_80
_Z19DynEnt_UnlinkEntity17DynEntityCollTypet_100:
	mov [ebx+0xc], esi
	movzx eax, word [ebx+0x6]
	test ax, ax
	jz _Z19DynEnt_UnlinkEntity17DynEntityCollTypet_90
_Z19DynEnt_UnlinkEntity17DynEntityCollTypet_120:
	movzx eax, ax
	lea eax, [eax+eax*4]
	lea ebx, [edi+eax*4+0x1c]
_Z19DynEnt_UnlinkEntity17DynEntityCollTypet_80:
	movzx edx, word [ebx+0x8]
	lea edx, [edx+edx*4]
	movzx eax, word [ebx+0xa]
	lea eax, [eax+eax*4]
	mov esi, [edi+edx*4+0x28]
	or esi, [edi+eax*4+0x28]
	movzx eax, word [ebx+0x10]
	test ax, ax
	jz _Z19DynEnt_UnlinkEntity17DynEntityCollTypet_100
	sub eax, 0x1
	movzx eax, ax
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _Z20DynEnt_GetEntityColl17DynEntityCollTypet
	mov edx, [ebp-0x28]
	or esi, [edx+0x5c]
	movzx eax, word [eax+0x2]
	test ax, ax
	jz _Z19DynEnt_UnlinkEntity17DynEntityCollTypet_100
_Z19DynEnt_UnlinkEntity17DynEntityCollTypet_110:
	sub eax, 0x1
	movzx eax, ax
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z20DynEnt_GetEntityColl17DynEntityCollTypet
	mov edx, [ebp-0x28]
	or esi, [edx+0x5c]
	movzx eax, word [eax+0x2]
	test ax, ax
	jnz _Z19DynEnt_UnlinkEntity17DynEntityCollTypet_110
	mov [ebx+0xc], esi
	movzx eax, word [ebx+0x6]
	test ax, ax
	jnz _Z19DynEnt_UnlinkEntity17DynEntityCollTypet_120
_Z19DynEnt_UnlinkEntity17DynEntityCollTypet_90:
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov edx, [ebp-0x2c]
	mov [esp], edx
	call _Z22DynEnt_GetClientEntityt17DynEntityDrawType
	and word [eax+0x4], 0xfffb
_Z19DynEnt_UnlinkEntity17DynEntityCollTypet_10:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z19DynEnt_UnlinkEntity17DynEntityCollTypet_20:
	mov edx, [ebp-0x24]
	movzx eax, word [edx+0x2]
	mov [ebx+0x10], ax
	jmp _Z19DynEnt_UnlinkEntity17DynEntityCollTypet_130
_Z19DynEnt_UnlinkEntity17DynEntityCollTypet_60:
	mov word [ebx+0x8], 0x0
	mov [ebp-0x1e], dx
	jmp _Z19DynEnt_UnlinkEntity17DynEntityCollTypet_140


;DynEnt_GetCollSector(DynEntityCollType, unsigned int)
_Z20DynEnt_GetCollSector17DynEntityCollTypej:
	push ebp
	mov ebp, esp
	mov ecx, [ebp+0x8]
	mov edx, [ebp+0xc]
	lea eax, [ecx+ecx*4]
	shl eax, 0x7
	add eax, ecx
	shl eax, 0x3
	sub eax, ecx
	lea edx, [edx+edx*4]
	lea edx, [edx*4+0x10]
	lea eax, [edx+eax*4+dynEntCollWorlds+0xc]
	pop ebp
	ret
	nop


;DynEnt_ClearCollWorld(DynEntityCollType)
_Z21DynEnt_ClearCollWorld17DynEntityCollType:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov edx, [ebp+0x8]
	lea eax, [edx+edx*4]
	shl eax, 0x7
	add eax, edx
	shl eax, 0x3
	sub eax, edx
	lea ebx, [eax*4+dynEntCollWorlds]
	mov dword [esp+0x8], 0x501c
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call memset
	lea esi, [ebx+0xc]
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	mov dword [esp], 0x0
	call _Z14CM_ModelBoundsjPfS_
	mov word [ebx+0x18], 0x2
	mov edx, ebx
	xor ecx, ecx
_Z21DynEnt_ClearCollWorld17DynEntityCollType_10:
	lea eax, [ecx+0x3]
	mov [edx+0x4a], ax
	add ecx, 0x1
	add edx, 0x14
	cmp ecx, 0x3fd
	jnz _Z21DynEnt_ClearCollWorld17DynEntityCollType_10
	movss xmm1, dword [esi]
	subss xmm1, [ebx]
	movss xmm0, dword [esi+0x4]
	subss xmm0, [ebx+0x4]
	xor eax, eax
	ucomiss xmm0, xmm1
	setae al
	mov [ebx+0x34], ax
	movzx eax, ax
	movss xmm0, dword [ebx+eax*4+0xc]
	addss xmm0, [ebx+eax*4]
	mulss xmm0, [_float_0_50000000]
	movss [ebx+0x30], xmm0
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop
	add [eax], al


;DynEnt_GetRadiusDistSqr(DynEntityPose const*, float const*)
_Z23DynEnt_GetRadiusDistSqrPK13DynEntityPosePKf:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x40
	mov eax, [ebp+0x8]
	mov esi, [ebp+0xc]
	movss xmm4, dword [eax+0x1c]
	movaps xmm1, xmm4
	xorps xmm1, [_data16_80000000]
	lea edx, [eax+0x10]
	movss xmm3, dword [eax+0x10]
	movaps xmm0, xmm1
	addss xmm0, xmm3
	movss [ebp-0x14], xmm0
	movss xmm2, dword [edx+0x4]
	movaps xmm0, xmm1
	addss xmm0, xmm2
	movss [ebp-0x10], xmm0
	movss xmm0, dword [edx+0x8]
	addss xmm1, xmm0
	movss [ebp-0xc], xmm1
	addss xmm3, xmm4
	movss [ebp-0x20], xmm3
	addss xmm2, xmm4
	movss [ebp-0x1c], xmm2
	addss xmm4, xmm0
	movss [ebp-0x18], xmm4
	mov edx, 0x1
	lea ebx, [ebp-0x14]
	lea ecx, [ebp-0x2c]
	mov eax, 0x4
_Z23DynEnt_GetRadiusDistSqrPK13DynEntityPosePKf_20:
	movss xmm1, dword [eax+esi-0x4]
	movss xmm0, dword [eax+ebx-0x4]
	ucomiss xmm0, xmm1
	jbe _Z23DynEnt_GetRadiusDistSqrPK13DynEntityPosePKf_10
	subss xmm0, xmm1
	movss [eax+ecx-0x4], xmm0
_Z23DynEnt_GetRadiusDistSqrPK13DynEntityPosePKf_40:
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x4
	jnz _Z23DynEnt_GetRadiusDistSqrPK13DynEntityPosePKf_20
	movss xmm0, dword [ebp-0x2c]
	movss xmm1, dword [ebp-0x28]
	movss xmm2, dword [ebp-0x24]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	movss [ebp-0x3c], xmm0
	fld dword [ebp-0x3c]
	add esp, 0x40
	pop ebx
	pop esi
	pop ebp
	ret
_Z23DynEnt_GetRadiusDistSqrPK13DynEntityPosePKf_10:
	movss xmm0, dword [eax+ebp-0x24]
	ucomiss xmm1, xmm0
	jbe _Z23DynEnt_GetRadiusDistSqrPK13DynEntityPosePKf_30
	subss xmm1, xmm0
	movss [eax+ecx-0x4], xmm1
	jmp _Z23DynEnt_GetRadiusDistSqrPK13DynEntityPosePKf_40
_Z23DynEnt_GetRadiusDistSqrPK13DynEntityPosePKf_30:
	mov dword [eax+ecx-0x4], 0x0
	jmp _Z23DynEnt_GetRadiusDistSqrPK13DynEntityPosePKf_40


;DynEnt_PointTraceToBrush(DynEntityDef const*, DynEntityPose const*, pointtrace_t const*, trace_t*)
_Z24DynEnt_PointTraceToBrushPK12DynEntityDefPK13DynEntityPosePK12pointtrace_tP7trace_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov ebx, [ebp+0xc]
	mov edi, [ebp+0x10]
	mov eax, [ebp+0x14]
	movss xmm0, dword [eax]
	movss [ebp-0x4c], xmm0
	lea esi, [ebp-0x3c]
	mov [esp+0x4], esi
	mov [esp], ebx
	call _Z14UnitQuatToAxisPKfPA3_f
	mov [esp+0x20], esi
	add ebx, 0x10
	mov [esp+0x1c], ebx
	mov eax, [edi+0x28]
	mov [esp+0x18], eax
	mov edx, [ebp+0x8]
	movzx eax, word [edx+0x24]
	mov [esp+0x14], eax
	mov eax, vec3_origin
	mov [esp+0x10], eax
	mov [esp+0xc], eax
	lea eax, [edi+0xc]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov eax, [ebp+0x14]
	mov [esp], eax
	call _Z29CM_TransformedBoxTraceRotatedP7trace_tPKfS2_S2_S2_jiS2_PA3_S1_
	mov edx, [ebp+0x14]
	movss xmm0, dword [edx]
	ucomiss xmm0, [ebp-0x4c]
	jae _Z24DynEnt_PointTraceToBrushPK12DynEntityDefPK13DynEntityPosePK12pointtrace_tP7trace_t_10
	mov dword [esp+0x4], 0x1
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z12DynEnt_GetIdPK12DynEntityDef17DynEntityDrawType
	mov edx, [ebp+0x14]
	mov dword [edx+0x1c], 0x3
	mov [edx+0x20], ax
_Z24DynEnt_PointTraceToBrushPK12DynEntityDefPK13DynEntityPosePK12pointtrace_tP7trace_t_10:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;DynEnt_PointTraceToModel(DynEntityDef const*, DynEntityPose const*, pointtrace_t const*, trace_t*)
_Z24DynEnt_PointTraceToModelPK12DynEntityDefPK13DynEntityPosePK12pointtrace_tP7trace_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8c
	mov ecx, [ebp+0xc]
	mov edi, [ebp+0x10]
	mov eax, [edi+0x2c]
	test eax, eax
	jnz _Z24DynEnt_PointTraceToModelPK12DynEntityDefPK13DynEntityPosePK12pointtrace_tP7trace_t_10
_Z24DynEnt_PointTraceToModelPK12DynEntityDefPK13DynEntityPosePK12pointtrace_tP7trace_t_20:
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24DynEnt_PointTraceToModelPK12DynEntityDefPK13DynEntityPosePK12pointtrace_tP7trace_t_10:
	lea edx, [ecx+0x10]
	mov eax, [ecx+0x10]
	mov [ebp-0x48], eax
	lea ebx, [ebp-0x6c]
	mov eax, [edx+0x4]
	mov [ebp-0x44], eax
	mov eax, [edx+0x8]
	mov [ebp-0x40], eax
	mov [esp+0x4], ebx
	mov [esp], ecx
	call _Z14UnitQuatToAxisPKfPA3_f
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], edi
	call _Z32MatrixTransposeTransformVector43PKfPA3_S_Pf
	lea esi, [ebp-0x30]
	mov [esp+0x8], esi
	mov [esp+0x4], ebx
	lea eax, [edi+0xc]
	mov [esp], eax
	call _Z32MatrixTransposeTransformVector43PKfPA3_S_Pf
	mov eax, [edi+0x28]
	mov [esp+0x10], eax
	mov [esp+0xc], esi
	lea edx, [ebp-0x24]
	mov [esp+0x8], edx
	mov eax, [ebp+0x14]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov eax, [edx+0x20]
	mov [esp], eax
	call _Z15XModelTraceLinePK6XModelP7trace_tPKfS5_i
	test eax, eax
	jnz _Z24DynEnt_PointTraceToModelPK12DynEntityDefPK13DynEntityPosePK12pointtrace_tP7trace_t_20
	mov eax, [ebp+0x14]
	add eax, 0x4
	mov edx, [ebp+0x14]
	movss xmm2, dword [edx+0x4]
	movaps xmm1, xmm2
	mulss xmm1, [ebp-0x6c]
	movss xmm4, dword [edx+0x8]
	movaps xmm0, xmm4
	mulss xmm0, [ebp-0x60]
	addss xmm1, xmm0
	movss xmm3, dword [edx+0xc]
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0x54]
	addss xmm1, xmm0
	movss [ebp-0x3c], xmm1
	movaps xmm0, xmm2
	mulss xmm0, [ebp-0x68]
	movaps xmm1, xmm4
	mulss xmm1, [ebp-0x5c]
	addss xmm0, xmm1
	movaps xmm1, xmm3
	mulss xmm1, [ebp-0x50]
	addss xmm0, xmm1
	movss [ebp-0x38], xmm0
	mulss xmm2, [ebp-0x64]
	mulss xmm4, [ebp-0x58]
	addss xmm2, xmm4
	mulss xmm3, [ebp-0x4c]
	addss xmm2, xmm3
	movss [ebp-0x34], xmm2
	mov [esp+0x4], eax
	lea eax, [ebp-0x3c]
	mov [esp], eax
	call _Z15Vec3NormalizeToPKfPf
	fstp st0
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z12DynEnt_GetIdPK12DynEntityDef17DynEntityDrawType
	mov edx, [ebp+0x14]
	mov dword [edx+0x1c], 0x2
	mov [edx+0x20], ax
	add esp, 0x8c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;DynEnt_SetPhysObjCollision(DynEntityDef const*, int)
_Z26DynEnt_SetPhysObjCollisionPK12DynEntityDefi:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov ebx, [ebp+0x8]
	mov eax, [ebx+0x20]
	test eax, eax
	jz _Z26DynEnt_SetPhysObjCollisionPK12DynEntityDefi_10
	mov esi, [eax+0xd8]
	test esi, esi
	jz _Z26DynEnt_SetPhysObjCollisionPK12DynEntityDefi_10
	mov edx, [ebp+0xc]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call _Z30Phys_ObjSetCollisionFromXModelPK6XModel9PhysWorldi
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26DynEnt_SetPhysObjCollisionPK12DynEntityDefi_10:
	movzx edx, word [ebx+0x26]
	test dx, dx
	jnz _Z26DynEnt_SetPhysObjCollisionPK12DynEntityDefi_20
	test eax, eax
	jz _Z26DynEnt_SetPhysObjCollisionPK12DynEntityDefi_30
	lea edi, [ebp-0x30]
	mov [esp+0x8], edi
	lea esi, [ebp-0x24]
	mov [esp+0x4], esi
	mov [esp], eax
	call _Z15XModelGetBoundsPK6XModelPfS2_
_Z26DynEnt_SetPhysObjCollisionPK12DynEntityDefi_50:
	mov eax, [ebx+0x30]
	cmp byte [eax+0x28], 0x0
	jnz _Z26DynEnt_SetPhysObjCollisionPK12DynEntityDefi_40
	mov [esp+0xc], edi
	mov [esp+0x8], esi
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z18Phys_ObjAddGeomBox9PhysWorldiPKfS1_
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26DynEnt_SetPhysObjCollisionPK12DynEntityDefi_40:
	mov [esp+0xc], edi
	mov [esp+0x8], esi
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov dword [esp], 0x0
	call _Z23Phys_ObjAddGeomCylinder9PhysWorldiPKfS1_
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26DynEnt_SetPhysObjCollisionPK12DynEntityDefi_20:
	lea eax, [ebx+0x38]
	mov [esp+0xc], eax
	movzx eax, dx
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	call _Z25Phys_ObjAddGeomBrushModel9PhysWorlditPK8PhysMass
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26DynEnt_SetPhysObjCollisionPK12DynEntityDefi_30:
	lea edi, [ebp-0x30]
	mov [esp+0x8], edi
	lea esi, [ebp-0x24]
	mov [esp+0x4], esi
	movzx eax, word [ebx+0x24]
	mov [esp], eax
	call _Z14CM_ModelBoundsjPfS_
	jmp _Z26DynEnt_SetPhysObjCollisionPK12DynEntityDefi_50
	add [eax], al


;DynEnt_ClipMoveTraceToBrush(DynEntityDef const*, DynEntityPose const*, moveclip_t const*, trace_t*)
_Z27DynEnt_ClipMoveTraceToBrushPK12DynEntityDefPK13DynEntityPosePK10moveclip_tP7trace_t:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov edi, [ebp+0x8]
	mov esi, [ebp+0x10]
	mov eax, [edi+0x5c]
	test [esi+0x50], eax
	jnz _Z27DynEnt_ClipMoveTraceToBrushPK12DynEntityDefPK13DynEntityPosePK10moveclip_tP7trace_t_10
_Z27DynEnt_ClipMoveTraceToBrushPK12DynEntityDefPK13DynEntityPosePK10moveclip_tP7trace_t_20:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z27DynEnt_ClipMoveTraceToBrushPK12DynEntityDefPK13DynEntityPosePK10moveclip_tP7trace_t_10:
	mov eax, [edi]
	mov [esp], eax
	call _Z21DynEnt_GetEntityProps13DynEntityType
	cmp byte [eax+0x5], 0x0
	jz _Z27DynEnt_ClipMoveTraceToBrushPK12DynEntityDefPK13DynEntityPosePK10moveclip_tP7trace_t_20
	mov eax, [ebp+0xc]
	add eax, 0x10
	mov [ebp-0x50], eax
	mov edx, [ebp+0x14]
	mov eax, [edx]
	mov [esp+0xc], eax
	mov edx, [ebp+0xc]
	mov eax, [edx+0x1c]
	mov [esp+0x8], eax
	mov eax, [ebp-0x50]
	mov [esp+0x4], eax
	lea edx, [esi+0x24]
	mov [ebp-0x54], edx
	mov [esp], edx
	call _Z14CM_TraceSpherePK12TraceExtentsPKfff
	test eax, eax
	jnz _Z27DynEnt_ClipMoveTraceToBrushPK12DynEntityDefPK13DynEntityPosePK10moveclip_tP7trace_t_20
	mov eax, [ebp+0x14]
	movss xmm0, dword [eax]
	movss [ebp-0x4c], xmm0
	lea ebx, [ebp-0x3c]
	mov [esp+0x4], ebx
	mov eax, [ebp+0xc]
	mov [esp], eax
	call _Z14UnitQuatToAxisPKfPA3_f
	mov [esp+0x20], ebx
	mov edx, [ebp-0x50]
	mov [esp+0x1c], edx
	mov eax, [esi+0x50]
	mov [esp+0x18], eax
	movzx eax, word [edi+0x24]
	mov [esp+0x14], eax
	lea eax, [esi+0xc]
	mov [esp+0x10], eax
	mov [esp+0xc], esi
	lea eax, [esi+0x30]
	mov [esp+0x8], eax
	mov eax, [ebp-0x54]
	mov [esp+0x4], eax
	mov edx, [ebp+0x14]
	mov [esp], edx
	call _Z29CM_TransformedBoxTraceRotatedP7trace_tPKfS2_S2_S2_jiS2_PA3_S1_
	mov eax, [ebp+0x14]
	movss xmm0, dword [eax]
	ucomiss xmm0, [ebp-0x4c]
	jae _Z27DynEnt_ClipMoveTraceToBrushPK12DynEntityDefPK13DynEntityPosePK10moveclip_tP7trace_t_20
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	call _Z12DynEnt_GetIdPK12DynEntityDef17DynEntityDrawType
	mov edx, [ebp+0x14]
	mov dword [edx+0x1c], 0x3
	mov [edx+0x20], ax
	jmp _Z27DynEnt_ClipMoveTraceToBrushPK12DynEntityDefPK13DynEntityPosePK10moveclip_tP7trace_t_20


;DynEnt_GetCylindricalRadiusDistSqr(DynEntityPose const*, float const*)
_Z34DynEnt_GetCylindricalRadiusDistSqrPK13DynEntityPosePKf:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x30
	mov eax, [ebp+0x8]
	mov esi, [ebp+0xc]
	movss xmm4, dword [eax+0x1c]
	movaps xmm1, xmm4
	xorps xmm1, [_data16_80000000]
	lea edx, [eax+0x10]
	movss xmm3, dword [eax+0x10]
	movaps xmm0, xmm1
	addss xmm0, xmm3
	movss [ebp-0x1c], xmm0
	movss xmm2, dword [edx+0x4]
	movaps xmm0, xmm1
	addss xmm0, xmm2
	movss [ebp-0x18], xmm0
	movss xmm0, dword [edx+0x8]
	addss xmm1, xmm0
	movss [ebp-0x14], xmm1
	addss xmm3, xmm4
	movss [ebp-0x28], xmm3
	addss xmm2, xmm4
	movss [ebp-0x24], xmm2
	addss xmm4, xmm0
	movss [ebp-0x20], xmm4
	mov edx, 0x1
	lea ebx, [ebp-0x1c]
	lea ecx, [ebp-0x10]
	mov eax, 0x4
_Z34DynEnt_GetCylindricalRadiusDistSqrPK13DynEntityPosePKf_20:
	movss xmm1, dword [eax+esi-0x4]
	movss xmm0, dword [eax+ebx-0x4]
	ucomiss xmm0, xmm1
	jbe _Z34DynEnt_GetCylindricalRadiusDistSqrPK13DynEntityPosePKf_10
	subss xmm0, xmm1
	movss [eax+ecx-0x4], xmm0
_Z34DynEnt_GetCylindricalRadiusDistSqrPK13DynEntityPosePKf_40:
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x3
	jnz _Z34DynEnt_GetCylindricalRadiusDistSqrPK13DynEntityPosePKf_20
	movss xmm1, dword [ebp-0x10]
	movss xmm0, dword [ebp-0xc]
	mulss xmm1, xmm1
	mulss xmm0, xmm0
	addss xmm1, xmm0
	movss [ebp-0x2c], xmm1
	fld dword [ebp-0x2c]
	add esp, 0x30
	pop ebx
	pop esi
	pop ebp
	ret
_Z34DynEnt_GetCylindricalRadiusDistSqrPK13DynEntityPosePKf_10:
	movss xmm0, dword [eax+ebp-0x2c]
	ucomiss xmm1, xmm0
	jbe _Z34DynEnt_GetCylindricalRadiusDistSqrPK13DynEntityPosePKf_30
	subss xmm1, xmm0
	movss [eax+ecx-0x4], xmm1
	jmp _Z34DynEnt_GetCylindricalRadiusDistSqrPK13DynEntityPosePKf_40
_Z34DynEnt_GetCylindricalRadiusDistSqrPK13DynEntityPosePKf_30:
	mov dword [eax+ecx-0x4], 0x0
	jmp _Z34DynEnt_GetCylindricalRadiusDistSqrPK13DynEntityPosePKf_40
	nop


;Initialized global or static variables of DynEntity_coll:
SECTION .data


;Initialized constant data of DynEntity_coll:
SECTION .rdata


;Zero initialized global or static variables of DynEntity_coll:
SECTION .bss
dynEntCollWorlds: resb 0xa080


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata
_float_512_00000000:		dd 0x44000000	; 512
_float_0_50000000:		dd 0x3f000000	; 0.5
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; OWORD

