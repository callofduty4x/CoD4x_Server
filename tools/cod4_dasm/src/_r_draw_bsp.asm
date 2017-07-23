;Imports of r_draw_bsp:
	extern rgp
	extern R_SetIndexData
	extern R_DrawIndexedPrimitive
	extern r_lightMap
	extern R_OverrideGrayscaleImage
	extern R_SetSamplerState
	extern R_SetupPassPerObjectArgs
	extern R_SetupPassPerPrimArgs
	extern R_ReadPrimDrawSurfInt
	extern R_ReadPrimDrawSurfData
	extern sc_enable
	extern gfxRenderTargets
	extern R_SetReflectionProbe
	extern R_SetLightmap

;Exports of r_draw_bsp:
	global _GLOBAL__I_g_layerDataStride
	global _Z41__static_initialization_and_destruction_0ii_dup_1
	global R_DrawBspDrawSurfs
	global R_DrawBspDrawSurfsLit
	global R_DrawBspDrawSurfsPreTess
	global R_SetStreamsForBspSurface
	global R_DrawBspDrawSurfsLitPreTess
	global g_layerDataStride


SECTION .text


;R_DrawBspDrawSurfs(unsigned int const*, GfxCmdBufState*, GfxDrawSurfListInfo const*)
R_DrawBspDrawSurfs:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov eax, [ebp+0xc]
	add eax, 0x90
	mov [ebp-0x34], eax
	mov edx, [ebp+0x8]
	mov [ebp-0x2c], edx
	xor ecx, ecx
	xor esi, esi
	mov dword [ebp-0x3c], 0xffffffff
	mov dword [ebp-0x38], 0x0
	mov edx, [edx]
	mov [ebp-0x40], edx
	mov ebx, [ebp-0x2c]
	add ebx, 0x4
	mov [ebp-0x30], ebx
	test edx, edx
	jz R_DrawBspDrawSurfs_10
R_DrawBspDrawSurfs_70:
	mov eax, edx
	add eax, 0x1
	shr eax, 1
	lea eax, [ebx+eax*4]
	mov [ebp-0x2c], eax
	xor edi, edi
	jmp R_DrawBspDrawSurfs_20
R_DrawBspDrawSurfs_60:
	mov ecx, ebx
	xor esi, esi
R_DrawBspDrawSurfs_100:
	movzx eax, word [ebx+0xa]
	add esi, eax
	add edi, 0x1
	cmp [ebp-0x40], edi
	jz R_DrawBspDrawSurfs_30
R_DrawBspDrawSurfs_20:
	mov eax, rgp
	mov edx, [eax+0x20a0]
	mov ebx, [ebp-0x30]
	movzx eax, word [ebx+edi*2]
	lea ebx, [eax+eax*2]
	shl ebx, 0x4
	add ebx, [edx+0x294]
	mov eax, [ebp-0x3c]
	cmp eax, [ebx+0x4]
	jz R_DrawBspDrawSurfs_40
R_DrawBspDrawSurfs_90:
	test ecx, ecx
	jz R_DrawBspDrawSurfs_50
	movzx eax, word [ecx+0x8]
	mov [ebp-0x24], eax
	mov [ebp-0x20], esi
	mov [esp+0x8], esi
	mov eax, [ecx+0xc]
	mov edx, [edx+0x14]
	lea eax, [edx+eax*2]
	mov [esp+0x4], eax
	mov edx, [ebp-0x34]
	mov [esp], edx
	call R_SetIndexData
	mov [ebp-0x1c], eax
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov eax, [ebp-0x34]
	mov [esp], eax
	call R_DrawIndexedPrimitive
R_DrawBspDrawSurfs_50:
	mov edx, [ebx+0xc]
	mov [ebp-0x38], edx
	mov esi, [ebx+0x4]
	cmp [ebp-0x3c], esi
	jz R_DrawBspDrawSurfs_60
	mov [esp+0x4], ebx
	mov eax, [ebp-0x34]
	mov [esp], eax
	call R_SetStreamsForBspSurface
	mov ecx, ebx
	mov [ebp-0x3c], esi
	xor esi, esi
	movzx eax, word [ebx+0xa]
	add esi, eax
	add edi, 0x1
	cmp [ebp-0x40], edi
	jnz R_DrawBspDrawSurfs_20
R_DrawBspDrawSurfs_30:
	mov edx, [ebp-0x2c]
	mov edx, [edx]
	mov [ebp-0x40], edx
	mov ebx, [ebp-0x2c]
	add ebx, 0x4
	mov [ebp-0x30], ebx
	test edx, edx
	jnz R_DrawBspDrawSurfs_70
R_DrawBspDrawSurfs_10:
	test ecx, ecx
	jz R_DrawBspDrawSurfs_80
	movzx eax, word [ecx+0x8]
	mov [ebp-0x24], eax
	mov [ebp-0x20], esi
	mov [esp+0x8], esi
	mov eax, rgp
	mov edx, [eax+0x20a0]
	mov eax, [ecx+0xc]
	mov edx, [edx+0x14]
	lea eax, [edx+eax*2]
	mov [esp+0x4], eax
	mov eax, [ebp-0x34]
	mov [esp], eax
	call R_SetIndexData
	mov [ebp-0x1c], eax
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov edx, [ebp-0x34]
	mov [esp], edx
	call R_DrawIndexedPrimitive
