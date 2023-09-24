;Imports of COpenGLBufferObject:
	extern _ZN7COpenGL7sOpenGLE
	extern glBindBufferARB
	extern glBufferDataARB
	extern _ZN13CMemoryBuffer9FreeLaterEj
	extern _ZN13CMemoryBuffer8RecreateEv
	extern _Znwm
	extern _ZNSt15_List_node_base4hookEPS_
	extern glUnmapBuffer
	extern _ZN7COpenGL17ReleaseVBOBindingEbPKm
	extern _ZN7COpenGL17ClearCachedVAInfoEv
	extern glDisableVertexAttribArrayARB
	extern glVertexAttribPointerARB
	extern glMapBuffer
	extern glBufferSubDataARB
	extern glFlushMappedBufferRangeAPPLE
	extern _ZN14MacOpenGLUtils13GetBufferHintERj
	extern _ZN13CMemoryBufferC1Ejj
	extern glGenBuffersARB
	extern glBufferParameteriAPPLE
	extern _ZN13CMemoryBufferD1Ev
	extern _Unwind_Resume
	extern _ZdlPv
	extern _ZNSt15_List_node_base6unhookEv

;Exports of COpenGLBufferObject:
	global _ZZN19COpenGLBufferObject5FlushEjjE18sVBOFlushTolerance
	global _ZN19COpenGLBufferObject14RecreateBufferEv
	global _ZN19COpenGLBufferObject15MarkDirtyRegionEjj
	global _ZN19COpenGLBufferObject16ReleaseResourcesEv
	global _ZN19COpenGLBufferObject32DoesRangeIntersectAnyDirtyRegionEjj
	global _ZN19COpenGLBufferObject4LockEmmjj
	global _ZN19COpenGLBufferObject5FlushEjj
	global _ZN19COpenGLBufferObject6UnlockEv
	global _ZN19COpenGLBufferObjectC2Embj
	global _ZN19COpenGLBufferObjectD0Ev
	global _ZN19COpenGLBufferObjectD1Ev
	global _ZN19COpenGLBufferObjectD2Ev
	global _ZNSt10_List_baseI15DirtyMarkerTypeSaIS0_EE8_M_clearEv
	global _ZNSt4listI15DirtyMarkerTypeSaIS0_EE5eraseESt14_List_iteratorIS0_E
	global _ZTI19COpenGLBufferObject
	global _ZTV19COpenGLBufferObject


SECTION .text


;COpenGLBufferObject::RecreateBuffer()
_ZN19COpenGLBufferObject14RecreateBufferEv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	lea ebx, [esi+0x4c]
	mov [esp], ebx
	call _ZNSt10_List_baseI15DirtyMarkerTypeSaIS0_EE8_M_clearEv
	mov [esi+0x4c], ebx
	mov [ebx+0x4], ebx
	mov eax, [esi+0x18]
	mov eax, [eax]
	mov edx, [esi+0x4]
	lea ecx, [edx-0x8892]
	mov ebx, _ZN7COpenGL7sOpenGLE
	cmp eax, [ebx+ecx*4+0x38]
	jz _ZN19COpenGLBufferObject14RecreateBufferEv_10
	mov [ebx+ecx*4+0x38], eax
	mov [esp+0x4], eax
	mov [esp], edx
	call glBindBufferARB
	mov edx, [esi+0x4]
_ZN19COpenGLBufferObject14RecreateBufferEv_10:
	mov eax, [esi+0x14]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov eax, [esi+0xc]
	mov [esp+0x4], eax
	mov [esp], edx
	call glBufferDataARB
	lea ebx, [esi+0x30]
	mov dword [esp+0x4], 0x3
	mov [esp], ebx
	call _ZN13CMemoryBuffer9FreeLaterEj
	mov [ebp+0x8], ebx
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _ZN13CMemoryBuffer8RecreateEv


;COpenGLBufferObject::MarkDirtyRegion(unsigned int, unsigned int)
_ZN19COpenGLBufferObject15MarkDirtyRegionEjj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov dword [ebp-0x28], 0x0
	mov dword [ebp-0x24], 0x0
	mov dword [ebp-0x30], 0x0
	mov dword [ebp-0x2c], 0x0
	mov dword [ebp-0x38], 0x0
	mov dword [ebp-0x34], 0x0
	mov eax, [ebp+0x8]
	mov [ebp-0x3c], eax
	mov edi, [ebp+0xc]
	mov edx, [ebp+0x10]
	mov [ebp-0x40], edx
	lea esi, [eax+0x4c]
	mov ecx, eax
