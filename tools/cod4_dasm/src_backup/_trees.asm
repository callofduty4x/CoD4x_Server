;Imports of trees:
	extern __i686.get_pc_thunk.bx

;Exports of trees:
	global static_dtree
	global static_ltree
	global bl_order
	global base_dist
	global extra_dbits
	global base_length
	global extra_lbits
	global static_bl_desc
	global extra_blbits
	global static_d_desc
	global static_l_desc
	global send_tree
	global compress_block
	global build_tree
	global _tr_align
	global _tr_flush_block
	global _tr_init
	global _tr_stored_block


SECTION .text


;send_tree
send_tree:
	push ebp
	mov ebp, esp
	push edi
	push esi
	sub esp, 0x40
	mov [ebp-0x28], eax
	mov [ebp-0x2c], ecx
	movzx eax, word [edx+0x2]
	movzx ecx, ax
	mov [ebp-0x1c], ecx
	test ax, ax
	jnz send_tree_10
	mov ecx, 0x8a
	mov eax, 0x3
send_tree_220:
	mov esi, [ebp-0x2c]
	test esi, esi
	js send_tree_20
	add edx, 0x6
	mov [ebp-0x10], edx
	mov edx, 0xffffffff
	mov dword [ebp-0x18], 0x0
	mov dword [ebp-0x20], 0x0
send_tree_100:
	mov esi, [ebp-0x10]
	movzx esi, word [esi]
	mov [ebp-0x22], si
	movzx edi, si
	mov [ebp-0xc], edi
	add dword [ebp-0x18], 0x1
	cmp ecx, [ebp-0x18]
	jle send_tree_30
	cmp [ebp-0x1c], edi
	jz send_tree_40
send_tree_30:
	cmp eax, [ebp-0x18]
	jle send_tree_50
	mov dword [ebp-0x14], 0x0
	jmp send_tree_60
send_tree_80:
	mov eax, [ebp-0x1c]
	movzx esi, word [edx+eax*4+0xa74]
	mov eax, esi
	shl eax, cl
	movzx ecx, word [edx+0x16b0]
	or ecx, eax
	mov [ebp-0x40], cx
	mov [edx+0x16b0], cx
	mov eax, [ebp-0x28]
	mov edx, [eax+0x14]
	mov ecx, [eax+0x8]
	mov [ebp-0x44], ecx
	movzx eax, byte [ebp-0x40]
	mov [ecx+edx], al
	mov eax, [ebp-0x28]
	mov ecx, [eax+0x8]
	movzx eax, byte [eax+0x16b1]
	mov [edx+ecx+0x1], al
	add edx, 0x2
	mov ecx, [ebp-0x28]
	mov [ecx+0x14], edx
	mov edx, [ecx+0x16b4]
	mov ecx, 0x10
	sub ecx, edx
	sar esi, cl
	mov eax, [ebp-0x28]
	mov [eax+0x16b0], si
	lea edx, [edi+edx-0x10]
	mov [eax+0x16b4], edx
	add dword [ebp-0x14], 0x1
	mov edi, [ebp-0x14]
	cmp [ebp-0x18], edi
	jz send_tree_70
send_tree_60:
	mov eax, [ebp-0x1c]
	mov edx, [ebp-0x28]
	movzx edi, word [edx+eax*4+0xa76]
	mov ecx, [edx+0x16b4]
	mov eax, 0x10
	sub eax, edi
	cmp ecx, eax
	jg send_tree_80
	mov esi, edx
	mov edx, [ebp-0x1c]
	movzx eax, word [esi+edx*4+0xa74]
	shl eax, cl
	or [esi+0x16b0], ax
	lea edx, [edi+ecx]
	mov [esi+0x16b4], edx
	add dword [ebp-0x14], 0x1
	mov edi, [ebp-0x14]
	cmp [ebp-0x18], edi
	jnz send_tree_60
send_tree_70:
	cmp word [ebp-0x22], 0x0
	jnz send_tree_90
send_tree_160:
	mov edx, [ebp-0x1c]
	mov dword [ebp-0x18], 0x0
	mov ecx, 0x8a
	mov eax, 0x3
send_tree_40:
	add dword [ebp-0x20], 0x1
	add dword [ebp-0x10], 0x4
	mov edi, [ebp-0x20]
	cmp [ebp-0x2c], edi
	jl send_tree_20
send_tree_180:
	mov esi, [ebp-0xc]
	mov [ebp-0x1c], esi
	jmp send_tree_100
send_tree_50:
	mov eax, [ebp-0x1c]
	test eax, eax
	jz send_tree_110
	cmp edx, [ebp-0x1c]
	jz send_tree_120
	mov eax, [ebp-0x1c]
	mov edx, [ebp-0x28]
	movzx edi, word [edx+eax*4+0xa76]
	mov ecx, edx
	mov edx, [edx+0x16b4]
	mov dword [ebp-0x30], 0x10
	mov eax, 0x10
	sub eax, edi
	cmp edx, eax
	jle send_tree_130
	mov eax, [ebp-0x1c]
	movzx esi, word [ecx+eax*4+0xa74]
	mov eax, esi
	mov ecx, edx
	shl eax, cl
	mov ecx, [ebp-0x28]
	movzx edx, word [ecx+0x16b0]
	or edx, eax
	mov [ebp-0x40], dx
	mov [ecx+0x16b0], dx
	mov edx, [ecx+0x14]
	mov eax, [ecx+0x8]
	mov [ebp-0x48], eax
	movzx ecx, byte [ebp-0x40]
	mov [eax+edx], cl
	mov eax, [ebp-0x28]
	mov ecx, [eax+0x8]
	movzx eax, byte [eax+0x16b1]
	mov [edx+ecx+0x1], al
	add edx, 0x2
	mov ecx, [ebp-0x28]
	mov [ecx+0x14], edx
	mov edx, [ecx+0x16b4]
	sub [ebp-0x30], edx
	movzx ecx, byte [ebp-0x30]
	sar esi, cl
	mov [ebp-0x40], si
	mov eax, [ebp-0x28]
	mov [eax+0x16b0], si
	lea edx, [edi+edx-0x10]
	mov [eax+0x16b4], edx
send_tree_250:
	sub dword [ebp-0x18], 0x1
	mov ecx, [ebp-0x28]
send_tree_270:
	movzx edi, word [ecx+0xab6]
	mov dword [ebp-0x34], 0x10
	mov eax, 0x10
	sub eax, edi
	cmp edx, eax
	jle send_tree_140
	movzx esi, word [ecx+0xab4]
	mov eax, esi
	mov ecx, edx
	shl eax, cl
	or [ebp-0x40], ax
	movzx eax, word [ebp-0x40]
	mov edx, [ebp-0x28]
	mov [edx+0x16b0], ax
	mov ecx, [ebp-0x28]
	mov edx, [ecx+0x14]
	mov eax, [ecx+0x8]
	movzx ecx, byte [ebp-0x40]
	mov [eax+edx], cl
	mov eax, [ebp-0x28]
	mov ecx, [eax+0x8]
	movzx eax, byte [eax+0x16b1]
	mov [edx+ecx+0x1], al
	add edx, 0x2
	mov ecx, [ebp-0x28]
	mov [ecx+0x14], edx
	mov edx, [ecx+0x16b4]
	sub [ebp-0x34], edx
	movzx ecx, byte [ebp-0x34]
	sar esi, cl
	mov [ebp-0x40], si
	mov eax, [ebp-0x28]
	mov [eax+0x16b0], si
	lea edx, [edi+edx-0x10]
	mov [eax+0x16b4], edx
send_tree_260:
	cmp edx, 0xe
	jle send_tree_150
	mov esi, [ebp-0x18]
	sub esi, 0x3
	mov eax, esi
	mov ecx, edx
	shl eax, cl
	or [ebp-0x40], ax
	movzx eax, word [ebp-0x40]
	mov edx, [ebp-0x28]
	mov [edx+0x16b0], ax
	mov ecx, [ebp-0x28]
	mov edx, [ecx+0x14]
	mov eax, [ecx+0x8]
	movzx ecx, byte [ebp-0x40]
	mov [eax+edx], cl
	mov edi, [ebp-0x28]
	mov ecx, [edi+0x8]
	movzx eax, byte [edi+0x16b1]
	mov [edx+ecx+0x1], al
	add edx, 0x2
	mov [edi+0x14], edx
	movzx esi, si
	mov edx, [edi+0x16b4]
	mov ecx, 0x10
	sub ecx, edx
	sar esi, cl
	mov [edi+0x16b0], si
	sub edx, 0xe
	mov [edi+0x16b4], edx
	cmp word [ebp-0x22], 0x0
	jz send_tree_160
send_tree_90:
	mov esi, [ebp-0xc]
	cmp [ebp-0x1c], esi
	jz send_tree_170
	mov edx, [ebp-0x1c]
	mov dword [ebp-0x18], 0x0
	mov ecx, 0x7
	mov eax, 0x4
	add dword [ebp-0x20], 0x1
	add dword [ebp-0x10], 0x4
	mov edi, [ebp-0x20]
	cmp [ebp-0x2c], edi
	jge send_tree_180
send_tree_20:
	add esp, 0x40
	pop esi
	pop edi
	pop ebp
	ret
send_tree_110:
	cmp dword [ebp-0x18], 0xa
	jle send_tree_190
	mov esi, [ebp-0x28]
	movzx edi, word [esi+0xabe]
	mov edx, [esi+0x16b4]
	mov dword [ebp-0x3c], 0x10
	mov eax, 0x10
	sub eax, edi
	cmp edx, eax
	jle send_tree_200
	movzx esi, word [esi+0xabc]
	mov eax, esi
	mov ecx, edx
	shl eax, cl
	mov ecx, [ebp-0x28]
	movzx edx, word [ecx+0x16b0]
	or edx, eax
	mov [ebp-0x40], dx
	mov [ecx+0x16b0], dx
	mov edx, [ecx+0x14]
	mov eax, [ecx+0x8]
	movzx ecx, byte [ebp-0x40]
	mov [eax+edx], cl
	mov eax, [ebp-0x28]
	mov ecx, [eax+0x8]
	movzx eax, byte [eax+0x16b1]
	mov [edx+ecx+0x1], al
	add edx, 0x2
	mov ecx, [ebp-0x28]
	mov [ecx+0x14], edx
	mov edx, [ecx+0x16b4]
	sub [ebp-0x3c], edx
	movzx ecx, byte [ebp-0x3c]
	sar esi, cl
	mov [ebp-0x40], si
	mov eax, [ebp-0x28]
	mov [eax+0x16b0], si
	lea edx, [edi+edx-0x10]
	mov [eax+0x16b4], edx
send_tree_280:
	cmp edx, 0x9
	jle send_tree_210
	mov esi, [ebp-0x18]
	sub esi, 0xb
	mov eax, esi
	mov ecx, edx
	shl eax, cl
	or [ebp-0x40], ax
	movzx eax, word [ebp-0x40]
	mov edx, [ebp-0x28]
	mov [edx+0x16b0], ax
	mov ecx, [ebp-0x28]
	mov edx, [ecx+0x14]
	mov eax, [ecx+0x8]
	movzx ecx, byte [ebp-0x40]
	mov [eax+edx], cl
	mov edi, [ebp-0x28]
	mov ecx, [edi+0x8]
	movzx eax, byte [edi+0x16b1]
	mov [edx+ecx+0x1], al
	add edx, 0x2
	mov [edi+0x14], edx
	movzx esi, si
	mov edx, [edi+0x16b4]
	mov ecx, 0x10
	sub ecx, edx
	sar esi, cl
	mov [edi+0x16b0], si
	sub edx, 0x9
	mov [edi+0x16b4], edx
	jmp send_tree_70
send_tree_170:
	mov edx, [ebp-0x1c]
	mov dword [ebp-0x18], 0x0
	mov ecx, 0x6
	mov eax, 0x3
	jmp send_tree_40
send_tree_10:
	mov ecx, 0x7
	mov eax, 0x4
	jmp send_tree_220