R_DrawBspDrawSurfs_80:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_DrawBspDrawSurfs_40:
	lea eax, [esi+esi*2]
	add eax, [ebp-0x38]
	cmp eax, [ebx+0xc]
	jnz R_DrawBspDrawSurfs_90
	jmp R_DrawBspDrawSurfs_100
	add [eax], al


;R_DrawBspDrawSurfsLit(unsigned int const*, GfxCmdBufContext, GfxCmdBufContext, GfxDrawSurfListInfo const*)
R_DrawBspDrawSurfsLit:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xac
	mov esi, [ebp+0xc]
	mov edi, [ebp+0x10]
	mov [ebp-0x58], esi
	mov [ebp-0x54], edi
	mov eax, [edi+0xc4]
	mov [ebp-0x90], eax
	movzx ebx, byte [eax+0xf]
	test bl, 0x1
	jnz R_DrawBspDrawSurfsLit_10
	test bl, 0x2
	jnz R_DrawBspDrawSurfsLit_20
R_DrawBspDrawSurfsLit_300:
	and bl, 0x4
	jnz R_DrawBspDrawSurfsLit_30
R_DrawBspDrawSurfsLit_310:
	mov edx, [ebp-0x54]
	mov edx, [edx+0x54]
	mov [ebp-0x3c], edx
	mov ecx, [ebp-0x54]
	mov ecx, [ecx+0x58]
	mov [ebp-0x34], ecx
	mov ebx, [ebp-0x54]
	mov ebx, [ebx+0x5c]
	mov [ebp-0x38], ebx
	mov edx, rgp
	mov eax, [edx+0x20a0]
	mov esi, [eax+0xec]
	mov [ebp-0x40], esi
	mov edi, [eax+0x148]
	mov [ebp-0x44], edi
	mov eax, [eax+0x14c]
	mov [ebp-0x48], eax
	mov edx, [edx+0x2008]
	add edx, 0x4
	mov [ebp-0x2c], edx
	mov eax, [ebp-0x90]
	movzx edx, byte [eax+0xf]
	mov ecx, [ebp-0x58]
	mov eax, [ecx+0xca8]
	mov eax, [eax+0x11822c]
	mov [ebp-0x50], eax
	mov ebx, [ebp-0x54]
	add ebx, 0x90
	mov [ebp-0x5c], ebx
	mov esi, edx
	and esi, 0x1
	mov [ebp-0x70], esi
	mov edi, edx
	and edi, 0x2
	mov [ebp-0x6c], edi
	and edx, 0x4
	mov [ebp-0x68], edx
	mov eax, r_lightMap
	mov eax, [eax]
	cmp dword [eax+0xc], 0x1
	setnz al
	movzx eax, al
	mov [ebp-0x64], eax
	mov eax, [ebp-0x54]
	mov eax, [eax+0x90]
	mov [ebp-0x60], eax
	mov edx, [ebp+0x8]
	mov [ebp-0x4c], edx
	mov dword [ebp-0x78], 0xff
	mov dword [ebp-0x74], 0x1f
	xor edi, edi
	mov dword [ebp-0x80], 0x0
	mov dword [ebp-0x88], 0xffffffff
	mov dword [ebp-0x84], 0x0
	mov ebx, edx
	mov esi, edx
	mov ebx, [ebx]
	mov [ebp-0x8c], ebx
	add esi, 0x4
	mov [ebp-0x30], esi
	test ebx, ebx
	jz R_DrawBspDrawSurfsLit_40
R_DrawBspDrawSurfsLit_240:
	mov eax, ebx
	add eax, 0x1
	shr eax, 1
	lea eax, [esi+eax*4]
	mov [ebp-0x4c], eax
	mov eax, [ebp-0x74]
	mov [ebp-0x9c], eax
	mov edx, [ebp-0x78]
	mov dword [ebp-0x7c], 0x0
R_DrawBspDrawSurfsLit_180:
	mov eax, rgp
	mov ecx, [eax+0x20a0]
	mov ebx, [ebp-0x7c]
	mov esi, [ebp-0x30]
	movzx eax, word [esi+ebx*2]
	lea ebx, [eax+eax*2]
	shl ebx, 0x4
	add ebx, [ecx+0x294]
	movzx eax, byte [ebx+0x15]
	mov [ebp-0x78], eax
	cmp eax, edx
	jz R_DrawBspDrawSurfsLit_50
R_DrawBspDrawSurfsLit_190:
	test edi, edi
	jz R_DrawBspDrawSurfsLit_60
	movzx eax, word [edi+0x8]
	mov [ebp-0x24], eax
	mov eax, [ebp-0x80]
	mov [ebp-0x20], eax
	mov [esp+0x8], eax
	mov eax, [edi+0xc]
	mov edx, [ecx+0x14]
	lea eax, [edx+eax*2]
	mov [esp+0x4], eax
	mov edx, [ebp-0x5c]
	mov [esp], edx
	call R_SetIndexData
	mov [ebp-0x1c], eax
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x5c]
	mov [esp], ecx
	call R_DrawIndexedPrimitive
