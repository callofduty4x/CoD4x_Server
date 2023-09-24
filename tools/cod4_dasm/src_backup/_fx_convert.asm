;Imports of fx_convert:
	extern _Z22FxCurveIterator_CreateP15FxCurveIteratorPK7FxCurve
	extern _Z23FxCurveIterator_ReleaseP15FxCurveIterator
	extern _ZZ21FX_Beam_GenerateVertsP18FxGenerateVertsCmdE15templateIndices
	extern _Z16Material_GetInfoP8MaterialP12MaterialInfo
	extern memcpy
	extern floorf
	extern _Z13Vec2NormalizePf
	extern _Z12Vec2DistancePKfS0_
	extern _Z21FX_RegisterPhysPresetPKc
	extern _Z14Com_PrintErroriPKcz
	extern strcpy

;Exports of fx_convert:
	global _Z16FX_SampleCurve3DPK7FxCurveffPf
	global _Z27FX_MaxErrorForIntervalCountiiPKfif
	global _Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3_
	global _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef
	global _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh
	global _Z10FX_ConvertPK17FxEditorEffectDefPFPviE


SECTION .text


;FX_SampleCurve3D(FxCurve const*, float, float, float*)
_Z16FX_SampleCurve3DPK7FxCurveffPf:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov ebx, edx
	mov [esp+0x4], eax
	lea edi, [ebp-0x20]
	mov [esp], edi
	movss [ebp-0x38], xmm1
	movss [ebp-0x48], xmm0
	call _Z22FxCurveIterator_CreateP15FxCurveIteratorPK7FxCurve
	mov ecx, [ebp-0x20]
	mov edx, [ecx]
	add edx, 0x1
	mov eax, edx
	imul eax, [ebp-0x1c]
	lea eax, [ecx+eax*4]
	lea esi, [eax+0x8]
	movss xmm0, dword [eax+0x8]
	movss xmm2, dword [ebp-0x38]
	ucomiss xmm0, xmm2
	movss xmm3, dword [ebp-0x48]
	jbe _Z16FX_SampleCurve3DPK7FxCurveffPf_10
	mov dword [ebp-0x1c], 0x0
	lea esi, [ecx+0x8]
_Z16FX_SampleCurve3DPK7FxCurveffPf_10:
	shl edx, 0x2
	lea eax, [esi+edx]
	ucomiss xmm2, [eax]
	jbe _Z16FX_SampleCurve3DPK7FxCurveffPf_20
_Z16FX_SampleCurve3DPK7FxCurveffPf_30:
	add dword [ebp-0x1c], 0x1
	add eax, edx
	ucomiss xmm2, [eax]
	ja _Z16FX_SampleCurve3DPK7FxCurveffPf_30
_Z16FX_SampleCurve3DPK7FxCurveffPf_20:
	mov eax, [ebp-0x1c]
	shl eax, 0x4
	add eax, ecx
	lea edx, [eax+0x8]
	movss xmm1, dword [eax+0x8]
	subss xmm2, xmm1
	movss xmm0, dword [edx+0x10]
	subss xmm0, xmm1
	divss xmm2, xmm0
	movss xmm1, dword [edx+0x4]
	movss xmm0, dword [edx+0x14]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebx], xmm1
	movss xmm1, dword [edx+0x8]
	movss xmm0, dword [edx+0x18]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebx+0x4], xmm1
	movss xmm1, dword [edx+0xc]
	movss xmm0, dword [edx+0x1c]
	subss xmm0, xmm1
	mulss xmm2, xmm0
	addss xmm1, xmm2
	movaps xmm0, xmm3
	mulss xmm0, [ebx]
	movss [ebx], xmm0
	movaps xmm0, xmm3
	mulss xmm0, [ebx+0x4]
	movss [ebx+0x4], xmm0
	mulss xmm3, xmm1
	movss [ebx+0x8], xmm3
	mov [esp], edi
	call _Z23FxCurveIterator_ReleaseP15FxCurveIterator
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;FX_MaxErrorForIntervalCount(int, int, float const*, int, float)
_Z27FX_MaxErrorForIntervalCountiiPKfif:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov [ebp-0x5c], eax
	mov [ebp-0x60], ecx
	movss [ebp-0x64], xmm0
	mov ebx, eax
	add ebx, 0x1
	cmp ebx, 0x1
	jz _Z27FX_MaxErrorForIntervalCountiiPKfif_10
	mov edx, 0x1
_Z27FX_MaxErrorForIntervalCountiiPKfif_20:
	mov ecx, [ebp-0x60]
	mov eax, [ecx+edx*4]
	mov [ebp+edx*4-0x28], eax
	add edx, 0x1
	cmp ebx, edx
	jnz _Z27FX_MaxErrorForIntervalCountiiPKfif_20
_Z27FX_MaxErrorForIntervalCountiiPKfif_10:
	mov ecx, [ebp+0x8]
	pxor xmm6, xmm6
	test ecx, ecx
	jle _Z27FX_MaxErrorForIntervalCountiiPKfif_30
	cvtsi2ss xmm3, dword [ebp+0x8]
	lea eax, [ebx*4]
	mov [ebp-0x58], eax
	pxor xmm6, xmm6
	movss [ebp-0x4c], xmm6
	mov dword [ebp-0x54], 0x1
	mov dword [ebp-0x50], 0x1
	mov eax, [ebp-0x54]
	imul eax, ebx
	mov ecx, [ebp-0x60]
	lea edx, [ecx+eax*4]
	cvtsi2ss xmm1, dword [ebp-0x50]
	movaps xmm0, xmm3
	mulss xmm0, [edx]
	ucomiss xmm1, xmm0
	ja _Z27FX_MaxErrorForIntervalCountiiPKfif_40
_Z27FX_MaxErrorForIntervalCountiiPKfif_170:
	mov esi, [ebp-0x54]
_Z27FX_MaxErrorForIntervalCountiiPKfif_190:
	movaps xmm5, xmm1
	divss xmm5, xmm3
	mov eax, edx
	sub eax, [ebp-0x58]
	lea ecx, [edx+0x4]
	lea edi, [eax+0x4]
	movss xmm1, dword [eax]
	movaps xmm2, xmm5
	subss xmm2, xmm1
	movss xmm0, dword [edx]
	subss xmm0, xmm1
	divss xmm2, xmm0
	mov edx, [ebp-0x5c]
	test edx, edx
	jle _Z27FX_MaxErrorForIntervalCountiiPKfif_50
	xor edx, edx
_Z27FX_MaxErrorForIntervalCountiiPKfif_60:
	lea eax, [edx*4]
	movss xmm1, dword [edi+eax]
	movss xmm0, dword [ecx+eax]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp+eax-0x30], xmm1
	add edx, 0x1
	cmp [ebp-0x5c], edx
	jnz _Z27FX_MaxErrorForIntervalCountiiPKfif_60
_Z27FX_MaxErrorForIntervalCountiiPKfif_50:
	cmp [ebp-0x54], esi
	jge _Z27FX_MaxErrorForIntervalCountiiPKfif_70
	movaps xmm7, xmm5
	subss xmm7, [ebp-0x4c]
	mov edi, [ebp-0x54]
	movss xmm4, dword [_ZZ21FX_Beam_GenerateVertsP18FxGenerateVertsCmdE15templateIndices+0x40]
	mov [ebp-0x68], esi
	mov ecx, edi
	imul ecx, ebx
_Z27FX_MaxErrorForIntervalCountiiPKfif_140:
	mov eax, [ebp-0x60]
	movss xmm2, dword [eax+ecx*4]
	subss xmm2, [ebp-0x4c]
	divss xmm2, xmm7
	mov eax, [ebp-0x5c]
	test eax, eax
	jle _Z27FX_MaxErrorForIntervalCountiiPKfif_80
	xor edx, edx
_Z27FX_MaxErrorForIntervalCountiiPKfif_90:
	lea eax, [edx*4]
	movss xmm1, dword [ebp+eax-0x24]
	movss xmm0, dword [ebp+eax-0x30]
	subss xmm0, xmm1
	mulss xmm0, xmm2
	addss xmm1, xmm0
	movss [ebp+eax-0x3c], xmm1
	add edx, 0x1
	cmp [ebp-0x5c], edx
	jnz _Z27FX_MaxErrorForIntervalCountiiPKfif_90
_Z27FX_MaxErrorForIntervalCountiiPKfif_80:
	cmp ebx, 0x1
	jle _Z27FX_MaxErrorForIntervalCountiiPKfif_100
	mov edx, [ebp-0x60]
	lea eax, [edx+ecx*4]
	mov edx, 0x1
	movaps xmm1, xmm4
_Z27FX_MaxErrorForIntervalCountiiPKfif_130:
	movss xmm0, dword [eax+0x4]
	subss xmm0, [ebp+edx*4-0x40]
	andps xmm0, xmm1
	ucomiss xmm0, xmm6
	jbe _Z27FX_MaxErrorForIntervalCountiiPKfif_110
	ucomiss xmm0, [ebp-0x64]
	ja _Z27FX_MaxErrorForIntervalCountiiPKfif_120
	movaps xmm6, xmm0
_Z27FX_MaxErrorForIntervalCountiiPKfif_110:
	add edx, 0x1
	add eax, 0x4
	cmp ebx, edx
	jnz _Z27FX_MaxErrorForIntervalCountiiPKfif_130
_Z27FX_MaxErrorForIntervalCountiiPKfif_100:
	add edi, 0x1
	add ecx, ebx
	cmp edi, [ebp-0x68]
	jnz _Z27FX_MaxErrorForIntervalCountiiPKfif_140
_Z27FX_MaxErrorForIntervalCountiiPKfif_70:
	cmp ebx, 0x1
	jz _Z27FX_MaxErrorForIntervalCountiiPKfif_150
	mov ecx, 0x1
	lea edi, [ebp-0x30]
_Z27FX_MaxErrorForIntervalCountiiPKfif_160:
	lea edx, [ecx*4]
	mov eax, [edi+edx-0x4]
	mov [ebp+edx-0x28], eax
	add ecx, 0x1
	cmp ebx, ecx
	jnz _Z27FX_MaxErrorForIntervalCountiiPKfif_160
_Z27FX_MaxErrorForIntervalCountiiPKfif_150:
	add dword [ebp-0x50], 0x1
	mov ecx, [ebp-0x50]
	cmp [ebp+0x8], ecx
	jl _Z27FX_MaxErrorForIntervalCountiiPKfif_30
	mov [ebp-0x54], esi
	movss [ebp-0x4c], xmm5
	mov eax, esi
	imul eax, ebx
	mov ecx, [ebp-0x60]
	lea edx, [ecx+eax*4]
	cvtsi2ss xmm1, dword [ebp-0x50]
	movaps xmm0, xmm3
	mulss xmm0, [edx]
	ucomiss xmm1, xmm0
	jbe _Z27FX_MaxErrorForIntervalCountiiPKfif_170
_Z27FX_MaxErrorForIntervalCountiiPKfif_40:
	mov esi, [ebp-0x54]
	mov ecx, [ebp-0x60]
_Z27FX_MaxErrorForIntervalCountiiPKfif_180:
	add esi, 0x1
	mov eax, ebx
	imul eax, esi
	lea edx, [ecx+eax*4]
	movaps xmm0, xmm3
	mulss xmm0, [edx]
	ucomiss xmm1, xmm0
	ja _Z27FX_MaxErrorForIntervalCountiiPKfif_180
	jmp _Z27FX_MaxErrorForIntervalCountiiPKfif_190
_Z27FX_MaxErrorForIntervalCountiiPKfif_120:
	movaps xmm6, xmm0
_Z27FX_MaxErrorForIntervalCountiiPKfif_30:
	movaps xmm0, xmm6
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;FX_SampleVisualStateScalar(FxEditorElemDef const*, float, FxSampleChannel, float, float*, float*)
_Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov esi, eax
	movaps xmm4, xmm0
	movss [ebp-0x44], xmm1
	mov edi, ecx
	cmp edx, 0x2
	jz _Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__10
	cmp edx, 0x3
	jz _Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__20
	sub edx, 0x1
	jz _Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__30
	xor eax, eax
	mov [ecx], eax
	mov edx, [ebp+0x8]
	mov [edx], eax
_Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__130:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__10:
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x158]
	movss [ebp-0x38], xmm0
	mov eax, [eax+0x164]
	mov [esp+0x4], eax
	lea eax, [ebp-0x20]
	mov [esp], eax
	movss [ebp-0x58], xmm4
	call _Z22FxCurveIterator_CreateP15FxCurveIteratorPK7FxCurve
	mov ecx, [ebp-0x20]
	mov edx, [ecx]
	add edx, 0x1
	mov eax, edx
	imul eax, [ebp-0x1c]
	lea eax, [ecx+eax*4]
	lea ebx, [eax+0x8]
	movss xmm0, dword [eax+0x8]
	movss xmm4, dword [ebp-0x58]
	ucomiss xmm0, xmm4
	ja _Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__40
	shl edx, 0x2
	lea eax, [edx+ebx]
	ucomiss xmm4, [eax]
	ja _Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__50
_Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__70:
	mov eax, [ebp-0x1c]
	lea eax, [ecx+eax*8]
	lea edx, [eax+0x8]
	movss xmm3, dword [eax+0x8]
	movss xmm2, dword [edx+0x4]
	movaps xmm1, xmm4
	subss xmm1, xmm3
	movss xmm0, dword [edx+0xc]
	subss xmm0, xmm2
	mulss xmm1, xmm0
	movss xmm0, dword [edx+0x8]
	subss xmm0, xmm3
	divss xmm1, xmm0
	addss xmm2, xmm1
	mulss xmm2, [ebp-0x38]
	movss [ebp-0x38], xmm2
	lea edx, [ebp-0x20]
	mov [esp], edx
	movss [ebp-0x58], xmm4
	call _Z23FxCurveIterator_ReleaseP15FxCurveIterator
	movss xmm0, dword [ebp-0x38]
	movss [edi], xmm0
	test byte [esi+0x30], 0x10
	jnz _Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__60
_Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__100:
	mov edx, [ebp+0x8]
	mov dword [edx], 0x0
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__50:
	add dword [ebp-0x1c], 0x1
	add eax, edx
	ucomiss xmm4, [eax]
	jbe _Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__70
	add dword [ebp-0x1c], 0x1
	add eax, edx
	ucomiss xmm4, [eax]
	ja _Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__50
	jmp _Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__70
_Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__20:
	movss xmm0, dword [ebp-0x44]
	mulss xmm0, [eax+0x16c]
	movss [ebp-0x30], xmm0
	mov eax, [eax+0x170]
	mov [esp+0x4], eax
	lea eax, [ebp-0x20]
	mov [esp], eax
	movss [ebp-0x58], xmm4
	call _Z22FxCurveIterator_CreateP15FxCurveIteratorPK7FxCurve
	mov ecx, [ebp-0x20]
	mov edx, [ecx]
	add edx, 0x1
	mov eax, edx
	imul eax, [ebp-0x1c]
	lea eax, [ecx+eax*4]
	lea ebx, [eax+0x8]
	movss xmm0, dword [eax+0x8]
	movss xmm4, dword [ebp-0x58]
	ucomiss xmm0, xmm4
	ja _Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__80
	shl edx, 0x2
	lea eax, [edx+ebx]
	ucomiss xmm4, [eax]
	ja _Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__90
_Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__140:
	mov eax, [ebp-0x1c]
	lea eax, [ecx+eax*8]
	lea edx, [eax+0x8]
	movss xmm3, dword [eax+0x8]
	movss xmm2, dword [edx+0x4]
	movaps xmm1, xmm4
	subss xmm1, xmm3
	movss xmm0, dword [edx+0xc]
	subss xmm0, xmm2
	mulss xmm1, xmm0
	movss xmm0, dword [edx+0x8]
	subss xmm0, xmm3
	divss xmm1, xmm0
	addss xmm2, xmm1
	mulss xmm2, [ebp-0x30]
	movss [ebp-0x30], xmm2
	lea edx, [ebp-0x20]
	mov [esp], edx
	movss [ebp-0x58], xmm4
	call _Z23FxCurveIterator_ReleaseP15FxCurveIterator
	movss xmm0, dword [ebp-0x30]
	movss [edi], xmm0
	test byte [esi+0x30], 0x20
	jz _Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__100
	movss xmm0, dword [ebp-0x44]
	mulss xmm0, [esi+0x16c]
	movss [ebp-0x2c], xmm0
	mov eax, [esi+0x174]
	mov [esp+0x4], eax
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z22FxCurveIterator_CreateP15FxCurveIteratorPK7FxCurve
	mov ecx, [ebp-0x20]
	mov edx, [ecx]
	add edx, 0x1
	mov eax, edx
	imul eax, [ebp-0x1c]
	lea eax, [ecx+eax*4]
	lea ebx, [eax+0x8]
	movss xmm0, dword [eax+0x8]
	movss xmm4, dword [ebp-0x58]
	ucomiss xmm0, xmm4
	ja _Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__110
_Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__260:
	shl edx, 0x2
	lea eax, [edx+ebx]
	ucomiss xmm4, [eax]
	ja _Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__120
_Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__210:
	mov eax, [ebp-0x1c]
	lea eax, [ecx+eax*8]
	lea edx, [eax+0x8]
	movss xmm2, dword [eax+0x8]
	movss xmm1, dword [edx+0x4]
	subss xmm4, xmm2
	movss xmm0, dword [edx+0xc]
	subss xmm0, xmm1
	mulss xmm4, xmm0
	movss xmm0, dword [edx+0x8]
	subss xmm0, xmm2
	divss xmm4, xmm0
	addss xmm1, xmm4
	mulss xmm1, [ebp-0x2c]
	movss [ebp-0x2c], xmm1
	lea edx, [ebp-0x20]
	mov [esp], edx
	call _Z23FxCurveIterator_ReleaseP15FxCurveIterator
	movss xmm0, dword [ebp-0x2c]
	subss xmm0, [edi]
	mov eax, [ebp+0x8]
	movss [eax], xmm0
	jmp _Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__130
_Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__90:
	add dword [ebp-0x1c], 0x1
	add eax, edx
	ucomiss xmm4, [eax]
	jbe _Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__140
	add dword [ebp-0x1c], 0x1
	add eax, edx
	ucomiss xmm4, [eax]
	ja _Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__90
	jmp _Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__140
_Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__30:
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x154]
	movss [ebp-0x40], xmm0
	mov eax, [eax+0x15c]
	mov [esp+0x4], eax
	lea eax, [ebp-0x20]
	mov [esp], eax
	movss [ebp-0x58], xmm4
	call _Z22FxCurveIterator_CreateP15FxCurveIteratorPK7FxCurve
	mov ecx, [ebp-0x20]
	mov edx, [ecx]
	add edx, 0x1
	mov eax, edx
	imul eax, [ebp-0x1c]
	lea eax, [ecx+eax*4]
	lea ebx, [eax+0x8]
	movss xmm0, dword [eax+0x8]
	movss xmm4, dword [ebp-0x58]
	ucomiss xmm0, xmm4
	jbe _Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__150
	mov dword [ebp-0x1c], 0x0
	lea ebx, [ecx+0x8]
_Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__150:
	shl edx, 0x2
	lea eax, [edx+ebx]
	ucomiss xmm4, [eax]
	jbe _Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__160
_Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__170:
	add dword [ebp-0x1c], 0x1
	add eax, edx
	ucomiss xmm4, [eax]
	ja _Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__170
_Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__160:
	mov eax, [ebp-0x1c]
	lea eax, [ecx+eax*8]
	lea edx, [eax+0x8]
	movss xmm3, dword [eax+0x8]
	movss xmm2, dword [edx+0x4]
	movaps xmm1, xmm4
	subss xmm1, xmm3
	movss xmm0, dword [edx+0xc]
	subss xmm0, xmm2
	mulss xmm1, xmm0
	movss xmm0, dword [edx+0x8]
	subss xmm0, xmm3
	divss xmm1, xmm0
	addss xmm2, xmm1
	mulss xmm2, [ebp-0x40]
	movss [ebp-0x40], xmm2
	lea edx, [ebp-0x20]
	mov [esp], edx
	movss [ebp-0x58], xmm4
	call _Z23FxCurveIterator_ReleaseP15FxCurveIterator
	movss xmm0, dword [ebp-0x40]
	movss [edi], xmm0
	test byte [esi+0x30], 0x8
	jz _Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__100
	movss xmm0, dword [ebp-0x44]
	mulss xmm0, [esi+0x154]
	movss [ebp-0x3c], xmm0
	mov eax, [esi+0x160]
	mov [esp+0x4], eax
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z22FxCurveIterator_CreateP15FxCurveIteratorPK7FxCurve
	mov ecx, [ebp-0x20]
	mov edx, [ecx]
	add edx, 0x1
	mov eax, edx
	imul eax, [ebp-0x1c]
	lea eax, [ecx+eax*4]
	lea ebx, [eax+0x8]
	movss xmm0, dword [eax+0x8]
	movss xmm4, dword [ebp-0x58]
	ucomiss xmm0, xmm4
	jbe _Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__180
	mov dword [ebp-0x1c], 0x0
	lea ebx, [ecx+0x8]
_Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__180:
	shl edx, 0x2
	lea eax, [edx+ebx]
	ucomiss xmm4, [eax]
	jbe _Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__190
_Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__200:
	add dword [ebp-0x1c], 0x1
	add eax, edx
	ucomiss xmm4, [eax]
	ja _Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__200
_Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__190:
	mov eax, [ebp-0x1c]
	lea eax, [ecx+eax*8]
	lea edx, [eax+0x8]
	movss xmm2, dword [eax+0x8]
	movss xmm1, dword [edx+0x4]
	subss xmm4, xmm2
	movss xmm0, dword [edx+0xc]
	subss xmm0, xmm1
	mulss xmm4, xmm0
	movss xmm0, dword [edx+0x8]
	subss xmm0, xmm2
	divss xmm4, xmm0
	addss xmm1, xmm4
	mulss xmm1, [ebp-0x3c]
	movss [ebp-0x3c], xmm1
	lea edx, [ebp-0x20]
	mov [esp], edx
	call _Z23FxCurveIterator_ReleaseP15FxCurveIterator
	movss xmm0, dword [ebp-0x3c]
	subss xmm0, [edi]
	mov eax, [ebp+0x8]
	movss [eax], xmm0
	jmp _Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__130
_Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__40:
	mov dword [ebp-0x1c], 0x0
	lea ebx, [ecx+0x8]
	shl edx, 0x2
	lea eax, [edx+ebx]
	ucomiss xmm4, [eax]
	jbe _Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__70
	jmp _Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__50
_Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__80:
	mov dword [ebp-0x1c], 0x0
	lea ebx, [ecx+0x8]
	shl edx, 0x2
	lea eax, [edx+ebx]
	ucomiss xmm4, [eax]
	jbe _Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__140
	jmp _Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__90
_Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__120:
	add dword [ebp-0x1c], 0x1
	add eax, edx
	ucomiss xmm4, [eax]
	jbe _Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__210
	add dword [ebp-0x1c], 0x1
	add eax, edx
	ucomiss xmm4, [eax]
	ja _Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__120
	jmp _Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__210
_Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__60:
	movss xmm0, dword [ebp-0x44]
	mulss xmm0, [esi+0x158]
	movss [ebp-0x34], xmm0
	mov eax, [esi+0x168]
	mov [esp+0x4], eax
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z22FxCurveIterator_CreateP15FxCurveIteratorPK7FxCurve
	mov ecx, [ebp-0x20]
	mov edx, [ecx]
	add edx, 0x1
	mov eax, edx
	imul eax, [ebp-0x1c]
	lea eax, [ecx+eax*4]
	lea ebx, [eax+0x8]
	movss xmm0, dword [eax+0x8]
	movss xmm4, dword [ebp-0x58]
	ucomiss xmm0, xmm4
	ja _Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__220
_Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__250:
	shl edx, 0x2
	lea eax, [edx+ebx]
	ucomiss xmm4, [eax]
	ja _Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__230
_Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__240:
	mov eax, [ebp-0x1c]
	lea eax, [ecx+eax*8]
	lea edx, [eax+0x8]
	movss xmm2, dword [eax+0x8]
	movss xmm1, dword [edx+0x4]
	subss xmm4, xmm2
	movss xmm0, dword [edx+0xc]
	subss xmm0, xmm1
	mulss xmm4, xmm0
	movss xmm0, dword [edx+0x8]
	subss xmm0, xmm2
	divss xmm4, xmm0
	addss xmm1, xmm4
	mulss xmm1, [ebp-0x34]
	movss [ebp-0x34], xmm1
	lea edx, [ebp-0x20]
	mov [esp], edx
	call _Z23FxCurveIterator_ReleaseP15FxCurveIterator
	movss xmm0, dword [ebp-0x34]
	subss xmm0, [edi]
	mov eax, [ebp+0x8]
	movss [eax], xmm0
	jmp _Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__130
_Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__230:
	add dword [ebp-0x1c], 0x1
	add eax, edx
	ucomiss xmm4, [eax]
	jbe _Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__240
	add dword [ebp-0x1c], 0x1
	add eax, edx
	ucomiss xmm4, [eax]
	ja _Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__230
	jmp _Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__240
_Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__220:
	mov dword [ebp-0x1c], 0x0
	lea ebx, [ecx+0x8]
	jmp _Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__250
_Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__110:
	mov dword [ebp-0x1c], 0x0
	lea ebx, [ecx+0x8]
	jmp _Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3__260