send_tree_190:
	mov esi, [ebp-0x28]
	movzx edi, word [esi+0xaba]
	mov edx, [esi+0x16b4]
	mov dword [ebp-0x38], 0x10
	mov eax, 0x10
	sub eax, edi
	cmp edx, eax
	jle send_tree_230
	movzx esi, word [esi+0xab8]
	mov eax, esi
	mov ecx, edx
	shl eax, cl
	mov ecx, [ebp-0x28]
	movzx edx, word [ecx+0x16b0]
	or edx, eax
	mov [ebp-0x40], dx
	mov [ecx+0x16b0], dx
	mov edx, [ecx+0x14]
	mov eax, [ecx+0x8]
	movzx ecx, byte [ebp-0x40]
	mov [eax+edx], cl
	mov eax, [ebp-0x28]
	mov ecx, [eax+0x8]
	movzx eax, byte [eax+0x16b1]
	mov [edx+ecx+0x1], al
	add edx, 0x2
	mov ecx, [ebp-0x28]
	mov [ecx+0x14], edx
	mov edx, [ecx+0x16b4]
	sub [ebp-0x38], edx
	movzx ecx, byte [ebp-0x38]
	sar esi, cl
	mov [ebp-0x40], si
	mov eax, [ebp-0x28]
	mov [eax+0x16b0], si
	lea edx, [edi+edx-0x10]
	mov [eax+0x16b4], edx
send_tree_290:
	cmp edx, 0xd
	jle send_tree_240
	mov esi, [ebp-0x18]
	sub esi, 0x3
	mov eax, esi
	mov ecx, edx
	shl eax, cl
	or [ebp-0x40], ax
	movzx eax, word [ebp-0x40]
	mov edx, [ebp-0x28]
	mov [edx+0x16b0], ax
	mov ecx, [ebp-0x28]
	mov edx, [ecx+0x14]
	mov eax, [ecx+0x8]
	movzx ecx, byte [ebp-0x40]
	mov [eax+edx], cl
	mov edi, [ebp-0x28]
	mov ecx, [edi+0x8]
	movzx eax, byte [edi+0x16b1]
	mov [edx+ecx+0x1], al
	add edx, 0x2
	mov [edi+0x14], edx
	movzx esi, si
	mov edx, [edi+0x16b4]
	mov ecx, 0x10
	sub ecx, edx
	sar esi, cl
	mov [edi+0x16b0], si
	sub edx, 0xd
	mov [edi+0x16b4], edx
	jmp send_tree_70
send_tree_130:
	mov ecx, [ebp-0x1c]
	mov esi, [ebp-0x28]
	movzx eax, word [esi+ecx*4+0xa74]
	mov ecx, edx
	shl eax, cl
	movzx ecx, word [esi+0x16b0]
	or ecx, eax
	mov [ebp-0x40], cx
	mov [esi+0x16b0], cx
	lea edx, [edi+edx]
	mov [esi+0x16b4], edx
	jmp send_tree_250
send_tree_150:
	mov eax, [ebp-0x18]
	sub eax, 0x3
	mov ecx, edx
	shl eax, cl
	or [ebp-0x40], ax
	movzx eax, word [ebp-0x40]
	mov ecx, [ebp-0x28]
	mov [ecx+0x16b0], ax
	add edx, 0x2
	mov [ecx+0x16b4], edx
	jmp send_tree_70
send_tree_140:
	movzx eax, word [ecx+0xab4]
	mov ecx, edx
	shl eax, cl
	or [ebp-0x40], ax
	movzx eax, word [ebp-0x40]
	mov ecx, [ebp-0x28]
	mov [ecx+0x16b0], ax
	lea edx, [edi+edx]
	mov [ecx+0x16b4], edx
	jmp send_tree_260
send_tree_120:
	mov esi, [ebp-0x28]
	mov edx, [esi+0x16b4]
	movzx eax, word [esi+0x16b0]
	mov [ebp-0x40], ax
	mov ecx, esi
	jmp send_tree_270
send_tree_210:
	mov eax, [ebp-0x18]
	sub eax, 0xb
	mov ecx, edx
	shl eax, cl
	or [ebp-0x40], ax
	movzx eax, word [ebp-0x40]
	mov ecx, [ebp-0x28]
	mov [ecx+0x16b0], ax
	lea eax, [edx+0x7]
	mov [ecx+0x16b4], eax
	jmp send_tree_70
send_tree_200:
	movzx eax, word [esi+0xabc]
	mov ecx, edx
	shl eax, cl
	mov esi, [ebp-0x28]
	movzx ecx, word [esi+0x16b0]
	or ecx, eax
	mov [ebp-0x40], cx
	mov [esi+0x16b0], cx
	lea edx, [edi+edx]
	mov [esi+0x16b4], edx
	jmp send_tree_280
send_tree_240:
	mov eax, [ebp-0x18]
	sub eax, 0x3
	mov ecx, edx
	shl eax, cl
	or [ebp-0x40], ax
	movzx eax, word [ebp-0x40]
	mov ecx, [ebp-0x28]
	mov [ecx+0x16b0], ax
	add edx, 0x3
	mov [ecx+0x16b4], edx
	jmp send_tree_70
send_tree_230:
	movzx eax, word [esi+0xab8]
	mov ecx, edx
	shl eax, cl
	mov esi, [ebp-0x28]
	movzx ecx, word [esi+0x16b0]
	or ecx, eax
	mov [ebp-0x40], cx
	mov [esi+0x16b0], cx
	lea edx, [edi+edx]
	mov [esi+0x16b4], edx
	jmp send_tree_290


;compress_block
compress_block:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	call __i686.get_pc_thunk.bx
	mov edi, eax
	mov [ebp-0x44], edx
	mov [ebp-0x48], ecx
	mov eax, [eax+0x1698]
	test eax, eax
	jz compress_block_10
	mov dword [ebp-0x34], 0x0
	mov eax, [edi+0x16b4]
	mov [ebp-0x68], eax
	movzx edx, word [edi+0x16b0]
	mov [ebp-0x62], dx
	jmp compress_block_20
compress_block_50:
	mov ecx, [ebp-0x44]
	lea edx, [ecx+eax*4]
	movzx esi, word [edx+0x2]
	mov [ebp-0x2c], esi
	mov dword [ebp-0x4c], 0x10
	mov eax, 0x10
	sub eax, esi
	cmp [ebp-0x68], eax
	jle compress_block_30
	movzx esi, word [edx]
	mov eax, esi
	movzx ecx, byte [ebp-0x68]
	shl eax, cl
	or [ebp-0x62], ax
	movzx eax, word [ebp-0x62]
	mov [edi+0x16b0], ax
	mov edx, [edi+0x14]
	mov eax, [edi+0x8]
	movzx ecx, byte [ebp-0x62]
	mov [eax+edx], cl
	mov ecx, [edi+0x8]
	movzx eax, byte [edi+0x16b1]
	mov [edx+ecx+0x1], al
	add edx, 0x2
	mov [edi+0x14], edx
	mov eax, [edi+0x16b4]
	sub [ebp-0x4c], eax
	movzx ecx, byte [ebp-0x4c]
	sar esi, cl
	mov [ebp-0x62], si
	mov [edi+0x16b0], si
	mov esi, [ebp-0x2c]
	lea eax, [esi+eax-0x10]
	mov [ebp-0x68], eax
	mov [edi+0x16b4], eax
compress_block_110:
	mov esi, [ebp-0x34]
	cmp esi, [edi+0x1698]
	jae compress_block_40
compress_block_20:
	mov eax, [edi+0x169c]
	mov ecx, [ebp-0x34]
	movzx edx, word [eax+ecx*2]
	movzx esi, dx
	mov [ebp-0x3c], esi
	mov eax, [edi+0x1690]
	movzx eax, byte [ecx+eax]
	mov [ebp-0x38], eax
	add ecx, 0x1
	mov [ebp-0x34], ecx
	test dx, dx
	jz compress_block_50
	movzx esi, byte [ebx+eax+0xd8779]
	mov [ebp-0x10], esi
	mov eax, [ebp-0x44]
	lea edx, [eax+esi*4]
	movzx ecx, word [edx+0x406]
	mov [ebp-0x28], ecx
	mov dword [ebp-0x50], 0x10
	mov eax, 0x10
	sub eax, ecx
	cmp [ebp-0x68], eax
	jle compress_block_60
	movzx esi, word [edx+0x404]
	mov eax, esi
	movzx ecx, byte [ebp-0x68]
	shl eax, cl
	or [ebp-0x62], ax
	movzx eax, word [ebp-0x62]
	mov [edi+0x16b0], ax
	mov edx, [edi+0x14]
	mov eax, [edi+0x8]
	movzx ecx, byte [ebp-0x62]
	mov [eax+edx], cl
	mov ecx, [edi+0x8]
	movzx eax, byte [edi+0x16b1]
	mov [edx+ecx+0x1], al
	add edx, 0x2
	mov [edi+0x14], edx
	mov eax, [edi+0x16b4]
	sub [ebp-0x50], eax
	movzx ecx, byte [ebp-0x50]
	sar esi, cl
	mov [ebp-0x62], si
	mov [edi+0x16b0], si
	mov esi, [ebp-0x28]
	lea eax, [esi+eax-0x10]
	mov [ebp-0x68], eax
	mov [edi+0x16b4], eax
compress_block_140:
	mov eax, [ebp-0x10]
	mov esi, [ebx+eax*4+0xd9119]
	test esi, esi
	jz compress_block_70
	mov edx, [ebp-0x38]
	sub edx, [ebx+eax*4+0xd9099]
	mov [ebp-0x1c], edx
	mov dword [ebp-0x54], 0x10
	mov eax, 0x10
	sub eax, esi
	cmp [ebp-0x68], eax
	jle compress_block_80
	mov eax, edx
	movzx ecx, byte [ebp-0x68]
	shl eax, cl
	or [ebp-0x62], ax
	movzx eax, word [ebp-0x62]
	mov [edi+0x16b0], ax
	mov edx, [edi+0x14]
	mov eax, [edi+0x8]
	movzx ecx, byte [ebp-0x62]
	mov [eax+edx], cl
	mov ecx, [edi+0x8]
	movzx eax, byte [edi+0x16b1]
	mov [edx+ecx+0x1], al
	add edx, 0x2
	mov [edi+0x14], edx
	movzx eax, word [ebp-0x1c]
	mov edx, [edi+0x16b4]
	sub [ebp-0x54], edx
	movzx ecx, byte [ebp-0x54]
	sar eax, cl
	mov [ebp-0x62], ax
	mov [edi+0x16b0], ax
	lea esi, [esi+edx-0x10]
	mov [ebp-0x68], esi
	mov [edi+0x16b4], esi
compress_block_70:
	mov esi, [ebp-0x3c]
	sub esi, 0x1
	mov [ebp-0x18], esi
	cmp esi, 0xff
	ja compress_block_90
	movzx eax, byte [ebx+esi+0xd8879]
	mov [ebp-0x30], eax
	mov ecx, eax
compress_block_160:
	mov esi, [ebp-0x48]
	lea edx, [esi+ecx*4]
	movzx eax, word [edx+0x2]
	mov [ebp-0x24], eax
	mov dword [ebp-0x58], 0x10
	mov eax, 0x10
	sub eax, [ebp-0x24]
	cmp [ebp-0x68], eax
	jle compress_block_100
	movzx esi, word [edx]
	mov eax, esi
	movzx ecx, byte [ebp-0x68]
	shl eax, cl
	or [ebp-0x62], ax
	movzx eax, word [ebp-0x62]
	mov [edi+0x16b0], ax
	mov edx, [edi+0x14]
	mov eax, [edi+0x8]
	movzx ecx, byte [ebp-0x62]
	mov [eax+edx], cl
	mov ecx, [edi+0x8]
	movzx eax, byte [edi+0x16b1]
	mov [edx+ecx+0x1], al
	add edx, 0x2
	mov [edi+0x14], edx
	mov eax, [edi+0x16b4]
	sub [ebp-0x58], eax
	movzx ecx, byte [ebp-0x58]
	sar esi, cl
	mov [ebp-0x62], si
	mov [edi+0x16b0], si
	mov esi, [ebp-0x24]
	lea eax, [esi+eax-0x10]
	mov [ebp-0x68], eax
	mov [edi+0x16b4], eax
compress_block_150:
	mov eax, [ebp-0x30]
	mov esi, [ebx+eax*4+0xd9019]
	test esi, esi
	jz compress_block_110
	mov edx, [ebp-0x18]
	sub edx, [ebx+eax*4+0xd8f99]
	mov [ebp-0x14], edx
	mov dword [ebp-0x5c], 0x10
	mov eax, 0x10
	sub eax, esi
	cmp [ebp-0x68], eax
	jle compress_block_120
	mov eax, edx
	movzx ecx, byte [ebp-0x68]
	shl eax, cl
	or [ebp-0x62], ax
	movzx eax, word [ebp-0x62]
	mov [edi+0x16b0], ax
	mov edx, [edi+0x14]
	mov eax, [edi+0x8]
	movzx ecx, byte [ebp-0x62]
	mov [eax+edx], cl
	mov ecx, [edi+0x8]
	movzx eax, byte [edi+0x16b1]
	mov [edx+ecx+0x1], al
	add edx, 0x2
	mov [edi+0x14], edx
	movzx eax, word [ebp-0x14]
	mov edx, [edi+0x16b4]
	sub [ebp-0x5c], edx
	movzx ecx, byte [ebp-0x5c]
	sar eax, cl
	mov [ebp-0x62], ax
	mov [edi+0x16b0], ax
	lea esi, [esi+edx-0x10]
	mov [ebp-0x68], esi
	mov [edi+0x16b4], esi
	mov esi, [ebp-0x34]
	cmp esi, [edi+0x1698]
	jb compress_block_20
