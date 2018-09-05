;Imports of xmodel_load_phys_collmap:
	extern Com_Parse
	extern strcmp
	extern Com_UngetToken
	extern Com_ParseOnLine
	extern Com_PrintError
	extern IntersectPlanes
	extern SnapPointToIntersectingPlanes
	extern atoi
	extern Com_SkipRestOfLine
	extern memset
	extern Phys_ComputeMassProperties
	extern Com_Parse1DMatrix
	extern PlaneFromPoints
	extern Q_rint
	extern Com_ParseFloat
	extern Com_ParseFloatOnLine
	extern Com_MatchToken
	extern vectoangles
	extern AnglesToAxis
	extern BuildBrushdAdjacencyWindingForSide
	extern Com_sprintf
	extern FS_ReadFile
	extern FS_FreeFile
	extern Com_SkipBracedSection
	extern Com_PrintWarning
	extern VecNCompareCustomEpsilon
	extern strchr

;Exports of xmodel_load_phys_collmap:
	global Map_SkipNamedFlags
	global GetPlaneIntersections
	global IsBoxInGeom
	global Xmodel_ParsePhysicsCollMap
	global XModel_LoadPhysicsCollMap
	global RemoveDuplicateBrushPlanes
	global SkipEpair


SECTION .text


;Map_SkipNamedFlags(char const**, char const*)
Map_SkipNamedFlags:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, eax
	mov esi, edx
	mov [esp], eax
	call Com_Parse
	mov [esp+0x4], esi
	mov [esp], eax
	call strcmp
	test eax, eax
	jz Map_SkipNamedFlags_10
	call Com_UngetToken
	mov eax, 0x1
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Map_SkipNamedFlags_10:
	mov [esp], ebx
	call Com_ParseOnLine
	movzx eax, byte [eax]
	test al, al
	jz Map_SkipNamedFlags_20
	cmp al, 0x3b
	jnz Map_SkipNamedFlags_10
	mov eax, 0x1
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
Map_SkipNamedFlags_20:
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_missing_token_fo
	mov dword [esp], 0x13
	call Com_PrintError
	xor eax, eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;GetPlaneIntersections(float const (*) [4], unsigned int, SimplePlaneIntersection*, unsigned int)
GetPlaneIntersections:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov [ebp-0x58], eax
	mov edi, edx
	mov [ebp-0x5c], ecx
	mov eax, edx
	sub eax, 0x2
	mov [ebp-0x54], eax
	jz GetPlaneIntersections_10
	lea edx, [edx-0x1]
	mov [ebp-0x40], edx
	mov dword [ebp-0x44], 0x0
	mov dword [ebp-0x50], 0x0
	mov dword [ebp-0x4c], 0x0
	mov eax, [ebp-0x44]
GetPlaneIntersections_110:
	shl eax, 0x4
	add eax, [ebp-0x58]
	mov [ebp-0x30], eax
	mov eax, [ebp-0x44]
	add eax, 0x1
	cmp [ebp-0x40], eax
	jbe GetPlaneIntersections_20
	mov [ebp-0x3c], eax
	mov [ebp-0x48], eax
	mov eax, [ebp-0x40]
	mov [ebp-0x64], eax
	mov eax, [ebp-0x48]
	jmp GetPlaneIntersections_30
GetPlaneIntersections_40:
	add dword [ebp-0x3c], 0x1
	mov eax, [ebp-0x3c]
	mov [ebp-0x48], eax
	mov edx, [ebp-0x64]
	cmp eax, edx
	jz GetPlaneIntersections_20
GetPlaneIntersections_30:
	shl eax, 0x4
	add eax, [ebp-0x58]
	mov [ebp-0x2c], eax
	mov edx, [ebp-0x48]
	add edx, 0x1
	cmp edi, edx
	jbe GetPlaneIntersections_40
	mov eax, edx
	shl eax, 0x4
	mov esi, [ebp-0x58]
	add esi, eax
	mov ebx, edx
	mov [ebp-0x60], edi
	jmp GetPlaneIntersections_50
GetPlaneIntersections_60:
	lea eax, [ebx+0x1]
	add esi, 0x10
	mov ebx, eax
	cmp eax, [ebp-0x60]
	jz GetPlaneIntersections_40
GetPlaneIntersections_50:
	mov [ebp-0x28], esi
	lea edx, [ebp-0x24]
	mov [esp+0x4], edx
	lea eax, [ebp-0x30]
	mov [esp], eax
	call IntersectPlanes
	test eax, eax
	jz GetPlaneIntersections_60
	mov dword [esp+0xc], 0x3c23d70a
	mov dword [esp+0x8], 0x3e800000
	lea edx, [ebp-0x24]
	mov [esp+0x4], edx
	lea eax, [ebp-0x30]
	mov [esp], eax
	call SnapPointToIntersectingPlanes
	test edi, edi
	jz GetPlaneIntersections_70
	movss xmm4, dword [ebp-0x24]
	movss xmm3, dword [ebp-0x20]
	movss xmm2, dword [ebp-0x1c]
	mov eax, [ebp-0x58]
	xor edx, edx
GetPlaneIntersections_90:
	cmp edx, [ebp-0x44]
	jz GetPlaneIntersections_80
	cmp edx, [ebp-0x48]
	jz GetPlaneIntersections_80
	cmp edx, ebx
	jz GetPlaneIntersections_80
	movaps xmm0, xmm4
	mulss xmm0, [eax]
	movaps xmm1, xmm3
	mulss xmm1, [eax+0x4]
	addss xmm0, xmm1
	movaps xmm1, xmm2
	mulss xmm1, [eax+0x8]
	addss xmm0, xmm1
	subss xmm0, [eax+0xc]
	ucomiss xmm0, [_float_0_01000000]
	ja GetPlaneIntersections_60
GetPlaneIntersections_80:
	add edx, 0x1
	add eax, 0x10
	cmp edi, edx
	jnz GetPlaneIntersections_90
GetPlaneIntersections_70:
	mov edx, [ebp-0x50]
	cmp [ebp+0x8], edx
	jle GetPlaneIntersections_100
	lea eax, [edx+edx*2]
	mov edx, [ebp-0x5c]
	lea eax, [edx+eax*8]
	mov edx, [ebp-0x24]
	mov [eax], edx
	mov edx, [ebp-0x20]
	mov [eax+0x4], edx
	mov edx, [ebp-0x1c]
	mov [eax+0x8], edx
	mov edx, [ebp-0x44]
	mov [eax+0xc], edx
	mov edx, [ebp-0x48]
	mov [eax+0x10], edx
	mov [eax+0x14], ebx
	add dword [ebp-0x50], 0x1
	jmp GetPlaneIntersections_60
GetPlaneIntersections_100:
	mov [esp+0xc], edi
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_more_than_i_poin
	mov dword [esp], 0x13
	call Com_PrintError
	mov dword [ebp-0x50], 0x0
	jmp GetPlaneIntersections_60
GetPlaneIntersections_20:
	add dword [ebp-0x4c], 0x1
	mov eax, [ebp-0x4c]
	mov [ebp-0x44], eax
	cmp [ebp-0x54], eax
	jnz GetPlaneIntersections_110
	mov eax, [ebp-0x50]
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
GetPlaneIntersections_10:
	mov dword [ebp-0x50], 0x0
	mov eax, [ebp-0x50]
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;IsBoxInGeom(float const*, float const*, PhysGeomList const*)
IsBoxInGeom:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov eax, [ebp+0x10]
	mov edi, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x48], eax
	test eax, eax
	jz IsBoxInGeom_10
	mov dword [ebp-0x44], 0x0
IsBoxInGeom_100:
	mov ebx, [edi]
	test ebx, ebx
	jz IsBoxInGeom_20
	mov edx, ebx
	mov ecx, 0x1
IsBoxInGeom_40:
	lea eax, [ecx*4]
	mov esi, [ebp+0x8]
	movss xmm2, dword [esi+eax-0x4]
	mov esi, [ebp+0xc]
	movss xmm3, dword [eax+esi-0x4]
	movaps xmm1, xmm2
	addss xmm1, xmm3
	movss xmm0, dword [edx]
	ucomiss xmm0, xmm1
	jae IsBoxInGeom_30
	subss xmm2, xmm3
	ucomiss xmm2, [edx+0x10]
	jae IsBoxInGeom_30
	add ecx, 0x1
	add edx, 0x4
	cmp ecx, 0x4
	jnz IsBoxInGeom_40
	mov esi, [ebx+0x1c]
	test esi, esi
	jz IsBoxInGeom_50
	mov eax, [ebp+0xc]
	movss xmm0, dword [eax]
	movss [ebp-0x40], xmm0
	movss xmm1, dword [eax+0x4]
	movss [ebp-0x3c], xmm1
	movss xmm7, dword [eax+0x8]
	mov eax, [ebp+0x8]
	movss xmm5, dword [eax]
	movss xmm4, dword [eax+0x4]
	movss xmm3, dword [eax+0x8]
	mov edx, [ebx+0x20]
	and ecx, 0xffffff00
	movss xmm6, dword [_data16_7fffffff]
	movaps xmm1, xmm0
	jmp IsBoxInGeom_60
IsBoxInGeom_70:
	movss xmm1, dword [ebp-0x40]
IsBoxInGeom_60:
	mov eax, [edx]
	movaps xmm2, xmm5
	mulss xmm2, [eax]
	movaps xmm0, xmm4
	mulss xmm0, [eax+0x4]
	addss xmm2, xmm0
	movaps xmm0, xmm3
	mulss xmm0, [eax+0x8]
	addss xmm2, xmm0
	subss xmm2, [eax+0xc]
	mulss xmm1, [eax]
	andps xmm1, xmm6
	cvtss2sd xmm1, xmm1
	movss xmm0, dword [ebp-0x3c]
	mulss xmm0, [eax+0x4]
	andps xmm0, xmm6
	cvtss2sd xmm0, xmm0
	addsd xmm1, xmm0
	movaps xmm0, xmm7
	mulss xmm0, [eax+0x8]
	andps xmm0, xmm6
	cvtss2sd xmm0, xmm0
	addsd xmm1, xmm0
	cvtsd2ss xmm0, xmm1
	subss xmm2, xmm0
	pxor xmm0, xmm0
	ucomiss xmm2, xmm0
	jae IsBoxInGeom_30
	add ecx, 0x1
	add edx, 0xc
	cmp esi, ecx
	jnz IsBoxInGeom_70