;FX_SampleVelocityInFrame(FxElemDef*, float const (*) [3], FxElemVelStateInFrame*, int, int, FxEditorElemDef const*)
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xcc
	mov [ebp-0x9c], eax
	mov [ebp-0xa0], edx
	mov [ebp-0xa4], ecx
	mov esi, [ebp+0x8]
	mov eax, [ebp+0x10]
	mov ebx, [eax+0x30]
	mov edx, ebx
	and edx, 0x800
	xor ecx, ecx
	mov eax, 0x800
	cmp dword [ebp+0xc], 0x2000000
	cmovnz eax, ecx
	cmp eax, edx
	setz byte [ebp-0x49]
	mov edx, ebx
	and edx, 0x1000
	mov eax, 0x1000
	cmp dword [ebp+0xc], 0x2000000
	cmovnz eax, ecx
	cmp eax, edx
	setz byte [ebp-0x4a]
	cmp byte [ebp-0x49], 0x0
	jnz _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_10
	xor eax, eax
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_650:
	mov [ebp-0x1a], al
	cmp byte [ebp-0x4a], 0x0
	jz _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_20
	test bh, 0x2
	jnz _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_30
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_20:
	mov byte [ebp-0x96], 0x0
	xor eax, eax
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_660:
	mov [ebp-0x19], al
	shr ebx, 0xa
	and bl, 0x1
	mov [ebp-0x86], bl
	pxor xmm3, xmm3
	cmp byte [ebp-0x49], 0x0
	jz _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_40
	mov edx, [ebp-0xa0]
	movss xmm3, dword [edx]
	movss xmm0, dword [edx+0x4]
	movss xmm1, dword [edx+0x8]
	mulss xmm3, xmm3
	mulss xmm0, xmm0
	addss xmm3, xmm0
	mulss xmm1, xmm1
	addss xmm3, xmm1
	addss xmm3, [_float_0_00000000]
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_40:
	cmp byte [ebp-0x4a], 0x0
	jz _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_50
	mov eax, [ebp-0xa0]
	add eax, 0xc
	mov edx, [ebp-0xa0]
	movss xmm0, dword [edx+0xc]
	movss xmm1, dword [eax+0x4]
	movss xmm2, dword [eax+0x8]
	mulss xmm0, xmm0
	mulss xmm1, xmm1
	addss xmm0, xmm1
	mulss xmm2, xmm2
	addss xmm0, xmm2
	addss xmm3, xmm0
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_50:
	mulss xmm3, [_float_0_00000100]
	movss [ebp-0x2c], xmm3
	mov eax, [ebp-0x9c]
	movzx edx, byte [eax+0xb2]
	movzx eax, byte [ebp-0x1a]
	mov [ebp-0x95], al
	lea esi, [esi+esi*2]
	mov [ebp-0xa8], esi
	shl dword [ebp-0xa8], 0x4
	xor edi, edi
	mov dword [ebp-0x84], 0x0
	mov byte [ebp-0x85], 0x0
	mov eax, [ebp-0xa0]
	add eax, 0xc
	mov [ebp-0xac], eax
	mov [ebp-0xb0], eax
	mov ebx, [ebp-0xa4]
	add ebx, 0x24
	jmp _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_60
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_150:
	cmp byte [ebp-0x4a], 0x0
	jnz _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_70
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_250:
	test edi, edi
	jz _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_80
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_350:
	movss xmm2, dword [edi+0x4]
	addss xmm2, [ebx-0x20]
	mulss xmm2, [_float_0_50000000]
	movss xmm1, dword [edi+0x8]
	addss xmm1, [ebx-0x1c]
	mulss xmm1, [_float_0_50000000]
	lea eax, [edi+0x18]
	movss xmm0, dword [edi]
	addss xmm0, [ebx-0x24]
	mulss xmm0, [_float_0_50000000]
	addss xmm0, [edi+0x18]
	movss [ebx-0xc], xmm0
	addss xmm2, [eax+0x4]
	movss [ebx-0x8], xmm2
	addss xmm1, [eax+0x8]
	movss [ebx-0x4], xmm1
	cmp byte [ebp-0x85], 0x0
	jnz _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_90
	mulss xmm0, xmm0
	mulss xmm2, xmm2
	addss xmm0, xmm2
	mulss xmm1, xmm1
	addss xmm0, xmm1
	ucomiss xmm0, [ebp-0x2c]
	seta byte [ebp-0x85]
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_90:
	cmp byte [ebp-0x95], 0x0
	jnz _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_100
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_360:
	cmp byte [ebp-0x96], 0x0
	jnz _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_110
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_460:
	test edi, edi
	jz _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_120
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_560:
	lea eax, [edi+0xc]
	movss xmm2, dword [eax+0x4]
	addss xmm2, [ebx-0x14]
	mulss xmm2, [_float_0_50000000]
	movss xmm1, dword [eax+0x8]
	addss xmm1, [ebx-0x10]
	mulss xmm1, [_float_0_50000000]
	lea eax, [edi+0x24]
	movss xmm0, dword [edi+0xc]
	addss xmm0, [ebx-0x18]
	mulss xmm0, [_float_0_50000000]
	addss xmm0, [edi+0x24]
	movss [ebx], xmm0
	addss xmm2, [eax+0x4]
	movss [ebx+0x4], xmm2
	addss xmm1, [eax+0x8]
	movss [ebx+0x8], xmm1
	cmp byte [ebp-0x85], 0x0
	jnz _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_130
	mulss xmm0, xmm0
	mulss xmm2, xmm2
	addss xmm0, xmm2
	mulss xmm1, xmm1
	addss xmm0, xmm1
	ucomiss xmm0, [ebp-0x2c]
	seta byte [ebp-0x85]
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_130:
	mov ecx, [ebp-0xa4]
	add ecx, [ebp-0xa8]
	add dword [ebp-0x84], 0x1
	mov eax, [ebp-0x9c]
	movzx edx, byte [eax+0xb2]
	movzx eax, dl
	cmp [ebp-0x84], eax
	jg _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_140
	mov edi, [ebp-0xa4]
	mov [ebp-0xa4], ecx
	add ebx, [ebp-0xa8]
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_60:
	cvtsi2ss xmm0, dword [ebp-0x84]
	movss [ebp-0x80], xmm0
	movzx eax, dl
	cvtsi2ss xmm0, eax
	movss xmm1, dword [ebp-0x80]
	divss xmm1, xmm0
	movss [ebp-0x80], xmm1
	mov dword [ebx-0x24], 0x0
	mov dword [ebx-0x20], 0x0
	mov dword [ebx-0x1c], 0x0
	mov dword [ebx-0x18], 0x0
	mov dword [ebx-0x14], 0x0
	mov dword [ebx-0x10], 0x0
	cmp byte [ebp-0x49], 0x0
	jz _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_150
	mov eax, [ebp-0xa0]
	movss xmm0, dword [eax]
	movss [ebp-0x7c], xmm0
	mov edx, [ebp+0x10]
	mov eax, [edx+0x118]
	mov [esp+0x4], eax
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _Z22FxCurveIterator_CreateP15FxCurveIteratorPK7FxCurve
	mov edx, [ebp-0x24]
	mov ecx, [edx]
	add ecx, 0x1
	mov eax, ecx
	imul eax, [ebp-0x20]
	lea eax, [edx+eax*4]
	lea esi, [eax+0x8]
	movss xmm0, dword [eax+0x8]
	ucomiss xmm0, [ebp-0x80]
	jbe _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_160
	mov dword [ebp-0x20], 0x0
	lea esi, [edx+0x8]
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_160:
	shl ecx, 0x2
	lea eax, [esi+ecx]
	movss xmm0, dword [ebp-0x80]
	ucomiss xmm0, [eax]
	jbe _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_170
	movaps xmm1, xmm0
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_180:
	add dword [ebp-0x20], 0x1
	add eax, ecx
	ucomiss xmm1, [eax]
	ja _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_180
	movaps xmm0, xmm1
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_170:
	mov eax, [ebp-0x20]
	lea eax, [edx+eax*8]
	lea edx, [eax+0x8]
	movss xmm1, dword [eax+0x8]
	movss xmm2, dword [edx+0x4]
	subss xmm0, xmm1
	movss [ebp-0x3c], xmm0
	movss xmm0, dword [edx+0xc]
	subss xmm0, xmm2
	mulss xmm0, [ebp-0x3c]
	movss [ebp-0x3c], xmm0
	movss xmm0, dword [edx+0x8]
	subss xmm0, xmm1
	movss xmm1, dword [ebp-0x3c]
	divss xmm1, xmm0
	addss xmm2, xmm1
	movss xmm0, dword [ebp-0x7c]
	mulss xmm0, xmm2
	movss [ebp-0x3c], xmm0
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _Z23FxCurveIterator_ReleaseP15FxCurveIterator
	mov edx, [ebp-0xa0]
	movss xmm0, dword [edx+0x4]
	movss [ebp-0x78], xmm0
	mov edx, [ebp+0x10]
	mov eax, [edx+0x120]
	mov [esp+0x4], eax
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _Z22FxCurveIterator_CreateP15FxCurveIteratorPK7FxCurve
	mov edx, [ebp-0x24]
	mov ecx, [edx]
	add ecx, 0x1
	mov eax, ecx
	imul eax, [ebp-0x20]
	lea eax, [edx+eax*4]
	lea esi, [eax+0x8]
	movss xmm0, dword [eax+0x8]
	ucomiss xmm0, [ebp-0x80]
	jbe _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_190
	mov dword [ebp-0x20], 0x0
	lea esi, [edx+0x8]
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_190:
	shl ecx, 0x2
	lea eax, [esi+ecx]
	movss xmm0, dword [ebp-0x80]
	ucomiss xmm0, [eax]
	jbe _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_200
	movaps xmm1, xmm0
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_210:
	add dword [ebp-0x20], 0x1
	add eax, ecx
	ucomiss xmm1, [eax]
	ja _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_210
	movaps xmm0, xmm1
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_200:
	mov eax, [ebp-0x20]
	lea eax, [edx+eax*8]
	lea edx, [eax+0x8]
	movss xmm1, dword [eax+0x8]
	movss xmm2, dword [edx+0x4]
	subss xmm0, xmm1
	movss [ebp-0x40], xmm0
	movss xmm0, dword [edx+0xc]
	subss xmm0, xmm2
	mulss xmm0, [ebp-0x40]
	movss [ebp-0x40], xmm0
	movss xmm0, dword [edx+0x8]
	subss xmm0, xmm1
	movss xmm1, dword [ebp-0x40]
	divss xmm1, xmm0
	addss xmm2, xmm1
	movss xmm0, dword [ebp-0x78]
	mulss xmm0, xmm2
	movss [ebp-0x40], xmm0
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _Z23FxCurveIterator_ReleaseP15FxCurveIterator
	mov edx, [ebp-0xa0]
	movss xmm0, dword [edx+0x8]
	movss [ebp-0x74], xmm0
	mov edx, [ebp+0x10]
	mov eax, [edx+0x128]
	mov [esp+0x4], eax
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _Z22FxCurveIterator_CreateP15FxCurveIteratorPK7FxCurve
	mov edx, [ebp-0x24]
	mov ecx, [edx]
	add ecx, 0x1
	mov eax, ecx
	imul eax, [ebp-0x20]
	lea eax, [edx+eax*4]
	lea esi, [eax+0x8]
	movss xmm0, dword [eax+0x8]
	ucomiss xmm0, [ebp-0x80]
	jbe _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_220
	mov dword [ebp-0x20], 0x0
	lea esi, [edx+0x8]
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_220:
	shl ecx, 0x2
	lea eax, [ecx+esi]
	movss xmm0, dword [ebp-0x80]
	ucomiss xmm0, [eax]
	jbe _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_230
	movaps xmm1, xmm0
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_240:
	add dword [ebp-0x20], 0x1
	add eax, ecx
	ucomiss xmm1, [eax]
	ja _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_240
	movaps xmm3, xmm1
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_600:
	mov eax, [ebp-0x20]
	lea eax, [edx+eax*8]
	lea edx, [eax+0x8]
	movss xmm1, dword [eax+0x8]
	movss xmm2, dword [edx+0x4]
	subss xmm3, xmm1
	movss xmm0, dword [edx+0xc]
	subss xmm0, xmm2
	mulss xmm3, xmm0
	movss xmm0, dword [edx+0x8]
	subss xmm0, xmm1
	divss xmm3, xmm0
	addss xmm3, xmm2
	mulss xmm3, [ebp-0x74]
	lea eax, [ebp-0x24]
	mov [esp], eax
	movss [ebp-0xc8], xmm3
	call _Z23FxCurveIterator_ReleaseP15FxCurveIterator
	movss xmm0, dword [ebp-0x3c]
	addss xmm0, [ebx-0x24]
	movss [ebx-0x24], xmm0
	movss xmm0, dword [ebp-0x40]
	addss xmm0, [ebx-0x20]
	movss [ebx-0x20], xmm0
	movss xmm3, dword [ebp-0xc8]
	movaps xmm0, xmm3
	addss xmm0, [ebx-0x1c]
	movss [ebx-0x1c], xmm0
	cmp byte [ebp-0x95], 0x0
	jz _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_150
	movss xmm0, dword [ebx-0x18]
	subss xmm0, [ebp-0x3c]
	movss [ebx-0x18], xmm0
	movss xmm0, dword [ebx-0x14]
	subss xmm0, [ebp-0x40]
	movss [ebx-0x14], xmm0
	movss xmm0, dword [ebx-0x10]
	subss xmm0, xmm3
	movss [ebx-0x10], xmm0
	cmp byte [ebp-0x4a], 0x0
	jz _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_250
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_70:
	mov edx, [ebp-0xa0]
	movss xmm0, dword [edx+0xc]
	movss [ebp-0x70], xmm0
	mov edx, [ebp+0x10]
	mov eax, [edx+0x130]
	mov [esp+0x4], eax
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _Z22FxCurveIterator_CreateP15FxCurveIteratorPK7FxCurve
	mov edx, [ebp-0x24]
	mov ecx, [edx]
	add ecx, 0x1
	mov eax, ecx
	imul eax, [ebp-0x20]
	lea eax, [edx+eax*4]
	lea esi, [eax+0x8]
	movss xmm0, dword [eax+0x8]
	ucomiss xmm0, [ebp-0x80]
	jbe _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_260
	mov dword [ebp-0x20], 0x0
	lea esi, [edx+0x8]
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_260:
	shl ecx, 0x2
	lea eax, [ecx+esi]
	movss xmm0, dword [ebp-0x80]
	ucomiss xmm0, [eax]
	jbe _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_270
	movaps xmm1, xmm0
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_280:
	add dword [ebp-0x20], 0x1
	add eax, ecx
	ucomiss xmm1, [eax]
	ja _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_280
	movaps xmm0, xmm1
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_270:
	mov eax, [ebp-0x20]
	lea eax, [edx+eax*8]
	lea edx, [eax+0x8]
	movss xmm1, dword [eax+0x8]
	movss xmm2, dword [edx+0x4]
	subss xmm0, xmm1
	movss [ebp-0x44], xmm0
	movss xmm0, dword [edx+0xc]
	subss xmm0, xmm2
	mulss xmm0, [ebp-0x44]
	movss [ebp-0x44], xmm0
	movss xmm0, dword [edx+0x8]
	subss xmm0, xmm1
	movss xmm1, dword [ebp-0x44]
	divss xmm1, xmm0
	addss xmm2, xmm1
	movss xmm0, dword [ebp-0x70]
	mulss xmm0, xmm2
	movss [ebp-0x44], xmm0
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _Z23FxCurveIterator_ReleaseP15FxCurveIterator
	mov edx, [ebp-0xac]
	movss xmm0, dword [edx+0x4]
	movss [ebp-0x6c], xmm0
	mov edx, [ebp+0x10]
	mov eax, [edx+0x138]
	mov [esp+0x4], eax
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _Z22FxCurveIterator_CreateP15FxCurveIteratorPK7FxCurve
	mov edx, [ebp-0x24]
	mov ecx, [edx]
	add ecx, 0x1
	mov eax, ecx
	imul eax, [ebp-0x20]
	lea eax, [edx+eax*4]
	lea esi, [eax+0x8]
	movss xmm0, dword [eax+0x8]
	ucomiss xmm0, [ebp-0x80]
	jbe _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_290
	mov dword [ebp-0x20], 0x0
	lea esi, [edx+0x8]
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_290:
	shl ecx, 0x2
	lea eax, [ecx+esi]
	movss xmm0, dword [ebp-0x80]
	ucomiss xmm0, [eax]
	jbe _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_300
	movaps xmm1, xmm0
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_310:
	add dword [ebp-0x20], 0x1
	add eax, ecx
	ucomiss xmm1, [eax]
	ja _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_310
	movaps xmm0, xmm1
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_300:
	mov eax, [ebp-0x20]
	lea eax, [edx+eax*8]
	lea edx, [eax+0x8]
	movss xmm1, dword [eax+0x8]
	movss xmm2, dword [edx+0x4]
	subss xmm0, xmm1
	movss [ebp-0x48], xmm0
	movss xmm0, dword [edx+0xc]
	subss xmm0, xmm2
	mulss xmm0, [ebp-0x48]
	movss [ebp-0x48], xmm0
	movss xmm0, dword [edx+0x8]
	subss xmm0, xmm1
	movss xmm1, dword [ebp-0x48]
	divss xmm1, xmm0
	addss xmm2, xmm1
	movss xmm0, dword [ebp-0x6c]
	mulss xmm0, xmm2
	movss [ebp-0x48], xmm0
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _Z23FxCurveIterator_ReleaseP15FxCurveIterator
	mov edx, [ebp-0xac]
	movss xmm0, dword [edx+0x8]
	movss [ebp-0x68], xmm0
	mov edx, [ebp+0x10]
	mov eax, [edx+0x140]
	mov [esp+0x4], eax
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _Z22FxCurveIterator_CreateP15FxCurveIteratorPK7FxCurve
	mov edx, [ebp-0x24]
	mov ecx, [edx]
	add ecx, 0x1
	mov eax, ecx
	imul eax, [ebp-0x20]
	lea eax, [edx+eax*4]
	lea esi, [eax+0x8]
	movss xmm0, dword [eax+0x8]
	ucomiss xmm0, [ebp-0x80]
	jbe _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_320
	mov dword [ebp-0x20], 0x0
	lea esi, [edx+0x8]
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_320:
	shl ecx, 0x2
	lea eax, [ecx+esi]
	movss xmm0, dword [ebp-0x80]
	ucomiss xmm0, [eax]
	jbe _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_330
	movaps xmm1, xmm0
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_340:
	add dword [ebp-0x20], 0x1
	add eax, ecx
	ucomiss xmm1, [eax]
	ja _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_340
	movaps xmm3, xmm1
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_570:
	mov eax, [ebp-0x20]
	lea eax, [edx+eax*8]
	lea edx, [eax+0x8]
	movss xmm1, dword [eax+0x8]
	movss xmm2, dword [edx+0x4]
	subss xmm3, xmm1
	movss xmm0, dword [edx+0xc]
	subss xmm0, xmm2
	mulss xmm3, xmm0
	movss xmm0, dword [edx+0x8]
	subss xmm0, xmm1
	divss xmm3, xmm0
	addss xmm3, xmm2
	mulss xmm3, [ebp-0x68]
	lea eax, [ebp-0x24]
	mov [esp], eax
	movss [ebp-0xc8], xmm3
	call _Z23FxCurveIterator_ReleaseP15FxCurveIterator
	movss xmm0, dword [ebp-0x44]
	addss xmm0, [ebx-0x24]
	movss [ebx-0x24], xmm0
	movss xmm0, dword [ebp-0x48]
	addss xmm0, [ebx-0x20]
	movss [ebx-0x20], xmm0
	movss xmm3, dword [ebp-0xc8]
	movaps xmm0, xmm3
	addss xmm0, [ebx-0x1c]
	movss [ebx-0x1c], xmm0
	movzx eax, byte [ebp-0x86]
	xor al, 0x1
	movzx eax, al
	cmp byte [ebp+eax-0x1a], 0x0
	jz _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_250
	movss xmm0, dword [ebx-0x18]
	subss xmm0, [ebp-0x44]
	movss [ebx-0x18], xmm0
	movss xmm0, dword [ebx-0x14]
	subss xmm0, [ebp-0x48]
	movss [ebx-0x14], xmm0
	movss xmm0, dword [ebx-0x10]
	subss xmm0, xmm3
	movss [ebx-0x10], xmm0
	test edi, edi
	jnz _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_350
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_80:
	xor eax, eax
	mov [ebx-0xc], eax
	mov [ebx-0x8], eax
	mov [ebx-0x4], eax
	cmp byte [ebp-0x95], 0x0
	jz _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_360
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_100:
	movss xmm0, dword [ebx-0x18]
	movss [ebp-0x30], xmm0
	mov eax, [ebp-0xa0]
	movss xmm0, dword [eax]
	movss [ebp-0x64], xmm0
	mov edx, [ebp+0x10]
	mov eax, [edx+0x11c]
	mov [esp+0x4], eax
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _Z22FxCurveIterator_CreateP15FxCurveIteratorPK7FxCurve
	mov edx, [ebp-0x24]
	mov ecx, [edx]
	add ecx, 0x1
	mov eax, ecx
	imul eax, [ebp-0x20]
	lea eax, [edx+eax*4]
	lea esi, [eax+0x8]
	movss xmm0, dword [eax+0x8]
	ucomiss xmm0, [ebp-0x80]
	jbe _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_370
	mov dword [ebp-0x20], 0x0
	lea esi, [edx+0x8]
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_370:
	shl ecx, 0x2
	lea eax, [ecx+esi]
	movss xmm0, dword [ebp-0x80]
	ucomiss xmm0, [eax]
	jbe _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_380
	movaps xmm1, xmm0
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_390:
	add dword [ebp-0x20], 0x1
	add eax, ecx
	ucomiss xmm1, [eax]
	ja _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_390
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_590:
	mov eax, [ebp-0x20]
	lea eax, [edx+eax*8]
	lea edx, [eax+0x8]
	movss xmm3, dword [eax+0x8]
	movss xmm2, dword [edx+0x4]
	subss xmm1, xmm3
	movss xmm0, dword [edx+0xc]
	subss xmm0, xmm2
	mulss xmm1, xmm0
	movss xmm0, dword [edx+0x8]
	subss xmm0, xmm3
	divss xmm1, xmm0
	addss xmm2, xmm1
	mulss xmm2, [ebp-0x64]
	movss [ebp-0x64], xmm2
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _Z23FxCurveIterator_ReleaseP15FxCurveIterator
	movss xmm0, dword [ebp-0x30]
	addss xmm0, [ebp-0x64]
	movss [ebx-0x18], xmm0
	movss xmm1, dword [ebx-0x14]
	movss [ebp-0x34], xmm1
	mov eax, [ebp-0xa0]
	movss xmm0, dword [eax+0x4]
	movss [ebp-0x60], xmm0
	mov edx, [ebp+0x10]
	mov eax, [edx+0x124]
	mov [esp+0x4], eax
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _Z22FxCurveIterator_CreateP15FxCurveIteratorPK7FxCurve
	mov edx, [ebp-0x24]
	mov ecx, [edx]
	add ecx, 0x1
	mov eax, ecx
	imul eax, [ebp-0x20]
	lea eax, [edx+eax*4]
	lea esi, [eax+0x8]
	movss xmm0, dword [eax+0x8]
	ucomiss xmm0, [ebp-0x80]
	jbe _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_400
	mov dword [ebp-0x20], 0x0
	lea esi, [edx+0x8]
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_400:
	shl ecx, 0x2
	lea eax, [ecx+esi]
	movss xmm0, dword [ebp-0x80]
	ucomiss xmm0, [eax]
	jbe _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_410
	movaps xmm1, xmm0
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_420:
	add dword [ebp-0x20], 0x1
	add eax, ecx
	ucomiss xmm1, [eax]
	ja _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_420
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_580:
	mov eax, [ebp-0x20]
	lea eax, [edx+eax*8]
	lea edx, [eax+0x8]
	movss xmm3, dword [eax+0x8]
	movss xmm2, dword [edx+0x4]
	subss xmm1, xmm3
	movss xmm0, dword [edx+0xc]
	subss xmm0, xmm2
	mulss xmm1, xmm0
	movss xmm0, dword [edx+0x8]
	subss xmm0, xmm3
	divss xmm1, xmm0
	addss xmm2, xmm1
	mulss xmm2, [ebp-0x60]
	movss [ebp-0x60], xmm2
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _Z23FxCurveIterator_ReleaseP15FxCurveIterator
	movss xmm0, dword [ebp-0x34]
	addss xmm0, [ebp-0x60]
	movss [ebx-0x14], xmm0
	movss xmm1, dword [ebx-0x10]
	movss [ebp-0x38], xmm1
	mov eax, [ebp-0xa0]
	movss xmm0, dword [eax+0x8]
	movss [ebp-0x5c], xmm0
	mov edx, [ebp+0x10]
	mov eax, [edx+0x12c]
	mov [esp+0x4], eax
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _Z22FxCurveIterator_CreateP15FxCurveIteratorPK7FxCurve
	mov edx, [ebp-0x24]
	mov ecx, [edx]
	add ecx, 0x1
	mov eax, ecx
	imul eax, [ebp-0x20]
	lea eax, [edx+eax*4]
	lea esi, [eax+0x8]
	movss xmm0, dword [eax+0x8]
	ucomiss xmm0, [ebp-0x80]
	jbe _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_430
	mov dword [ebp-0x20], 0x0
	lea esi, [edx+0x8]
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_430:
	shl ecx, 0x2
	lea eax, [ecx+esi]
	movss xmm0, dword [ebp-0x80]
	ucomiss xmm0, [eax]
	jbe _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_440
	movaps xmm1, xmm0
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_450:
	add dword [ebp-0x20], 0x1
	add eax, ecx
	ucomiss xmm1, [eax]
	ja _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_450
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_610:
	mov eax, [ebp-0x20]
	lea eax, [edx+eax*8]
	lea edx, [eax+0x8]
	movss xmm3, dword [eax+0x8]
	movss xmm2, dword [edx+0x4]
	subss xmm1, xmm3
	movss xmm0, dword [edx+0xc]
	subss xmm0, xmm2
	mulss xmm1, xmm0
	movss xmm0, dword [edx+0x8]
	subss xmm0, xmm3
	divss xmm1, xmm0
	addss xmm2, xmm1
	mulss xmm2, [ebp-0x5c]
	movss [ebp-0x5c], xmm2
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _Z23FxCurveIterator_ReleaseP15FxCurveIterator
	movss xmm0, dword [ebp-0x38]
	addss xmm0, [ebp-0x5c]
	movss [ebx-0x10], xmm0
	cmp byte [ebp-0x96], 0x0
	jz _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_460
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_110:
	movss xmm1, dword [ebx-0x18]
	movss [ebp-0x94], xmm1
	mov eax, [ebp-0xa0]
	movss xmm0, dword [eax+0xc]
	movss [ebp-0x58], xmm0
	mov edx, [ebp+0x10]
	mov eax, [edx+0x134]
	mov [esp+0x4], eax
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _Z22FxCurveIterator_CreateP15FxCurveIteratorPK7FxCurve
	mov edx, [ebp-0x24]
	mov ecx, [edx]
	add ecx, 0x1
	mov eax, ecx
	imul eax, [ebp-0x20]
	lea eax, [edx+eax*4]
	lea esi, [eax+0x8]
	movss xmm0, dword [eax+0x8]
	ucomiss xmm0, [ebp-0x80]
	jbe _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_470
	mov dword [ebp-0x20], 0x0
	lea esi, [edx+0x8]
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_470:
	shl ecx, 0x2
	lea eax, [ecx+esi]
	movss xmm0, dword [ebp-0x80]
	ucomiss xmm0, [eax]
	jbe _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_480
	movaps xmm1, xmm0
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_490:
	add dword [ebp-0x20], 0x1
	add eax, ecx
	ucomiss xmm1, [eax]
	ja _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_490
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_630:
	mov eax, [ebp-0x20]
	lea eax, [edx+eax*8]
	lea edx, [eax+0x8]
	movss xmm3, dword [eax+0x8]
	movss xmm2, dword [edx+0x4]
	subss xmm1, xmm3
	movss xmm0, dword [edx+0xc]
	subss xmm0, xmm2
	mulss xmm1, xmm0
	movss xmm0, dword [edx+0x8]
	subss xmm0, xmm3
	divss xmm1, xmm0
	addss xmm2, xmm1
	mulss xmm2, [ebp-0x58]
	movss [ebp-0x58], xmm2
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _Z23FxCurveIterator_ReleaseP15FxCurveIterator
	movss xmm0, dword [ebp-0x94]
	addss xmm0, [ebp-0x58]
	movss [ebx-0x18], xmm0
	movss xmm1, dword [ebx-0x14]
	movss [ebp-0x90], xmm1
	mov eax, [ebp-0xb0]
	movss xmm0, dword [eax+0x4]
	movss [ebp-0x54], xmm0
	mov edx, [ebp+0x10]
	mov eax, [edx+0x13c]
	mov [esp+0x4], eax
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _Z22FxCurveIterator_CreateP15FxCurveIteratorPK7FxCurve
	mov edx, [ebp-0x24]
	mov ecx, [edx]
	add ecx, 0x1
	mov eax, ecx
	imul eax, [ebp-0x20]
	lea eax, [edx+eax*4]
	lea esi, [eax+0x8]
	movss xmm0, dword [eax+0x8]
	ucomiss xmm0, [ebp-0x80]
	jbe _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_500
	mov dword [ebp-0x20], 0x0
	lea esi, [edx+0x8]
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_500:
	shl ecx, 0x2
	lea eax, [ecx+esi]
	movss xmm0, dword [ebp-0x80]
	ucomiss xmm0, [eax]
	jbe _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_510
	movaps xmm1, xmm0
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_520:
	add dword [ebp-0x20], 0x1
	add eax, ecx
	ucomiss xmm1, [eax]
	ja _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_520
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_620:
	mov eax, [ebp-0x20]
	lea eax, [edx+eax*8]
	lea edx, [eax+0x8]
	movss xmm3, dword [eax+0x8]
	movss xmm2, dword [edx+0x4]
	subss xmm1, xmm3
	movss xmm0, dword [edx+0xc]
	subss xmm0, xmm2
	mulss xmm1, xmm0
	movss xmm0, dword [edx+0x8]
	subss xmm0, xmm3
	divss xmm1, xmm0
	addss xmm2, xmm1
	mulss xmm2, [ebp-0x54]
	movss [ebp-0x54], xmm2
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _Z23FxCurveIterator_ReleaseP15FxCurveIterator
	movss xmm0, dword [ebp-0x90]
	addss xmm0, [ebp-0x54]
	movss [ebx-0x14], xmm0
	movss xmm1, dword [ebx-0x10]
	movss [ebp-0x8c], xmm1
	mov eax, [ebp-0xb0]
	movss xmm0, dword [eax+0x8]
	movss [ebp-0x50], xmm0
	mov edx, [ebp+0x10]
	mov eax, [edx+0x144]
	mov [esp+0x4], eax
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _Z22FxCurveIterator_CreateP15FxCurveIteratorPK7FxCurve
	mov edx, [ebp-0x24]
	mov ecx, [edx]
	add ecx, 0x1
	mov eax, ecx
	imul eax, [ebp-0x20]
	lea eax, [edx+eax*4]
	lea esi, [eax+0x8]
	movss xmm0, dword [eax+0x8]
	ucomiss xmm0, [ebp-0x80]
	jbe _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_530
	mov dword [ebp-0x20], 0x0
	lea esi, [edx+0x8]
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_530:
	shl ecx, 0x2
	lea eax, [ecx+esi]
	movss xmm0, dword [ebp-0x80]
	ucomiss xmm0, [eax]
	jbe _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_540
	movaps xmm1, xmm0
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_550:
	add dword [ebp-0x20], 0x1
	add eax, ecx
	ucomiss xmm1, [eax]
	ja _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_550
	movaps xmm0, xmm1
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_540:
	mov eax, [ebp-0x20]
	lea eax, [edx+eax*8]
	lea edx, [eax+0x8]
	movss xmm2, dword [eax+0x8]
	movss xmm1, dword [edx+0x4]
	subss xmm0, xmm2
	movss [ebp-0x80], xmm0
	movss xmm0, dword [edx+0xc]
	subss xmm0, xmm1
	mulss xmm0, [ebp-0x80]
	movss [ebp-0x80], xmm0
	movss xmm0, dword [edx+0x8]
	subss xmm0, xmm2
	movss xmm2, dword [ebp-0x80]
	divss xmm2, xmm0
	addss xmm1, xmm2
	mulss xmm1, [ebp-0x50]
	movss [ebp-0x50], xmm1
	lea eax, [ebp-0x24]
	mov [esp], eax
	call _Z23FxCurveIterator_ReleaseP15FxCurveIterator
	movss xmm0, dword [ebp-0x8c]
	addss xmm0, [ebp-0x50]
	movss [ebx-0x10], xmm0
	test edi, edi
	jnz _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_560
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_120:
	xor eax, eax
	mov [ebx], eax
	mov [ebx+0x4], eax
	mov [ebx+0x8], eax
	jmp _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_130
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_330:
	movaps xmm3, xmm0
	jmp _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_570
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_410:
	movaps xmm1, xmm0
	jmp _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_580
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_380:
	movaps xmm1, xmm0
	jmp _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_590
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_230:
	movaps xmm3, xmm0
	jmp _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_600
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_440:
	movaps xmm1, xmm0
	jmp _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_610
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_510:
	movaps xmm1, xmm0
	jmp _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_620
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_480:
	movaps xmm1, xmm0
	jmp _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_630
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_140:
	cmp byte [ebp-0x85], 0x0
	jz _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_640
	mov eax, [ebp+0xc]
	mov edx, [ebp-0x9c]
	or [edx], eax
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_640:
	add esp, 0xcc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_10:
	test bh, 0x1
	setnz al
	jmp _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_650
_Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_30:
	mov byte [ebp-0x96], 0x1
	mov eax, 0x1
	jmp _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef_660
	nop


;FX_ConvertElemDef(FxElemDef*, FxEditorElemDef const*, int, int, int, unsigned char**)
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x11c
	mov [ebp-0xa8], eax
	mov [ebp-0xac], edx
	mov [ebp-0xb0], ecx
	mov edi, [ebp+0x8]
	mov eax, [edx+0x34]
	mov edx, [ebp-0xa8]
	mov [edx], eax
	mov edx, [ebp-0xa8]
	add edx, 0xc
	mov ecx, [ebp-0xac]
	movss xmm1, dword [ecx+0x3c]
	pxor xmm3, xmm3
	ucomiss xmm3, xmm1
	ja _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_10
	mov eax, [ecx+0x38]
	mov ebx, [ebp-0xa8]
	mov [ebx+0xc], eax
	movss [edx+0x4], xmm1
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1140:
	mov edx, [ebp-0xa8]
	add edx, 0x14
	mov eax, [ebp-0xac]
	movss xmm1, dword [eax+0x44]
	ucomiss xmm3, xmm1
	ja _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_20
	mov eax, [eax+0x40]
	mov ecx, [ebp-0xa8]
	mov [ecx+0x14], eax
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1130:
	movss [edx+0x4], xmm1
	mov edx, [ebp-0xa8]
	add edx, 0x1c
	mov ebx, [ebp-0xac]
	movss xmm1, dword [ebx+0x4c]
	ucomiss xmm3, xmm1
	ja _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_30
	mov eax, [ebx+0x48]
	mov ebx, [ebp-0xa8]
	mov [ebx+0x1c], eax
	movss [edx+0x4], xmm1
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1120:
	mov edx, [ebp-0xac]
	mov eax, [edx+0x50]
	mov ecx, [ebp-0xa8]
	mov [ecx+0x24], eax
	test byte [edx+0x30], 0x1
	jz _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_40
	mov ebx, [ebp-0xac]
	mov eax, [ebx+0x54]
	mov edx, [ebx+0x58]
	mov [ecx+0x4], eax
	mov [ecx+0x8], edx
	mov ebx, [ecx+0x8]
	test ebx, ebx
	jz _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_50
	mov eax, [ebp-0xa8]
	mov ecx, [eax+0x4]
	test ecx, ecx
	jle _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_60
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_430:
	mov ecx, eax
	add ecx, 0x28
	mov eax, [ebp-0xac]
	mov edx, [eax+0x68]
	test edx, edx
	jns _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_70
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_150:
	mov ebx, eax
	mov eax, edx
	add eax, [ebx+0x64]
	mov ebx, [ebp-0xa8]
	mov [ebx+0x28], eax
	neg edx
	mov [ecx+0x4], edx
	mov ecx, [ebp-0xa8]
	add ecx, 0x30
	mov eax, [ebp-0xac]
	mov edx, [eax+0x70]
	test edx, edx
	jns _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_80
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_160:
	mov ebx, eax
	mov eax, edx
	add eax, [ebx+0x6c]
	mov ebx, [ebp-0xa8]
	mov [ebx+0x30], eax
	neg edx
	mov [ecx+0x4], edx
	mov edx, [ebp-0xa8]
	add edx, 0x38
	mov eax, [ebp-0xac]
	movss xmm1, dword [eax+0x78]
	ucomiss xmm3, xmm1
	jbe _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_90
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_170:
	movaps xmm0, xmm1
	addss xmm0, [eax+0x74]
	mov ecx, [ebp-0xa8]
	movss [ecx+0x38], xmm0
	xorps xmm1, [_ZZ21FX_Beam_GenerateVertsP18FxGenerateVertsCmdE15templateIndices+0x50]
	movss [edx+0x4], xmm1
	mov edx, [ebp-0xa8]
	add edx, 0x40
	mov ebx, [ebp-0xac]
	movss xmm1, dword [ebx+0x80]
	ucomiss xmm3, xmm1
	jbe _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_100
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_180:
	movaps xmm0, xmm1
	addss xmm0, [ebx+0x7c]
	mov eax, [ebp-0xa8]
	movss [eax+0x40], xmm0
	xorps xmm1, [_ZZ21FX_Beam_GenerateVertsP18FxGenerateVertsCmdE15templateIndices+0x50]
	movss [edx+0x4], xmm1
	mov edx, [ebp-0xa8]
	add edx, 0x48
	mov eax, [ebp-0xac]
	movss xmm1, dword [eax+0x88]
	ucomiss xmm3, xmm1
	jbe _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_110
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_190:
	movaps xmm0, xmm1
	addss xmm0, [eax+0x84]
	mov ecx, [ebp-0xa8]
	movss [ecx+0x48], xmm0
	xorps xmm1, [_ZZ21FX_Beam_GenerateVertsP18FxGenerateVertsCmdE15templateIndices+0x50]
	movss [edx+0x4], xmm1
	mov edx, [ebp-0xa8]
	add edx, 0x50
	mov ebx, [ebp-0xac]
	movss xmm1, dword [ebx+0x90]
	ucomiss xmm3, xmm1
	jbe _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_120
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_200:
	movaps xmm0, xmm1
	addss xmm0, [ebx+0x8c]
	mov eax, [ebp-0xa8]
	movss [eax+0x50], xmm0
	xorps xmm1, [_ZZ21FX_Beam_GenerateVertsP18FxGenerateVertsCmdE15templateIndices+0x50]
	movss [edx+0x4], xmm1
	mov edx, [ebp-0xa8]
	add edx, 0x58
	mov eax, [ebp-0xac]
	movss xmm1, dword [eax+0x98]
	ucomiss xmm3, xmm1
	jbe _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_130
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_210:
	movaps xmm0, xmm1
	addss xmm0, [eax+0x94]
	mov ecx, [ebp-0xa8]
	movss [ecx+0x58], xmm0
	xorps xmm1, [_ZZ21FX_Beam_GenerateVertsP18FxGenerateVertsCmdE15templateIndices+0x50]
	movss [edx+0x4], xmm1
	jmp _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_140
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_40:
	mov ecx, [ebp-0xac]
	mov eax, [ecx+0x5c]
	mov edx, [ecx+0x60]
	mov ebx, [ebp-0xa8]
	mov [ebx+0x4], eax
	mov [ebx+0x8], edx
	mov ecx, [ebp-0xa8]
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_440:
	add ecx, 0x28
	mov eax, [ebp-0xac]
	mov edx, [eax+0x68]
	test edx, edx
	js _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_150
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_70:
	mov eax, [eax+0x64]
	mov ebx, [ebp-0xa8]
	mov [ebx+0x28], eax
	mov [ecx+0x4], edx
	mov ecx, [ebp-0xa8]
	add ecx, 0x30
	mov eax, [ebp-0xac]
	mov edx, [eax+0x70]
	test edx, edx
	js _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_160
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_80:
	mov eax, [eax+0x6c]
	mov ebx, [ebp-0xa8]
	mov [ebx+0x30], eax
	mov [ecx+0x4], edx
	mov edx, [ebp-0xa8]
	add edx, 0x38
	mov eax, [ebp-0xac]
	movss xmm1, dword [eax+0x78]
	ucomiss xmm3, xmm1
	ja _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_170
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_90:
	mov eax, [eax+0x74]
	mov ecx, [ebp-0xa8]
	mov [ecx+0x38], eax
	movss [edx+0x4], xmm1
	mov edx, [ebp-0xa8]
	add edx, 0x40
	mov ebx, [ebp-0xac]
	movss xmm1, dword [ebx+0x80]
	ucomiss xmm3, xmm1
	ja _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_180
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_100:
	mov eax, [ebx+0x7c]
	mov ebx, [ebp-0xa8]
	mov [ebx+0x40], eax
	movss [edx+0x4], xmm1
	mov edx, [ebp-0xa8]
	add edx, 0x48
	mov eax, [ebp-0xac]
	movss xmm1, dword [eax+0x88]
	ucomiss xmm3, xmm1
	ja _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_190
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_110:
	mov eax, [eax+0x84]
	mov ecx, [ebp-0xa8]
	mov [ecx+0x48], eax
	movss [edx+0x4], xmm1
	mov edx, [ebp-0xa8]
	add edx, 0x50
	mov ebx, [ebp-0xac]
	movss xmm1, dword [ebx+0x90]
	ucomiss xmm3, xmm1
	ja _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_200
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_120:
	mov eax, [ebx+0x8c]
	mov ebx, [ebp-0xa8]
	mov [ebx+0x50], eax
	movss [edx+0x4], xmm1
	mov edx, [ebp-0xa8]
	add edx, 0x58
	mov eax, [ebp-0xac]
	movss xmm1, dword [eax+0x98]
	ucomiss xmm3, xmm1
	ja _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_210
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_130:
	mov eax, [eax+0x94]
	mov ecx, [ebp-0xa8]
	mov [ecx+0x58], eax
	movss [edx+0x4], xmm1
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_140:
	movss xmm2, dword [_float_0_01745329]
	mov ebx, [ebp-0xac]
	movss xmm0, dword [ebx+0x9c]
	mulss xmm0, xmm2
	mov eax, [ebp-0xa8]
	movss [eax+0x60], xmm0
	movss xmm0, dword [ebx+0xa0]
	mulss xmm0, xmm2
	movss [eax+0x64], xmm0
	movss xmm0, dword [ebx+0xa4]
	mulss xmm0, xmm2
	movss [eax+0x68], xmm0
	movss xmm0, dword [ebx+0xa8]
	mulss xmm0, xmm2
	movss [eax+0x6c], xmm0
	movss xmm0, dword [ebx+0xac]
	mulss xmm0, xmm2
	movss [eax+0x70], xmm0
	movss xmm0, dword [ebx+0xb0]
	mulss xmm0, xmm2
	movss [eax+0x74], xmm0
	movss xmm0, dword [_float_0_00001745]
	movss xmm1, dword [ebx+0xb4]
	mulss xmm1, xmm0
	movss [eax+0x78], xmm1
	movss xmm1, dword [ebx+0xb8]
	mulss xmm1, xmm0
	movss [eax+0x7c], xmm1
	movss xmm1, dword [ebx+0xbc]
	mulss xmm1, xmm0
	movss [eax+0x80], xmm1
	movss xmm1, dword [ebx+0xc0]
	mulss xmm1, xmm0
	movss [eax+0x84], xmm1
	movss xmm1, dword [ebx+0xc4]
	mulss xmm1, xmm0
	movss [eax+0x88], xmm1
	mulss xmm0, [ebx+0xc8]
	movss [eax+0x8c], xmm0
	movss xmm0, dword [ebx+0xcc]
	mulss xmm0, xmm2
	movss [eax+0x90], xmm0
	mulss xmm2, [ebx+0xd0]
	movss [eax+0x94], xmm2
	movss xmm0, dword [_float_0_01000000]
	movss xmm1, dword [ebx+0xd4]
	mulss xmm1, xmm0
	movss [eax+0x98], xmm1
	mulss xmm0, [ebx+0xd8]
	movss [eax+0x9c], xmm0
	ucomiss xmm3, xmm1
	jnz _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_220
	jp _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_220
	ucomiss xmm3, xmm0
	jp _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_220
	jnz _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_220
	mov edx, [ebp-0xa8]
	add edx, 0xa0
	mov ecx, [ebp-0xac]
	movss xmm1, dword [ecx+0xe0]
	ucomiss xmm3, xmm1
	ja _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_230
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_380:
	mov eax, [ecx+0xdc]
	mov ebx, [ebp-0xa8]
	mov [ebx+0xa0], eax
	movss [edx+0x4], xmm1
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_390:
	movss xmm1, dword [edx]
	ucomiss xmm3, xmm1
	ja _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_240
	movaps xmm0, xmm1
	addss xmm0, [edx+0x4]
	ucomiss xmm0, [_float_1_00000000]
	jbe _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_250
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_240:
	addss xmm1, [_float_0_00010000]
	movss [edx], xmm1
	movss xmm0, dword [edx+0x4]
	subss xmm0, [_float_0_00020000]
	movss [edx+0x4], xmm0
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_250:
	mov eax, [ebp-0xac]
	mov edx, [eax+0x1c0]
	test edx, edx
	jz _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_260
	cmp byte [eax+0x1bc], 0xa
	jbe _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_270
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_400:
	mov edx, [ebp-0xac]
	mov eax, [edx+0xe4]
	mov ecx, [ebp-0xa8]
	mov [ecx+0xa8], al
	mov eax, [edx+0xe8]
	mov [ecx+0xa9], al
	mov eax, [edx+0xec]
	mov [ecx+0xaa], al
	movzx eax, byte [edx+0xf0]
	add al, 0x1
	mov [ecx+0xab], al
	mov eax, [edx+0xf4]
	mov [ecx+0xac], al
	mov eax, [edx+0xf8]
	mov [ecx+0xad], al
	mov eax, [edx+0xfc]
	mov [ecx+0xae], ax
	lea ebx, [ebp-0x40]
	mov [esp+0x4], ebx
	mov eax, [edx+0x1c4]
	mov [esp], eax
	call _Z16Material_GetInfoP8MaterialP12MaterialInfo
	mov eax, [ebp-0xa8]
	mov byte [eax+0xad], 0x0
	movzx eax, byte [ebp-0x3a]
	sub eax, 0x1
	jle _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_280
	xor ecx, ecx
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_290:
	add cl, 0x1
	mov ebx, [ebp-0xa8]
	mov [ebx+0xad], cl
	movzx edx, byte [ebp-0x3a]
	mov eax, 0x1
	shl eax, cl
	cmp edx, eax
	jg _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_290
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_280:
	mov eax, [ebp-0xa8]
	mov byte [eax+0xac], 0x0
	movzx eax, byte [ebp-0x39]
	cmp eax, 0x1
	jle _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_300
	mov byte [ebp-0x109], 0x0
	mov ebx, eax
	mov esi, 0x1
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_310:
	add byte [ebp-0x109], 0x1
	movzx edx, byte [ebp-0x109]
	mov ecx, [ebp-0xa8]
	mov [ecx+0xac], dl
	movzx edx, byte [ebp-0x109]
	mov eax, esi
	mov ecx, edx
	shl eax, cl
	cmp ebx, eax
	jg _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_310
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_420:
	mov ebx, [ebp-0xa8]
	movzx ecx, byte [ebx+0xad]
	lea ecx, [edx+ecx]
	mov eax, 0x1
	shl eax, cl
	mov [ebx+0xae], ax
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_410:
	mov edx, [ebp-0xac]
	movzx eax, byte [edx+0x1bc]
	mov ecx, [ebp-0xa8]
	mov [ecx+0xb0], al
	mov eax, [edx+0x1c0]
	mov [ecx+0xb1], al
	movzx eax, byte [ebp-0xb0]
	sub al, 0x1
	mov [ecx+0xb2], al
	test edi, edi
	jnz _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_320
	xor eax, eax
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_580:
	mov ebx, [ebp-0xa8]
	mov [ebx+0xb3], al
	mov edx, [ebp+0x10]
	mov eax, [edx]
	mov [ebx+0xb4], eax
	movzx eax, byte [ebx+0xb2]
	lea eax, [eax+eax*2]
	shl eax, 0x5
	add eax, [edx]
	add eax, 0x60
	mov [edx], eax
	cmp byte [ebx+0xb3], 0x0
	jz _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_330
	mov [ebx+0xb8], eax
	movzx eax, byte [ebx+0xb3]
	lea eax, [eax+eax*2]
	shl eax, 0x4
	add eax, [edx]
	add eax, 0x30
	mov [edx], eax
	mov ebx, [ebp-0xa8]
	cmp byte [ebx+0xb0], 0x9
	jz _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_340
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_560:
	mov ecx, ebx
	cmp byte [ebx+0xb1], 0x1
	jbe _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_350
	mov ebx, [ebp+0x10]
	mov eax, [ebx]
	mov [ecx+0xbc], eax
	movzx eax, byte [ecx+0xb1]
	shl eax, 0x2
	add [ebx], eax
	mov edx, [ebp-0xa8]
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_570:
	movzx eax, byte [edx+0xb2]
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float_1000_00000000]
	movss xmm1, dword [_float_1_00000000]
	divss xmm1, xmm0
	mov eax, [ebp-0xac]
	add eax, 0x100
	movaps xmm0, xmm1
	mov ecx, [ebp-0xac]
	mulss xmm0, [ecx+0x100]
	movss [ebp-0x40], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x4]
	movss [ebp-0x3c], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x8]
	movss [ebp-0x38], xmm0
	mov eax, ecx
	add eax, 0x10c
	movaps xmm0, xmm1
	mulss xmm0, [ecx+0x10c]
	movss [ebp-0x34], xmm0
	movaps xmm0, xmm1
	mulss xmm0, [eax+0x4]
	movss [ebp-0x30], xmm0
	mulss xmm1, [eax+0x8]
	movss [ebp-0x2c], xmm1
	mov ebx, [edx+0xb4]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x1000000
	mov dword [esp], 0x2
	mov ecx, ebx
	lea edx, [ebp-0x40]
	mov eax, [ebp-0xa8]
	call _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef
	lea ecx, [ebx+0x30]
	mov ebx, [ebp-0xac]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x2000000
	mov dword [esp], 0x2
	lea edx, [ebp-0x40]
	mov eax, [ebp-0xa8]
	call _Z24FX_SampleVelocityInFrameP9FxElemDefPA3_KfP21FxElemVelStateInFrameiiPK15FxEditorElemDef
	test edi, edi
	jz _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_360
	movzx edx, byte [ebx+0x1bc]
	movzx eax, dl
	cmp eax, 0xa
	ja _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_370
	jmp dword [eax*4+_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_jumptab_0]
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_220:
	mov edx, [ebp-0xa8]
	or dword [edx], 0x4000000
	mov edx, [ebp-0xa8]
	add edx, 0xa0
	mov ecx, [ebp-0xac]
	movss xmm1, dword [ecx+0xe0]
	ucomiss xmm3, xmm1
	jbe _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_380
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_230:
	movaps xmm0, xmm1
	addss xmm0, [ecx+0xdc]
	mov ebx, [ebp-0xa8]
	movss [ebx+0xa0], xmm0
	xorps xmm1, [_ZZ21FX_Beam_GenerateVertsP18FxGenerateVertsCmdE15templateIndices+0x50]
	movss [edx+0x4], xmm1
	jmp _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_390
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_270:
	movsx ecx, byte [eax+0x1bc]
	mov eax, 0x1
	shl eax, cl
	test eax, 0x5e0
	jz _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_400
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_260:
	mov edx, [ebp-0xa8]
	mov dword [edx+0xa8], 0x0
	mov dword [edx+0xac], 0x0
	jmp _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_410
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_300:
	xor edx, edx
	jmp _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_420
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_50:
	mov dword [ecx+0x8], 0x7fffffff
	mov eax, [ebp-0xa8]
	mov ecx, [eax+0x4]
	test ecx, ecx
	jg _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_430
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_60:
	mov dword [eax+0x4], 0x1
	mov ecx, [ebp-0xa8]
	jmp _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_440
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_360:
	mov ebx, [ebp-0xa8]
	cmp byte [ebx+0xb0], 0x9
	jz _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_450
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1100:
	movzx eax, byte [ebx+0xb1]
	test al, al
	jz _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_460
	sub al, 0x1
	jz _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_470
	mov eax, [ebp-0xa8]
	mov ecx, [eax+0xbc]
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1330:
	mov edx, [ebp-0xac]
	mov eax, [edx+0x1c0]
	shl eax, 0x2
	add edx, 0x1c4
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ecx
	call memcpy
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_920:
	movss xmm0, dword [_float_255_00000000]
	mov eax, [ebp-0xac]
	mulss xmm0, [eax+0x188]
	cvttss2si eax, xmm0
	mov edx, [ebp-0xa8]
	mov [edx+0xf9], al
	mov ecx, [ebp-0xac]
	mov eax, [ecx+0x30]
	shr eax, 0x11
	and al, 0x1
	mov [edx+0xfa], al
	test byte [ecx+0x32], 0x1
	jz _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_480
	movss xmm2, dword [ecx+0x198]
	movss xmm3, dword [ecx+0x194]
	subss xmm3, xmm2
	movss xmm1, dword [ecx+0x190]
	subss xmm1, xmm2
	mov eax, edx
	add eax, 0xc0
	movss xmm0, dword [ecx+0x18c]
	subss xmm0, xmm2
	movss [edx+0xc0], xmm0
	movss [eax+0x4], xmm1
	movss [eax+0x8], xmm3
	movss xmm0, dword [ecx+0x198]
	movaps xmm2, xmm0
	addss xmm2, [ecx+0x194]
	movaps xmm1, xmm0
	addss xmm1, [ecx+0x190]
	add eax, 0xc
	addss xmm0, [ecx+0x18c]
	movss [edx+0xcc], xmm0
	movss [eax+0x4], xmm1
	movss [eax+0x8], xmm2
	pxor xmm3, xmm3
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_620:
	mov eax, [ebp-0xac]
	test byte [eax+0x31], 0x20
	jnz _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_490
	xor eax, eax
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_610:
	mov ecx, [ebp-0xa8]
	mov [ecx+0xd8], eax
	mov ebx, [ebp-0xac]
	test byte [ebx+0x31], 0x40
	jnz _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_500
	xor eax, eax
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_600:
	mov ecx, [ebp-0xa8]
	mov [ecx+0xdc], eax
	mov ebx, [ebp-0xac]
	cmp word [ebx+0x30], 0x0
	js _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_510
	xor eax, eax
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_590:
	mov ecx, [ebp-0xa8]
	mov [ecx+0xe0], eax
	mov edx, ecx
	add edx, 0xe4
	mov ebx, [ebp-0xac]
	movss xmm1, dword [ebx+0x1b0]
	ucomiss xmm3, xmm1
	ja _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_520
	mov eax, [ebx+0x1ac]
	mov ebx, [ebp-0xa8]
	mov [ebx+0xe4], eax
	movss [edx+0x4], xmm1
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1150:
	mov edx, [ebp-0xa8]
	add edx, 0xec
	mov eax, [ebp-0xac]
	movss xmm1, dword [eax+0x1b8]
	ucomiss xmm3, xmm1
	ja _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_530
	mov eax, [eax+0x1b4]
	mov ecx, [ebp-0xa8]
	mov [ecx+0xec], eax
	movss [edx+0x4], xmm1
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1110:
	mov ebx, [ebp-0xa8]
	add ebx, 0xf4
	mov [ebp-0x98], ebx
	mov eax, [ebp-0xac]
	cmp byte [eax+0x1bc], 0x3
	jz _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_540
	mov edx, [ebp-0xa8]
	mov dword [edx+0xf4], 0x0
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1250:
	mov ebx, [ebp-0xac]
	mov eax, [ebx+0x1a4]
	cmp eax, 0xfe
	jg _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_550
	xor edx, edx
	test eax, eax
	cmovg edx, eax
	mov ebx, [ebp-0xa8]
	mov [ebx+0xf8], dl
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_330:
	mov ecx, [ebp-0xa8]
	mov dword [ecx+0xb8], 0x0
	mov ebx, [ebp-0xa8]
	cmp byte [ebx+0xb0], 0x9
	jnz _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_560
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_340:
	mov edx, [ebp+0x10]
	mov eax, [edx]
	mov [ebx+0xbc], eax
	movzx eax, byte [ebx+0xb1]
	shl eax, 0x3
	add [edx], eax
	mov edx, [ebp-0xa8]
	jmp _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_570
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_320:
	lea eax, [edi-0x1]
	jmp _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_580
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_550:
	mov edx, 0xffffffff
	mov ebx, [ebp-0xa8]
	mov [ebx+0xf8], dl
	add esp, 0x11c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_510:
	mov eax, [ebx+0x1a8]
	jmp _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_590
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_500:
	mov eax, [ebx+0x1a0]
	jmp _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_600
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_490:
	mov eax, [eax+0x19c]
	jmp _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_610
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_480:
	mov eax, [ebp-0xa8]
	add eax, 0xc0
	pxor xmm3, xmm3
	mov ebx, [ebp-0xa8]
	movss [ebx+0xc0], xmm3
	movss [eax+0x4], xmm3
	movss [eax+0x8], xmm3
	mov eax, ebx
	add eax, 0xcc
	movss [ebx+0xcc], xmm3
	movss [eax+0x4], xmm3
	movss [eax+0x8], xmm3
	jmp _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_620
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1370:
	cmp dl, 0x2
	jz _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_630
	mov eax, [ebp-0xac]
	test byte [eax+0x37], 0x10
	jnz _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_630
	mov dword [ebp-0x60], 0x1
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1360:
	mov dword [ebp-0x68], 0x6
	mov dword [ebp-0x64], 0x4
	mov dword [ebp-0x5c], 0x1
	mov dword [ebp-0x58], 0x0
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_370:
	mov ecx, [ebp-0xa8]
	movzx edx, byte [ecx+0xb3]
	movzx eax, dl
	mov ebx, [ebp-0xac]
	cvtss2sd xmm1, [ebx+0x148]
	mulsd xmm1, [_double_0_01745329]
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float_1000_00000000]
	cvtss2sd xmm0, xmm0
	divsd xmm1, xmm0
	cvtsd2ss xmm1, xmm1
	movss [ebp-0xa0], xmm1
	mov eax, [ebx+0x30]
	shr eax, 1
	mov ecx, eax
	and ecx, 0x1
	mov [ebp-0xb4], ecx
	shr eax, 1
	and eax, 0x1
	mov [ebp-0xb8], eax
	mov dword [ebp-0xa4], 0x0
	mov dword [ebp-0x50], 0x0
	jmp _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_640
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_670:
	mov dword [ebx], 0xffffffff
	mov dword [ebx+0x18], 0xffffffff
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_990:
	cmp dword [ebp-0x64], 0x4
	jz _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_650
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_840:
	mov dword [ebx+0x4], 0x0
	mov dword [ebx+0x8], 0x0
	mov dword [ebx+0x1c], 0x0
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1310:
	mov dword [ebx+0x20], 0x0
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_900:
	lea ecx, [ebx+0xc]
	lea eax, [ebx+0x24]
	mov [esp], eax
	movss xmm1, dword [_float_0_50000000]
	mov edx, [ebp-0x5c]
	movss xmm0, dword [ebp-0x9c]
	mov eax, [ebp-0xac]
	call _Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3_
	lea ecx, [ebx+0x10]
	lea eax, [ebx+0x28]
	mov [esp], eax
	movss xmm1, dword [_float_0_50000000]
	mov edx, [ebp-0x60]
	movss xmm0, dword [ebp-0x9c]
	mov eax, [ebp-0xac]
	call _Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3_
	lea ecx, [ebx+0x14]
	lea eax, [ebx+0x2c]
	mov [esp], eax
	movss xmm1, dword [_float_1_00000000]
	mov edx, [ebp-0x68]
	movss xmm0, dword [ebp-0x9c]
	mov eax, [ebp-0xac]
	call _Z26FX_SampleVisualStateScalarPK15FxEditorElemDeff15FxSampleChannelfPfS3_
	add dword [ebp-0xa4], 0x1
	mov ecx, [ebp-0xa8]
	movzx edx, byte [ecx+0xb3]
	add dword [ebp-0x50], 0x30
	movzx eax, dl
	cmp eax, [ebp-0xa4]
	jl _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_660
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_640:
	cvtsi2ss xmm0, dword [ebp-0xa4]
	movss [ebp-0x9c], xmm0
	movzx eax, dl
	cvtsi2ss xmm0, eax
	movss xmm1, dword [ebp-0x9c]
	divss xmm1, xmm0
	movss [ebp-0x9c], xmm1
	mov ebx, [ebp-0x50]
	mov eax, [ebp-0xa8]
	add ebx, [eax+0xb8]
	mov eax, [ebp-0x58]
	test eax, eax
	jnz _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_670
	mov edx, [ebp-0xac]
	mov eax, [edx+0x178]
	lea edx, [ebp-0x40]
	movss xmm0, dword [_float_1_00000000]
	call _Z16FX_SampleCurve3DPK7FxCurveffPf
	mov ecx, [ebp-0xac]
	mov eax, [ecx+0x180]
	mov [esp+0x4], eax
	lea eax, [ebp-0x28]
	mov [esp], eax
	call _Z22FxCurveIterator_CreateP15FxCurveIteratorPK7FxCurve
	mov ecx, [ebp-0x28]
	mov edx, [ecx]
	add edx, 0x1
	mov eax, edx
	imul eax, [ebp-0x24]
	lea eax, [ecx+eax*4]
	lea esi, [eax+0x8]
	movss xmm0, dword [eax+0x8]
	ucomiss xmm0, [ebp-0x9c]
	jbe _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_680
	mov dword [ebp-0x24], 0x0
	lea esi, [ecx+0x8]
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_680:
	shl edx, 0x2
	lea eax, [edx+esi]
	movss xmm0, dword [ebp-0x9c]
	ucomiss xmm0, [eax]
	jbe _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_690
	movaps xmm1, xmm0
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_700:
	add dword [ebp-0x24], 0x1
	add eax, edx
	ucomiss xmm1, [eax]
	ja _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_700
	movaps xmm3, xmm1
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_970:
	mov eax, [ebp-0x24]
	lea eax, [ecx+eax*8]
	lea edx, [eax+0x8]
	movss xmm1, dword [eax+0x8]
	movss xmm2, dword [edx+0x4]
	subss xmm3, xmm1
	movss xmm0, dword [edx+0xc]
	subss xmm0, xmm2
	mulss xmm3, xmm0
	movss xmm0, dword [edx+0x8]
	subss xmm0, xmm1
	divss xmm3, xmm0
	addss xmm3, xmm2
	lea eax, [ebp-0x28]
	mov [esp], eax
	movss [ebp-0x108], xmm3
	call _Z23FxCurveIterator_ReleaseP15FxCurveIterator
	movss xmm3, dword [ebp-0x108]
	movss [ebp-0x34], xmm3
	mov edx, [ebp-0xac]
	cmp byte [edx+0x30], 0x0
	jns _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_710
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0x40]
	movss [ebp-0x40], xmm0
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0x3c]
	movss [ebp-0x3c], xmm0
	mulss xmm3, [ebp-0x38]
	movss [ebp-0x38], xmm3
	mov dword [ebp-0x34], 0x3f800000
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_710:
	lea esi, [ebx+0x2]
	movss xmm0, dword [_float_255_00000000]
	movss [ebp-0xe4], xmm0
	mulss xmm0, [ebp-0x40]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0xbc]
	cvttss2si eax, [ebp-0xbc]
	cmp eax, 0xfe
	jle _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_720
	mov edx, 0xffffffff
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_960:
	mov [esi], dl
	lea esi, [ebx+0x1]
	movss xmm0, dword [ebp-0xe4]
	mulss xmm0, [ebp-0x3c]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0xc0]
	cvttss2si eax, [ebp-0xc0]
	cmp eax, 0xfe
	jle _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_730
	mov edx, 0xffffffff
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_950:
	mov [esi], dl
	movss xmm0, dword [ebp-0xe4]
	mulss xmm0, [ebp-0x38]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0xc4]
	cvttss2si eax, [ebp-0xc4]
	cmp eax, 0xfe
	jle _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_740
	mov edx, 0xffffffff
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_940:
	mov [ebx], dl
	lea esi, [ebx+0x3]
	movss xmm1, dword [ebp-0xe4]
	mulss xmm1, [ebp-0x34]
	movss xmm0, dword [_float_0_50000000]
	addss xmm0, xmm1
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0xc8]
	cvttss2si eax, [ebp-0xc8]
	cmp eax, 0xfe
	jle _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_750
	mov edx, 0xffffffff
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_930:
	mov [esi], dl
	mov edx, [ebp-0xb4]
	mov ecx, [ebp-0xac]
	mov eax, [ecx+edx*4+0x178]
	lea edx, [ebp-0x40]
	movss xmm1, dword [ebp-0x9c]
	movss xmm0, dword [_float_1_00000000]
	call _Z16FX_SampleCurve3DPK7FxCurveffPf
	mov edx, [ebp-0xb8]
	mov ecx, [ebp-0xac]
	mov eax, [ecx+edx*4+0x180]
	mov [esp+0x4], eax
	lea eax, [ebp-0x28]
	mov [esp], eax
	call _Z22FxCurveIterator_CreateP15FxCurveIteratorPK7FxCurve
	mov ecx, [ebp-0x28]
	mov edx, [ecx]
	add edx, 0x1
	mov eax, edx
	imul eax, [ebp-0x24]
	lea eax, [ecx+eax*4]
	lea esi, [eax+0x8]
	movss xmm0, dword [eax+0x8]
	ucomiss xmm0, [ebp-0x9c]
	jbe _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_760
	mov dword [ebp-0x24], 0x0
	lea esi, [ecx+0x8]
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_760:
	shl edx, 0x2
	lea eax, [edx+esi]
	movss xmm0, dword [ebp-0x9c]
	ucomiss xmm0, [eax]
	jbe _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_770
	movaps xmm1, xmm0
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_780:
	add dword [ebp-0x24], 0x1
	add eax, edx
	ucomiss xmm1, [eax]
	ja _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_780
	movaps xmm3, xmm1
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_980:
	mov eax, [ebp-0x24]
	lea eax, [ecx+eax*8]
	lea edx, [eax+0x8]
	movss xmm1, dword [eax+0x8]
	movss xmm2, dword [edx+0x4]
	subss xmm3, xmm1
	movss xmm0, dword [edx+0xc]
	subss xmm0, xmm2
	mulss xmm3, xmm0
	movss xmm0, dword [edx+0x8]
	subss xmm0, xmm1
	divss xmm3, xmm0
	addss xmm3, xmm2
	lea eax, [ebp-0x28]
	mov [esp], eax
	movss [ebp-0x108], xmm3
	call _Z23FxCurveIterator_ReleaseP15FxCurveIterator
	movss xmm3, dword [ebp-0x108]
	movss [ebp-0x34], xmm3
	mov edx, [ebp-0xac]
	cmp byte [edx+0x30], 0x0
	jns _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_790
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0x40]
	movss [ebp-0x40], xmm0
	movaps xmm0, xmm3
	mulss xmm0, [ebp-0x3c]
	movss [ebp-0x3c], xmm0
	mulss xmm3, [ebp-0x38]
	movss [ebp-0x38], xmm3
	mov dword [ebp-0x34], 0x3f800000
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_790:
	lea esi, [ebx+0x18]
	lea edi, [ebx+0x1a]
	movss xmm0, dword [_float_255_00000000]
	movss [ebp-0xe4], xmm0
	mulss xmm0, [ebp-0x40]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0xcc]
	cvttss2si eax, [ebp-0xcc]
	cmp eax, 0xfe
	jle _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_800
	mov edx, 0xffffffff
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1020:
	mov [edi], dl
	lea edi, [esi+0x1]
	movss xmm0, dword [ebp-0xe4]
	mulss xmm0, [ebp-0x3c]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0xd0]
	cvttss2si eax, [ebp-0xd0]
	cmp eax, 0xfe
	jle _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_810
	mov edx, 0xffffffff
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1010:
	mov [edi], dl
	movss xmm0, dword [ebp-0xe4]
	mulss xmm0, [ebp-0x38]
	addss xmm0, [_float_0_50000000]
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0xd4]
	cvttss2si eax, [ebp-0xd4]
	cmp eax, 0xfe
	jle _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_820
	mov edx, 0xffffffff
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1000:
	mov [esi], dl
	add esi, 0x3
	movss xmm1, dword [ebp-0xe4]
	mulss xmm1, [ebp-0x34]
	movss xmm0, dword [_float_0_50000000]
	addss xmm0, xmm1
	movss [esp], xmm0
	call floorf
	fstp dword [ebp-0xd8]
	cvttss2si eax, [ebp-0xd8]
	cmp eax, 0xfe
	jle _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_830
	mov edx, 0xffffffff
	mov [esi], dl
	cmp dword [ebp-0x64], 0x4
	jnz _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_840
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_650:
	mov edx, [ebp-0xac]
	mov eax, [edx+0x14c]
	mov [esp+0x4], eax
	lea ecx, [ebp-0x28]
	mov [esp], ecx
	call _Z22FxCurveIterator_CreateP15FxCurveIteratorPK7FxCurve
	mov ecx, [ebp-0x28]
	mov edx, [ecx]
	add edx, 0x1
	mov eax, edx
	imul eax, [ebp-0x24]
	lea eax, [ecx+eax*4]
	lea esi, [eax+0x8]
	movss xmm0, dword [eax+0x8]
	ucomiss xmm0, [ebp-0x9c]
	ja _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_850
	shl edx, 0x2
	lea eax, [edx+esi]
	movss xmm0, dword [ebp-0x9c]
	ucomiss xmm0, [eax]
	jbe _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_860
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1170:
	movaps xmm1, xmm0
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_870:
	add dword [ebp-0x24], 0x1
	add eax, edx
	ucomiss xmm1, [eax]
	ja _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_870
	movaps xmm3, xmm1
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1160:
	mov eax, [ebp-0x24]
	lea eax, [ecx+eax*8]
	lea edx, [eax+0x8]
	movss xmm1, dword [eax+0x8]
	movss xmm2, dword [edx+0x4]
	subss xmm3, xmm1
	movss xmm0, dword [edx+0xc]
	subss xmm0, xmm2
	mulss xmm3, xmm0
	movss xmm0, dword [edx+0x8]
	subss xmm0, xmm1
	divss xmm3, xmm0
	addss xmm3, xmm2
	mulss xmm3, [ebp-0xa0]
	lea eax, [ebp-0x28]
	mov [esp], eax
	movss [ebp-0x108], xmm3
	call _Z23FxCurveIterator_ReleaseP15FxCurveIterator
	movss xmm3, dword [ebp-0x108]
	movss [ebx+0x4], xmm3
	mov edi, [ebp-0xa4]
	test edi, edi
	jnz _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_880
	mov dword [ebx+0x8], 0x0
	mov edx, [ebp-0xac]
	test byte [edx+0x30], 0x40
	jnz _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_890
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1270:
	mov dword [ebx+0x1c], 0x0
	mov dword [ebx+0x20], 0x0
	jmp _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_900
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_460:
	mov dword [ebx+0xbc], 0x0
	movzx edx, byte [ebx+0xb0]
	lea eax, [edx-0x6]
	cmp al, 0x1
	jbe _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_910
	cmp dl, 0x5
	jnz _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_920
	mov ebx, [ebp-0xa8]
	and dword [ebx], 0xf7ffffff
	jmp _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_920
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_750:
	xor edx, edx
	test eax, eax
	cmovg edx, eax
	jmp _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_930
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_740:
	xor edx, edx
	test eax, eax
	cmovg edx, eax
	jmp _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_940
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_730:
	xor edx, edx
	test eax, eax
	cmovg edx, eax
	jmp _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_950
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_720:
	xor edx, edx
	test eax, eax
	cmovg edx, eax
	jmp _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_960
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_690:
	movaps xmm3, xmm0
	jmp _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_970
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_770:
	movaps xmm3, xmm0
	jmp _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_980
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_830:
	xor edx, edx
	test eax, eax
	cmovg edx, eax
	mov [esi], dl
	jmp _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_990
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_820:
	xor edx, edx
	test eax, eax
	cmovg edx, eax
	jmp _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1000
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_810:
	xor edx, edx
	test eax, eax
	cmovg edx, eax
	jmp _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1010
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_800:
	xor edx, edx
	test eax, eax
	cmovg edx, eax
	jmp _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1020
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_540:
	mov ecx, [ebp+0x10]
	mov eax, [ecx]
	mov ebx, [ebp-0xa8]
	mov [ebx+0xf4], eax
	mov eax, [ecx]
	add eax, 0x1c
	mov [ebp-0x94], eax
	mov [ecx], eax
	mov edx, [ebx+0xf4]
	mov [ebp-0x90], edx
	mov esi, [ebp-0xac]
	add esi, 0x250
	mov ecx, [esi+0x604]
	mov [ebp-0x8c], ecx
	lea eax, [ecx+ecx*4]
	mov ebx, [ebp-0x94]
	lea eax, [ebx+eax*4]
	mov [ebp-0xdc], eax
	mov edx, [ebp+0x10]
	mov [edx], eax
	mov ebx, [ebp-0x8c]
	lea ebx, [esi+ebx*2+0x504]
	mov [ebp-0x74], ebx
	mov edx, [ebp-0xac]
	add edx, 0x754
	cmp ebx, edx
	jz _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1030
	mov eax, [ebp-0x94]
	mov [ebp-0x7c], eax
	mov [ebp-0x78], edx
	mov edx, [ebp-0xac]
	add edx, 0x756
	mov [ebp-0xe0], edx
	mov ecx, [ebp-0x78]
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1090:
	movzx edx, word [ecx+0x2]
	lea edx, [edx+edx*4]
	lea edx, [esi+edx*4]
	movzx eax, word [ecx]
	lea eax, [eax+eax*4]
	lea eax, [esi+eax*4]
	movss xmm0, dword [eax+0x4]
	subss xmm0, [edx+0x4]
	movss [ebp-0x40], xmm0
	movss xmm0, dword [edx]
	subss xmm0, [eax]
	movss [ebp-0x3c], xmm0
	lea ebx, [ebp-0x40]
	mov [esp], ebx
	call _Z13Vec2NormalizePf
	fstp st0
	mov eax, [ebp-0x7c]
	mov [ebp-0x54], eax
	mov dword [ebp-0x6c], 0x0
	mov edi, [ebp-0x78]
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1070:
	xor eax, eax
	mov [ebp-0x28], eax
	mov [ebp-0x24], eax
	mov ebx, [ebp-0xe0]
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1060:
	movzx eax, word [edi]
	lea eax, [eax+eax*4]
	lea eax, [esi+eax*4]
	mov [esp+0x4], eax
	movzx eax, word [ebx-0x2]
	lea eax, [eax+eax*4]
	lea eax, [esi+eax*4]
	mov [esp], eax
	call _Z12Vec2DistancePKfS0_
	fstp dword [ebp-0x88]
	movss xmm0, dword [ebp-0x88]
	ucomiss xmm0, [_float_0_01000000]
	jbe _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1040
	movzx eax, word [edi]
	lea eax, [eax+eax*4]
	lea eax, [esi+eax*4]
	mov [esp+0x4], eax
	movzx eax, word [ebx]
	lea eax, [eax+eax*4]
	lea eax, [esi+eax*4]
	mov [esp], eax
	call _Z12Vec2DistancePKfS0_
	fstp dword [ebp-0x84]
	movss xmm1, dword [ebp-0x84]
	ucomiss xmm1, [_float_0_01000000]
	ja _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1050
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1040:
	movzx edx, word [ebx]
	lea edx, [edx+edx*4]
	lea edx, [esi+edx*4]
	movzx eax, word [ebx-0x2]
	lea eax, [eax+eax*4]
	lea eax, [esi+eax*4]
	movss xmm0, dword [eax+0x4]
	subss xmm0, [edx+0x4]
	movss [ebp-0x20], xmm0
	movss xmm0, dword [edx]
	subss xmm0, [eax]
	movss [ebp-0x1c], xmm0
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _Z13Vec2NormalizePf
	fstp st0
	movss xmm2, dword [ebp-0x20]
	movaps xmm1, xmm2
	mulss xmm1, [ebp-0x40]
	movss xmm0, dword [ebp-0x3c]
	mulss xmm0, [ebp-0x1c]
	addss xmm1, xmm0
	ucomiss xmm1, [_float_0_00000000]
	jbe _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1050
	addss xmm2, [ebp-0x28]
	movss [ebp-0x28], xmm2
	movss xmm0, dword [ebp-0x1c]
	addss xmm0, [ebp-0x24]
	movss [ebp-0x24], xmm0
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1050:
	add ebx, 0x4
	lea eax, [ebx-0x2]
	cmp eax, [ebp-0x74]
	jnz _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1060
	lea eax, [ebp-0x28]
	mov [esp], eax
	call _Z13Vec2NormalizePf
	fstp st0
	movzx eax, word [edi]
	lea eax, [eax+eax*4]
	lea eax, [esi+eax*4]
	mov edx, [eax]
	mov ecx, [ebp-0x54]
	mov [ecx], edx
	mov eax, [eax+0x4]
	mov [ecx+0x4], eax
	mov eax, [ebp-0x28]
	mov [ecx+0x8], eax
	mov eax, [ebp-0x24]
	mov [ecx+0xc], eax
	movzx eax, word [edi]
	lea eax, [eax+eax*4]
	mov eax, [esi+eax*4+0x10]
	mov [ecx+0x10], eax
	add dword [ebp-0x6c], 0x1
	add edi, 0x2
	add ecx, 0x14
	mov [ebp-0x54], ecx
	cmp dword [ebp-0x6c], 0x2
	jnz _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1070
	add dword [ebp-0x7c], 0x28
	add dword [ebp-0x78], 0x4
	mov ebx, [ebp-0x78]
	cmp [ebp-0x74], ebx
	jz _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1080
	mov ecx, ebx
	jmp _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1090
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_660:
	mov ebx, ecx
	cmp byte [ebx+0xb0], 0x9
	jnz _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1100
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_450:
	mov eax, [ebx+0xbc]
	mov ecx, [ebp-0xac]
	mov edx, [ecx+0x1c0]
	shl edx, 0x3
	add ecx, 0x1c4
	mov [esp+0x8], edx
	mov [esp+0x4], ecx
	mov [esp], eax
	call memcpy
	jmp _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_920
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_530:
	movaps xmm0, xmm1
	addss xmm0, [eax+0x1b4]
	mov ecx, [ebp-0xa8]
	movss [ecx+0xec], xmm0
	xorps xmm1, [_ZZ21FX_Beam_GenerateVertsP18FxGenerateVertsCmdE15templateIndices+0x50]
	movss [edx+0x4], xmm1
	jmp _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1110
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_30:
	movaps xmm0, xmm1
	addss xmm0, [ebx+0x48]
	mov eax, [ebp-0xa8]
	movss [eax+0x1c], xmm0
	xorps xmm1, [_ZZ21FX_Beam_GenerateVertsP18FxGenerateVertsCmdE15templateIndices+0x50]
	movss [edx+0x4], xmm1
	jmp _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1120
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_20:
	movaps xmm0, xmm1
	addss xmm0, [eax+0x40]
	mov ecx, [ebp-0xa8]
	movss [ecx+0x14], xmm0
	xorps xmm1, [_ZZ21FX_Beam_GenerateVertsP18FxGenerateVertsCmdE15templateIndices+0x50]
	jmp _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1130
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_10:
	movaps xmm0, xmm1
	addss xmm0, [ecx+0x38]
	mov ebx, [ebp-0xa8]
	movss [ebx+0xc], xmm0
	xorps xmm1, [_ZZ21FX_Beam_GenerateVertsP18FxGenerateVertsCmdE15templateIndices+0x50]
	movss [edx+0x4], xmm1
	jmp _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1140
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_520:
	movaps xmm0, xmm1
	addss xmm0, [ebx+0x1ac]
	movss [ecx+0xe4], xmm0
	xorps xmm1, [_ZZ21FX_Beam_GenerateVertsP18FxGenerateVertsCmdE15templateIndices+0x50]
	movss [edx+0x4], xmm1
	jmp _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1150
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_860:
	movaps xmm3, xmm0
	jmp _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1160
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_850:
	mov dword [ebp-0x24], 0x0
	lea esi, [ecx+0x8]
	shl edx, 0x2
	lea eax, [edx+esi]
	movss xmm0, dword [ebp-0x9c]
	ucomiss xmm0, [eax]
	jbe _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_860
	jmp _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1170
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1030:
	mov edx, [ebp+0x10]
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1260:
	mov [ebp-0x70], eax
	mov ecx, [ebp-0x8c]
	lea eax, [eax+ecx*2]
	mov [edx], eax
	mov ecx, [ebp-0xdc]
	cmp [ebp-0x94], ecx
	jz _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1180
	mov esi, [ebp-0x94]
	mov edi, esi
	mov ecx, [ebp-0x70]
	mov [ebp-0x4c], ecx
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1200:
	xor edx, edx
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1240:
	mov eax, [esi]
	mov [edi], eax
	mov eax, [esi+0x4]
	mov [edi+0x4], eax
	mov eax, [esi+0x8]
	mov [edi+0x8], eax
	mov eax, [esi+0xc]
	mov [edi+0xc], eax
	mov eax, [esi+0x10]
	mov [edi+0x10], eax
	add edi, 0x14
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1320:
	mov ecx, edx
	sar ecx, 0x2
	lea eax, [ecx+ecx*2]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	mov edx, eax
	shl edx, 0x10
	add eax, edx
	lea eax, [ecx+eax*4]
	mov edx, [ebp-0x4c]
	mov [edx], ax
	add edx, 0x2
	mov [ebp-0x4c], edx
	add esi, 0x14
	cmp [ebp-0xdc], esi
	jz _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1190
	cmp [ebp-0x94], edi
	jz _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1200
	mov ebx, [ebp-0x94]
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1230:
	mov [esp+0x4], ebx
	mov [esp], esi
	call _Z12Vec2DistancePKfS0_
	fstp dword [ebp-0x80]
	movss xmm0, dword [ebp-0x80]
	ucomiss xmm0, [_float_0_01000000]
	ja _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1210
	movss xmm0, dword [esi+0x10]
	subss xmm0, [ebx+0x10]
	andps xmm0, [_ZZ21FX_Beam_GenerateVertsP18FxGenerateVertsCmdE15templateIndices+0x60]
	ucomiss xmm0, [_float_0_01000000]
	ja _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1210
	movss xmm1, dword [esi+0x8]
	mulss xmm1, [ebx+0x8]
	movss xmm0, dword [esi+0xc]
	mulss xmm0, [ebx+0xc]
	addss xmm1, xmm0
	ucomiss xmm1, [_float_0_94999999]
	jae _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1220
	jp _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1220
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1210:
	add ebx, 0x14
	cmp ebx, edi
	jnz _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1230
	mov edx, edi
	sub edx, [ebp-0x94]
	jmp _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1240
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1190:
	mov eax, edi
	sub eax, [ebp-0x94]
	mov ebx, edx
	sub ebx, [ebp-0x70]
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1340:
	mov ecx, [ebp-0x94]
	mov edx, [ebp-0x90]
	mov [edx+0x10], ecx
	mov ecx, eax
	sar ecx, 0x2
	lea eax, [ecx+ecx*2]
	mov edx, eax
	shl edx, 0x4
	add eax, edx
	mov edx, eax
	shl edx, 0x8
	add eax, edx
	mov edx, eax
	shl edx, 0x10
	add eax, edx
	lea eax, [ecx+eax*4]
	mov edx, [ebp-0x90]
	mov [edx+0xc], eax
	mov ecx, [ebp-0x70]
	mov [edx+0x18], ecx
	sar ebx, 1
	mov [edx+0x14], ebx
	mov ebx, [ebp-0x98]
	mov edx, [ebx]
	mov ecx, [ebp-0xac]
	mov eax, [ecx+0x244]
	mov [edx+0x8], eax
	mov edx, [ebx]
	movss xmm0, dword [_float_1000_00000000]
	mulss xmm0, [ecx+0x24c]
	cvttss2si eax, xmm0
	mov [edx], eax
	mov edx, [ebx]
	mov eax, [ecx+0x248]
	mov [edx+0x4], eax
	jmp _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1250
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1080:
	mov edx, [ebp+0x10]
	mov eax, [edx]
	jmp _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1260
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_880:
	lea eax, [ebx-0x30]
	addss xmm3, [eax+0x4]
	mulss xmm3, [_float_0_50000000]
	addss xmm3, [eax+0x8]
	movss [ebx+0x8], xmm3
	mov edx, [ebp-0xac]
	test byte [edx+0x30], 0x40
	jz _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1270
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_890:
	mov eax, [edx+0x150]
	mov [esp+0x4], eax
	lea ecx, [ebp-0x20]
	mov [esp], ecx
	call _Z22FxCurveIterator_CreateP15FxCurveIteratorPK7FxCurve
	mov ecx, [ebp-0x20]
	mov edx, [ecx]
	add edx, 0x1
	mov eax, edx
	imul eax, [ebp-0x1c]
	lea eax, [ecx+eax*4]
	lea esi, [eax+0x8]
	movss xmm0, dword [eax+0x8]
	ucomiss xmm0, [ebp-0x9c]
	jbe _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1280
	mov dword [ebp-0x1c], 0x0
	lea esi, [ecx+0x8]
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1280:
	shl edx, 0x2
	lea eax, [edx+esi]
	movss xmm0, dword [ebp-0x9c]
	ucomiss xmm0, [eax]
	jbe _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1290
	movaps xmm1, xmm0
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1300:
	add dword [ebp-0x1c], 0x1
	add eax, edx
	ucomiss xmm1, [eax]
	ja _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1300
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1350:
	mov eax, [ebp-0x1c]
	lea eax, [ecx+eax*8]
	lea edx, [eax+0x8]
	movss xmm2, dword [eax+0x8]
	movss xmm3, dword [edx+0x4]
	subss xmm1, xmm2
	movss xmm0, dword [edx+0xc]
	subss xmm0, xmm3
	mulss xmm1, xmm0
	movss xmm0, dword [edx+0x8]
	subss xmm0, xmm2
	divss xmm1, xmm0
	addss xmm1, xmm3
	mulss xmm1, [ebp-0xa0]
	lea eax, [ebp-0x20]
	mov [esp], eax
	movss [ebp-0xf8], xmm1
	call _Z23FxCurveIterator_ReleaseP15FxCurveIterator
	movss xmm1, dword [ebp-0xf8]
	subss xmm1, [ebx+0x4]
	movss [ebx+0x1c], xmm1
	mov esi, [ebp-0xa4]
	test esi, esi
	jz _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1310
	lea eax, [ebx-0x30]
	addss xmm1, [eax+0x1c]
	mulss xmm1, [_float_0_50000000]
	addss xmm1, [eax+0x20]
	movss [ebx+0x20], xmm1
	jmp _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_900
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1220:
	mov edx, ebx
	sub edx, [ebp-0x94]
	jmp _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1320
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_350:
	mov edx, ebx
	jmp _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_570
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_470:
	mov ecx, ebx
	add ecx, 0xbc
	jmp _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1330
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_910:
	mov byte [ebx+0xb1], 0x1
	jmp _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_920
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1180:
	xor eax, eax
	xor ebx, ebx
	jmp _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1340
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1290:
	movaps xmm1, xmm0
	jmp _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1350
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1420:
	mov dword [ebp-0x68], 0x6
	mov dword [ebp-0x64], 0x6
	mov dword [ebp-0x60], 0x6
	mov dword [ebp-0x5c], 0x6
	mov dword [ebp-0x58], 0x6
	jmp _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_370
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1410:
	mov dword [ebp-0x68], 0x6
	mov dword [ebp-0x64], 0x4
	mov dword [ebp-0x60], 0x6
	mov dword [ebp-0x5c], 0x1
	mov dword [ebp-0x58], 0x0
	jmp _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_370
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1390:
	mov dword [ebp-0x68], 0x3
	mov dword [ebp-0x64], 0x6
	mov dword [ebp-0x60], 0x6
	mov dword [ebp-0x5c], 0x6
	mov dword [ebp-0x58], 0x6
	jmp _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_370
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1400:
	mov dword [ebp-0x68], 0x6
	mov dword [ebp-0x64], 0x6
	mov dword [ebp-0x60], 0x6
	mov dword [ebp-0x5c], 0x1
	mov dword [ebp-0x58], 0x0
	jmp _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_370
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1380:
	mov dword [ebp-0x68], 0x3
	mov dword [ebp-0x64], 0x6
	mov dword [ebp-0x60], 0x2
	mov dword [ebp-0x5c], 0x1
	mov dword [ebp-0x58], 0x0
	jmp _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_370
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_630:
	mov dword [ebp-0x60], 0x2
	jmp _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1360
	nop
	
	
_Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_jumptab_0:
	dd _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1370
	dd _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1370
	dd _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1370
	dd _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1370
	dd _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1380
	dd _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1390
	dd _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1400
	dd _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1410
	dd _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1390
	dd _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1410
	dd _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh_1420


;FX_Convert(FxEditorEffectDef const*, void* (*)(int))
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2cc
	mov eax, [ebp+0x8]
	mov eax, [eax+0x40]
	mov [ebp-0x260], eax
	shl eax, 0x2
	mov edx, [ebp-0x260]
	shl edx, 0x8
	sub edx, eax
	mov [ebp-0x224], edx
	add edx, 0x20
	mov [ebp-0x200], edx
	mov eax, [ebp-0x260]
	test eax, eax
	jle _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_10
	mov dword [ebp-0x264], 0x0
	mov edi, [ebp+0x8]
	add edi, 0x44
	jmp _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_20
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_40:
	add dword [ebp-0x264], 0x1
	add edi, 0x858
	mov eax, [ebp-0x264]
	mov ebx, [ebp+0x8]
	cmp eax, [ebx+0x40]
	jge _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_30
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_20:
	cmp byte [edi+0x1bc], 0x5
	jnz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_40
	test byte [edi+0x37], 0x8
	jz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_40
	mov eax, [edi+0x1c0]
	test eax, eax
	jle _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_40
	mov dword [ebp-0x254], 0x0
	lea esi, [edi+0x1c0]
	jmp _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_50
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_60:
	add dword [ebp-0x254], 0x1
	add esi, 0x4
	mov ecx, [ebp-0x254]
	cmp [edi+0x1c0], ecx
	jle _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_40
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_50:
	mov ebx, [esi+0x4]
	test ebx, ebx
	jz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_60
	mov eax, [ebx+0xd4]
	test eax, eax
	jnz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_60
	mov dword [esp], _cstring_default
	call _Z21FX_RegisterPhysPresetPKc
	mov [ebx+0xd4], eax
	mov eax, [esi+0x4]
	mov eax, [eax]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_error_no_physics
	mov dword [esp], 0x14
	call _Z14Com_PrintErroriPKcz
	jmp _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_60
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_10:
	mov edx, [ebp+0x8]
	mov esi, [edx+0x40]
	test esi, esi
	jg _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_70
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_140:
	mov edi, edx
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1090:
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	repne scasb
	not ecx
	add ecx, [ebp-0x200]
	mov [ebp-0x258], ecx
	mov [esp], ecx
	call dword [ebp+0xc]
	mov [ebp-0x268], eax
	add eax, 0x20
	mov [ebp-0x1c], eax
	mov edi, [ebp-0x268]
	mov [edi+0x1c], eax
	mov eax, [ebp-0x224]
	add [ebp-0x1c], eax
	mov ecx, [edi+0x1c]
	mov edx, [ebp+0x8]
	mov ebx, [edx+0x40]
	test ebx, ebx
	jg _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_80
	mov dword [ebp-0x244], 0x0
	xor edx, edx
	mov ebx, [ebp-0x244]
	mov eax, [ebp-0x268]
	mov [eax+0x10], ebx
	lea eax, [edx*4]
	shl edx, 0x8
	sub edx, eax
	lea eax, [edx+ecx]
	mov edi, [ebp+0x8]
	mov edx, [edi+0x40]
	test edx, edx
	jle _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_90
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_200:
	mov esi, edi
	mov dword [ebp-0x240], 0x0
	mov dword [ebp-0x23c], 0x0
	add edi, 0x44
	mov [ebp-0x274], eax
	jmp _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_100
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_120:
	add dword [ebp-0x240], 0x1
	add edi, 0x858
	add esi, 0x858
	mov eax, [ebp-0x240]
	mov edx, [ebp+0x8]
	cmp [edx+0x40], eax
	jle _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_110
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_100:
	test dword [esi+0x74], 0x80000001
	jnz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_120
	mov eax, [ebp-0x274]
	add dword [ebp-0x23c], 0x1
	add dword [ebp-0x274], 0xfc
	mov ebx, [ebp-0x240]
	shl ebx, 0x2
	mov ecx, [ebp+ebx-0x178]
	lea edx, [ebp-0x1c]
	mov [esp+0x8], edx
	mov edx, [ebp+ebx-0x1f8]
	mov [esp+0x4], edx
	mov edx, [ebp+ebx-0xf8]
	mov [esp], edx
	mov edx, edi
	call _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh
	add dword [ebp-0x240], 0x1
	add edi, 0x858
	add esi, 0x858
	mov eax, [ebp-0x240]
	mov edx, [ebp+0x8]
	cmp [edx+0x40], eax
	jg _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_100
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_110:
	mov ebx, [ebp-0x268]
	mov ecx, [ebx+0x1c]
	mov edi, ebx
	jmp _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_130
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_30:
	mov edx, ebx
	mov esi, [edx+0x40]
	test esi, esi
	jle _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_140
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_70:
	mov dword [ebp-0x1fc], 0x0
	mov eax, [ebp-0x1fc]
	mov ecx, [ebp-0x1fc]
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_940:
	shl eax, 0x5
	add eax, [ebp-0x1fc]
	lea eax, [ecx+eax*4]
	lea eax, [ecx+eax*2]
	mov ebx, [ebp+0x8]
	lea esi, [ebx+eax*8+0x44]
	mov ebx, [esi+0x1c0]
	test ebx, ebx
	jnz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_150
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_490:
	mov eax, [esi+0x34]
	and eax, 0xf0
	cmp eax, 0xc0
	jnz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_160
	mov [esp+0xc], esi
	mov edx, [ebp+0x8]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_effect_s_segment
	mov dword [esp], 0x15
	call _Z14Com_PrintErroriPKcz
	xor eax, eax
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_530:
	add esp, 0x2cc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_80:
	mov esi, edx
	mov dword [ebp-0x248], 0x0
	mov dword [ebp-0x244], 0x0
	mov edi, edx
	add edi, 0x44
	mov [ebp-0x278], ecx
	jmp _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_170
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_190:
	add dword [ebp-0x248], 0x1
	add edi, 0x858
	add esi, 0x858
	mov ecx, [ebp-0x248]
	mov ebx, [ebp+0x8]
	cmp [ebx+0x40], ecx
	jle _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_180
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_170:
	mov eax, [esi+0x74]
	and eax, 0x80000001
	sub eax, 0x1
	jnz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_190
	mov eax, [ebp-0x278]
	add dword [ebp-0x244], 0x1
	add dword [ebp-0x278], 0xfc
	mov ebx, [ebp-0x248]
	shl ebx, 0x2
	mov ecx, [ebp+ebx-0x178]
	lea edx, [ebp-0x1c]
	mov [esp+0x8], edx
	mov edx, [ebp+ebx-0x1f8]
	mov [esp+0x4], edx
	mov edx, [ebp+ebx-0xf8]
	mov [esp], edx
	mov edx, edi
	call _Z17FX_ConvertElemDefP9FxElemDefPK15FxEditorElemDefiiiPPh
	add dword [ebp-0x248], 0x1
	add edi, 0x858
	add esi, 0x858
	mov ecx, [ebp-0x248]
	mov ebx, [ebp+0x8]
	cmp [ebx+0x40], ecx
	jg _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_170
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_180:
	mov edx, [ebp-0x244]
	mov edi, [ebp-0x268]
	mov ecx, [edi+0x1c]
	mov ebx, edx
	mov eax, edi
	mov [eax+0x10], ebx
	lea eax, [edx*4]
	shl edx, 0x8
	sub edx, eax
	lea eax, [edx+ecx]
	mov edi, [ebp+0x8]
	mov edx, [edi+0x40]
	test edx, edx
	jg _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_200
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_90:
	mov dword [ebp-0x23c], 0x0
	mov edi, [ebp-0x268]
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_130:
	mov eax, [ebp-0x23c]
	mov [edi+0x14], eax
	mov edx, [edi+0x10]
	mov [ebp-0x270], edx
	mov eax, [ebp-0x23c]
	add eax, edx
	lea edx, [eax*4]
	shl eax, 0x8
	sub eax, edx
	add eax, ecx
	mov [ebp-0x238], eax
	mov ebx, [ebp+0x8]
	mov ecx, [ebx+0x40]
	test ecx, ecx
	jle _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_210
	mov [ebp-0x214], ebx
	mov dword [ebp-0x234], 0x0
	mov dword [ebp-0x228], 0x0
	mov eax, ebx
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_280:
	mov edi, [eax+0x1ec]
	test edi, edi
	jz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_220
	mov esi, [edi+0x14]
	test esi, esi
	jz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_220
	test ecx, ecx
	jle _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_230
	mov edx, [ebp+0x8]
	cmp edi, [edx+0x1ec]
	jz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_240
	xor ebx, ebx
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_250:
	add ebx, 0x1
	cmp ecx, ebx
	jz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_230
	mov eax, [edx+0xa44]
	add edx, 0x858
	cmp edi, eax
	jnz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_250
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_540:
	cmp [ebp-0x234], ebx
	jz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_260
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_220:
	add dword [ebp-0x234], 0x1
	add dword [ebp-0x214], 0x858
	cmp ecx, [ebp-0x234]
	jle _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_270
	mov eax, [ebp-0x214]
	jmp _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_280
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_230:
	mov ebx, 0xffffffff
	cmp [ebp-0x234], ebx
	jnz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_220
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_260:
	mov ebx, [edi+0x10]
	mov [ebp-0x230], ebx
	add esi, ebx
	mov [ebp-0x22c], esi
	cmp ebx, esi
	jz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_220
	mov eax, ebx
	shl eax, 0x2
	shl ebx, 0x8
	sub ebx, eax
	mov [ebp-0x21c], ebx
	mov edx, [ebp-0x228]
	shl edx, 0x2
	mov eax, [ebp-0x228]
	shl eax, 0x8
	sub eax, edx
	mov edx, [ebp-0x238]
	lea ebx, [eax+edx]
	mov dword [ebp-0x220], 0x0
	jmp _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_290
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_360:
	mov [ebx+0xb8], eax
	movzx eax, byte [ebx+0xb3]
	lea eax, [eax+eax*2]
	shl eax, 0x4
	add eax, [ebp-0x1c]
	add eax, 0x30
	mov [ebp-0x1c], eax
	cmp byte [ebx+0xb0], 0x9
	jz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_300
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_370:
	cmp byte [ebx+0xb1], 0x1
	jbe _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_310
	mov eax, [ebp-0x1c]
	mov [ebx+0xbc], eax
	movzx eax, byte [ebx+0xb1]
	shl eax, 0x2
	add [ebp-0x1c], eax
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_310:
	mov eax, [ecx]
	mov ecx, [ebp-0x29c]
	movzx edx, byte [ecx]
	lea edx, [edx+edx*2]
	shl edx, 0x5
	add edx, 0x60
	mov ecx, [esi+0xb4]
	mov [esp+0x8], edx
	mov [esp+0x4], ecx
	mov [esp], eax
	call memcpy
	mov ecx, [ebx+0xb8]
	test ecx, ecx
	jz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_320
	mov edx, [ebp-0x218]
	movzx eax, byte [edx]
	lea eax, [eax+eax*2]
	shl eax, 0x4
	add eax, 0x30
	mov edx, [esi+0xb8]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov [esp], ecx
	call memcpy
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_320:
	movzx edx, byte [ebx+0xb1]
	cmp dl, 0x1
	jbe _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_330
	mov eax, [ebx+0xbc]
	movzx edx, dl
	shl edx, 0x2
	mov ecx, [esi+0xbc]
	mov [esp+0x8], edx
	mov [esp+0x4], ecx
	mov [esp], eax
	call memcpy
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_330:
	add dword [ebp-0x220], 0x1
	add dword [ebp-0x21c], 0xfc
	add ebx, 0xfc
	mov eax, [ebp-0x22c]
	sub eax, [ebp-0x230]
	cmp [ebp-0x220], eax
	jz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_340
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_290:
	mov esi, [ebp-0x21c]
	add esi, [edi+0x1c]
	mov dword [esp+0x8], 0xfc
	mov [esp+0x4], esi
	mov [esp], ebx
	call memcpy
	mov edx, [ebx]
	mov eax, edx
	and eax, 0xc0
	cmp eax, 0x40
	jz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_350
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_380:
	lea ecx, [ebx+0xb4]
	mov eax, [ebp-0x1c]
	mov [ebx+0xb4], eax
	lea eax, [ebx+0xb2]
	mov [ebp-0x29c], eax
	movzx eax, byte [ebx+0xb2]
	lea eax, [eax+eax*2]
	shl eax, 0x5
	add eax, [ebp-0x1c]
	add eax, 0x60
	mov [ebp-0x1c], eax
	lea edx, [ebx+0xb3]
	mov [ebp-0x218], edx
	cmp byte [ebx+0xb3], 0x0
	jnz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_360
	mov dword [ebx+0xb8], 0x0
	cmp byte [ebx+0xb0], 0x9
	jnz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_370
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_300:
	mov eax, [ebp-0x1c]
	mov [ebx+0xbc], eax
	movzx eax, byte [ebx+0xb1]
	shl eax, 0x3
	add [ebp-0x1c], eax
	jmp _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_310
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_350:
	and dl, 0x3f
	mov [ebx], edx
	jmp _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_380
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_270:
	mov edi, [ebp-0x268]
	mov edi, [edi+0x10]
	mov [ebp-0x270], edi
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_470:
	mov eax, [ebp-0x228]
	mov edx, [ebp-0x268]
	mov [edx+0x18], eax
	mov dword [edx+0x4], 0x0
	mov edi, [ebp-0x260]
	test edi, edi
	jz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_390
	mov ecx, [ebp-0x268]
	mov edx, [ecx+0x1c]
	movzx eax, byte [edx+0xf9]
	cvtsi2ss xmm0, eax
	pxor xmm3, xmm3
	ucomiss xmm0, xmm3
	jnz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_400
	jp _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_400
	lea ecx, [edx+0x1f5]
	xor edx, edx
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_420:
	add edx, 0x1
	cmp edx, [ebp-0x260]
	jz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_390
	movzx eax, byte [ecx]
	cvtsi2ss xmm0, eax
	add ecx, 0xfc
	ucomiss xmm0, xmm3
	jp _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_410
	jz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_420
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_410:
	mov ecx, [ebp-0x268]
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_400:
	mov dword [ecx+0x4], 0x1
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_390:
	mov esi, [ebp-0x270]
	test esi, esi
	jg _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_430
	xor esi, esi
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_450:
	mov ebx, [ebp-0x268]
	mov [ebx+0xc], esi
	mov edi, [ebp-0x258]
	mov [ebx+0x8], edi
	mov eax, [ebp-0x1c]
	mov [ebx], eax
	mov edx, [ebp+0x8]
	mov [esp+0x4], edx
	mov [esp], eax
	call strcpy
	mov eax, ebx
	add esp, 0x2cc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_430:
	mov ebx, [ebp-0x268]
	mov edx, [ebx+0x1c]
	mov eax, [edx+0x8]
	cmp eax, 0x7fffffff
	jz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_440
	lea edi, [edx+0xfc]
	lea ebx, [edx+0x104]
	xor ecx, ecx
	xor esi, esi
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_460:
	sub eax, 0x1
	imul eax, [edx+0x4]
	cmp esi, eax
	cmovl esi, eax
	add ecx, 0x1
	cmp ecx, [ebp-0x270]
	jz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_450
	mov edx, edi
	mov eax, [ebx]
	lea edi, [edi+0xfc]
	add ebx, 0xfc
	cmp eax, 0x7fffffff
	jnz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_460
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_440:
	mov esi, 0x7fffffff
	jmp _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_450
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_210:
	mov dword [ebp-0x228], 0x0
	jmp _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_470
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_340:
	mov ecx, [ebp-0x220]
	add [ebp-0x228], ecx
	mov ebx, [ebp+0x8]
	mov ecx, [ebx+0x40]
	jmp _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_220
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_150:
	cmp byte [esi+0x1bc], 0xa
	ja _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_480
	movsx ecx, byte [esi+0x1bc]
	mov eax, 0x1
	shl eax, cl
	test eax, 0x5e0
	jnz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_490
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_480:
	lea eax, [ebp-0x48]
	mov [esp+0x4], eax
	mov eax, [esi+0x1c4]
	mov [esp], eax
	call _Z16Material_GetInfoP8MaterialP12MaterialInfo
	movzx ecx, byte [ebp-0x42]
	lea eax, [ecx-0x1]
	test eax, ecx
	jnz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_500
	movzx edx, byte [ebp-0x41]
	lea eax, [edx-0x1]
	test eax, edx
	jnz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_500
	cmp dword [esi+0x1c0], 0x1
	jle _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_490
	mov ebx, esi
	mov edi, 0x1
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_520:
	lea eax, [ebp-0x78]
	mov [esp+0x4], eax
	mov eax, [ebx+0x1c8]
	mov [esp], eax
	call _Z16Material_GetInfoP8MaterialP12MaterialInfo
	movzx eax, word [ebp-0x72]
	cmp ax, [ebp-0x42]
	jnz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_510
	add edi, 0x1
	add ebx, 0x4
	cmp [esi+0x1c0], edi
	jg _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_520
	jmp _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_490
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_500:
	mov [esp+0x18], ecx
	movzx eax, byte [ebp-0x41]
	mov [esp+0x14], eax
	mov eax, [ebp-0x48]
	mov [esp+0x10], eax
	mov [esp+0xc], esi
	mov edx, [ebp+0x8]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_effect_s_segment1
	mov dword [esp], 0x15
	call _Z14Com_PrintErroriPKcz
	xor eax, eax
	jmp _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_530
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_240:
	xor ebx, ebx
	jmp _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_540
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_510:
	movzx eax, byte [ebp-0x72]
	mov [esp+0x24], eax
	movzx eax, byte [ebp-0x71]
	mov [esp+0x20], eax
	mov eax, [ebp-0x78]
	mov [esp+0x1c], eax
	movzx eax, byte [ebp-0x42]
	mov [esp+0x18], eax
	movzx eax, byte [ebp-0x41]
	mov [esp+0x14], eax
	mov eax, [ebp-0x48]
	mov [esp+0x10], eax
	mov [esp+0xc], esi
	mov ecx, [ebp+0x8]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_effect_s_segment2
	mov dword [esp], 0x15
	call _Z14Com_PrintErroriPKcz
	xor eax, eax
	jmp _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_530
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_160:
	cmp byte [esi+0x1bc], 0x9
	jz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_550
	movss xmm0, dword [esi+0x188]
	ucomiss xmm0, [_float_0_00000000]
	jb _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_560
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1190:
	ucomiss xmm0, [_float_1_00000000]
	jbe _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_570
	mov [esp+0xc], esi
	mov edi, [ebp+0x8]
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_effect_s_segment3
	mov dword [esp], 0x15
	call _Z14Com_PrintErroriPKcz
	xor eax, eax
	jmp _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_530
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_550:
	pxor xmm0, xmm0
	ucomiss xmm0, [esi+0x188]
	jp _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_580
	jnz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_580
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_570:
	movzx edx, byte [esi+0x1bc]
	lea eax, [edx-0x9]
	cmp al, 0x1
	jbe _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_590
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_640:
	cmp dl, 0x3
	jz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_600
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_740:
	test byte [esi+0x35], 0x1
	jz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_610
	movss xmm2, dword [esi+0xdc]
	movss xmm1, dword [esi+0xe0]
	pxor xmm3, xmm3
	movaps xmm0, xmm3
	cmpss xmm0, xmm1, 0x6
	movaps xmm4, xmm1
	andps xmm4, xmm0
	orps xmm4, xmm3
	addss xmm4, xmm2
	movaps xmm0, xmm3
	subss xmm0, xmm1
	movaps xmm5, xmm3
	cmpss xmm5, xmm0, 0x6
	andps xmm1, xmm5
	orps xmm1, xmm3
	addss xmm1, xmm2
	ucomiss xmm4, [_float__0_00100000]
	jp _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_620
	jb _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_630
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_620:
	ucomiss xmm1, [_float_1_00100005]
	jbe _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_610
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_630:
	cvtss2sd xmm1, xmm1
	movsd [esp+0x18], xmm1
	cvtss2sd xmm4, xmm4
	movsd [esp+0x10], xmm4
	mov [esp+0xc], esi
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_effect_s_segment4
	mov dword [esp], 0x15
	call _Z14Com_PrintErroriPKcz
	xor eax, eax
	jmp _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_530
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_590:
	mov ecx, [esi+0x1c0]
	test ecx, ecx
	jnz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_640
	mov [esp+0xc], esi
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_effect_s_segment5
	mov dword [esp], 0x15
	call _Z14Com_PrintErroriPKcz
	xor eax, eax
	jmp _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_530
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_610:
	movzx eax, byte [esi+0x1bc]
	cmp eax, 0xa
	ja _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_650
	jmp dword [eax*4+_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_jumptab_0]
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_600:
	mov edi, [esi+0x854]
	test edi, edi
	jz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_660
	mov ebx, [esi+0x750]
	test ebx, ebx
	jnz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_670
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_660:
	mov [esp+0xc], esi
	mov edx, [ebp+0x8]
	mov [esp+0x8], edx
	mov dword [esp+0x4], _cstring_effect_s_segment6
	mov dword [esp], 0x15
	call _Z14Com_PrintErroriPKcz
	xor eax, eax
	jmp _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_530
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1220:
	mov dword [ebp-0x30], 0x0
	mov dword [ebp-0x2c], 0x1
	mov dword [ebp-0x28], 0x2
	mov dword [ebp-0x20], 0x6
	mov dword [ebp-0x24], 0x3
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_650:
	mov edx, [esi+0x70]
	mov eax, edx
	shr eax, 0x1f
	lea ecx, [eax+edx]
	sar ecx, 1
	add ecx, [esi+0x6c]
	mov ebx, 0x51eb851f
	mov eax, ecx
	imul ebx
	sar edx, 0x5
	mov eax, ecx
	sar eax, 0x1f
	sub edx, eax
	cmp edx, 0x51
	mov eax, 0x50
	cmovl eax, edx
	mov [ebp-0x25c], eax
	mov eax, [esi+0x118]
	mov [ebp-0x78], eax
	mov eax, [esi+0x11c]
	mov [ebp-0x74], eax
	mov eax, [esi+0x120]
	mov [ebp-0x70], eax
	mov eax, [esi+0x124]
	mov [ebp-0x6c], eax
	mov eax, [esi+0x128]
	mov [ebp-0x68], eax
	mov eax, [esi+0x12c]
	mov [ebp-0x64], eax
	mov eax, [esi+0x130]
	mov [ebp-0x60], eax
	mov eax, [esi+0x134]
	mov [ebp-0x5c], eax
	mov eax, [esi+0x138]
	mov [ebp-0x58], eax
	mov eax, [esi+0x13c]
	mov [ebp-0x54], eax
	mov eax, [esi+0x140]
	mov [ebp-0x50], eax
	mov eax, [esi+0x144]
	mov [ebp-0x4c], eax
	mov eax, [ebp-0x25c]
	test eax, eax
	jg _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_680
	mov eax, 0x2
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_910:
	mov edx, [ebp-0x1fc]
	lea edx, [ebp+edx*4-0x178]
	mov [ebp-0x20c], edx
	mov [edx], eax
	xor ebx, ebx
	mov ecx, 0x1
	lea edi, [ebp-0x30]
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_760:
	lea eax, [ecx*4]
	cmp dword [edi+eax-0x4], 0x4
	ja _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_690
	mov eax, [edi+eax-0x4]
	jmp dword [eax*4+_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_jumptab_1]
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_670:
	mov edx, esi
	xor ecx, ecx
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_710:
	movzx eax, word [edx+0x754]
	cmp ebx, eax
	jle _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_700
	add ecx, 0x1
	add edx, 0x2
	cmp edi, ecx
	jnz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_710
	mov eax, [esi+0x248]
	test eax, eax
	jle _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_720
	mov edx, [esi+0x244]
	test edx, edx
	jle _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_730
	cvtsi2ss xmm0, eax
	mulss xmm0, [_float_1000_00000000]
	cvttss2si eax, xmm0
	test eax, eax
	jg _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_740
	mov [esp+0xc], esi
	mov edi, [ebp+0x8]
	mov [esp+0x8], edi
	mov dword [esp+0x4], _cstring_effect_s_segment7
	mov dword [esp], 0x15
	call _Z14Com_PrintErroriPKcz
	xor eax, eax
	jmp _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_530
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1270:
	mov eax, [esi+0x178]
	mov [ebp+ebx*4-0x78], eax
	lea edx, [ebx+0x1]
	test byte [esi+0x30], 0x2
	jz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_750
	mov eax, [esi+0x17c]
	mov [ebp+edx*4-0x78], eax
	lea edx, [ebx+0x2]
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_750:
	mov eax, [esi+0x180]
	mov [ebp+edx*4-0x78], eax
	lea ebx, [edx+0x1]
	test byte [esi+0x30], 0x4
	jz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_690
	mov eax, [esi+0x184]
	mov [ebp+ebx*4-0x78], eax
	lea ebx, [edx+0x2]
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_690:
	add ecx, 0x1
	cmp ecx, 0x6
	jnz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_760
	test ebx, ebx
	jnz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_770
	xor eax, eax
	xor edx, edx
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1020:
	mov ecx, [ebp-0x1fc]
	mov [ebp+ecx*4-0xf8], eax
	mov ecx, [esi+0x1c0]
	movzx ebx, byte [esi+0x1bc]
	lea edx, [edx+edx*2]
	shl edx, 0x4
	mov edi, [ebp-0x20c]
	mov eax, [edi]
	lea eax, [eax+eax*2]
	shl eax, 0x5
	add edx, eax
	cmp bl, 0x9
	jz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_780
	lea eax, [edx+ecx*4]
	cmp ecx, 0x2
	cmovge edx, eax
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_950:
	mov eax, [ebp-0x200]
	lea ecx, [edx+eax]
	cmp bl, 0x3
	jz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_790
	xor eax, eax
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1080:
	add eax, ecx
	mov [ebp-0x200], eax
	mov ecx, [esi+0x1a8]
	test ecx, ecx
	jz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_800
	mov edi, [ecx+0x14]
	test edi, edi
	jz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_800
	mov eax, [ebp+0x8]
	mov edi, [eax+0x40]
	test edi, edi
	jle _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_810
	cmp ecx, [eax+0x1ec]
	jz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_820
	mov edx, [ebp+0x8]
	xor ebx, ebx
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_830:
	add ebx, 0x1
	cmp edi, ebx
	jz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_810
	mov eax, [edx+0xa44]
	add edx, 0x858
	cmp ecx, eax
	jnz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_830
	jmp _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_840
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_680:
	movss xmm1, dword [_float_3402823466385288598117041]
	mov dword [ebp-0x250], 0x1
	mov ebx, 0x1
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_900:
	pxor xmm0, xmm0
	movss [ebp-0x208], xmm0
	mov edi, 0x1
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_870:
	mov eax, [ebp+edi*4-0x7c]
	lea ecx, [eax+0x8]
	mov edx, [eax+0x4]
	mov [esp], ebx
	movaps xmm0, xmm1
	mov eax, [eax]
	movss [ebp-0x288], xmm1
	call _Z27FX_MaxErrorForIntervalCountiiPKfif
	ucomiss xmm0, [ebp-0x208]
	movss xmm1, dword [ebp-0x288]
	jbe _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_850
	ucomiss xmm0, xmm1
	ja _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_860
	movss [ebp-0x208], xmm0
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_850:
	add edi, 0x1
	cmp edi, 0xd
	jnz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_870
	movss xmm0, dword [ebp-0x208]
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_860:
	ucomiss xmm1, xmm0
	jbe _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_880
	movaps xmm1, xmm0
	subss xmm1, [_float_0_02000000]
	pxor xmm5, xmm5
	ucomiss xmm5, xmm1
	jae _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_890
	mov [ebp-0x250], ebx
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_880:
	add ebx, 0x1
	cmp [ebp-0x25c], ebx
	jge _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_900
	mov eax, [ebp-0x250]
	add eax, 0x1
	jmp _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_910
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_820:
	xor ebx, ebx
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_840:
	cmp [ebp-0x1fc], ebx
	jz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_920
	mov eax, [ebp+ebx*4-0x1f8]
	mov edx, [ebp-0x1fc]
	mov [ebp+edx*4-0x1f8], eax
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_800:
	add dword [ebp-0x1fc], 0x1
	mov edx, [ebp-0x1fc]
	mov ecx, [ebp+0x8]
	cmp edx, [ecx+0x40]
	jge _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_930
	mov eax, edx
	mov ecx, edx
	jmp _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_940
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_780:
	lea edx, [edx+ecx*8]
	jmp _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_950
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_770:
	mov eax, [ebp-0x25c]
	test eax, eax
	jle _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_960
	movss xmm2, dword [_float_3402823466385288598117041]
	mov dword [ebp-0x24c], 0x1
	mov dword [ebp-0x204], 0x1
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1010:
	pxor xmm1, xmm1
	test ebx, ebx
	jg _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_970
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1060:
	ucomiss xmm2, xmm1
	jbe _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_980
	movaps xmm2, xmm1
	subss xmm2, [_float_0_02000000]
	ucomiss xmm2, [_float_0_00000000]
	jp _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_990
	jbe _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1000
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_990:
	mov ecx, [ebp-0x204]
	mov [ebp-0x24c], ecx
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_980:
	add dword [ebp-0x204], 0x1
	mov edi, [ebp-0x204]
	cmp [ebp-0x25c], edi
	jge _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1010
	mov eax, [ebp-0x24c]
	add eax, 0x1
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1070:
	mov edx, eax
	jmp _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1020
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_970:
	pxor xmm1, xmm1
	xor edi, edi
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1050:
	mov eax, [ebp+edi*4-0x78]
	lea ecx, [eax+0x8]
	mov edx, [eax+0x4]
	mov [ebp-0x29c], edx
	mov edx, [ebp-0x204]
	mov [esp], edx
	movaps xmm0, xmm2
	mov edx, [ebp-0x29c]
	mov eax, [eax]
	movss [ebp-0x288], xmm1
	movss [ebp-0x298], xmm2
	call _Z27FX_MaxErrorForIntervalCountiiPKfif
	movss xmm1, dword [ebp-0x288]
	ucomiss xmm0, xmm1
	movss xmm2, dword [ebp-0x298]
	jbe _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1030
	ucomiss xmm0, xmm2
	ja _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1040
	movaps xmm1, xmm0
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1030:
	add edi, 0x1
	cmp ebx, edi
	jnz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1050
	jmp _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1060
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1040:
	movaps xmm1, xmm0
	jmp _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1060
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_960:
	mov eax, 0x2
	jmp _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1070
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1000:
	mov eax, [ebp-0x204]
	add eax, 0x1
	jmp _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1070
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_790:
	mov eax, [esi+0x854]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*2]
	lea eax, [edx+edx+0x1c]
	jmp _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1080
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_810:
	mov ebx, 0xffffffff
	jmp _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_840
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_930:
	mov eax, [ebp-0x260]
	shl eax, 0x2
	mov ebx, [ebp-0x260]
	shl ebx, 0x8
	sub ebx, eax
	mov [ebp-0x224], ebx
	mov edi, [ebp+0x8]
	jmp _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1090
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_920:
	mov ebx, [ebp-0x260]
	mov ecx, [ebp-0x1fc]
	mov [ebp+ecx*4-0x1f8], ebx
	mov ebx, [esi+0x1a8]
	mov eax, [ebx+0x14]
	add [ebp-0x260], eax
	lea edx, [eax*4]
	mov edi, eax
	shl edi, 0x8
	sub edi, edx
	mov edx, [ebx+0x10]
	lea esi, [eax+edx]
	cmp edx, esi
	jz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1100
	lea eax, [edx*4]
	mov ecx, edx
	shl ecx, 0x8
	sub ecx, eax
	add ecx, [ebx+0x1c]
	mov dword [ebp-0x210], 0x0
	sub esi, edx
	mov [ebp-0x26c], esi
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1130:
	movzx eax, byte [ecx+0xb2]
	lea esi, [eax+0x1]
	movzx eax, byte [ecx+0xb3]
	test al, al
	jnz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1110
	xor eax, eax
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1150:
	movzx ebx, byte [ecx+0xb1]
	lea edx, [eax+eax*2]
	shl edx, 0x4
	lea eax, [esi+esi*2]
	shl eax, 0x5
	add edx, eax
	cmp byte [ecx+0xb0], 0x9
	jz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1120
	lea eax, [edx+ebx*4]
	cmp ebx, 0x2
	cmovge edx, eax
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1140:
	add edi, edx
	add dword [ebp-0x210], 0x1
	add ecx, 0xfc
	mov eax, [ebp-0x26c]
	cmp [ebp-0x210], eax
	jnz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1130
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1100:
	add [ebp-0x200], edi
	jmp _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_800
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_890:
	lea eax, [ebx+0x1]
	jmp _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_910
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1120:
	lea edx, [edx+ebx*8]
	jmp _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1140
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1110:
	movzx eax, al
	add eax, 0x1
	jmp _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1150
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_700:
	movzx eax, word [esi+ecx*2+0x754]
	mov [esp+0x10], eax
	mov [esp+0xc], esi
	mov eax, [ebp+0x8]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cstring_effect_s_segment8
	mov dword [esp], 0x15
	call _Z14Com_PrintErroriPKcz
	xor eax, eax
	jmp _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_530
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_730:
	mov [esp+0xc], esi
	mov ebx, [ebp+0x8]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_effect_s_segment9
	mov dword [esp], 0x15
	call _Z14Com_PrintErroriPKcz
	xor eax, eax
	jmp _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_530
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_720:
	mov [esp+0xc], esi
	mov ecx, [ebp+0x8]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_effect_s_segment10
	mov dword [esp], 0x15
	call _Z14Com_PrintErroriPKcz
	xor eax, eax
	jmp _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_530
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1300:
	mov eax, [esi+0x170]
	mov [ebp+ebx*4-0x78], eax
	lea edx, [ebx+0x1]
	test byte [esi+0x30], 0x20
	jz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1160
	mov eax, [esi+0x174]
	mov [ebp+edx*4-0x78], eax
	add ebx, 0x2
	jmp _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_690
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1310:
	mov eax, [esi+0x14c]
	mov [ebp+ebx*4-0x78], eax
	lea edx, [ebx+0x1]
	test byte [esi+0x30], 0x40
	jnz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1170
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1160:
	mov ebx, edx
	jmp _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_690
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1170:
	mov eax, [esi+0x150]
	mov [ebp+edx*4-0x78], eax
	add ebx, 0x2
	jmp _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_690
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1280:
	mov eax, [esi+0x15c]
	mov [ebp+ebx*4-0x78], eax
	lea edx, [ebx+0x1]
	test byte [esi+0x30], 0x8
	jz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1160
	mov eax, [esi+0x160]
	mov [ebp+edx*4-0x78], eax
	add ebx, 0x2
	jmp _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_690
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1290:
	mov eax, [esi+0x164]
	mov [ebp+ebx*4-0x78], eax
	lea edx, [ebx+0x1]
	test byte [esi+0x30], 0x10
	jz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1160
	mov eax, [esi+0x168]
	mov [ebp+edx*4-0x78], eax
	add ebx, 0x2
	jmp _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_690
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1240:
	mov dword [ebp-0x30], 0x0
	mov dword [ebp-0x2c], 0x1
	mov dword [ebp-0x28], 0x6
	mov dword [ebp-0x20], 0x6
	mov dword [ebp-0x24], 0x6
	jmp _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_650
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1250:
	mov dword [ebp-0x30], 0x0
	mov dword [ebp-0x2c], 0x1
	mov dword [ebp-0x28], 0x6
	mov dword [ebp-0x20], 0x4
	mov dword [ebp-0x24], 0x6
	jmp _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_650
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1260:
	mov dword [ebp-0x30], 0x6
	mov dword [ebp-0x2c], 0x6
	mov dword [ebp-0x28], 0x6
	mov dword [ebp-0x20], 0x6
	mov dword [ebp-0x24], 0x6
	jmp _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_650
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1230:
	mov dword [ebp-0x30], 0x6
	mov dword [ebp-0x2c], 0x6
	mov dword [ebp-0x28], 0x6
	mov dword [ebp-0x20], 0x6
	mov dword [ebp-0x24], 0x3
	jmp _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_650
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1210:
	mov dword [ebp-0x30], 0x0
	mov dword [ebp-0x2c], 0x1
	cmp byte [esi+0x1bc], 0x2
	jz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1180
	test byte [esi+0x37], 0x10
	jnz _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1180
	mov eax, 0x1
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1200:
	mov [ebp-0x28], eax
	mov dword [ebp-0x20], 0x4
	mov dword [ebp-0x24], 0x6
	jmp _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_650
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_560:
	jp _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1190
	mov [esp+0xc], esi
	mov ebx, [ebp+0x8]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], _cstring_effect_s_segment11
	mov dword [esp], 0x15
	call _Z14Com_PrintErroriPKcz
	xor eax, eax
	jmp _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_530
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_580:
	mov [esp+0xc], esi
	mov ecx, [ebp+0x8]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], _cstring_effect_s_segment12
	mov dword [esp], 0x15
	call _Z14Com_PrintErroriPKcz
	xor eax, eax
	jmp _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_530
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1180:
	mov eax, 0x2
	jmp _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1200
	
	
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_jumptab_0:
	dd _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1210
	dd _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1210
	dd _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1210
	dd _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1210
	dd _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1220
	dd _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1230
	dd _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1240
	dd _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1250
	dd _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1230
	dd _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1250
	dd _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1260