compress_block_40:
	mov ecx, [ebp-0x44]
	add ecx, 0x400
	mov [ebp-0x40], ecx
	movzx esi, word [ecx+0x2]
	mov [ebp-0x20], esi
	mov dword [ebp-0x60], 0x10
	mov eax, 0x10
	sub eax, esi
	cmp [ebp-0x68], eax
	jle compress_block_130
	mov eax, [ebp-0x44]
	movzx esi, word [eax+0x400]
	mov eax, esi
	movzx ecx, byte [ebp-0x68]
	shl eax, cl
	or [ebp-0x62], ax
	movzx eax, word [ebp-0x62]
	mov [edi+0x16b0], ax
	mov edx, [edi+0x14]
	mov eax, [edi+0x8]
	movzx ecx, byte [ebp-0x62]
	mov [eax+edx], cl
	mov ecx, [edi+0x8]
	movzx eax, byte [edi+0x16b1]
	mov [edx+ecx+0x1], al
	add edx, 0x2
	mov [edi+0x14], edx
	mov eax, [edi+0x16b4]
	sub [ebp-0x60], eax
	movzx ecx, byte [ebp-0x60]
	sar esi, cl
	mov [edi+0x16b0], si
	mov esi, [ebp-0x20]
	lea eax, [esi+eax-0x10]
	mov [edi+0x16b4], eax
	mov edx, [ebp-0x40]
	movzx eax, word [edx+0x2]
	mov [edi+0x16ac], eax
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
compress_block_60:
	movzx eax, word [edx+0x404]
	movzx ecx, byte [ebp-0x68]
	shl eax, cl
	or [ebp-0x62], ax
	movzx eax, word [ebp-0x62]
	mov [edi+0x16b0], ax
	mov edx, [ebp-0x28]
	add [ebp-0x68], edx
	mov ecx, [ebp-0x68]
	mov [edi+0x16b4], ecx
	jmp compress_block_140
compress_block_100:
	movzx eax, word [edx]
	movzx ecx, byte [ebp-0x68]
	shl eax, cl
	or [ebp-0x62], ax
	movzx eax, word [ebp-0x62]
	mov [edi+0x16b0], ax
	mov edx, [ebp-0x24]
	add [ebp-0x68], edx
	mov ecx, [ebp-0x68]
	mov [edi+0x16b4], ecx
	jmp compress_block_150
compress_block_90:
	mov eax, esi
	shr eax, 0x7
	movzx eax, byte [ebx+eax+0xd8979]
	mov [ebp-0x30], eax
	mov ecx, eax
	jmp compress_block_160
compress_block_30:
	movzx eax, word [edx]
	movzx ecx, byte [ebp-0x68]
	shl eax, cl
	or [ebp-0x62], ax
	movzx eax, word [ebp-0x62]
	mov [edi+0x16b0], ax
	mov edx, [ebp-0x2c]
	add [ebp-0x68], edx
	mov ecx, [ebp-0x68]
	mov [edi+0x16b4], ecx
	jmp compress_block_110
compress_block_120:
	movzx ecx, byte [ebp-0x68]
	shl dword [ebp-0x14], cl
	movzx eax, word [ebp-0x14]
	or [ebp-0x62], ax
	movzx edx, word [ebp-0x62]
	mov [edi+0x16b0], dx
	add [ebp-0x68], esi
	mov ecx, [ebp-0x68]
	mov [edi+0x16b4], ecx
	jmp compress_block_110
compress_block_80:
	movzx ecx, byte [ebp-0x68]
	shl dword [ebp-0x1c], cl
	movzx eax, word [ebp-0x1c]
	or [ebp-0x62], ax
	movzx edx, word [ebp-0x62]
	mov [edi+0x16b0], dx
	add [ebp-0x68], esi
	mov ecx, [ebp-0x68]
	mov [edi+0x16b4], ecx
	jmp compress_block_70
compress_block_130:
	mov edx, [ebp-0x44]
	movzx eax, word [edx+0x400]
	movzx ecx, byte [ebp-0x68]
	shl eax, cl
	or [ebp-0x62], ax
	movzx eax, word [ebp-0x62]
	mov [edi+0x16b0], ax
	mov eax, [ebp-0x20]
	add eax, [ebp-0x68]
	mov [edi+0x16b4], eax
	mov edx, [ebp-0x40]
	movzx eax, word [edx+0x2]
	mov [edi+0x16ac], eax
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
compress_block_10:
	mov eax, [edi+0x16b4]
	mov [ebp-0x68], eax
	movzx edx, word [edi+0x16b0]
	mov [ebp-0x62], dx
	jmp compress_block_40
	add [eax], al


;build_tree
build_tree:
	push ebp
	mov ebp, esp
	push edi
	push esi
	sub esp, 0x110
	mov esi, eax
	mov [ebp-0xc4], edx
	mov eax, [edx]
	mov [ebp-0xc0], eax
	mov eax, [edx+0x8]
	mov edx, [eax]
	mov [ebp-0xbc], edx
	mov eax, [eax+0xc]
	mov [ebp-0xb8], eax
	mov dword [esi+0x1448], 0x0
	mov dword [esi+0x144c], 0x23d
	test eax, eax
	jg build_tree_10
	mov dword [ebp-0xb4], 0xffffffff
build_tree_810:
	mov edx, [ebp-0xbc]
	test edx, edx
	jz build_tree_20
	jmp build_tree_30
build_tree_50:
	xor eax, eax
	xor ecx, ecx
build_tree_60:
	mov [esi+edx*4+0xb54], eax
	mov edi, [ebp-0xc0]
	mov word [edi+ecx*4], 0x1
	mov byte [eax+esi+0x1450], 0x0
	sub dword [esi+0x16a0], 0x1
build_tree_20:
	mov eax, [esi+0x1448]
	cmp eax, 0x1
	jg build_tree_40
	lea edx, [eax+0x1]
	mov [esi+0x1448], edx
	cmp dword [ebp-0xb4], 0x1
	jg build_tree_50
	mov eax, [ebp-0xb4]
	add eax, 0x1
	mov ecx, eax
	mov [ebp-0xb4], eax
	jmp build_tree_60
build_tree_40:
	mov edx, [ebp-0xb4]
	mov eax, [ebp-0xc4]
	mov [eax+0x4], edx
	mov ecx, [esi+0x1448]
	mov [ebp-0xd4], ecx
	mov eax, ecx
	shr eax, 0x1f
	add eax, ecx
	sar eax, 1
	mov [ebp-0xc8], eax
	test eax, eax
	jle build_tree_70
	lea edi, [esi+eax*4+0xb54]
	mov [ebp-0x64], edi
	mov dword [ebp-0x68], 0x0
	mov eax, [ebp-0xc8]
	mov edx, edi
build_tree_360:
	sub eax, [ebp-0x68]
	mov [ebp-0x50], eax
	mov edx, [edx]
	mov [ebp-0xac], edx
	mov ecx, eax
	add ecx, ecx
	cmp [ebp-0xd4], ecx
	jl build_tree_80
	mov edi, [ebp-0xc0]
	lea edi, [edi+edx*4]
	mov [ebp-0x88], edi
	jmp build_tree_90
build_tree_150:
	lea eax, [ecx+0x1]
	mov [ebp-0x4c], eax
	mov edx, [esi+eax*4+0xb54]
	mov [ebp-0xfc], edx
	mov edi, [esi+ecx*4+0xb54]
	mov [ebp-0x10c], edi
	mov eax, [ebp-0xc0]
	movzx eax, word [eax+edi*4]
	mov edi, [ebp-0xc0]
	cmp [edi+edx*4], ax
	jb build_tree_100
	jz build_tree_110
	mov edx, [ebp-0x10c]
build_tree_350:
	mov edi, [ebp-0xc0]
	movzx eax, word [edi+edx*4]
	mov edx, [ebp-0x88]
	cmp [edx], ax
	jb build_tree_120
build_tree_160:
	jz build_tree_130
	mov eax, [ebp-0x10c]
	mov edi, [ebp-0x50]
	mov [esi+edi*4+0xb54], eax
	lea eax, [ecx+ecx]
	cmp [ebp-0xd4], eax
	jl build_tree_140
build_tree_330:
	mov [ebp-0x50], ecx
	mov ecx, eax
build_tree_90:
	cmp ecx, [ebp-0xd4]
	jl build_tree_150
	mov eax, [esi+ecx*4+0xb54]
	mov [ebp-0x10c], eax
	mov edx, eax
	mov edi, [ebp-0xc0]
	movzx eax, word [edi+edx*4]
	mov edx, [ebp-0x88]
	cmp [edx], ax
	jae build_tree_160
build_tree_120:
	mov ecx, [ebp-0xac]
	mov edx, [ebp-0x50]
	mov [esi+edx*4+0xb54], ecx
	add dword [ebp-0x68], 0x1
	sub dword [ebp-0x64], 0x4
	mov edi, [ebp-0xc8]
	cmp [ebp-0x68], edi
	jnz build_tree_170
build_tree_70:
	mov eax, [ebp-0xb8]
	lea eax, [eax+esi+0x1450]
	mov [ebp-0x70], eax
	mov edx, [ebp-0xb8]
	mov ecx, [ebp-0xc0]
	lea edx, [ecx+edx*4]
	mov [ebp-0x6c], edx
	mov ecx, [ebp-0xb8]
	mov [ebp-0xb0], ecx
	jmp build_tree_180
build_tree_220:
	mov dword [ebp-0x48], 0x1
	mov ecx, [ebp-0xcc]
build_tree_310:
	mov edx, [ebp-0x48]
	mov [esi+edx*4+0xb54], ecx
	mov edx, [esi+0xb58]
	mov eax, [esi+0x144c]
	mov edi, [ebp-0x54]
	mov [esi+eax*4+0xb50], edi
	sub eax, 0x2
	mov [esi+0x144c], eax
	mov [esi+eax*4+0xb54], edx
	mov eax, [ebp-0xc0]
	lea eax, [eax+edi*4]
	mov [ebp-0x60], eax
	mov ecx, [ebp-0xc0]
	lea edi, [ecx+edx*4]
	movzx eax, word [eax]
	add ax, [edi]
	mov ecx, [ebp-0x6c]
	mov [ecx], ax
	mov eax, [ebp-0x54]
	movzx ecx, byte [eax+esi+0x1450]
	movzx eax, byte [edx+esi+0x1450]
	cmp cl, al
	jb build_tree_190
	lea eax, [ecx+0x1]
build_tree_700:
	mov edx, [ebp-0x70]
	mov [edx], al
	movzx ecx, word [ebp-0xb0]
	mov [edi+0x2], cx
	movzx eax, word [ebp-0xb0]
	mov edi, [ebp-0x60]
	mov [edi+0x2], ax
	mov edx, [ebp-0xb0]
	mov [esi+0xb58], edx
	add edx, 0x1
	mov [ebp-0x2c], edx
	mov ecx, [esi+0x1448]
	mov [ebp-0xd4], ecx
	sub ecx, 0x1
	jg build_tree_200
	mov dword [ebp-0x40], 0x1
	mov edx, [ebp-0x40]
build_tree_680:
	mov ecx, [ebp-0xb0]
	mov [esi+edx*4+0xb54], ecx
	add dword [ebp-0x70], 0x1
	add dword [ebp-0x6c], 0x4
	cmp dword [esi+0x1448], 0x1
	jle build_tree_210
build_tree_490:
	mov edi, [ebp-0x2c]
	mov [ebp-0xb0], edi
build_tree_180:
	mov edi, [esi+0xb58]
	mov [ebp-0x54], edi
	mov eax, [ebp-0xd4]
	mov eax, [esi+eax*4+0xb54]
	mov [ebp-0xcc], eax
	mov [esi+0xb58], eax
	mov eax, [ebp-0xd4]
	sub eax, 0x1
	mov [esi+0x1448], eax
	cmp eax, 0x1
	jle build_tree_220
	mov edx, [ebp-0xcc]
	mov ecx, [ebp-0xc0]
	lea edx, [ecx+edx*4]
	mov [ebp-0x84], edx
	mov ecx, 0x2
	mov dword [ebp-0x48], 0x1
	jmp build_tree_230
