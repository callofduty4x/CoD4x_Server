;Imports of pbmd5:

;Exports of pbmd5:
	global _Z9TransformPmS_
	global _Z7MD5InitP7MD5_CTXm
	global _Z8MD5FinalP7MD5_CTX
	global _Z9MD5UpdateP7MD5_CTXPhj


SECTION .text


;Transform(unsigned long*, unsigned long*)
_Z9TransformPmS_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xa0
	mov ecx, [edx]
	mov [ebp-0x74], ecx
	mov ebx, [eax+0x4]
	and ebx, [eax+0x8]
	mov ecx, [eax+0x4]
	not ecx
	and ecx, [eax+0xc]
	or ebx, ecx
	add ebx, [ebp-0x74]
	mov esi, [eax]
	lea ecx, [esi+ebx-0x28955b88]
	ror ecx, 0x19
	add ecx, [eax+0x4]
	mov [ebp-0x30], ecx
	mov ecx, [edx+0x4]
	mov [ebp-0x70], ecx
	mov ebx, [eax+0x4]
	and ebx, [ebp-0x30]
	mov ecx, [ebp-0x30]
	not ecx
	and ecx, [eax+0x8]
	or ebx, ecx
	add ebx, [ebp-0x70]
	mov esi, [eax+0xc]
	lea edi, [esi+ebx-0x173848aa]
	ror edi, 0x14
	add edi, [ebp-0x30]
	mov ecx, [edx+0x8]
	mov [ebp-0x6c], ecx
	mov ebx, [ebp-0x30]
	and ebx, edi
	mov ecx, edi
	not ecx
	and ecx, [eax+0x4]
	or ebx, ecx
	add ebx, [ebp-0x6c]
	mov ecx, [eax+0x8]
	lea esi, [ecx+ebx+0x242070db]
	ror esi, 0xf
	lea esi, [edi+esi]
	mov ebx, [edx+0xc]
	mov [ebp-0x68], ebx
	mov ebx, edi
	and ebx, esi
	mov ecx, esi
	not ecx
	and ecx, [ebp-0x30]
	or ebx, ecx
	add ebx, [ebp-0x68]
	mov ecx, [eax+0x4]
	lea ebx, [ecx+ebx-0x3e423112]
	ror ebx, 0xa
	lea ebx, [esi+ebx]
	mov [ebp-0xa8], ebx
	mov ebx, [edx+0x10]
	mov [ebp-0x64], ebx
	mov ecx, [ebp-0xa8]
	and ecx, esi
	mov [ebp-0x78], ecx
	mov ecx, [ebp-0xa8]
	not ecx
	and ecx, edi
	or [ebp-0x78], ecx
	mov ecx, [ebp-0x78]
	add ecx, ebx
	mov ebx, [ebp-0x30]
	lea ebx, [ebx+ecx-0xa83f051]
	ror ebx, 0x19
	mov [ebp-0xa4], ebx
	add ebx, [ebp-0xa8]
	mov [ebp-0x2c], ebx
	mov ecx, [edx+0x14]
	mov [ebp-0x60], ecx
	and ebx, [ebp-0xa8]
	mov [ebp-0x7c], ebx
	mov ecx, [ebp-0x2c]
	not ecx
	and ecx, esi
	or ebx, ecx
	mov ecx, ebx
	add ecx, [ebp-0x60]
	lea edi, [edi+ecx+0x4787c62a]
	ror edi, 0x14
	add edi, [ebp-0x2c]
	mov ebx, [edx+0x18]
	mov [ebp-0x5c], ebx
	mov ecx, [ebp-0x2c]
	and ecx, edi
	mov [ebp-0x80], ecx
	mov ecx, edi
	not ecx
	and ecx, [ebp-0xa8]
	or [ebp-0x80], ecx
	mov ecx, [ebp-0x80]
	add ecx, ebx
	lea esi, [esi+ecx-0x57cfb9ed]
	ror esi, 0xf
	lea esi, [edi+esi]
	mov ebx, [edx+0x1c]
	mov [ebp-0x58], ebx
	mov ecx, edi
	and ecx, esi
	mov [ebp-0x84], ecx
	mov ecx, esi
	not ecx
	and ecx, [ebp-0x2c]
	or [ebp-0x84], ecx
	mov ecx, [ebp-0x84]
	add ecx, ebx
	mov ebx, [ebp-0xa8]
	lea ebx, [ebx+ecx-0x2b96aff]
	ror ebx, 0xa
	add ebx, esi
	mov [ebp-0xa8], ebx
	mov ecx, [edx+0x20]
	mov [ebp-0x54], ecx
	and ebx, esi
	mov ecx, [ebp-0xa8]
	not ecx
	and ecx, edi
	or ebx, ecx
	mov [ebp-0x88], ebx
	add ebx, [ebp-0x54]
	mov ecx, [ebp-0x2c]
	lea ecx, [ecx+ebx+0x698098d8]
	ror ecx, 0x19
	mov [ebp-0xa4], ecx
	add ecx, [ebp-0xa8]
	mov [ebp-0x28], ecx
	mov ebx, [edx+0x24]
	mov [ebp-0x50], ebx
	and ecx, [ebp-0xa8]
	mov [ebp-0x8c], ecx
	mov ecx, [ebp-0x28]
	not ecx
	and ecx, esi
	or [ebp-0x8c], ecx
	mov ecx, [ebp-0x8c]
	add ecx, ebx
	lea edi, [edi+ecx-0x74bb0851]
	ror edi, 0x14
	add edi, [ebp-0x28]
	mov ecx, [edx+0x28]
	mov [ebp-0x4c], ecx
	mov ebx, [ebp-0x28]
	and ebx, edi
	mov [ebp-0x90], ebx
	mov ecx, edi
	not ecx
	and ecx, [ebp-0xa8]
	or ebx, ecx
	mov ecx, ebx
	add ecx, [ebp-0x4c]
	lea esi, [esi+ecx-0xa44f]
	ror esi, 0xf
	lea esi, [edi+esi]
	mov ecx, [edx+0x2c]
	mov [ebp-0x48], ecx
	mov ebx, edi
	and ebx, esi
	mov ecx, esi
	not ecx
	and ecx, [ebp-0x28]
	or ebx, ecx
	mov [ebp-0x94], ebx
	add ebx, [ebp-0x48]
	mov ecx, [ebp-0xa8]
	lea ecx, [ecx+ebx-0x76a32842]
	ror ecx, 0xa
	add ecx, esi
	mov [ebp-0xa8], ecx
	mov ebx, [edx+0x30]
	mov [ebp-0x44], ebx
	and ecx, esi
	mov [ebp-0x98], ecx
	mov ecx, [ebp-0xa8]
	not ecx
	and ecx, edi
	or [ebp-0x98], ecx
	mov ecx, [ebp-0x98]
	add ecx, ebx
	mov ebx, [ebp-0x28]
	lea ebx, [ebx+ecx+0x6b901122]
	ror ebx, 0x19
	mov [ebp-0xa4], ebx
	add ebx, [ebp-0xa8]
	mov [ebp-0x24], ebx
	mov ecx, [edx+0x34]
	mov [ebp-0x40], ecx
	and ebx, [ebp-0xa8]
	mov [ebp-0x9c], ebx
	mov ecx, [ebp-0x24]
	not ecx
	and ecx, esi
	or ebx, ecx
	mov ecx, ebx
	add ecx, [ebp-0x40]
	lea edi, [edi+ecx-0x2678e6d]
	ror edi, 0x14
	add edi, [ebp-0x24]
	mov ebx, edi
	not ebx
	mov [ebp-0x10], ebx
	mov ecx, [edx+0x38]
	mov [ebp-0x3c], ecx
	mov ebx, [ebp-0x24]
	and ebx, edi
	mov [ebp-0xa4], ebx
	mov ecx, [ebp-0x10]
	and ecx, [ebp-0xa8]
	or ebx, ecx
	mov ecx, ebx
	add ecx, [ebp-0x3c]
	lea esi, [esi+ecx-0x5986bc72]
	ror esi, 0xf
	lea esi, [edi+esi]
	mov ebx, esi
	not ebx
	mov [ebp-0x34], ebx
	mov edx, [edx+0x3c]
	mov [ebp-0x38], edx
	mov edx, edi
	and edx, esi
	mov ecx, [ebp-0x24]
	and ecx, ebx
	or edx, ecx
	add edx, [ebp-0x38]
	mov ecx, [ebp-0xa8]
	lea ebx, [ecx+edx+0x49b40821]
	ror ebx, 0xa
	lea ebx, [esi+ebx]
	mov edx, edi
	and edx, ebx
	and [ebp-0x10], esi
	or edx, [ebp-0x10]
	add edx, [ebp-0x70]
	mov ecx, [ebp-0x24]
	lea edx, [ecx+edx-0x9e1da9e]
	ror edx, 0x1b
	lea edx, [ebx+edx]
	mov [ebp-0x20], edx
	and edx, esi
	and [ebp-0x34], ebx
	or edx, [ebp-0x34]
	add edx, [ebp-0x5c]
	lea edi, [edi+edx-0x3fbf4cc0]
	ror edi, 0x17
	add edi, [ebp-0x20]
	mov ecx, ebx
	and ecx, edi
	mov edx, ebx
	not edx
	and edx, [ebp-0x20]
	or ecx, edx
	add ecx, [ebp-0x48]
	lea esi, [esi+ecx+0x265e5a51]
	ror esi, 0x12
	lea esi, [edi+esi]
	mov ecx, [ebp-0x20]
	and ecx, esi
	mov edx, [ebp-0x20]
	not edx
	and edx, edi
	or ecx, edx
	add ecx, [ebp-0x74]
	lea ebx, [ebx+ecx-0x16493856]
	ror ebx, 0xc
	lea ebx, [esi+ebx]
	mov ecx, edi
	and ecx, ebx
	mov edx, edi
	not edx
	and edx, esi
	or ecx, edx
	add ecx, [ebp-0x60]
	mov edx, [ebp-0x20]
	lea edx, [edx+ecx-0x29d0efa3]
	ror edx, 0x1b
	add edx, ebx
	mov [ebp-0x1c], edx
	mov ecx, edx
	and ecx, esi
	mov edx, esi
	not edx
	and edx, ebx
	or ecx, edx
	add ecx, [ebp-0x4c]
	lea edi, [edi+ecx+0x2441453]
	ror edi, 0x17
	add edi, [ebp-0x1c]
	mov ecx, ebx
	and ecx, edi
	mov edx, ebx
	not edx
	and edx, [ebp-0x1c]
	or ecx, edx
	add ecx, [ebp-0x38]
	lea esi, [esi+ecx-0x275e197f]
	ror esi, 0x12
	lea esi, [edi+esi]
	mov ecx, [ebp-0x1c]
	and ecx, esi
	mov edx, [ebp-0x1c]
	not edx
	and edx, edi
	or ecx, edx
	add ecx, [ebp-0x64]
	lea ebx, [ebx+ecx-0x182c0438]
	ror ebx, 0xc
	lea ebx, [esi+ebx]
	mov ecx, edi
	and ecx, ebx
	mov edx, edi
	not edx
	and edx, esi
	or ecx, edx
	add ecx, [ebp-0x50]
	mov edx, [ebp-0x1c]
	lea edx, [edx+ecx+0x21e1cde6]
	ror edx, 0x1b
	add edx, ebx
	mov [ebp-0x18], edx
	mov ecx, edx
	and ecx, esi
	mov edx, esi
	not edx
	and edx, ebx
	or ecx, edx
	add ecx, [ebp-0x3c]
	lea edi, [edi+ecx-0x3cc8f82a]
	ror edi, 0x17
	add edi, [ebp-0x18]
	mov ecx, ebx
	and ecx, edi
	mov edx, ebx
	not edx
	and edx, [ebp-0x18]
	or ecx, edx
	add ecx, [ebp-0x68]
	lea esi, [esi+ecx-0xb2af279]
	ror esi, 0x12
	lea esi, [edi+esi]
	mov ecx, [ebp-0x18]
	and ecx, esi
	mov edx, [ebp-0x18]
	not edx
	and edx, edi
	or ecx, edx
	add ecx, [ebp-0x54]
	lea ebx, [ebx+ecx+0x455a14ed]
	ror ebx, 0xc
	lea ebx, [esi+ebx]
	mov ecx, edi
	and ecx, ebx
	mov edx, edi
	not edx
	and edx, esi
	or ecx, edx
	add ecx, [ebp-0x40]
	mov edx, [ebp-0x18]
	lea edx, [edx+ecx-0x561c16fb]
	ror edx, 0x1b
	mov [ebp-0xac], edx
	add edx, ebx
	mov [ebp-0x14], edx
	mov ecx, edx
	and ecx, esi
	mov edx, esi
	not edx
	and edx, ebx
	or ecx, edx
	add ecx, [ebp-0x6c]
	lea edi, [edi+ecx-0x3105c08]
	ror edi, 0x17
	add edi, [ebp-0x14]
	mov ecx, ebx
	and ecx, edi
	mov edx, ebx
	not edx
	and edx, [ebp-0x14]
	or ecx, edx
	add ecx, [ebp-0x58]
	lea esi, [esi+ecx+0x676f02d9]
	ror esi, 0x12
	lea esi, [edi+esi]
	mov ecx, [ebp-0x14]
	and ecx, esi
	mov edx, [ebp-0x14]
	not edx
	and edx, edi
	or ecx, edx
	add ecx, [ebp-0x44]
	lea ebx, [ebx+ecx-0x72d5b376]
	ror ebx, 0xc
	lea ebx, [esi+ebx]
	mov edx, esi
	xor edx, ebx
	xor edx, edi
	add edx, [ebp-0x60]
	mov ecx, [ebp-0x14]
	lea edx, [ecx+edx-0x5c6be]
	ror edx, 0x1c
	lea ecx, [ebx+edx]
	mov edx, ebx
	xor edx, ecx
	xor edx, esi
	add edx, [ebp-0x54]
	lea edi, [edi+edx-0x788e097f]
	ror edi, 0x15
	lea edi, [ecx+edi]
	mov edx, ecx
	xor edx, edi
	xor edx, ebx
	add edx, [ebp-0x48]
	lea esi, [esi+edx+0x6d9d6122]
	ror esi, 0x10
	lea esi, [edi+esi]
	mov edx, edi
	xor edx, esi
	xor edx, ecx
	add edx, [ebp-0x3c]
	lea ebx, [ebx+edx-0x21ac7f4]
	ror ebx, 0x9
	lea ebx, [esi+ebx]
	mov edx, esi
	xor edx, ebx
	xor edx, edi
	add edx, [ebp-0x70]
	lea edx, [ecx+edx-0x5b4115bc]
	ror edx, 0x1c
	lea ecx, [ebx+edx]
	mov edx, ebx
	xor edx, ecx
	xor edx, esi
	add edx, [ebp-0x64]
	lea edi, [edi+edx+0x4bdecfa9]
	ror edi, 0x15
	lea edi, [ecx+edi]
	mov edx, ecx
	xor edx, edi
	xor edx, ebx
	add edx, [ebp-0x58]
	lea esi, [esi+edx-0x944b4a0]
	ror esi, 0x10
	lea esi, [edi+esi]
	mov edx, edi
	xor edx, esi
	xor edx, ecx
	add edx, [ebp-0x4c]
	lea ebx, [ebx+edx-0x41404390]
	ror ebx, 0x9
	lea ebx, [esi+ebx]
	mov edx, esi
	xor edx, ebx
	xor edx, edi
	add edx, [ebp-0x40]
	lea edx, [ecx+edx+0x289b7ec6]
	ror edx, 0x1c
	lea ecx, [ebx+edx]
	mov edx, ebx
	xor edx, ecx
	xor edx, esi
	add edx, [ebp-0x74]
	lea edi, [edi+edx-0x155ed806]
	ror edi, 0x15
	lea edi, [ecx+edi]
	mov edx, ecx
	xor edx, edi
	xor edx, ebx
	add edx, [ebp-0x68]
	lea esi, [esi+edx-0x2b10cf7b]
	ror esi, 0x10
	lea esi, [edi+esi]
	mov edx, edi
	xor edx, esi
	xor edx, ecx
	add edx, [ebp-0x5c]
	lea ebx, [ebx+edx+0x4881d05]
	ror ebx, 0x9
	lea ebx, [esi+ebx]
	mov edx, esi
	xor edx, ebx
	xor edx, edi
	add edx, [ebp-0x50]
	lea edx, [ecx+edx-0x262b2fc7]
	ror edx, 0x1c
	lea ecx, [ebx+edx]
	mov edx, ebx
	xor edx, ecx
	xor edx, esi
	add edx, [ebp-0x44]
	lea edi, [edi+edx-0x1924661b]
	ror edi, 0x15
	lea edi, [ecx+edi]
	mov edx, ecx
	xor edx, edi
	xor edx, ebx
	add edx, [ebp-0x38]
	lea esi, [esi+edx+0x1fa27cf8]
	ror esi, 0x10
	lea esi, [edi+esi]
	mov edx, edi
	xor edx, esi
	xor edx, ecx
	add edx, [ebp-0x6c]
	lea ebx, [ebx+edx-0x3b53a99b]
	ror ebx, 0x9
	lea ebx, [esi+ebx]
	mov edx, edi
	not edx
	or edx, ebx
	xor edx, esi
	add edx, [ebp-0x74]
	lea edx, [ecx+edx-0xbd6ddbc]
	ror edx, 0x1a
	lea ecx, [ebx+edx]
	mov edx, esi
	not edx
	or edx, ecx
	xor edx, ebx
	add edx, [ebp-0x58]
	lea edi, [edi+edx+0x432aff97]
	ror edi, 0x16
	lea edi, [ecx+edi]
	mov edx, ebx
	not edx
	or edx, edi
	xor edx, ecx
	add edx, [ebp-0x3c]
	lea esi, [esi+edx-0x546bdc59]
	ror esi, 0x11
	lea esi, [edi+esi]
	mov edx, ecx
	not edx
	or edx, esi
	xor edx, edi
	add edx, [ebp-0x60]
	lea ebx, [ebx+edx-0x36c5fc7]
	ror ebx, 0xb
	lea ebx, [esi+ebx]
	mov edx, edi
	not edx
	or edx, ebx
	xor edx, esi
	add edx, [ebp-0x44]
	lea edx, [ecx+edx+0x655b59c3]
	ror edx, 0x1a
	lea ecx, [ebx+edx]
	mov edx, esi
	not edx
	or edx, ecx
	xor edx, ebx
	add edx, [ebp-0x68]
	lea edi, [edi+edx-0x70f3336e]
	ror edi, 0x16
	lea edi, [ecx+edi]
	mov edx, ebx
	not edx
	or edx, edi
	xor edx, ecx
	add edx, [ebp-0x4c]
	lea esi, [esi+edx-0x100b83]
	ror esi, 0x11
	lea esi, [edi+esi]
	mov edx, ecx
	not edx
	or edx, esi
	xor edx, edi
	add edx, [ebp-0x70]
	lea ebx, [ebx+edx-0x7a7ba22f]
	ror ebx, 0xb
	lea ebx, [esi+ebx]
	mov edx, edi
	not edx
	or edx, ebx
	xor edx, esi
	add edx, [ebp-0x54]
	lea edx, [ecx+edx+0x6fa87e4f]
	ror edx, 0x1a
	lea ecx, [ebx+edx]
	mov edx, esi
	not edx
	or edx, ecx
	xor edx, ebx
	add edx, [ebp-0x38]
	lea edi, [edi+edx-0x1d31920]
	ror edi, 0x16
	lea edi, [ecx+edi]
	mov edx, ebx
	not edx
	or edx, edi
	xor edx, ecx
	add edx, [ebp-0x5c]
	lea esi, [esi+edx-0x5cfebcec]
	ror esi, 0x11
	lea esi, [edi+esi]
	mov edx, ecx
	not edx
	or edx, esi
	xor edx, edi
	add edx, [ebp-0x40]
	lea ebx, [ebx+edx+0x4e0811a1]
	ror ebx, 0xb
	lea ebx, [esi+ebx]
	mov edx, edi
	not edx
	or edx, ebx
	xor edx, esi
	add edx, [ebp-0x64]
	lea edx, [ecx+edx-0x8ac817e]
	ror edx, 0x1a
	lea ecx, [ebx+edx]
	mov edx, esi
	not edx
	or edx, ecx
	xor edx, ebx
	add edx, [ebp-0x48]
	lea edi, [edi+edx-0x42c50dcb]
	ror edi, 0x16
	lea edi, [ecx+edi]
	mov edx, ebx
	not edx
	or edx, edi
	xor edx, ecx
	add edx, [ebp-0x6c]
	lea esi, [esi+edx+0x2ad7d2bb]
	ror esi, 0x11
	lea esi, [edi+esi]
	mov edx, ecx
	not edx
	or edx, esi
	xor edx, edi
	add edx, [ebp-0x50]
	lea ebx, [ebx+edx-0x14792c6f]
	ror ebx, 0xb
	mov edx, [eax]
	add edx, ecx
	mov [eax], edx
	lea ebx, [esi+ebx]
	add ebx, [eax+0x4]
	mov [eax+0x4], ebx
	add esi, [eax+0x8]
	mov [eax+0x8], esi
	add edi, [eax+0xc]
	mov [eax+0xc], edi
	add esp, 0xa0
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;MD5Init(MD5_CTX*, unsigned long)
_Z7MD5InitP7MD5_CTXm:
	push ebp
	mov ebp, esp
	push ebx
	mov ebx, [ebp+0x8]
	mov edx, [ebp+0xc]
	mov dword [ebx+0x4], 0x0
	mov dword [ebx], 0x0
	lea eax, [edx+edx*4]
	lea eax, [edx+eax*2+0x67452301]
	mov [ebx+0x8], eax
	lea ecx, [edx+edx*8]
	lea eax, [ecx*8]
	sub eax, edx
	sub eax, 0x10325477
	mov [ebx+0xc], eax
	lea ecx, [edx+ecx*4-0x67452302]
	mov [ebx+0x10], ecx
	lea eax, [edx+edx*2]
	shl eax, 0x5
	lea eax, [eax+edx+0x10325476]
	mov [ebx+0x14], eax
	pop ebx
	pop ebp
	ret
	nop