R_DrawBspDrawSurfsLit_60:
	mov esi, [ebx+0xc]
	mov [ebp-0x84], esi
	mov esi, [ebx+0x4]
	cmp esi, [ebp-0x88]
	jz R_DrawBspDrawSurfsLit_70
	mov [esp+0x4], ebx
	mov edi, [ebp-0x5c]
	mov [esp], edi
	call R_SetStreamsForBspSurface
	mov [ebp-0x88], esi
R_DrawBspDrawSurfsLit_70:
	movzx eax, byte [ebx+0x15]
	mov [ebp-0x78], eax
	movzx esi, byte [ebx+0x14]
	mov edx, esi
	movzx edx, dl
	mov [ebp-0x74], edx
	mov edx, [ebp-0x70]
	test edx, edx
	jz R_DrawBspDrawSurfsLit_80
	mov edi, [ebp-0x40]
	lea ecx, [edi+eax*4]
	cmp ecx, [ebp-0x3c]
	jz R_DrawBspDrawSurfsLit_80
	mov edx, [ecx]
	mov edi, [ebp-0x60]
	mov eax, [edi+0x3a0]
	mov [eax+0x38], edx
	test edx, edx
	jz R_DrawBspDrawSurfsLit_90
	mov eax, [ebp-0x60]
	or dword [eax+0x444], 0x2
R_DrawBspDrawSurfsLit_90:
	mov [ebp-0x3c], ecx
R_DrawBspDrawSurfsLit_80:
	mov edx, esi
	cmp dl, 0x1f
	jz R_DrawBspDrawSurfsLit_100
	mov eax, [ebp-0x6c]
	test eax, eax
	jz R_DrawBspDrawSurfsLit_110
	mov eax, [ebp-0x64]
	test eax, eax
	jnz R_DrawBspDrawSurfsLit_120
	mov eax, [ebp-0x50]
	test eax, eax
	jz R_DrawBspDrawSurfsLit_130
	mov eax, [ebp-0x2c]
R_DrawBspDrawSurfsLit_260:
	mov ecx, eax
R_DrawBspDrawSurfsLit_270:
	cmp ecx, [ebp-0x34]
	jz R_DrawBspDrawSurfsLit_110
	mov edx, [ecx]
	mov edi, [ebp-0x60]
	mov eax, [edi+0x3a0]
	mov [eax+0x70], edx
	test edx, edx
	jz R_DrawBspDrawSurfsLit_140
	mov eax, [ebp-0x60]
	or dword [eax+0x444], 0x4
R_DrawBspDrawSurfsLit_140:
	mov [ebp-0x34], ecx
R_DrawBspDrawSurfsLit_110:
	mov eax, [ebp-0x68]
	test eax, eax
	jz R_DrawBspDrawSurfsLit_100
	mov eax, [ebp-0x64]
	test eax, eax
	jnz R_DrawBspDrawSurfsLit_150
	mov edx, [ebp-0x74]
	mov esi, [ebp-0x48]
	lea ecx, [esi+edx*4]
R_DrawBspDrawSurfsLit_280:
	cmp ecx, [ebp-0x38]
	jz R_DrawBspDrawSurfsLit_100
	mov edx, [ecx]
	mov edi, [ebp-0x60]
	mov eax, [edi+0x3a0]
	mov [eax+0xa8], edx
	test edx, edx
	jz R_DrawBspDrawSurfsLit_160
	mov eax, [ebp-0x60]
	or dword [eax+0x444], 0x8
R_DrawBspDrawSurfsLit_160:
	mov edi, ebx
	mov [ebp-0x38], ecx
	mov dword [ebp-0x80], 0x0
R_DrawBspDrawSurfsLit_290:
	movzx eax, word [ebx+0xa]
	add [ebp-0x80], eax
	add dword [ebp-0x7c], 0x1
	mov ecx, [ebp-0x7c]
	cmp [ebp-0x8c], ecx
	jz R_DrawBspDrawSurfsLit_170
R_DrawBspDrawSurfsLit_230:
	mov ecx, [ebp-0x74]
	mov [ebp-0x9c], ecx
	mov edx, [ebp-0x78]
	jmp R_DrawBspDrawSurfsLit_180
R_DrawBspDrawSurfsLit_50:
	movzx edx, byte [ebx+0x14]
	mov [ebp-0x74], edx
	mov esi, [ebp-0x9c]
	cmp edx, esi
	jnz R_DrawBspDrawSurfsLit_190
	mov esi, [ebx+0x4]
	cmp esi, [ebp-0x88]
	jz R_DrawBspDrawSurfsLit_200
R_DrawBspDrawSurfsLit_320:
	test edi, edi
	jz R_DrawBspDrawSurfsLit_210
	movzx eax, word [edi+0x8]
	mov [ebp-0x24], eax
	mov esi, [ebp-0x80]
	mov [ebp-0x20], esi
	mov [esp+0x8], esi
	mov eax, [edi+0xc]
	mov edx, [ecx+0x14]
	lea eax, [edx+eax*2]
	mov [esp+0x4], eax
	mov edi, [ebp-0x5c]
	mov [esp], edi
	call R_SetIndexData
	mov [ebp-0x1c], eax
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov [esp], edi
	call R_DrawIndexedPrimitive
	mov esi, [ebx+0x4]