_ZN19COpenGLBufferObject15MarkDirtyRegionEjj_100:
	mov ebx, [ecx+0x4c]
	cmp ebx, esi
	jz _ZN19COpenGLBufferObject15MarkDirtyRegionEjj_10
	mov ecx, ebx
	lea eax, [ebx+0x8]
	cmp edi, [ebx+0x8]
	jb _ZN19COpenGLBufferObject15MarkDirtyRegionEjj_20
	mov eax, [eax+0x4]
	cmp [ebp-0x40], eax
	jbe _ZN19COpenGLBufferObject15MarkDirtyRegionEjj_30
	add eax, 0x1
	cmp edi, eax
	ja _ZN19COpenGLBufferObject15MarkDirtyRegionEjj_40
	jmp _ZN19COpenGLBufferObject15MarkDirtyRegionEjj_50
_ZN19COpenGLBufferObject15MarkDirtyRegionEjj_80:
	mov ebx, edx
_ZN19COpenGLBufferObject15MarkDirtyRegionEjj_40:
	mov edx, [ebx]
	cmp esi, edx
	jz _ZN19COpenGLBufferObject15MarkDirtyRegionEjj_60
	mov ecx, edx
	lea eax, [edx+0x8]
	cmp edi, [edx+0x8]
	jb _ZN19COpenGLBufferObject15MarkDirtyRegionEjj_70
	mov eax, [eax+0x4]
	cmp [ebp-0x40], eax
	jbe _ZN19COpenGLBufferObject15MarkDirtyRegionEjj_30
	add eax, 0x1
	cmp edi, eax
	ja _ZN19COpenGLBufferObject15MarkDirtyRegionEjj_80
	mov ebx, edx
_ZN19COpenGLBufferObject15MarkDirtyRegionEjj_50:
	mov edi, [ecx+0x8]
_ZN19COpenGLBufferObject15MarkDirtyRegionEjj_120:
	mov [esp+0x4], ebx
	mov [esp], esi
	call _ZNSt4listI15DirtyMarkerTypeSaIS0_EE5eraseESt14_List_iteratorIS0_E
_ZN19COpenGLBufferObject15MarkDirtyRegionEjj_10:
	cmp [esi], esi
	jz _ZN19COpenGLBufferObject15MarkDirtyRegionEjj_90
_ZN19COpenGLBufferObject15MarkDirtyRegionEjj_130:
	mov ecx, [ebp-0x3c]
	jmp _ZN19COpenGLBufferObject15MarkDirtyRegionEjj_100
_ZN19COpenGLBufferObject15MarkDirtyRegionEjj_30:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN19COpenGLBufferObject15MarkDirtyRegionEjj_70:
	mov ebx, edx
_ZN19COpenGLBufferObject15MarkDirtyRegionEjj_20:
	lea edx, [ecx+0x8]
	mov eax, [ebp-0x40]
	add eax, 0x1
	cmp eax, [ecx+0x8]
	jb _ZN19COpenGLBufferObject15MarkDirtyRegionEjj_110
	mov edx, [edx+0x4]
	mov [ebp-0x1c], edx
	cmp [ebp-0x40], edx
	ja _ZN19COpenGLBufferObject15MarkDirtyRegionEjj_120
	mov [esp+0x4], ebx
	mov [esp], esi
	call _ZNSt4listI15DirtyMarkerTypeSaIS0_EE5eraseESt14_List_iteratorIS0_E
	mov ecx, [ebp-0x1c]
	mov [ebp-0x40], ecx
	cmp [esi], esi
	jnz _ZN19COpenGLBufferObject15MarkDirtyRegionEjj_130
_ZN19COpenGLBufferObject15MarkDirtyRegionEjj_90:
	mov dword [esp], 0x10
	call _Znwm
	mov ecx, [ebp-0x40]
	mov [ebp-0x24], ecx
	mov [ebp-0x28], edi
	mov edx, [ebp-0x28]
	mov ecx, [ebp-0x24]
	mov [eax+0x8], edx
	mov [eax+0xc], ecx
	mov [ebp+0xc], esi
	mov [ebp+0x8], eax
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _ZNSt15_List_node_base4hookEPS_
_ZN19COpenGLBufferObject15MarkDirtyRegionEjj_110:
	mov dword [esp], 0x10
	call _Znwm
	mov edx, [ebp-0x40]
	mov [ebp-0x34], edx
	mov [ebp-0x38], edi
	mov edx, [ebp-0x38]
	mov ecx, [ebp-0x34]