;MD5Final(MD5_CTX*)
_Z8MD5FinalP7MD5_CTX:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x9c
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [ebp-0x20], eax
	mov esi, [edx+0x4]
	mov [ebp-0x1c], esi
	mov edx, eax
	shr edx, 0x3
	and edx, 0x3f
	cmp edx, 0x37
	jg _Z8MD5FinalP7MD5_CTX_10
	mov ebx, 0x38
	sub ebx, edx
_Z8MD5FinalP7MD5_CTX_90:
	lea ecx, [eax+ebx*8]
	cmp eax, ecx
	jbe _Z8MD5FinalP7MD5_CTX_20
	add esi, 0x1
	mov eax, [ebp+0x8]
	mov [eax+0x4], esi
_Z8MD5FinalP7MD5_CTX_20:
	mov eax, [ebp+0x8]
	mov [eax], ecx
	mov eax, ebx
	shr eax, 0x1d
	add eax, esi
	mov ecx, [ebp+0x8]
	mov [ecx+0x4], eax
	mov esi, PADDING
	lea eax, [ecx+0x8]
	mov [ebp-0xa0], eax
	add ebx, PADDING
	mov [ebp-0x9c], ebx
	lea edi, [ebp-0x98]
_Z8MD5FinalP7MD5_CTX_40:
	cmp esi, [ebp-0x9c]
	jz _Z8MD5FinalP7MD5_CTX_30