R_DrawBspDrawSurfsLit_210:
	mov eax, [ebx+0xc]
	mov [ebp-0x84], eax
	cmp esi, [ebp-0x88]
	jnz R_DrawBspDrawSurfsLit_220
R_DrawBspDrawSurfsLit_100:
	mov edi, ebx
	mov dword [ebp-0x80], 0x0
	movzx eax, word [ebx+0xa]
	add [ebp-0x80], eax
	add dword [ebp-0x7c], 0x1
	mov ecx, [ebp-0x7c]
	cmp [ebp-0x8c], ecx
	jnz R_DrawBspDrawSurfsLit_230
R_DrawBspDrawSurfsLit_170:
	mov ebx, [ebp-0x4c]
	mov esi, [ebp-0x4c]
	mov ebx, [ebx]
	mov [ebp-0x8c], ebx
	add esi, 0x4
	mov [ebp-0x30], esi
	test ebx, ebx
	jnz R_DrawBspDrawSurfsLit_240
R_DrawBspDrawSurfsLit_40:
	test edi, edi
	jz R_DrawBspDrawSurfsLit_250
	movzx eax, word [edi+0x8]
	mov [ebp-0x24], eax
	mov edx, [ebp-0x80]
	mov [ebp-0x20], edx
	mov [esp+0x8], edx
	mov eax, rgp
	mov edx, [eax+0x20a0]
	mov eax, [edi+0xc]
	mov edx, [edx+0x14]
	lea eax, [edx+eax*2]
	mov [esp+0x4], eax
	mov ecx, [ebp-0x5c]
	mov [esp], ecx
	call R_SetIndexData
	mov [ebp-0x1c], eax
	lea eax, [ebp-0x24]
	mov [esp+0x4], eax
	mov ebx, [ebp-0x5c]
	mov [esp], ebx
	call R_DrawIndexedPrimitive
R_DrawBspDrawSurfsLit_250:
	mov edi, [ebp-0x3c]
	mov esi, [ebp-0x54]
	mov [esi+0x54], edi
	mov eax, [ebp-0x34]
	mov [esi+0x58], eax
	mov edx, [ebp-0x38]
	mov [esi+0x5c], edx
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_DrawBspDrawSurfsLit_130:
	mov ecx, [ebp-0x74]
	mov esi, [ebp-0x44]
	lea eax, [esi+ecx*4]
	jmp R_DrawBspDrawSurfsLit_260
R_DrawBspDrawSurfsLit_120:
	mov eax, r_lightMap
	mov eax, [eax]
	mov [esp], eax
	call R_OverrideGrayscaleImage
	lea ecx, [eax+0x4]
	jmp R_DrawBspDrawSurfsLit_270
R_DrawBspDrawSurfsLit_150:
	mov eax, r_lightMap
	mov eax, [eax]
	mov [esp], eax
	call R_OverrideGrayscaleImage
	lea ecx, [eax+0x4]
	jmp R_DrawBspDrawSurfsLit_280
R_DrawBspDrawSurfsLit_220:
	mov [esp+0x4], ebx
	mov edx, [ebp-0x5c]
	mov [esp], edx
	call R_SetStreamsForBspSurface
	mov edi, ebx
	mov [ebp-0x88], esi
	mov dword [ebp-0x80], 0x0
	jmp R_DrawBspDrawSurfsLit_290
R_DrawBspDrawSurfsLit_10:
	mov dword [esp+0x8], 0x72
	mov dword [esp+0x4], 0x1
	mov [esp], edi
	call R_SetSamplerState
	test bl, 0x2
	jz R_DrawBspDrawSurfsLit_300
R_DrawBspDrawSurfsLit_20:
	mov dword [esp+0x8], 0x62
	mov dword [esp+0x4], 0x2
	mov [esp], edi
	call R_SetSamplerState
	and bl, 0x4
	jz R_DrawBspDrawSurfsLit_310
R_DrawBspDrawSurfsLit_30:
	mov dword [esp+0x8], 0x62
	mov dword [esp+0x4], 0x3
	mov [esp], edi
	call R_SetSamplerState
	jmp R_DrawBspDrawSurfsLit_310
R_DrawBspDrawSurfsLit_200:
	mov edx, [ebp-0x80]
	lea eax, [edx+edx*2]
	add eax, [ebp-0x84]
	cmp eax, [ebx+0xc]
	jnz R_DrawBspDrawSurfsLit_320
	jmp R_DrawBspDrawSurfsLit_290
	nop