_ZN19COpenGLBufferObject15MarkDirtyRegionEjj_140:
	mov [eax+0x8], edx
	mov [eax+0xc], ecx
	mov [ebp+0xc], ebx
	mov [ebp+0x8], eax
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _ZNSt15_List_node_base4hookEPS_
_ZN19COpenGLBufferObject15MarkDirtyRegionEjj_60:
	mov dword [esp], 0x10
	call _Znwm
	mov edx, [ebp-0x40]
	mov [ebp-0x2c], edx
	mov [ebp-0x30], edi
	mov edx, [ebp-0x30]
	mov ecx, [ebp-0x2c]
	jmp _ZN19COpenGLBufferObject15MarkDirtyRegionEjj_140


;COpenGLBufferObject::ReleaseResources()
_ZN19COpenGLBufferObject16ReleaseResourcesEv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	mov esi, [ebp+0x8]
	mov eax, [esi+0x48]
	test eax, eax
	jz _ZN19COpenGLBufferObject16ReleaseResourcesEv_10
	mov eax, [esi+0x18]
	mov eax, [eax]
	mov edx, [esi+0x4]
	lea ecx, [edx-0x8892]
	mov ebx, _ZN7COpenGL7sOpenGLE
	cmp eax, [ebx+ecx*4+0x38]
	jz _ZN19COpenGLBufferObject16ReleaseResourcesEv_20
	mov [ebx+ecx*4+0x38], eax
	mov [esp+0x4], eax
	mov [esp], edx
	call glBindBufferARB
	mov edx, [esi+0x4]
_ZN19COpenGLBufferObject16ReleaseResourcesEv_20:
	mov [esp], edx
	call glUnmapBuffer
	mov dword [esi+0x48], 0x0
_ZN19COpenGLBufferObject16ReleaseResourcesEv_10:
	mov ebx, [esi+0x18]
	test ebx, ebx
	jz _ZN19COpenGLBufferObject16ReleaseResourcesEv_30
	mov edx, [esi+0x4]
	lea eax, [edx-0x8892]
	mov ebx, _ZN7COpenGL7sOpenGLE
	mov ecx, [ebx+eax*4+0x38]
	test ecx, ecx
	jnz _ZN19COpenGLBufferObject16ReleaseResourcesEv_40
	mov eax, [esi+0x18]
	mov [esp+0x8], eax
	movzx eax, byte [esi+0x10]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZN7COpenGL17ReleaseVBOBindingEbPKm
	cmp dword [esi+0x4], 0x8892
	jz _ZN19COpenGLBufferObject16ReleaseResourcesEv_50
_ZN19COpenGLBufferObject16ReleaseResourcesEv_60:
	mov dword [esi+0x18], 0x0
_ZN19COpenGLBufferObject16ReleaseResourcesEv_30:
	mov byte [esi+0x54], 0x0
	lea ebx, [esi+0x4c]
	mov [esp], ebx
	call _ZNSt10_List_baseI15DirtyMarkerTypeSaIS0_EE8_M_clearEv
	mov [esi+0x4c], ebx
	mov [ebx+0x4], ebx
	mov eax, _ZN7COpenGL7sOpenGLE
	mov [ebp+0x8], eax
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	jmp _ZN7COpenGL17ClearCachedVAInfoEv
_ZN19COpenGLBufferObject16ReleaseResourcesEv_40:
	mov dword [ebx+eax*4+0x38], 0x0
	mov dword [esp+0x4], 0x0
	mov [esp], edx
	call glBindBufferARB
	mov eax, [esi+0x18]
	mov [esp+0x8], eax
	movzx eax, byte [esi+0x10]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZN7COpenGL17ReleaseVBOBindingEbPKm
	cmp dword [esi+0x4], 0x8892
	jnz _ZN19COpenGLBufferObject16ReleaseResourcesEv_60
_ZN19COpenGLBufferObject16ReleaseResourcesEv_50:
	xor ebx, ebx
_ZN19COpenGLBufferObject16ReleaseResourcesEv_70:
	mov [esp], ebx
	call glDisableVertexAttribArrayARB
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x1406
	mov dword [esp+0x4], 0x4
	mov [esp], ebx
	call glVertexAttribPointerARB
	add ebx, 0x1
	cmp ebx, 0x10
	jnz _ZN19COpenGLBufferObject16ReleaseResourcesEv_70
	jmp _ZN19COpenGLBufferObject16ReleaseResourcesEv_60