_Z8MD5FinalP7MD5_CTX_60:
	movzx eax, byte [esi]
	mov ecx, [ebp+0x8]
	mov [edx+ecx+0x18], al
	add edx, 0x1
	add esi, 0x1
	cmp edx, 0x40
	jnz _Z8MD5FinalP7MD5_CTX_40
	mov ecx, [ebp+0x8]
	xor ebx, ebx
_Z8MD5FinalP7MD5_CTX_50:
	movzx edx, byte [ecx+0x1b]
	shl edx, 0x18
	movzx eax, byte [ecx+0x1a]
	shl eax, 0x10
	or edx, eax
	movzx eax, byte [ecx+0x19]
	shl eax, 0x8
	or edx, eax
	movzx eax, byte [ecx+0x18]
	or edx, eax
	mov [ebx+edi], edx
	add ebx, 0x4
	add ecx, 0x4
	cmp ebx, 0x40
	jnz _Z8MD5FinalP7MD5_CTX_50
	mov edx, edi
	mov eax, [ebp-0xa0]
	call _Z9TransformPmS_
	xor edx, edx
	cmp esi, [ebp-0x9c]
	jnz _Z8MD5FinalP7MD5_CTX_60
_Z8MD5FinalP7MD5_CTX_30:
	mov ecx, [ebp+0x8]
	xor ebx, ebx
	lea esi, [ebp-0x58]