;R_DrawBspDrawSurfsPreTess(unsigned int const*, GfxCmdBufContext)
R_DrawBspDrawSurfsPreTess:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov dword [ebp-0x48], 0x0
	mov dword [ebp-0x44], 0x0
	mov ebx, [ebp+0xc]
	mov esi, [ebp+0x10]
	mov [ebp-0x2c], esi
	mov [esp], ebx
	mov [esp+0x4], esi
	call R_SetupPassPerObjectArgs
	mov [ebp-0x48], ebx
	mov [ebp-0x44], esi
	mov eax, [ebp-0x48]
	mov edx, [ebp-0x44]
	mov [esp], eax
	mov [esp+0x4], edx
	call R_SetupPassPerPrimArgs
	mov eax, [ebp+0x8]
	mov [ebp-0x1c], eax
R_DrawBspDrawSurfsPreTess_60:
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call R_ReadPrimDrawSurfInt
	mov [ebp-0x3c], eax
	test eax, eax
	jnz R_DrawBspDrawSurfsPreTess_10
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_DrawBspDrawSurfsPreTess_10:
	lea edx, [ebp-0x1c]
	mov [esp], edx
	call R_ReadPrimDrawSurfInt
	mov [ebp-0x38], eax
	mov eax, [ebp-0x3c]
	mov [esp+0x4], eax
	lea edx, [ebp-0x1c]
	mov [esp], edx
	call R_ReadPrimDrawSurfData
	mov esi, eax
	mov ecx, 0xffffffff
	xor edi, edi
	mov dword [ebp-0x30], 0x0
	mov dword [ebp-0x34], 0x0
	mov eax, [ebp-0x2c]
	add eax, 0x90
	mov [ebp-0x4c], eax
	jmp R_DrawBspDrawSurfsPreTess_20
R_DrawBspDrawSurfsPreTess_50:
	mov ecx, [ebx+0x4]
	mov [ebp-0x30], ebx
R_DrawBspDrawSurfsPreTess_40:
	movzx eax, word [esi+0x2]
	add [ebp-0x34], eax
	add edi, 0x1
	add esi, 0x4
	cmp [ebp-0x3c], edi
	jz R_DrawBspDrawSurfsPreTess_30
R_DrawBspDrawSurfsPreTess_20:
	mov eax, rgp
	mov edx, [eax+0x20a0]
	movzx eax, word [esi]
	lea ebx, [eax+eax*2]
	shl ebx, 0x4
	add ebx, [edx+0x294]
	cmp ecx, [ebx+0x4]
	jz R_DrawBspDrawSurfsPreTess_40
	mov eax, [ebp-0x34]
	test eax, eax
	jz R_DrawBspDrawSurfsPreTess_50
	mov edx, [ebp-0x30]
	mov [esp+0x4], edx
	mov eax, [ebp-0x4c]
	mov [esp], eax
	call R_SetStreamsForBspSurface
	mov edx, [ebp-0x30]
	movzx eax, word [edx+0x8]
	mov [ebp-0x28], eax
	mov eax, [ebp-0x34]
	mov [ebp-0x24], eax
	mov edx, [ebp-0x38]
	mov [ebp-0x20], edx
	lea eax, [ebp-0x28]
	mov [esp+0x4], eax
	mov edx, [ebp-0x4c]
	mov [esp], edx
	call R_DrawIndexedPrimitive
	mov edx, [ebp-0x34]
	lea eax, [edx+edx*2]
	add [ebp-0x38], eax
	mov dword [ebp-0x34], 0x0
	jmp R_DrawBspDrawSurfsPreTess_50
R_DrawBspDrawSurfsPreTess_30:
	mov eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov edx, [ebp-0x4c]
	mov [esp], edx
	call R_SetStreamsForBspSurface
	mov edx, [ebp-0x30]
	movzx eax, word [edx+0x8]
	mov [ebp-0x28], eax
	mov eax, [ebp-0x34]
	mov [ebp-0x24], eax
	mov edx, [ebp-0x38]
	mov [ebp-0x20], edx
	lea eax, [ebp-0x28]
	mov [esp+0x4], eax
	mov edx, [ebp-0x4c]
	mov [esp], edx
	call R_DrawIndexedPrimitive
	jmp R_DrawBspDrawSurfsPreTess_60


;R_SetStreamsForBspSurface(GfxCmdBufPrimState*, srfTriangles_t const*)
R_SetStreamsForBspSurface:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov ebx, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov eax, [ebx+0x8]
	mov edi, [eax*4+g_layerDataStride]
	test edi, edi
	jnz R_SetStreamsForBspSurface_10
	mov eax, [edx+0x4]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*2]
	lea esi, [edx*4]
	mov eax, rgp
	mov eax, [eax+0x20a0]
	mov ecx, [eax+0x38]
	cmp ecx, [ebx+0x10]
	jz R_SetStreamsForBspSurface_20
R_SetStreamsForBspSurface_60:
	mov [ebx+0x10], ecx
	mov [ebx+0x14], esi
	mov dword [ebx+0xc], 0x2c
	mov eax, [ebx]
	mov edx, [eax]
	mov dword [esp+0x10], 0x2c
	mov [esp+0xc], esi
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call dword [edx+0x190]
R_SetStreamsForBspSurface_70:
	mov ecx, [ebx+0x1c]
	test ecx, ecx
	jz R_SetStreamsForBspSurface_30