;COpenGLBufferObject::DoesRangeIntersectAnyDirtyRegion(unsigned int, unsigned int)
_ZN19COpenGLBufferObject32DoesRangeIntersectAnyDirtyRegionEjj:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	mov eax, [ebp+0x8]
	mov esi, [ebp+0xc]
	mov ebx, [ebp+0x10]
	lea ecx, [eax+0x4c]
	mov eax, [eax+0x4c]
	cmp ecx, eax
	jz _ZN19COpenGLBufferObject32DoesRangeIntersectAnyDirtyRegionEjj_10
_ZN19COpenGLBufferObject32DoesRangeIntersectAnyDirtyRegionEjj_40:
	lea edx, [eax+0x8]
	cmp [eax+0x8], ebx
	jae _ZN19COpenGLBufferObject32DoesRangeIntersectAnyDirtyRegionEjj_20
	cmp [edx+0x4], esi
	jae _ZN19COpenGLBufferObject32DoesRangeIntersectAnyDirtyRegionEjj_30
_ZN19COpenGLBufferObject32DoesRangeIntersectAnyDirtyRegionEjj_20:
	mov eax, [eax]
	cmp eax, ecx
	jnz _ZN19COpenGLBufferObject32DoesRangeIntersectAnyDirtyRegionEjj_40
_ZN19COpenGLBufferObject32DoesRangeIntersectAnyDirtyRegionEjj_10:
	xor eax, eax
	pop ebx
	pop esi
	pop ebp
	ret
_ZN19COpenGLBufferObject32DoesRangeIntersectAnyDirtyRegionEjj_30:
	mov eax, 0x1
	pop ebx
	pop esi
	pop ebp
	ret


;COpenGLBufferObject::Lock(unsigned long, unsigned long, unsigned int, unsigned int)
_ZN19COpenGLBufferObject4LockEmmjj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1c
	mov ebx, [ebp+0x8]
	mov esi, [ebp+0x14]
	mov eax, [ebp+0x18]
	add dword [ebx+0x8], 0x1
	cmp [ebx+0xc], eax
	jz _ZN19COpenGLBufferObject4LockEmmjj_10
	test eax, eax
	jnz _ZN19COpenGLBufferObject4LockEmmjj_20
_ZN19COpenGLBufferObject4LockEmmjj_60:
	cmp byte [ebx+0x10], 0x0
	jnz _ZN19COpenGLBufferObject4LockEmmjj_30
	mov eax, [ebx+0x48]
	test eax, eax
	jz _ZN19COpenGLBufferObject4LockEmmjj_40
_ZN19COpenGLBufferObject4LockEmmjj_30:
	cmp byte [ebx+0x10], 0x0
	jz _ZN19COpenGLBufferObject4LockEmmjj_50
	mov eax, [ebx+0x38]
	add eax, esi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN19COpenGLBufferObject4LockEmmjj_50:
	mov eax, [ebx+0x48]
	add eax, esi
	add esp, 0x1c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN19COpenGLBufferObject4LockEmmjj_20:
	add eax, esi
	mov [esp+0x8], eax
	mov [esp+0x4], esi
	mov [esp], ebx
	call _ZN19COpenGLBufferObject15MarkDirtyRegionEjj
	jmp _ZN19COpenGLBufferObject4LockEmmjj_60
_ZN19COpenGLBufferObject4LockEmmjj_10:
	mov byte [ebx+0x54], 0x1
	jmp _ZN19COpenGLBufferObject4LockEmmjj_60
_ZN19COpenGLBufferObject4LockEmmjj_40:
	mov eax, [ebx+0x18]
	mov eax, [eax]
	mov edx, [ebx+0x4]
	lea ecx, [edx-0x8892]
	mov edi, _ZN7COpenGL7sOpenGLE
	cmp eax, [edi+ecx*4+0x38]
	jz _ZN19COpenGLBufferObject4LockEmmjj_70
	mov [edi+ecx*4+0x38], eax
	mov [esp+0x4], eax
	mov [esp], edx
	call glBindBufferARB
	mov edx, [ebx+0x4]
_ZN19COpenGLBufferObject4LockEmmjj_70:
	mov dword [esp+0x4], 0x88b9
	mov [esp], edx
	call glMapBuffer
	mov [ebx+0x48], eax
	jmp _ZN19COpenGLBufferObject4LockEmmjj_30