_Z8MD5FinalP7MD5_CTX_70:
	movzx edx, byte [ecx+0x1b]
	shl edx, 0x18
	movzx eax, byte [ecx+0x1a]
	shl eax, 0x10
	or edx, eax
	movzx eax, byte [ecx+0x19]
	shl eax, 0x8
	or edx, eax
	movzx eax, byte [ecx+0x18]
	or edx, eax
	mov [ebx+esi], edx
	add ebx, 0x4
	add ecx, 0x4
	cmp ebx, 0x38
	jnz _Z8MD5FinalP7MD5_CTX_70
	mov edx, esi
	mov eax, [ebp-0xa0]
	call _Z9TransformPmS_
	mov edx, [ebp+0x8]
	mov ecx, 0x4
_Z8MD5FinalP7MD5_CTX_80:
	mov eax, [edx+0x8]
	mov [edx+0x58], al
	shr eax, 0x8
	mov [edx+0x59], al
	shr eax, 0x8
	mov [edx+0x5a], al
	shr eax, 0x8
	mov [edx+0x5b], al
	add edx, 0x4
	sub ecx, 0x1
	jnz _Z8MD5FinalP7MD5_CTX_80
	add esp, 0x9c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z8MD5FinalP7MD5_CTX_10:
	mov ebx, 0x78
	sub ebx, edx
	jmp _Z8MD5FinalP7MD5_CTX_90


