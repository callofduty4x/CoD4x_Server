;Imports of VK_Map:
	extern _ZN11MacFeatures19GetKeyboardLanguageEv
	extern _ZN12MacResources15GetLanguageCodeEv

;Exports of VK_Map:
	global sANSI_VK_Map
	global _ZZ20TranslateKeyCodeToVKmE12sCachedVKMap
	global _Z20TranslateKeyCodeToVKm
	global sFrench_ISO_VK_Map
	global sGerman_ISO_VK_Map
	global sItalian_ISO_VK_Map


SECTION .text


;TranslateKeyCodeToVK(unsigned long)
_Z20TranslateKeyCodeToVKm:
	push ebp
	mov ebp, esp
	sub esp, 0x8
	mov eax, [_ZZ20TranslateKeyCodeToVKmE12sCachedVKMap]
	test eax, eax
	jz _Z20TranslateKeyCodeToVKm_10
	mov eax, [_ZZ20TranslateKeyCodeToVKmE12sCachedVKMap]
_Z20TranslateKeyCodeToVKm_50:
	mov edx, [ebp+0x8]
	movzx eax, byte [eax+edx]
	leave
	ret
_Z20TranslateKeyCodeToVKm_10:
	call _ZN11MacFeatures19GetKeyboardLanguageEv
	mov edx, eax
	cmp eax, 0xffffffff
	jz _Z20TranslateKeyCodeToVKm_20
_Z20TranslateKeyCodeToVKm_60:
	cmp edx, 0x1
	jz _Z20TranslateKeyCodeToVKm_30
	cmp edx, 0x2
	jz _Z20TranslateKeyCodeToVKm_40
	mov eax, sItalian_ISO_VK_Map
	cmp edx, 0x3
	mov edx, sANSI_VK_Map
	cmovnz eax, edx
	mov [_ZZ20TranslateKeyCodeToVKmE12sCachedVKMap], eax
	jmp _Z20TranslateKeyCodeToVKm_50
_Z20TranslateKeyCodeToVKm_30:
	mov dword [_ZZ20TranslateKeyCodeToVKmE12sCachedVKMap], sFrench_ISO_VK_Map
	mov eax, [_ZZ20TranslateKeyCodeToVKmE12sCachedVKMap]
	jmp _Z20TranslateKeyCodeToVKm_50
_Z20TranslateKeyCodeToVKm_40:
	mov dword [_ZZ20TranslateKeyCodeToVKmE12sCachedVKMap], sGerman_ISO_VK_Map
	mov eax, [_ZZ20TranslateKeyCodeToVKmE12sCachedVKMap]
	jmp _Z20TranslateKeyCodeToVKm_50
_Z20TranslateKeyCodeToVKm_20:
	call _ZN12MacResources15GetLanguageCodeEv
	mov edx, eax
	jmp _Z20TranslateKeyCodeToVKm_60


;Initialized global or static variables of VK_Map:
SECTION .data
sANSI_VK_Map: dd 0x46445341, 0x585a4748, 0x42005643, 0x52455751, 0x32315459, 0x35363433, 0xbd3739bb, 0x4fdd3038, 0x5049db55, 0xde4a4c0d, 0xbcdcba4b, 0xbe4d4ebf, 0x8c02009, 0x13001b0d, 0x11121410, 0x0, 0x6a006e80, 0x90006b00, 0x6f000000, 0x816d000d, 0x61609282, 0x65646362, 0x68006766, 0x69, 0x72767574, 0x7a007877, 0x7d7f7c00, 0x7b007900, 0x242d7e00, 0x23732e21, 0x25702271, 0x262827
sFrench_ISO_VK_Map: dd 0x46445351, 0x58574748, 0x42df5643, 0x52455a41, 0x32315459, 0x35363433, 0xbd3739bb, 0x4fdd3038, 0x5049db55, 0xde4a4c0d, 0xbadc4d4b, 0xbebc4ebf, 0x8c02009, 0x13001b0d, 0x11121410, 0x0, 0x6a006e80, 0x90006b00, 0x6f000000, 0x816d000d, 0x61609282, 0x65646362, 0x68006766, 0x69, 0x72767574, 0x7a007877, 0x7d7f7c00, 0x7b007900, 0x242d7e00, 0x23732e21, 0x25702271, 0x262827
sGerman_ISO_VK_Map: dd 0x46445341, 0x58594748, 0x42df5643, 0x52455751, 0x3231545a, 0x35363433, 0xbd3739bb, 0x4fdd3038, 0x5049db55, 0xde4a4c0d, 0xbcdcba4b, 0xbe4d4ebf, 0x8c02009, 0x13001b0d, 0x11121410, 0x0, 0x6a006e80, 0x90006b00, 0x6f000000, 0x816d000d, 0x61609282, 0x65646362, 0x68006766, 0x69, 0x72767574, 0x7a007877, 0x7d7f7c00, 0x7b007900, 0x242d7e00, 0x23732e21, 0x25702271, 0x262827
sItalian_ISO_VK_Map: dd 0x46445341, 0x585a4748, 0x42df5643, 0x52455751, 0x32315459, 0x35363433, 0xbd3739bb, 0x4fdd3038, 0x5049db55, 0xde4a4c0d, 0xbcdcba4b, 0xbe4d4ebf, 0x8c02009, 0x13001b0d, 0x11121410, 0x0, 0x6a006e80, 0x90006b00, 0x6f000000, 0x816d000d, 0x61609282, 0x65646362, 0x68006766, 0x69, 0x72767574, 0x7a007877, 0x7d7f7c00, 0x7b007900, 0x242d7e00, 0x23732e21, 0x25702271, 0x262827


;Initialized constant data of VK_Map:
SECTION .rdata


;Zero initialized global or static variables of VK_Map:
SECTION .bss
_ZZ20TranslateKeyCodeToVKmE12sCachedVKMap: resb 0x80


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