build_tree_290:
	lea edi, [ecx+0x1]
	mov [ebp-0x44], edi
	mov eax, [esi+edi*4+0xb54]
	mov [ebp-0xfc], eax
	mov edx, [esi+ecx*4+0xb54]
	mov [ebp-0x10c], edx
	mov edi, [ebp-0xc0]
	movzx edi, word [edi+edx*4]
	mov edx, [ebp-0xc0]
	cmp [edx+eax*4], di
	jb build_tree_240
	jz build_tree_250
	mov edx, [ebp-0x10c]
build_tree_400:
	mov edi, [ebp-0xc0]
	movzx eax, word [edi+edx*4]
	mov edx, [ebp-0x84]
	cmp [edx], ax
	jb build_tree_260
build_tree_300:
	jz build_tree_270
	mov eax, [ebp-0x10c]
	mov edi, [ebp-0x48]
	mov [esi+edi*4+0xb54], eax
	lea edx, [ecx+ecx]
	mov eax, [esi+0x1448]
	cmp eax, edx
	jl build_tree_280
build_tree_390:
	mov [ebp-0x48], ecx
	mov ecx, edx
build_tree_230:
	cmp ecx, eax
	jl build_tree_290
	mov eax, [esi+ecx*4+0xb54]
	mov [ebp-0x10c], eax
	mov edx, eax
	mov edi, [ebp-0xc0]
	movzx eax, word [edi+edx*4]
	mov edx, [ebp-0x84]
	cmp [edx], ax
	jae build_tree_300
build_tree_260:
	mov ecx, [ebp-0xcc]
	jmp build_tree_310
build_tree_130:
	mov edi, [ebp-0xac]
	movzx eax, byte [edi+esi+0x1450]
	mov edx, [ebp-0x10c]
	cmp al, [edx+esi+0x1450]
	jbe build_tree_320
	mov eax, edx
	mov edi, [ebp-0x50]
	mov [esi+edi*4+0xb54], eax
	lea eax, [ecx+ecx]
	cmp [ebp-0xd4], eax
	jge build_tree_330
build_tree_140:
	mov [ebp-0x50], ecx
	mov ecx, [ebp-0xac]
	jmp build_tree_340
build_tree_100:
	mov edi, edx
build_tree_370:
	mov ecx, [ebp-0x4c]
	mov [ebp-0x10c], edi
	mov edx, edi
	jmp build_tree_350
build_tree_80:
	mov ecx, edx
build_tree_340:
	mov edx, [ebp-0x50]
	mov [esi+edx*4+0xb54], ecx
	add dword [ebp-0x68], 0x1
	sub dword [ebp-0x64], 0x4
	mov edi, [ebp-0xc8]
	cmp [ebp-0x68], edi
	jz build_tree_70
build_tree_170:
	mov eax, edi
	mov edx, [ebp-0x64]
	jmp build_tree_360
build_tree_110:
	movzx eax, byte [edx+esi+0x1450]
	mov edx, [ebp-0x10c]
	cmp al, [edx+esi+0x1450]
	ja build_tree_350
	mov edi, [ebp-0xfc]
	jmp build_tree_370
build_tree_270:
	mov edi, [ebp-0xcc]
	movzx eax, byte [edi+esi+0x1450]
	mov edx, [ebp-0x10c]
	cmp al, [edx+esi+0x1450]
	jbe build_tree_380
	mov eax, edx
	mov edi, [ebp-0x48]
	mov [esi+edi*4+0xb54], eax
	lea edx, [ecx+ecx]
	mov eax, [esi+0x1448]
	cmp eax, edx
	jge build_tree_390
build_tree_280:
	mov [ebp-0x48], ecx
	mov ecx, [ebp-0xcc]
	jmp build_tree_310
build_tree_240:
	mov edi, eax
build_tree_710:
	mov ecx, [ebp-0x44]
	mov [ebp-0x10c], edi
	mov edx, edi
	jmp build_tree_400
build_tree_200:
	mov ecx, 0x2
	mov dword [ebp-0x40], 0x1
	jmp build_tree_410
build_tree_470:
	lea edi, [ecx+0x1]
	mov [ebp-0x3c], edi
	mov eax, [esi+edi*4+0xb54]
	mov [ebp-0xfc], eax
	mov edx, [esi+ecx*4+0xb54]
	mov [ebp-0x10c], edx
	mov edi, [ebp-0xc0]
	movzx edi, word [edi+edx*4]
	mov edx, [ebp-0xc0]
	cmp [edx+eax*4], di
	jb build_tree_420
	jz build_tree_430
	mov edx, [ebp-0x10c]
build_tree_690:
	mov edi, [ebp-0xc0]
	movzx eax, word [edi+edx*4]
	mov edx, [ebp-0x6c]
	cmp [edx], ax
	jb build_tree_440
build_tree_480:
	jz build_tree_450
	mov eax, [ebp-0x10c]
	mov edi, [ebp-0x40]
	mov [esi+edi*4+0xb54], eax
	lea eax, [ecx+ecx]
	cmp [ebp-0xd4], eax
	jl build_tree_460
build_tree_670:
	mov [ebp-0x40], ecx
	mov ecx, eax
build_tree_410:
	cmp ecx, [ebp-0xd4]
	jl build_tree_470
	mov eax, [esi+ecx*4+0xb54]
	mov [ebp-0x10c], eax
	mov edx, eax
	mov edi, [ebp-0xc0]
	movzx eax, word [edi+edx*4]
	mov edx, [ebp-0x6c]
	cmp [edx], ax
	jae build_tree_480
build_tree_440:
	mov edx, [ebp-0x40]
	mov ecx, [ebp-0xb0]
	mov [esi+edx*4+0xb54], ecx
	add dword [ebp-0x70], 0x1
	add dword [ebp-0x6c], 0x4
	cmp dword [esi+0x1448], 0x1
	jg build_tree_490
build_tree_210:
	mov ecx, [esi+0x144c]
	sub ecx, 0x1
	mov [esi+0x144c], ecx
	mov eax, [esi+0xb58]
	mov [esi+ecx*4+0xb54], eax
	mov eax, [ebp-0xc4]
	mov eax, [eax]
	mov [ebp-0xa8], eax
	mov edx, [ebp-0xc4]
	mov edx, [edx+0x4]
	mov [ebp-0xa4], edx
	mov edi, [ebp-0xc4]
	mov eax, [edi+0x8]
	mov edi, [eax]
	mov edx, [eax+0x4]
	mov [ebp-0xa0], edx
	mov edx, [eax+0x8]
	mov [ebp-0x9c], edx
	mov eax, [eax+0x10]
	mov [ebp-0x58], eax
	mov eax, esi
	mov edx, 0x10
build_tree_500:
	mov word [eax+0xb34], 0x0
	add eax, 0x2
	sub edx, 0x1
	jnz build_tree_500
	mov eax, [esi+ecx*4+0xb54]
	mov ecx, [ebp-0xa8]
	mov word [ecx+eax*4+0x2], 0x0
	mov eax, [esi+0x144c]
	add eax, 0x1
	mov [ebp-0x30], eax
	cmp eax, 0x23c
	jg build_tree_510
	test edi, edi
	jnz build_tree_520
	mov eax, [ebp-0x30]
	lea eax, [esi+eax*4+0xb54]
	mov [ebp-0x80], eax
	mov dword [ebp-0x90], 0x0
	mov edx, eax
	jmp build_tree_530
build_tree_560:
	add dword [ebp-0x30], 0x1
	add dword [ebp-0x80], 0x4
	cmp dword [ebp-0x30], 0x23d
	jz build_tree_540
build_tree_580:
	mov edx, [ebp-0x80]
build_tree_530:
	mov ecx, [edx]
	mov eax, [ebp-0xa8]
	lea edi, [eax+ecx*4]
	movzx eax, word [edi+0x2]
	mov edx, [ebp-0xa8]
	movzx eax, word [edx+eax*4+0x2]
	lea edx, [eax+0x1]
	cmp [ebp-0x58], edx
	jge build_tree_550
	add dword [ebp-0x90], 0x1
	mov edx, [ebp-0x58]
build_tree_550:
	mov [edi+0x2], dx
	cmp [ebp-0xa4], ecx
	jl build_tree_560
	add word [esi+edx*2+0xb34], 0x1
	cmp [ebp-0x9c], ecx
	jg build_tree_570
	sub ecx, [ebp-0x9c]
	mov eax, [ebp-0xa0]
	mov ecx, [eax+ecx*4]
build_tree_730:
	movzx eax, word [edi]
	add edx, ecx
	imul eax, edx
	add [esi+0x16a0], eax
	add dword [ebp-0x30], 0x1
	add dword [ebp-0x80], 0x4
	cmp dword [ebp-0x30], 0x23d
	jnz build_tree_580
build_tree_540:
	mov eax, [ebp-0x90]
	test eax, eax
	jz build_tree_510
	mov edi, [ebp-0x58]
	sub edi, 0x1
	lea eax, [esi+edi*2+0xb30]
	mov [ebp-0xd0], eax
build_tree_610:
	cmp word [esi+edi*2+0xb34], 0x0
	jnz build_tree_590
	mov ecx, [ebp-0xd0]
	add ecx, 0x4
	mov edx, edi
build_tree_600:
	sub edx, 0x1
	movzx eax, word [ecx-0x2]
	sub ecx, 0x2
	test ax, ax
	jz build_tree_600
build_tree_790:
	sub word [esi+edx*2+0xb34], 0x1
	add word [esi+edx*2+0xb36], 0x2
	mov edx, [ebp-0x58]
	sub word [esi+edx*2+0xb34], 0x1
	sub dword [ebp-0x90], 0x2
	mov eax, [ebp-0x90]
	test eax, eax
	jg build_tree_610
	test edx, edx
	jz build_tree_510
	mov edx, [ebp-0x58]
	lea edx, [esi+edx*2+0xb34]
	mov [ebp-0x78], edx
	mov ecx, [ebp-0x58]
	mov [ebp-0x5c], ecx
	mov dword [ebp-0x7c], 0x0
	mov ecx, edx
build_tree_660:
	movzx eax, word [ecx]
	movzx edi, ax
	mov [ebp-0x94], edi
	test ax, ax
	jz build_tree_620
	mov eax, [ebp-0x30]
	mov [ebp-0x98], eax
	lea edi, [esi+eax*4+0xb54]
build_tree_650:
	sub dword [ebp-0x98], 0x1
	mov eax, [edi-0x4]
	cmp [ebp-0xa4], eax
	jl build_tree_630
	mov edx, [ebp-0xa8]
	lea ecx, [edx+eax*4]
	movzx eax, word [ecx+0x2]
	cmp eax, [ebp-0x5c]
	jz build_tree_640
	mov edx, [ebp-0x5c]
	sub edx, eax
	mov eax, edx
	movzx edx, word [ecx]
	imul eax, edx
	add [esi+0x16a0], eax
	movzx eax, word [ebp-0x5c]
	mov [ecx+0x2], ax
build_tree_640:
	sub dword [ebp-0x94], 0x1
build_tree_630:
	sub edi, 0x4
	mov eax, [ebp-0x94]
	test eax, eax
	jnz build_tree_650
	mov edx, [ebp-0x98]
	mov [ebp-0x30], edx
build_tree_620:
	sub dword [ebp-0x5c], 0x1
	add dword [ebp-0x7c], 0x1
	sub dword [ebp-0x78], 0x2
	mov ecx, [ebp-0x7c]
	cmp [ebp-0x58], ecx
	jz build_tree_510
	mov ecx, [ebp-0x78]
	jmp build_tree_660
build_tree_450:
	mov edi, [ebp-0x70]
	movzx eax, byte [edi]
	mov edx, [ebp-0x10c]
	cmp al, [edx+esi+0x1450]
	jbe build_tree_440
	mov eax, edx
	mov edi, [ebp-0x40]
	mov [esi+edi*4+0xb54], eax
	lea eax, [ecx+ecx]
	cmp [ebp-0xd4], eax
	jge build_tree_670
build_tree_460:
	mov [ebp-0x40], ecx
	mov edx, ecx
	jmp build_tree_680
build_tree_420:
	mov edi, eax
build_tree_720:
	mov ecx, [ebp-0x3c]
	mov [ebp-0x10c], edi
	mov edx, edi
	jmp build_tree_690