IsBoxInGeom_50:
	mov eax, 0x1
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
IsBoxInGeom_20:
	mov eax, [edi+0x4]
	cmp eax, 0x1
	jz IsBoxInGeom_80
	cmp eax, 0x4
	jz IsBoxInGeom_90
IsBoxInGeom_30:
	add dword [ebp-0x44], 0x1
	add edi, 0x44
	mov eax, [ebp-0x48]
	cmp [ebp-0x44], eax
	jnz IsBoxInGeom_100
IsBoxInGeom_10:
	xor eax, eax
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
IsBoxInGeom_80:
	mov eax, [ebp+0xc]
	movss xmm0, dword [eax]
	movss [ebp-0x38], xmm0
	movss xmm1, dword [eax+0x4]
	movss [ebp-0x34], xmm1
	movss xmm7, dword [eax+0x8]
	movss [ebp-0x30], xmm7
	lea eax, [edi+0x2c]
	movss xmm0, dword [edi+0x2c]
	movss [ebp-0x2c], xmm0
	movss xmm1, dword [eax+0x4]
	movss [ebp-0x28], xmm1
	movss xmm7, dword [eax+0x8]
	movss [ebp-0x24], xmm7
	mov eax, [ebp+0x8]
	movss xmm0, dword [eax]
	movss [ebp-0x20], xmm0
	movss xmm1, dword [eax+0x4]
	movss [ebp-0x1c], xmm1
	movss xmm7, dword [eax+0x8]
	xor ecx, ecx
	movss xmm6, dword [_data16_7fffffff]
	lea edx, [edi+0x38]
	mov eax, edi
	movaps xmm5, xmm0
	movaps xmm3, xmm1
IsBoxInGeom_110:
	movss xmm0, dword [eax+0x8]
	movss xmm1, dword [eax+0xc]
	movss xmm2, dword [eax+0x10]
	mulss xmm5, xmm0
	mulss xmm3, xmm1
	addss xmm5, xmm3
	movaps xmm3, xmm2
	mulss xmm3, xmm7
	addss xmm5, xmm3
	movss xmm3, dword [ebp-0x2c]
	mulss xmm3, xmm0
	movss xmm4, dword [ebp-0x28]
	mulss xmm4, xmm1
	addss xmm3, xmm4
	movss xmm4, dword [ebp-0x24]
	mulss xmm4, xmm2
	addss xmm3, xmm4
	subss xmm5, xmm3
	andps xmm5, xmm6
	subss xmm5, [edx]
	mulss xmm0, [ebp-0x38]
	andps xmm0, xmm6
	cvtss2sd xmm0, xmm0
	mulss xmm1, [ebp-0x34]
	andps xmm1, xmm6
	cvtss2sd xmm1, xmm1
	addsd xmm0, xmm1
	mulss xmm2, [ebp-0x30]
	andps xmm2, xmm6
	cvtss2sd xmm2, xmm2
	addsd xmm0, xmm2
	cvtsd2ss xmm0, xmm0
	subss xmm5, xmm0
	pxor xmm0, xmm0
	ucomiss xmm5, xmm0
	jae IsBoxInGeom_30
	add ecx, 0x1
	add eax, 0xc
	add edx, 0x4
	cmp ecx, 0x3
	jz IsBoxInGeom_50
	movss xmm5, dword [ebp-0x20]
	movss xmm3, dword [ebp-0x1c]
	jmp IsBoxInGeom_110
IsBoxInGeom_90:
	movss xmm5, dword [edi+0x38]
	movss xmm4, dword [edi+0x3c]
	mov edx, edi
	mov ecx, 0x1
	movss xmm6, dword [_data16_7fffffff]
	movss xmm3, dword [_float_1_00000000]
IsBoxInGeom_130:
	movss xmm2, dword [edx+0x8]
	andps xmm2, xmm6
	movaps xmm0, xmm3
	subss xmm0, xmm2
	pxor xmm1, xmm1
	ucomiss xmm0, xmm1
	jb IsBoxInGeom_120
	movaps xmm0, xmm2
	mulss xmm0, xmm2
IsBoxInGeom_140:
	lea eax, [ecx*4]
	movss xmm1, dword [edx+0x2c]
	mov ebx, [ebp+0x8]
	subss xmm1, [ebx+eax-0x4]
	andps xmm1, xmm6
	mov esi, [ebp+0xc]
	subss xmm1, [esi+eax-0x4]
	mulss xmm2, xmm5
	movaps xmm7, xmm3
	subss xmm7, xmm0
	sqrtss xmm0, xmm7
	mulss xmm0, xmm4
	addss xmm2, xmm0
	subss xmm1, xmm2
	pxor xmm0, xmm0
	ucomiss xmm1, xmm0
	jae IsBoxInGeom_30
	add ecx, 0x1
	add edx, 0x4
	cmp ecx, 0x4
	jnz IsBoxInGeom_130
	jmp IsBoxInGeom_50
IsBoxInGeom_120:
	movaps xmm0, xmm3
	movaps xmm2, xmm3
	jmp IsBoxInGeom_140
	nop
	add [eax], al


;Xmodel_ParsePhysicsCollMap(char const**, char const*, unsigned int, void* (*)(int))
Xmodel_ParsePhysicsCollMap:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x69ec
	mov [ebp-0x6988], eax
	mov [ebp-0x698c], edx
	mov [ebp-0x6990], ecx
	mov [esp], eax
	call Com_Parse
	mov edi, _cstring_iwmap
	mov ecx, 0x6
	cld
	mov esi, eax
	repe cmpsb
	mov ebx, 0x0
	jz Xmodel_ParsePhysicsCollMap_10
	movzx ebx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub ebx, ecx
Xmodel_ParsePhysicsCollMap_10:
	test ebx, ebx
	jnz Xmodel_ParsePhysicsCollMap_20
	mov edx, [ebp-0x6988]
	mov [esp], edx
	call Com_Parse
	mov ebx, eax
	mov [esp], eax
	call atoi
	cmp eax, 0x4
	jz Xmodel_ParsePhysicsCollMap_30
	mov dword [esp+0x10], 0x4
	mov [esp+0xc], ebx
	mov ecx, [ebp-0x698c]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_error_s_is_versi
	mov dword [esp], 0x13
	call Com_PrintError
	mov dword [ebp-0x6984], 0x0
Xmodel_ParsePhysicsCollMap_150:
	mov eax, [ebp-0x6984]
	add esp, 0x69ec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Xmodel_ParsePhysicsCollMap_60:
	mov ecx, 0x2
	cld
	mov esi, eax
	mov edi, _cstring_
	repe cmpsb
	mov eax, 0x0
	jz Xmodel_ParsePhysicsCollMap_40
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
Xmodel_ParsePhysicsCollMap_40:
	test eax, eax
	jz Xmodel_ParsePhysicsCollMap_50
	mov eax, [ebp-0x6988]
	mov [esp], eax
	call Com_SkipRestOfLine
Xmodel_ParsePhysicsCollMap_30:
	mov esi, [ebp-0x6988]
	mov [esp], esi
	call Com_Parse
	cmp byte [eax], 0x0
	jnz Xmodel_ParsePhysicsCollMap_60
Xmodel_ParsePhysicsCollMap_300:
	mov dword [ebp-0x6984], 0x0
	mov eax, [ebp-0x6984]
	add esp, 0x69ec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Xmodel_ParsePhysicsCollMap_50:
	mov dword [esp], 0x2c
	call dword [ebp+0x8]
	mov [ebp-0x6984], eax
	cld
	mov ecx, 0xb
	xor eax, eax
	mov edi, [ebp-0x6984]
	rep stosd
	mov ecx, [ebp-0x6990]
	mov edx, [ebp-0x6984]
	mov [edx], ecx
	mov eax, ecx
	shl eax, 0x6
	lea ebx, [eax+ecx*4]
	mov [esp], ebx
	call dword [ebp+0x8]
	mov esi, [ebp-0x6984]
	mov [esi+0x4], eax
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	mov eax, [ebp-0x6990]
	test eax, eax
	jnz Xmodel_ParsePhysicsCollMap_70
Xmodel_ParsePhysicsCollMap_180:
	mov eax, 0x7f7fffff
	mov [ebp-0x4c], eax
	mov [ebp-0x48], eax
	mov [ebp-0x44], eax
	mov eax, 0xff7fffff
	mov [ebp-0x28], eax
	mov [ebp-0x24], eax
	mov [ebp-0x20], eax
	mov edx, [ebp-0x6990]
	test edx, edx
	jz Xmodel_ParsePhysicsCollMap_80
	xor ebx, ebx
	xor esi, esi
	pxor xmm3, xmm3
	movss xmm7, dword [_data16_7fffffff]
	lea edi, [ebp-0x34]
	jmp Xmodel_ParsePhysicsCollMap_90
Xmodel_ParsePhysicsCollMap_100:
	mov eax, [edx]
	mov [ebp-0x34], eax
	mov eax, [edx+0x4]
	mov [ebp-0x30], eax
	mov eax, [edx+0x8]
	mov [ebp-0x2c], eax
	mov eax, [ecx]
	lea edx, [eax+0x10]
	mov eax, [eax+0x10]
	mov [ebp-0x40], eax
	mov eax, [edx+0x4]
	mov [ebp-0x3c], eax
	mov eax, [edx+0x8]
	mov [ebp-0x38], eax