R_SetStreamsForBspSurface_100:
	mov dword [ebx+0x1c], 0x0
	mov dword [ebx+0x20], 0x0
	mov dword [ebx+0x18], 0x0
	mov eax, [ebx]
	mov edx, [eax]
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call dword [edx+0x190]
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_SetStreamsForBspSurface_10:
	mov eax, [edx]
	mov [ebp-0x20], eax
	mov eax, rgp
	mov ecx, [eax+0x20a0]
	mov eax, [ecx+0x44]
	mov [ebp-0x1c], eax
	mov eax, [edx+0x4]
	lea edx, [eax+eax*4]
	lea edx, [eax+edx*2]
	lea esi, [edx*4]
	mov ecx, [ecx+0x38]
	cmp ecx, [ebx+0x10]
	jz R_SetStreamsForBspSurface_40
R_SetStreamsForBspSurface_80:
	mov [ebx+0x10], ecx
	mov [ebx+0x14], esi
	mov dword [ebx+0xc], 0x2c
	mov eax, [ebx]
	mov edx, [eax]
	mov dword [esp+0x10], 0x2c
	mov [esp+0xc], esi
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call dword [edx+0x190]
R_SetStreamsForBspSurface_90:
	mov ecx, [ebp-0x1c]
	cmp ecx, [ebx+0x1c]
	jz R_SetStreamsForBspSurface_50
R_SetStreamsForBspSurface_130:
	mov [ebx+0x1c], ecx
	mov eax, [ebp-0x20]
	mov [ebx+0x20], eax
	mov [ebx+0x18], edi
	mov eax, [ebx]
	mov edx, [eax]
	mov [esp+0x10], edi
	mov ecx, [ebp-0x20]
	mov [esp+0xc], ecx
	mov ecx, [ebp-0x1c]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call dword [edx+0x190]
R_SetStreamsForBspSurface_110:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_SetStreamsForBspSurface_20:
	cmp esi, [ebx+0x14]
	jnz R_SetStreamsForBspSurface_60
	cmp dword [ebx+0xc], 0x2c
	jnz R_SetStreamsForBspSurface_60
	jmp R_SetStreamsForBspSurface_70
R_SetStreamsForBspSurface_40:
	cmp esi, [ebx+0x14]
	jnz R_SetStreamsForBspSurface_80
	cmp dword [ebx+0xc], 0x2c
	jnz R_SetStreamsForBspSurface_80
	jmp R_SetStreamsForBspSurface_90
R_SetStreamsForBspSurface_30:
	mov edx, [ebx+0x20]
	test edx, edx
	jnz R_SetStreamsForBspSurface_100
	mov eax, [ebx+0x18]
	test eax, eax
	jnz R_SetStreamsForBspSurface_100
	jmp R_SetStreamsForBspSurface_110
R_SetStreamsForBspSurface_50:
	mov eax, [ebp-0x20]
	cmp eax, [ebx+0x20]
	jz R_SetStreamsForBspSurface_120
	mov ecx, [ebp-0x1c]
	jmp R_SetStreamsForBspSurface_130
R_SetStreamsForBspSurface_120:
	cmp edi, [ebx+0x18]
	jz R_SetStreamsForBspSurface_110
	mov ecx, [ebp-0x1c]
	jmp R_SetStreamsForBspSurface_130


;R_DrawBspDrawSurfsLitPreTess(unsigned int const*, GfxCmdBufContext)
R_DrawBspDrawSurfsLitPreTess:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov dword [ebp-0x50], 0x0
	mov dword [ebp-0x4c], 0x0
	mov dword [ebp-0x58], 0x0
	mov dword [ebp-0x54], 0x0
	mov dword [ebp-0x60], 0x0
	mov dword [ebp-0x5c], 0x0
	mov dword [ebp-0x68], 0x0
	mov dword [ebp-0x64], 0x0
	mov eax, [ebp+0x10]
	mov [ebp-0x30], eax
	mov edx, [ebp+0xc]
	mov [ebp-0x2c], edx
	mov eax, sc_enable
	mov eax, [eax]
	cmp byte [eax+0xc], 0x0
	jz R_DrawBspDrawSurfsLitPreTess_10
	mov eax, gfxRenderTargets
	mov eax, [eax+0x78]
R_DrawBspDrawSurfsLitPreTess_30:
	mov edx, [ebp-0x2c]
	mov [edx+0xc60], eax
	mov eax, [ebp+0x8]
	mov [ebp-0x1c], eax
R_DrawBspDrawSurfsLitPreTess_70:
	lea eax, [ebp-0x1c]
	mov [esp], eax
	call R_ReadPrimDrawSurfInt
	mov [ebp-0x44], eax
	test eax, eax
	jnz R_DrawBspDrawSurfsLitPreTess_20
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
R_DrawBspDrawSurfsLitPreTess_10:
	mov eax, rgp
	mov eax, [eax+0x2008]
	jmp R_DrawBspDrawSurfsLitPreTess_30