build_tree_190:
	add al, 0x1
	jmp build_tree_700
build_tree_250:
	movzx eax, byte [eax+esi+0x1450]
	mov edx, [ebp-0x10c]
	cmp al, [edx+esi+0x1450]
	ja build_tree_400
	mov edi, [ebp-0xfc]
	jmp build_tree_710
build_tree_430:
	movzx eax, byte [eax+esi+0x1450]
	mov edx, [ebp-0x10c]
	cmp al, [edx+esi+0x1450]
	ja build_tree_690
	mov edi, [ebp-0xfc]
	jmp build_tree_720
build_tree_570:
	xor ecx, ecx
	jmp build_tree_730
build_tree_510:
	add esi, 0xb34
	xor eax, eax
	mov edx, 0x1
	lea ecx, [ebp-0x26]
build_tree_740:
	add ax, [esi+edx*2-0x2]
	add eax, eax
	mov [ecx], ax
	add edx, 0x1
	add ecx, 0x2
	cmp edx, 0x10
	jnz build_tree_740
	mov eax, [ebp-0xb4]
	test eax, eax
	js build_tree_750
	mov edi, [ebp-0xc0]
	mov dword [ebp-0x8c], 0x0
build_tree_780:
	movzx eax, word [edi+0x2]
	movzx ecx, ax
	test ax, ax
	jz build_tree_760
	movzx eax, word [ebp+ecx*2-0x28]
	movzx edx, ax
	add eax, 0x1
	mov [ebp+ecx*2-0x28], ax
	xor esi, esi
build_tree_770:
	mov eax, edx
	and eax, 0x1
	or eax, esi
	shr edx, 1
	lea esi, [eax+eax]
	sub ecx, 0x1
	test ecx, ecx
	jg build_tree_770
	shr esi, 1
	mov [edi], si
build_tree_760:
	add dword [ebp-0x8c], 0x1
	add edi, 0x4
	mov eax, [ebp-0xb4]
	cmp [ebp-0x8c], eax
	jle build_tree_780
build_tree_750:
	add esp, 0x110
	pop esi
	pop edi
	pop ebp
	ret
build_tree_590:
	mov edx, edi
	jmp build_tree_790
build_tree_10:
	mov edx, [ebp-0xc0]
	mov ecx, esi
	xor edi, edi
	mov dword [ebp-0xb4], 0xffffffff
	jmp build_tree_800
build_tree_820:
	mov eax, [esi+0x1448]
	add eax, 0x1
	mov [esi+0x1448], eax
	mov [esi+eax*4+0xb54], edi
	mov byte [ecx+0x1450], 0x0
	mov [ebp-0xb4], edi
build_tree_830:
	add edi, 0x1
	add edx, 0x4
	add ecx, 0x1
	cmp [ebp-0xb8], edi
	jz build_tree_810
build_tree_800:
	cmp word [edx], 0x0
	jnz build_tree_820
	mov word [edx+0x2], 0x0
	jmp build_tree_830
build_tree_380:
	mov ecx, edi
	jmp build_tree_310
build_tree_320:
	mov ecx, edi
	jmp build_tree_340
build_tree_520:
	mov edx, [ebp-0x30]
	lea edx, [esi+edx*4+0xb54]
	mov [ebp-0x74], edx
	mov dword [ebp-0x90], 0x0
build_tree_870:
	mov eax, [ebp-0x74]
	mov ecx, [eax]
	lea edx, [ecx*4]
	mov [ebp-0x34], edx
	mov eax, [ebp-0xa8]
	add eax, edx
	mov [ebp-0x38], eax
	movzx eax, word [eax+0x2]
	mov edx, [ebp-0xa8]
	movzx eax, word [edx+eax*4+0x2]
	lea edx, [eax+0x1]
	cmp [ebp-0x58], edx
	jge build_tree_840
	add dword [ebp-0x90], 0x1
	mov edx, [ebp-0x58]
build_tree_840:
	mov eax, [ebp-0x38]
	mov [eax+0x2], dx
	cmp [ebp-0xa4], ecx
	jl build_tree_850
	add word [esi+edx*2+0xb34], 0x1
	cmp [ebp-0x9c], ecx
	jle build_tree_860
	mov dword [ebp-0xdc], 0x0
build_tree_890:
	mov ecx, [ebp-0x38]
	movzx eax, word [ecx]
	add edx, [ebp-0xdc]
	imul edx, eax
	add [esi+0x16a0], edx
	mov ecx, [ebp-0x34]
	movzx edx, word [edi+ecx+0x2]
	add edx, [ebp-0xdc]
	imul eax, edx
	add [esi+0x16a4], eax
build_tree_850:
	add dword [ebp-0x30], 0x1
	add dword [ebp-0x74], 0x4
	cmp dword [ebp-0x30], 0x23d
	jnz build_tree_870
	jmp build_tree_540
build_tree_30:
	mov eax, [esi+0x1448]
	cmp eax, 0x1
	jg build_tree_40
	lea ecx, [eax+0x1]
	mov [esi+0x1448], ecx
	cmp dword [ebp-0xb4], 0x1
	jle build_tree_880
	xor edx, edx
	xor eax, eax
build_tree_900:
	mov [esi+ecx*4+0xb54], edx
	shl eax, 0x2
	mov ecx, [ebp-0xc0]
	mov word [ecx+eax], 0x1
	mov byte [edx+esi+0x1450], 0x0
	sub dword [esi+0x16a0], 0x1
	mov edi, [ebp-0xbc]
	movzx eax, word [edi+eax+0x2]
	sub [esi+0x16a4], eax
	jmp build_tree_30
build_tree_860:
	sub ecx, [ebp-0x9c]
	mov eax, [ebp-0xa0]
	mov ecx, [eax+ecx*4]
	mov [ebp-0xdc], ecx
	jmp build_tree_890
build_tree_880:
	mov edx, [ebp-0xb4]
	add edx, 0x1
	mov eax, edx
	mov [ebp-0xb4], edx
	jmp build_tree_900


;_tr_align
_tr_align:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xc
	call __i686.get_pc_thunk.bx
	mov edi, [ebp+0x8]
	mov edx, [edi+0x16b4]
	cmp edx, 0xd
	jle _tr_align_10
	mov esi, 0x2
	mov eax, esi
	mov ecx, edx
	shl eax, cl
	movzx edx, word [edi+0x16b0]
	or edx, eax
	mov [ebp-0x16], dx
	mov [edi+0x16b0], dx
	mov edx, [edi+0x14]
	mov eax, [edi+0x8]
	movzx ecx, byte [ebp-0x16]
	mov [eax+edx], cl
	mov ecx, [edi+0x8]
	movzx eax, byte [edi+0x16b1]
	mov [edx+ecx+0x1], al
	add edx, 0x2
	mov [edi+0x14], edx
	mov ecx, 0x10
	mov edx, [edi+0x16b4]
	sub ecx, edx
	sar esi, cl
	mov [ebp-0x16], si
	mov [edi+0x16b0], si
	sub edx, 0xd
	mov [edi+0x16b4], edx
_tr_align_110:
	movzx eax, word [ebx+0xd8714]
	mov [ebp-0x14], eax
	mov esi, 0x10
	mov eax, esi
	sub eax, [ebp-0x14]
	cmp edx, eax
	jle _tr_align_20
	movzx ecx, word [ebx+0xd8712]
	mov [ebp-0x10], ecx
	mov eax, ecx
	mov ecx, edx
	shl eax, cl
	or [ebp-0x16], ax
	movzx eax, word [ebp-0x16]
	mov [edi+0x16b0], ax
	mov edx, [edi+0x14]
	mov eax, [edi+0x8]
	movzx ecx, byte [ebp-0x16]
	mov [eax+edx], cl
	mov ecx, [edi+0x8]
	movzx eax, byte [edi+0x16b1]
	mov [edx+ecx+0x1], al
	add edx, 0x2
	mov [edi+0x14], edx
	mov edx, [edi+0x16b4]
	sub esi, edx
	mov eax, [ebp-0x10]
	mov ecx, esi
	sar eax, cl
	mov [edi+0x16b0], ax
	mov eax, [ebp-0x14]
	lea edx, [eax+edx-0x10]
	mov [edi+0x16b4], edx
	cmp edx, 0x10
	jz _tr_align_30
_tr_align_90:
	cmp edx, 0x7
	jg _tr_align_40
_tr_align_100:
	mov eax, [edi+0x16ac]
	sub eax, edx
	add eax, 0xb
	cmp eax, 0x8
	jg _tr_align_50
	cmp edx, 0xd
	jle _tr_align_60
	mov esi, 0x2
	mov eax, esi
	mov ecx, edx
	shl eax, cl
	movzx edx, word [edi+0x16b0]
	or edx, eax
	mov [ebp-0x16], dx
	mov [edi+0x16b0], dx
	mov edx, [edi+0x14]
	mov eax, [edi+0x8]
	movzx ecx, byte [ebp-0x16]
	mov [eax+edx], cl
	mov ecx, [edi+0x8]
	movzx eax, byte [edi+0x16b1]
	mov [edx+ecx+0x1], al
	add edx, 0x2
	mov [edi+0x14], edx
	mov ecx, 0x10
	mov edx, [edi+0x16b4]
	sub ecx, edx
	sar esi, cl
	mov [ebp-0x16], si
	mov [edi+0x16b0], si
	sub edx, 0xd
	mov [edi+0x16b4], edx
	mov esi, 0x10
	mov eax, esi
	sub eax, [ebp-0x14]
	cmp edx, eax
	jle _tr_align_70
_tr_align_120:
	mov eax, [ebp-0x10]
	mov ecx, edx
	shl eax, cl
	or [ebp-0x16], ax
	movzx eax, word [ebp-0x16]
	mov [edi+0x16b0], ax
	mov edx, [edi+0x14]
	mov eax, [edi+0x8]
	movzx ecx, byte [ebp-0x16]
	mov [eax+edx], cl
	mov ecx, [edi+0x8]
	movzx eax, byte [edi+0x16b1]
	mov [edx+ecx+0x1], al
	add edx, 0x2
	mov [edi+0x14], edx
	mov edx, [edi+0x16b4]
	sub esi, edx
	mov ecx, esi
	sar dword [ebp-0x10], cl
	movzx eax, word [ebp-0x10]
	mov [edi+0x16b0], ax
	mov ecx, [ebp-0x14]
	lea edx, [ecx+edx-0x10]
	mov [edi+0x16b4], edx
	cmp edx, 0x10
	jz _tr_align_80
_tr_align_130:
	cmp edx, 0x7
	jle _tr_align_50
	mov eax, [edi+0x14]
	mov ecx, [edi+0x8]
	movzx edx, word [edi+0x16b0]
	mov [ecx+eax], dl
	add eax, 0x1
	mov [edi+0x14], eax
	movzx eax, byte [edi+0x16b1]
	mov [edi+0x16b0], ax
	sub dword [edi+0x16b4], 0x8
_tr_align_50:
	mov dword [edi+0x16ac], 0x7
	add esp, 0xc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_tr_align_20:
	movzx ecx, word [ebx+0xd8712]
	mov [ebp-0x10], ecx
	mov eax, ecx
	mov ecx, edx
	shl eax, cl
	or [ebp-0x16], ax
	movzx eax, word [ebp-0x16]
	mov [edi+0x16b0], ax
	add edx, [ebp-0x14]
	mov [edi+0x16b4], edx
	cmp edx, 0x10
	jnz _tr_align_90
_tr_align_30:
	mov edx, [edi+0x14]
	mov ecx, [edi+0x8]
	movzx eax, word [edi+0x16b0]
	mov [ecx+edx], al
	mov ecx, [edi+0x8]
	movzx eax, byte [edi+0x16b1]
	mov [edx+ecx+0x1], al
	add edx, 0x2
	mov [edi+0x14], edx
	mov word [edi+0x16b0], 0x0
	xor edx, edx
	mov dword [edi+0x16b4], 0x0
	jmp _tr_align_100
_tr_align_10:
	mov eax, 0x2
	mov ecx, edx
	shl eax, cl
	movzx ecx, word [edi+0x16b0]
	or ecx, eax
	mov [ebp-0x16], cx
	mov [edi+0x16b0], cx
	add edx, 0x3
	mov [edi+0x16b4], edx
	jmp _tr_align_110
_tr_align_40:
	mov eax, [edi+0x14]
	mov ecx, [edi+0x8]
	movzx edx, word [edi+0x16b0]
	mov [ecx+eax], dl
	add eax, 0x1
	mov [edi+0x14], eax
	movzx edx, byte [edi+0x16b1]
	mov [edi+0x16b0], dx
	mov edx, [edi+0x16b4]
	sub edx, 0x8
	mov [edi+0x16b4], edx
	jmp _tr_align_100