Xmodel_ParsePhysicsCollMap_140:
	movss xmm1, dword [ebp-0x40]
	movss xmm2, dword [ebp-0x28]
	movaps xmm0, xmm2
	subss xmm0, xmm1
	movaps xmm4, xmm3
	cmpss xmm4, xmm0, 0x6
	movaps xmm0, xmm4
	andps xmm1, xmm4
	andnps xmm0, xmm2
	orps xmm0, xmm1
	movss [ebp-0x28], xmm0
	movss xmm1, dword [ebp-0x3c]
	movss xmm2, dword [ebp-0x24]
	movaps xmm0, xmm2
	subss xmm0, xmm1
	movaps xmm4, xmm3
	cmpss xmm4, xmm0, 0x6
	movaps xmm0, xmm4
	andps xmm1, xmm4
	andnps xmm0, xmm2
	orps xmm0, xmm1
	movss [ebp-0x24], xmm0
	movss xmm1, dword [ebp-0x38]
	movss xmm2, dword [ebp-0x20]
	movaps xmm0, xmm2
	subss xmm0, xmm1
	movaps xmm4, xmm3
	cmpss xmm4, xmm0, 0x6
	movaps xmm0, xmm4
	andps xmm1, xmm4
	andnps xmm0, xmm2
	orps xmm0, xmm1
	movss [ebp-0x20], xmm0
	movss xmm1, dword [ebp-0x34]
	movss xmm2, dword [ebp-0x4c]
	movaps xmm0, xmm1
	subss xmm0, xmm2
	movaps xmm4, xmm3
	cmpss xmm4, xmm0, 0x6
	movaps xmm0, xmm4
	andps xmm1, xmm4
	andnps xmm0, xmm2
	orps xmm0, xmm1
	movss [ebp-0x4c], xmm0
	movss xmm1, dword [ebp-0x30]
	movss xmm2, dword [ebp-0x48]
	movaps xmm0, xmm1
	subss xmm0, xmm2
	movaps xmm4, xmm3
	cmpss xmm4, xmm0, 0x6
	movaps xmm0, xmm4
	andps xmm1, xmm4
	andnps xmm0, xmm2
	orps xmm0, xmm1
	movss [ebp-0x48], xmm0
	movss xmm1, dword [ebp-0x2c]
	movss xmm2, dword [ebp-0x44]
	movaps xmm0, xmm1
	subss xmm0, xmm2
	movaps xmm4, xmm3
	cmpss xmm4, xmm0, 0x6
	movaps xmm0, xmm4
	andps xmm1, xmm4
	andnps xmm0, xmm2
	orps xmm0, xmm1
	movss [ebp-0x44], xmm0
	add ebx, 0x1
	add esi, 0x44
	cmp [ebp-0x6990], ebx
	jz Xmodel_ParsePhysicsCollMap_80
Xmodel_ParsePhysicsCollMap_90:
	mov ecx, esi
	mov eax, [ebp-0x6984]
	add ecx, [eax+0x4]
	mov edx, [ecx]
	test edx, edx
	jnz Xmodel_ParsePhysicsCollMap_100
	mov eax, [ecx+0x4]
	cmp eax, 0x1
	jz Xmodel_ParsePhysicsCollMap_110
	cmp eax, 0x4
	jz Xmodel_ParsePhysicsCollMap_120
	movaps xmm5, xmm3
	movaps xmm4, xmm3
	movaps xmm6, xmm3
Xmodel_ParsePhysicsCollMap_310:
	mov edx, ecx
	mov ecx, 0x1
	movaps xmm2, xmm7
Xmodel_ParsePhysicsCollMap_130:
	movaps xmm1, xmm6
	mulss xmm1, [edx+0x8]
	andps xmm1, xmm2
	movaps xmm0, xmm4
	mulss xmm0, [edx+0x14]
	andps xmm0, xmm2
	addss xmm1, xmm0
	movaps xmm0, xmm5
	mulss xmm0, [edx+0x20]
	andps xmm0, xmm2
	addss xmm1, xmm0
	lea eax, [ecx*4]
	movss xmm0, dword [edx+0x2c]
	subss xmm0, xmm1
	movss [edi+eax-0x4], xmm0
	addss xmm1, [edx+0x2c]
	movss [ebp+eax-0x44], xmm1
	add ecx, 0x1
	add edx, 0x4
	cmp ecx, 0x4
	jnz Xmodel_ParsePhysicsCollMap_130
	jmp Xmodel_ParsePhysicsCollMap_140
Xmodel_ParsePhysicsCollMap_80:
	mov eax, [ebp-0x6984]
	add eax, 0x20
	mov [esp+0x18], eax
	mov eax, [ebp-0x6984]
	add eax, 0x14
	mov [esp+0x14], eax
	mov eax, [ebp-0x6984]
	add eax, 0x8
	mov [esp+0x10], eax
	mov eax, [ebp-0x6984]
	mov [esp+0xc], eax
	mov dword [esp+0x8], IsBoxInGeom
	lea eax, [ebp-0x28]
	mov [esp+0x4], eax
	lea eax, [ebp-0x4c]
	mov [esp], eax
	call Phys_ComputeMassProperties
	jmp Xmodel_ParsePhysicsCollMap_150