R_DrawBspDrawSurfsLitPreTess_20:
	lea edx, [ebp-0x1c]
	mov [esp], edx
	call R_ReadPrimDrawSurfInt
	mov [ebp-0x40], eax
	mov eax, [ebp-0x44]
	mov [esp+0x4], eax
	lea edx, [ebp-0x1c]
	mov [esp], edx
	call R_ReadPrimDrawSurfData
	mov edi, eax
	mov dword [ebp-0x38], 0xff
	mov dword [ebp-0x34], 0x1f
	mov dword [ebp-0x3c], 0x0
	mov eax, [ebp-0x30]
	add eax, 0x90
	mov [ebp-0x6c], eax
R_DrawBspDrawSurfsLitPreTess_60:
	mov eax, rgp
	mov edx, [eax+0x20a0]
	movzx eax, word [edi]
	lea esi, [eax+eax*2]
	shl esi, 0x4
	add esi, [edx+0x294]
	movzx ebx, byte [esi+0x15]
	cmp [ebp-0x38], ebx
	jnz R_DrawBspDrawSurfsLitPreTess_40
	movzx eax, byte [esi+0x14]
	cmp [ebp-0x34], eax
	jz R_DrawBspDrawSurfsLitPreTess_50
R_DrawBspDrawSurfsLitPreTess_40:
	movzx eax, byte [esi+0x14]
	mov [ebp-0x34], eax
	mov edx, [ebp-0x30]
	mov [ebp-0x64], edx
	mov eax, [ebp-0x2c]
	mov [ebp-0x68], eax
	mov [esp+0x8], ebx
	mov eax, [ebp-0x68]
	mov edx, [ebp-0x64]
	mov [esp], eax
	mov [esp+0x4], edx
	call R_SetReflectionProbe
	mov edx, [ebp-0x30]
	mov [ebp-0x5c], edx
	mov eax, [ebp-0x2c]
	mov [ebp-0x60], eax
	mov edx, [ebp-0x34]
	mov [esp+0x8], edx
	mov eax, [ebp-0x60]
	mov edx, [ebp-0x5c]
	mov [esp], eax
	mov [esp+0x4], edx
	call R_SetLightmap
	mov edx, [ebp-0x30]
	mov [ebp-0x54], edx
	mov eax, [ebp-0x2c]
	mov [ebp-0x58], eax
	mov eax, [ebp-0x58]
	mov edx, [ebp-0x54]
	mov [esp], eax
	mov [esp+0x4], edx
	call R_SetupPassPerObjectArgs
	mov edx, [ebp-0x30]
	mov [ebp-0x4c], edx
	mov eax, [ebp-0x2c]
	mov [ebp-0x50], eax
	mov eax, [ebp-0x50]
	mov edx, [ebp-0x4c]
	mov [esp], eax
	mov [esp+0x4], edx
	call R_SetupPassPerPrimArgs
	mov [ebp-0x38], ebx
R_DrawBspDrawSurfsLitPreTess_50:
	movzx ebx, word [edi+0x2]
	mov [esp+0x4], esi
	mov edx, [ebp-0x6c]
	mov [esp], edx
	call R_SetStreamsForBspSurface
	movzx eax, word [esi+0x8]
	mov [ebp-0x28], eax
	mov [ebp-0x24], ebx
	mov eax, [ebp-0x40]
	mov [ebp-0x20], eax
	lea edx, [ebp-0x28]
	mov [esp+0x4], edx
	mov eax, [ebp-0x6c]
	mov [esp], eax
	call R_DrawIndexedPrimitive
	movzx eax, word [edi+0x2]
	lea eax, [eax+eax*2]
	add [ebp-0x40], eax
	add dword [ebp-0x3c], 0x1
	add edi, 0x4
	mov edx, [ebp-0x3c]
	cmp [ebp-0x44], edx
	jnz R_DrawBspDrawSurfsLitPreTess_60
	jmp R_DrawBspDrawSurfsLitPreTess_70


;Initialized global or static variables of r_draw_bsp:
SECTION .data
g_layerDataStride: dd 0x0, 0x0, 0x0, 0x8, 0xc, 0x10, 0x14, 0x18, 0x18, 0x1c, 0x20, 0x20, 0x24, 0x28, 0x0, 0x0