_tr_align_60:
	mov eax, 0x2
	mov ecx, edx
	shl eax, cl
	movzx ecx, word [edi+0x16b0]
	or ecx, eax
	mov [ebp-0x16], cx
	mov [edi+0x16b0], cx
	add edx, 0x3
	mov [edi+0x16b4], edx
	mov esi, 0x10
	mov eax, esi
	sub eax, [ebp-0x14]
	cmp edx, eax
	jg _tr_align_120
_tr_align_70:
	mov ecx, edx
	shl dword [ebp-0x10], cl
	movzx eax, word [ebp-0x10]
	or [ebp-0x16], ax
	movzx ecx, word [ebp-0x16]
	mov [edi+0x16b0], cx
	add edx, [ebp-0x14]
	mov [edi+0x16b4], edx
	cmp edx, 0x10
	jnz _tr_align_130
_tr_align_80:
	mov edx, [edi+0x14]
	mov ecx, [edi+0x8]
	movzx eax, word [edi+0x16b0]
	mov [ecx+edx], al
	mov ecx, [edi+0x8]
	movzx eax, byte [edi+0x16b1]
	mov [edx+ecx+0x1], al
	add edx, 0x2
	mov [edi+0x14], edx
	mov word [edi+0x16b0], 0x0
	mov dword [edi+0x16b4], 0x0
	mov dword [edi+0x16ac], 0x7
	add esp, 0xc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;_tr_flush_block
_tr_flush_block:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	call __i686.get_pc_thunk.bx
	mov eax, [ebp+0x8]
	mov edx, [eax+0x7c]
	test edx, edx
	jle _tr_flush_block_10
	cmp byte [eax+0x1c], 0x2
	jz _tr_flush_block_20
_tr_flush_block_580:
	mov edx, [ebp+0x8]
	add edx, 0xb10
	mov eax, [ebp+0x8]
	call build_tree
	mov edx, [ebp+0x8]
	add edx, 0xb1c
	mov eax, [ebp+0x8]
	call build_tree
	mov ecx, [ebp+0x8]
	mov ecx, [ecx+0xb14]
	mov [ebp-0x48], ecx
	mov ecx, [ebp+0x8]
	add ecx, 0x8c
	movzx eax, word [ecx+0x2]
	movzx edx, ax
	test ax, ax
	jnz _tr_flush_block_30
	mov dword [ebp-0x40], 0x8a
	mov dword [ebp-0x3c], 0x3
_tr_flush_block_360:
	mov esi, [ebp-0x48]
	mov word [ecx+esi*4+0x6], 0xffff
	test esi, esi
	js _tr_flush_block_40
	lea esi, [ecx+0x6]
	mov dword [ebp-0x20], 0xffffffff
	xor eax, eax
	mov dword [ebp-0x44], 0x0
	jmp _tr_flush_block_50
_tr_flush_block_90:
	mov ecx, [ebp+0x8]
	add [ecx+edx*4+0xa74], ax
_tr_flush_block_400:
	test di, di
	jnz _tr_flush_block_60
_tr_flush_block_120:
	xor eax, eax
	mov dword [ebp-0x40], 0x8a
	mov dword [ebp-0x3c], 0x3
_tr_flush_block_510:
	add dword [ebp-0x44], 0x1
	add esi, 0x4
	mov edi, [ebp-0x44]
	cmp [ebp-0x48], edi
	jl _tr_flush_block_40
_tr_flush_block_140:
	mov [ebp-0x20], edx
	mov edx, [ebp-0x5c]
_tr_flush_block_50:
	movzx edi, word [esi]
	movzx ecx, di
	mov [ebp-0x5c], ecx
	add eax, 0x1
	cmp [ebp-0x40], eax
	jle _tr_flush_block_70
	cmp edx, ecx
	jz _tr_flush_block_80
_tr_flush_block_70:
	cmp [ebp-0x3c], eax
	jg _tr_flush_block_90
	test edx, edx
	jz _tr_flush_block_100
	cmp [ebp-0x20], edx
	jz _tr_flush_block_110
	mov eax, [ebp+0x8]
	add word [eax+edx*4+0xa74], 0x1
_tr_flush_block_110:
	mov ecx, [ebp+0x8]
	add word [ecx+0xab4], 0x1
	test di, di
	jz _tr_flush_block_120
_tr_flush_block_60:
	cmp edx, [ebp-0x5c]
	jz _tr_flush_block_130
	xor eax, eax
	mov dword [ebp-0x40], 0x7
	mov dword [ebp-0x3c], 0x4
	add dword [ebp-0x44], 0x1
	add esi, 0x4
	mov edi, [ebp-0x44]
	cmp [ebp-0x48], edi
	jge _tr_flush_block_140
_tr_flush_block_40:
	mov eax, [ebp+0x8]
	mov eax, [eax+0xb20]
	mov [ebp-0x38], eax
	mov ecx, [ebp+0x8]
	add ecx, 0x980
	movzx eax, word [ecx+0x2]
	movzx edx, ax
	test ax, ax
	jnz _tr_flush_block_150
	mov dword [ebp-0x30], 0x8a
	mov dword [ebp-0x2c], 0x3
_tr_flush_block_520:
	mov esi, [ebp-0x38]
	mov word [ecx+esi*4+0x6], 0xffff
	test esi, esi
	js _tr_flush_block_160
	lea esi, [ecx+0x6]
	mov dword [ebp-0x1c], 0xffffffff
	xor eax, eax
	mov dword [ebp-0x34], 0x0
	jmp _tr_flush_block_170
_tr_flush_block_210:
	mov ecx, [ebp+0x8]
	add [ecx+edx*4+0xa74], ax
_tr_flush_block_380:
	test di, di
	jnz _tr_flush_block_180
_tr_flush_block_240:
	xor eax, eax
	mov dword [ebp-0x30], 0x8a
	mov dword [ebp-0x2c], 0x3
_tr_flush_block_500:
	add dword [ebp-0x34], 0x1
	add esi, 0x4
	mov edi, [ebp-0x34]
	cmp [ebp-0x38], edi
	jl _tr_flush_block_160
_tr_flush_block_260:
	mov [ebp-0x1c], edx
	mov edx, [ebp-0x5c]
_tr_flush_block_170:
	movzx edi, word [esi]
	movzx ecx, di
	mov [ebp-0x5c], ecx
	add eax, 0x1
	cmp [ebp-0x30], eax
	jle _tr_flush_block_190
	cmp edx, ecx
	jz _tr_flush_block_200
_tr_flush_block_190:
	cmp [ebp-0x2c], eax
	jg _tr_flush_block_210
	test edx, edx
	jz _tr_flush_block_220
	cmp [ebp-0x1c], edx
	jz _tr_flush_block_230
	mov eax, [ebp+0x8]
	add word [eax+edx*4+0xa74], 0x1
_tr_flush_block_230:
	mov ecx, [ebp+0x8]
	add word [ecx+0xab4], 0x1
	test di, di
	jz _tr_flush_block_240
_tr_flush_block_180:
	cmp edx, [ebp-0x5c]
	jz _tr_flush_block_250
	xor eax, eax
	mov dword [ebp-0x30], 0x7
	mov dword [ebp-0x2c], 0x4
	add dword [ebp-0x34], 0x1
	add esi, 0x4
	mov edi, [ebp-0x34]
	cmp [ebp-0x38], edi
	jge _tr_flush_block_260
_tr_flush_block_160:
	mov edx, [ebp+0x8]
	add edx, 0xb28
	mov eax, [ebp+0x8]
	call build_tree
	mov edi, 0x12
	lea edx, [ebx+0xd77f8]
_tr_flush_block_280:
	movzx eax, byte [edx+0x12]
	mov ecx, [ebp+0x8]
	cmp word [ecx+eax*4+0xa76], 0x0
	jnz _tr_flush_block_270
	sub edi, 0x1
	sub edx, 0x1
	cmp edi, 0x2
	jnz _tr_flush_block_280
	mov esi, [ebp+0x8]
_tr_flush_block_530:
	lea eax, [edi+edi*2]
	add eax, [esi+0x16a0]
	lea edx, [eax+0x11]
	mov [esi+0x16a0], edx
	lea edx, [eax+0x1b]
	shr edx, 0x3
	mov ecx, [esi+0x16a4]
	add ecx, 0xa
	shr ecx, 0x3
	cmp edx, ecx
	jb _tr_flush_block_290
	mov edx, ecx
_tr_flush_block_290:
	mov eax, [ebp+0x10]
	add eax, 0x4
	cmp edx, eax
	jb _tr_flush_block_300
	mov eax, [ebp+0xc]
	test eax, eax
	jz _tr_flush_block_300
	mov edi, [ebp+0x14]
	mov [esp+0xc], edi
	mov eax, [ebp+0x10]
	mov [esp+0x8], eax
	mov edx, [ebp+0xc]
	mov [esp+0x4], edx
	mov ecx, [ebp+0x8]
	mov [esp], ecx
	call _tr_stored_block
_tr_flush_block_490:
	mov eax, [ebp+0x8]
	mov edx, 0x11e
_tr_flush_block_310:
	mov word [eax+0x8c], 0x0
	add eax, 0x4
	sub edx, 0x1
	jnz _tr_flush_block_310
	mov eax, [ebp+0x8]
	mov edx, 0x1e
_tr_flush_block_320:
	mov word [eax+0x980], 0x0
	add eax, 0x4
	sub edx, 0x1
	jnz _tr_flush_block_320
	mov eax, [ebp+0x8]
	mov edx, 0x13
_tr_flush_block_330:
	mov word [eax+0xa74], 0x0
	add eax, 0x4
	sub edx, 0x1
	jnz _tr_flush_block_330
	mov edi, [ebp+0x8]
	mov word [edi+0x48c], 0x1
	mov dword [edi+0x16a4], 0x0
	mov dword [edi+0x16a0], 0x0
	mov dword [edi+0x16a8], 0x0
	mov dword [edi+0x1698], 0x0
	mov ecx, [ebp+0x14]
	test ecx, ecx
	jz _tr_flush_block_340
	mov eax, [edi+0x16b4]
	cmp eax, 0x8
	jle _tr_flush_block_350
	mov edx, [edi+0x14]
	mov ecx, [edi+0x8]
	movzx eax, word [edi+0x16b0]
	mov [ecx+edx], al
	mov ecx, [edi+0x8]
	movzx eax, byte [edi+0x16b1]
	mov [edx+ecx+0x1], al
	add edx, 0x2
	mov [edi+0x14], edx
_tr_flush_block_540:
	mov edi, [ebp+0x8]
	mov word [edi+0x16b0], 0x0
	mov dword [edi+0x16b4], 0x0
_tr_flush_block_340:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_tr_flush_block_30:
	mov dword [ebp-0x40], 0x7
	mov dword [ebp-0x3c], 0x4
	jmp _tr_flush_block_360
_tr_flush_block_220:
	cmp eax, 0xa
	jg _tr_flush_block_370
	mov eax, [ebp+0x8]
	add word [eax+0xab8], 0x1
	jmp _tr_flush_block_380
_tr_flush_block_100:
	cmp eax, 0xa
	jg _tr_flush_block_390
	mov eax, [ebp+0x8]
	add word [eax+0xab8], 0x1
	jmp _tr_flush_block_400
_tr_flush_block_300:
	cmp edx, ecx
	jz _tr_flush_block_410
	mov esi, [ebp+0x8]
	mov edx, [esi+0x16b4]
	cmp edx, 0xd
	jle _tr_flush_block_420
	mov esi, [ebp+0x14]
	add esi, 0x4
	mov eax, esi
	mov ecx, edx
	shl eax, cl
	mov ecx, [ebp+0x8]
	movzx edx, word [ecx+0x16b0]
	or edx, eax
	mov [ebp-0x5c], dx
	mov [ecx+0x16b0], dx
	mov edx, [ecx+0x14]
	mov eax, [ecx+0x8]
	mov [ebp-0x6c], eax
	movzx ecx, byte [ebp-0x5c]
	mov [eax+edx], cl
	mov eax, [ebp+0x8]
	mov ecx, [eax+0x8]
	movzx eax, byte [eax+0x16b1]
	mov [edx+ecx+0x1], al
	add edx, 0x2
	mov ecx, [ebp+0x8]
	mov [ecx+0x14], edx
	movzx esi, si
	mov ecx, 0x10
	mov eax, [ebp+0x8]
	mov edx, [eax+0x16b4]
	sub ecx, edx
	sar esi, cl
	mov [ebp-0x5c], si
	mov [eax+0x16b0], si
	sub edx, 0xd
	mov [eax+0x16b4], edx