;COpenGLBufferObject::Flush(unsigned int, unsigned int)
_ZN19COpenGLBufferObject5FlushEjj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov edi, [ebp+0x8]
	cmp byte [edi+0x10], 0x0
	jz _ZN19COpenGLBufferObject5FlushEjj_10
	lea esi, [edi+0x4c]
	cmp [edi+0x4c], esi
	jz _ZN19COpenGLBufferObject5FlushEjj_20
_ZN19COpenGLBufferObject5FlushEjj_210:
	movzx ebx, byte [edi+0x54]
	test bl, bl
	jz _ZN19COpenGLBufferObject5FlushEjj_30
	mov ecx, [edi+0xc]
_ZN19COpenGLBufferObject5FlushEjj_180:
	cmp ecx, [_ZZN19COpenGLBufferObject5FlushEjjE18sVBOFlushTolerance]
	jbe _ZN19COpenGLBufferObject5FlushEjj_40
	test bl, bl
	jnz _ZN19COpenGLBufferObject5FlushEjj_50
	mov eax, [edi+0x18]
	mov eax, [eax]
	mov ecx, [edi+0x4]
	lea edx, [ecx-0x8892]
	mov ebx, _ZN7COpenGL7sOpenGLE
	cmp eax, [ebx+edx*4+0x38]
	jz _ZN19COpenGLBufferObject5FlushEjj_60
	mov [ebx+edx*4+0x38], eax
	mov [esp+0x4], eax
	mov [esp], ecx
	call glBindBufferARB
_ZN19COpenGLBufferObject5FlushEjj_60:
	mov ebx, [esi]
	cmp ebx, esi
	jz _ZN19COpenGLBufferObject5FlushEjj_70
_ZN19COpenGLBufferObject5FlushEjj_80:
	mov edx, [ebx+0x8]
	mov eax, edx
	add eax, [edi+0x38]
	mov [esp+0xc], eax
	mov eax, [ebx+0xc]
	sub eax, edx
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov eax, [edi+0x4]
	mov [esp], eax
	call glBufferSubDataARB
	mov ebx, [ebx]
	cmp ebx, esi
	jnz _ZN19COpenGLBufferObject5FlushEjj_80
_ZN19COpenGLBufferObject5FlushEjj_70:
	mov [esp], esi
	call _ZNSt10_List_baseI15DirtyMarkerTypeSaIS0_EE8_M_clearEv
	mov [esi], esi
	mov [esi+0x4], esi
_ZN19COpenGLBufferObject5FlushEjj_40:
	cmp byte [edi+0x54], 0x0
	jz _ZN19COpenGLBufferObject5FlushEjj_90
_ZN19COpenGLBufferObject5FlushEjj_160:
	mov eax, 0x1
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN19COpenGLBufferObject5FlushEjj_10:
	lea esi, [edi+0x4c]
	cmp [edi+0x4c], esi
	jz _ZN19COpenGLBufferObject5FlushEjj_100
_ZN19COpenGLBufferObject5FlushEjj_190:
	mov eax, [edi+0x18]
	mov eax, [eax]
	mov ecx, [edi+0x4]
	lea edx, [ecx-0x8892]
	mov ebx, _ZN7COpenGL7sOpenGLE
	cmp eax, [ebx+edx*4+0x38]
	jz _ZN19COpenGLBufferObject5FlushEjj_110
	mov [ebx+edx*4+0x38], eax
	mov [esp+0x4], eax
	mov [esp], ecx
	call glBindBufferARB
	mov ecx, [edi+0x4]
_ZN19COpenGLBufferObject5FlushEjj_110:
	cmp byte [edi+0x54], 0x0
	jnz _ZN19COpenGLBufferObject5FlushEjj_120
	mov eax, [edi+0x4c]
	cmp eax, esi
	jz _ZN19COpenGLBufferObject5FlushEjj_130
	mov ebx, eax
	jmp _ZN19COpenGLBufferObject5FlushEjj_140
_ZN19COpenGLBufferObject5FlushEjj_150:
	mov eax, ebx
	mov ecx, [edi+0x4]
_ZN19COpenGLBufferObject5FlushEjj_140:
	mov edx, [eax+0x8]
	mov eax, [eax+0xc]
	sub eax, edx
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ecx
	call glFlushMappedBufferRangeAPPLE
	mov ebx, [ebx]
	cmp ebx, esi
	jnz _ZN19COpenGLBufferObject5FlushEjj_150
	mov ecx, [edi+0x4]