;Initialized constant data of r_draw_bsp:
SECTION .rdata
g_keepZ__uint4_dup_1: dd 0x0, 0x0, 0xffffffff, 0x0
g_keepX__uint4_dup_1: dd 0xffffffff, 0x0, 0x0, 0x0
g_keepZW__uint4_dup_1: dd 0x0, 0x0, 0xffffffff, 0xffffffff
g_keepXY__uint4_dup_1: dd 0xffffffff, 0xffffffff, 0x0, 0x0
g_keepXYZ__uint4_dup_1: dd 0xffffffff, 0xffffffff, 0xffffffff, 0x0
g_keepXYW__uint4_dup_1: dd 0xffffffff, 0xffffffff, 0x0, 0xffffffff
g_keepXZW__uint4_dup_1: dd 0xffffffff, 0x0, 0xffffffff, 0xffffffff
g_keepYZW__uint4_dup_1: dd 0x0, 0xffffffff, 0xffffffff, 0xffffffff
g_selectW__uint4_dup_1: dd 0x10203, 0x4050607, 0x8090a0b, 0x1c1d1e1f
g_selectZ__uint4_dup_1: dd 0x10203, 0x4050607, 0x18191a1b, 0xc0d0e0f
g_selectY__uint4_dup_1: dd 0x10203, 0x14151617, 0x8090a0b, 0xc0d0e0f
g_selectX__uint4_dup_1: dd 0x10111213, 0x4050607, 0x8090a0b, 0xc0d0e0f
g_swizzleWWWW__uint4_dup_1: dd 0xc0d0e0f, 0xc0d0e0f, 0xc0d0e0f, 0xc0d0e0f
g_swizzleZZZZ__uint4_dup_1: dd 0x8090a0b, 0x8090a0b, 0x8090a0b, 0x8090a0b
g_swizzleYYYY__uint4_dup_1: dd 0x4050607, 0x4050607, 0x4050607, 0x4050607
g_swizzleXXXX__uint4_dup_1: dd 0x10203, 0x10203, 0x10203, 0x10203
g_swizzleYZWA__uint4_dup_1: dd 0x4050607, 0x8090a0b, 0xc0d0e0f, 0x10111213
g_swizzleZWAW__uint4_dup_1: dd 0x8090a0b, 0xc0d0e0f, 0x10111213, 0xc0d0e0f
g_swizzleWABW__uint4_dup_1: dd 0xc0d0e0f, 0x10111213, 0x14151617, 0xc0d0e0f
g_swizzleZXYW__uint4_dup_1: dd 0x8090a0b, 0x10203, 0x4050607, 0xc0d0e0f
g_swizzleYZXW__uint4_dup_1: dd 0x4050607, 0x8090a0b, 0x10203, 0xc0d0e0f
g_swizzleXYZA__uint4_dup_1: dd 0x10203, 0x4050607, 0x8090a0b, 0x10111213
g_swizzleZWCD__uint4_dup_1: dd 0x8090a0b, 0xc0d0e0f, 0x18191a1b, 0x1c1d1e1f
g_swizzleXYAB__uint4_dup_1: dd 0x10203, 0x4050607, 0x10111213, 0x14151617
g_swizzleYBWD__uint4_dup_1: dd 0x4050607, 0x14151617, 0xc0d0e0f, 0x1c1d1e1f
g_swizzleXAZC__uint4_dup_1: dd 0x10203, 0x10111213, 0x8090a0b, 0x18191a1b
g_swizzleYXWZ__uint4_dup_1: dd 0x4050607, 0x10203, 0xc0d0e0f, 0x8090a0b
g_swizzleXZYW__uint4_dup_1: dd 0x10203, 0x8090a0b, 0x4050607, 0xc0d0e0f
g_swizzleYXZW__uint4_dup_1: dd 0x4050607, 0x10203, 0x8090a0b, 0xc0d0e0f
g_swizzleXYZW__uint4_dup_1: dd 0x10203, 0x4050607, 0x8090a0b, 0xc0d0e0f
g_inc__uint4_dup_1: dd 0x1, 0x1, 0x1, 0x1
g_negativeZero__uint4_dup_1: dd 0x80000000, 0x80000000, 0x80000000, 0x80000000
g_fltMin__uint4_dup_1: dd 0x800000, 0x800000, 0x800000, 0x800000, 0x0, 0x0, 0x0, 0x0, 0x80000000, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Zero initialized global or static variables of r_draw_bsp:
SECTION .bss
g_keepZ_dup_1: resb 0x10
g_keepX_dup_1: resb 0x10
g_keepZW_dup_1: resb 0x10
g_keepXY_dup_1: resb 0x10
g_keepXYZ_dup_1: resb 0x10
g_keepXYW_dup_1: resb 0x10
g_keepXZW_dup_1: resb 0x10
g_keepYZW_dup_1: resb 0x10
g_selectW_dup_1: resb 0x10
g_selectZ_dup_1: resb 0x10
g_selectY_dup_1: resb 0x10
g_selectX_dup_1: resb 0x10
g_swizzleWWWW_dup_1: resb 0x10
g_swizzleZZZZ_dup_1: resb 0x10
g_swizzleYYYY_dup_1: resb 0x10
g_swizzleXXXX_dup_1: resb 0x10
g_swizzleYZWA_dup_1: resb 0x10
g_swizzleZWAW_dup_1: resb 0x10
g_swizzleWABW_dup_1: resb 0x10
g_swizzleZXYW_dup_1: resb 0x10
g_swizzleYZXW_dup_1: resb 0x10
g_swizzleXYZA_dup_1: resb 0x10
g_swizzleZWCD_dup_1: resb 0x10
g_swizzleXYAB_dup_1: resb 0x10
g_swizzleYBWD_dup_1: resb 0x10
g_swizzleXAZC_dup_1: resb 0x10
g_swizzleYXWZ_dup_1: resb 0x10
g_swizzleXZYW_dup_1: resb 0x10
g_swizzleYXZW_dup_1: resb 0x10
g_swizzleXYZW_dup_1: resb 0x10
g_inc_dup_1: resb 0x10
g_negativeZero_dup_1: resb 0x10
g_fltMin_dup_1: resb 0x80


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