_tr_flush_block_620:
	add edi, 0x1
	mov [ebp-0x28], edi
	mov eax, [ebp+0x8]
	mov edi, [eax+0xb20]
	add edi, 0x1
	mov eax, [eax+0xb14]
	lea esi, [eax+0x1]
	mov [ebp-0x24], esi
	cmp edx, 0xb
	jle _tr_flush_block_430
	lea esi, [eax-0x100]
	mov eax, esi
	mov ecx, edx
	shl eax, cl
	or [ebp-0x5c], ax
	movzx eax, word [ebp-0x5c]
	mov edx, [ebp+0x8]
	mov [edx+0x16b0], ax
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x14]
	mov eax, [ecx+0x8]
	movzx ecx, byte [ebp-0x5c]
	mov [eax+edx], cl
	mov eax, [ebp+0x8]
	mov ecx, [eax+0x8]
	movzx eax, byte [eax+0x16b1]
	mov [edx+ecx+0x1], al
	add edx, 0x2
	mov ecx, [ebp+0x8]
	mov [ecx+0x14], edx
	movzx esi, si
	mov ecx, 0x10
	mov eax, [ebp+0x8]
	mov edx, [eax+0x16b4]
	sub ecx, edx
	sar esi, cl
	mov [ebp-0x5c], si
	mov [eax+0x16b0], si
	sub edx, 0xb
	mov [eax+0x16b4], edx
_tr_flush_block_610:
	cmp edx, 0xb
	jle _tr_flush_block_440
	sub edi, 0x1
	mov [ebp-0x50], edi
	mov eax, edi
	mov ecx, edx
	shl eax, cl
	or [ebp-0x5c], ax
	movzx eax, word [ebp-0x5c]
	mov edx, [ebp+0x8]
	mov [edx+0x16b0], ax
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x14]
	mov eax, [ecx+0x8]
	movzx ecx, byte [ebp-0x5c]
	mov [eax+edx], cl
	mov esi, [ebp+0x8]
	mov ecx, [esi+0x8]
	movzx eax, byte [esi+0x16b1]
	mov [edx+ecx+0x1], al
	add edx, 0x2
	mov [esi+0x14], edx
	movzx eax, di
	mov ecx, 0x10
	mov edx, [esi+0x16b4]
	sub ecx, edx
	sar eax, cl
	mov [ebp-0x5c], ax
	mov [esi+0x16b0], ax
	sub edx, 0xb
	mov [esi+0x16b4], edx
_tr_flush_block_600:
	cmp edx, 0xc
	jle _tr_flush_block_450
	mov esi, [ebp-0x28]
	sub esi, 0x4
	mov eax, esi
	mov ecx, edx
	shl eax, cl
	or [ebp-0x5c], ax
	movzx eax, word [ebp-0x5c]
	mov edx, [ebp+0x8]
	mov [edx+0x16b0], ax
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x14]
	mov eax, [ecx+0x8]
	movzx ecx, byte [ebp-0x5c]
	mov [eax+edx], cl
	mov edi, [ebp+0x8]
	mov ecx, [edi+0x8]
	movzx eax, byte [edi+0x16b1]
	mov [edx+ecx+0x1], al
	add edx, 0x2
	mov [edi+0x14], edx
	movzx esi, si
	mov ecx, 0x10
	mov eax, [edi+0x16b4]
	sub ecx, eax
	sar esi, cl
	mov [edi+0x16b0], si
	lea edx, [eax-0xc]
	mov [edi+0x16b4], edx
_tr_flush_block_590:
	mov esi, [ebp-0x28]
	test esi, esi
	jle _tr_flush_block_460
	lea edi, [ebx+0xd77f8]
	mov esi, [ebp-0x28]
	add esi, edi
	mov [ebp-0x4c], esi
	jmp _tr_flush_block_470
_tr_flush_block_480:
	mov edx, eax
	movzx eax, byte [edi]
	movzx esi, word [edx+eax*4+0xa76]
	mov eax, esi
	shl eax, cl
	movzx ecx, word [edx+0x16b0]
	or ecx, eax
	mov [ebp-0x5c], cx
	mov [edx+0x16b0], cx
	mov eax, [ebp+0x8]
	mov edx, [eax+0x14]
	mov eax, [eax+0x8]
	movzx ecx, byte [ebp-0x5c]
	mov [eax+edx], cl
	mov eax, [ebp+0x8]
	mov ecx, [eax+0x8]
	movzx eax, byte [eax+0x16b1]
	mov [edx+ecx+0x1], al
	add edx, 0x2
	mov ecx, [ebp+0x8]
	mov [ecx+0x14], edx
	mov eax, [ecx+0x16b4]
	mov ecx, 0x10
	sub ecx, eax
	sar esi, cl
	mov edx, [ebp+0x8]
	mov [edx+0x16b0], si
	lea edx, [eax-0xd]
	mov ecx, [ebp+0x8]
	mov [ecx+0x16b4], edx
	add edi, 0x1
	cmp [ebp-0x4c], edi
	jz _tr_flush_block_460
_tr_flush_block_470:
	mov eax, [ebp+0x8]
	mov ecx, [eax+0x16b4]
	cmp ecx, 0xd
	jg _tr_flush_block_480
	mov esi, eax
	movzx eax, byte [edi]
	movzx eax, word [esi+eax*4+0xa76]
	shl eax, cl
	or [esi+0x16b0], ax
	lea edx, [ecx+0x3]
	mov [esi+0x16b4], edx
	add edi, 0x1
	cmp [ebp-0x4c], edi
	jnz _tr_flush_block_470
_tr_flush_block_460:
	mov esi, [ebp+0x8]
	add esi, 0x8c
	mov ecx, [ebp-0x24]
	sub ecx, 0x1
	mov edx, esi
	mov eax, [ebp+0x8]
	call send_tree
	mov edi, [ebp+0x8]
	add edi, 0x980
	mov ecx, [ebp-0x50]
	mov edx, edi
	mov eax, [ebp+0x8]
	call send_tree
	mov ecx, edi
	mov edx, esi
	mov eax, [ebp+0x8]
	call compress_block
	jmp _tr_flush_block_490
_tr_flush_block_200:
	mov edx, [ebp-0x1c]
	jmp _tr_flush_block_500
_tr_flush_block_80:
	mov edx, [ebp-0x20]
	jmp _tr_flush_block_510
_tr_flush_block_130:
	xor eax, eax
	mov dword [ebp-0x40], 0x6
	mov dword [ebp-0x3c], 0x3
	jmp _tr_flush_block_510
_tr_flush_block_250:
	xor eax, eax
	mov dword [ebp-0x30], 0x6
	mov dword [ebp-0x2c], 0x3
	jmp _tr_flush_block_500
_tr_flush_block_150:
	mov dword [ebp-0x30], 0x7
	mov dword [ebp-0x2c], 0x4
	jmp _tr_flush_block_520
_tr_flush_block_370:
	mov ecx, [ebp+0x8]
	add word [ecx+0xabc], 0x1
	jmp _tr_flush_block_380
_tr_flush_block_270:
	mov esi, ecx
	jmp _tr_flush_block_530
_tr_flush_block_390:
	mov ecx, [ebp+0x8]
	add word [ecx+0xabc], 0x1
	jmp _tr_flush_block_400
_tr_flush_block_350:
	test eax, eax
	jle _tr_flush_block_540
	mov edx, [ebp+0x8]
	mov eax, [edx+0x14]
	mov ecx, [edx+0x8]
	mov esi, edx
	movzx edx, word [edx+0x16b0]
	mov [ecx+eax], dl
	add eax, 0x1
	mov [esi+0x14], eax
	jmp _tr_flush_block_540
_tr_flush_block_20:
	mov edx, eax
	xor ecx, ecx
	xor esi, esi
_tr_flush_block_550:
	movzx eax, word [edx+0x8c]
	add esi, eax
	add ecx, 0x1
	add edx, 0x4
	cmp ecx, 0x7
	jnz _tr_flush_block_550
	mov edx, [ebp+0x8]
	add edx, 0xa8
	xor edi, edi
	mov cl, 0x79
_tr_flush_block_560:
	movzx eax, word [edx]
	add edi, eax
	add edx, 0x4
	sub ecx, 0x1
	jnz _tr_flush_block_560
	mov ecx, 0x80
	mov edx, [ebp+0x8]
	add edx, 0x28c
_tr_flush_block_570:
	movzx eax, word [edx]
	add esi, eax
	add ecx, 0x1
	add edx, 0x4
	cmp ecx, 0x100
	jnz _tr_flush_block_570
	shr edi, 0x2
	cmp esi, edi
	mov edx, [ebp+0x8]
	setbe byte [edx+0x1c]
	jmp _tr_flush_block_580
_tr_flush_block_450:
	mov eax, [ebp-0x28]
	sub eax, 0x4
	mov ecx, edx
	shl eax, cl
	or [ebp-0x5c], ax
	movzx eax, word [ebp-0x5c]
	mov ecx, [ebp+0x8]
	mov [ecx+0x16b0], ax
	add edx, 0x4
	mov [ecx+0x16b4], edx
	jmp _tr_flush_block_590
_tr_flush_block_440:
	sub edi, 0x1
	mov [ebp-0x50], edi
	mov eax, edi
	mov ecx, edx
	shl eax, cl
	or [ebp-0x5c], ax
	movzx eax, word [ebp-0x5c]
	mov ecx, [ebp+0x8]
	mov [ecx+0x16b0], ax
	add edx, 0x5
	mov [ecx+0x16b4], edx
	jmp _tr_flush_block_600
_tr_flush_block_430:
	sub eax, 0x100
	mov ecx, edx
	shl eax, cl
	or [ebp-0x5c], ax
	movzx eax, word [ebp-0x5c]
	mov ecx, [ebp+0x8]
	mov [ecx+0x16b0], ax
	add edx, 0x5
	mov [ecx+0x16b4], edx
	jmp _tr_flush_block_610
_tr_flush_block_420:
	mov eax, [ebp+0x14]
	add eax, 0x4
	mov ecx, edx
	shl eax, cl
	mov esi, [ebp+0x8]
	movzx ecx, word [esi+0x16b0]
	or ecx, eax
	mov [ebp-0x5c], cx
	mov [esi+0x16b0], cx
	add edx, 0x3
	mov [esi+0x16b4], edx
	jmp _tr_flush_block_620
_tr_flush_block_410:
	mov esi, [ebp+0x8]
	mov ecx, [esi+0x16b4]
	cmp ecx, 0xd
	jle _tr_flush_block_630
	mov esi, [ebp+0x14]
	add esi, 0x2
	mov eax, esi
	shl eax, cl
	mov ecx, [ebp+0x8]
	movzx edx, word [ecx+0x16b0]
	or edx, eax
	mov [ebp-0x5c], dx
	mov [ecx+0x16b0], dx
	mov edx, [ecx+0x14]
	mov eax, [ecx+0x8]
	movzx ecx, byte [ebp-0x5c]
	mov [eax+edx], cl
	mov edi, [ebp+0x8]
	mov ecx, [edi+0x8]
	movzx eax, byte [edi+0x16b1]
	mov [edx+ecx+0x1], al
	add edx, 0x2
	mov [edi+0x14], edx
	movzx esi, si
	mov ecx, 0x10
	mov eax, [edi+0x16b4]
	sub ecx, eax
	sar esi, cl
	mov [edi+0x16b0], si
	lea edx, [eax-0xd]
	mov [edi+0x16b4], edx
_tr_flush_block_640:
	lea ecx, [ebx+0xd72f8]
	lea edx, [ebx+0xd7378]
	mov eax, [ebp+0x8]
	call compress_block
	jmp _tr_flush_block_490
_tr_flush_block_10:
	mov ecx, [ebp+0x10]
	add ecx, 0x5
	mov edx, ecx
	xor edi, edi
	jmp _tr_flush_block_290
_tr_flush_block_630:
	mov eax, [ebp+0x14]
	add eax, 0x2
	shl eax, cl
	mov edx, [ebp+0x8]
	or [edx+0x16b0], ax
	lea edx, [ecx+0x3]
	mov ecx, [ebp+0x8]
	mov [ecx+0x16b4], edx
	jmp _tr_flush_block_640
	add [eax], al