_ZN19COpenGLBufferObject5FlushEjj_130:
	mov [esp], ecx
	call glUnmapBuffer
	mov [esp], esi
	call _ZNSt10_List_baseI15DirtyMarkerTypeSaIS0_EE8_M_clearEv
	mov [esi], esi
	mov [esi+0x4], esi
	mov dword [edi+0x48], 0x0
	xor eax, eax
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN19COpenGLBufferObject5FlushEjj_90:
	mov eax, [ebp+0xc]
	add eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov eax, [ebp+0xc]
	mov [esp+0x4], eax
	mov [esp], edi
	call _ZN19COpenGLBufferObject32DoesRangeIntersectAnyDirtyRegionEjj
	test al, al
	jnz _ZN19COpenGLBufferObject5FlushEjj_160
	xor eax, eax
_ZN19COpenGLBufferObject5FlushEjj_200:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN19COpenGLBufferObject5FlushEjj_30:
	mov edx, [edi+0x4c]
	cmp edx, esi
	jz _ZN19COpenGLBufferObject5FlushEjj_40
	xor ecx, ecx
_ZN19COpenGLBufferObject5FlushEjj_170:
	mov eax, [edx+0xc]
	sub eax, [edx+0x8]
	add ecx, eax
	mov edx, [edx]
	cmp edx, esi
	jnz _ZN19COpenGLBufferObject5FlushEjj_170
	jmp _ZN19COpenGLBufferObject5FlushEjj_180
_ZN19COpenGLBufferObject5FlushEjj_100:
	cmp byte [edi+0x54], 0x0
	jnz _ZN19COpenGLBufferObject5FlushEjj_190
	xor eax, eax
	jmp _ZN19COpenGLBufferObject5FlushEjj_200
_ZN19COpenGLBufferObject5FlushEjj_20:
	cmp byte [edi+0x54], 0x0
	jz _ZN19COpenGLBufferObject5FlushEjj_40
	jmp _ZN19COpenGLBufferObject5FlushEjj_210
_ZN19COpenGLBufferObject5FlushEjj_50:
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call _ZN14MacOpenGLUtils13GetBufferHintERj
	mov eax, [ebp-0x1c]
	mov [ebp-0x4c], eax
	add eax, 0x1
	jz _ZN19COpenGLBufferObject5FlushEjj_220
_ZN19COpenGLBufferObject5FlushEjj_250:
	mov eax, [ebp-0x4c]
	test eax, eax
	jz _ZN19COpenGLBufferObject5FlushEjj_230
	mov eax, [edi+0x18]
	mov eax, [eax]
	mov [ebp-0x3c], eax
	mov ecx, [edi+0x4]
	lea ebx, [ecx-0x8892]
	mov [ebp-0x2c], ebx
	mov edx, _ZN7COpenGL7sOpenGLE
	cmp eax, [edx+ebx*4+0x38]
	jz _ZN19COpenGLBufferObject5FlushEjj_240
	mov [edx+ebx*4+0x38], eax
	mov [esp+0x4], eax
	mov [esp], ecx
	call glBindBufferARB
	mov ecx, [edi+0x4]
_ZN19COpenGLBufferObject5FlushEjj_240:
	mov eax, [edi+0x38]
	mov [esp+0xc], eax
	mov ebx, [ebp-0x4c]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov [esp], ecx
	call glBufferSubDataARB
_ZN19COpenGLBufferObject5FlushEjj_230:
	mov byte [edi+0x54], 0x0
	jmp _ZN19COpenGLBufferObject5FlushEjj_70
_ZN19COpenGLBufferObject5FlushEjj_120:
	mov eax, [edi+0xc]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], ecx
	call glFlushMappedBufferRangeAPPLE
	mov byte [edi+0x54], 0x0
	mov ecx, [edi+0x4]
	jmp _ZN19COpenGLBufferObject5FlushEjj_130
_ZN19COpenGLBufferObject5FlushEjj_220:
	mov edx, [edi+0xc]
	mov [ebp-0x4c], edx
	jmp _ZN19COpenGLBufferObject5FlushEjj_250


;COpenGLBufferObject::Unlock()
_ZN19COpenGLBufferObject6UnlockEv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [ebp+0x8]
	mov eax, [edx+0x8]
	sub eax, 0x1
	mov [edx+0x8], eax
	test eax, eax
	jz _ZN19COpenGLBufferObject6UnlockEv_10
	leave
	ret
_ZN19COpenGLBufferObject6UnlockEv_10:
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov [esp], edx
	call _ZN19COpenGLBufferObject5FlushEjj
	leave
	ret