;MD5Update(MD5_CTX*, unsigned char*, unsigned int)
_Z9MD5UpdateP7MD5_CTXPhj:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov eax, [ebp+0x8]
	mov ecx, [eax]
	mov edx, ecx
	shr edx, 0x3
	and edx, 0x3f
	mov esi, [ebp+0x10]
	shl esi, 0x3
	lea eax, [ecx+esi]
	cmp ecx, eax
	jbe _Z9MD5UpdateP7MD5_CTXPhj_10
	mov eax, [ebp+0x8]
	mov ebx, [eax+0x4]
	add ebx, 0x1
	mov [eax+0x4], ebx
_Z9MD5UpdateP7MD5_CTXPhj_70:
	lea eax, [esi+ecx]
	mov ecx, [ebp+0x8]
	mov [ecx], eax
	mov eax, [ebp+0x10]
	shr eax, 0x1d
	add eax, ebx
	mov [ecx+0x4], eax
	xor esi, esi
	lea edi, [ebp-0x58]
	cmp [ebp+0x10], esi
	jz _Z9MD5UpdateP7MD5_CTXPhj_20
_Z9MD5UpdateP7MD5_CTXPhj_40:
	mov ecx, [ebp+0xc]
	movzx eax, byte [ecx+esi]
	mov ecx, [ebp+0x8]
	mov [edx+ecx+0x18], al
	add edx, 0x1
	cmp edx, 0x40
	jz _Z9MD5UpdateP7MD5_CTXPhj_30
	add esi, 0x1