Xmodel_ParsePhysicsCollMap_20:
	mov eax, [ebp-0x698c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_s_is_missi
	mov dword [esp], 0x13
	call Com_PrintError
	mov dword [ebp-0x6984], 0x0
	mov eax, [ebp-0x6984]
	add esp, 0x69ec
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
Xmodel_ParsePhysicsCollMap_70:
	mov dword [ebp-0x6980], 0x0
	mov dword [ebp-0x69a8], 0x0
	mov dword [ebp-0x69ac], 0x0
	mov dword [ebp-0x69b0], 0x0
Xmodel_ParsePhysicsCollMap_430:
	mov eax, [ebp-0x6988]
	mov [esp], eax
	call Com_Parse
	mov [ebp-0x69d0], eax
	cmp byte [eax], 0x0
	jz Xmodel_ParsePhysicsCollMap_160
	mov ebx, 0x2
	cld
	mov esi, eax
	mov edi, _cstring_1
	mov ecx, ebx
	repe cmpsb
	mov eax, 0x0
	jz Xmodel_ParsePhysicsCollMap_170
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
Xmodel_ParsePhysicsCollMap_170:
	test eax, eax
	jz Xmodel_ParsePhysicsCollMap_180
	mov esi, [ebp-0x69d0]
	mov edi, _cstring_
	mov ecx, ebx
	repe cmpsb
	mov eax, 0x0
	jz Xmodel_ParsePhysicsCollMap_190
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
Xmodel_ParsePhysicsCollMap_190:
	test eax, eax
	jnz Xmodel_ParsePhysicsCollMap_200
	mov esi, [ebp-0x6988]
	mov [esp], esi
	call Com_Parse
	mov [ebp-0x69d0], eax
	cmp byte [eax], 0x0
	jz Xmodel_ParsePhysicsCollMap_180
	mov edi, _cstring_curve
	mov bl, 0x6
	cld
	mov esi, eax
	mov ecx, ebx
	repe cmpsb
	mov edx, 0x0
	jz Xmodel_ParsePhysicsCollMap_210
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
Xmodel_ParsePhysicsCollMap_210:
	test edx, edx
	jz Xmodel_ParsePhysicsCollMap_220
	mov edi, _cstring_mesh
	mov bl, 0x5
	mov esi, [ebp-0x69d0]
	mov ecx, ebx
	repe cmpsb
	mov edx, 0x0
	jz Xmodel_ParsePhysicsCollMap_230
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
Xmodel_ParsePhysicsCollMap_230:
	test edx, edx
	jz Xmodel_ParsePhysicsCollMap_240
	mov edi, _cstring_physics_cylinder
	mov bl, 0x11
	mov esi, [ebp-0x69d0]
	mov ecx, ebx
	repe cmpsb
	mov edx, 0x0
	jz Xmodel_ParsePhysicsCollMap_250
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
Xmodel_ParsePhysicsCollMap_250:
	test edx, edx
	jz Xmodel_ParsePhysicsCollMap_260
	mov edi, _cstring_physics_box
	mov ebx, 0xc
	cld
	mov esi, [ebp-0x69d0]
	mov ecx, ebx
	repe cmpsb
	mov edx, 0x0
	jz Xmodel_ParsePhysicsCollMap_270
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
Xmodel_ParsePhysicsCollMap_270:
	test edx, edx
	jnz Xmodel_ParsePhysicsCollMap_280
	mov ebx, [ebp-0x69ac]
	mov esi, [ebp-0x6984]
	add ebx, [esi+0x4]
	mov eax, [ebp-0x6988]
	mov [esp], eax
	call Com_Parse
	cmp byte [eax], 0x7b
	jz Xmodel_ParsePhysicsCollMap_290
Xmodel_ParsePhysicsCollMap_460:
	mov dword [esp+0x4], _cstring_expecting__while
	mov dword [esp], 0x13
	call Com_PrintError
	jmp Xmodel_ParsePhysicsCollMap_300
Xmodel_ParsePhysicsCollMap_110:
	movss xmm6, dword [ecx+0x38]
	movss xmm4, dword [ecx+0x3c]
	movss xmm5, dword [ecx+0x40]
	jmp Xmodel_ParsePhysicsCollMap_310
Xmodel_ParsePhysicsCollMap_280:
	call Com_UngetToken
	mov edx, [ebp-0x69a8]
	mov eax, [ebp-0x6984]
	add edx, [eax+0x4]
	mov [ebp-0x697c], edx
	mov dword [ebp-0x1c], 0x0
	mov ecx, [ebp-0x6988]
	mov [esp], ecx
	call Com_Parse
	mov edi, _cstring_layer
	mov ecx, 0x6
	cld
	mov esi, eax
	repe cmpsb
	mov ebx, 0x0
	jz Xmodel_ParsePhysicsCollMap_320
	movzx ebx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub ebx, ecx
Xmodel_ParsePhysicsCollMap_320:
	test ebx, ebx
	jz Xmodel_ParsePhysicsCollMap_330
	call Com_UngetToken
Xmodel_ParsePhysicsCollMap_420:
	mov edx, _cstring_contents
	mov eax, [ebp-0x6988]
	call Map_SkipNamedFlags
	test al, al
	jz Xmodel_ParsePhysicsCollMap_300
	mov edx, _cstring_toolflags
	mov eax, [ebp-0x6988]
	call Map_SkipNamedFlags
	test al, al
	jz Xmodel_ParsePhysicsCollMap_300
Xmodel_ParsePhysicsCollMap_410:
	mov edx, [ebp-0x6988]
	mov [esp], edx
	call Com_Parse
	cmp byte [eax], 0x0
	jz Xmodel_ParsePhysicsCollMap_300
	mov ecx, 0x2
	cld
	mov esi, eax
	mov edi, _cstring_1
	repe cmpsb
	mov eax, 0x0
	jz Xmodel_ParsePhysicsCollMap_340
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
Xmodel_ParsePhysicsCollMap_340:
	test eax, eax
	jz Xmodel_ParsePhysicsCollMap_350
	call Com_UngetToken
	cmp dword [ebp-0x1c], 0x20
	jz Xmodel_ParsePhysicsCollMap_360
	lea ecx, [ebp-0x88]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x3
	mov esi, [ebp-0x6988]
	mov [esp], esi
	call Com_Parse1DMatrix
	lea eax, [ebp-0x7c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x3
	mov [esp], esi
	call Com_Parse1DMatrix
	lea edx, [ebp-0x70]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x3
	mov [esp], esi
	call Com_Parse1DMatrix
	lea ecx, [ebp-0x70]
	mov [esp+0xc], ecx
	lea esi, [ebp-0x7c]
	mov [esp+0x8], esi
	lea eax, [ebp-0x88]
	mov [esp+0x4], eax
	mov eax, [ebp-0x1c]
	shl eax, 0x4
	lea edx, [ebp-0x288]
	lea eax, [edx+eax]
	mov [esp], eax
	call PlaneFromPoints
	mov eax, [ebp-0x1c]
	shl eax, 0x4
	lea ebx, [ebp-0x288]
	add ebx, eax
	mov eax, ebx
	xor edx, edx
	movss xmm2, dword [_data16_7fffffff]
	movss xmm5, dword [_float_1_00000000]
	movaps xmm3, xmm2
	movsd xmm4, qword [_double_0_00000010]
Xmodel_ParsePhysicsCollMap_390:
	movss xmm1, dword [eax]
	movaps xmm0, xmm1
	subss xmm0, xmm5
	andps xmm0, xmm2
	cvtss2sd xmm0, xmm0
	ucomisd xmm4, xmm0
	ja Xmodel_ParsePhysicsCollMap_370
	addss xmm1, xmm5
	andps xmm1, xmm3
	cvtss2sd xmm0, xmm1
	ucomisd xmm4, xmm0
	ja Xmodel_ParsePhysicsCollMap_380
	add eax, 0x4
	add edx, 0x4
	cmp edx, 0xc
	jnz Xmodel_ParsePhysicsCollMap_390
Xmodel_ParsePhysicsCollMap_480:
	movss xmm0, dword [ebx+0xc]
	movss [esp], xmm0
	movss [ebp-0x69c8], xmm0
	call Q_rint
	fstp dword [ebp-0x6964]
	movss xmm0, dword [ebp-0x69c8]
	subss xmm0, [ebp-0x6964]
	andps xmm0, [_data16_7fffffff]
	cvtss2sd xmm0, xmm0
	ucomisd xmm0, [_double_0_00100000]
	jb Xmodel_ParsePhysicsCollMap_400
Xmodel_ParsePhysicsCollMap_440:
	add dword [ebp-0x1c], 0x1
	mov ecx, [ebp-0x6988]
	mov [esp], ecx
	call Com_SkipRestOfLine
	jmp Xmodel_ParsePhysicsCollMap_410
Xmodel_ParsePhysicsCollMap_120:
	movss xmm6, dword [ecx+0x38]
	movss xmm5, dword [ecx+0x3c]
	movaps xmm4, xmm5
	jmp Xmodel_ParsePhysicsCollMap_310
Xmodel_ParsePhysicsCollMap_330:
	mov eax, [ebp-0x6988]
	mov [esp], eax
	call Com_ParseOnLine
	jmp Xmodel_ParsePhysicsCollMap_420
Xmodel_ParsePhysicsCollMap_290:
	mov dword [ebx+0x4], 0x1
	mov edx, [ebp-0x6988]
	mov [esp], edx
	call Com_ParseFloat
	fstp dword [ebx+0x8]
	mov ecx, [ebp-0x6988]
	mov [esp], ecx
	call Com_ParseFloatOnLine
	fstp dword [ebx+0xc]
	mov esi, [ebp-0x6988]
	mov [esp], esi
	call Com_ParseFloatOnLine
	fstp dword [ebx+0x10]
	mov [esp], esi
	call Com_ParseFloat
	fstp dword [ebx+0x14]
	mov [esp], esi
	call Com_ParseFloatOnLine
	fstp dword [ebx+0x18]
	mov [esp], esi
	call Com_ParseFloatOnLine
	fstp dword [ebx+0x1c]
	mov [esp], esi
	call Com_ParseFloat
	fstp dword [ebx+0x20]
	mov [esp], esi
	call Com_ParseFloatOnLine
	fstp dword [ebx+0x24]
	mov [esp], esi
	call Com_ParseFloatOnLine
	fstp dword [ebx+0x28]
	mov [esp], esi
	call Com_ParseFloatOnLine
	fstp dword [ebx+0x2c]
	mov [esp], esi
	call Com_ParseFloatOnLine
	fstp dword [ebx+0x30]
	mov [esp], esi
	call Com_ParseFloatOnLine
	fstp dword [ebx+0x34]
	mov [esp], esi
	call Com_ParseFloatOnLine
	fstp dword [ebx+0x38]
	mov [esp], esi
	call Com_ParseFloatOnLine
	fstp dword [ebx+0x3c]
	mov [esp], esi
	call Com_ParseFloatOnLine
	fstp dword [ebx+0x40]
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_1
	mov [esp], esi
	call Com_MatchToken
	test eax, eax
	jz Xmodel_ParsePhysicsCollMap_300
Xmodel_ParsePhysicsCollMap_470:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_1
	mov [esp], esi
	call Com_MatchToken
	test eax, eax
	jz Xmodel_ParsePhysicsCollMap_300
Xmodel_ParsePhysicsCollMap_740:
	add dword [ebp-0x6980], 0x1
	add dword [ebp-0x69b0], 0x44
	add dword [ebp-0x69ac], 0x44
	add dword [ebp-0x69a8], 0x44
Xmodel_ParsePhysicsCollMap_450:
	mov edx, [ebp-0x6980]
	cmp [ebp-0x6990], edx
	ja Xmodel_ParsePhysicsCollMap_430
	jmp Xmodel_ParsePhysicsCollMap_180
Xmodel_ParsePhysicsCollMap_400:
	jp Xmodel_ParsePhysicsCollMap_440
	mov eax, [ebx+0xc]
	mov [esp], eax
	call Q_rint
	fstp dword [ebx+0xc]
	jmp Xmodel_ParsePhysicsCollMap_440
Xmodel_ParsePhysicsCollMap_200:
	mov esi, [ebp-0x6988]
	mov [esp+0x4], esi
	mov eax, [ebp-0x69d0]
	mov [esp], eax
	call SkipEpair
	test al, al
	jnz Xmodel_ParsePhysicsCollMap_450
	jmp Xmodel_ParsePhysicsCollMap_300
Xmodel_ParsePhysicsCollMap_260:
	mov ebx, [ebp-0x69b0]
	mov esi, [ebp-0x6984]
	add ebx, [esi+0x4]
	mov eax, [ebp-0x6988]
	mov [esp], eax
	call Com_Parse
	cmp byte [eax], 0x7b
	jnz Xmodel_ParsePhysicsCollMap_460
	mov dword [ebx+0x4], 0x4
	mov edx, [ebp-0x6988]
	mov [esp], edx
	call Com_ParseFloat
	fstp dword [ebp-0x64]
	mov ecx, [ebp-0x6988]
	mov [esp], ecx
	call Com_ParseFloatOnLine
	fstp dword [ebp-0x60]
	mov esi, [ebp-0x6988]
	mov [esp], esi
	call Com_ParseFloatOnLine
	fstp dword [ebp-0x5c]
	mov [esp], esi
	call Com_ParseFloatOnLine
	fstp dword [ebx+0x2c]
	mov [esp], esi
	call Com_ParseFloatOnLine
	fstp dword [ebx+0x30]
	mov [esp], esi
	call Com_ParseFloatOnLine
	fstp dword [ebx+0x34]
	mov [esp], esi
	call Com_ParseFloatOnLine
	fstp dword [ebp-0x69cc]
	movss xmm0, dword [ebp-0x69cc]
	mulss xmm0, [_float_0_50000000]
	movss [ebx+0x38], xmm0
	mov [esp], esi
	call Com_ParseFloatOnLine
	fstp dword [ebx+0x3c]
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], _cstring_1
	mov [esp], esi
	call Com_MatchToken
	test eax, eax
	jz Xmodel_ParsePhysicsCollMap_300
	lea eax, [ebp-0x58]
	mov [esp+0x4], eax
	lea eax, [ebp-0x64]
	mov [esp], eax
	call vectoangles
	lea eax, [ebx+0x8]
	mov [esp+0x4], eax
	lea edx, [ebp-0x58]
	mov [esp], edx
	call AnglesToAxis
	jmp Xmodel_ParsePhysicsCollMap_470
Xmodel_ParsePhysicsCollMap_380:
	mov dword [ebx], 0x0
	mov dword [ebx+0x4], 0x0
	mov dword [ebx+0x8], 0x0
	mov dword [eax], 0xbf800000
	jmp Xmodel_ParsePhysicsCollMap_480
Xmodel_ParsePhysicsCollMap_370:
	mov dword [ebx], 0x0
	mov dword [ebx+0x4], 0x0
	mov dword [ebx+0x8], 0x0
	mov dword [eax], 0x3f800000
	jmp Xmodel_ParsePhysicsCollMap_480
Xmodel_ParsePhysicsCollMap_360:
	mov dword [esp+0x8], 0x20
	mov dword [esp+0x4], _cstring_error_max_build_
	mov dword [esp], 0x13
	call Com_PrintError
	jmp Xmodel_ParsePhysicsCollMap_300
Xmodel_ParsePhysicsCollMap_350:
	mov esi, [ebp-0x6980]
	mov [esp+0xc], esi
	mov eax, [ebp-0x698c]
	mov [esp+0x8], eax
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	lea edx, [ebp-0x288]
	mov [esp], edx
	call RemoveDuplicateBrushPlanes
	test al, al
	jz Xmodel_ParsePhysicsCollMap_300
	mov edx, [ebp-0x1c]
	test edx, edx
	jz Xmodel_ParsePhysicsCollMap_300
	mov dword [esp], 0x400
	lea ecx, [ebp-0x6908]
	lea eax, [ebp-0x288]
	call GetPlaneIntersections
	mov [ebp-0x6978], eax
	mov eax, [ebp-0x6908]
	mov [ebp-0x58], eax
	mov edx, [ebp-0x6904]
	mov [ebp-0x54], edx
	mov ecx, [ebp-0x6900]
	mov [ebp-0x50], ecx
	mov [ebp-0x64], eax
	mov [ebp-0x60], edx
	mov [ebp-0x5c], ecx
	cmp dword [ebp-0x6978], 0x1
	jbe Xmodel_ParsePhysicsCollMap_490
	mov esi, 0x1
	mov edi, 0x18
Xmodel_ParsePhysicsCollMap_520:
	lea ecx, [ebp-0x6908]
	add ecx, edi
	mov ebx, 0x1
Xmodel_ParsePhysicsCollMap_510:
	movss xmm1, dword [ecx]
	lea edx, [ebx*4]
	lea eax, [ebp-0x58]
	add eax, edx
	movss xmm0, dword [eax-0x4]
	ucomiss xmm0, xmm1
	ja Xmodel_ParsePhysicsCollMap_500
	lea eax, [ebp-0x64]
	add eax, edx
	ucomiss xmm1, [eax-0x4]
	ja Xmodel_ParsePhysicsCollMap_500
Xmodel_ParsePhysicsCollMap_610:
	add ebx, 0x1
	add ecx, 0x4
	cmp ebx, 0x4
	jnz Xmodel_ParsePhysicsCollMap_510
	add esi, 0x1
	add edi, 0x18
	cmp [ebp-0x6978], esi
	jnz Xmodel_ParsePhysicsCollMap_520
Xmodel_ParsePhysicsCollMap_490:
	mov dword [ebp-0x6958], 0x0
	mov dword [ebp-0x695c], 0x0
	mov dword [ebp-0x69a4], 0x0
	mov dword [ebp-0x69b4], 0x0
	jmp Xmodel_ParsePhysicsCollMap_530
Xmodel_ParsePhysicsCollMap_580:
	cvtsi2ss xmm1, dword [ebp-0x6960]
	mov eax, [ebp-0x69b4]
	ucomiss xmm1, [ebp+eax-0x288]
	jnz Xmodel_ParsePhysicsCollMap_540
	jp Xmodel_ParsePhysicsCollMap_540
	mov dword [ebp-0x6914], 0x0
Xmodel_ParsePhysicsCollMap_600:
	mov eax, [ebp-0x6958]
	cmp [ebp-0x6914], eax
	jz Xmodel_ParsePhysicsCollMap_550
	lea ecx, [ebp-0x288]
	add ecx, [ebp-0x691c]
	mov ebx, [ecx]
	mov esi, [ecx+0x4]
	mov edi, [ecx+0x8]
	movss xmm0, dword [ecx+0xc]
	mov eax, [ebp-0x6914]
	shl eax, 0x4
	lea edx, [ebp-0x288]
	lea eax, [edx+eax]
	mov edx, [eax]
	mov [ecx], edx
	mov edx, [eax+0x4]
	mov [ecx+0x4], edx
	mov edx, [eax+0x8]
	mov [ecx+0x8], edx
	mov edx, [eax+0xc]
	mov [ecx+0xc], edx
	mov [eax], ebx
	mov [eax+0x4], esi
	mov [eax+0x8], edi
	movss [eax+0xc], xmm0
	lea edx, [ebp-0x908]
	add edx, [ebp-0x6918]
	mov ebx, [edx+0x30]
	mov esi, [edx+0x2c]
	mov edi, [edx+0x28]
	mov ecx, [edx+0x24]
	mov [ebp-0x692c], ecx
	mov eax, [edx+0x20]
	mov [ebp-0x6930], eax
	mov ecx, [edx+0x1c]
	mov [ebp-0x6934], ecx
	mov eax, [edx+0x18]
	mov [ebp-0x6938], eax
	mov ecx, [edx+0x14]
	mov [ebp-0x693c], ecx
	mov eax, [edx+0x10]
	mov [ebp-0x6940], eax
	mov ecx, [edx+0xc]
	mov [ebp-0x6944], ecx
	mov eax, [edx+0x8]
	mov [ebp-0x6948], eax
	mov ecx, [edx+0x4]
	mov [ebp-0x694c], ecx
	mov eax, [edx]
	mov [ebp-0x6950], eax
	mov ecx, [ebp-0x6914]
	lea eax, [ecx+ecx*2]
	lea eax, [ecx+eax*4]
	lea eax, [ebp+eax*4-0x908]
	mov ecx, [eax]
	mov [edx], ecx
	mov ecx, [eax+0x4]
	mov [edx+0x4], ecx
	mov ecx, [eax+0x8]
	mov [edx+0x8], ecx
	mov ecx, [eax+0xc]
	mov [edx+0xc], ecx
	mov ecx, [eax+0x10]
	mov [edx+0x10], ecx
	mov ecx, [eax+0x14]
	mov [edx+0x14], ecx
	mov ecx, [eax+0x18]
	mov [edx+0x18], ecx
	mov ecx, [eax+0x1c]
	mov [edx+0x1c], ecx
	mov ecx, [eax+0x20]
	mov [edx+0x20], ecx
	mov ecx, [eax+0x24]
	mov [edx+0x24], ecx
	mov ecx, [eax+0x28]
	mov [edx+0x28], ecx
	mov ecx, [eax+0x2c]
	mov [edx+0x2c], ecx
	mov ecx, [eax+0x30]
	mov [edx+0x30], ecx
	mov [eax+0x30], ebx
	mov [eax+0x2c], esi
	mov [eax+0x28], edi
	mov esi, [ebp-0x692c]
	mov [eax+0x24], esi
	mov edx, [ebp-0x6930]
	mov [eax+0x20], edx
	mov ecx, [ebp-0x6934]
	mov [eax+0x1c], ecx
	mov esi, [ebp-0x6938]
	mov [eax+0x18], esi
	mov edx, [ebp-0x693c]
	mov [eax+0x14], edx
	mov ecx, [ebp-0x6940]
	mov [eax+0x10], ecx
	mov esi, [ebp-0x6944]
	mov [eax+0xc], esi
	mov edx, [ebp-0x6948]
	mov [eax+0x8], edx
	mov ecx, [ebp-0x694c]
	mov [eax+0x4], ecx
	mov esi, [ebp-0x6950]
	mov [eax], esi
Xmodel_ParsePhysicsCollMap_550:
	add dword [ebp-0x6960], 0x2
	add dword [ebp-0x6958], 0x1
	add dword [ebp-0x69a4], 0x34
	add dword [ebp-0x691c], 0x10
	add dword [ebp-0x6918], 0x34
	cmp dword [ebp-0x6960], 0x3
	jnz Xmodel_ParsePhysicsCollMap_560
	add dword [ebp-0x695c], 0x1
	add dword [ebp-0x69b4], 0x4
	cmp dword [ebp-0x695c], 0x3
	jz Xmodel_ParsePhysicsCollMap_570
Xmodel_ParsePhysicsCollMap_530:
	mov ecx, [ebp-0x6958]
	shl ecx, 0x4
	mov [ebp-0x691c], ecx
	mov esi, [ebp-0x69a4]
	mov [ebp-0x6918], esi
	mov dword [ebp-0x6960], 0xffffffff
Xmodel_ParsePhysicsCollMap_560:
	mov edx, [ebp-0x1c]
	test edx, edx
	jnz Xmodel_ParsePhysicsCollMap_580
	cvtsi2ss xmm1, dword [ebp-0x6960]
	mov dword [ebp-0x6914], 0x0
Xmodel_ParsePhysicsCollMap_690:
	shl edx, 0x4
	lea eax, [ebp-0x288]
	add eax, edx
	mov dword [eax], 0x0
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x0
	mov dword [eax+0xc], 0x0
	mov eax, [ebp-0x1c]
	shl eax, 0x4
	add eax, [ebp-0x69b4]
	movss [eax+ebp-0x288], xmm1
	cmp dword [ebp-0x6960], 0x1
	jz Xmodel_ParsePhysicsCollMap_590
	mov edx, [ebp-0x1c]
	shl edx, 0x4
	mov esi, [ebp-0x69b4]
	mov eax, [ebp+esi-0x58]
	xor eax, 0x80000000
	mov [edx+ebp-0x27c], eax
Xmodel_ParsePhysicsCollMap_620:
	mov eax, [ebp-0x1c]
	lea edx, [eax+eax*2]
	lea edx, [eax+edx*4]
	mov dword [ebp+edx*4-0x908], 0x0
	add dword [ebp-0x1c], 0x1
	jmp Xmodel_ParsePhysicsCollMap_600
Xmodel_ParsePhysicsCollMap_500:
	movss [eax-0x4], xmm1
	jmp Xmodel_ParsePhysicsCollMap_610
Xmodel_ParsePhysicsCollMap_160:
	mov dword [esp+0x4], _cstring_error_parsephysi
	mov dword [esp], 0x13
	call Com_PrintError
	mov dword [ebp-0x6984], 0x0
	jmp Xmodel_ParsePhysicsCollMap_150
Xmodel_ParsePhysicsCollMap_240:
	mov dword [esp+0x4], _cstring_error_cannot_hav
	mov dword [esp], 0x13
	call Com_PrintError
	mov dword [ebp-0x6984], 0x0
	jmp Xmodel_ParsePhysicsCollMap_150
Xmodel_ParsePhysicsCollMap_220:
	mov dword [esp+0x4], _cstring_error_cannot_hav1
	mov dword [esp], 0x13
	call Com_PrintError
	mov dword [ebp-0x6984], 0x0
	jmp Xmodel_ParsePhysicsCollMap_150
Xmodel_ParsePhysicsCollMap_590:
	mov eax, [ebp-0x1c]
	shl eax, 0x4
	mov ecx, [ebp-0x69b4]
	mov edx, [ecx+ebp-0x64]
	mov [eax+ebp-0x27c], edx
	jmp Xmodel_ParsePhysicsCollMap_620
Xmodel_ParsePhysicsCollMap_570:
	mov edx, [ebp-0x1c]
	mov dword [esp], 0x400
	lea ecx, [ebp-0x6908]
	lea eax, [ebp-0x288]
	call GetPlaneIntersections
	mov [ebp-0x6910], eax
	mov eax, [ebp-0x1c]
	test eax, eax
	jz Xmodel_ParsePhysicsCollMap_300
	xor edi, edi
	mov dword [ebp-0x6970], 0x0
	lea esi, [ebp-0x908]
	lea ebx, [ebp-0x288]
	mov [ebp-0x69a0], esi
	jmp Xmodel_ParsePhysicsCollMap_630
Xmodel_ParsePhysicsCollMap_650:
	mov edx, [esi]
	add [ebp-0x6970], edx
Xmodel_ParsePhysicsCollMap_660:
	add edi, 0x1
	add dword [ebp-0x69a0], 0x34
	add ebx, 0x10
	add esi, 0x34
	cmp [ebp-0x1c], edi
	jbe Xmodel_ParsePhysicsCollMap_640
Xmodel_ParsePhysicsCollMap_630:
	mov dword [esp+0x14], 0xc
	mov edx, [ebp-0x69a0]
	mov [esp+0x10], edx
	mov ecx, [ebp-0x6910]
	mov [esp+0xc], ecx
	lea eax, [ebp-0x6908]
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov [esp], ebx
	call BuildBrushdAdjacencyWindingForSide
	test eax, eax
	jnz Xmodel_ParsePhysicsCollMap_650
	mov dword [esi], 0x0
	jmp Xmodel_ParsePhysicsCollMap_660
Xmodel_ParsePhysicsCollMap_540:
	mov ecx, [ebp-0x69b4]
	lea eax, [ebp+ecx-0x278]
	mov dword [ebp-0x6914], 0x0
	jmp Xmodel_ParsePhysicsCollMap_670
Xmodel_ParsePhysicsCollMap_680:
	movss xmm0, dword [eax]
	add eax, 0x10
	ucomiss xmm1, xmm0
	jp Xmodel_ParsePhysicsCollMap_670
	jz Xmodel_ParsePhysicsCollMap_600
Xmodel_ParsePhysicsCollMap_670:
	add dword [ebp-0x6914], 0x1
	cmp edx, [ebp-0x6914]
	jnz Xmodel_ParsePhysicsCollMap_680
	cmp dword [ebp-0x6914], 0x20
	jnz Xmodel_ParsePhysicsCollMap_690
	mov esi, [ebp-0x6980]
	mov [esp+0xc], esi
	mov eax, [ebp-0x698c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_max_build_1
	mov dword [esp], 0x13
	call Com_PrintError
	jmp Xmodel_ParsePhysicsCollMap_300
Xmodel_ParsePhysicsCollMap_640:
	mov eax, [ebp-0x6970]
	test eax, eax
	jz Xmodel_ParsePhysicsCollMap_300
	mov dword [esp], 0x50
	call dword [ebp+0x8]
	mov ecx, [ebp-0x697c]
	mov [ecx], eax
	mov dword [esp+0x8], 0x50
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call memset
	mov esi, [ebp-0x697c]
	mov edx, [esi]
	mov eax, [ebp-0x58]
	mov [edx], eax
	mov eax, [ebp-0x54]
	mov [edx+0x4], eax
	mov eax, [ebp-0x50]
	mov [edx+0x8], eax
	mov edx, [esi]
	lea ecx, [edx+0x10]
	mov eax, [ebp-0x64]
	mov [edx+0x10], eax
	mov eax, [ebp-0x60]
	mov [ecx+0x4], eax
	mov eax, [ebp-0x5c]
	mov [ecx+0x8], eax
	mov eax, [esi]
	mov edx, [ebp-0x6970]
	mov [eax+0x48], edx
	mov ebx, [esi]
	mov [esp], edx
	call dword [ebp+0x8]
	mov [ebx+0x30], eax
	mov dword [ebp-0x6974], 0x0
	mov dword [ebp-0x696c], 0x0
Xmodel_ParsePhysicsCollMap_730:
	mov esi, [ebp-0x6974]
	add esi, esi
	mov ecx, [ebp-0x6974]
	lea eax, [esi+ecx*4]
	lea eax, [esi+eax*4]
	shl eax, 0x2
	lea edi, [ebp-0x908]
	add edi, eax
	mov dword [ebp-0x6968], 0x0
	mov [ebp-0x6998], eax
	mov dword [ebp-0x699c], 0x0
Xmodel_ParsePhysicsCollMap_720:
	mov edx, [ebp-0x699c]
	mov eax, [ebp-0x697c]
	add edx, [eax]
	mov eax, [edi]
	mov ecx, [ebp-0x6974]
	mov [edx+ecx+0x40], al
	mov eax, [ebp-0x697c]
	mov edx, [eax]
	mov eax, [ebp-0x699c]
	add eax, ecx
	movzx ecx, word [ebp-0x696c]
	mov [edx+eax*2+0x34], cx
	mov eax, [edi]
	test eax, eax
	jz Xmodel_ParsePhysicsCollMap_700
	lea ecx, [ebp-0x908]
	add ecx, [ebp-0x6998]
	xor ebx, ebx
Xmodel_ParsePhysicsCollMap_710:
	mov edx, [ebp-0x697c]
	mov eax, [edx]
	mov edx, [ebp-0x696c]
	add edx, [eax+0x30]
	mov eax, [ecx+0x4]
	mov [edx+ebx], al
	add ebx, 0x1
	mov eax, [edi]
	add ecx, 0x4
	cmp eax, ebx
	ja Xmodel_ParsePhysicsCollMap_710
Xmodel_ParsePhysicsCollMap_780:
	add [ebp-0x696c], eax
	add dword [ebp-0x6968], 0x1
	add dword [ebp-0x699c], 0x3
	add esi, 0x1
	add dword [ebp-0x6998], 0x34
	add edi, 0x34
	cmp dword [ebp-0x6968], 0x2
	jnz Xmodel_ParsePhysicsCollMap_720
	add dword [ebp-0x6974], 0x1
	cmp dword [ebp-0x6974], 0x3
	jnz Xmodel_ParsePhysicsCollMap_730
	mov ecx, [ebp-0x697c]
	mov edx, [ecx]
	mov eax, [ebp-0x1c]
	sub eax, 0x6
	mov [edx+0x1c], eax
	mov ebx, [ecx]
	mov eax, [ebx+0x1c]
	test eax, eax
	jz Xmodel_ParsePhysicsCollMap_740
	lea eax, [eax+eax*2]
	shl eax, 0x2
	mov [esp], eax
	call dword [ebp+0x8]
	mov [ebx+0x20], eax
	mov eax, [ebp-0x697c]
	mov ebx, [eax]
	mov eax, [ebx+0x1c]
	lea eax, [eax+eax*4]
	shl eax, 0x2
	mov [esp], eax
	call dword [ebp+0x8]
	mov [ebx+0x4c], eax
	mov ecx, [ebp-0x697c]
	mov edx, [ecx]
	mov ebx, [edx+0x1c]
	test ebx, ebx
	jz Xmodel_ParsePhysicsCollMap_740
	lea eax, [esi+esi*2]
	lea eax, [esi+eax*4]
	shl eax, 0x2
	lea edi, [ebp-0x908]
	add edi, eax
	shl esi, 0x4
	lea ecx, [ebp-0x288]
	add ecx, esi
	mov [ebp-0x6920], ecx
	mov dword [ebp-0x690c], 0x0
	mov dword [ebp-0x6928], 0x0
	mov dword [ebp-0x6924], 0x0
	mov esi, ecx
	mov [ebp-0x6994], eax
Xmodel_ParsePhysicsCollMap_770:
	mov edx, [edx+0x20]
	mov eax, [edi]
	mov ecx, [ebp-0x6928]
	mov [edx+ecx+0xa], al
	mov edx, [ebp-0x697c]
	mov eax, [edx]
	mov eax, [eax+0x20]
	movzx edx, word [ebp-0x696c]
	mov [eax+ecx+0x8], dx
	mov ecx, [edi]
	test ecx, ecx
	jz Xmodel_ParsePhysicsCollMap_750
	lea ecx, [ebp-0x908]
	add ecx, [ebp-0x6994]
	xor ebx, ebx
Xmodel_ParsePhysicsCollMap_760:
	mov edx, [ebp-0x697c]
	mov eax, [edx]
	mov edx, [ebp-0x696c]
	add edx, [eax+0x30]
	mov eax, [ecx+0x4]
	mov [edx+ebx], al
	add ebx, 0x1
	mov eax, [edi]
	add ecx, 0x4
	cmp eax, ebx
	ja Xmodel_ParsePhysicsCollMap_760
Xmodel_ParsePhysicsCollMap_790:
	add [ebp-0x696c], eax
	mov ecx, [ebp-0x697c]
	mov eax, [ecx]
	mov edx, [ebp-0x6924]
	add edx, [eax+0x4c]
	mov eax, [esi]
	mov [edx], eax
	mov eax, [esi+0x4]
	mov [edx+0x4], eax
	mov eax, [esi+0x8]
	mov [edx+0x8], eax
	mov eax, [ecx]
	mov edx, [eax+0x4c]
	mov ecx, [ebp-0x6920]
	mov eax, [ecx+0xc]
	mov ecx, [ebp-0x6924]
	mov [edx+ecx+0xc], eax
	mov edx, [ebp-0x697c]
	mov eax, [edx]
	mov edx, [eax+0x20]
	mov eax, [eax+0x4c]
	add eax, ecx
	mov ecx, [ebp-0x6928]
	mov [edx+ecx], eax
	add dword [ebp-0x690c], 0x1
	add dword [ebp-0x6994], 0x34
	add esi, 0x10
	mov eax, [ebp-0x697c]
	mov edx, [eax]
	add ecx, 0xc
	mov [ebp-0x6928], ecx
	add edi, 0x34
	add dword [ebp-0x6924], 0x14
	add dword [ebp-0x6920], 0x10
	mov ecx, [ebp-0x690c]
	cmp [edx+0x1c], ecx
	ja Xmodel_ParsePhysicsCollMap_770
	jmp Xmodel_ParsePhysicsCollMap_740
Xmodel_ParsePhysicsCollMap_700:
	xor eax, eax
	jmp Xmodel_ParsePhysicsCollMap_780
Xmodel_ParsePhysicsCollMap_750:
	xor eax, eax
	jmp Xmodel_ParsePhysicsCollMap_790
	nop


;XModel_LoadPhysicsCollMap(char const*, void* (*)(int))
XModel_LoadPhysicsCollMap:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x45c
	mov ebx, [ebp+0x8]
	mov [esp+0xc], ebx
	mov dword [esp+0x8], _cstring_phys_collmapssma
	mov dword [esp+0x4], 0x400
	lea eax, [ebp-0x420]
	mov [esp], eax
	call Com_sprintf
	test eax, eax
	js XModel_LoadPhysicsCollMap_10
	lea esi, [ebp-0x1c]
	mov [esp+0x4], esi
	lea edi, [ebp-0x420]
	mov [esp], edi
	call FS_ReadFile
	cmp eax, 0x0
	jl XModel_LoadPhysicsCollMap_20
	jnz XModel_LoadPhysicsCollMap_30
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_error_physics_co
	mov dword [esp], 0x13
	call Com_PrintError
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call FS_FreeFile
	xor ebx, ebx
	mov eax, ebx
	add esp, 0x45c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XModel_LoadPhysicsCollMap_30:
	mov eax, [ebp-0x1c]
	mov [ebp-0x20], eax
	lea eax, [ebp-0x20]
	mov [esp], eax
	call Com_Parse
	mov edi, _cstring_iwmap
	mov ecx, 0x6
	cld
	mov esi, eax
	repe cmpsb
	mov ebx, 0x0
	jz XModel_LoadPhysicsCollMap_40
	movzx ebx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub ebx, ecx
XModel_LoadPhysicsCollMap_40:
	test ebx, ebx
	jz XModel_LoadPhysicsCollMap_50
	lea edi, [ebp-0x420]
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_error_s_is_missi
	mov dword [esp], 0x13
	call Com_PrintError
	mov dword [ebp-0x42c], 0x0
XModel_LoadPhysicsCollMap_70:
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call FS_FreeFile
	mov eax, [ebp-0x42c]
	test eax, eax
	jz XModel_LoadPhysicsCollMap_20
	lea edi, [ebp-0x1c]
	mov [esp+0x4], edi
	lea eax, [ebp-0x420]
	mov [esp], eax
	call FS_ReadFile
	mov eax, [ebp-0x1c]
	mov [ebp-0x20], eax
	mov ecx, [ebp+0xc]
	mov [esp], ecx
	mov ecx, [ebp-0x42c]
	lea edx, [ebp-0x420]
	lea eax, [ebp-0x20]
	call Xmodel_ParsePhysicsCollMap
	mov ebx, eax
	mov eax, [ebp-0x1c]
	mov [esp], eax
	call FS_FreeFile
	mov eax, ebx
	add esp, 0x45c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XModel_LoadPhysicsCollMap_20:
	xor ebx, ebx
	mov eax, ebx
	add esp, 0x45c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XModel_LoadPhysicsCollMap_10:
	lea ecx, [ebp-0x420]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_error_filename_s
	mov dword [esp], 0x13
	call Com_PrintError
	xor ebx, ebx
	mov eax, ebx
	add esp, 0x45c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
XModel_LoadPhysicsCollMap_50:
	lea eax, [ebp-0x20]
	mov [esp], eax
	call Com_Parse
	mov ebx, eax
	mov [esp], eax
	call atoi
	cmp eax, 0x4
	jz XModel_LoadPhysicsCollMap_60
	mov dword [esp+0x10], 0x4
	mov [esp+0xc], ebx
	lea ecx, [ebp-0x420]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_error_s_is_versi
	mov dword [esp], 0x13
	call Com_PrintError
	mov dword [ebp-0x42c], 0x0
	jmp XModel_LoadPhysicsCollMap_70
XModel_LoadPhysicsCollMap_100:
	mov ecx, 0x2
	cld
	mov esi, eax
	mov edi, _cstring_
	repe cmpsb
	mov eax, 0x0
	jz XModel_LoadPhysicsCollMap_80
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
XModel_LoadPhysicsCollMap_80:
	test eax, eax
	jz XModel_LoadPhysicsCollMap_90
	lea eax, [ebp-0x20]
	mov [esp], eax
	call Com_SkipRestOfLine
XModel_LoadPhysicsCollMap_60:
	lea esi, [ebp-0x20]
	mov [esp], esi
	call Com_Parse
	cmp byte [eax], 0x0
	jnz XModel_LoadPhysicsCollMap_100
XModel_LoadPhysicsCollMap_230:
	mov dword [ebp-0x42c], 0x0
	jmp XModel_LoadPhysicsCollMap_70
XModel_LoadPhysicsCollMap_90:
	mov dword [ebp-0x42c], 0x0
XModel_LoadPhysicsCollMap_250:
	lea edi, [ebp-0x20]
	mov [esp], edi
	call Com_Parse
	mov [ebp-0x43c], eax
	cmp byte [eax], 0x0
	jz XModel_LoadPhysicsCollMap_110
XModel_LoadPhysicsCollMap_240:
	mov esi, eax
	mov ebx, _cstring_1
	mov dword [ebp-0x440], 0x2
	cld
	mov edi, ebx
	mov ecx, 0x2
	repe cmpsb
	mov edx, 0x0
	jz XModel_LoadPhysicsCollMap_120
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
XModel_LoadPhysicsCollMap_120:
	test edx, edx
	jz XModel_LoadPhysicsCollMap_70
	mov ebx, 0x2
	mov esi, [ebp-0x43c]
	mov edi, _cstring_
	mov ecx, ebx
	repe cmpsb
	mov eax, 0x0
	jz XModel_LoadPhysicsCollMap_130
	movzx eax, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub eax, ecx
XModel_LoadPhysicsCollMap_130:
	test eax, eax
	jnz XModel_LoadPhysicsCollMap_140
	lea esi, [ebp-0x20]
	mov [esp], esi
	call Com_Parse
	mov [ebp-0x43c], eax
	cmp byte [eax], 0x0
	jz XModel_LoadPhysicsCollMap_70
	mov edi, _cstring_curve
	mov bl, 0x6
	cld
	mov esi, eax
	mov ecx, ebx
	repe cmpsb
	mov edx, 0x0
	jz XModel_LoadPhysicsCollMap_150
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
XModel_LoadPhysicsCollMap_150:
	test edx, edx
	jz XModel_LoadPhysicsCollMap_160
	mov edi, _cstring_mesh
	mov ebx, 0x5
	cld
	mov esi, [ebp-0x43c]
	mov ecx, ebx
	repe cmpsb
	mov edx, 0x0
	jz XModel_LoadPhysicsCollMap_170
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
XModel_LoadPhysicsCollMap_170:
	test edx, edx
	jz XModel_LoadPhysicsCollMap_180
	mov edi, _cstring_physics_cylinder
	mov ebx, 0x11
	cld
	mov esi, [ebp-0x43c]
	mov ecx, ebx
	repe cmpsb
	mov edx, 0x0
	jz XModel_LoadPhysicsCollMap_190
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
XModel_LoadPhysicsCollMap_190:
	test edx, edx
	jz XModel_LoadPhysicsCollMap_200
	mov edi, _cstring_physics_box
	mov ebx, 0xc
	cld
	mov esi, [ebp-0x43c]
	mov ecx, ebx
	repe cmpsb
	mov edx, 0x0
	jz XModel_LoadPhysicsCollMap_210
	movzx edx, byte [esi-0x1]
	movzx ecx, byte [edi-0x1]
	sub edx, ecx
XModel_LoadPhysicsCollMap_210:
	test edx, edx
	jnz XModel_LoadPhysicsCollMap_220
XModel_LoadPhysicsCollMap_200:
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x0
	lea esi, [ebp-0x20]
	mov [esp], esi
	call Com_SkipBracedSection
	test eax, eax
	jnz XModel_LoadPhysicsCollMap_230
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], _cstring_1
	mov [esp], esi
	call Com_MatchToken
	test eax, eax
	jz XModel_LoadPhysicsCollMap_230
XModel_LoadPhysicsCollMap_260:
	add dword [ebp-0x42c], 0x1
	lea edi, [ebp-0x20]
	mov [esp], edi
	call Com_Parse
	mov [ebp-0x43c], eax
	cmp byte [eax], 0x0
	jnz XModel_LoadPhysicsCollMap_240
XModel_LoadPhysicsCollMap_110:
	mov dword [esp+0x4], _cstring_error_parsephysi
	mov dword [esp], 0x13
	call Com_PrintError
	mov dword [ebp-0x42c], 0x0
	jmp XModel_LoadPhysicsCollMap_70
XModel_LoadPhysicsCollMap_140:
	lea ecx, [ebp-0x20]
	mov [esp+0x4], ecx
	mov esi, [ebp-0x43c]
	mov [esp], esi
	call SkipEpair
	test al, al
	jnz XModel_LoadPhysicsCollMap_250
	jmp XModel_LoadPhysicsCollMap_230
XModel_LoadPhysicsCollMap_220:
	call Com_UngetToken
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x1
	lea eax, [ebp-0x20]
	mov [esp], eax
	call Com_SkipBracedSection
	test eax, eax
	jz XModel_LoadPhysicsCollMap_260
	jmp XModel_LoadPhysicsCollMap_230
XModel_LoadPhysicsCollMap_180:
	mov dword [esp+0x4], _cstring_error_cannot_hav
	mov dword [esp], 0x13
	call Com_PrintError
	mov dword [ebp-0x42c], 0x0
	jmp XModel_LoadPhysicsCollMap_70
XModel_LoadPhysicsCollMap_160:
	mov dword [esp+0x4], _cstring_error_cannot_hav1
	mov dword [esp], 0x13
	call Com_PrintError
	mov dword [ebp-0x42c], 0x0
	jmp XModel_LoadPhysicsCollMap_70


;RemoveDuplicateBrushPlanes(float (*) [4], unsigned int*, char const*, unsigned int)
RemoveDuplicateBrushPlanes:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov esi, [ebp+0xc]
	cmp dword [esi], 0x1
	jbe RemoveDuplicateBrushPlanes_10
	mov dword [ebp-0x30], 0x1
	mov eax, [ebp-0x30]
	jmp RemoveDuplicateBrushPlanes_20
RemoveDuplicateBrushPlanes_50:
	mov eax, [ebp-0x30]
	test eax, eax
	jnz RemoveDuplicateBrushPlanes_30
RemoveDuplicateBrushPlanes_150:
	add dword [ebp-0x30], 0x1
	mov edx, [ebp-0x30]
	cmp edx, [esi]
	jae RemoveDuplicateBrushPlanes_10
RemoveDuplicateBrushPlanes_80:
	mov eax, edx
RemoveDuplicateBrushPlanes_20:
	shl eax, 0x4
	mov edx, [ebp+0x8]
	lea ebx, [eax+edx]
	movss xmm0, dword [ebx]
	movss xmm1, dword [ebx+0x4]
	movss xmm2, dword [ebx+0x8]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	subss xmm0, [_float_1_00000000]
	andps xmm0, [_data16_7fffffff]
	ucomiss xmm0, [_float_0_00200000]
	jp RemoveDuplicateBrushPlanes_40
	jb RemoveDuplicateBrushPlanes_50
RemoveDuplicateBrushPlanes_40:
	mov ebx, [ebp+0x14]
	mov [esp+0xc], ebx
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_collmap_for_s_br
	mov dword [esp], 0x13
	call Com_PrintWarning
	mov ecx, [ebp-0x30]
	add ecx, 0x1
	cmp [esi], ecx
	jbe RemoveDuplicateBrushPlanes_60
	mov eax, ecx
	shl eax, 0x4
	mov ebx, [ebp+0x8]
	lea edx, [eax+ebx]
RemoveDuplicateBrushPlanes_70:
	mov eax, [edx]
	mov [edx-0x10], eax
	mov eax, [edx+0x4]
	mov [edx-0xc], eax
	mov eax, [edx+0x8]
	mov [edx-0x8], eax
	mov eax, [edx+0xc]
	mov [edx-0x4], eax
	add ecx, 0x1
	add edx, 0x10
	cmp [esi], ecx
	ja RemoveDuplicateBrushPlanes_70
RemoveDuplicateBrushPlanes_60:
	sub esi, 0x4
	sub dword [ebp-0x30], 0x1
RemoveDuplicateBrushPlanes_110:
	add dword [ebp-0x30], 0x1
	mov edx, [ebp-0x30]
	cmp edx, [esi]
	jb RemoveDuplicateBrushPlanes_80
RemoveDuplicateBrushPlanes_10:
	mov eax, 0x1
RemoveDuplicateBrushPlanes_160:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
RemoveDuplicateBrushPlanes_30:
	mov edi, [ebp+0x8]
	mov dword [ebp-0x2c], 0x0
RemoveDuplicateBrushPlanes_140:
	mov dword [esp+0xc], 0x3
	mov dword [esp+0x8], 0x3a83126f
	mov [esp+0x4], edi
	mov [esp], ebx
	call VecNCompareCustomEpsilon
	test eax, eax
	jz RemoveDuplicateBrushPlanes_90
	movss xmm0, dword [ebx+0xc]
	subss xmm0, [edi+0xc]
	andps xmm0, [_data16_7fffffff]
	cvtss2sd xmm0, xmm0
	ucomisd xmm0, [_double_0_00100000]
	jae RemoveDuplicateBrushPlanes_90
	mov ecx, [ebp-0x30]
	add ecx, 0x1
	cmp [esi], ecx
	jbe RemoveDuplicateBrushPlanes_60
	mov eax, ecx
	shl eax, 0x4
	mov edx, [ebp+0x8]
	add edx, eax
RemoveDuplicateBrushPlanes_100:
	mov eax, [edx]
	mov [edx-0x10], eax
	mov eax, [edx+0x4]
	mov [edx-0xc], eax
	mov eax, [edx+0x8]
	mov [edx-0x8], eax
	mov eax, [edx+0xc]
	mov [edx-0x4], eax
	add ecx, 0x1
	add edx, 0x10
	cmp [esi], ecx
	ja RemoveDuplicateBrushPlanes_100
	sub esi, 0x4
	sub dword [ebp-0x30], 0x1
	jmp RemoveDuplicateBrushPlanes_110
RemoveDuplicateBrushPlanes_90:
	movss xmm0, dword [edi]
	xorps xmm0, [_data16_80000000]
	movss [ebp-0x24], xmm0
	movss xmm0, dword [edi+0x4]
	xorps xmm0, [_data16_80000000]
	movss [ebp-0x20], xmm0
	movss xmm0, dword [edi+0x8]
	xorps xmm0, [_data16_80000000]
	movss [ebp-0x1c], xmm0
	mov dword [esp+0xc], 0x3
	mov dword [esp+0x8], 0x3a83126f
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov [esp], ebx
	call VecNCompareCustomEpsilon
	test eax, eax
	jz RemoveDuplicateBrushPlanes_120
	movss xmm0, dword [edi+0xc]
	xorps xmm0, [_data16_80000000]
	ucomiss xmm0, [ebx+0xc]
	jae RemoveDuplicateBrushPlanes_130
RemoveDuplicateBrushPlanes_120:
	add dword [ebp-0x2c], 0x1
	add edi, 0x10
	mov eax, [ebp-0x2c]
	cmp [ebp-0x30], eax
	jnz RemoveDuplicateBrushPlanes_140
	jmp RemoveDuplicateBrushPlanes_150
RemoveDuplicateBrushPlanes_130:
	mov eax, [ebp+0x14]
	mov [esp+0xc], eax
	mov edx, [ebp+0x10]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_map_s_brush_i_mi
	mov dword [esp], 0x13
	call Com_PrintWarning
	xor eax, eax
	jmp RemoveDuplicateBrushPlanes_160
	nop


;SkipEpair(char const*, char const**)
SkipEpair:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [ebp+0x8]
	xor esi, esi
	cld
	mov ecx, 0xffffffff
	mov edi, ebx
	mov eax, esi
	repne scasb
	not ecx
	cmp byte [ecx+ebx-0x3], 0x5c
	jz SkipEpair_10
	mov dword [esp+0x4], 0xa
	mov [esp], ebx
	call strchr
	test eax, eax
	jz SkipEpair_20
SkipEpair_30:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_skipepair_key_s_
	mov dword [esp], 0x13
	call Com_PrintError
	xor eax, eax
SkipEpair_50:
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SkipEpair_10:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_skipepair_key_s_1
	mov dword [esp], 0x13
	call Com_PrintError
	xor eax, eax
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
SkipEpair_20:
	mov dword [esp+0x4], 0xd
	mov [esp], ebx
	call strchr
	test eax, eax
	jnz SkipEpair_30
	mov dword [esp+0x4], 0x22
	mov [esp], ebx
	call strchr
	test eax, eax
	jz SkipEpair_40
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_skipepair_key_s_2
	mov dword [esp], 0x13
	call Com_PrintError
	xor eax, eax
	jmp SkipEpair_50
SkipEpair_40:
	mov eax, [ebp+0xc]
	mov [esp], eax
	call Com_ParseOnLine
	mov ebx, eax
	cld
	mov ecx, 0xffffffff
	mov edi, eax
	mov eax, esi
	repne scasb
	not ecx
	cmp byte [ecx+ebx-0x3], 0x5c
	jz SkipEpair_60
	mov dword [esp+0x4], 0xa
	mov [esp], ebx
	call strchr
	test eax, eax
	jz SkipEpair_70
SkipEpair_80:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_skipepair_value_
	mov dword [esp], 0x13
	call Com_PrintError
	xor eax, eax
	jmp SkipEpair_50
SkipEpair_60:
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_skipepair_value_1
	mov dword [esp], 0x13
	call Com_PrintError
	xor eax, eax
	jmp SkipEpair_50
SkipEpair_70:
	mov dword [esp+0x4], 0xd
	mov [esp], ebx
	call strchr
	test eax, eax
	jnz SkipEpair_80
	mov dword [esp+0x4], 0x22
	mov [esp], ebx
	call strchr
	test eax, eax
	jz SkipEpair_90
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_skipepair_value_2
	mov dword [esp], 0x13
	call Com_PrintError
	xor eax, eax
	jmp SkipEpair_50
SkipEpair_90:
	mov al, 0x1
	jmp SkipEpair_50
	nop


;Initialized global or static variables of xmodel_load_phys_collmap:
SECTION .data


;Initialized constant data of xmodel_load_phys_collmap:
SECTION .rdata


;Zero initialized global or static variables of xmodel_load_phys_collmap:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_missing_token_fo:		db "missing token for ",27h,"%s",27h,0
_cstring_more_than_i_poin:		db "More than %i points from plane intersections on %i-sided brush.  Simplify the collision geometry.",0ah,0
_cstring_iwmap:		db "iwmap",0
_cstring_error_s_is_versi:		db "ERROR: ",27h,"%s",27h," is version ",27h,"%s",27h,"; should be version ",27h,"%i",27h,0ah,0
_cstring_:		db "{",0
_cstring_error_s_is_missi:		db "ERROR: ",27h,"%s",27h," is missing ",27h,"iwmap",27h," version specification",0ah,0
_cstring_1:		db "}",0
_cstring_curve:		db "curve",0
_cstring_mesh:		db "mesh",0
_cstring_physics_cylinder:		db "physics_cylinder",0
_cstring_physics_box:		db "physics_box",0
_cstring_expecting__while:		db "Expecting ",27h,"{",27h," while parsing physics cylinder",0
_cstring_layer:		db "layer",0
_cstring_contents:		db "contents",0
_cstring_toolflags:		db "toolFlags",0
_cstring_error_max_build_:		db "ERROR: MAX_BUILD_SIDES (%i) -- brush too many sides.  Simplify the collision geometry.",0
_cstring_error_parsephysi:		db "ERROR: ParsePhysicsCollMap: EOF without closing brace",0
_cstring_error_cannot_hav:		db "ERROR: cannot have patch terrain in collision maps",0
_cstring_error_cannot_hav1:		db "ERROR: cannot have curves in collision maps",0
_cstring_error_max_build_1:		db "ERROR: MAX_BUILD_SIDES for physics collmap %s, Brush %i",0ah,0
_cstring_phys_collmapssma:		db "phys_collmaps/%s.map",0
_cstring_error_physics_co:		db "ERROR: physics collmap ",27h,"%s",27h," has 0 length",0ah,0
_cstring_error_filename_s:		db "ERROR: filename ",27h,"%s",27h," too long",0ah,0
_cstring_collmap_for_s_br:		db "Collmap for %s, Brush %i: degenerate plane",0ah,0
_cstring_map_s_brush_i_mi:		db "Map %s, Brush %i: mirrored plane",0ah,0
_cstring_skipepair_key_s_:		db "SkipEpair: key ",27h,"%s",27h," contains a newline character",0ah,0
_cstring_skipepair_key_s_1:		db "SkipEpair: key ",27h,"%s",27h," ends with a ",27h,5ch,27h,0ah,0
_cstring_skipepair_key_s_2:		db "SkipEpair: key ",27h,"%s",27h," contains a ",22h," character, will cause parsing errors",0ah,0
_cstring_skipepair_value_:		db "SkipEpair: value ",27h,"%s",27h," contains a newline character (use of ",27h,5ch,27h," at end of value",3fh,")",0ah,0
_cstring_skipepair_value_1:		db "SkipEpair: value ",27h,"%s",27h," ends with a ",27h,5ch,27h,0ah,0
_cstring_skipepair_value_2:		db "SkipEpair: value ",27h,"%s",27h," contains a ",22h," character, will cause parsing errors",0ah,0



;All constant floats and doubles:
SECTION .rdata
_float_0_01000000:		dd 0x3c23d70a	; 0.01
_float_1_00000000:		dd 0x3f800000	; 1
_double_0_00000010:		dq 0x3e7ad7f29abcaf48	; 1e-07
_double_0_00100000:		dq 0x3f50624dd2f1a9fc	; 0.001
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_0_00200000:		dd 0x3b03126f	; 0.002

align   16,db 0
_data16_7fffffff:		dd 0x7fffffff, 0x0, 0x0, 0x0	; DQWORD
_data16_80000000:		dd 0x80000000, 0x0, 0x0, 0x0	; DQWORD