;COpenGLBufferObject::COpenGLBufferObject(unsigned long, bool, unsigned int)
_ZN19COpenGLBufferObjectC2Embj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov esi, [ebp+0x8]
	mov eax, [ebp+0x10]
	mov ecx, eax
	mov dword [esi], _ZTV19COpenGLBufferObject+0x8
	mov edx, [ebp+0xc]
	mov [esi+0x4], edx
	mov dword [esi+0x8], 0x0
	mov edx, [ebp+0x14]
	mov [esi+0xc], edx
	mov [esi+0x10], al
	mov dword [esi+0x14], 0x88e8
	mov dword [esi+0x18], 0x0
	lea eax, [esi+0x1c]
	mov dword [eax+0x10], 0x0
	xor edx, edx
_ZN19COpenGLBufferObjectC2Embj_10:
	mov byte [eax], 0xfc
	add edx, 0x1
	add eax, 0x1
	cmp edx, 0x10
	jnz _ZN19COpenGLBufferObjectC2Embj_10
	xor eax, eax
	test cl, cl
	cmovnz eax, [ebp+0x14]
	lea edx, [esi+0x30]
	mov [ebp-0x20], edx
	mov dword [esp+0x8], 0x20
	mov [esp+0x4], eax
	mov [esp], edx
	call _ZN13CMemoryBufferC1Ejj
	mov dword [esi+0x48], 0x0
	lea edi, [esi+0x4c]
	mov [esi+0x4c], edi
	mov [edi+0x4], edi
	mov byte [esi+0x54], 0x0
	mov dword [esp], 0x4
	call _Znwm
	mov ebx, eax
	mov [esp+0x4], eax
	mov dword [esp], 0x1
	call glGenBuffersARB
	mov eax, _ZN7COpenGL7sOpenGLE
	add eax, 0xd8
	mov [ebp-0x1c], eax
	mov dword [esp], 0xc
	call _Znwm
	mov [eax+0x8], ebx
	mov edx, [ebp-0x1c]
	mov [esp+0x4], edx
	mov [esp], eax
	call _ZNSt15_List_node_base4hookEPS_
	mov [esi+0x18], ebx
	mov eax, [ebx]
	mov ecx, [esi+0x4]
	lea edx, [ecx-0x8892]
	mov ebx, _ZN7COpenGL7sOpenGLE
	cmp eax, [ebx+edx*4+0x38]
	jz _ZN19COpenGLBufferObjectC2Embj_20
	mov [ebx+edx*4+0x38], eax
	mov [esp+0x4], eax
	mov [esp], ecx
	call glBindBufferARB
_ZN19COpenGLBufferObjectC2Embj_20:
	mov eax, [esi+0x14]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov eax, [ebp+0x14]
	mov [esp+0x4], eax
	mov edx, [ebp+0xc]
	mov [esp], edx
	call glBufferDataARB
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x8a12
	mov eax, [esi+0x4]
	mov [esp], eax
	call glBufferParameteriAPPLE
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x8a13
	mov eax, [esi+0x4]
	mov [esp], eax
	call glBufferParameteriAPPLE
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	mov ebx, eax
	mov [esp], edi
	call _ZNSt10_List_baseI15DirtyMarkerTypeSaIS0_EE8_M_clearEv
	mov eax, [ebp-0x20]
	mov [esp], eax
	call _ZN13CMemoryBufferD1Ev
	mov [esp], ebx
	call _Unwind_Resume
	add [eax], al


;COpenGLBufferObject::~COpenGLBufferObject()
_ZN19COpenGLBufferObjectD0Ev:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov dword [esi], _ZTV19COpenGLBufferObject+0x8
	mov [esp], esi
	call _ZN19COpenGLBufferObject16ReleaseResourcesEv
	lea eax, [esi+0x4c]
	mov [esp], eax
	call _ZNSt10_List_baseI15DirtyMarkerTypeSaIS0_EE8_M_clearEv
	lea eax, [esi+0x30]
	mov [esp], eax
	call _ZN13CMemoryBufferD1Ev
	mov [ebp+0x8], esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _ZdlPv
	mov ebx, eax
	lea eax, [esi+0x4c]
	mov [esp], eax
	call _ZNSt10_List_baseI15DirtyMarkerTypeSaIS0_EE8_M_clearEv
	lea eax, [esi+0x30]
	mov [esp], eax
	call _ZN13CMemoryBufferD1Ev
	mov [esp], ebx
	call _Unwind_Resume
	nop