_Z10FX_ConvertPK17FxEditorEffectDefPFPviE_jumptab_1:
	dd _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1270
	dd _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1280
	dd _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1290
	dd _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1300
	dd _Z10FX_ConvertPK17FxEditorEffectDefPFPviE_1310


;Initialized global or static variables of fx_convert:
SECTION .data


;Initialized constant data of fx_convert:
SECTION .rdata


;Zero initialized global or static variables of fx_convert:
SECTION .bss


;All cstrings:
SECTION .rdata
_cstring_default:		db "default",0
_cstring_error_no_physics:		db "ERROR: no physics preset specified for the FX model [%s]",0ah,0
_cstring_effect_s_segment:		db "effect ",27h,"%s",27h," segment ",27h,"%s",27h,0ah,"Velocity is ",27h,"relative to offset",27h,", but generation offset is ",27h,"none",27h,0ah,0
_cstring_effect_s_segment1:		db "effect ",27h,"%s",27h," segment ",27h,"%s",27h,":",0ah,"material %s is a %i x %i atlas, which is not a power of 2 on both axes",0ah,0
_cstring_effect_s_segment2:		db "effect ",27h,"%s",27h," segment ",27h,"%s",27h,":",0ah,"material %s is a %i x %i atlas, but material %s is a %i x %i atlas",0ah,0
_cstring_effect_s_segment3:		db "effect ",27h,"%s",27h," segment ",27h,"%s",27h,0ah,"Lighting fraction larger than 1.0.",0ah,0
_cstring_effect_s_segment4:		db "effect ",27h,"%s",27h," segment ",27h,"%s",27h,0ah,"Elasticity %g to %g can go outside the range 0 to 1.",0ah,0
_cstring_effect_s_segment5:		db "effect ",27h,"%s",27h," segment ",27h,"%s",27h,0ah,"This type of segment must have at least one visual specified.",0ah,0
_cstring_effect_s_segment6:		db "effect ",27h,"%s",27h," segment ",27h,"%s",27h,0ah,"Trail cross-section cannot be empty.",0ah,0
_cstring_effect_s_segment7:		db "effect ",27h,"%s",27h," segment ",27h,"%s",27h,0ah,"Trail texture repeat dist too close to, or below 0.",0ah,0
_cstring_effect_s_segment8:		db "effect ",27h,"%s",27h," segment ",27h,"%s",27h,0ah,"Index references out of range vertex ",27h,"%i",27h,".",0ah,0
_cstring_effect_s_segment9:		db "effect ",27h,"%s",27h," segment ",27h,"%s",27h,0ah,"Trail split dist <= 0.",0ah,0
_cstring_effect_s_segment10:		db "effect ",27h,"%s",27h," segment ",27h,"%s",27h,0ah,"Trail repeat dist <= 0.",0ah,0
_cstring_effect_s_segment11:		db "effect ",27h,"%s",27h," segment ",27h,"%s",27h,0ah,"Negative lighting fraction.",0ah,0
_cstring_effect_s_segment12:		db "effect ",27h,"%s",27h," segment ",27h,"%s",27h,0ah,"Decals cannot have a non-zero lighting fraction.",0ah,0



;All constant floats and doubles:
SECTION .rdata
_float_0_00000000:		dd 0x0	; 0
_float_0_00000100:		dd 0x358637be	; 1e-06
_float_0_50000000:		dd 0x3f000000	; 0.5
_float_0_01745329:		dd 0x3c8efa35	; 0.0174533
_float_0_00001745:		dd 0x379268a9	; 1.74533e-05
_float_0_01000000:		dd 0x3c23d70a	; 0.01
_float_1_00000000:		dd 0x3f800000	; 1
_float_0_00010000:		dd 0x38d1b717	; 0.0001
_float_0_00020000:		dd 0x3951b717	; 0.0002
_float_1000_00000000:		dd 0x447a0000	; 1000
_float_255_00000000:		dd 0x437f0000	; 255
_double_0_01745329:		dq 0x3f91df46a2529d39	; 0.0174533
_float_0_94999999:		dd 0x3f733333	; 0.95
_float__0_00100000:		dd 0xba83126f	; -0.001
_float_1_00100005:		dd 0x3f8020c5	; 1.001
_float_3402823466385288598117041:		dd 0x7f7fffff	; 3.40282e+38
_float_0_02000000:		dd 0x3ca3d70a	; 0.02