_Z9MD5UpdateP7MD5_CTXPhj_60:
	cmp [ebp+0x10], esi
	jnz _Z9MD5UpdateP7MD5_CTXPhj_40
_Z9MD5UpdateP7MD5_CTXPhj_20:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z9MD5UpdateP7MD5_CTXPhj_30:
	mov ecx, [ebp+0x8]
	xor ebx, ebx
_Z9MD5UpdateP7MD5_CTXPhj_50:
	movzx edx, byte [ecx+0x1b]
	shl edx, 0x18
	movzx eax, byte [ecx+0x1a]
	shl eax, 0x10
	or edx, eax
	movzx eax, byte [ecx+0x19]
	shl eax, 0x8
	or edx, eax
	movzx eax, byte [ecx+0x18]
	or edx, eax
	mov [ebx+edi], edx
	add ebx, 0x4
	add ecx, 0x4
	cmp ebx, 0x40
	jnz _Z9MD5UpdateP7MD5_CTXPhj_50
	mov edx, edi
	mov ecx, [ebp+0x8]
	lea eax, [ecx+0x8]
	call _Z9TransformPmS_
	xor edx, edx
	add esi, 0x1
	jmp _Z9MD5UpdateP7MD5_CTXPhj_60
_Z9MD5UpdateP7MD5_CTXPhj_10:
	mov eax, [ebp+0x8]
	mov ebx, [eax+0x4]
	jmp _Z9MD5UpdateP7MD5_CTXPhj_70
	nop


;Initialized global or static variables of pbmd5:
SECTION .data
PADDING: dd 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


;Initialized constant data of pbmd5:
SECTION .rdata


;Zero initialized global or static variables of pbmd5:
SECTION .bss


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