;COpenGLBufferObject::~COpenGLBufferObject()
_ZN19COpenGLBufferObjectD1Ev:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov dword [esi], _ZTV19COpenGLBufferObject+0x8
	mov [esp], esi
	call _ZN19COpenGLBufferObject16ReleaseResourcesEv
	lea eax, [esi+0x4c]
	mov [esp], eax
	call _ZNSt10_List_baseI15DirtyMarkerTypeSaIS0_EE8_M_clearEv
	lea eax, [esi+0x30]
	mov [ebp+0x8], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _ZN13CMemoryBufferD1Ev
	mov ebx, eax
	lea eax, [esi+0x4c]
	mov [esp], eax
	call _ZNSt10_List_baseI15DirtyMarkerTypeSaIS0_EE8_M_clearEv
	lea eax, [esi+0x30]
	mov [esp], eax
	call _ZN13CMemoryBufferD1Ev
	mov [esp], ebx
	call _Unwind_Resume
	nop


;COpenGLBufferObject::~COpenGLBufferObject()
_ZN19COpenGLBufferObjectD2Ev:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov dword [esi], _ZTV19COpenGLBufferObject+0x8
	mov [esp], esi
	call _ZN19COpenGLBufferObject16ReleaseResourcesEv
	lea eax, [esi+0x4c]
	mov [esp], eax
	call _ZNSt10_List_baseI15DirtyMarkerTypeSaIS0_EE8_M_clearEv
	lea eax, [esi+0x30]
	mov [ebp+0x8], eax
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	jmp _ZN13CMemoryBufferD1Ev
	mov ebx, eax
	lea eax, [esi+0x4c]
	mov [esp], eax
	call _ZNSt10_List_baseI15DirtyMarkerTypeSaIS0_EE8_M_clearEv
	lea eax, [esi+0x30]
	mov [esp], eax
	call _ZN13CMemoryBufferD1Ev
	mov [esp], ebx
	call _Unwind_Resume
	nop


;std::_List_base<DirtyMarkerType, std::allocator<DirtyMarkerType> >::_M_clear()
_ZNSt10_List_baseI15DirtyMarkerTypeSaIS0_EE8_M_clearEv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov eax, [esi]
	cmp eax, esi
	jnz _ZNSt10_List_baseI15DirtyMarkerTypeSaIS0_EE8_M_clearEv_10
	jmp _ZNSt10_List_baseI15DirtyMarkerTypeSaIS0_EE8_M_clearEv_20
_ZNSt10_List_baseI15DirtyMarkerTypeSaIS0_EE8_M_clearEv_30:
	mov eax, ebx
_ZNSt10_List_baseI15DirtyMarkerTypeSaIS0_EE8_M_clearEv_10:
	mov ebx, [eax]
	mov [esp], eax
	call _ZdlPv
	cmp esi, ebx
	jnz _ZNSt10_List_baseI15DirtyMarkerTypeSaIS0_EE8_M_clearEv_30
_ZNSt10_List_baseI15DirtyMarkerTypeSaIS0_EE8_M_clearEv_20:
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;std::list<DirtyMarkerType, std::allocator<DirtyMarkerType> >::erase(std::_List_iterator<DirtyMarkerType>)
_ZNSt4listI15DirtyMarkerTypeSaIS0_EE5eraseESt14_List_iteratorIS0_E:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov ebx, [ebp+0xc]
	mov esi, [ebx]
	mov [esp], ebx
	call _ZNSt15_List_node_base6unhookEv
	mov [esp], ebx
	call _ZdlPv
	mov eax, esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret


;Initialized global or static variables of COpenGLBufferObject:
SECTION .data
_ZZN19COpenGLBufferObject5FlushEjjE18sVBOFlushTolerance: dd 0x1000, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of COpenGLBufferObject:
SECTION .rdata
;VTypeInfoTable for COpenGLBufferObject:
_ZTI19COpenGLBufferObject: dd 0x8, _cstring_19copenglbuffero, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
;VTable for COpenGLBufferObject:
_ZTV19COpenGLBufferObject: dd 0x0, _ZTI19COpenGLBufferObject, _ZN19COpenGLBufferObjectD1Ev, _ZN19COpenGLBufferObjectD0Ev, 0x0, 0x0, 0x0, 0x0


;Zero initialized global or static variables of COpenGLBufferObject:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_19copenglbuffero:		db "19COpenGLBufferObject",0



;All constant floats and doubles:
SECTION .rdata