;_tr_init
_tr_init:
	push ebp
	mov ebp, esp
	push ebx
	call __i686.get_pc_thunk.bx
	mov ecx, [ebp+0x8]
	lea eax, [ecx+0x8c]
	mov [ecx+0xb10], eax
	lea eax, [ebx+0xe589f]
	mov [ecx+0xb18], eax
	lea eax, [ecx+0x980]
	mov [ecx+0xb1c], eax
	lea eax, [ebx+0xe588b]
	mov [ecx+0xb24], eax
	lea eax, [ecx+0xa74]
	mov [ecx+0xb28], eax
	lea eax, [ebx+0xe5877]
	mov [ecx+0xb30], eax
	mov word [ecx+0x16b0], 0x0
	mov dword [ecx+0x16b4], 0x0
	mov dword [ecx+0x16ac], 0x8
	mov eax, ecx
	xor edx, edx
_tr_init_10:
	mov word [eax+0x8c], 0x0
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x11e
	jnz _tr_init_10
	mov eax, ecx
	xor dx, dx
_tr_init_20:
	mov word [eax+0x980], 0x0
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x1e
	jnz _tr_init_20
	mov eax, ecx
	and edx, 0xffffff00
_tr_init_30:
	mov word [eax+0xa74], 0x0
	add edx, 0x1
	add eax, 0x4
	cmp edx, 0x13
	jnz _tr_init_30
	mov word [ecx+0x48c], 0x1
	mov dword [ecx+0x16a4], 0x0
	mov dword [ecx+0x16a0], 0x0
	mov dword [ecx+0x16a8], 0x0
	mov dword [ecx+0x1698], 0x0
	pop ebx
	pop ebp
	ret


;_tr_stored_block
_tr_stored_block:
	push ebp
	mov ebp, esp
	push edi
	push esi
	sub esp, 0x4
	mov edi, [ebp+0x8]
	mov esi, [ebp+0x14]
	mov ecx, [edi+0x16b4]
	cmp ecx, 0xd
	jle _tr_stored_block_10
	mov eax, esi
	shl eax, cl
	movzx ecx, word [edi+0x16b0]
	or ecx, eax
	mov [edi+0x16b0], cx
	mov edx, [edi+0x14]
	mov eax, [edi+0x8]
	mov [eax+edx], cl
	mov ecx, [edi+0x8]
	movzx eax, byte [edi+0x16b1]
	mov [edx+ecx+0x1], al
	add edx, 0x2
	mov [edi+0x14], edx
	movzx eax, si
	mov ecx, 0x10
	mov edx, [edi+0x16b4]
	sub ecx, edx
	sar eax, cl
	mov [edi+0x16b0], ax
	sub edx, 0xd
	mov [edi+0x16b4], edx
_tr_stored_block_70:
	cmp edx, 0x8
	jle _tr_stored_block_20
	mov edx, [edi+0x14]
	mov ecx, [edi+0x8]
	movzx eax, word [edi+0x16b0]
	mov [ecx+edx], al
	mov ecx, [edi+0x8]
	movzx eax, byte [edi+0x16b1]
	mov [edx+ecx+0x1], al
	add edx, 0x2
	mov [edi+0x14], edx
_tr_stored_block_60:
	mov word [edi+0x16b0], 0x0
	mov dword [edi+0x16b4], 0x0
	mov dword [edi+0x16ac], 0x8
	mov eax, [edi+0x8]
	movzx ecx, byte [ebp+0x10]
	mov [eax+edx], cl
	movzx ecx, word [ebp+0x10]
	mov esi, [edi+0x8]
	mov eax, ecx
	shr ax, 0x8
	mov [edx+esi+0x1], al
	mov esi, [edi+0x8]
	movzx eax, byte [ebp+0x10]
	not al
	mov [edx+esi+0x2], al
	mov eax, [edi+0x8]
	not ecx
	shr cx, 0x8
	mov [edx+eax+0x3], cl
	add edx, 0x4
	mov [edi+0x14], edx
	mov eax, [ebp+0x10]
	sub eax, 0x1
	cmp eax, 0xffffffff
	jz _tr_stored_block_30
	mov esi, [ebp+0xc]
	lea eax, [esi+eax+0x1]
	mov [ebp-0xc], eax
	mov eax, [edi+0x14]
_tr_stored_block_40:
	mov ecx, [edi+0x8]
	movzx edx, byte [esi]
	mov [ecx+eax], dl
	add eax, 0x1
	mov [edi+0x14], eax
	add esi, 0x1
	cmp esi, [ebp-0xc]
	jnz _tr_stored_block_40
_tr_stored_block_30:
	add esp, 0x4
	pop esi
	pop edi
	pop ebp
	ret
_tr_stored_block_20:
	test edx, edx
	jle _tr_stored_block_50
	mov eax, [edi+0x14]
	mov ecx, [edi+0x8]
	movzx edx, word [edi+0x16b0]
	mov [ecx+eax], dl
	add eax, 0x1
	mov [edi+0x14], eax
	mov edx, eax
	jmp _tr_stored_block_60
_tr_stored_block_10:
	shl esi, cl
	or [edi+0x16b0], si
	lea edx, [ecx+0x3]
	mov [edi+0x16b4], edx
	jmp _tr_stored_block_70
_tr_stored_block_50:
	mov edx, [edi+0x14]
	jmp _tr_stored_block_60


;Initialized global or static variables of trees:
SECTION .data
static_bl_desc: dd 0x0, extra_blbits, 0x0, 0x13, 0x7
static_d_desc: dd static_dtree, extra_dbits, 0x0, 0x1e, 0xf
static_l_desc: dd static_ltree, extra_lbits, 0x101, 0x11e, 0xf, 0x0


;Initialized constant data of trees:
SECTION .rdata
static_dtree: dd 0x50000, 0x50010, 0x50008, 0x50018, 0x50004, 0x50014, 0x5000c, 0x5001c, 0x50002, 0x50012, 0x5000a, 0x5001a, 0x50006, 0x50016, 0x5000e, 0x5001e, 0x50001, 0x50011, 0x50009, 0x50019, 0x50005, 0x50015, 0x5000d, 0x5001d, 0x50003, 0x50013, 0x5000b, 0x5001b, 0x50007, 0x50017, 0x0, 0x0
static_ltree: dd 0x8000c, 0x8008c, 0x8004c, 0x800cc, 0x8002c, 0x800ac, 0x8006c, 0x800ec, 0x8001c, 0x8009c, 0x8005c, 0x800dc, 0x8003c, 0x800bc, 0x8007c, 0x800fc, 0x80002, 0x80082, 0x80042, 0x800c2, 0x80022, 0x800a2, 0x80062, 0x800e2, 0x80012, 0x80092, 0x80052, 0x800d2, 0x80032, 0x800b2, 0x80072, 0x800f2, 0x8000a, 0x8008a, 0x8004a, 0x800ca, 0x8002a, 0x800aa, 0x8006a, 0x800ea, 0x8001a, 0x8009a, 0x8005a, 0x800da, 0x8003a, 0x800ba, 0x8007a, 0x800fa, 0x80006, 0x80086, 0x80046, 0x800c6, 0x80026, 0x800a6, 0x80066, 0x800e6, 0x80016, 0x80096, 0x80056, 0x800d6, 0x80036, 0x800b6, 0x80076, 0x800f6, 0x8000e, 0x8008e, 0x8004e, 0x800ce, 0x8002e, 0x800ae, 0x8006e, 0x800ee, 0x8001e, 0x8009e, 0x8005e, 0x800de, 0x8003e, 0x800be, 0x8007e, 0x800fe, 0x80001, 0x80081, 0x80041, 0x800c1, 0x80021, 0x800a1, 0x80061, 0x800e1, 0x80011, 0x80091, 0x80051, 0x800d1, 0x80031, 0x800b1, 0x80071, 0x800f1, 0x80009, 0x80089, 0x80049, 0x800c9, 0x80029, 0x800a9, 0x80069, 0x800e9, 0x80019, 0x80099, 0x80059, 0x800d9, 0x80039, 0x800b9, 0x80079, 0x800f9, 0x80005, 0x80085, 0x80045, 0x800c5, 0x80025, 0x800a5, 0x80065, 0x800e5, 0x80015, 0x80095, 0x80055, 0x800d5, 0x80035, 0x800b5, 0x80075, 0x800f5, 0x8000d, 0x8008d, 0x8004d, 0x800cd, 0x8002d, 0x800ad, 0x8006d, 0x800ed, 0x8001d, 0x8009d, 0x8005d, 0x800dd, 0x8003d, 0x800bd, 0x8007d, 0x800fd, 0x90013, 0x90113, 0x90093, 0x90193, 0x90053, 0x90153, 0x900d3, 0x901d3, 0x90033, 0x90133, 0x900b3, 0x901b3, 0x90073, 0x90173, 0x900f3, 0x901f3, 0x9000b, 0x9010b, 0x9008b, 0x9018b, 0x9004b, 0x9014b, 0x900cb, 0x901cb, 0x9002b, 0x9012b, 0x900ab, 0x901ab, 0x9006b, 0x9016b, 0x900eb, 0x901eb, 0x9001b, 0x9011b, 0x9009b, 0x9019b, 0x9005b, 0x9015b, 0x900db, 0x901db, 0x9003b, 0x9013b, 0x900bb, 0x901bb, 0x9007b, 0x9017b, 0x900fb, 0x901fb, 0x90007, 0x90107, 0x90087, 0x90187, 0x90047, 0x90147, 0x900c7, 0x901c7, 0x90027, 0x90127, 0x900a7, 0x901a7, 0x90067, 0x90167, 0x900e7, 0x901e7, 0x90017, 0x90117, 0x90097, 0x90197, 0x90057, 0x90157, 0x900d7, 0x901d7, 0x90037, 0x90137, 0x900b7, 0x901b7, 0x90077, 0x90177, 0x900f7, 0x901f7, 0x9000f, 0x9010f, 0x9008f, 0x9018f, 0x9004f, 0x9014f, 0x900cf, 0x901cf, 0x9002f, 0x9012f, 0x900af, 0x901af, 0x9006f, 0x9016f, 0x900ef, 0x901ef, 0x9001f, 0x9011f, 0x9009f, 0x9019f, 0x9005f, 0x9015f, 0x900df, 0x901df, 0x9003f, 0x9013f, 0x900bf, 0x901bf, 0x9007f, 0x9017f, 0x900ff, 0x901ff, 0x70000, 0x70040, 0x70020, 0x70060, 0x70010, 0x70050, 0x70030, 0x70070, 0x70008, 0x70048, 0x70028, 0x70068, 0x70018, 0x70058, 0x70038, 0x70078, 0x70004, 0x70044, 0x70024, 0x70064, 0x70014, 0x70054, 0x70034, 0x70074, 0x80003, 0x80083, 0x80043, 0x800c3, 0x80023, 0x800a3, 0x80063, 0x800e3
bl_order: dd 0x121110, 0x6090708, 0x40b050a, 0x20d030c, 0xf010e, 0x0, 0x0, 0x0
base_dist: dd 0x0, 0x1, 0x2, 0x3, 0x4, 0x6, 0x8, 0xc, 0x10, 0x18, 0x20, 0x30, 0x40, 0x60, 0x80, 0xc0, 0x100, 0x180, 0x200, 0x300, 0x400, 0x600, 0x800, 0xc00, 0x1000, 0x1800, 0x2000, 0x3000, 0x4000, 0x6000, 0x0, 0x0
extra_dbits: dd 0x0, 0x0, 0x0, 0x0, 0x1, 0x1, 0x2, 0x2, 0x3, 0x3, 0x4, 0x4, 0x5, 0x5, 0x6, 0x6, 0x7, 0x7, 0x8, 0x8, 0x9, 0x9, 0xa, 0xa, 0xb, 0xb, 0xc, 0xc, 0xd, 0xd, 0x0, 0x0
base_length: dd 0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0xa, 0xc, 0xe, 0x10, 0x14, 0x18, 0x1c, 0x20, 0x28, 0x30, 0x38, 0x40, 0x50, 0x60, 0x70, 0x80, 0xa0, 0xc0, 0xe0, 0x0, 0x0, 0x0, 0x0
extra_lbits: dd 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, 0x1, 0x1, 0x1, 0x2, 0x2, 0x2, 0x2, 0x3, 0x3, 0x3, 0x3, 0x4, 0x4, 0x4, 0x4, 0x5, 0x5, 0x5, 0x5, 0x0, 0x0, 0x0, 0x0
extra_blbits: dd 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x2, 0x3, 0x7, 0x0, 0x0, 0x0, 0x0, 0x0


;Zero initialized global or static variables of trees:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

