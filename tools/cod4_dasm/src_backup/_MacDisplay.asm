;Imports of MacDisplay:
	extern GetWindowPortBounds
	extern MoveWindow
	extern GetAvailableWindowPositioningBounds
	extern aglDescribePixelFormat
	extern CGDisplayBestModeForParametersAndRefreshRateWithProperty
	extern aglGetInteger
	extern CGDisplayCapture
	extern CGDisplaySwitchToMode
	extern aglGetDrawable
	extern SetPort
	extern DisposePort
	extern GetPort
	extern CreateNewPortForCGDisplayID
	extern GetPortPixMap
	extern aglSetDrawable
	extern SetOrigin
	extern CGDisplayBestModeForParameters
	extern CGCaptureAllDisplays
	extern CGDisplayBestModeForParametersAndRefreshRate
	extern CGReleaseAllDisplays
	extern CGDisplayCurrentMode
	extern aglGetCurrentContext
	extern glFinish
	extern __cxa_atexit
	extern _ZdlPv
	extern _ZN9__gnu_cxx18__exchange_and_addEPVii
	extern _ZNSs4_Rep10_M_destroyERKSaIcE
	extern _Unwind_Resume
	extern NormalizeThemeDrawingState
	extern GetControlOwner
	extern ForeColor
	extern FrameRect
	extern RGBForeColor
	extern PaintRect
	extern EqualRect
	extern NewRgn
	extern OpenRgn
	extern CloseRgn
	extern SetClip
	extern DisposeRgn
	extern ClipRect
	extern DrawThemeMenuBarBackground
	extern InsetRect
	extern DrawThemeFocusRect
	extern _ZN10MacFolders17GetApplicationRefER5FSRef
	extern GetIconRefFromFileInfo
	extern PlotIconRef
	extern ReleaseIconRef
	extern GetControlBounds
	extern CGRectIsEmpty
	extern CGRectUnion
	extern CGRectGetWidth
	extern CGRectGetHeight
	extern OffsetRect
	extern MapRect
	extern PtInRect
	extern CGGetActiveDisplayList
	extern _Z7dprintfPKcz
	extern _Znam
	extern _ZdaPv
	extern _ZN14MacPreferences10GetBooleanEPKcb
	extern CGDisplayBounds
	extern _ZN10MacBuilder11BuildWindowEPK10__CFStringS2_hPFhP15OpaqueWindowPtrmE
	extern _ZN10MacBuilder20SetupUserPaneControlEP15OpaqueWindowPtrlPFvP16OpaqueControlRefsEPFsS3_5PointS5_E
	extern _ZN10MacBuilder15SetControlValueEP15OpaqueWindowPtrls
	extern _ZN10MacBuilder17SetControlVisibleEP15OpaqueWindowPtrlh
	extern _ZN10MacBuilder14RunModalWindowEP15OpaqueWindowPtr
	extern _ZN10MacBuilder13ReleaseWindowEP15OpaqueWindowPtr
	extern _ZN8MacTools11SetCursorIDEs
	extern _ZN14MacPreferences10PutBooleanEPKcb
	extern _ZN14MacPreferences10PutIntegerEPKci
	extern _ZN14MacPreferences7PutRectEPKcRK6CGRect
	extern NewMenu
	extern InsertMenu
	extern InvalMenuBar
	extern _ZN14MacPreferences10GetIntegerEPKci
	extern _ZN14MacPreferences7GetRectEPKcR6CGRect
	extern GetCurrentKeyModifiers
	extern CGRectEqualToRect
	extern CGDisplayBitsPerPixel
	extern _ZN10MacBuilder15GetControlValueEP15OpaqueWindowPtrl
	extern _ZN12MacResources18GetNeeds32BitErrorEv
	extern _ZN8MacTools12MessageAlertEPK10__CFStringh
	extern GetWindowPort
	extern EndMediaEdits
	extern GetMediaDuration
	extern InsertMediaIntoTrack
	extern AddMovieResource
	extern CloseMovieFile
	extern aglSwapBuffers
	extern CGSetDisplayTransferByTable
	extern CGGetDisplayTransferByTable
	extern CreateNewWindow
	extern SetPortWindowPort
	extern SetWindowContentColor
	extern _ZN12MacResources16GetProductFamilyEv
	extern SetWindowTitleWithCFString
	extern QDGlobalToLocalPoint
	extern _ZN8MacTools18GetDictionaryValueEPK14__CFDictionaryPK10__CFString
	extern CGDisplayPixelsWide
	extern CGDisplayPixelsHigh
	extern DisposeWindow
	extern ShowMenuBar
	extern SetSystemUIMode
	extern DMGetFirstScreenDevice
	extern DMGetNextScreenDevice
	extern GetMainDevice
	extern aglSetCurrentContext
	extern _ZNSsC1EPKcRKSaIcE
	extern _Z6strlwrPc
	extern aglChoosePixelFormat
	extern aglCreateContext
	extern HideMenuBar
	extern aglSetInteger
	extern glEnable
	extern gluCheckExtension
	extern glHint
	extern glDisable
	extern strstr
	extern aglUpdateContext
	extern CGDisplayFade
	extern CGReleaseDisplayFadeReservation
	extern glClear
	extern CGAcquireDisplayFadeReservation
	extern IsWindowVisible
	extern HideWindow
	extern SizeWindow
	extern ShowWindow
	extern GetNextProcess
	extern GetProcessInformation
	extern SetFrontProcess
	extern IsWindowHilited
	extern CGDisplayIDToOpenGLDisplayMask
	extern CGLQueryRendererInfo
	extern CGLDescribeRenderer
	extern CGLDestroyRendererInfo
	extern CGDisplayAvailableModes
	extern CFArrayGetCount
	extern CGDisplayIOServicePort
	extern CGLGetCurrentContext
	extern CGLChoosePixelFormat
	extern CGLCreateContext
	extern CGLDestroyPixelFormat
	extern CGLSetCurrentContext
	extern glGetString
	extern _ZNSs6assignEPKcm
	extern glGetIntegerv
	extern _ZN11MacFeatures16GetSystemVersionEv
	extern CGLDestroyContext
	extern _ZNSsD1Ev
	extern _ZNSs6assignERKSs
	extern CFArrayGetValueAtIndex
	extern IOObjectConformsTo
	extern IORegistryEntryGetParentEntry
	extern _ZN8MacTools18GetIORegistryValueEjPK10__CFStringPc
	extern _ZN8MacTools18GetIORegistryValueEjPK10__CFStringRm
	extern aglDestroyContext
	extern aglDestroyPixelFormat
	extern _Znwm
	extern _ZSt17__throw_bad_allocv
	extern _ZSt20__throw_length_errorPKc
	extern __cxa_begin_catch
	extern __cxa_rethrow
	extern __cxa_end_catch

;Exports of MacDisplay:
	global _GLOBAL__I__ZN10MacDisplay10InitializeEv
	global sRectList
	global sDisplayList
	global sSharedContext
	global sScreenContext
	global sPreviousDisplayMode
	global sFullscreenPort
	global sSwapCount
	global sCaptureMedia
	global sMainWindow
	global sCaptureMovie
	global sCaptureName
	global sCaptureTrack
	global sCaptureRefNum
	global sDisplayID
	global sSystemGammaGreen
	global sSystemGammaBlue
	global sSystemGammaRed
	global sInWindowMode
	global sCustomGammaGreen
	global sCustomGammaBlue
	global sCustomGammaRed
	global sIsSuspended
	global sEnableSwap
	global sIsAntialiased
	global sDisplayRefreshRate
	global sDisplayDepth
	global sDisplayIndex
	global sFadeToken
	global sInitialized
	global kInWindowModeKey
	global kDisplayRectKey
	global kDisplayIndexKey
	global sDisplayRect
	global kFirstTimeKey
	global sMainDisplayID
	global sMainRect
	global _Z21CenterWindowOnDisplayv
	global _Z22PseudoAGLSetFullscreenP15__AGLContextReclllP18_CGDirectDisplayID
	global __tcf_1
	global __tcf_2
	global __tcf_3
	global _Z16UserPaneDrawProcP16OpaqueControlRefs
	global _Z20UserPaneTrackingProcP16OpaqueControlRef5PointPFvS0_sE
	global _ZN10MacDisplay10GetNthModeEiRiS0_S0_S0_
	global _ZN10MacDisplay10InitializeEv
	global _ZN10MacDisplay10Is1900CardEv
	global _ZN10MacDisplay11GetCardTypeEv
	global _ZN10MacDisplay11GetDeviceIDEv
	global _ZN10MacDisplay11GetGLVendorEv
	global _ZN10MacDisplay11GetMainPortEv
	global _ZN10MacDisplay11GetNumModesEv
	global _ZN10MacDisplay11GetVendorIDEv
	global _ZN10MacDisplay11StopCaptureEv
	global _ZN10MacDisplay11SwapContextEP16OpaqueContextRef
	global _ZN10MacDisplay12IsFullscreenEv
	global _ZN10MacDisplay12IsWindowModeEv
	global _ZN10MacDisplay12SetGammaRampEPK13_D3DGAMMARAMP
	global _ZN10MacDisplay12SetupDisplayEii
	global _ZN10MacDisplay13GetGLRendererEv
	global _ZN10MacDisplay13GetMainWindowEv
	global _ZN10MacDisplay13GlobalToLocalER5Point
	global _ZN10MacDisplay13PointInWindowE5Point
	global _ZN10MacDisplay14GetCurrentModeERiS0_S0_S0_
	global _ZN10MacDisplay14GetDescriptionEv
	global _ZN10MacDisplay14ReleaseContextERP16OpaqueContextRef
	global _ZN10MacDisplay14ReleaseDisplayEv
	global _ZN10MacDisplay15GetCurrentDepthEv
	global _ZN10MacDisplay15GetDeviceHandleEv
	global _ZN10MacDisplay15GetGLExtensionsEv
	global _ZN10MacDisplay15SupportsShadowsEv
	global _ZN10MacDisplay16GetIsAntialiasedEv
	global _ZN10MacDisplay16GetSharedContextEv
	global _ZN10MacDisplay17GetFBOSupportInfoERhS0_
	global _ZN10MacDisplay17SetCurrentContextEP16OpaqueContextRef
	global _ZN10MacDisplay18GetMaxTextureUnitsEv
	global _ZN10MacDisplay18GetVideoMemoryInfoERlS0_
	global _ZN10MacDisplay19CreateScreenContextEihiiihRh
	global _ZN10MacDisplay19CreateSharedContextEv
	global _ZN10MacDisplay19UpdateScreenContextEv
	global _ZN10MacDisplay20GetCurrentDimensionsERiS0_
	global _ZN10MacDisplay22IsGLExtensionSupportedEPKc
	global _ZN10MacDisplay23GetMaxTextureImageUnitsEv
	global _ZN10MacDisplay23GetPCPixelShaderVersionEv
	global _ZN10MacDisplay25GetMaxSupportedAnisotropyEv
	global _ZN10MacDisplay28GetSupportsSeparateBlendFuncEv
	global _ZN10MacDisplay30GetAntiAliasingMultiSampleInfoERiS0_RhS1_S1_
	global _ZN10MacDisplay30GetNeedsExplicitDepthComponentEv
	global _ZN10MacDisplay31GetSupportsAnisotropicFilteringEv
	global _ZN10MacDisplay6FadeInEf
	global _ZN10MacDisplay6ResumeEv
	global _ZN10MacDisplay7FadeOutEf
	global _ZN10MacDisplay7SetModeEhiiii
	global _ZN10MacDisplay7SuspendEv
	global _ZN10MacDisplay8IsActiveEv
	global _ZN12CDisplayInfoC1EP18_CGDirectDisplayID
	global _ZN12CDisplayInfoC1ERKS_
	global _ZN12CDisplayInfoaSERKS_
	global _ZN16OpaqueContextRef7ReleaseEv
	global _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0_
	global _ZNSt6vectorI7MacRectSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0_
	global _ZNSt6vectorI8CResInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0_
	global _ZNSt6vectorI8CResInfoSaIS0_EEaSERKS2_
	global _ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiS2_EvT_T0_S9_T1_
	global _ZSt12partial_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8_S8_
	global _ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiS2_EvT_T0_S9_T1_
	global _ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8_
	global _ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0_
	global _ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_T0_
	global _ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8_
	global _ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEES2_EvT_T0_
	global _ZSt9make_heapIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8_


SECTION .text


;global constructors keyed to MacDisplay::Initialize()
_GLOBAL__I__ZN10MacDisplay10InitializeEv:
	push ebp
	mov ebp, esp
	mov edx, 0xffff
	mov eax, 0x1
	pop ebp
	jmp _Z41__static_initialization_and_destruction_0ii


;CenterWindowOnDisplay()
_Z21CenterWindowOnDisplayv:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x20
	call _ZN10MacDisplay15GetDeviceHandleEv
	mov ebx, eax
	cmp byte [sInWindowMode], 0x0
	jnz _Z21CenterWindowOnDisplayv_10
_Z21CenterWindowOnDisplayv_20:
	mov eax, [ebx]
	mov edx, [eax+0x26]
	mov eax, [eax+0x22]
	mov [ebp-0x10], eax
	mov [ebp-0xc], edx
_Z21CenterWindowOnDisplayv_30:
	lea eax, [ebp-0x18]
	mov [esp+0x4], eax
	mov eax, [sMainWindow]
	mov [esp], eax
	call GetWindowPortBounds
	movsx esi, word [ebp-0xe]
	movsx ebx, word [ebp-0x10]
	mov dword [esp+0xc], 0x0
	movsx edx, word [ebp-0xc]
	sub edx, ebx
	movsx eax, word [ebp-0x14]
	movsx ecx, word [ebp-0x18]
	sub eax, ecx
	sub edx, eax
	mov eax, edx
	shr eax, 0x1f
	add eax, edx
	sar eax, 1
	add ebx, eax
	movsx ebx, bx
	mov [esp+0x8], ebx
	movsx edx, word [ebp-0xa]
	sub edx, esi
	movsx eax, word [ebp-0x12]
	movsx ecx, word [ebp-0x16]
	sub eax, ecx
	sub edx, eax
	mov eax, edx
	shr eax, 0x1f
	add eax, edx
	sar eax, 1
	add esi, eax
	movsx esi, si
	mov [esp+0x4], esi
	mov eax, [sMainWindow]
	mov [esp], eax
	call MoveWindow
	add esp, 0x20
	pop ebx
	pop esi
	pop ebp
	ret
_Z21CenterWindowOnDisplayv_10:
	lea eax, [ebp-0x10]
	mov [esp+0x4], eax
	mov [esp], ebx
	call GetAvailableWindowPositioningBounds
	test eax, eax
	jnz _Z21CenterWindowOnDisplayv_20
	jmp _Z21CenterWindowOnDisplayv_30


;PseudoAGLSetFullscreen(__AGLContextRec*, long, long, long, _CGDirectDisplayID*)
_Z22PseudoAGLSetFullscreenP15__AGLContextReclllP18_CGDirectDisplayID:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov [ebp-0x34], eax
	mov [ebp-0x38], edx
	mov edi, ecx
	mov esi, [ebp+0xc]
	mov dword [ebp-0x1c], 0x20
	lea eax, [ebp-0x1c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x32
	mov eax, [sScreenContext+0xc]
	mov [esp], eax
	call aglDescribePixelFormat
	cvtsi2sd xmm0, dword [ebp+0x8]
	movsd [ebp-0x30], xmm0
	lea eax, [ebp-0x20]
	mov [esp+0x1c], eax
	mov dword [esp+0x18], _cfstring_kcgdisplaymodeis
	movsd [esp+0x10], xmm0
	mov [esp+0xc], edi
	mov eax, [ebp-0x38]
	mov [esp+0x8], eax
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], esi
	call CGDisplayBestModeForParametersAndRefreshRateWithProperty
	mov ebx, eax
	mov ecx, [ebp-0x20]
	test ecx, ecx
	jz _Z22PseudoAGLSetFullscreenP15__AGLContextReclllP18_CGDirectDisplayID_10
	test eax, eax
	jz _Z22PseudoAGLSetFullscreenP15__AGLContextReclllP18_CGDirectDisplayID_10
_Z22PseudoAGLSetFullscreenP15__AGLContextReclllP18_CGDirectDisplayID_110:
	mov eax, [sPreviousDisplayMode]
	test eax, eax
	jz _Z22PseudoAGLSetFullscreenP15__AGLContextReclllP18_CGDirectDisplayID_20
_Z22PseudoAGLSetFullscreenP15__AGLContextReclllP18_CGDirectDisplayID_150:
	mov dword [ebp-0x24], 0x0
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xff
	mov eax, [ebp-0x34]
	mov [esp], eax
	call aglGetInteger
	mov eax, [ebp-0x24]
	test eax, eax
	jz _Z22PseudoAGLSetFullscreenP15__AGLContextReclllP18_CGDirectDisplayID_30
	mov [esp], esi
	call CGDisplayCapture
_Z22PseudoAGLSetFullscreenP15__AGLContextReclllP18_CGDirectDisplayID_120:
	mov [esp+0x4], ebx
	mov [esp], esi
	call CGDisplaySwitchToMode
	test eax, eax
	jz _Z22PseudoAGLSetFullscreenP15__AGLContextReclllP18_CGDirectDisplayID_40
	mov eax, [ebp+0x8]
	test eax, eax
	jnz _Z22PseudoAGLSetFullscreenP15__AGLContextReclllP18_CGDirectDisplayID_50
_Z22PseudoAGLSetFullscreenP15__AGLContextReclllP18_CGDirectDisplayID_40:
	mov eax, [sFullscreenPort]
	test eax, eax
	jz _Z22PseudoAGLSetFullscreenP15__AGLContextReclllP18_CGDirectDisplayID_60
	mov eax, [ebp-0x34]
	mov [esp], eax
	call aglGetDrawable
	cmp eax, [sFullscreenPort]
	jz _Z22PseudoAGLSetFullscreenP15__AGLContextReclllP18_CGDirectDisplayID_70
_Z22PseudoAGLSetFullscreenP15__AGLContextReclllP18_CGDirectDisplayID_170:
	mov dword [esp], 0x0
	call SetPort
	mov eax, [sFullscreenPort]
	mov [esp], eax
	call DisposePort
_Z22PseudoAGLSetFullscreenP15__AGLContextReclllP18_CGDirectDisplayID_60:
	lea eax, [ebp-0x28]
	mov [esp], eax
	call GetPort
	mov [esp], esi
	call CreateNewPortForCGDisplayID
	mov ebx, eax
	mov [esp], eax
	call SetPort
	mov [esp], ebx
	call GetPortPixMap
	mov eax, [eax]
	movzx edx, word [eax+0x8]
	test dx, dx
	jnz _Z22PseudoAGLSetFullscreenP15__AGLContextReclllP18_CGDirectDisplayID_80
	cmp word [eax+0x6], 0x0
	jnz _Z22PseudoAGLSetFullscreenP15__AGLContextReclllP18_CGDirectDisplayID_80
_Z22PseudoAGLSetFullscreenP15__AGLContextReclllP18_CGDirectDisplayID_90:
	mov eax, [ebp-0x28]
	mov [esp], eax
	call SetPort
	mov [sFullscreenPort], ebx
	mov [esp+0x4], ebx
	mov eax, [ebp-0x34]
	mov [esp], eax
	call aglSetDrawable
	mov eax, [sFullscreenPort]
	mov [esp], eax
	call SetPort
	mov eax, 0x1
_Z22PseudoAGLSetFullscreenP15__AGLContextReclllP18_CGDirectDisplayID_140:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z22PseudoAGLSetFullscreenP15__AGLContextReclllP18_CGDirectDisplayID_80:
	movsx eax, word [eax+0x6]
	mov [esp+0x4], eax
	movsx eax, dx
	mov [esp], eax
	call SetOrigin
	jmp _Z22PseudoAGLSetFullscreenP15__AGLContextReclllP18_CGDirectDisplayID_90
_Z22PseudoAGLSetFullscreenP15__AGLContextReclllP18_CGDirectDisplayID_10:
	mov edx, [ebp+0x8]
	test edx, edx
	jnz _Z22PseudoAGLSetFullscreenP15__AGLContextReclllP18_CGDirectDisplayID_100
_Z22PseudoAGLSetFullscreenP15__AGLContextReclllP18_CGDirectDisplayID_130:
	lea eax, [ebp-0x20]
	mov [esp+0x10], eax
	mov [esp+0xc], edi
	mov eax, [ebp-0x38]
	mov [esp+0x8], eax
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], esi
	call CGDisplayBestModeForParameters
	mov ebx, eax
	jmp _Z22PseudoAGLSetFullscreenP15__AGLContextReclllP18_CGDirectDisplayID_110
_Z22PseudoAGLSetFullscreenP15__AGLContextReclllP18_CGDirectDisplayID_30:
	call CGCaptureAllDisplays
	jmp _Z22PseudoAGLSetFullscreenP15__AGLContextReclllP18_CGDirectDisplayID_120
_Z22PseudoAGLSetFullscreenP15__AGLContextReclllP18_CGDirectDisplayID_100:
	lea eax, [ebp-0x20]
	mov [esp+0x18], eax
	movsd xmm0, qword [ebp-0x30]
	movsd [esp+0x10], xmm0
	mov [esp+0xc], edi
	mov eax, [ebp-0x38]
	mov [esp+0x8], eax
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], esi
	call CGDisplayBestModeForParametersAndRefreshRate
	mov ebx, eax
	test eax, eax
	jnz _Z22PseudoAGLSetFullscreenP15__AGLContextReclllP18_CGDirectDisplayID_110
	jmp _Z22PseudoAGLSetFullscreenP15__AGLContextReclllP18_CGDirectDisplayID_130
_Z22PseudoAGLSetFullscreenP15__AGLContextReclllP18_CGDirectDisplayID_50:
	lea eax, [ebp-0x20]
	mov [esp+0x10], eax
	mov [esp+0xc], edi
	mov eax, [ebp-0x38]
	mov [esp+0x8], eax
	mov eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], esi
	call CGDisplayBestModeForParameters
	mov [esp+0x4], eax
	mov [esp], esi
	call CGDisplaySwitchToMode
	test eax, eax
	jz _Z22PseudoAGLSetFullscreenP15__AGLContextReclllP18_CGDirectDisplayID_40
	call CGReleaseAllDisplays
	xor eax, eax
	jmp _Z22PseudoAGLSetFullscreenP15__AGLContextReclllP18_CGDirectDisplayID_140
_Z22PseudoAGLSetFullscreenP15__AGLContextReclllP18_CGDirectDisplayID_20:
	mov [esp], esi
	call CGDisplayCurrentMode
	mov [sPreviousDisplayMode], eax
	jmp _Z22PseudoAGLSetFullscreenP15__AGLContextReclllP18_CGDirectDisplayID_150
_Z22PseudoAGLSetFullscreenP15__AGLContextReclllP18_CGDirectDisplayID_70:
	call aglGetCurrentContext
	cmp [ebp-0x34], eax
	jz _Z22PseudoAGLSetFullscreenP15__AGLContextReclllP18_CGDirectDisplayID_160
_Z22PseudoAGLSetFullscreenP15__AGLContextReclllP18_CGDirectDisplayID_180:
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x34]
	mov [esp], eax
	call aglSetDrawable
	jmp _Z22PseudoAGLSetFullscreenP15__AGLContextReclllP18_CGDirectDisplayID_170
_Z22PseudoAGLSetFullscreenP15__AGLContextReclllP18_CGDirectDisplayID_160:
	call glFinish
	jmp _Z22PseudoAGLSetFullscreenP15__AGLContextReclllP18_CGDirectDisplayID_180
	nop


;BuilderCallback(OpaqueWindowPtr*, unsigned long)
_Z15BuilderCallbackP15OpaqueWindowPtrm:
	push ebp
	mov ebp, esp
	xor eax, eax
	pop ebp
	ret
	nop


;__static_initialization_and_destruction_0(int, int)
_Z41__static_initialization_and_destruction_0ii:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	cmp edx, 0xffff
	jz _Z41__static_initialization_and_destruction_0ii_10
_Z41__static_initialization_and_destruction_0ii_20:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_Z41__static_initialization_and_destruction_0ii_10:
	sub eax, 0x1
	jnz _Z41__static_initialization_and_destruction_0ii_20
	mov dword [sScreenContext], 0x0
	mov dword [sScreenContext+0x4], 0x0
	mov dword [sScreenContext+0x8], 0x0
	mov dword [sScreenContext+0xc], 0x0
	mov byte [sScreenContext+0x10], 0x0
	mov dword [sScreenContext+0x14], 0x0
	mov ebx, [0xd5cc00c]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov dword [esp], __tcf_0
	call __cxa_atexit
	mov dword [sSharedContext], 0x0
	mov dword [sSharedContext+0x4], 0x0
	mov dword [sSharedContext+0x8], 0x0
	mov dword [sSharedContext+0xc], 0x0
	mov byte [sSharedContext+0x10], 0x0
	mov dword [sSharedContext+0x14], 0x0
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov dword [esp], __tcf_1
	call __cxa_atexit
	mov dword [sDisplayList], 0x0
	mov dword [sDisplayList+0x4], 0x0
	mov dword [sDisplayList+0x8], 0x0
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov dword [esp], __tcf_2
	call __cxa_atexit
	mov dword [sRectList], 0x0
	mov dword [sRectList+0x4], 0x0
	mov dword [sRectList+0x8], 0x0
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov dword [esp], __tcf_3
	call __cxa_atexit
	add esp, 0x14
	pop ebx
	pop ebp
	ret


;__tcf_0
__tcf_0:
	push ebp
	mov ebp, esp
	mov dword [ebp+0x8], sScreenContext
	pop ebp
	jmp _ZN16OpaqueContextRef7ReleaseEv


;__tcf_1
__tcf_1:
	push ebp
	mov ebp, esp
	mov dword [ebp+0x8], sSharedContext
	pop ebp
	jmp _ZN16OpaqueContextRef7ReleaseEv


;__tcf_2
__tcf_2:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov eax, [sDisplayList+0x4]
	mov [ebp-0x38], eax
	mov eax, [sDisplayList]
	mov ebx, eax
	cmp [ebp-0x38], eax
	jz __tcf_2_10
__tcf_2_90:
	mov eax, [ebx+0x38]
	lea esi, [eax-0xc]
	mov edi, [0xd5cc01c]
	cmp esi, edi
	jnz __tcf_2_20
__tcf_2_110:
	mov eax, [ebx+0x34]
	lea esi, [eax-0xc]
	cmp edi, esi
	jnz __tcf_2_30
__tcf_2_120:
	mov eax, [ebx+0x30]
	lea esi, [eax-0xc]
	cmp edi, esi
	jnz __tcf_2_40
__tcf_2_130:
	mov eax, [ebx+0x20]
	lea esi, [eax-0xc]
	cmp edi, esi
	jnz __tcf_2_50
__tcf_2_140:
	lea ecx, [ebx+0x14]
	mov edx, [ecx+0x4]
	mov eax, [ebx+0x14]
	cmp edx, eax
	jz __tcf_2_60
__tcf_2_70:
	add eax, 0x10
	cmp edx, eax
	jnz __tcf_2_70
__tcf_2_60:
	mov eax, [ecx]
	test eax, eax
	jz __tcf_2_80
	mov [esp], eax
	call _ZdlPv
__tcf_2_80:
	add ebx, 0x68
	cmp [ebp-0x38], ebx
	jnz __tcf_2_90
	mov eax, [sDisplayList]
__tcf_2_10:
	test eax, eax
	jz __tcf_2_100
	mov [esp], eax
	call _ZdlPv
__tcf_2_100:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
__tcf_2_20:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg __tcf_2_110
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp __tcf_2_110
__tcf_2_30:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg __tcf_2_120
	lea eax, [ebp-0x1b]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp __tcf_2_120
__tcf_2_40:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg __tcf_2_130
	lea eax, [ebp-0x1a]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp __tcf_2_130
__tcf_2_50:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg __tcf_2_140
	lea eax, [ebp-0x19]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp __tcf_2_140
	mov esi, eax
__tcf_2_210:
	mov eax, [ebx+0x30]
	lea edx, [eax-0xc]
	mov [ebp-0x34], edx
	cmp edx, edi
	jnz __tcf_2_150
__tcf_2_230:
	mov eax, [ebx+0x20]
	lea edx, [eax-0xc]
	mov [ebp-0x30], edx
	cmp edx, edi
	jnz __tcf_2_160
__tcf_2_220:
	lea ecx, [ebx+0x14]
	mov edx, [ecx+0x4]
	mov eax, [ebx+0x14]
	cmp edx, eax
	jz __tcf_2_170
__tcf_2_180:
	add eax, 0x10
	cmp edx, eax
	jnz __tcf_2_180
__tcf_2_170:
	mov eax, [ecx]
	test eax, eax
	jz __tcf_2_190
	mov [esp], eax
	call _ZdlPv
__tcf_2_190:
	mov eax, [sDisplayList]
	test eax, eax
	jz __tcf_2_200
	mov [esp], eax
	call _ZdlPv
__tcf_2_200:
	mov [esp], esi
	call _Unwind_Resume
	mov esi, eax
	mov eax, [ebx+0x34]
	lea edx, [eax-0xc]
	mov [ebp-0x2c], edx
	cmp edx, edi
	jz __tcf_2_210
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg __tcf_2_210
	lea eax, [ebp-0x1b]
	mov [esp+0x4], eax
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp __tcf_2_210
__tcf_2_160:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg __tcf_2_220
	lea eax, [ebp-0x19]
	mov [esp+0x4], eax
	mov eax, [ebp-0x30]
	mov [esp], eax
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp __tcf_2_220
__tcf_2_150:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg __tcf_2_230
	lea eax, [ebp-0x1a]
	mov [esp+0x4], eax
	mov eax, [ebp-0x34]
	mov [esp], eax
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp __tcf_2_230
	mov esi, eax
	jmp __tcf_2_220
	mov esi, eax
	jmp __tcf_2_230
	add [eax], al


;__tcf_3
__tcf_3:
	push ebp
	mov ebp, esp
	mov edx, [sRectList+0x4]
	mov ecx, [sRectList]
	mov eax, ecx
	cmp edx, ecx
	jz __tcf_3_10
__tcf_3_20:
	add eax, 0x8
	cmp edx, eax
	jnz __tcf_3_20
__tcf_3_10:
	test ecx, ecx
	jz __tcf_3_30
	mov [ebp+0x8], ecx
	pop ebp
	jmp _ZdlPv
__tcf_3_30:
	pop ebp
	ret
	nop


;UserPaneDrawProc(OpaqueControlRef*, short)
_Z16UserPaneDrawProcP16OpaqueControlRefs:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x18c
	mov eax, [sRectList+0x4]
	sub eax, [sRectList]
	sar eax, 0x3
	test eax, eax
	jz _Z16UserPaneDrawProcP16OpaqueControlRefs_10
_Z16UserPaneDrawProcP16OpaqueControlRefs_140:
	call NormalizeThemeDrawingState
	mov eax, [ebp+0x8]
	mov [esp], eax
	call GetControlOwner
	lea edx, [ebp-0x5e]
	mov [esp+0x4], edx
	mov [esp], eax
	call GetWindowPortBounds
	mov word [ebp-0x26], 0x8fff
	mov word [ebp-0x24], 0x8fff
	mov word [ebp-0x22], 0x8fff
	mov edx, [sRectList]
	mov esi, edx
	cmp [sRectList+0x4], edx
	jz _Z16UserPaneDrawProcP16OpaqueControlRefs_20
	mov eax, edx
	lea edi, [ebp-0x56]
	jmp _Z16UserPaneDrawProcP16OpaqueControlRefs_30
_Z16UserPaneDrawProcP16OpaqueControlRefs_50:
	mov dword [esp], 0x21
	call ForeColor
	mov [esp], edi
	call FrameRect
	add esi, 0x8
	cmp [sRectList+0x4], esi
	jz _Z16UserPaneDrawProcP16OpaqueControlRefs_40
_Z16UserPaneDrawProcP16OpaqueControlRefs_60:
	mov eax, esi
_Z16UserPaneDrawProcP16OpaqueControlRefs_30:
	mov edx, [eax+0x4]
	mov eax, [eax]
	mov [ebp-0x56], eax
	mov [ebp-0x52], edx
	lea eax, [ebp-0x26]
	mov [esp], eax
	call RGBForeColor
	mov [esp], edi
	call PaintRect
	mov [esp+0x4], edi
	mov dword [esp], sMainRect
	call EqualRect
	test al, al
	jz _Z16UserPaneDrawProcP16OpaqueControlRefs_50
	call NewRgn
	mov ebx, eax
	call OpenRgn
	mov [esp], edi
	call FrameRect
	mov [esp], ebx
	call CloseRgn
	mov [esp], ebx
	call SetClip
	mov [esp], ebx
	call DisposeRgn
	mov eax, [ebp-0x56]
	mov edx, [ebp-0x52]
	mov [ebp-0x3e], eax
	mov [ebp-0x3a], edx
	movzx eax, word [ebp-0x3e]
	lea edx, [eax+0x8]
	mov [ebp-0x3a], dx
	add eax, 0x1
	mov [ebp-0x3e], ax
	lea edx, [ebp-0x3e]
	mov [esp], edx
	call ClipRect
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0x3e]
	mov [esp], eax
	call DrawThemeMenuBarBackground
	lea edx, [ebp-0x5e]
	mov [esp], edx
	call ClipRect
	mov dword [esp], 0x21
	call ForeColor
	mov [esp], edi
	call FrameRect
	add esi, 0x8
	cmp [sRectList+0x4], esi
	jnz _Z16UserPaneDrawProcP16OpaqueControlRefs_60
_Z16UserPaneDrawProcP16OpaqueControlRefs_40:
	mov edx, [sRectList]
_Z16UserPaneDrawProcP16OpaqueControlRefs_20:
	mov eax, [sDisplayList+0x4]
	mov ecx, [sDisplayIndex]
	sub eax, [sDisplayList]
	sar eax, 0x3
	imul eax, eax, 0xc4ec4ec5
	cmp eax, ecx
	jbe _Z16UserPaneDrawProcP16OpaqueControlRefs_70
	mov eax, [edx+ecx*8]
	mov edx, [edx+ecx*8+0x4]
	mov [ebp-0x2e], eax
	mov [ebp-0x2a], edx
_Z16UserPaneDrawProcP16OpaqueControlRefs_90:
	lea ebx, [ebp-0x2e]
	mov [esp], ebx
	call ClipRect
	mov dword [esp+0x8], 0x3
	mov dword [esp+0x4], 0x3
	mov [esp], ebx
	call InsetRect
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	call DrawThemeFocusRect
	lea eax, [ebp-0x5e]
	mov [esp], eax
	call ClipRect
	lea ebx, [ebp-0x110]
	mov [esp], ebx
	call _ZN10MacFolders17GetApplicationRefER5FSRef
	lea eax, [ebp-0x1a]
	mov [esp+0x1c], eax
	lea eax, [ebp-0x20]
	mov [esp+0x18], eax
	mov dword [esp+0x14], 0x0
	mov dword [esp+0x10], 0x0
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call GetIconRefFromFileInfo
	xor ebx, ebx
	test ax, ax
	cmovz ebx, [ebp-0x20]
	mov [ebp-0x20], ebx
	movsx eax, word [ebp-0x28]
	movsx edx, word [ebp-0x2c]
	add eax, edx
	mov ecx, eax
	shr ecx, 0x1f
	add ecx, eax
	sar ecx, 1
	lea eax, [ecx-0x18]
	mov [ebp-0x34], ax
	movsx edx, word [ebp-0x2a]
	movsx eax, word [ebp-0x2e]
	add edx, eax
	mov eax, edx
	shr eax, 0x1f
	add eax, edx
	sar eax, 1
	lea edx, [eax-0x18]
	mov [ebp-0x36], dx
	add ecx, 0x18
	mov [ebp-0x30], cx
	add eax, 0x18
	mov [ebp-0x32], ax
	test ebx, ebx
	jz _Z16UserPaneDrawProcP16OpaqueControlRefs_80
	mov [esp+0x10], ebx
	mov dword [esp+0xc], 0x0
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	lea eax, [ebp-0x36]
	mov [esp], eax
	call PlotIconRef
	mov eax, [ebp-0x20]
	mov [esp], eax
	call ReleaseIconRef
_Z16UserPaneDrawProcP16OpaqueControlRefs_80:
	lea esp, [ebp-0xc]
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z16UserPaneDrawProcP16OpaqueControlRefs_70:
	mov eax, [edx]
	mov edx, [edx+0x4]
	mov [ebp-0x2e], eax
	mov [ebp-0x2a], edx
	jmp _Z16UserPaneDrawProcP16OpaqueControlRefs_90
_Z16UserPaneDrawProcP16OpaqueControlRefs_10:
	lea eax, [ebp-0x3e]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call GetControlBounds
	movsx eax, word [ebp-0x38]
	movsx edx, word [ebp-0x3c]
	sub eax, edx
	cvtsi2ss xmm0, eax
	movss [ebp-0x14c], xmm0
	movsx eax, word [ebp-0x3a]
	movsx edx, word [ebp-0x3e]
	sub eax, edx
	cvtsi2ss xmm2, eax
	movss [ebp-0x148], xmm2
	mov eax, [0xd5cc018]
	movss xmm0, dword [eax+0xc]
	movss [ebp-0x140], xmm0
	movss xmm2, dword [eax+0x8]
	movss [ebp-0x13c], xmm2
	movss xmm0, dword [eax+0x4]
	movss [ebp-0x138], xmm0
	movss xmm2, dword [eax]
	movss [ebp-0x134], xmm2
	mov eax, [sDisplayList]
	cmp eax, [sDisplayList+0x4]
	jz _Z16UserPaneDrawProcP16OpaqueControlRefs_100
	mov [ebp-0x12c], eax
	jmp _Z16UserPaneDrawProcP16OpaqueControlRefs_110
_Z16UserPaneDrawProcP16OpaqueControlRefs_120:
	mov [ebp-0x140], ebx
	mov [ebp-0x13c], esi
	mov [ebp-0x138], edi
	movss xmm2, dword [ebp-0x130]
	movss [ebp-0x134], xmm2
	add dword [ebp-0x12c], 0x68
	mov eax, [ebp-0x12c]
	cmp [sDisplayList+0x4], eax
	jz _Z16UserPaneDrawProcP16OpaqueControlRefs_100
_Z16UserPaneDrawProcP16OpaqueControlRefs_110:
	mov ebx, [eax+0x10]
	mov esi, [eax+0xc]
	mov edi, [eax+0x8]
	movss xmm0, dword [eax+0x4]
	movss [ebp-0x130], xmm0
	mov [ebp-0x94], ebx
	mov [ebp-0x98], esi
	mov [ebp-0x9c], edi
	movss [ebp-0xa0], xmm0
	mov eax, [ebp-0xa0]
	mov [esp], eax
	mov eax, [ebp-0x9c]
	mov [esp+0x4], eax
	mov eax, [ebp-0x98]
	mov [esp+0x8], eax
	mov eax, [ebp-0x94]
	mov [esp+0xc], eax
	call CGRectIsEmpty
	test eax, eax
	jnz _Z16UserPaneDrawProcP16OpaqueControlRefs_120
	movss xmm0, dword [ebp-0x140]
	movss [ebp-0x84], xmm0
	movss xmm2, dword [ebp-0x13c]
	movss [ebp-0x88], xmm2
	movss xmm0, dword [ebp-0x138]
	movss [ebp-0x8c], xmm0
	movss xmm2, dword [ebp-0x134]
	movss [ebp-0x90], xmm2
	mov [ebp-0xb4], ebx
	mov [ebp-0xb8], esi
	mov [ebp-0xbc], edi
	movss xmm0, dword [ebp-0x130]
	movss [ebp-0xc0], xmm0
	mov eax, [ebp-0x90]
	mov [esp+0x14], eax
	mov eax, [ebp-0x8c]
	mov [esp+0x18], eax
	mov eax, [ebp-0x88]
	mov [esp+0x1c], eax
	mov eax, [ebp-0x84]
	mov [esp+0x20], eax
	mov eax, [ebp-0xc0]
	mov [esp+0x4], eax
	mov eax, [ebp-0xbc]
	mov [esp+0x8], eax
	mov eax, [ebp-0xb8]
	mov [esp+0xc], eax
	mov eax, [ebp-0xb4]
	mov [esp+0x10], eax
	lea eax, [ebp-0x128]
	mov [esp], eax
	call CGRectUnion
	sub esp, 0x4
	mov eax, [ebp-0x128]
	mov [ebp-0x80], eax
	mov eax, [ebp-0x124]
	mov [ebp-0x7c], eax
	mov eax, [ebp-0x120]
	mov [ebp-0x78], eax
	mov eax, [ebp-0x11c]
	mov [ebp-0x74], eax
	movss xmm0, dword [ebp-0x74]
	movss [ebp-0x140], xmm0
	movss xmm2, dword [ebp-0x78]
	movss [ebp-0x13c], xmm2
	movss xmm0, dword [ebp-0x7c]
	movss [ebp-0x138], xmm0
	movss xmm2, dword [ebp-0x80]
	movss [ebp-0x134], xmm2
	add dword [ebp-0x12c], 0x68
	mov eax, [ebp-0x12c]
	cmp [sDisplayList+0x4], eax
	jnz _Z16UserPaneDrawProcP16OpaqueControlRefs_110
_Z16UserPaneDrawProcP16OpaqueControlRefs_100:
	movss xmm0, dword [ebp-0x140]
	movss [ebp-0xa4], xmm0
	movss xmm2, dword [ebp-0x13c]
	movss [ebp-0xa8], xmm2
	movss xmm0, dword [ebp-0x138]
	movss [ebp-0xac], xmm0
	movss xmm2, dword [ebp-0x134]
	movss [ebp-0xb0], xmm2
	mov eax, [ebp-0xb0]
	mov [esp], eax
	mov eax, [ebp-0xac]
	mov [esp+0x4], eax
	mov eax, [ebp-0xa8]
	mov [esp+0x8], eax
	mov eax, [ebp-0xa4]
	mov [esp+0xc], eax
	call CGRectGetWidth
	fstp dword [ebp-0x144]
	movss xmm0, dword [ebp-0x140]
	movss [ebp-0x64], xmm0
	movss xmm2, dword [ebp-0x13c]
	movss [ebp-0x68], xmm2
	movss xmm0, dword [ebp-0x138]
	movss [ebp-0x6c], xmm0
	movss xmm2, dword [ebp-0x134]
	movss [ebp-0x70], xmm2
	mov eax, [ebp-0x70]
	mov [esp], eax
	mov eax, [ebp-0x6c]
	mov [esp+0x4], eax
	mov eax, [ebp-0x68]
	mov [esp+0x8], eax
	mov eax, [ebp-0x64]
	mov [esp+0xc], eax
	call CGRectGetHeight
	fstp dword [ebp-0x15c]
	movss xmm0, dword [ebp-0x15c]
	divss xmm0, dword [ebp-0x144]
	mulss xmm0, [ebp-0x14c]
	ucomiss xmm0, [ebp-0x148]
	ja _Z16UserPaneDrawProcP16OpaqueControlRefs_130
	movss xmm1, dword [ebp-0x14c]
	movss xmm2, dword [ebp-0x148]
_Z16UserPaneDrawProcP16OpaqueControlRefs_190:
	mov word [ebp-0x44], 0x0
	mov word [ebp-0x46], 0x0
	cvttss2si eax, xmm1
	mov [ebp-0x40], ax
	cvttss2si eax, xmm0
	mov [ebp-0x42], ax
	subss xmm2, xmm0
	cvttss2si edx, xmm2
	mov eax, edx
	shr eax, 0x1f
	add eax, edx
	sar eax, 1
	add ax, [ebp-0x3e]
	cwde
	mov [esp+0x8], eax
	movss xmm0, dword [ebp-0x14c]
	subss xmm0, xmm1
	cvttss2si edx, xmm0
	mov eax, edx
	shr eax, 0x1f
	add eax, edx
	sar eax, 1
	add ax, [ebp-0x3c]
	cwde
	mov [esp+0x4], eax
	lea eax, [ebp-0x46]
	mov [esp], eax
	call OffsetRect
	cvttss2si edx, [ebp-0x134]
	mov [ebp-0x4c], dx
	cvttss2si ecx, [ebp-0x138]
	mov [ebp-0x4e], cx
	cvttss2si eax, [ebp-0x13c]
	add eax, edx
	mov [ebp-0x48], ax
	cvttss2si eax, [ebp-0x140]
	add eax, ecx
	mov [ebp-0x4a], ax
	mov eax, [sDisplayList]
	cmp eax, [sDisplayList+0x4]
	jz _Z16UserPaneDrawProcP16OpaqueControlRefs_140
	mov ebx, eax
	lea esi, [ebp-0x4e]
	lea edi, [ebp-0x56]
	jmp _Z16UserPaneDrawProcP16OpaqueControlRefs_150
_Z16UserPaneDrawProcP16OpaqueControlRefs_180:
	add ebx, 0x68
	cmp ebx, [sDisplayList+0x4]
	jz _Z16UserPaneDrawProcP16OpaqueControlRefs_140
	mov eax, ebx
_Z16UserPaneDrawProcP16OpaqueControlRefs_150:
	cvttss2si edx, [eax+0x4]
	mov [ebp-0x54], dx
	cvttss2si ecx, [ebx+0x8]
	mov [ebp-0x56], cx
	cvttss2si eax, [ebx+0xc]
	add eax, edx
	mov [ebp-0x50], ax
	cvttss2si eax, [ebx+0x10]
	add eax, ecx
	mov [ebp-0x52], ax
	lea edx, [ebp-0x46]
	mov [esp+0x8], edx
	mov [esp+0x4], esi
	mov [esp], edi
	call MapRect
	mov ecx, [sRectList+0x4]
	cmp ecx, [sRectList+0x8]
	jz _Z16UserPaneDrawProcP16OpaqueControlRefs_160
	test ecx, ecx
	jz _Z16UserPaneDrawProcP16OpaqueControlRefs_170
	mov eax, [ebp-0x56]
	mov edx, [ebp-0x52]
	mov [ecx], eax
	mov [ecx+0x4], edx
	mov ecx, [sRectList+0x4]
_Z16UserPaneDrawProcP16OpaqueControlRefs_170:
	add ecx, 0x8
	mov [sRectList+0x4], ecx
_Z16UserPaneDrawProcP16OpaqueControlRefs_200:
	mov eax, [ebx]
	cmp eax, [sMainDisplayID]
	jnz _Z16UserPaneDrawProcP16OpaqueControlRefs_180
	mov eax, [ebp-0x56]
	mov edx, [ebp-0x52]
	mov [sMainRect], eax
	mov [sMainRect+0x4], edx
	jmp _Z16UserPaneDrawProcP16OpaqueControlRefs_180
_Z16UserPaneDrawProcP16OpaqueControlRefs_130:
	movss xmm1, dword [ebp-0x14c]
	divss xmm1, xmm0
	mulss xmm1, [ebp-0x148]
	movss xmm0, dword [ebp-0x148]
	movaps xmm2, xmm0
	jmp _Z16UserPaneDrawProcP16OpaqueControlRefs_190
_Z16UserPaneDrawProcP16OpaqueControlRefs_160:
	mov [esp+0x8], edi
	mov [esp+0x4], ecx
	mov dword [esp], sRectList
	call _ZNSt6vectorI7MacRectSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0_
	jmp _Z16UserPaneDrawProcP16OpaqueControlRefs_200
	nop


;UserPaneTrackingProc(OpaqueControlRef*, Point, void (*)(OpaqueControlRef*, short))
_Z20UserPaneTrackingProcP16OpaqueControlRef5PointPFvS0_sE:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0xc]
	xor ebx, ebx
	lea esi, [ebp-0x20]
	jmp _Z20UserPaneTrackingProcP16OpaqueControlRef5PointPFvS0_sE_10
_Z20UserPaneTrackingProcP16OpaqueControlRef5PointPFvS0_sE_30:
	mov eax, [edx+ebx*8]
	mov edx, [edx+ebx*8+0x4]
	mov [ebp-0x20], eax
	mov [ebp-0x1c], edx
	mov [esp+0x4], esi
	mov [esp], edi
	call PtInRect
	test al, al
	jnz _Z20UserPaneTrackingProcP16OpaqueControlRef5PointPFvS0_sE_20
	add ebx, 0x1
_Z20UserPaneTrackingProcP16OpaqueControlRef5PointPFvS0_sE_10:
	mov edx, [sRectList]
	mov eax, [sRectList+0x4]
	sub eax, edx
	sar eax, 0x3
	cmp eax, ebx
	ja _Z20UserPaneTrackingProcP16OpaqueControlRef5PointPFvS0_sE_30
_Z20UserPaneTrackingProcP16OpaqueControlRef5PointPFvS0_sE_40:
	xor eax, eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_Z20UserPaneTrackingProcP16OpaqueControlRef5PointPFvS0_sE_20:
	cmp ebx, [sDisplayIndex]
	jz _Z20UserPaneTrackingProcP16OpaqueControlRef5PointPFvS0_sE_40
	mov [sDisplayIndex], ebx
	mov dword [esp+0x4], 0x0
	mov eax, [ebp+0x8]
	mov [esp], eax
	call _Z16UserPaneDrawProcP16OpaqueControlRefs
	xor eax, eax
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;MacDisplay::GetNthMode(int, int&, int&, int&, int&)
_ZN10MacDisplay10GetNthModeEiRiS0_S0_S0_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	mov ecx, [ebp+0x8]
	mov edx, [sDisplayIndex]
	lea eax, [edx+edx*2]
	lea eax, [edx+eax*4]
	shl eax, 0x3
	add eax, [sDisplayList]
	shl ecx, 0x4
	add ecx, [eax+0x14]
	mov edi, [ecx+0xc]
	mov esi, [ecx+0x8]
	mov ebx, [ecx+0x4]
	mov edx, [ecx]
	mov eax, [ebp+0xc]
	mov [eax], edx
	mov eax, [ebp+0x10]
	mov [eax], ebx
	mov eax, [ebp+0x14]
	mov [eax], esi
	mov eax, [ebp+0x18]
	mov [eax], edi
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;MacDisplay::Initialize()
_ZN10MacDisplay10InitializeEv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x1fc
	lea ebx, [ebp-0x20]
	mov [esp+0x8], ebx
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	call CGGetActiveDisplayList
	test eax, eax
	jnz _ZN10MacDisplay10InitializeEv_10
	mov eax, [ebp-0x20]
	test eax, eax
	jnz _ZN10MacDisplay10InitializeEv_20
_ZN10MacDisplay10InitializeEv_10:
	mov eax, [sDisplayList+0x4]
	sub eax, [sDisplayList]
	sar eax, 0x3
	imul eax, eax, 0xc4ec4ec5
	test eax, eax
	jnz _ZN10MacDisplay10InitializeEv_30
	mov dword [esp], _cstring_display_no_valid
	call _Z7dprintfPKcz
	mov eax, 0x3ec
_ZN10MacDisplay10InitializeEv_130:
	lea esp, [ebp-0xc]
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN10MacDisplay10InitializeEv_20:
	shl eax, 0x2
	mov [esp], eax
	call _Znam
	mov [ebp-0x1e0], eax
	mov [esp+0x8], ebx
	mov [esp+0x4], eax
	mov eax, [ebp-0x20]
	mov [esp], eax
	call CGGetActiveDisplayList
	test eax, eax
	jnz _ZN10MacDisplay10InitializeEv_40
	mov eax, [ebp-0x20]
	test eax, eax
	jnz _ZN10MacDisplay10InitializeEv_50
_ZN10MacDisplay10InitializeEv_40:
	mov eax, [ebp-0x1e0]
	test eax, eax
	jz _ZN10MacDisplay10InitializeEv_10
	mov eax, [ebp-0x1e0]
	mov [esp], eax
	call _ZdaPv
	jmp _ZN10MacDisplay10InitializeEv_10
_ZN10MacDisplay10InitializeEv_30:
	mov dword [esp+0x4], 0x1
	mov eax, [kFirstTimeKey]
	mov [esp], eax
	call _ZN14MacPreferences10GetBooleanEPKcb
	test al, al
	jz _ZN10MacDisplay10InitializeEv_60
	mov edx, [sDisplayIndex]
	lea eax, [edx+edx*2]
	lea eax, [edx+eax*4]
	shl eax, 0x3
	add eax, [sDisplayList]
	mov eax, [eax]
	mov [sDisplayID], eax
	lea edx, [ebp-0x1b8]
	mov [esp+0x4], eax
	mov [esp], edx
	call CGDisplayBounds
	sub esp, 0x4
	mov eax, [ebp-0x1b8]
	mov [sDisplayRect], eax
	mov eax, [ebp-0x1b4]
	mov [sDisplayRect+0x4], eax
	mov eax, [ebp-0x1b0]
	mov [sDisplayRect+0x8], eax
	mov eax, [ebp-0x1ac]
	mov [sDisplayRect+0xc], eax
_ZN10MacDisplay10InitializeEv_290:
	mov ecx, [sDisplayList]
	mov eax, [sDisplayList+0x4]
	sub eax, ecx
	sar eax, 0x3
	imul eax, eax, 0xc4ec4ec5
	cmp eax, 0x1
	jz _ZN10MacDisplay10InitializeEv_70
	test eax, eax
	jz _ZN10MacDisplay10InitializeEv_80
	mov edx, [sDisplayIndex]
	cmp eax, edx
	ja _ZN10MacDisplay10InitializeEv_90
_ZN10MacDisplay10InitializeEv_80:
	mov dword [sDisplayIndex], 0x0
_ZN10MacDisplay10InitializeEv_320:
	mov dword [esp+0xc], _Z15BuilderCallbackP15OpaqueWindowPtrm
	mov dword [esp+0x8], 0x1
	mov dword [esp+0x4], 0x0
	mov dword [esp], _cfstring_displayconfig
	call _ZN10MacBuilder11BuildWindowEPK10__CFStringS2_hPFhP15OpaqueWindowPtrmE
	mov ebx, eax
	test eax, eax
	jz _ZN10MacDisplay10InitializeEv_100
	mov dword [esp+0xc], _Z20UserPaneTrackingProcP16OpaqueControlRef5PointPFvS0_sE
	mov dword [esp+0x8], _Z16UserPaneDrawProcP16OpaqueControlRefs
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call _ZN10MacBuilder20SetupUserPaneControlEP15OpaqueWindowPtrlPFvP16OpaqueControlRefsEPFsS3_5PointS5_E
	xor eax, eax
	cmp byte [sInWindowMode], 0x0
	setz al
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x4
	mov [esp], ebx
	call _ZN10MacBuilder15SetControlValueEP15OpaqueWindowPtrls
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x5
	mov [esp], ebx
	call _ZN10MacBuilder17SetControlVisibleEP15OpaqueWindowPtrlh
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x6
	mov [esp], ebx
	call _ZN10MacBuilder17SetControlVisibleEP15OpaqueWindowPtrlh
	mov esi, [sDisplayIndex]
	mov [esp], ebx
	call _ZN10MacBuilder14RunModalWindowEP15OpaqueWindowPtr
	mov edi, eax
	cmp eax, 0x6f6b2020
	jz _ZN10MacDisplay10InitializeEv_110
	mov [sDisplayIndex], esi
_ZN10MacDisplay10InitializeEv_350:
	mov [esp], ebx
	call _ZN10MacBuilder13ReleaseWindowEP15OpaqueWindowPtr
_ZN10MacDisplay10InitializeEv_300:
	cmp edi, 0x6f6b2020
	jz _ZN10MacDisplay10InitializeEv_120
	mov eax, 0xffffff80
	jmp _ZN10MacDisplay10InitializeEv_130
_ZN10MacDisplay10InitializeEv_120:
	mov dword [esp], 0x4
	call _ZN8MacTools11SetCursorIDEs
	mov edx, [sDisplayIndex]
	lea eax, [edx+edx*2]
	lea eax, [edx+eax*4]
	shl eax, 0x3
	add eax, [sDisplayList]
	mov eax, [eax]
	mov [sDisplayID], eax
	lea edx, [ebp-0x1d8]
	mov [esp+0x4], eax
	mov [esp], edx
	call CGDisplayBounds
	sub esp, 0x4
	mov eax, [ebp-0x1d8]
	mov [sDisplayRect], eax
	mov eax, [ebp-0x1d4]
	mov [sDisplayRect+0x4], eax
	mov eax, [ebp-0x1d0]
	mov [sDisplayRect+0x8], eax
	mov eax, [ebp-0x1cc]
	mov [sDisplayRect+0xc], eax
_ZN10MacDisplay10InitializeEv_310:
	cmp byte [sInWindowMode], 0x0
	jz _ZN10MacDisplay10InitializeEv_140
	mov eax, [sDisplayDepth]
	test eax, eax
	jz _ZN10MacDisplay10InitializeEv_150
_ZN10MacDisplay10InitializeEv_340:
	cmp dword [sDisplayDepth], 0x20
	jnz _ZN10MacDisplay10InitializeEv_160
_ZN10MacDisplay10InitializeEv_140:
	mov dword [esp+0x4], 0x0
	mov eax, [kFirstTimeKey]
	mov [esp], eax
	call _ZN14MacPreferences10PutBooleanEPKcb
	mov eax, [sDisplayIndex]
	mov [esp+0x4], eax
	mov eax, [kDisplayIndexKey]
	mov [esp], eax
	call _ZN14MacPreferences10PutIntegerEPKci
	mov dword [esp+0x4], sDisplayRect
	mov eax, [kDisplayRectKey]
	mov [esp], eax
	call _ZN14MacPreferences7PutRectEPKcRK6CGRect
	xor eax, eax
	cmp byte [sInWindowMode], 0x0
	setnz al
	mov [esp+0x4], eax
	mov eax, [kInWindowModeKey]
	mov [esp], eax
	call _ZN14MacPreferences10PutBooleanEPKcb
	mov byte [ebp-0x1a8], 0x1
	mov byte [ebp-0x1a7], 0x14
	lea eax, [ebp-0x1a8]
	mov [esp+0x4], eax
	mov dword [esp], 0x80
	call NewMenu
	test eax, eax
	jz _ZN10MacDisplay10InitializeEv_170
	mov dword [esp+0x4], 0x0
	mov [esp], eax
	call InsertMenu
	call InvalMenuBar
_ZN10MacDisplay10InitializeEv_170:
	mov byte [sInitialized], 0x1
	xor eax, eax
	jmp _ZN10MacDisplay10InitializeEv_130
_ZN10MacDisplay10InitializeEv_50:
	mov eax, [ebp-0x1e0]
	mov [ebp-0x1dc], eax
	xor edi, edi
_ZN10MacDisplay10InitializeEv_280:
	mov ebx, [eax]
	mov [esp+0x4], ebx
	lea edx, [ebp-0xa8]
	mov [esp], edx
	call _ZN12CDisplayInfoC1EP18_CGDirectDisplayID
	cmp byte [ebp-0x58], 0x0
	jz _ZN10MacDisplay10InitializeEv_180
	test edi, edi
	mov eax, [sMainDisplayID]
	cmovz eax, ebx
	mov [sMainDisplayID], eax
	mov eax, [sDisplayList+0x4]
	cmp eax, [sDisplayList+0x8]
	jz _ZN10MacDisplay10InitializeEv_190
	test eax, eax
	jz _ZN10MacDisplay10InitializeEv_200
	lea edx, [ebp-0xa8]
	mov [esp+0x4], edx
	mov [esp], eax
	call _ZN12CDisplayInfoC1ERKS_
	mov eax, [sDisplayList+0x4]
_ZN10MacDisplay10InitializeEv_200:
	add eax, 0x68
	mov [sDisplayList+0x4], eax
_ZN10MacDisplay10InitializeEv_180:
	mov ebx, [ebp-0x70]
	sub ebx, 0xc
	mov esi, [0xd5cc01c]
	cmp ebx, esi
	jnz _ZN10MacDisplay10InitializeEv_210
_ZN10MacDisplay10InitializeEv_380:
	mov eax, [ebp-0x74]
	lea ebx, [eax-0xc]
	cmp ebx, esi
	jnz _ZN10MacDisplay10InitializeEv_220
_ZN10MacDisplay10InitializeEv_370:
	mov eax, [ebp-0x78]
	lea ebx, [eax-0xc]
	cmp ebx, esi
	jnz _ZN10MacDisplay10InitializeEv_230
_ZN10MacDisplay10InitializeEv_360:
	mov eax, [ebp-0x88]
	lea ebx, [eax-0xc]
	cmp ebx, esi
	jnz _ZN10MacDisplay10InitializeEv_240
_ZN10MacDisplay10InitializeEv_390:
	mov edx, [ebp-0x90]
	mov ecx, [ebp-0x94]
	mov eax, ecx
	cmp edx, ecx
	jz _ZN10MacDisplay10InitializeEv_250
_ZN10MacDisplay10InitializeEv_260:
	add eax, 0x10
	cmp edx, eax
	jnz _ZN10MacDisplay10InitializeEv_260
_ZN10MacDisplay10InitializeEv_250:
	test ecx, ecx
	jz _ZN10MacDisplay10InitializeEv_270
	mov [esp], ecx
	call _ZdlPv
_ZN10MacDisplay10InitializeEv_270:
	add edi, 0x1
	add dword [ebp-0x1dc], 0x4
	cmp edi, [ebp-0x20]
	jae _ZN10MacDisplay10InitializeEv_40
	mov eax, [ebp-0x1dc]
	jmp _ZN10MacDisplay10InitializeEv_280
_ZN10MacDisplay10InitializeEv_60:
	mov dword [esp+0x4], 0x0
	mov eax, [kDisplayIndexKey]
	mov [esp], eax
	call _ZN14MacPreferences10GetIntegerEPKci
	mov [sDisplayIndex], eax
	mov dword [esp+0x4], sDisplayRect
	mov eax, [kDisplayRectKey]
	mov [esp], eax
	call _ZN14MacPreferences7GetRectEPKcR6CGRect
	xor eax, eax
	cmp byte [sInWindowMode], 0x0
	setnz al
	mov [esp+0x4], eax
	mov eax, [kInWindowModeKey]
	mov [esp], eax
	call _ZN14MacPreferences10GetBooleanEPKcb
	mov [sInWindowMode], al
	jmp _ZN10MacDisplay10InitializeEv_290
_ZN10MacDisplay10InitializeEv_190:
	lea edx, [ebp-0xa8]
	mov [esp+0x8], edx
	mov [esp+0x4], eax
	mov dword [esp], sDisplayList
	call _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0_
	jmp _ZN10MacDisplay10InitializeEv_180
_ZN10MacDisplay10InitializeEv_100:
	mov edi, 0x6f6b2020
	jmp _ZN10MacDisplay10InitializeEv_300
_ZN10MacDisplay10InitializeEv_70:
	mov dword [sDisplayIndex], 0x0
	mov eax, [ecx]
	mov [sDisplayID], eax
	lea edx, [ebp-0x1c8]
	mov [esp+0x4], eax
	mov [esp], edx
	call CGDisplayBounds
	sub esp, 0x4
	mov eax, [ebp-0x1c8]
	mov [sDisplayRect], eax
	mov eax, [ebp-0x1c4]
	mov [sDisplayRect+0x4], eax
	mov eax, [ebp-0x1c0]
	mov [sDisplayRect+0x8], eax
	mov eax, [ebp-0x1bc]
	mov [sDisplayRect+0xc], eax
_ZN10MacDisplay10InitializeEv_330:
	call GetCurrentKeyModifiers
	test ah, 0x1
	jz _ZN10MacDisplay10InitializeEv_310
	jmp _ZN10MacDisplay10InitializeEv_320
_ZN10MacDisplay10InitializeEv_90:
	lea eax, [edx+edx*2]
	lea eax, [edx+eax*4]
	lea eax, [ecx+eax*8]
	mov [ebp-0x1e4], eax
	mov eax, [eax+0x4]
	mov [ebp-0x1e8], eax
	mov [ebp-0x40], eax
	mov edx, [ebp-0x1e4]
	mov ebx, [edx+0x8]
	mov [ebp-0x3c], ebx
	mov esi, [edx+0xc]
	mov [ebp-0x38], esi
	mov edi, [edx+0x10]
	mov [ebp-0x34], edi
	mov eax, [sDisplayRect]
	mov [ebp-0x30], eax
	mov edx, [sDisplayRect+0x4]
	mov [ebp-0x2c], edx
	mov ecx, [sDisplayRect+0x8]
	mov [ebp-0x28], ecx
	mov eax, [sDisplayRect+0xc]
	mov [ebp-0x24], eax
	mov eax, [ebp-0x1e8]
	mov [esp+0x10], eax
	mov [esp+0x14], ebx
	mov [esp+0x18], esi
	mov [esp+0x1c], edi
	mov eax, [sDisplayRect]
	mov [esp], eax
	mov [esp+0x4], edx
	mov [esp+0x8], ecx
	mov edx, [sDisplayRect+0xc]
	mov [esp+0xc], edx
	call CGRectEqualToRect
	test eax, eax
	jz _ZN10MacDisplay10InitializeEv_320
	mov edx, [ebp-0x1e4]
	mov eax, [edx]
	mov [sDisplayID], eax
	jmp _ZN10MacDisplay10InitializeEv_330
_ZN10MacDisplay10InitializeEv_150:
	mov eax, [sDisplayID]
	mov [esp], eax
	call CGDisplayBitsPerPixel
	mov [sDisplayDepth], eax
	jmp _ZN10MacDisplay10InitializeEv_340
_ZN10MacDisplay10InitializeEv_110:
	mov dword [esp+0x4], 0x4
	mov [esp], ebx
	call _ZN10MacBuilder15GetControlValueEP15OpaqueWindowPtrl
	test ax, ax
	setz byte [sInWindowMode]
	jmp _ZN10MacDisplay10InitializeEv_350
_ZN10MacDisplay10InitializeEv_230:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZN10MacDisplay10InitializeEv_360
	lea eax, [ebp-0x1b]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZN10MacDisplay10InitializeEv_360
_ZN10MacDisplay10InitializeEv_220:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZN10MacDisplay10InitializeEv_370
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZN10MacDisplay10InitializeEv_370
_ZN10MacDisplay10InitializeEv_210:
	lea eax, [ebx+0x8]
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZN10MacDisplay10InitializeEv_380
	lea eax, [ebp-0x19]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZN10MacDisplay10InitializeEv_380
_ZN10MacDisplay10InitializeEv_240:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZN10MacDisplay10InitializeEv_390
	lea eax, [ebp-0x1a]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZN10MacDisplay10InitializeEv_390
_ZN10MacDisplay10InitializeEv_160:
	call _ZN12MacResources18GetNeeds32BitErrorEv
	mov dword [esp+0x4], 0x1
	mov [esp], eax
	call _ZN8MacTools12MessageAlertEPK10__CFStringh
	mov eax, 0xffffff80
	jmp _ZN10MacDisplay10InitializeEv_130
	mov ebx, eax
	mov eax, [ebp-0x70]
	lea esi, [eax-0xc]
	mov edi, [0xd5cc01c]
	cmp esi, edi
	jnz _ZN10MacDisplay10InitializeEv_400
_ZN10MacDisplay10InitializeEv_560:
	mov eax, [ebp-0x74]
	lea esi, [eax-0xc]
	cmp edi, esi
	jnz _ZN10MacDisplay10InitializeEv_410
_ZN10MacDisplay10InitializeEv_550:
	mov eax, [ebp-0x78]
	lea esi, [eax-0xc]
	cmp edi, esi
	jnz _ZN10MacDisplay10InitializeEv_420
_ZN10MacDisplay10InitializeEv_520:
	mov eax, [ebp-0x88]
	lea esi, [eax-0xc]
	cmp edi, esi
	jnz _ZN10MacDisplay10InitializeEv_430
_ZN10MacDisplay10InitializeEv_510:
	mov edx, [ebp-0x90]
	mov ecx, [ebp-0x94]
	mov eax, ecx
	cmp edx, ecx
	jz _ZN10MacDisplay10InitializeEv_440
_ZN10MacDisplay10InitializeEv_450:
	add eax, 0x10
	cmp edx, eax
	jnz _ZN10MacDisplay10InitializeEv_450
_ZN10MacDisplay10InitializeEv_440:
	test ecx, ecx
	jz _ZN10MacDisplay10InitializeEv_460
	mov [esp], ecx
	call _ZdlPv
_ZN10MacDisplay10InitializeEv_460:
	mov [esp], ebx
	call _Unwind_Resume
	mov ebx, eax
_ZN10MacDisplay10InitializeEv_490:
	mov edx, [ebp-0x90]
	mov ecx, [ebp-0x94]
	mov eax, ecx
	cmp edx, ecx
	jz _ZN10MacDisplay10InitializeEv_440
_ZN10MacDisplay10InitializeEv_470:
	add eax, 0x10
	cmp edx, eax
	jnz _ZN10MacDisplay10InitializeEv_470
	jmp _ZN10MacDisplay10InitializeEv_440
	mov ebx, eax
_ZN10MacDisplay10InitializeEv_500:
	mov eax, [ebp-0x78]
	lea edi, [eax-0xc]
	cmp edi, esi
	jnz _ZN10MacDisplay10InitializeEv_480
_ZN10MacDisplay10InitializeEv_590:
	mov eax, [ebp-0x88]
	lea edi, [eax-0xc]
	cmp edi, esi
	jz _ZN10MacDisplay10InitializeEv_490
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZN10MacDisplay10InitializeEv_490
	lea eax, [ebp-0x1a]
	mov [esp+0x4], eax
	mov [esp], edi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZN10MacDisplay10InitializeEv_490
	mov ebx, eax
	mov eax, [ebp-0x74]
	lea edi, [eax-0xc]
	cmp edi, esi
	jz _ZN10MacDisplay10InitializeEv_500
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZN10MacDisplay10InitializeEv_500
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], edi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZN10MacDisplay10InitializeEv_500
_ZN10MacDisplay10InitializeEv_430:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZN10MacDisplay10InitializeEv_510
	lea eax, [ebp-0x1a]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZN10MacDisplay10InitializeEv_510
_ZN10MacDisplay10InitializeEv_420:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZN10MacDisplay10InitializeEv_520
	lea eax, [ebp-0x1b]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZN10MacDisplay10InitializeEv_520
	mov ebx, eax
_ZN10MacDisplay10InitializeEv_540:
	mov edx, [ebp-0x90]
	mov ecx, [ebp-0x94]
	mov eax, ecx
	cmp edx, ecx
	jz _ZN10MacDisplay10InitializeEv_440
_ZN10MacDisplay10InitializeEv_530:
	add eax, 0x10
	cmp edx, eax
	jnz _ZN10MacDisplay10InitializeEv_530
	jmp _ZN10MacDisplay10InitializeEv_440
	mov ebx, eax
_ZN10MacDisplay10InitializeEv_570:
	mov eax, [ebp-0x88]
	lea esi, [eax-0xc]
	cmp edi, esi
	jz _ZN10MacDisplay10InitializeEv_540
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZN10MacDisplay10InitializeEv_540
	lea eax, [ebp-0x1a]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZN10MacDisplay10InitializeEv_540
_ZN10MacDisplay10InitializeEv_410:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZN10MacDisplay10InitializeEv_550
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZN10MacDisplay10InitializeEv_550
_ZN10MacDisplay10InitializeEv_400:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZN10MacDisplay10InitializeEv_560
	lea eax, [ebp-0x19]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZN10MacDisplay10InitializeEv_560
	mov ebx, eax
_ZN10MacDisplay10InitializeEv_580:
	mov eax, [ebp-0x78]
	lea esi, [eax-0xc]
	cmp edi, esi
	jz _ZN10MacDisplay10InitializeEv_570
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZN10MacDisplay10InitializeEv_570
	lea eax, [ebp-0x1b]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZN10MacDisplay10InitializeEv_570
	mov ebx, eax
	mov eax, [ebp-0x74]
	lea esi, [eax-0xc]
	cmp edi, esi
	jz _ZN10MacDisplay10InitializeEv_580
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZN10MacDisplay10InitializeEv_580
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZN10MacDisplay10InitializeEv_580
	mov ebx, eax
	jmp _ZN10MacDisplay10InitializeEv_590
_ZN10MacDisplay10InitializeEv_480:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZN10MacDisplay10InitializeEv_590
	lea eax, [ebp-0x1b]
	mov [esp+0x4], eax
	mov [esp], edi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZN10MacDisplay10InitializeEv_590


;MacDisplay::Is1900Card()
_ZN10MacDisplay10Is1900CardEv:
	push ebp
	mov ebp, esp
	mov eax, [sDisplayIndex]
	lea edx, [eax+eax*2]
	lea edx, [eax+edx*4]
	shl edx, 0x3
	add edx, [sDisplayList]
	movzx eax, byte [edx+0x66]
	pop ebp
	ret
	nop
	add [eax], al


;MacDisplay::GetCardType()
_ZN10MacDisplay11GetCardTypeEv:
	push ebp
	mov ebp, esp
	mov eax, [sDisplayIndex]
	lea edx, [eax+eax*2]
	lea edx, [eax+edx*4]
	shl edx, 0x3
	add edx, [sDisplayList]
	mov eax, [edx+0x2c]
	pop ebp
	ret


;MacDisplay::GetDeviceID()
_ZN10MacDisplay11GetDeviceIDEv:
	push ebp
	mov ebp, esp
	mov eax, [sDisplayIndex]
	lea edx, [eax+eax*2]
	lea edx, [eax+edx*4]
	shl edx, 0x3
	add edx, [sDisplayList]
	mov eax, [edx+0x28]
	pop ebp
	ret


;MacDisplay::GetGLVendor()
_ZN10MacDisplay11GetGLVendorEv:
	push ebp
	mov ebp, esp
	mov eax, [sDisplayIndex]
	lea edx, [eax+eax*2]
	lea edx, [eax+edx*4]
	shl edx, 0x3
	add edx, [sDisplayList]
	mov eax, [edx+0x30]
	pop ebp
	ret


;MacDisplay::GetMainPort()
_ZN10MacDisplay11GetMainPortEv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [sScreenContext]
	test eax, eax
	jz _ZN10MacDisplay11GetMainPortEv_10
	mov eax, [sScreenContext+0x4]
	leave
	ret
_ZN10MacDisplay11GetMainPortEv_10:
	mov eax, [sMainWindow]
	mov [esp], eax
	call GetWindowPort
	leave
	ret
	nop
	add [eax], al


;MacDisplay::GetNumModes()
_ZN10MacDisplay11GetNumModesEv:
	push ebp
	mov ebp, esp
	mov eax, [sDisplayIndex]
	lea edx, [eax+eax*2]
	lea edx, [eax+edx*4]
	shl edx, 0x3
	add edx, [sDisplayList]
	mov eax, [edx+0x18]
	sub eax, [edx+0x14]
	sar eax, 0x4
	pop ebp
	ret


;MacDisplay::GetVendorID()
_ZN10MacDisplay11GetVendorIDEv:
	push ebp
	mov ebp, esp
	mov eax, [sDisplayIndex]
	lea edx, [eax+eax*2]
	lea edx, [eax+edx*4]
	shl edx, 0x3
	add edx, [sDisplayList]
	mov eax, [edx+0x24]
	pop ebp
	ret


;MacDisplay::StopCapture()
_ZN10MacDisplay11StopCaptureEv:
	push ebp
	mov ebp, esp
	sub esp, 0x38
	mov eax, [sCaptureMovie]
	test eax, eax
	jz _ZN10MacDisplay11StopCaptureEv_10
	mov eax, [sCaptureMedia]
	mov [esp], eax
	call EndMediaEdits
	test ax, ax
	jnz _ZN10MacDisplay11StopCaptureEv_20
	mov eax, [sCaptureMedia]
	mov [esp], eax
	call GetMediaDuration
	mov dword [esp+0x10], 0x10000
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x0
	mov dword [esp+0x4], 0x0
	mov eax, [sCaptureTrack]
	mov [esp], eax
	call InsertMediaIntoTrack
	test ax, ax
	jnz _ZN10MacDisplay11StopCaptureEv_20
	mov word [ebp-0xa], 0xffff
	mov dword [esp+0xc], sCaptureName
	lea eax, [ebp-0xa]
	mov [esp+0x8], eax
	movsx eax, word [sCaptureRefNum]
	mov [esp+0x4], eax
	mov eax, [sCaptureMovie]
	mov [esp], eax
	call AddMovieResource
_ZN10MacDisplay11StopCaptureEv_20:
	movsx eax, word [sCaptureRefNum]
	mov [esp], eax
	call CloseMovieFile
	mov dword [sCaptureMovie], 0x0
_ZN10MacDisplay11StopCaptureEv_10:
	leave
	ret


;MacDisplay::SwapContext(OpaqueContextRef*)
_ZN10MacDisplay11SwapContextEP16OpaqueContextRef:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	cmp byte [sEnableSwap], 0x0
	jnz _ZN10MacDisplay11SwapContextEP16OpaqueContextRef_10
	leave
	ret
_ZN10MacDisplay11SwapContextEP16OpaqueContextRef_10:
	mov edx, [ebp+0x8]
	mov eax, [edx]
	mov [esp], eax
	call aglSwapBuffers
	add dword [sSwapCount], 0x1
	leave
	ret
	nop
	add [eax], al


;MacDisplay::IsFullscreen()
_ZN10MacDisplay12IsFullscreenEv:
	push ebp
	mov ebp, esp
	cmp byte [sInWindowMode], 0x0
	jnz _ZN10MacDisplay12IsFullscreenEv_10
	xor eax, eax
	cmp dword [sScreenContext], 0x0
	setnz al
	pop ebp
	ret
_ZN10MacDisplay12IsFullscreenEv_10:
	xor eax, eax
	pop ebp
	ret


;MacDisplay::IsWindowMode()
_ZN10MacDisplay12IsWindowModeEv:
	push ebp
	mov ebp, esp
	cmp byte [sInitialized], 0x0
	jz _ZN10MacDisplay12IsWindowModeEv_10
	movzx eax, byte [sInWindowMode]
	pop ebp
	ret
_ZN10MacDisplay12IsWindowModeEv_10:
	mov eax, 0x1
	pop ebp
	ret


;MacDisplay::SetGammaRamp(_D3DGAMMARAMP const*)
_ZN10MacDisplay12SetGammaRampEPK13_D3DGAMMARAMP:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	cmp byte [sInWindowMode], 0x0
	jnz _ZN10MacDisplay12SetGammaRampEPK13_D3DGAMMARAMP_10
	mov esi, [sSystemGammaRed]
	test esi, esi
	jz _ZN10MacDisplay12SetGammaRampEPK13_D3DGAMMARAMP_20
_ZN10MacDisplay12SetGammaRampEPK13_D3DGAMMARAMP_50:
	mov ebx, [sCustomGammaRed]
	test ebx, ebx
	jz _ZN10MacDisplay12SetGammaRampEPK13_D3DGAMMARAMP_30
	mov esi, [sCustomGammaBlue]
_ZN10MacDisplay12SetGammaRampEPK13_D3DGAMMARAMP_60:
	mov eax, [sCustomGammaRed]
	mov [ebp-0x2c], eax
	mov edi, [sCustomGammaGreen]
	mov ecx, [ebp+0x8]
	mov ebx, 0x1
	movss xmm1, dword [_float_0_00390625]
_ZN10MacDisplay12SetGammaRampEPK13_D3DGAMMARAMP_40:
	lea edx, [ebx*4]
	movzx eax, word [ecx]
	movzx eax, ah
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	mov eax, [ebp-0x2c]
	movss [edx+eax-0x4], xmm0
	movzx eax, byte [ecx+0x201]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	movss [edx+edi-0x4], xmm0
	movzx eax, byte [ecx+0x401]
	cvtsi2ss xmm0, eax
	mulss xmm0, xmm1
	movss [edx+esi-0x4], xmm0
	add ebx, 0x1
	add ecx, 0x2
	cmp ebx, 0x101
	jnz _ZN10MacDisplay12SetGammaRampEPK13_D3DGAMMARAMP_40
	mov [esp+0x10], esi
	mov [esp+0xc], edi
	mov eax, [ebp-0x2c]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x100
	mov eax, [sDisplayID]
	mov [esp], eax
	call CGSetDisplayTransferByTable
_ZN10MacDisplay12SetGammaRampEPK13_D3DGAMMARAMP_10:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN10MacDisplay12SetGammaRampEPK13_D3DGAMMARAMP_20:
	mov dword [esp], 0x400
	call _Znam
	mov [sSystemGammaRed], eax
	mov dword [esp], 0x400
	call _Znam
	mov [sSystemGammaGreen], eax
	mov dword [esp], 0x400
	call _Znam
	mov [sSystemGammaBlue], eax
	lea edx, [ebp-0x1c]
	mov [esp+0x14], edx
	mov [esp+0x10], eax
	mov eax, [sSystemGammaGreen]
	mov [esp+0xc], eax
	mov eax, [sSystemGammaRed]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x100
	mov eax, [sDisplayID]
	mov [esp], eax
	call CGGetDisplayTransferByTable
	jmp _ZN10MacDisplay12SetGammaRampEPK13_D3DGAMMARAMP_50
_ZN10MacDisplay12SetGammaRampEPK13_D3DGAMMARAMP_30:
	mov dword [esp], 0x400
	call _Znam
	mov [sCustomGammaRed], eax
	mov dword [esp], 0x400
	call _Znam
	mov [sCustomGammaGreen], eax
	mov dword [esp], 0x400
	call _Znam
	mov [sCustomGammaBlue], eax
	mov esi, eax
	jmp _ZN10MacDisplay12SetGammaRampEPK13_D3DGAMMARAMP_60


;MacDisplay::SetupDisplay(int, int)
_ZN10MacDisplay12SetupDisplayEii:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x44
	cmp byte [sInitialized], 0x0
	jz _ZN10MacDisplay12SetupDisplayEii_10
	cmp byte [sInWindowMode], 0x1
	sbb ebx, ebx
	and ebx, 0x22fff7
	add ebx, 0x2000009
	lea edx, [ebp-0x38]
	mov eax, [sDisplayID]
	mov [esp+0x4], eax
	mov [esp], edx
	call CGDisplayBounds
	sub esp, 0x4
	mov eax, [ebp-0x38]
	mov [ebp-0x28], eax
	mov eax, [ebp-0x34]
	mov [ebp-0x24], eax
	mov eax, [ebp-0x30]
	mov [ebp-0x20], eax
	mov eax, [ebp-0x2c]
	mov [ebp-0x1c], eax
	cvttss2si eax, [ebp-0x28]
	mov [ebp-0x14], ax
	cvttss2si edx, [ebp-0x24]
	mov [ebp-0x16], dx
	add ax, [ebp+0x8]
	mov [ebp-0x10], ax
	add dx, [ebp+0xc]
	mov [ebp-0x12], dx
	cmp byte [sInWindowMode], 0x1
	sbb edx, edx
	and edx, 0x7
	add edx, 0x6
	mov dword [esp+0xc], sMainWindow
	lea eax, [ebp-0x16]
	mov [esp+0x8], eax
	mov [esp+0x4], ebx
	mov [esp], edx
	call CreateNewWindow
	mov ebx, eax
	test eax, eax
	jz _ZN10MacDisplay12SetupDisplayEii_20
	mov eax, ebx
	mov ebx, [ebp-0x4]
	leave
	ret
_ZN10MacDisplay12SetupDisplayEii_20:
	mov eax, [sMainWindow]
	mov [esp], eax
	call SetPortWindowPort
	mov word [ebp-0xa], 0x0
	mov word [ebp-0xc], 0x0
	mov word [ebp-0xe], 0x0
	lea eax, [ebp-0xe]
	mov [esp+0x4], eax
	mov eax, [sMainWindow]
	mov [esp], eax
	call SetWindowContentColor
	call _ZN12MacResources16GetProductFamilyEv
	test eax, eax
	jz _ZN10MacDisplay12SetupDisplayEii_30
	mov [esp+0x4], eax
	mov eax, [sMainWindow]
	mov [esp], eax
	call SetWindowTitleWithCFString
_ZN10MacDisplay12SetupDisplayEii_30:
	call _Z21CenterWindowOnDisplayv
	mov eax, ebx
	mov ebx, [ebp-0x4]
	leave
	ret
_ZN10MacDisplay12SetupDisplayEii_10:
	mov ebx, 0xffffffce
	mov eax, ebx
	mov ebx, [ebp-0x4]
	leave
	ret


;MacDisplay::GetGLRenderer()
_ZN10MacDisplay13GetGLRendererEv:
	push ebp
	mov ebp, esp
	mov eax, [sDisplayIndex]
	lea edx, [eax+eax*2]
	lea edx, [eax+edx*4]
	shl edx, 0x3
	add edx, [sDisplayList]
	mov eax, [edx+0x34]
	pop ebp
	ret


;MacDisplay::GetMainWindow()
_ZN10MacDisplay13GetMainWindowEv:
	push ebp
	mov ebp, esp
	mov eax, [sMainWindow]
	pop ebp
	ret


;MacDisplay::GlobalToLocal(Point&)
_ZN10MacDisplay13GlobalToLocalER5Point:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	cmp byte [sInitialized], 0x0
	jz _ZN10MacDisplay13GlobalToLocalER5Point_10
	cmp byte [sInWindowMode], 0x0
	jnz _ZN10MacDisplay13GlobalToLocalER5Point_10
	mov eax, [sScreenContext]
	test eax, eax
	jz _ZN10MacDisplay13GlobalToLocalER5Point_20
	mov eax, [sScreenContext+0x4]
_ZN10MacDisplay13GlobalToLocalER5Point_30:
	mov [esp+0x4], ebx
	mov [esp], eax
	call QDGlobalToLocalPoint
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_ZN10MacDisplay13GlobalToLocalER5Point_10:
	mov eax, [sMainWindow]
	mov [esp], eax
	call GetWindowPort
	mov [esp+0x4], ebx
	mov [esp], eax
	call QDGlobalToLocalPoint
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_ZN10MacDisplay13GlobalToLocalER5Point_20:
	mov eax, [sMainWindow]
	mov [esp], eax
	call GetWindowPort
	jmp _ZN10MacDisplay13GlobalToLocalER5Point_30
	add [eax], al


;MacDisplay::PointInWindow(Point)
_ZN10MacDisplay13PointInWindowE5Point:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	lea ebx, [ebp-0x10]
	mov [esp+0x4], ebx
	mov eax, [sMainWindow]
	mov [esp], eax
	call GetWindowPortBounds
	mov [esp+0x4], ebx
	mov eax, [ebp+0x8]
	mov [esp], eax
	call PtInRect
	movzx eax, al
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	nop
	add [eax], al


;MacDisplay::GetCurrentMode(int&, int&, int&, int&)
_ZN10MacDisplay14GetCurrentModeERiS0_S0_S0_:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0xc]
	mov edx, [sMainWindow]
	test edx, edx
	jz _ZN10MacDisplay14GetCurrentModeERiS0_S0_S0__10
	lea eax, [ebp-0x10]
	mov [esp+0x4], eax
	mov [esp], edx
	call GetWindowPortBounds
	movsx edx, word [ebp-0xa]
	mov eax, 0x280
	cmp edx, 0x27f
	cmovg eax, edx
	mov edx, [ebp+0x8]
	mov [edx], eax
	movsx eax, word [ebp-0xc]
	mov [ebx], eax
	cmp eax, 0x1df
	jle _ZN10MacDisplay14GetCurrentModeERiS0_S0_S0__20
_ZN10MacDisplay14GetCurrentModeERiS0_S0_S0__70:
	mov eax, [sDisplayDepth]
	test eax, eax
	jz _ZN10MacDisplay14GetCurrentModeERiS0_S0_S0__30
_ZN10MacDisplay14GetCurrentModeERiS0_S0_S0__50:
	mov edx, [sDisplayDepth]
	mov eax, [ebp+0x10]
	mov [eax], edx
	mov eax, [sDisplayRefreshRate]
	test eax, eax
	jz _ZN10MacDisplay14GetCurrentModeERiS0_S0_S0__40
_ZN10MacDisplay14GetCurrentModeERiS0_S0_S0__60:
	mov edx, [sDisplayRefreshRate]
	mov eax, [ebp+0x14]
	mov [eax], edx
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_ZN10MacDisplay14GetCurrentModeERiS0_S0_S0__20:
	mov dword [ebx], 0x1e0
	mov eax, [sDisplayDepth]
	test eax, eax
	jnz _ZN10MacDisplay14GetCurrentModeERiS0_S0_S0__50
_ZN10MacDisplay14GetCurrentModeERiS0_S0_S0__30:
	mov eax, [sDisplayID]
	mov [esp], eax
	call CGDisplayBitsPerPixel
	mov [sDisplayDepth], eax
	mov edx, eax
	mov eax, [ebp+0x10]
	mov [eax], edx
	mov eax, [sDisplayRefreshRate]
	test eax, eax
	jnz _ZN10MacDisplay14GetCurrentModeERiS0_S0_S0__60
_ZN10MacDisplay14GetCurrentModeERiS0_S0_S0__40:
	mov eax, [sDisplayID]
	mov [esp], eax
	call CGDisplayCurrentMode
	test eax, eax
	jz _ZN10MacDisplay14GetCurrentModeERiS0_S0_S0__60
	mov dword [esp+0x4], _cfstring_refreshrate
	mov [esp], eax
	call _ZN8MacTools18GetDictionaryValueEPK14__CFDictionaryPK10__CFString
	cmp eax, 0xffffffff
	cmovz eax, [sDisplayRefreshRate]
	mov [sDisplayRefreshRate], eax
	mov edx, eax
	mov eax, [ebp+0x14]
	mov [eax], edx
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_ZN10MacDisplay14GetCurrentModeERiS0_S0_S0__10:
	mov eax, [sDisplayID]
	mov [esp], eax
	call CGDisplayPixelsWide
	mov edx, [ebp+0x8]
	mov [edx], eax
	mov eax, [sDisplayID]
	mov [esp], eax
	call CGDisplayPixelsHigh
	mov [ebx], eax
	jmp _ZN10MacDisplay14GetCurrentModeERiS0_S0_S0__70
	nop


;MacDisplay::GetDescription()
_ZN10MacDisplay14GetDescriptionEv:
	push ebp
	mov ebp, esp
	mov eax, [sDisplayIndex]
	lea edx, [eax+eax*2]
	lea edx, [eax+edx*4]
	shl edx, 0x3
	add edx, [sDisplayList]
	mov eax, [edx+0x20]
	pop ebp
	ret


;MacDisplay::ReleaseContext(OpaqueContextRef*&)
_ZN10MacDisplay14ReleaseContextERP16OpaqueContextRef:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	mov eax, [edx]
	cmp eax, [sScreenContext]
	jz _ZN10MacDisplay14ReleaseContextERP16OpaqueContextRef_10
	mov [ebp+0x8], edx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _ZN16OpaqueContextRef7ReleaseEv
_ZN10MacDisplay14ReleaseContextERP16OpaqueContextRef_10:
	mov dword [esp], sSharedContext
	call _ZN16OpaqueContextRef7ReleaseEv
	mov edx, [ebx]
	mov [ebp+0x8], edx
	add esp, 0x14
	pop ebx
	pop ebp
	jmp _ZN16OpaqueContextRef7ReleaseEv


;MacDisplay::ReleaseDisplay()
_ZN10MacDisplay14ReleaseDisplayEv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	cmp byte [sInitialized], 0x0
	jnz _ZN10MacDisplay14ReleaseDisplayEv_10
_ZN10MacDisplay14ReleaseDisplayEv_40:
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_ZN10MacDisplay14ReleaseDisplayEv_10:
	call _ZN10MacDisplay11StopCaptureEv
	cmp byte [sInWindowMode], 0x0
	jnz _ZN10MacDisplay14ReleaseDisplayEv_20
	mov edx, [sSystemGammaRed]
	test edx, edx
	jz _ZN10MacDisplay14ReleaseDisplayEv_20
	mov eax, [sSystemGammaBlue]
	mov [esp+0x10], eax
	mov eax, [sSystemGammaGreen]
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x100
	mov eax, [sDisplayID]
	mov [esp], eax
	call CGSetDisplayTransferByTable
_ZN10MacDisplay14ReleaseDisplayEv_20:
	movzx ebx, byte [sInWindowMode]
	mov byte [sInWindowMode], 0x0
	mov eax, [sMainWindow]
	test eax, eax
	jz _ZN10MacDisplay14ReleaseDisplayEv_30
	mov [esp], eax
	call DisposeWindow
	mov dword [sMainWindow], 0x0
_ZN10MacDisplay14ReleaseDisplayEv_30:
	test bl, bl
	jnz _ZN10MacDisplay14ReleaseDisplayEv_40
	call ShowMenuBar
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	call SetSystemUIMode
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	nop


;MacDisplay::GetCurrentDepth()
_ZN10MacDisplay15GetCurrentDepthEv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [sDisplayDepth]
	test edx, edx
	jz _ZN10MacDisplay15GetCurrentDepthEv_10
	mov eax, [sDisplayDepth]
	leave
	ret
_ZN10MacDisplay15GetCurrentDepthEv_10:
	mov eax, [sDisplayID]
	mov [esp], eax
	call CGDisplayBitsPerPixel
	mov [sDisplayDepth], eax
	leave
	ret
	nop
	add [eax], al


;MacDisplay::GetDeviceHandle()
_ZN10MacDisplay15GetDeviceHandleEv:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	lea edx, [ebp-0x48]
	mov eax, [sDisplayID]
	mov [esp+0x4], eax
	mov [esp], edx
	call CGDisplayBounds
	sub esp, 0x4
	mov eax, [ebp-0x48]
	mov [ebp-0x38], eax
	mov eax, [ebp-0x44]
	mov [ebp-0x34], eax
	mov eax, [ebp-0x40]
	mov [ebp-0x30], eax
	mov eax, [ebp-0x3c]
	mov [ebp-0x2c], eax
	cvttss2si edx, [ebp-0x38]
	mov [ebp-0x1e], dx
	cvttss2si ecx, [ebp-0x34]
	mov [ebp-0x20], cx
	cvttss2si eax, [ebp-0x30]
	add eax, edx
	mov [ebp-0x1a], ax
	cvttss2si eax, [ebp-0x2c]
	add eax, ecx
	mov [ebp-0x1c], ax
	mov dword [esp], 0x1
	call DMGetFirstScreenDevice
	mov ebx, eax
	test eax, eax
	jz _ZN10MacDisplay15GetDeviceHandleEv_10
	lea edi, [ebp-0x28]
	lea esi, [ebp-0x20]
_ZN10MacDisplay15GetDeviceHandleEv_30:
	mov eax, [ebx]
	mov edx, [eax+0x26]
	mov eax, [eax+0x22]
	mov [ebp-0x28], eax
	mov [ebp-0x24], edx
	mov [esp+0x4], edi
	mov [esp], esi
	call EqualRect
	test al, al
	jnz _ZN10MacDisplay15GetDeviceHandleEv_20
	mov dword [esp+0x4], 0x1
	mov [esp], ebx
	call DMGetNextScreenDevice
	mov ebx, eax
	test eax, eax
	jnz _ZN10MacDisplay15GetDeviceHandleEv_30
_ZN10MacDisplay15GetDeviceHandleEv_10:
	call GetMainDevice
	mov ebx, eax
_ZN10MacDisplay15GetDeviceHandleEv_20:
	mov eax, ebx
	lea esp, [ebp-0xc]
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;MacDisplay::GetGLExtensions()
_ZN10MacDisplay15GetGLExtensionsEv:
	push ebp
	mov ebp, esp
	mov eax, [sDisplayIndex]
	lea edx, [eax+eax*2]
	lea edx, [eax+edx*4]
	shl edx, 0x3
	add edx, [sDisplayList]
	mov eax, [edx+0x38]
	pop ebp
	ret


;MacDisplay::SupportsShadows()
_ZN10MacDisplay15SupportsShadowsEv:
	push ebp
	mov ebp, esp
	mov eax, 0x1
	pop ebp
	ret
	add [eax], al


;MacDisplay::GetIsAntialiased()
_ZN10MacDisplay16GetIsAntialiasedEv:
	push ebp
	mov ebp, esp
	movzx eax, byte [sIsAntialiased]
	pop ebp
	ret


;MacDisplay::GetSharedContext()
_ZN10MacDisplay16GetSharedContextEv:
	push ebp
	mov ebp, esp
	mov eax, sSharedContext
	pop ebp
	ret


;MacDisplay::GetFBOSupportInfo(unsigned char&, unsigned char&)
_ZN10MacDisplay17GetFBOSupportInfoERhS0_:
	push ebp
	mov ebp, esp
	mov eax, [sDisplayIndex]
	lea edx, [eax+eax*2]
	lea edx, [eax+edx*4]
	shl edx, 0x3
	add edx, [sDisplayList]
	movzx ecx, byte [edx+0x63]
	mov eax, [ebp+0x8]
	mov [eax], cl
	movzx edx, byte [edx+0x64]
	mov eax, [ebp+0xc]
	mov [eax], dl
	pop ebp
	ret
	nop


;MacDisplay::SetCurrentContext(OpaqueContextRef*)
_ZN10MacDisplay17SetCurrentContextEP16OpaqueContextRef:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [ebp+0x8]
	mov eax, [eax]
	mov [esp], eax
	call aglSetCurrentContext
	leave
	ret
	nop


;MacDisplay::GetMaxTextureUnits()
_ZN10MacDisplay18GetMaxTextureUnitsEv:
	push ebp
	mov ebp, esp
	mov eax, [sDisplayIndex]
	lea edx, [eax+eax*2]
	lea edx, [eax+edx*4]
	shl edx, 0x3
	add edx, [sDisplayList]
	mov eax, [edx+0x44]
	pop ebp
	ret


;MacDisplay::GetVideoMemoryInfo(long&, long&)
_ZN10MacDisplay18GetVideoMemoryInfoERlS0_:
	push ebp
	mov ebp, esp
	mov eax, [sDisplayIndex]
	lea edx, [eax+eax*2]
	lea edx, [eax+edx*4]
	shl edx, 0x3
	add edx, [sDisplayList]
	mov ecx, [edx+0x3c]
	mov eax, [ebp+0x8]
	mov [eax], ecx
	mov edx, [edx+0x40]
	mov eax, [ebp+0xc]
	mov [eax], edx
	pop ebp
	ret
	nop


;MacDisplay::CreateScreenContext(int, unsigned char, int, int, int, unsigned char, unsigned char&)
_ZN10MacDisplay19CreateScreenContextEihiiihRh:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xdc
	mov esi, [ebp+0x8]
	movzx edx, byte [ebp+0x1c]
	test esi, esi
	mov eax, 0x20
	cmovz esi, eax
	cmp byte [ebp+0xc], 0x0
	jnz _ZN10MacDisplay19CreateScreenContextEihiiihRh_10
	mov dword [ebp-0xb8], 0x0
_ZN10MacDisplay19CreateScreenContextEihiiihRh_330:
	test dl, dl
	mov eax, [ebp+0x20]
	setz byte [eax]
	mov eax, [ebp+0x10]
	test eax, eax
	jz _ZN10MacDisplay19CreateScreenContextEihiiihRh_20
	mov edx, [sDisplayIndex]
	lea eax, [edx+edx*2]
	lea eax, [edx+eax*4]
	shl eax, 0x3
	add eax, [sDisplayList]
	mov edx, [eax+0x34]
	lea eax, [ebp-0x19]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	lea eax, [ebp-0x20]
	mov [esp], eax
	call _ZNSsC1EPKcRKSaIcE
	mov eax, [ebp-0x20]
	mov [esp], eax
	call _Z6strlwrPc
	mov edx, [sDisplayIndex]
	lea eax, [edx+edx*2]
	lea eax, [edx+eax*4]
	shl eax, 0x3
	add eax, [sDisplayList]
	cmp dword [eax+0x2c], 0x1
	jz _ZN10MacDisplay19CreateScreenContextEihiiihRh_30
_ZN10MacDisplay19CreateScreenContextEihiiihRh_470:
	mov eax, [ebp-0x20]
	lea ebx, [eax-0xc]
	cmp ebx, [0xd5cc01c]
	jnz _ZN10MacDisplay19CreateScreenContextEihiiihRh_40
_ZN10MacDisplay19CreateScreenContextEihiiihRh_20:
	call _ZN10MacDisplay15GetDeviceHandleEv
	mov edi, eax
	mov edx, [ebp+0x20]
	movzx eax, byte [edx]
	mov edx, [sDisplayDepth]
	mov [ebp-0x24], edi
	mov dword [ebp-0xa4], 0x4
	mov dword [ebp-0xa0], 0x5
	mov dword [ebp-0x9c], 0x48
	cmp byte [sInWindowMode], 0x0
	jnz _ZN10MacDisplay19CreateScreenContextEihiiihRh_50
	mov dword [ebp-0x98], 0x36
	mov dword [ebp-0x94], 0x32
	mov [ebp-0x90], edx
	lea ecx, [ebp-0x8c]
_ZN10MacDisplay19CreateScreenContextEihiiihRh_310:
	mov edx, [ebp-0x24]
	test edx, edx
	jz _ZN10MacDisplay19CreateScreenContextEihiiihRh_60
	mov dword [ecx], 0x49
	add ecx, 0x4
_ZN10MacDisplay19CreateScreenContextEihiiihRh_60:
	mov dword [ecx], 0xc
	mov [ecx+0x4], esi
	lea edx, [ecx+0x8]
	mov ebx, [ebp-0xb8]
	test ebx, ebx
	jle _ZN10MacDisplay19CreateScreenContextEihiiihRh_70
	mov dword [ecx+0x8], 0xd
	mov edx, [ebp-0xb8]
	mov [ecx+0xc], edx
	lea edx, [ecx+0x10]
_ZN10MacDisplay19CreateScreenContextEihiiihRh_70:
	test al, al
	jz _ZN10MacDisplay19CreateScreenContextEihiiihRh_80
	mov dword [edx], 0x7
	mov dword [edx+0x4], 0x2
	mov dword [edx+0x8], 0x39
	add edx, 0xc
_ZN10MacDisplay19CreateScreenContextEihiiihRh_80:
	cmp dword [ebp+0x10], 0x1
	jle _ZN10MacDisplay19CreateScreenContextEihiiihRh_90
	mov dword [edx], 0x37
	mov dword [edx+0x4], 0x1
	mov dword [edx+0x8], 0x38
	mov ecx, [ebp+0x10]
	mov [edx+0xc], ecx
	add edx, 0x10
_ZN10MacDisplay19CreateScreenContextEihiiihRh_90:
	mov dword [edx], 0x0
	mov eax, [ebp-0x24]
	test eax, eax
	jz _ZN10MacDisplay19CreateScreenContextEihiiihRh_100
	lea eax, [ebp-0xa4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	lea eax, [ebp-0x24]
	mov [esp], eax
	call aglChoosePixelFormat
	mov ebx, eax
_ZN10MacDisplay19CreateScreenContextEihiiihRh_640:
	test ebx, ebx
	jz _ZN10MacDisplay19CreateScreenContextEihiiihRh_110
_ZN10MacDisplay19CreateScreenContextEihiiihRh_440:
	mov dword [esp+0x4], 0x0
	mov [esp], ebx
	call aglCreateContext
	mov [sScreenContext], eax
	mov [sScreenContext+0xc], ebx
	mov byte [sScreenContext+0x10], 0x0
	test eax, eax
	jz _ZN10MacDisplay19CreateScreenContextEihiiihRh_120
	cmp byte [sInWindowMode], 0x0
	jnz _ZN10MacDisplay19CreateScreenContextEihiiihRh_130
	call HideMenuBar
	mov eax, [sMainWindow]
	test eax, eax
	jz _ZN10MacDisplay19CreateScreenContextEihiiihRh_140
	lea edx, [ebp-0xa4]
	mov [esp+0x4], edx
	mov [esp], eax
	call GetWindowPortBounds
	movsx esi, word [ebp-0x9e]
	cmp esi, 0x27f
	mov eax, 0x280
	cmovle esi, eax
	movsx ecx, word [ebp-0xa0]
	mov [ebp-0xb4], ecx
	cmp ecx, 0x1df
	jg _ZN10MacDisplay19CreateScreenContextEihiiihRh_150
	mov dword [ebp-0xb4], 0x1e0
_ZN10MacDisplay19CreateScreenContextEihiiihRh_150:
	mov eax, [sDisplayDepth]
	test eax, eax
	jz _ZN10MacDisplay19CreateScreenContextEihiiihRh_160
	mov eax, [sDisplayDepth]
_ZN10MacDisplay19CreateScreenContextEihiiihRh_670:
	mov [ebp-0xb0], eax
	mov eax, [sDisplayRefreshRate]
	test eax, eax
	jz _ZN10MacDisplay19CreateScreenContextEihiiihRh_170
_ZN10MacDisplay19CreateScreenContextEihiiihRh_650:
	mov edx, [sDisplayRefreshRate]
_ZN10MacDisplay19CreateScreenContextEihiiihRh_660:
	mov [ebp-0xac], edx
	mov [sScreenContext+0x14], edx
	mov eax, [sDisplayID]
	mov [esp+0x4], eax
	mov [esp], edx
	mov ecx, [ebp-0xb4]
	mov edx, esi
	mov eax, [sScreenContext]
	call _Z22PseudoAGLSetFullscreenP15__AGLContextReclllP18_CGDirectDisplayID
	test al, al
	jnz _ZN10MacDisplay19CreateScreenContextEihiiihRh_180
	mov eax, [sDisplayID]
	mov [esp], eax
	call CGDisplayCurrentMode
	test eax, eax
	jz _ZN10MacDisplay19CreateScreenContextEihiiihRh_190
	mov dword [esp+0x4], _cfstring_refreshrate
	mov [esp], eax
	call _ZN8MacTools18GetDictionaryValueEPK14__CFDictionaryPK10__CFString
	mov edi, eax
	cmp eax, 0xffffffff
	jz _ZN10MacDisplay19CreateScreenContextEihiiihRh_190
_ZN10MacDisplay19CreateScreenContextEihiiihRh_630:
	mov edx, [sDisplayIndex]
	lea eax, [edx+edx*2]
	lea eax, [edx+eax*4]
	shl eax, 0x3
	add eax, [sDisplayList]
	lea edx, [eax+0x14]
	mov eax, [eax+0x14]
	cmp [edx+0x4], eax
	jz _ZN10MacDisplay19CreateScreenContextEihiiihRh_200
	mov dword [ebp-0xcc], 0x0
	jmp _ZN10MacDisplay19CreateScreenContextEihiiihRh_210
_ZN10MacDisplay19CreateScreenContextEihiiihRh_230:
	add eax, 0x10
	cmp [edx+0x4], eax
	jz _ZN10MacDisplay19CreateScreenContextEihiiihRh_220
_ZN10MacDisplay19CreateScreenContextEihiiihRh_210:
	cmp [eax], esi
	jnz _ZN10MacDisplay19CreateScreenContextEihiiihRh_230
	mov ecx, [ebp-0xb4]
	cmp [eax+0x4], ecx
	jnz _ZN10MacDisplay19CreateScreenContextEihiiihRh_230
	mov ecx, [ebp-0xb0]
	cmp ecx, [eax+0x8]
	jnz _ZN10MacDisplay19CreateScreenContextEihiiihRh_230
	mov ecx, [eax+0xc]
	mov [ebp-0xbc], ecx
	cmp edi, ecx
	jz _ZN10MacDisplay19CreateScreenContextEihiiihRh_240
	cmp dword [ebp-0xbc], 0x63
	jle _ZN10MacDisplay19CreateScreenContextEihiiihRh_250
	mov ecx, [ebp-0xbc]
	cmp [ebp-0xcc], ecx
	jle _ZN10MacDisplay19CreateScreenContextEihiiihRh_230
_ZN10MacDisplay19CreateScreenContextEihiiihRh_860:
	mov [ebp-0xcc], ecx
	jmp _ZN10MacDisplay19CreateScreenContextEihiiihRh_230
_ZN10MacDisplay19CreateScreenContextEihiiihRh_240:
	cmp edi, 0x63
	jg _ZN10MacDisplay19CreateScreenContextEihiiihRh_230
	mov [ebp-0xcc], edi
_ZN10MacDisplay19CreateScreenContextEihiiihRh_220:
	mov eax, [ebp-0xcc]
	test eax, eax
	cmovnz edi, [ebp-0xcc]
_ZN10MacDisplay19CreateScreenContextEihiiihRh_200:
	cmp edi, [ebp-0xac]
	jz _ZN10MacDisplay19CreateScreenContextEihiiihRh_260
	mov [sScreenContext+0x14], edi
	mov eax, [sDisplayID]
	mov [esp+0x4], eax
	mov [esp], edi
	mov ecx, [ebp-0xb4]
	mov edx, esi
	mov eax, [sScreenContext]
	call _Z22PseudoAGLSetFullscreenP15__AGLContextReclllP18_CGDirectDisplayID
	test al, al
	mov eax, [sDisplayRefreshRate]
	cmovnz eax, edi
	mov [sDisplayRefreshRate], eax
_ZN10MacDisplay19CreateScreenContextEihiiihRh_260:
	mov dword [sScreenContext+0x14], 0x0
	mov eax, [sDisplayID]
	mov [esp+0x4], eax
	mov dword [esp], 0x0
	mov ecx, [ebp-0xb4]
	mov edx, esi
	mov eax, [sScreenContext]
	call _Z22PseudoAGLSetFullscreenP15__AGLContextReclllP18_CGDirectDisplayID
	test al, al
	jz _ZN10MacDisplay19CreateScreenContextEihiiihRh_120
_ZN10MacDisplay19CreateScreenContextEihiiihRh_180:
	xor eax, eax
	cmp dword [ebp+0x18], 0x80000000
	setnz al
	mov [ebp-0x24], eax
	lea eax, [ebp-0x24]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0xde
	mov eax, [sScreenContext]
	mov [esp], eax
	call aglSetInteger
	cmp byte [sInWindowMode], 0x0
	jz _ZN10MacDisplay19CreateScreenContextEihiiihRh_270
_ZN10MacDisplay19CreateScreenContextEihiiihRh_130:
	mov eax, [sMainWindow]
	mov [esp], eax
	call GetWindowPort
	mov [sScreenContext+0x4], eax
_ZN10MacDisplay19CreateScreenContextEihiiihRh_460:
	mov dword [esp+0x8], sScreenContext+0x8
	mov dword [esp+0x4], 0x46
	mov [esp], ebx
	call aglDescribePixelFormat
	cmp byte [sInWindowMode], 0x0
	jnz _ZN10MacDisplay19CreateScreenContextEihiiihRh_280
_ZN10MacDisplay19CreateScreenContextEihiiihRh_340:
	mov eax, [sScreenContext]
	mov [esp], eax
	call aglSetCurrentContext
	cmp dword [ebp+0x10], 0x1
	jle _ZN10MacDisplay19CreateScreenContextEihiiihRh_290
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_enabling_multisa
	call _Z7dprintfPKcz
	mov dword [esp], 0x809d
	call glEnable
	mov edx, [sDisplayIndex]
	lea eax, [edx+edx*2]
	lea eax, [edx+eax*4]
	shl eax, 0x3
	add eax, [sDisplayList]
	mov eax, [eax+0x38]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_gl_nv_multisampl
	call gluCheckExtension
	test al, al
	jnz _ZN10MacDisplay19CreateScreenContextEihiiihRh_300
_ZN10MacDisplay19CreateScreenContextEihiiihRh_450:
	mov byte [sIsAntialiased], 0x1
	mov eax, sScreenContext
_ZN10MacDisplay19CreateScreenContextEihiiihRh_350:
	add esp, 0xdc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN10MacDisplay19CreateScreenContextEihiiihRh_50:
	lea ecx, [ebp-0x98]
	jmp _ZN10MacDisplay19CreateScreenContextEihiiihRh_310
_ZN10MacDisplay19CreateScreenContextEihiiihRh_10:
	cmp esi, 0x20
	jz _ZN10MacDisplay19CreateScreenContextEihiiihRh_320
	mov dword [ebp-0xb8], 0x8
	jmp _ZN10MacDisplay19CreateScreenContextEihiiihRh_330
_ZN10MacDisplay19CreateScreenContextEihiiihRh_280:
	mov eax, [sScreenContext+0x4]
	mov [esp+0x4], eax
	mov eax, [sScreenContext]
	mov [esp], eax
	call aglSetDrawable
	test al, al
	jnz _ZN10MacDisplay19CreateScreenContextEihiiihRh_340
_ZN10MacDisplay19CreateScreenContextEihiiihRh_120:
	mov dword [esp], sScreenContext
	call _ZN16OpaqueContextRef7ReleaseEv
	xor eax, eax
	jmp _ZN10MacDisplay19CreateScreenContextEihiiihRh_350
_ZN10MacDisplay19CreateScreenContextEihiiihRh_110:
	cmp esi, 0x20
	jz _ZN10MacDisplay19CreateScreenContextEihiiihRh_360
_ZN10MacDisplay19CreateScreenContextEihiiihRh_790:
	cmp dword [ebp+0x10], 0x1
	jle _ZN10MacDisplay19CreateScreenContextEihiiihRh_370
	mov dword [esp], _cstring_display_turn_off
	call _Z7dprintfPKcz
	mov ecx, [ebp+0x20]
	movzx eax, byte [ecx]
	mov edx, [sDisplayDepth]
	mov [ebp-0x24], edi
	mov dword [ebp-0xa4], 0x4
	mov dword [ebp-0xa0], 0x5
	mov dword [ebp-0x9c], 0x48
	cmp byte [sInWindowMode], 0x0
	jz _ZN10MacDisplay19CreateScreenContextEihiiihRh_380
	lea ecx, [ebp-0x98]
_ZN10MacDisplay19CreateScreenContextEihiiihRh_680:
	mov edx, [ebp-0x24]
	test edx, edx
	jz _ZN10MacDisplay19CreateScreenContextEihiiihRh_390
	mov dword [ecx], 0x49
	add ecx, 0x4
_ZN10MacDisplay19CreateScreenContextEihiiihRh_390:
	mov dword [ecx], 0xc
	mov [ecx+0x4], esi
	lea edx, [ecx+0x8]
	mov ebx, [ebp-0xb8]
	test ebx, ebx
	jle _ZN10MacDisplay19CreateScreenContextEihiiihRh_400
	mov dword [ecx+0x8], 0xd
	mov edx, [ebp-0xb8]
	mov [ecx+0xc], edx
	lea edx, [ecx+0x10]
_ZN10MacDisplay19CreateScreenContextEihiiihRh_400:
	test al, al
	jz _ZN10MacDisplay19CreateScreenContextEihiiihRh_410
	mov dword [edx], 0x7
	mov dword [edx+0x4], 0x2
	mov dword [edx+0x8], 0x39
	add edx, 0xc
_ZN10MacDisplay19CreateScreenContextEihiiihRh_410:
	mov dword [edx], 0x0
	mov eax, [ebp-0x24]
	test eax, eax
	jz _ZN10MacDisplay19CreateScreenContextEihiiihRh_420
	lea ecx, [ebp-0xa4]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x1
	lea eax, [ebp-0x24]
	mov [esp], eax
	call aglChoosePixelFormat
	mov ebx, eax
_ZN10MacDisplay19CreateScreenContextEihiiihRh_830:
	test ebx, ebx
	jz _ZN10MacDisplay19CreateScreenContextEihiiihRh_430
	mov dword [ebp+0x10], 0x0
	jmp _ZN10MacDisplay19CreateScreenContextEihiiihRh_440
_ZN10MacDisplay19CreateScreenContextEihiiihRh_300:
	mov dword [esp+0x4], 0x1101
	mov dword [esp], 0x8534
	call glHint
	jmp _ZN10MacDisplay19CreateScreenContextEihiiihRh_450
_ZN10MacDisplay19CreateScreenContextEihiiihRh_290:
	mov dword [esp], _cstring_multisampling_di
	call _Z7dprintfPKcz
	mov dword [esp], 0x809d
	call glDisable
	mov byte [sIsAntialiased], 0x0
	mov eax, sScreenContext
	add esp, 0xdc
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN10MacDisplay19CreateScreenContextEihiiihRh_270:
	mov eax, [sScreenContext]
	mov [esp], eax
	call aglGetDrawable
	mov [sScreenContext+0x4], eax
	jmp _ZN10MacDisplay19CreateScreenContextEihiiihRh_460
_ZN10MacDisplay19CreateScreenContextEihiiihRh_320:
	mov si, 0x18
	mov dword [ebp-0xb8], 0x8
	jmp _ZN10MacDisplay19CreateScreenContextEihiiihRh_330
_ZN10MacDisplay19CreateScreenContextEihiiihRh_30:
	mov dword [esp+0x4], _cstring_2600
	mov eax, [ebp-0x20]
	mov [esp], eax
	call strstr
	test eax, eax
	jz _ZN10MacDisplay19CreateScreenContextEihiiihRh_470
	cmp byte [sInWindowMode], 0x0
	jz _ZN10MacDisplay19CreateScreenContextEihiiihRh_480
	mov edx, [sMainWindow]
	test edx, edx
	jz _ZN10MacDisplay19CreateScreenContextEihiiihRh_490
	lea eax, [ebp-0xa4]
	mov [esp+0x4], eax
	mov [esp], edx
	call GetWindowPortBounds
	movsx ebx, word [ebp-0x9e]
	cmp ebx, 0x27f
	mov eax, 0x280
	cmovle ebx, eax
	movsx edi, word [ebp-0xa0]
	cmp edi, 0x1df
	jg _ZN10MacDisplay19CreateScreenContextEihiiihRh_500
	mov edi, 0x1e0
	jmp _ZN10MacDisplay19CreateScreenContextEihiiihRh_500
_ZN10MacDisplay19CreateScreenContextEihiiihRh_430:
	mov dword [ebp+0x10], 0x0
_ZN10MacDisplay19CreateScreenContextEihiiihRh_370:
	mov edx, [ebp+0x20]
	cmp byte [edx], 0x0
	jz _ZN10MacDisplay19CreateScreenContextEihiiihRh_510
	mov dword [esp], _cstring_display_disable_
	call _Z7dprintfPKcz
	mov ecx, [ebp+0x20]
	mov byte [ecx], 0x0
	mov eax, [sDisplayDepth]
	mov [ebp-0x24], edi
	mov dword [ebp-0xa4], 0x4
	mov dword [ebp-0xa0], 0x5
	mov dword [ebp-0x9c], 0x48
	cmp byte [sInWindowMode], 0x0
	jz _ZN10MacDisplay19CreateScreenContextEihiiihRh_520
	lea edx, [ebp-0x98]
_ZN10MacDisplay19CreateScreenContextEihiiihRh_810:
	mov ebx, [ebp-0x24]
	test ebx, ebx
	jz _ZN10MacDisplay19CreateScreenContextEihiiihRh_530
	mov dword [edx], 0x49
	add edx, 0x4
_ZN10MacDisplay19CreateScreenContextEihiiihRh_530:
	mov dword [edx], 0xc
	mov [edx+0x4], esi
	lea eax, [edx+0x8]
	mov ecx, [ebp-0xb8]
	test ecx, ecx
	jle _ZN10MacDisplay19CreateScreenContextEihiiihRh_540
	mov dword [edx+0x8], 0xd
	mov eax, [ebp-0xb8]
	mov [edx+0xc], eax
	lea eax, [edx+0x10]
_ZN10MacDisplay19CreateScreenContextEihiiihRh_540:
	cmp dword [ebp+0x10], 0x1
	jle _ZN10MacDisplay19CreateScreenContextEihiiihRh_550
	mov dword [eax], 0x37
	mov dword [eax+0x4], 0x1
	mov dword [eax+0x8], 0x38
	mov edx, [ebp+0x10]
	mov [eax+0xc], edx
	add eax, 0x10
_ZN10MacDisplay19CreateScreenContextEihiiihRh_550:
	mov dword [eax], 0x0
	mov eax, [ebp-0x24]
	test eax, eax
	jz _ZN10MacDisplay19CreateScreenContextEihiiihRh_560
	lea ecx, [ebp-0xa4]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x1
	lea eax, [ebp-0x24]
	mov [esp], eax
	call aglChoosePixelFormat
	mov ebx, eax
_ZN10MacDisplay19CreateScreenContextEihiiihRh_870:
	test ebx, ebx
	jnz _ZN10MacDisplay19CreateScreenContextEihiiihRh_440
_ZN10MacDisplay19CreateScreenContextEihiiihRh_510:
	mov dword [esp], _cstring_display_no_devic
	call _Z7dprintfPKcz
	mov edx, [ebp+0x20]
	movzx eax, byte [edx]
	mov edx, [sDisplayDepth]
	mov dword [ebp-0x24], 0x0
	mov dword [ebp-0xa4], 0x4
	mov dword [ebp-0xa0], 0x5
	mov dword [ebp-0x9c], 0x48
	cmp byte [sInWindowMode], 0x0
	jz _ZN10MacDisplay19CreateScreenContextEihiiihRh_570
	lea ecx, [ebp-0x98]
_ZN10MacDisplay19CreateScreenContextEihiiihRh_800:
	mov edi, [ebp-0x24]
	test edi, edi
	jz _ZN10MacDisplay19CreateScreenContextEihiiihRh_580
	mov dword [ecx], 0x49
	add ecx, 0x4
_ZN10MacDisplay19CreateScreenContextEihiiihRh_580:
	mov dword [ecx], 0xc
	mov [ecx+0x4], esi
	lea edx, [ecx+0x8]
	mov ebx, [ebp-0xb8]
	test ebx, ebx
	jle _ZN10MacDisplay19CreateScreenContextEihiiihRh_590
	mov dword [ecx+0x8], 0xd
	mov edx, [ebp-0xb8]
	mov [ecx+0xc], edx
	lea edx, [ecx+0x10]
_ZN10MacDisplay19CreateScreenContextEihiiihRh_590:
	test al, al
	jz _ZN10MacDisplay19CreateScreenContextEihiiihRh_600
	mov dword [edx], 0x7
	mov dword [edx+0x4], 0x2
	mov dword [edx+0x8], 0x39
	add edx, 0xc
_ZN10MacDisplay19CreateScreenContextEihiiihRh_600:
	cmp dword [ebp+0x10], 0x1
	jle _ZN10MacDisplay19CreateScreenContextEihiiihRh_610
	mov dword [edx], 0x37
	mov dword [edx+0x4], 0x1
	mov dword [edx+0x8], 0x38
	mov ecx, [ebp+0x10]
	mov [edx+0xc], ecx
	add edx, 0x10
_ZN10MacDisplay19CreateScreenContextEihiiihRh_610:
	mov dword [edx], 0x0
	mov eax, [ebp-0x24]
	test eax, eax
	jz _ZN10MacDisplay19CreateScreenContextEihiiihRh_620
	lea eax, [ebp-0xa4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	lea eax, [ebp-0x24]
	mov [esp], eax
	call aglChoosePixelFormat
	mov ebx, eax
_ZN10MacDisplay19CreateScreenContextEihiiihRh_850:
	test ebx, ebx
	jnz _ZN10MacDisplay19CreateScreenContextEihiiihRh_440
	mov dword [esp], _cstring_display_all_rend
	call _Z7dprintfPKcz
	mov dword [ebp-0xa4], 0x4
	mov dword [ebp-0xa0], 0x5
	mov dword [ebp-0x9c], 0x1
	mov dword [ebp-0x98], 0x0
	lea ecx, [ebp-0xa4]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	call aglChoosePixelFormat
	mov ebx, eax
	test eax, eax
	jnz _ZN10MacDisplay19CreateScreenContextEihiiihRh_440
	xor eax, eax
	jmp _ZN10MacDisplay19CreateScreenContextEihiiihRh_350
_ZN10MacDisplay19CreateScreenContextEihiiihRh_190:
	mov edi, 0x4b
	jmp _ZN10MacDisplay19CreateScreenContextEihiiihRh_630
_ZN10MacDisplay19CreateScreenContextEihiiihRh_100:
	lea edx, [ebp-0xa4]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	call aglChoosePixelFormat
	mov ebx, eax
	jmp _ZN10MacDisplay19CreateScreenContextEihiiihRh_640
_ZN10MacDisplay19CreateScreenContextEihiiihRh_170:
	mov eax, [sDisplayID]
	mov [esp], eax
	call CGDisplayCurrentMode
	test eax, eax
	jz _ZN10MacDisplay19CreateScreenContextEihiiihRh_650
	mov dword [esp+0x4], _cfstring_refreshrate
	mov [esp], eax
	call _ZN8MacTools18GetDictionaryValueEPK14__CFDictionaryPK10__CFString
	cmp eax, 0xffffffff
	cmovz eax, [sDisplayRefreshRate]
	mov [sDisplayRefreshRate], eax
	mov edx, eax
	jmp _ZN10MacDisplay19CreateScreenContextEihiiihRh_660
_ZN10MacDisplay19CreateScreenContextEihiiihRh_160:
	mov eax, [sDisplayID]
	mov [esp], eax
	call CGDisplayBitsPerPixel
	mov [sDisplayDepth], eax
	jmp _ZN10MacDisplay19CreateScreenContextEihiiihRh_670
_ZN10MacDisplay19CreateScreenContextEihiiihRh_380:
	mov dword [ebp-0x98], 0x36
	mov dword [ebp-0x94], 0x32
	mov [ebp-0x90], edx
	lea ecx, [ebp-0x8c]
	jmp _ZN10MacDisplay19CreateScreenContextEihiiihRh_680
_ZN10MacDisplay19CreateScreenContextEihiiihRh_140:
	mov eax, [sDisplayID]
	mov [esp], eax
	call CGDisplayPixelsWide
	mov esi, eax
	mov eax, [sDisplayID]
	mov [esp], eax
	call CGDisplayPixelsHigh
	mov [ebp-0xb4], eax
	jmp _ZN10MacDisplay19CreateScreenContextEihiiihRh_150
_ZN10MacDisplay19CreateScreenContextEihiiihRh_480:
	mov edx, [sMainWindow]
	test edx, edx
	jz _ZN10MacDisplay19CreateScreenContextEihiiihRh_690
	lea eax, [ebp-0xa4]
	mov [esp+0x4], eax
	mov [esp], edx
	call GetWindowPortBounds
	movsx ebx, word [ebp-0x9e]
	cmp ebx, 0x27f
	mov eax, 0x280
	cmovle ebx, eax
	movsx edi, word [ebp-0xa0]
	cmp edi, 0x1df
	jg _ZN10MacDisplay19CreateScreenContextEihiiihRh_700
	mov edi, 0x1e0
_ZN10MacDisplay19CreateScreenContextEihiiihRh_700:
	mov eax, [sDisplayDepth]
	test eax, eax
	jz _ZN10MacDisplay19CreateScreenContextEihiiihRh_710
_ZN10MacDisplay19CreateScreenContextEihiiihRh_840:
	mov ecx, [sDisplayRefreshRate]
	test ecx, ecx
	jz _ZN10MacDisplay19CreateScreenContextEihiiihRh_720
_ZN10MacDisplay19CreateScreenContextEihiiihRh_500:
	cmp ebx, 0x400
	jnz _ZN10MacDisplay19CreateScreenContextEihiiihRh_470
	cmp edi, 0x300
	jnz _ZN10MacDisplay19CreateScreenContextEihiiihRh_470
	mov dword [ebp+0x10], 0x0
	jmp _ZN10MacDisplay19CreateScreenContextEihiiihRh_470
_ZN10MacDisplay19CreateScreenContextEihiiihRh_360:
	mov dword [esp], _cstring_display_downgrad
	call _Z7dprintfPKcz
	mov ecx, [ebp+0x20]
	movzx eax, byte [ecx]
	mov edx, [sDisplayDepth]
	mov [ebp-0x24], edi
	mov dword [ebp-0xa4], 0x4
	mov dword [ebp-0xa0], 0x5
	mov dword [ebp-0x9c], 0x48
	cmp byte [sInWindowMode], 0x0
	jz _ZN10MacDisplay19CreateScreenContextEihiiihRh_730
	lea ecx, [ebp-0x98]
_ZN10MacDisplay19CreateScreenContextEihiiihRh_820:
	mov esi, [ebp-0x24]
	test esi, esi
	jz _ZN10MacDisplay19CreateScreenContextEihiiihRh_740
	mov dword [ecx], 0x49
	add ecx, 0x4
_ZN10MacDisplay19CreateScreenContextEihiiihRh_740:
	mov dword [ecx], 0xc
	mov dword [ecx+0x4], 0x10
	lea edx, [ecx+0x8]
	mov ebx, [ebp-0xb8]
	test ebx, ebx
	jle _ZN10MacDisplay19CreateScreenContextEihiiihRh_750
	mov dword [ecx+0x8], 0xd
	mov edx, [ebp-0xb8]
	mov [ecx+0xc], edx
	lea edx, [ecx+0x10]
_ZN10MacDisplay19CreateScreenContextEihiiihRh_750:
	test al, al
	jz _ZN10MacDisplay19CreateScreenContextEihiiihRh_760
	mov dword [edx], 0x7
	mov dword [edx+0x4], 0x2
	mov dword [edx+0x8], 0x39
	add edx, 0xc
_ZN10MacDisplay19CreateScreenContextEihiiihRh_760:
	cmp dword [ebp+0x10], 0x1
	jle _ZN10MacDisplay19CreateScreenContextEihiiihRh_770
	mov dword [edx], 0x37
	mov dword [edx+0x4], 0x1
	mov dword [edx+0x8], 0x38
	mov ecx, [ebp+0x10]
	mov [edx+0xc], ecx
	add edx, 0x10
_ZN10MacDisplay19CreateScreenContextEihiiihRh_770:
	mov dword [edx], 0x0
	mov ecx, [ebp-0x24]
	test ecx, ecx
	jz _ZN10MacDisplay19CreateScreenContextEihiiihRh_780
	lea eax, [ebp-0xa4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x1
	lea eax, [ebp-0x24]
	mov [esp], eax
	call aglChoosePixelFormat
	mov ebx, eax
_ZN10MacDisplay19CreateScreenContextEihiiihRh_880:
	test ebx, ebx
	jnz _ZN10MacDisplay19CreateScreenContextEihiiihRh_440
	mov esi, 0x10
	jmp _ZN10MacDisplay19CreateScreenContextEihiiihRh_790
_ZN10MacDisplay19CreateScreenContextEihiiihRh_570:
	mov dword [ebp-0x98], 0x36
	mov dword [ebp-0x94], 0x32
	mov [ebp-0x90], edx
	lea ecx, [ebp-0x8c]
	jmp _ZN10MacDisplay19CreateScreenContextEihiiihRh_800
_ZN10MacDisplay19CreateScreenContextEihiiihRh_520:
	mov dword [ebp-0x98], 0x36
	mov dword [ebp-0x94], 0x32
	mov [ebp-0x90], eax
	lea edx, [ebp-0x8c]
	jmp _ZN10MacDisplay19CreateScreenContextEihiiihRh_810
_ZN10MacDisplay19CreateScreenContextEihiiihRh_730:
	mov dword [ebp-0x98], 0x36
	mov dword [ebp-0x94], 0x32
	mov [ebp-0x90], edx
	lea ecx, [ebp-0x8c]
	jmp _ZN10MacDisplay19CreateScreenContextEihiiihRh_820
_ZN10MacDisplay19CreateScreenContextEihiiihRh_690:
	mov eax, [sDisplayID]
	mov [esp], eax
	call CGDisplayPixelsWide
	mov ebx, eax
	mov eax, [sDisplayID]
	mov [esp], eax
	call CGDisplayPixelsHigh
	mov edi, eax
	jmp _ZN10MacDisplay19CreateScreenContextEihiiihRh_700
_ZN10MacDisplay19CreateScreenContextEihiiihRh_490:
	mov eax, [sDisplayID]
	mov [esp], eax
	call CGDisplayPixelsWide
	mov ebx, eax
	mov eax, [sDisplayID]
	mov [esp], eax
	call CGDisplayPixelsHigh
	mov edi, eax
	jmp _ZN10MacDisplay19CreateScreenContextEihiiihRh_500
_ZN10MacDisplay19CreateScreenContextEihiiihRh_40:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZN10MacDisplay19CreateScreenContextEihiiihRh_20
	lea eax, [ebp-0x1a]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZN10MacDisplay19CreateScreenContextEihiiihRh_20
_ZN10MacDisplay19CreateScreenContextEihiiihRh_420:
	lea eax, [ebp-0xa4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	call aglChoosePixelFormat
	mov ebx, eax
	jmp _ZN10MacDisplay19CreateScreenContextEihiiihRh_830
_ZN10MacDisplay19CreateScreenContextEihiiihRh_720:
	mov eax, [sDisplayID]
	mov [esp], eax
	call CGDisplayCurrentMode
	test eax, eax
	jz _ZN10MacDisplay19CreateScreenContextEihiiihRh_500
	mov dword [esp+0x4], _cfstring_refreshrate
	mov [esp], eax
	call _ZN8MacTools18GetDictionaryValueEPK14__CFDictionaryPK10__CFString
	cmp eax, 0xffffffff
	cmovz eax, [sDisplayRefreshRate]
	mov [sDisplayRefreshRate], eax
	jmp _ZN10MacDisplay19CreateScreenContextEihiiihRh_500
_ZN10MacDisplay19CreateScreenContextEihiiihRh_710:
	mov eax, [sDisplayID]
	mov [esp], eax
	call CGDisplayBitsPerPixel
	mov [sDisplayDepth], eax
	jmp _ZN10MacDisplay19CreateScreenContextEihiiihRh_840
_ZN10MacDisplay19CreateScreenContextEihiiihRh_620:
	lea edx, [ebp-0xa4]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	call aglChoosePixelFormat
	mov ebx, eax
	jmp _ZN10MacDisplay19CreateScreenContextEihiiihRh_850
_ZN10MacDisplay19CreateScreenContextEihiiihRh_250:
	cmp dword [ebp-0xcc], 0x63
	jg _ZN10MacDisplay19CreateScreenContextEihiiihRh_230
	mov ecx, [ebp-0xbc]
	cmp [ebp-0xcc], ecx
	cmovge ecx, [ebp-0xcc]
	jmp _ZN10MacDisplay19CreateScreenContextEihiiihRh_860
_ZN10MacDisplay19CreateScreenContextEihiiihRh_560:
	lea eax, [ebp-0xa4]
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	call aglChoosePixelFormat
	mov ebx, eax
	jmp _ZN10MacDisplay19CreateScreenContextEihiiihRh_870
_ZN10MacDisplay19CreateScreenContextEihiiihRh_780:
	lea edx, [ebp-0xa4]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x0
	mov dword [esp], 0x0
	call aglChoosePixelFormat
	mov ebx, eax
	jmp _ZN10MacDisplay19CreateScreenContextEihiiihRh_880
	mov ebx, eax
_ZN10MacDisplay19CreateScreenContextEihiiihRh_890:
	mov [esp], ebx
	call _Unwind_Resume
	mov [esp], eax
	call _Unwind_Resume
	mov ebx, eax
	mov eax, [ebp-0x20]
	lea esi, [eax-0xc]
	cmp esi, [0xd5cc01c]
	jz _ZN10MacDisplay19CreateScreenContextEihiiihRh_890
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZN10MacDisplay19CreateScreenContextEihiiihRh_890
	lea eax, [ebp-0x1a]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZN10MacDisplay19CreateScreenContextEihiiihRh_890


;MacDisplay::CreateSharedContext()
_ZN10MacDisplay19CreateSharedContextEv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov eax, [sScreenContext]
	mov [esp+0x4], eax
	mov eax, [sScreenContext+0xc]
	mov [esp], eax
	call aglCreateContext
	test eax, eax
	jz _ZN10MacDisplay19CreateSharedContextEv_10
	mov [sSharedContext], eax
	mov eax, [sScreenContext+0xc]
	mov [sSharedContext+0xc], eax
	mov byte [sSharedContext+0x10], 0x1
	mov eax, sSharedContext
_ZN10MacDisplay19CreateSharedContextEv_10:
	leave
	ret
	nop
	add [eax], al


;MacDisplay::UpdateScreenContext()
_ZN10MacDisplay19UpdateScreenContextEv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	cmp byte [sInWindowMode], 0x0
	jz _ZN10MacDisplay19UpdateScreenContextEv_10
	mov eax, [sScreenContext]
	test eax, eax
	jz _ZN10MacDisplay19UpdateScreenContextEv_10
	mov [esp], eax
	call aglUpdateContext
_ZN10MacDisplay19UpdateScreenContextEv_10:
	leave
	ret


;MacDisplay::GetCurrentDimensions(int&, int&)
_ZN10MacDisplay20GetCurrentDimensionsERiS0_:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0xc]
	mov edx, [sMainWindow]
	test edx, edx
	jz _ZN10MacDisplay20GetCurrentDimensionsERiS0__10
	lea eax, [ebp-0x10]
	mov [esp+0x4], eax
	mov [esp], edx
	call GetWindowPortBounds
	movsx edx, word [ebp-0xa]
	mov eax, 0x280
	cmp edx, 0x27f
	cmovg eax, edx
	mov edx, [ebp+0x8]
	mov [edx], eax
	movsx eax, word [ebp-0xc]
	mov [ebx], eax
	cmp eax, 0x1df
	jg _ZN10MacDisplay20GetCurrentDimensionsERiS0__20
	mov dword [ebx], 0x1e0
_ZN10MacDisplay20GetCurrentDimensionsERiS0__20:
	add esp, 0x24
	pop ebx
	pop ebp
	ret
_ZN10MacDisplay20GetCurrentDimensionsERiS0__10:
	mov eax, [sDisplayID]
	mov [esp], eax
	call CGDisplayPixelsWide
	mov edx, [ebp+0x8]
	mov [edx], eax
	mov eax, [sDisplayID]
	mov [esp], eax
	call CGDisplayPixelsHigh
	mov [ebx], eax
	add esp, 0x24
	pop ebx
	pop ebp
	ret


;MacDisplay::IsGLExtensionSupported(char const*)
_ZN10MacDisplay22IsGLExtensionSupportedEPKc:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	mov edx, [sDisplayIndex]
	lea eax, [edx+edx*2]
	lea eax, [edx+eax*4]
	shl eax, 0x3
	add eax, [sDisplayList]
	mov eax, [eax+0x38]
	mov [esp+0x4], eax
	mov eax, [ebp+0x8]
	mov [esp], eax
	call gluCheckExtension
	movzx eax, al
	leave
	ret


;MacDisplay::GetMaxTextureImageUnits()
_ZN10MacDisplay23GetMaxTextureImageUnitsEv:
	push ebp
	mov ebp, esp
	mov eax, [sDisplayIndex]
	lea edx, [eax+eax*2]
	lea edx, [eax+edx*4]
	shl edx, 0x3
	add edx, [sDisplayList]
	mov eax, [edx+0x48]
	pop ebp
	ret


;MacDisplay::GetPCPixelShaderVersion()
_ZN10MacDisplay23GetPCPixelShaderVersionEv:
	push ebp
	mov ebp, esp
	mov eax, [sDisplayIndex]
	lea edx, [eax+eax*2]
	lea edx, [eax+edx*4]
	shl edx, 0x3
	add edx, [sDisplayList]
	mov eax, [edx+0x4c]
	pop ebp
	ret


;MacDisplay::GetMaxSupportedAnisotropy()
_ZN10MacDisplay25GetMaxSupportedAnisotropyEv:
	push ebp
	mov ebp, esp
	mov eax, [sDisplayIndex]
	lea edx, [eax+eax*2]
	lea edx, [eax+edx*4]
	shl edx, 0x3
	add edx, [sDisplayList]
	mov eax, [edx+0x54]
	pop ebp
	ret


;MacDisplay::GetSupportsSeparateBlendFunc()
_ZN10MacDisplay28GetSupportsSeparateBlendFuncEv:
	push ebp
	mov ebp, esp
	mov eax, [sDisplayIndex]
	lea edx, [eax+eax*2]
	lea edx, [eax+edx*4]
	shl edx, 0x3
	add edx, [sDisplayList]
	movzx eax, byte [edx+0x51]
	pop ebp
	ret
	nop


;MacDisplay::GetAntiAliasingMultiSampleInfo(int&, int&, unsigned char&, unsigned char&, unsigned char&)
_ZN10MacDisplay30GetAntiAliasingMultiSampleInfoERiS0_RhS1_S1_:
	push ebp
	mov ebp, esp
	mov eax, [sDisplayIndex]
	lea edx, [eax+eax*2]
	lea edx, [eax+edx*4]
	shl edx, 0x3
	add edx, [sDisplayList]
	mov ecx, [edx+0x58]
	mov eax, [ebp+0x8]
	mov [eax], ecx
	mov ecx, [edx+0x5c]
	mov eax, [ebp+0xc]
	mov [eax], ecx
	movzx ecx, byte [edx+0x60]
	mov eax, [ebp+0x10]
	mov [eax], cl
	movzx ecx, byte [edx+0x61]
	mov eax, [ebp+0x14]
	mov [eax], cl
	movzx edx, byte [edx+0x62]
	mov eax, [ebp+0x18]
	mov [eax], dl
	pop ebp
	ret


;MacDisplay::GetNeedsExplicitDepthComponent()
_ZN10MacDisplay30GetNeedsExplicitDepthComponentEv:
	push ebp
	mov ebp, esp
	mov eax, [sDisplayIndex]
	lea edx, [eax+eax*2]
	lea edx, [eax+edx*4]
	shl edx, 0x3
	add edx, [sDisplayList]
	movzx eax, byte [edx+0x65]
	pop ebp
	ret
	nop


;MacDisplay::GetSupportsAnisotropicFiltering()
_ZN10MacDisplay31GetSupportsAnisotropicFilteringEv:
	push ebp
	mov ebp, esp
	mov eax, [sDisplayIndex]
	lea edx, [eax+eax*2]
	lea edx, [eax+edx*4]
	shl edx, 0x3
	add edx, [sDisplayList]
	movzx eax, byte [edx+0x52]
	pop ebp
	ret
	nop


;MacDisplay::FadeIn(float)
_ZN10MacDisplay6FadeInEf:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	cmp byte [sInWindowMode], 0x0
	jnz _ZN10MacDisplay6FadeInEf_10
	mov edx, [sFadeToken]
	test edx, edx
	jnz _ZN10MacDisplay6FadeInEf_20
_ZN10MacDisplay6FadeInEf_10:
	leave
	ret
_ZN10MacDisplay6FadeInEf_20:
	mov dword [esp+0x1c], 0x0
	xor eax, eax
	mov [esp+0x18], eax
	mov [esp+0x14], eax
	mov [esp+0x10], eax
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x3f800000
	movss xmm0, dword [ebp+0x8]
	movss [esp+0x4], xmm0
	mov [esp], edx
	call CGDisplayFade
	mov eax, [sFadeToken]
	mov [esp], eax
	call CGReleaseDisplayFadeReservation
	mov dword [sFadeToken], 0x0
	leave
	ret
	nop


;MacDisplay::Resume()
_ZN10MacDisplay6ResumeEv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x34
	cmp byte [sIsSuspended], 0x0
	jz _ZN10MacDisplay6ResumeEv_10
	cmp byte [sInWindowMode], 0x0
	jnz _ZN10MacDisplay6ResumeEv_10
	mov eax, [sScreenContext]
	test eax, eax
	jz _ZN10MacDisplay6ResumeEv_10
	mov edx, [sMainWindow]
	test edx, edx
	jz _ZN10MacDisplay6ResumeEv_20
	lea eax, [ebp-0x10]
	mov [esp+0x4], eax
	mov [esp], edx
	call GetWindowPortBounds
	movsx ebx, word [ebp-0xa]
	cmp ebx, 0x27f
	mov eax, 0x280
	cmovle ebx, eax
	movsx ecx, word [ebp-0xc]
	cmp ecx, 0x1df
	jg _ZN10MacDisplay6ResumeEv_30
	mov ecx, 0x1e0
_ZN10MacDisplay6ResumeEv_30:
	mov eax, [sDisplayID]
	mov [esp+0x4], eax
	mov eax, [sScreenContext+0x14]
	mov [esp], eax
	mov edx, ebx
	mov eax, [sScreenContext]
	call _Z22PseudoAGLSetFullscreenP15__AGLContextReclllP18_CGDirectDisplayID
	call HideMenuBar
	cmp byte [sInWindowMode], 0x0
	jnz _ZN10MacDisplay6ResumeEv_40
	mov edx, [sCustomGammaRed]
	test edx, edx
	jz _ZN10MacDisplay6ResumeEv_40
	mov eax, [sCustomGammaBlue]
	mov [esp+0x10], eax
	mov eax, [sCustomGammaGreen]
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x100
	mov eax, [sDisplayID]
	mov [esp], eax
	call CGSetDisplayTransferByTable
_ZN10MacDisplay6ResumeEv_40:
	mov eax, [sScreenContext]
	mov [esp], eax
	call aglGetDrawable
	mov [sScreenContext+0x4], eax
	mov eax, [sScreenContext]
	mov [esp], eax
	call aglUpdateContext
	mov dword [esp], 0x4500
	call glClear
	mov byte [sIsSuspended], 0x0
	mov eax, 0x1
	add esp, 0x34
	pop ebx
	pop ebp
	ret
_ZN10MacDisplay6ResumeEv_10:
	xor eax, eax
	add esp, 0x34
	pop ebx
	pop ebp
	ret
_ZN10MacDisplay6ResumeEv_20:
	mov eax, [sDisplayID]
	mov [esp], eax
	call CGDisplayPixelsWide
	mov ebx, eax
	mov eax, [sDisplayID]
	mov [esp], eax
	call CGDisplayPixelsHigh
	mov ecx, eax
	jmp _ZN10MacDisplay6ResumeEv_30
	add [eax], al


;MacDisplay::FadeOut(float)
_ZN10MacDisplay7FadeOutEf:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	cmp byte [sInWindowMode], 0x0
	jnz _ZN10MacDisplay7FadeOutEf_10
	mov eax, [sFadeToken]
	test eax, eax
	jnz _ZN10MacDisplay7FadeOutEf_20
	mov dword [esp+0x4], sFadeToken
	mov dword [esp], 0x41700000
	call CGAcquireDisplayFadeReservation
	test eax, eax
	jz _ZN10MacDisplay7FadeOutEf_30
_ZN10MacDisplay7FadeOutEf_10:
	leave
	ret
_ZN10MacDisplay7FadeOutEf_30:
	mov dword [esp+0x1c], 0x1
	xor eax, eax
	mov [esp+0x18], eax
	mov [esp+0x14], eax
	mov [esp+0x10], eax
	mov dword [esp+0xc], 0x3f800000
	mov [esp+0x8], eax
	movss xmm0, dword [ebp+0x8]
	movss [esp+0x4], xmm0
	mov eax, [sFadeToken]
	mov [esp], eax
	call CGDisplayFade
	leave
	ret
_ZN10MacDisplay7FadeOutEf_20:
	mov [esp], eax
	call CGReleaseDisplayFadeReservation
	mov dword [sFadeToken], 0x0
	mov dword [esp+0x4], sFadeToken
	mov dword [esp], 0x41700000
	call CGAcquireDisplayFadeReservation
	test eax, eax
	jnz _ZN10MacDisplay7FadeOutEf_10
	jmp _ZN10MacDisplay7FadeOutEf_30


;MacDisplay::SetMode(unsigned char, int, int, int, int)
_ZN10MacDisplay7SetModeEhiiii:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov edi, [ebp+0xc]
	mov eax, [sMainWindow]
	mov [esp], eax
	call IsWindowVisible
	mov esi, eax
	test al, al
	jz _ZN10MacDisplay7SetModeEhiiii_10
	mov edx, [sMainWindow]
	test edx, edx
	jz _ZN10MacDisplay7SetModeEhiiii_20
	lea eax, [ebp-0x28]
	mov [esp+0x4], eax
	mov [esp], edx
	call GetWindowPortBounds
	movsx ebx, word [ebp-0x22]
	cmp ebx, 0x27f
	mov eax, 0x280
	cmovle ebx, eax
	movsx eax, word [ebp-0x24]
	cmp eax, 0x1df
	jle _ZN10MacDisplay7SetModeEhiiii_30
	cmp edi, ebx
	jz _ZN10MacDisplay7SetModeEhiiii_40
_ZN10MacDisplay7SetModeEhiiii_70:
	mov eax, [sMainWindow]
	mov [esp], eax
	call HideWindow
_ZN10MacDisplay7SetModeEhiiii_10:
	mov dword [esp+0xc], 0x0
	movsx eax, word [ebp+0x10]
	mov [esp+0x8], eax
	movsx eax, di
	mov [esp+0x4], eax
	mov eax, [sMainWindow]
	mov [esp], eax
	call SizeWindow
	mov eax, [ebp+0x14]
	mov [sDisplayDepth], eax
	mov eax, [ebp+0x18]
	mov [sDisplayRefreshRate], eax
	call _Z21CenterWindowOnDisplayv
	mov eax, [sMainWindow]
	mov [esp], eax
	call SetPortWindowPort
	mov dword [esp], 0x21
	call ForeColor
	lea ebx, [ebp-0x20]
	mov [esp+0x4], ebx
	mov eax, [sMainWindow]
	mov [esp], eax
	call GetWindowPortBounds
	mov [esp], ebx
	call PaintRect
	mov eax, esi
	test al, al
	jnz _ZN10MacDisplay7SetModeEhiiii_50
	cmp byte [sInWindowMode], 0x0
	jz _ZN10MacDisplay7SetModeEhiiii_60
_ZN10MacDisplay7SetModeEhiiii_50:
	mov eax, [sMainWindow]
	mov [esp], eax
	call ShowWindow
_ZN10MacDisplay7SetModeEhiiii_60:
	mov eax, 0x1
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN10MacDisplay7SetModeEhiiii_40:
	cmp [ebp+0x10], eax
	jnz _ZN10MacDisplay7SetModeEhiiii_70
	mov eax, [ebp+0x14]
	mov [sDisplayDepth], eax
	mov eax, [ebp+0x18]
	mov [sDisplayRefreshRate], eax
	jmp _ZN10MacDisplay7SetModeEhiiii_60
_ZN10MacDisplay7SetModeEhiiii_30:
	mov eax, 0x1e0
	cmp edi, ebx
	jnz _ZN10MacDisplay7SetModeEhiiii_70
	jmp _ZN10MacDisplay7SetModeEhiiii_40
_ZN10MacDisplay7SetModeEhiiii_20:
	mov eax, [sDisplayID]
	mov [esp], eax
	call CGDisplayPixelsWide
	mov ebx, eax
	mov eax, [sDisplayID]
	mov [esp], eax
	call CGDisplayPixelsHigh
	cmp edi, ebx
	jnz _ZN10MacDisplay7SetModeEhiiii_70
	jmp _ZN10MacDisplay7SetModeEhiiii_40
	nop


;MacDisplay::Suspend()
_ZN10MacDisplay7SuspendEv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x74
	cmp byte [sIsSuspended], 0x0
	jnz _ZN10MacDisplay7SuspendEv_10
	cmp byte [sInWindowMode], 0x0
	jz _ZN10MacDisplay7SuspendEv_20
_ZN10MacDisplay7SuspendEv_10:
	xor eax, eax
_ZN10MacDisplay7SuspendEv_90:
	add esp, 0x74
	pop ebx
	pop ebp
	ret
_ZN10MacDisplay7SuspendEv_20:
	mov eax, [sScreenContext]
	test eax, eax
	jz _ZN10MacDisplay7SuspendEv_10
	mov eax, [sMainWindow]
	mov [esp], eax
	call HideWindow
	call aglGetCurrentContext
	test eax, eax
	jz _ZN10MacDisplay7SuspendEv_30
	call glFinish
_ZN10MacDisplay7SuspendEv_30:
	mov dword [esp+0x4], 0x0
	mov eax, [sScreenContext]
	mov [esp], eax
	call aglSetDrawable
	mov eax, [sMainWindow]
	mov [esp], eax
	call GetWindowPort
	mov [esp+0x4], eax
	mov eax, [sScreenContext]
	mov [esp], eax
	call aglSetDrawable
	mov eax, [sFullscreenPort]
	test eax, eax
	jz _ZN10MacDisplay7SuspendEv_40
	mov dword [esp], 0x0
	call SetPort
	mov eax, [sFullscreenPort]
	mov [esp], eax
	call DisposePort
	mov dword [sFullscreenPort], 0x0
_ZN10MacDisplay7SuspendEv_40:
	mov eax, [sPreviousDisplayMode]
	test eax, eax
	jz _ZN10MacDisplay7SuspendEv_50
	mov [esp+0x4], eax
	mov eax, [sDisplayID]
	mov [esp], eax
	call CGDisplaySwitchToMode
_ZN10MacDisplay7SuspendEv_50:
	call CGReleaseAllDisplays
	mov byte [sIsSuspended], 0x1
	cmp byte [sInWindowMode], 0x0
	jnz _ZN10MacDisplay7SuspendEv_60
	mov edx, [sSystemGammaRed]
	test edx, edx
	jz _ZN10MacDisplay7SuspendEv_60
	mov eax, [sSystemGammaBlue]
	mov [esp+0x10], eax
	mov eax, [sSystemGammaGreen]
	mov [esp+0xc], eax
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x100
	mov eax, [sDisplayID]
	mov [esp], eax
	call CGSetDisplayTransferByTable
_ZN10MacDisplay7SuspendEv_60:
	call ShowMenuBar
	mov dword [ebp-0x10], 0x0
	mov dword [ebp-0xc], 0x0
	lea ebx, [ebp-0x10]
_ZN10MacDisplay7SuspendEv_80:
	mov [esp], ebx
	call GetNextProcess
	test ax, ax
	jnz _ZN10MacDisplay7SuspendEv_70
	mov dword [ebp-0x4c], 0x3c
	mov dword [ebp-0x48], 0x0
	mov dword [ebp-0x14], 0x0
	lea eax, [ebp-0x4c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call GetProcessInformation
	test ax, ax
	jnz _ZN10MacDisplay7SuspendEv_80
	cmp dword [ebp-0x3c], 0x464e4452
	jnz _ZN10MacDisplay7SuspendEv_80
	cmp dword [ebp-0x38], 0x4d414353
	jnz _ZN10MacDisplay7SuspendEv_80
	mov [esp], ebx
	call SetFrontProcess
	mov eax, 0x1
	jmp _ZN10MacDisplay7SuspendEv_90
_ZN10MacDisplay7SuspendEv_70:
	mov eax, 0x1
	add esp, 0x74
	pop ebx
	pop ebp
	ret
	nop


;MacDisplay::IsActive()
_ZN10MacDisplay8IsActiveEv:
	push ebp
	mov ebp, esp
	sub esp, 0x18
	cmp byte [sInWindowMode], 0x0
	jnz _ZN10MacDisplay8IsActiveEv_10
	mov eax, [sScreenContext]
	test eax, eax
	jz _ZN10MacDisplay8IsActiveEv_10
	xor eax, eax
	cmp byte [sIsSuspended], 0x0
	setz al
	leave
	ret
_ZN10MacDisplay8IsActiveEv_10:
	mov eax, [sMainWindow]
	mov [esp], eax
	call IsWindowHilited
	movzx eax, al
	leave
	ret


;CDisplayInfo::CDisplayInfo(_CGDirectDisplayID*)
_ZN12CDisplayInfoC1EP18_CGDirectDisplayID:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x48c
	mov ebx, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov [ebx], eax
	lea eax, [ebx+0x14]
	mov [ebp-0x484], eax
	mov dword [ebx+0x14], 0x0
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x0
	lea edx, [ebx+0x20]
	mov [ebp-0x480], edx
	mov eax, [0xd5cc01c]
	add eax, 0xc
	mov [ebx+0x20], eax
	mov dword [ebx+0x24], 0x0
	mov dword [ebx+0x28], 0x0
	mov dword [ebx+0x2c], 0x0
	lea edx, [ebx+0x30]
	mov [ebp-0x47c], edx
	mov [ebx+0x30], eax
	lea edx, [ebx+0x34]
	mov [ebp-0x478], edx
	mov [ebx+0x34], eax
	lea edx, [ebx+0x38]
	mov [ebp-0x474], edx
	mov [ebx+0x38], eax
	mov dword [ebx+0x3c], 0x4000000
	mov dword [ebx+0x40], 0x4000000
	mov dword [ebx+0x44], 0x1
	mov dword [ebx+0x4c], 0xffff0000
	mov byte [ebx+0x50], 0x1
	mov byte [ebx+0x51], 0x0
	mov byte [ebx+0x52], 0x0
	mov dword [ebx+0x54], 0x1
	mov byte [ebx+0x63], 0x0
	mov byte [ebx+0x64], 0x0
	mov byte [ebx+0x65], 0x0
	mov byte [ebx+0x66], 0x0
	lea edx, [ebp-0x458]
	mov eax, [ebx]
	mov [esp+0x4], eax
	mov [esp], edx
	call CGDisplayBounds
	sub esp, 0x4
	mov eax, [ebp-0x458]
	mov [ebx+0x4], eax
	mov eax, [ebp-0x454]
	mov [ebx+0x8], eax
	mov eax, [ebp-0x450]
	mov [ebx+0xc], eax
	mov eax, [ebp-0x44c]
	mov [ebx+0x10], eax
	mov eax, [ebx]
	mov [esp], eax
	call CGDisplayIDToOpenGLDisplayMask
	mov [ebp-0x470], eax
	cmp byte [ebx+0x50], 0x0
	jnz _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_10
_ZN12CDisplayInfoC1EP18_CGDirectDisplayID_80:
	lea esp, [ebp-0xc]
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZN12CDisplayInfoC1EP18_CGDirectDisplayID_10:
	mov byte [ebx+0x50], 0x0
	lea eax, [ebp-0x20]
	mov [esp+0x8], eax
	lea eax, [ebp-0x30]
	mov [esp+0x4], eax
	mov edx, [ebp-0x470]
	mov [esp], edx
	call CGLQueryRendererInfo
	test eax, eax
	jnz _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_20
	mov eax, [ebp-0x20]
	test eax, eax
	jle _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_30
	xor edi, edi
	lea esi, [ebp-0x24]
_ZN12CDisplayInfoC1EP18_CGDirectDisplayID_70:
	mov dword [ebp-0x24], 0x0
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0x78
	mov [esp+0x4], edi
	mov eax, [ebp-0x30]
	mov [esp], eax
	call CGLDescribeRenderer
	lea eax, [ebx+0x3c]
	mov edx, [ebp-0x24]
	cmp edx, [ebx+0x3c]
	cmovge eax, esi
	mov eax, [eax]
	mov [ebx+0x3c], eax
	mov [esp+0xc], esi
	mov dword [esp+0x8], 0x79
	mov [esp+0x4], edi
	mov eax, [ebp-0x30]
	mov [esp], eax
	call CGLDescribeRenderer
	lea eax, [ebx+0x40]
	mov edx, [ebp-0x24]
	cmp edx, [ebx+0x40]
	cmovge eax, esi
	mov eax, [eax]
	mov [ebx+0x40], eax
	lea eax, [ebx+0x58]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x6c
	mov [esp+0x4], edi
	mov eax, [ebp-0x30]
	mov [esp], eax
	call CGLDescribeRenderer
	lea eax, [ebx+0x5c]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x6d
	mov [esp+0x4], edi
	mov eax, [ebp-0x30]
	mov [esp], eax
	call CGLDescribeRenderer
	cmp dword [ebx+0x3c], 0x8000000
	jg _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_40
	cmp dword [ebx+0x5c], 0x2
	jle _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_40
	mov dword [ebx+0x5c], 0x2
_ZN12CDisplayInfoC1EP18_CGDirectDisplayID_40:
	cmp dword [ebx+0x5c], 0x1
	setg al
	mov [ebx+0x60], al
	mov byte [ebx+0x61], 0x0
	mov [ebx+0x62], al
	mov dword [ebp-0x28], 0x0
	lea eax, [ebp-0x28]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x36
	mov [esp+0x4], edi
	mov eax, [ebp-0x30]
	mov [esp], eax
	call CGLDescribeRenderer
	mov dword [ebp-0x3c], 0x0
	lea eax, [ebp-0x3c]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x49
	mov [esp+0x4], edi
	mov eax, [ebp-0x30]
	mov [esp], eax
	call CGLDescribeRenderer
	mov dword [ebp-0x38], 0x0
	lea eax, [ebp-0x38]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x69
	mov [esp+0x4], edi
	mov eax, [ebp-0x30]
	mov [esp], eax
	call CGLDescribeRenderer
	mov dword [ebp-0x34], 0x0
	lea eax, [ebp-0x34]
	mov [esp+0xc], eax
	mov dword [esp+0x8], 0x6a
	mov [esp+0x4], edi
	mov eax, [ebp-0x30]
	mov [esp], eax
	call CGLDescribeRenderer
	mov ecx, [ebp-0x28]
	test ecx, ecx
	jz _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_50
	mov edx, [ebp-0x3c]
	test edx, edx
	jz _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_50
	test byte [ebp-0x37], 0x8
	jz _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_50
	cmp byte [ebp-0x34], 0x0
	js _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_60
_ZN12CDisplayInfoC1EP18_CGDirectDisplayID_50:
	add edi, 0x1
	cmp edi, [ebp-0x20]
	jl _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_70
_ZN12CDisplayInfoC1EP18_CGDirectDisplayID_30:
	mov eax, [ebp-0x30]
	mov [esp], eax
	call CGLDestroyRendererInfo
_ZN12CDisplayInfoC1EP18_CGDirectDisplayID_20:
	cmp byte [ebx+0x50], 0x0
	jz _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_80
	mov byte [ebx+0x50], 0x0
	mov eax, [ebx]
	mov [esp], eax
	call CGDisplayAvailableModes
	mov esi, eax
	test eax, eax
	jz _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_90
	mov [esp], eax
	call CFArrayGetCount
	mov [ebp-0x46c], eax
	test eax, eax
	jg _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_100
_ZN12CDisplayInfoC1EP18_CGDirectDisplayID_380:
	mov edx, [ebp-0x484]
	mov edi, [edx+0x4]
	mov esi, [edx]
	cmp edi, esi
	jz _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_90
	mov eax, edi
	sub eax, esi
	sar eax, 0x4
	cmp eax, 0x1
	jz _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_110
	xor edx, edx
_ZN12CDisplayInfoC1EP18_CGDirectDisplayID_120:
	add edx, 0x1
	sar eax, 1
	cmp eax, 0x1
	jnz _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_120
	lea eax, [edx+edx]
_ZN12CDisplayInfoC1EP18_CGDirectDisplayID_470:
	mov [esp+0x8], eax
	mov [esp+0x4], edi
	mov [esp], esi
	call _ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0_
	mov [esp+0x4], edi
	mov [esp], esi
	call _ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8_
_ZN12CDisplayInfoC1EP18_CGDirectDisplayID_90:
	cmp byte [ebx+0x50], 0x0
	jz _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_80
	mov eax, [ebx]
	mov [esp], eax
	call CGDisplayIOServicePort
	mov edi, eax
	test eax, eax
	jnz _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_130
_ZN12CDisplayInfoC1EP18_CGDirectDisplayID_440:
	cmp byte [ebx+0x50], 0x0
	jz _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_80
	call CGLGetCurrentContext
	mov esi, eax
	mov dword [ebp-0x434], 0x0
	mov dword [ebp-0x43c], 0x54
	mov edx, [ebp-0x470]
	mov [ebp-0x438], edx
	mov dword [ebp-0x38], 0x0
	mov dword [ebp-0x3c], 0x0
	lea eax, [ebp-0x3c]
	mov [esp+0x8], eax
	lea eax, [ebp-0x38]
	mov [esp+0x4], eax
	lea eax, [ebp-0x43c]
	mov [esp], eax
	call CGLChoosePixelFormat
	mov eax, [ebp-0x38]
	test eax, eax
	jz _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_140
	mov dword [ebp-0x30], 0x0
	lea edx, [ebp-0x30]
	mov [esp+0x8], edx
	mov dword [esp+0x4], 0x0
	mov eax, [ebp-0x38]
	mov [esp], eax
	call CGLCreateContext
	mov eax, [ebp-0x38]
	mov [esp], eax
	call CGLDestroyPixelFormat
	mov eax, [ebp-0x30]
	test eax, eax
	jz _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_140
	mov [esp], eax
	call CGLSetCurrentContext
	mov dword [esp], 0x1f00
	call glGetString
	mov edx, eax
	test eax, eax
	jz _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_150
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, edx
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [esp+0x8], ecx
	mov [esp+0x4], edx
	mov eax, [ebp-0x47c]
	mov [esp], eax
	call _ZNSs6assignEPKcm
_ZN12CDisplayInfoC1EP18_CGDirectDisplayID_150:
	mov dword [esp], 0x1f01
	call glGetString
	mov edx, eax
	test eax, eax
	jz _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_160
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, edx
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [esp+0x8], ecx
	mov [esp+0x4], edx
	mov edx, [ebp-0x478]
	mov [esp], edx
	call _ZNSs6assignEPKcm
_ZN12CDisplayInfoC1EP18_CGDirectDisplayID_160:
	mov dword [esp], 0x1f03
	call glGetString
	mov edx, eax
	test eax, eax
	jz _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_170
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, edx
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [esp+0x8], ecx
	mov [esp+0x4], edx
	mov eax, [ebp-0x474]
	mov [esp], eax
	call _ZNSs6assignEPKcm
_ZN12CDisplayInfoC1EP18_CGDirectDisplayID_170:
	lea eax, [ebx+0x44]
	mov [esp+0x4], eax
	mov dword [esp], 0x84e2
	call glGetIntegerv
	mov dword [ebx+0x48], 0x0
	mov eax, [ebx+0x38]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_gl_arb_fragment_
	call gluCheckExtension
	test al, al
	jz _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_180
	call _ZN11MacFeatures16GetSystemVersionEv
	cmp ax, 0x102f
	jg _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_190
_ZN12CDisplayInfoC1EP18_CGDirectDisplayID_180:
	mov eax, [ebx+0x38]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_gl_ext_texture_f
	call gluCheckExtension
	movzx eax, al
	mov [ebx+0x52], al
	test eax, eax
	jnz _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_200
	mov dword [ebx+0x54], 0x1
_ZN12CDisplayInfoC1EP18_CGDirectDisplayID_480:
	mov eax, [ebp-0x30]
	mov [esp], eax
	call CGLDestroyContext
_ZN12CDisplayInfoC1EP18_CGDirectDisplayID_140:
	mov [esp], esi
	call CGLSetCurrentContext
	cmp byte [ebx+0x50], 0x0
	jz _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_80
	mov edx, [ebp-0x480]
	mov eax, [edx]
	mov eax, [eax-0xc]
	test eax, eax
	jz _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_210
_ZN12CDisplayInfoC1EP18_CGDirectDisplayID_290:
	lea eax, [ebp-0x1a]
	mov [esp+0x8], eax
	mov edx, [ebp-0x47c]
	mov eax, [edx]
	mov [esp+0x4], eax
	lea eax, [ebp-0x43c]
	mov [esp], eax
	call _ZNSsC1EPKcRKSaIcE
	lea eax, [ebp-0x19]
	mov [esp+0x8], eax
	mov edx, [ebp-0x478]
	mov eax, [edx]
	mov [esp+0x4], eax
	lea edi, [ebp-0x2c]
	mov [esp], edi
	call _ZNSsC1EPKcRKSaIcE
	mov eax, [ebp-0x43c]
	mov [esp], eax
	call _Z6strlwrPc
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call _Z6strlwrPc
	mov esi, [ebp-0x43c]
	mov dword [esp+0x4], _cstring_nvidia
	mov [esp], esi
	call strstr
	test eax, eax
	jz _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_220
	mov dword [ebx+0x2c], 0x2
_ZN12CDisplayInfoC1EP18_CGDirectDisplayID_510:
	mov eax, [ebx+0x38]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_gl_ext_framebuff
	call gluCheckExtension
	mov [ebx+0x63], al
	cmp dword [ebx+0x2c], 0x1
	jz _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_230
_ZN12CDisplayInfoC1EP18_CGDirectDisplayID_430:
	xor eax, eax
_ZN12CDisplayInfoC1EP18_CGDirectDisplayID_420:
	mov [ebx+0x65], al
	cmp dword [ebx+0x2c], 0x1
	jz _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_240
_ZN12CDisplayInfoC1EP18_CGDirectDisplayID_390:
	xor eax, eax
_ZN12CDisplayInfoC1EP18_CGDirectDisplayID_400:
	mov [ebx+0x66], al
	cmp byte [ebx+0x63], 0x0
	setnz byte [ebx+0x64]
	mov eax, [ebx+0x24]
	test eax, eax
	jz _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_250
_ZN12CDisplayInfoC1EP18_CGDirectDisplayID_320:
	mov eax, [ebx+0x38]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_gl_ext_blend_fun
	call gluCheckExtension
	mov [ebx+0x51], al
	mov eax, [ebx+0x2c]
	cmp eax, 0x2
	jz _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_260
	sub eax, 0x1
	jz _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_270
_ZN12CDisplayInfoC1EP18_CGDirectDisplayID_490:
	mov eax, [ebx+0x38]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_gl_arb_fragment_
	call gluCheckExtension
	test al, al
	jz _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_280
	call _ZN11MacFeatures16GetSystemVersionEv
	cmp ax, 0x102f
	jle _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_280
	mov dword [ebx+0x4c], 0xffff0300
_ZN12CDisplayInfoC1EP18_CGDirectDisplayID_280:
	mov [esp], edi
	call _ZNSsD1Ev
	lea eax, [ebp-0x43c]
	mov [esp], eax
	call _ZNSsD1Ev
	jmp _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_80
_ZN12CDisplayInfoC1EP18_CGDirectDisplayID_60:
	cmp dword [ebx+0x3c], 0x3ffffff
	jle _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_50
	mov byte [ebx+0x50], 0x1
	jmp _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_30
_ZN12CDisplayInfoC1EP18_CGDirectDisplayID_210:
	mov eax, [ebp-0x478]
	mov [esp+0x4], eax
	mov [esp], edx
	call _ZNSs6assignERKSs
	jmp _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_290
_ZN12CDisplayInfoC1EP18_CGDirectDisplayID_250:
	mov eax, [ebx+0x2c]
	cmp eax, 0x2
	jz _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_300
	cmp eax, 0x3
	jz _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_310
	mov dword [ebx+0x24], 0x1002
	mov dword [ebx+0x28], 0x5159
	jmp _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_320
_ZN12CDisplayInfoC1EP18_CGDirectDisplayID_100:
	mov dword [ebp-0x468], 0x0
	mov eax, [ebp-0x468]
_ZN12CDisplayInfoC1EP18_CGDirectDisplayID_370:
	mov [esp+0x4], eax
	mov [esp], esi
	call CFArrayGetValueAtIndex
	mov edi, eax
	test eax, eax
	jz _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_330
	mov dword [esp+0x4], _cfstring_width
	mov [esp], eax
	call _ZN8MacTools18GetDictionaryValueEPK14__CFDictionaryPK10__CFString
	mov [ebp-0x464], eax
	mov dword [esp+0x4], _cfstring_height
	mov [esp], edi
	call _ZN8MacTools18GetDictionaryValueEPK14__CFDictionaryPK10__CFString
	mov [ebp-0x460], eax
	mov dword [esp+0x4], _cfstring_bitsperpixel
	mov [esp], edi
	call _ZN8MacTools18GetDictionaryValueEPK14__CFDictionaryPK10__CFString
	mov [ebp-0x45c], eax
	mov dword [esp+0x4], _cfstring_refreshrate
	mov [esp], edi
	call _ZN8MacTools18GetDictionaryValueEPK14__CFDictionaryPK10__CFString
	mov edx, eax
	cmp eax, 0x0
	jl _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_330
	mov eax, 0x3c
	cmovz edx, eax
	cmp dword [ebp-0x464], 0x27f
	jle _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_330
	cmp dword [ebp-0x460], 0x1df
	jle _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_330
	cmp dword [ebp-0x45c], 0x1f
	jle _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_330
	cmp dword [ebx+0x3c], 0x4000000
	jg _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_340
	cmp dword [ebp-0x464], 0x400
	jg _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_330
_ZN12CDisplayInfoC1EP18_CGDirectDisplayID_340:
	mov byte [ebx+0x50], 0x1
	mov eax, [ebp-0x464]
	mov [ebp-0x43c], eax
	mov eax, [ebp-0x460]
	mov [ebp-0x438], eax
	mov eax, [ebp-0x45c]
	mov [ebp-0x434], eax
	mov [ebp-0x430], edx
	mov eax, [ebp-0x484]
	mov edx, [eax+0x4]
	cmp edx, [eax+0x8]
	jz _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_350
	test edx, edx
	jz _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_360
	mov eax, [ebp-0x464]
	mov [edx], eax
	mov eax, [ebp-0x438]
	mov [edx+0x4], eax
	mov eax, [ebp-0x434]
	mov [edx+0x8], eax
	mov eax, [ebp-0x430]
	mov [edx+0xc], eax
	mov eax, [ebp-0x484]
	mov edx, [eax+0x4]
_ZN12CDisplayInfoC1EP18_CGDirectDisplayID_520:
	add edx, 0x10
	mov [eax+0x4], edx
_ZN12CDisplayInfoC1EP18_CGDirectDisplayID_330:
	add dword [ebp-0x468], 0x1
	mov eax, [ebp-0x468]
	cmp [ebp-0x46c], eax
	jnz _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_370
	jmp _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_380
_ZN12CDisplayInfoC1EP18_CGDirectDisplayID_240:
	mov dword [esp+0x4], _cstring_x1900
	mov eax, [ebp-0x2c]
	mov [esp], eax
	call strstr
	test eax, eax
	jz _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_390
	mov eax, 0x1
	jmp _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_400
_ZN12CDisplayInfoC1EP18_CGDirectDisplayID_230:
	mov esi, [ebp-0x2c]
	mov dword [esp+0x4], _cstring_x1600
	mov [esp], esi
	call strstr
	test eax, eax
	jz _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_410
	mov eax, 0x1
	jmp _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_420
_ZN12CDisplayInfoC1EP18_CGDirectDisplayID_410:
	mov dword [esp+0x4], _cstring_x1900
	mov [esp], esi
	call strstr
	test eax, eax
	jz _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_430
	mov eax, 0x1
	jmp _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_420
_ZN12CDisplayInfoC1EP18_CGDirectDisplayID_130:
	mov dword [esp+0x4], _cstring_ioframebuffer
	mov [esp], eax
	call IOObjectConformsTo
	test eax, eax
	jz _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_440
	mov dword [ebp-0x34], 0x0
	lea esi, [ebp-0x34]
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_ioservice
	mov [esp], edi
	call IORegistryEntryGetParentEntry
	test eax, eax
	jnz _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_440
	mov dword [esp+0x4], _cstring_iopcidevice
	mov eax, [ebp-0x34]
	mov [esp], eax
	call IOObjectConformsTo
	test eax, eax
	jz _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_450
_ZN12CDisplayInfoC1EP18_CGDirectDisplayID_530:
	mov eax, [ebp-0x34]
	test eax, eax
	jz _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_440
	lea esi, [ebp-0x43c]
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cfstring_model
	mov [esp], eax
	call _ZN8MacTools18GetIORegistryValueEjPK10__CFStringPc
	test al, al
	jz _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_460
	cld
	mov ecx, 0xffffffff
	xor eax, eax
	mov edi, esi
	repne scasb
	not ecx
	sub ecx, 0x1
	mov [esp+0x8], ecx
	mov [esp+0x4], esi
	mov eax, [ebp-0x480]
	mov [esp], eax
	call _ZNSs6assignEPKcm
_ZN12CDisplayInfoC1EP18_CGDirectDisplayID_460:
	lea eax, [ebx+0x24]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cfstring_vendorid
	mov eax, [ebp-0x34]
	mov [esp], eax
	call _ZN8MacTools18GetIORegistryValueEjPK10__CFStringRm
	lea eax, [ebx+0x28]
	mov [esp+0x8], eax
	mov dword [esp+0x4], _cfstring_deviceid
	mov eax, [ebp-0x34]
	mov [esp], eax
	call _ZN8MacTools18GetIORegistryValueEjPK10__CFStringRm
	jmp _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_440
_ZN12CDisplayInfoC1EP18_CGDirectDisplayID_110:
	and eax, 0xffffff00
	jmp _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_470
_ZN12CDisplayInfoC1EP18_CGDirectDisplayID_200:
	lea eax, [ebp-0x34]
	mov [esp+0x4], eax
	mov dword [esp], 0x84ff
	call glGetIntegerv
	mov eax, [ebp-0x34]
	mov [ebx+0x54], eax
	jmp _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_480
_ZN12CDisplayInfoC1EP18_CGDirectDisplayID_260:
	mov eax, [ebx+0x38]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_gl_nv_texture_sh
	call gluCheckExtension
	test al, al
	jz _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_490
	mov eax, [ebx+0x38]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_gl_nv_register_c
	call gluCheckExtension
	test al, al
	jz _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_490
_ZN12CDisplayInfoC1EP18_CGDirectDisplayID_500:
	mov dword [ebx+0x4c], 0xffff0104
	jmp _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_490
_ZN12CDisplayInfoC1EP18_CGDirectDisplayID_300:
	mov dword [ebx+0x24], 0x10de
	mov dword [ebx+0x28], 0x110
	jmp _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_320
_ZN12CDisplayInfoC1EP18_CGDirectDisplayID_270:
	mov eax, [ebx+0x38]
	mov [esp+0x4], eax
	mov dword [esp], _cstring_gl_ati_text_frag
	call gluCheckExtension
	test al, al
	jz _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_490
	call _ZN11MacFeatures16GetSystemVersionEv
	cmp ax, 0x1027
	jle _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_490
	jmp _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_500
_ZN12CDisplayInfoC1EP18_CGDirectDisplayID_310:
	mov dword [ebx+0x24], 0x8086
	mov dword [ebx+0x28], 0x2582
	jmp _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_320
_ZN12CDisplayInfoC1EP18_CGDirectDisplayID_220:
	mov dword [esp+0x4], _cstring_intel
	mov [esp], esi
	call strstr
	cmp eax, 0x1
	sbb eax, eax
	and eax, 0xfffffffe
	add eax, 0x3
	mov [ebx+0x2c], eax
	jmp _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_510
_ZN12CDisplayInfoC1EP18_CGDirectDisplayID_190:
	lea eax, [ebx+0x48]
	mov [esp+0x4], eax
	mov dword [esp], 0x8872
	call glGetIntegerv
	jmp _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_180
_ZN12CDisplayInfoC1EP18_CGDirectDisplayID_360:
	mov eax, [ebp-0x484]
	jmp _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_520
_ZN12CDisplayInfoC1EP18_CGDirectDisplayID_350:
	lea eax, [ebp-0x43c]
	mov [esp+0x8], eax
	mov [esp+0x4], edx
	mov edx, [ebp-0x484]
	mov [esp], edx
	call _ZNSt6vectorI8CResInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0_
	jmp _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_330
_ZN12CDisplayInfoC1EP18_CGDirectDisplayID_450:
	mov dword [esp+0x4], _cstring_ioagpdevice
	mov eax, [ebp-0x34]
	mov [esp], eax
	call IOObjectConformsTo
	test eax, eax
	jnz _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_530
	mov dword [esp+0x4], _cstring_iondrvdevice
	mov eax, [ebp-0x34]
	mov [esp], eax
	call IOObjectConformsTo
	test eax, eax
	jz _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_440
	mov [esp+0x8], esi
	mov dword [esp+0x4], _cstring_iodevicetree
	mov eax, [ebp-0x34]
	mov [esp], eax
	call IORegistryEntryGetParentEntry
	test eax, eax
	jz _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_530
	jmp _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_440
	mov ebx, eax
_ZN12CDisplayInfoC1EP18_CGDirectDisplayID_570:
	mov eax, [ebp-0x474]
	mov [esp], eax
	call _ZNSsD1Ev
	mov edx, [ebp-0x478]
	mov [esp], edx
	call _ZNSsD1Ev
	mov eax, [ebp-0x47c]
	mov [esp], eax
	call _ZNSsD1Ev
	mov edx, [ebp-0x480]
	mov [esp], edx
	call _ZNSsD1Ev
	mov eax, [ebp-0x484]
	mov ecx, [eax+0x4]
	mov edx, [eax]
	mov eax, edx
	cmp ecx, edx
	jz _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_540
_ZN12CDisplayInfoC1EP18_CGDirectDisplayID_550:
	add eax, 0x10
	cmp ecx, eax
	jnz _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_550
_ZN12CDisplayInfoC1EP18_CGDirectDisplayID_540:
	test edx, edx
	jz _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_560
	mov [esp], edx
	call _ZdlPv
_ZN12CDisplayInfoC1EP18_CGDirectDisplayID_560:
	mov [esp], ebx
	call _Unwind_Resume
	mov ebx, eax
_ZN12CDisplayInfoC1EP18_CGDirectDisplayID_580:
	lea edx, [ebp-0x43c]
	mov [esp], edx
	call _ZNSsD1Ev
	jmp _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_570
	mov ebx, eax
	mov [esp], edi
	call _ZNSsD1Ev
	jmp _ZN12CDisplayInfoC1EP18_CGDirectDisplayID_580


;CDisplayInfo::CDisplayInfo(CDisplayInfo const&)
_ZN12CDisplayInfoC1ERKS_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	lea eax, [esi+0x14]
	mov [ebp-0x3c], eax
	mov dword [esi+0x14], 0x0
	mov dword [eax+0x4], 0x0
	mov dword [eax+0x8], 0x0
	lea edi, [esi+0x20]
	mov edx, [0xd5cc01c]
	mov [ebp-0x38], edx
	mov eax, edx
	add eax, 0xc
	mov [esi+0x20], eax
	lea edx, [esi+0x30]
	mov [ebp-0x34], edx
	mov [esi+0x30], eax
	lea edx, [esi+0x34]
	mov [ebp-0x30], edx
	mov [esi+0x34], eax
	lea edx, [esi+0x38]
	mov [ebp-0x2c], edx
	mov [esi+0x38], eax
	mov eax, [ebx]
	mov [esi], eax
	mov eax, [ebx+0x4]
	mov [esi+0x4], eax
	mov eax, [ebx+0x8]
	mov [esi+0x8], eax
	mov eax, [ebx+0xc]
	mov [esi+0xc], eax
	mov eax, [ebx+0x10]
	mov [esi+0x10], eax
	lea eax, [ebx+0x14]
	mov [esp+0x4], eax
	mov eax, [ebp-0x3c]
	mov [esp], eax
	call _ZNSt6vectorI8CResInfoSaIS0_EEaSERKS2_
	lea eax, [ebx+0x20]
	mov [esp+0x4], eax
	mov [esp], edi
	call _ZNSs6assignERKSs
	mov eax, [ebx+0x24]
	mov [esi+0x24], eax
	mov eax, [ebx+0x28]
	mov [esi+0x28], eax
	mov eax, [ebx+0x2c]
	mov [esi+0x2c], eax
	lea eax, [ebx+0x30]
	mov [esp+0x4], eax
	mov edx, [ebp-0x34]
	mov [esp], edx
	call _ZNSs6assignERKSs
	lea eax, [ebx+0x34]
	mov [esp+0x4], eax
	mov eax, [ebp-0x30]
	mov [esp], eax
	call _ZNSs6assignERKSs
	lea eax, [ebx+0x38]
	mov [esp+0x4], eax
	mov edx, [ebp-0x2c]
	mov [esp], edx
	call _ZNSs6assignERKSs
	mov eax, [ebx+0x3c]
	mov [esi+0x3c], eax
	mov eax, [ebx+0x40]
	mov [esi+0x40], eax
	mov eax, [ebx+0x44]
	mov [esi+0x44], eax
	mov eax, [ebx+0x48]
	mov [esi+0x48], eax
	mov eax, [ebx+0x4c]
	mov [esi+0x4c], eax
	movzx eax, byte [ebx+0x50]
	mov [esi+0x50], al
	movzx eax, byte [ebx+0x51]
	mov [esi+0x51], al
	movzx eax, byte [ebx+0x52]
	mov [esi+0x52], al
	mov eax, [ebx+0x54]
	mov [esi+0x54], eax
	mov eax, [ebx+0x58]
	mov [esi+0x58], eax
	mov eax, [ebx+0x5c]
	mov [esi+0x5c], eax
	movzx eax, byte [ebx+0x60]
	mov [esi+0x60], al
	movzx eax, byte [ebx+0x61]
	mov [esi+0x61], al
	movzx eax, byte [ebx+0x62]
	mov [esi+0x62], al
	movzx eax, byte [ebx+0x63]
	mov [esi+0x63], al
	movzx eax, byte [ebx+0x64]
	mov [esi+0x64], al
	movzx eax, byte [ebx+0x65]
	mov [esi+0x65], al
	movzx eax, byte [ebx+0x66]
	mov [esi+0x66], al
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	mov edi, eax
	mov eax, [esi+0x38]
	lea ebx, [eax-0xc]
	cmp [ebp-0x38], ebx
	jnz _ZN12CDisplayInfoC1ERKS__10
_ZN12CDisplayInfoC1ERKS__80:
	mov ebx, [esi+0x34]
	sub ebx, 0xc
	cmp [ebp-0x38], ebx
	jnz _ZN12CDisplayInfoC1ERKS__20
_ZN12CDisplayInfoC1ERKS__100:
	mov ebx, [esi+0x30]
	sub ebx, 0xc
	cmp [ebp-0x38], ebx
	jnz _ZN12CDisplayInfoC1ERKS__30
_ZN12CDisplayInfoC1ERKS__90:
	mov ebx, [esi+0x20]
	sub ebx, 0xc
	cmp [ebp-0x38], ebx
	jnz _ZN12CDisplayInfoC1ERKS__40
_ZN12CDisplayInfoC1ERKS__110:
	mov eax, [ebp-0x3c]
	mov edx, [eax+0x4]
	mov eax, [esi+0x14]
	cmp edx, eax
	jz _ZN12CDisplayInfoC1ERKS__50
_ZN12CDisplayInfoC1ERKS__60:
	add eax, 0x10
	cmp edx, eax
	jnz _ZN12CDisplayInfoC1ERKS__60
_ZN12CDisplayInfoC1ERKS__50:
	mov edx, [ebp-0x3c]
	mov eax, [edx]
	test eax, eax
	jz _ZN12CDisplayInfoC1ERKS__70
	mov [esp], eax
	call _ZdlPv
_ZN12CDisplayInfoC1ERKS__70:
	mov [esp], edi
	call _Unwind_Resume
_ZN12CDisplayInfoC1ERKS__10:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZN12CDisplayInfoC1ERKS__80
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZN12CDisplayInfoC1ERKS__80
_ZN12CDisplayInfoC1ERKS__30:
	lea eax, [ebx+0x8]
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZN12CDisplayInfoC1ERKS__90
	lea eax, [ebp-0x1a]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZN12CDisplayInfoC1ERKS__90
_ZN12CDisplayInfoC1ERKS__20:
	lea eax, [ebx+0x8]
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZN12CDisplayInfoC1ERKS__100
	lea eax, [ebp-0x1b]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZN12CDisplayInfoC1ERKS__100
	mov edi, eax
	jmp _ZN12CDisplayInfoC1ERKS__90
	mov edi, eax
	jmp _ZN12CDisplayInfoC1ERKS__100
_ZN12CDisplayInfoC1ERKS__40:
	lea eax, [ebx+0x8]
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZN12CDisplayInfoC1ERKS__110
	lea eax, [ebp-0x19]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZN12CDisplayInfoC1ERKS__110
	mov edi, eax
	jmp _ZN12CDisplayInfoC1ERKS__80
	mov edi, eax
	jmp _ZN12CDisplayInfoC1ERKS__110


;CDisplayInfo::operator=(CDisplayInfo const&)
_ZN12CDisplayInfoaSERKS_:
	push ebp
	mov ebp, esp
	push esi
	push ebx
	sub esp, 0x10
	mov esi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov eax, [ebx]
	mov [esi], eax
	mov eax, [ebx+0x4]
	mov [esi+0x4], eax
	mov eax, [ebx+0x8]
	mov [esi+0x8], eax
	mov eax, [ebx+0xc]
	mov [esi+0xc], eax
	mov eax, [ebx+0x10]
	mov [esi+0x10], eax
	lea eax, [ebx+0x14]
	mov [esp+0x4], eax
	lea eax, [esi+0x14]
	mov [esp], eax
	call _ZNSt6vectorI8CResInfoSaIS0_EEaSERKS2_
	lea eax, [ebx+0x20]
	mov [esp+0x4], eax
	lea eax, [esi+0x20]
	mov [esp], eax
	call _ZNSs6assignERKSs
	mov eax, [ebx+0x24]
	mov [esi+0x24], eax
	mov eax, [ebx+0x28]
	mov [esi+0x28], eax
	mov eax, [ebx+0x2c]
	mov [esi+0x2c], eax
	lea eax, [ebx+0x30]
	mov [esp+0x4], eax
	lea eax, [esi+0x30]
	mov [esp], eax
	call _ZNSs6assignERKSs
	lea eax, [ebx+0x34]
	mov [esp+0x4], eax
	lea eax, [esi+0x34]
	mov [esp], eax
	call _ZNSs6assignERKSs
	lea eax, [ebx+0x38]
	mov [esp+0x4], eax
	lea eax, [esi+0x38]
	mov [esp], eax
	call _ZNSs6assignERKSs
	mov eax, [ebx+0x3c]
	mov [esi+0x3c], eax
	mov eax, [ebx+0x40]
	mov [esi+0x40], eax
	mov eax, [ebx+0x44]
	mov [esi+0x44], eax
	mov eax, [ebx+0x48]
	mov [esi+0x48], eax
	mov eax, [ebx+0x4c]
	mov [esi+0x4c], eax
	movzx eax, byte [ebx+0x50]
	mov [esi+0x50], al
	movzx eax, byte [ebx+0x51]
	mov [esi+0x51], al
	movzx eax, byte [ebx+0x52]
	mov [esi+0x52], al
	mov eax, [ebx+0x54]
	mov [esi+0x54], eax
	mov eax, [ebx+0x58]
	mov [esi+0x58], eax
	mov eax, [ebx+0x5c]
	mov [esi+0x5c], eax
	movzx eax, byte [ebx+0x60]
	mov [esi+0x60], al
	movzx eax, byte [ebx+0x61]
	mov [esi+0x61], al
	movzx eax, byte [ebx+0x62]
	mov [esi+0x62], al
	movzx eax, byte [ebx+0x63]
	mov [esi+0x63], al
	movzx eax, byte [ebx+0x64]
	mov [esi+0x64], al
	movzx eax, byte [ebx+0x65]
	mov [esi+0x65], al
	movzx eax, byte [ebx+0x66]
	mov [esi+0x66], al
	mov eax, esi
	add esp, 0x10
	pop ebx
	pop esi
	pop ebp
	ret
	nop


;OpaqueContextRef::Release()
_ZN16OpaqueContextRef7ReleaseEv:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x14
	mov ebx, [ebp+0x8]
	mov edx, [ebx]
	test edx, edx
	jz _ZN16OpaqueContextRef7ReleaseEv_10
	call glFinish
	test byte [sSwapCount], 0x1
	jnz _ZN16OpaqueContextRef7ReleaseEv_20
_ZN16OpaqueContextRef7ReleaseEv_60:
	cmp byte [ebx+0x10], 0x0
	jz _ZN16OpaqueContextRef7ReleaseEv_30
_ZN16OpaqueContextRef7ReleaseEv_110:
	mov eax, [ebx]
	mov [esp], eax
	call aglDestroyContext
	mov dword [ebx], 0x0
_ZN16OpaqueContextRef7ReleaseEv_10:
	mov eax, [ebx+0xc]
	test eax, eax
	jz _ZN16OpaqueContextRef7ReleaseEv_40
	cmp byte [ebx+0x10], 0x0
	jz _ZN16OpaqueContextRef7ReleaseEv_50
_ZN16OpaqueContextRef7ReleaseEv_70:
	mov dword [ebx+0xc], 0x0
_ZN16OpaqueContextRef7ReleaseEv_40:
	add esp, 0x14
	pop ebx
	pop ebp
	ret
_ZN16OpaqueContextRef7ReleaseEv_20:
	cmp byte [ebx+0x10], 0x0
	jnz _ZN16OpaqueContextRef7ReleaseEv_60
	cmp byte [sEnableSwap], 0x0
	jz _ZN16OpaqueContextRef7ReleaseEv_60
	mov eax, [ebx]
	mov [esp], eax
	call aglSwapBuffers
	add dword [sSwapCount], 0x1
	jmp _ZN16OpaqueContextRef7ReleaseEv_60
_ZN16OpaqueContextRef7ReleaseEv_50:
	mov [esp], eax
	call aglDestroyPixelFormat
	jmp _ZN16OpaqueContextRef7ReleaseEv_70
_ZN16OpaqueContextRef7ReleaseEv_30:
	mov dword [esp], 0x0
	call aglSetCurrentContext
	mov eax, [ebx+0x4]
	test eax, eax
	jz _ZN16OpaqueContextRef7ReleaseEv_80
	mov dword [esp+0x4], 0x0
	mov eax, [ebx]
	mov [esp], eax
	call aglSetDrawable
_ZN16OpaqueContextRef7ReleaseEv_80:
	mov eax, [sFullscreenPort]
	test eax, eax
	jz _ZN16OpaqueContextRef7ReleaseEv_90
	mov dword [esp], 0x0
	call SetPort
	mov eax, [sFullscreenPort]
	mov [esp], eax
	call DisposePort
	mov dword [sFullscreenPort], 0x0
_ZN16OpaqueContextRef7ReleaseEv_90:
	mov eax, [sPreviousDisplayMode]
	test eax, eax
	jz _ZN16OpaqueContextRef7ReleaseEv_100
	mov [esp+0x4], eax
	mov eax, [sDisplayID]
	mov [esp], eax
	call CGDisplaySwitchToMode
	mov dword [sPreviousDisplayMode], 0x0
_ZN16OpaqueContextRef7ReleaseEv_100:
	call CGReleaseAllDisplays
	jmp _ZN16OpaqueContextRef7ReleaseEv_110
	nop


;std::vector<CDisplayInfo, std::allocator<CDisplayInfo> >::_M_insert_aux(__gnu_cxx::__normal_iterator<CDisplayInfo*, std::vector<CDisplayInfo, std::allocator<CDisplayInfo> > >, CDisplayInfo const&)
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0xac
	mov eax, [ebp+0xc]
	mov [ebp-0x90], eax
	mov edx, [ebp+0x8]
	mov esi, [edx+0x4]
	cmp esi, [edx+0x8]
	jz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__10
	lea eax, [esi-0x68]
	test esi, esi
	jz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__20
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZN12CDisplayInfoC1ERKS_
	mov eax, [ebp+0x8]
	mov esi, [eax+0x4]
	mov edx, eax
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__270:
	add esi, 0x68
	mov [edx+0x4], esi
	mov eax, [ebp+0x10]
	mov [esp+0x4], eax
	lea edx, [ebp-0x84]
	mov [esp], edx
	call _ZN12CDisplayInfoC1ERKS_
	mov edx, [ebp+0x8]
	mov eax, [edx+0x4]
	lea esi, [eax-0xd0]
	lea ebx, [eax-0x68]
	mov eax, esi
	sub eax, [ebp-0x90]
	sar eax, 0x3
	imul eax, eax, 0xc4ec4ec5
	mov [ebp-0x9c], eax
	test eax, eax
	jle _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__30
	xor edi, edi
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__40:
	sub esi, 0x68
	sub ebx, 0x68
	mov [esp+0x4], esi
	mov [esp], ebx
	call _ZN12CDisplayInfoaSERKS_
	add edi, 0x1
	cmp [ebp-0x9c], edi
	jnz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__40
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__30:
	lea eax, [ebp-0x84]
	mov [esp+0x4], eax
	mov edx, [ebp+0xc]
	mov [esp], edx
	call _ZN12CDisplayInfoaSERKS_
	mov ebx, [ebp-0x4c]
	sub ebx, 0xc
	mov esi, [0xd5cc01c]
	cmp ebx, esi
	jnz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__50
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__310:
	mov eax, [ebp-0x50]
	lea ebx, [eax-0xc]
	cmp esi, ebx
	jnz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__60
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__330:
	mov eax, [ebp-0x54]
	lea ebx, [eax-0xc]
	cmp esi, ebx
	jnz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__70
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__320:
	mov eax, [ebp-0x64]
	lea ebx, [eax-0xc]
	cmp esi, ebx
	jnz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__80
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__340:
	mov edx, [ebp-0x6c]
	mov ecx, [ebp-0x70]
	mov eax, ecx
	cmp edx, ecx
	jz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__90
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__100:
	add eax, 0x10
	cmp edx, eax
	jnz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__100
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__90:
	test ecx, ecx
	jz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__110
	mov [esp], ecx
	call _ZdlPv
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__110:
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__10:
	sub esi, [edx]
	sar esi, 0x3
	imul eax, esi, 0xc4ec4ec5
	cmp eax, 0x2762762
	jz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__120
	test eax, eax
	jnz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__130
	mov edx, 0x1
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__290:
	lea eax, [edx+edx*2]
	lea eax, [edx+eax*4]
	shl eax, 0x3
	mov [ebp-0xa0], eax
	mov [esp], eax
	call _Znwm
	mov [ebp-0x94], eax
	mov [ebp-0x8c], eax
	mov eax, [ebp+0x8]
	mov esi, [eax]
	mov edi, [ebp-0x94]
	cmp esi, [ebp+0xc]
	jz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__140
	mov ebx, edi
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__160:
	test ebx, ebx
	jz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__150
	mov [esp+0x4], esi
	mov [esp], ebx
	call _ZN12CDisplayInfoC1ERKS_
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__150:
	add esi, 0x68
	lea edi, [ebx+0x68]
	mov ebx, edi
	cmp esi, [ebp+0xc]
	jnz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__160
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__140:
	mov [ebp-0x8c], edi
	test edi, edi
	jz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__170
	mov edx, [ebp+0x10]
	mov [esp+0x4], edx
	mov [esp], edi
	call _ZN12CDisplayInfoC1ERKS_
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__170:
	add edi, 0x68
	mov [ebp-0x8c], edi
	mov edx, [ebp+0x8]
	mov esi, [edx+0x4]
	mov ebx, [ebp-0x90]
	cmp ebx, esi
	jz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__180
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__200:
	test edi, edi
	jz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__190
	mov [esp+0x4], ebx
	mov [esp], edi
	call _ZN12CDisplayInfoC1ERKS_
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__190:
	add ebx, 0x68
	add edi, 0x68
	cmp ebx, esi
	jnz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__200
	mov eax, [ebp+0x8]
	mov esi, [eax+0x4]
	mov edx, eax
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__300:
	mov eax, [edx]
	mov ebx, eax
	cmp esi, eax
	jz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__210
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__250:
	lea eax, [ebx+0x38]
	mov [esp], eax
	call _ZNSsD1Ev
	lea eax, [ebx+0x34]
	mov [esp], eax
	call _ZNSsD1Ev
	lea eax, [ebx+0x30]
	mov [esp], eax
	call _ZNSsD1Ev
	lea eax, [ebx+0x20]
	mov [esp], eax
	call _ZNSsD1Ev
	lea ecx, [ebx+0x14]
	mov edx, [ecx+0x4]
	mov eax, [ebx+0x14]
	cmp edx, eax
	jz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__220
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__230:
	add eax, 0x10
	cmp edx, eax
	jnz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__230
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__220:
	mov eax, [ecx]
	test eax, eax
	jz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__240
	mov [esp], eax
	call _ZdlPv
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__240:
	add ebx, 0x68
	cmp ebx, esi
	jnz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__250
	mov edx, [ebp+0x8]
	mov eax, [edx]
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__210:
	test eax, eax
	jz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__260
	mov [esp], eax
	call _ZdlPv
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__260:
	mov edx, [ebp-0x94]
	mov eax, [ebp+0x8]
	mov [eax], edx
	mov [eax+0x4], edi
	mov eax, edx
	add eax, [ebp-0xa0]
	mov edx, [ebp+0x8]
	mov [edx+0x8], eax
	add esp, 0xac
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__20:
	mov edx, [ebp+0x8]
	jmp _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__270
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__130:
	lea edx, [eax+eax]
	cmp edx, eax
	jb _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__280
	cmp edx, 0x2762762
	jbe _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__290
	call _ZSt17__throw_bad_allocv
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__280:
	mov edx, 0x2762762
	jmp _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__290
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__180:
	mov edx, [ebp+0x8]
	jmp _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__300
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__50:
	lea eax, [ebx+0x8]
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__310
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__310
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__70:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__320
	lea eax, [ebp-0x1a]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__320
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__60:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__330
	lea eax, [ebp-0x1b]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__330
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__80:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__340
	lea eax, [ebp-0x19]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__340
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__120:
	mov dword [esp], _cstring_vector_m_insert_
	call _ZSt20__throw_length_errorPKc
	mov [ebp-0x98], eax
	mov eax, [ebp-0x50]
	lea ebx, [eax-0xc]
	cmp esi, ebx
	jnz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__350
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__700:
	mov eax, [ebp-0x54]
	lea ebx, [eax-0xc]
	cmp esi, ebx
	jnz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__360
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__620:
	mov eax, [ebp-0x64]
	lea ebx, [eax-0xc]
	cmp esi, ebx
	jnz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__370
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__610:
	mov edx, [ebp-0x6c]
	mov ecx, [ebp-0x70]
	mov eax, ecx
	cmp edx, ecx
	jz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__380
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__390:
	add eax, 0x10
	cmp edx, eax
	jnz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__390
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__380:
	test ecx, ecx
	jz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__400
	mov [esp], ecx
	call _ZdlPv
	jmp _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__400
	mov [ebp-0x98], eax
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__550:
	lea ecx, [ebx+0x14]
	mov edx, [ecx+0x4]
	mov eax, [ebx+0x14]
	cmp edx, eax
	jz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__410
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__420:
	add eax, 0x10
	cmp edx, eax
	jnz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__420
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__410:
	mov eax, [ecx]
	test eax, eax
	jz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__400
	mov [esp], eax
	call _ZdlPv
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__400:
	mov eax, [ebp-0x98]
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__720:
	mov [esp], eax
	call _Unwind_Resume
	mov [ebp-0x98], eax
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__670:
	mov eax, [ebp-0x98]
	mov [esp], eax
	call __cxa_begin_catch
	mov ebx, [ebp-0x94]
	mov edx, [ebp-0x8c]
	cmp ebx, edx
	jz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__430
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__470:
	lea eax, [ebx+0x38]
	mov [esp], eax
	call _ZNSsD1Ev
	lea eax, [ebx+0x34]
	mov [esp], eax
	call _ZNSsD1Ev
	lea eax, [ebx+0x30]
	mov [esp], eax
	call _ZNSsD1Ev
	lea eax, [ebx+0x20]
	mov [esp], eax
	call _ZNSsD1Ev
	lea ecx, [ebx+0x14]
	mov edx, [ecx+0x4]
	mov eax, [ebx+0x14]
	cmp edx, eax
	jz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__440
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__450:
	add eax, 0x10
	cmp edx, eax
	jnz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__450
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__440:
	mov eax, [ecx]
	test eax, eax
	jz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__460
	mov [esp], eax
	call _ZdlPv
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__460:
	add ebx, 0x68
	cmp ebx, [ebp-0x8c]
	jnz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__470
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__430:
	mov eax, [ebp-0x94]
	test eax, eax
	jz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__480
	mov eax, [ebp-0x94]
	mov [esp], eax
	call _ZdlPv
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__480:
	call __cxa_rethrow
	mov [ebp-0x98], eax
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__520:
	lea ecx, [ebx+0x14]
	mov edx, [ecx+0x4]
	mov eax, [ebx+0x14]
	cmp edx, eax
	jz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__490
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__500:
	add eax, 0x10
	cmp edx, eax
	jnz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__500
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__490:
	mov eax, [ecx]
	test eax, eax
	jz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__510
	mov [esp], eax
	call _ZdlPv
	jmp _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__510
	mov [ebp-0x98], eax
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__510:
	call __cxa_end_catch
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__840:
	mov edx, [ebp-0x98]
	mov [esp], edx
	call _Unwind_Resume
	mov [ebp-0x98], eax
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__530:
	lea eax, [ebx+0x20]
	mov [esp], eax
	call _ZNSsD1Ev
	jmp _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__520
	mov [ebp-0x98], eax
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__540:
	lea eax, [ebx+0x30]
	mov [esp], eax
	call _ZNSsD1Ev
	jmp _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__530
	mov [ebp-0x98], eax
	lea eax, [ebx+0x34]
	mov [esp], eax
	call _ZNSsD1Ev
	jmp _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__540
	mov [ebp-0x98], eax
	lea eax, [ebx+0x34]
	mov [esp], eax
	call _ZNSsD1Ev
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__860:
	lea eax, [ebx+0x30]
	mov [esp], eax
	call _ZNSsD1Ev
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__630:
	lea eax, [ebx+0x20]
	mov [esp], eax
	call _ZNSsD1Ev
	jmp _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__550
	mov [esp], eax
	call __cxa_begin_catch
	mov ebx, [ebp-0x8c]
	cmp edi, ebx
	jz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__560
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__600:
	lea eax, [ebx+0x38]
	mov [esp], eax
	call _ZNSsD1Ev
	lea eax, [ebx+0x34]
	mov [esp], eax
	call _ZNSsD1Ev
	lea eax, [ebx+0x30]
	mov [esp], eax
	call _ZNSsD1Ev
	lea eax, [ebx+0x20]
	mov [esp], eax
	call _ZNSsD1Ev
	lea ecx, [ebx+0x14]
	mov edx, [ecx+0x4]
	mov eax, [ebx+0x14]
	cmp edx, eax
	jz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__570
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__580:
	add eax, 0x10
	cmp edx, eax
	jnz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__580
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__570:
	mov eax, [ecx]
	test eax, eax
	jz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__590
	mov [esp], eax
	call _ZdlPv
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__590:
	add ebx, 0x68
	cmp ebx, edi
	jnz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__600
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__560:
	call __cxa_rethrow
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__370:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__610
	lea eax, [ebp-0x19]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__610
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__360:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__620
	lea eax, [ebp-0x1a]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__620
	mov [ebp-0x98], eax
	jmp _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__630
	mov [ebp-0x98], eax
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__680:
	lea eax, [ebx+0x20]
	mov [esp], eax
	call _ZNSsD1Ev
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__710:
	lea ecx, [ebx+0x14]
	mov edx, [ecx+0x4]
	mov eax, [ebx+0x14]
	cmp edx, eax
	jz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__640
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__650:
	add eax, 0x10
	cmp edx, eax
	jnz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__650
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__640:
	mov eax, [ecx]
	test eax, eax
	jz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__660
	mov [esp], eax
	call _ZdlPv
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__660:
	call __cxa_end_catch
	jmp _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__670
	mov [ebp-0x98], eax
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__690:
	lea eax, [ebx+0x30]
	mov [esp], eax
	call _ZNSsD1Ev
	jmp _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__680
	mov [ebp-0x98], eax
	lea eax, [ebx+0x34]
	mov [esp], eax
	call _ZNSsD1Ev
	jmp _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__690
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__350:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__700
	lea eax, [ebp-0x1b]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__700
	mov [ebp-0x98], eax
	jmp _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__610
	mov [ebp-0x98], eax
	jmp _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__700
	mov [ebp-0x98], eax
	jmp _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__710
	mov [ebp-0x98], eax
	jmp _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__660
	jmp _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__720
	mov [ebp-0x98], eax
	jmp _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__620
	mov [esp], eax
	call __cxa_begin_catch
	mov ebx, [ebp-0x94]
	cmp edi, ebx
	jz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__730
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__770:
	lea eax, [ebx+0x38]
	mov [esp], eax
	call _ZNSsD1Ev
	lea eax, [ebx+0x34]
	mov [esp], eax
	call _ZNSsD1Ev
	lea eax, [ebx+0x30]
	mov [esp], eax
	call _ZNSsD1Ev
	lea eax, [ebx+0x20]
	mov [esp], eax
	call _ZNSsD1Ev
	lea ecx, [ebx+0x14]
	mov edx, [ecx+0x4]
	mov eax, [ebx+0x14]
	cmp edx, eax
	jz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__740
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__750:
	add eax, 0x10
	cmp edx, eax
	jnz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__750
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__740:
	mov eax, [ecx]
	test eax, eax
	jz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__760
	mov [esp], eax
	call _ZdlPv
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__760:
	add ebx, 0x68
	cmp edi, ebx
	jnz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__770
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__730:
	call __cxa_rethrow
	mov [ebp-0x98], eax
	mov eax, [ebp-0x4c]
	lea ebx, [eax-0xc]
	mov esi, [0xd5cc01c]
	cmp ebx, esi
	jnz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__780
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__950:
	mov eax, [ebp-0x50]
	lea ebx, [eax-0xc]
	cmp esi, ebx
	jnz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__790
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__940:
	mov eax, [ebp-0x54]
	lea ebx, [eax-0xc]
	cmp esi, ebx
	jnz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__800
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__910:
	mov eax, [ebp-0x64]
	lea ebx, [eax-0xc]
	cmp esi, ebx
	jnz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__810
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__900:
	mov edx, [ebp-0x6c]
	mov ecx, [ebp-0x70]
	mov eax, ecx
	cmp edx, ecx
	jz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__820
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__830:
	add eax, 0x10
	cmp edx, eax
	jnz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__830
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__820:
	test ecx, ecx
	jz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__840
	mov [esp], ecx
	call _ZdlPv
	jmp _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__840
	mov [ebp-0x98], eax
	lea eax, [ebx+0x34]
	mov [esp], eax
	call _ZNSsD1Ev
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__880:
	lea eax, [ebx+0x30]
	mov [esp], eax
	call _ZNSsD1Ev
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__870:
	lea eax, [ebx+0x20]
	mov [esp], eax
	call _ZNSsD1Ev
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__890:
	lea ecx, [ebx+0x14]
	mov edx, [ecx+0x4]
	mov eax, [ebx+0x14]
	cmp edx, eax
	jz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__640
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__850:
	add eax, 0x10
	cmp edx, eax
	jnz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__850
	jmp _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__640
	mov [ebp-0x98], eax
	jmp _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__860
	mov [ebp-0x98], eax
	jmp _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__870
	mov [ebp-0x98], eax
	jmp _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__880
	mov [ebp-0x98], eax
	jmp _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__890
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__810:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__900
	lea eax, [ebp-0x19]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__900
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__800:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__910
	lea eax, [ebp-0x1a]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__910
	mov [ebp-0x98], eax
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__930:
	mov edx, [ebp-0x6c]
	mov ecx, [ebp-0x70]
	mov eax, ecx
	cmp edx, ecx
	jz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__380
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__920:
	add eax, 0x10
	cmp edx, eax
	jnz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__920
	jmp _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__380
	mov [ebp-0x98], eax
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__960:
	mov eax, [ebp-0x64]
	lea ebx, [eax-0xc]
	cmp esi, ebx
	jz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__930
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__930
	lea eax, [ebp-0x19]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__930
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__790:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__940
	lea eax, [ebp-0x1b]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__940
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__780:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__950
	lea eax, [ebp-0x1c]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__950
	mov [ebp-0x98], eax
_ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__970:
	mov eax, [ebp-0x54]
	lea ebx, [eax-0xc]
	cmp esi, ebx
	jz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__960
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__960
	lea eax, [ebp-0x1a]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__960
	mov [ebp-0x98], eax
	mov eax, [ebp-0x50]
	lea ebx, [eax-0xc]
	cmp esi, ebx
	jz _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__970
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__970
	lea eax, [ebp-0x1b]
	mov [esp+0x4], eax
	mov [esp], ebx
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp _ZNSt6vectorI12CDisplayInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__970


;std::vector<MacRect, std::allocator<MacRect> >::_M_insert_aux(__gnu_cxx::__normal_iterator<MacRect*, std::vector<MacRect, std::allocator<MacRect> > >, MacRect const&)
_ZNSt6vectorI7MacRectSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edi, [ebp+0x8]
	mov eax, [ebp+0xc]
	mov [ebp-0x1c], eax
	mov ecx, [edi+0x4]
	cmp ecx, [edi+0x8]
	jz _ZNSt6vectorI7MacRectSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__10
	test ecx, ecx
	jz _ZNSt6vectorI7MacRectSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__20
	mov eax, [ecx-0x8]
	mov edx, [ecx-0x4]
	mov [ecx], eax
	mov [ecx+0x4], edx
	mov ecx, [edi+0x4]
_ZNSt6vectorI7MacRectSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__20:
	mov eax, ecx
	add ecx, 0x8
	mov [edi+0x4], ecx
	mov ecx, [ebp+0x10]
	mov edx, [ecx]
	mov ecx, [ecx+0x4]
	mov [ebp-0x28], edx
	mov [ebp-0x24], ecx
	lea edi, [eax-0x8]
	sub edi, [ebp-0x1c]
	sar edi, 0x3
	test edi, edi
	jle _ZNSt6vectorI7MacRectSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__30
	mov ebx, eax
	lea ecx, [eax-0x10]
	xor esi, esi
_ZNSt6vectorI7MacRectSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__40:
	mov eax, [ecx]
	mov edx, [ecx+0x4]
	mov [ebx-0x8], eax
	mov [ebx-0x4], edx
	add esi, 0x1
	sub ebx, 0x8
	sub ecx, 0x8
	cmp esi, edi
	jnz _ZNSt6vectorI7MacRectSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__40
	mov eax, [ebp-0x28]
	mov edx, [ebp-0x24]
_ZNSt6vectorI7MacRectSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__170:
	mov ecx, [ebp+0xc]
	mov [ecx], eax
	mov [ecx+0x4], edx
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZNSt6vectorI7MacRectSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__10:
	mov eax, ecx
	sub eax, [edi]
	sar eax, 0x3
	cmp eax, 0x1fffffff
	jz _ZNSt6vectorI7MacRectSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__50
	test eax, eax
	jnz _ZNSt6vectorI7MacRectSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__60
	mov edx, 0x1
_ZNSt6vectorI7MacRectSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__190:
	shl edx, 0x3
	mov [ebp-0x2c], edx
	mov [esp], edx
	call _Znwm
	mov [ebp-0x34], eax
	mov ecx, [edi]
	mov ebx, eax
	cmp ecx, [ebp+0xc]
	jz _ZNSt6vectorI7MacRectSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__70
_ZNSt6vectorI7MacRectSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__90:
	test ebx, ebx
	jz _ZNSt6vectorI7MacRectSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__80
	mov eax, [ecx]
	mov edx, [ecx+0x4]
	mov [ebx], eax
	mov [ebx+0x4], edx
_ZNSt6vectorI7MacRectSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__80:
	add ecx, 0x8
	add ebx, 0x8
	cmp ecx, [ebp+0xc]
	jnz _ZNSt6vectorI7MacRectSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__90
_ZNSt6vectorI7MacRectSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__70:
	test ebx, ebx
	jz _ZNSt6vectorI7MacRectSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__100
	mov ecx, [ebp+0x10]
	mov eax, [ecx]
	mov edx, [ecx+0x4]
	mov [ebx], eax
	mov [ebx+0x4], edx
_ZNSt6vectorI7MacRectSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__100:
	lea eax, [edi+0x4]
	mov [ebp-0x30], eax
	mov esi, [edi+0x4]
	mov ecx, [ebp-0x1c]
	add ebx, 0x8
	cmp esi, ecx
	jz _ZNSt6vectorI7MacRectSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__110
_ZNSt6vectorI7MacRectSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__130:
	test ebx, ebx
	jz _ZNSt6vectorI7MacRectSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__120
	mov edx, [ecx+0x4]
	mov eax, [ecx]
	mov [ebx], eax
	mov [ebx+0x4], edx
_ZNSt6vectorI7MacRectSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__120:
	add ecx, 0x8
	add ebx, 0x8
	cmp ecx, esi
	jnz _ZNSt6vectorI7MacRectSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__130
	mov ecx, [ebp-0x30]
_ZNSt6vectorI7MacRectSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__200:
	mov edx, [ecx]
	mov ecx, [edi]
	mov eax, ecx
	cmp edx, ecx
	jz _ZNSt6vectorI7MacRectSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__140
_ZNSt6vectorI7MacRectSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__150:
	add eax, 0x8
	cmp edx, eax
	jnz _ZNSt6vectorI7MacRectSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__150
_ZNSt6vectorI7MacRectSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__140:
	test ecx, ecx
	jz _ZNSt6vectorI7MacRectSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__160
	mov [esp], ecx
	call _ZdlPv
_ZNSt6vectorI7MacRectSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__160:
	mov eax, [ebp-0x34]
	mov [edi], eax
	mov [edi+0x4], ebx
	mov eax, [ebp-0x34]
	add eax, [ebp-0x2c]
	mov [edi+0x8], eax
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZNSt6vectorI7MacRectSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__30:
	mov eax, edx
	mov edx, ecx
	jmp _ZNSt6vectorI7MacRectSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__170
_ZNSt6vectorI7MacRectSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__60:
	lea edx, [eax+eax]
	cmp edx, eax
	jb _ZNSt6vectorI7MacRectSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__180
	cmp edx, 0x1fffffff
	jbe _ZNSt6vectorI7MacRectSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__190
	call _ZSt17__throw_bad_allocv
_ZNSt6vectorI7MacRectSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__180:
	mov edx, 0x1fffffff
	jmp _ZNSt6vectorI7MacRectSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__190
_ZNSt6vectorI7MacRectSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__110:
	mov ecx, eax
	jmp _ZNSt6vectorI7MacRectSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__200
_ZNSt6vectorI7MacRectSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__50:
	mov dword [esp], _cstring_vector_m_insert_
	call _ZSt20__throw_length_errorPKc


;std::vector<CResInfo, std::allocator<CResInfo> >::_M_insert_aux(__gnu_cxx::__normal_iterator<CResInfo*, std::vector<CResInfo, std::allocator<CResInfo> > >, CResInfo const&)
_ZNSt6vectorI8CResInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edi, [ebp+0xc]
	mov esi, [ebp+0x10]
	mov [ebp-0x1c], edi
	mov eax, [ebp+0x8]
	mov edx, [eax+0x4]
	cmp edx, [eax+0x8]
	jz _ZNSt6vectorI8CResInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__10
	lea ecx, [edx-0x10]
	test edx, edx
	jz _ZNSt6vectorI8CResInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__20
	mov eax, [edx-0x10]
	mov [edx], eax
	mov eax, [ecx+0x4]
	mov [edx+0x4], eax
	mov eax, [ecx+0x8]
	mov [edx+0x8], eax
	mov eax, [ecx+0xc]
	mov [edx+0xc], eax
	mov ecx, [ebp+0x8]
	mov edx, [ecx+0x4]
	mov eax, ecx
_ZNSt6vectorI8CResInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__180:
	mov ebx, edx
	add edx, 0x10
	mov [eax+0x4], edx
	mov edx, [esi+0xc]
	mov [ebp-0x20], edx
	mov ecx, [esi+0x8]
	mov [ebp-0x24], ecx
	mov eax, [esi+0x4]
	mov [ebp-0x28], eax
	mov esi, [esi]
	mov [ebp-0x2c], esi
	lea eax, [ebx-0x10]
	mov esi, eax
	sub esi, [ebp-0x1c]
	sar esi, 0x4
	test esi, esi
	jle _ZNSt6vectorI8CResInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__30
	mov ecx, eax
	mov edx, ebx
	xor ebx, ebx
_ZNSt6vectorI8CResInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__40:
	mov eax, [ecx-0x10]
	mov [edx-0x10], eax
	mov eax, [ecx-0xc]
	mov [edx-0xc], eax
	mov eax, [ecx-0x8]
	mov [edx-0x8], eax
	mov eax, [ecx-0x4]
	mov [edx-0x4], eax
	add ebx, 0x1
	sub ecx, 0x10
	sub edx, 0x10
	cmp esi, ebx
	jnz _ZNSt6vectorI8CResInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__40
	mov edx, [ebp-0x20]
_ZNSt6vectorI8CResInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__30:
	mov [edi+0xc], edx
	mov ecx, [ebp-0x24]
	mov [edi+0x8], ecx
	mov eax, [ebp-0x28]
	mov [edi+0x4], eax
	mov edx, [ebp-0x2c]
	mov [edi], edx
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZNSt6vectorI8CResInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__10:
	mov ecx, eax
	mov eax, edx
	sub eax, [ecx]
	sar eax, 0x4
	cmp eax, 0xfffffff
	jz _ZNSt6vectorI8CResInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__50
	test eax, eax
	jnz _ZNSt6vectorI8CResInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__60
	mov edx, 0x1
_ZNSt6vectorI8CResInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__200:
	shl edx, 0x4
	mov [ebp-0x30], edx
	mov [esp], edx
	call _Znwm
	mov [ebp-0x34], eax
	mov eax, [ebp+0x8]
	mov edx, [eax]
	mov ecx, [ebp-0x34]
	cmp edi, edx
	jz _ZNSt6vectorI8CResInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__70
	mov ebx, edx
	jmp _ZNSt6vectorI8CResInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__80
_ZNSt6vectorI8CResInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__100:
	mov edx, ebx
_ZNSt6vectorI8CResInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__80:
	test ecx, ecx
	jz _ZNSt6vectorI8CResInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__90
	mov eax, [edx]
	mov [ecx], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	mov eax, [edx+0xc]
	mov [ecx+0xc], eax
_ZNSt6vectorI8CResInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__90:
	add ebx, 0x10
	add ecx, 0x10
	cmp edi, ebx
	jnz _ZNSt6vectorI8CResInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__100
_ZNSt6vectorI8CResInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__70:
	test ecx, ecx
	jz _ZNSt6vectorI8CResInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__110
	mov eax, [esi]
	mov [ecx], eax
	mov eax, [esi+0x4]
	mov [ecx+0x4], eax
	mov eax, [esi+0x8]
	mov [ecx+0x8], eax
	mov eax, [esi+0xc]
	mov [ecx+0xc], eax
_ZNSt6vectorI8CResInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__110:
	mov edi, [ebp+0x8]
	add edi, 0x4
	mov edx, [ebp+0x8]
	mov esi, [edx+0x4]
	mov edx, [ebp-0x1c]
	lea ebx, [ecx+0x10]
	cmp esi, edx
	jz _ZNSt6vectorI8CResInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__120
_ZNSt6vectorI8CResInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__140:
	mov ecx, edx
	test ebx, ebx
	jz _ZNSt6vectorI8CResInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__130
	mov eax, [edx]
	mov [ebx], eax
	mov eax, [edx+0x4]
	mov [ebx+0x4], eax
	mov eax, [edx+0x8]
	mov [ebx+0x8], eax
	mov eax, [edx+0xc]
	mov [ebx+0xc], eax
_ZNSt6vectorI8CResInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__130:
	lea edx, [ecx+0x10]
	add ebx, 0x10
	cmp edx, esi
	jnz _ZNSt6vectorI8CResInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__140
_ZNSt6vectorI8CResInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__120:
	mov edx, [edi]
	mov eax, [ebp+0x8]
	mov ecx, [eax]
	mov eax, ecx
	cmp edx, ecx
	jz _ZNSt6vectorI8CResInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__150
_ZNSt6vectorI8CResInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__160:
	add eax, 0x10
	cmp edx, eax
	jnz _ZNSt6vectorI8CResInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__160
_ZNSt6vectorI8CResInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__150:
	test ecx, ecx
	jz _ZNSt6vectorI8CResInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__170
	mov [esp], ecx
	call _ZdlPv
_ZNSt6vectorI8CResInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__170:
	mov ecx, [ebp-0x34]
	mov edx, [ebp+0x8]
	mov [edx], ecx
	mov [edx+0x4], ebx
	mov eax, ecx
	add eax, [ebp-0x30]
	mov [edx+0x8], eax
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZNSt6vectorI8CResInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__20:
	mov eax, [ebp+0x8]
	jmp _ZNSt6vectorI8CResInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__180
_ZNSt6vectorI8CResInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__60:
	lea edx, [eax+eax]
	cmp edx, eax
	jb _ZNSt6vectorI8CResInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__190
	cmp edx, 0xfffffff
	jbe _ZNSt6vectorI8CResInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__200
	call _ZSt17__throw_bad_allocv
_ZNSt6vectorI8CResInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__190:
	mov edx, 0xfffffff
	jmp _ZNSt6vectorI8CResInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__200
_ZNSt6vectorI8CResInfoSaIS0_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS0_S2_EERKS0__50:
	mov dword [esp], _cstring_vector_m_insert_
	call _ZSt20__throw_length_errorPKc


;std::vector<CResInfo, std::allocator<CResInfo> >::operator=(std::vector<CResInfo, std::allocator<CResInfo> > const&)
_ZNSt6vectorI8CResInfoSaIS0_EEaSERKS2_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x2c
	mov eax, [ebp+0x8]
	cmp [ebp+0xc], eax
	jz _ZNSt6vectorI8CResInfoSaIS0_EEaSERKS2__10
	mov edx, [ebp+0xc]
	mov edi, [edx]
	mov ecx, [edx+0x4]
	mov [ebp-0x28], ecx
	sub ecx, edi
	sar ecx, 0x4
	mov [ebp-0x20], ecx
	mov esi, [eax]
	mov eax, [eax+0x8]
	sub eax, esi
	sar eax, 0x4
	cmp ecx, eax
	ja _ZNSt6vectorI8CResInfoSaIS0_EEaSERKS2__20
	mov edx, [ebp+0x8]
	mov eax, [edx+0x4]
	mov ebx, eax
	sub ebx, esi
	sar ebx, 0x4
	cmp [ebp-0x20], ebx
	jbe _ZNSt6vectorI8CResInfoSaIS0_EEaSERKS2__30
	mov ecx, esi
	mov edx, edi
	mov [ebp-0x24], ebx
	test ebx, ebx
	jle _ZNSt6vectorI8CResInfoSaIS0_EEaSERKS2__40
	xor ebx, ebx
_ZNSt6vectorI8CResInfoSaIS0_EEaSERKS2__50:
	mov eax, [edx]
	mov [ecx], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	mov eax, [edx+0xc]
	mov [ecx+0xc], eax
	add edx, 0x10
	add ecx, 0x10
	add ebx, 0x1
	cmp [ebp-0x24], ebx
	jnz _ZNSt6vectorI8CResInfoSaIS0_EEaSERKS2__50
	mov eax, [ebp+0xc]
	mov edi, [eax]
	mov edx, [eax+0x4]
	mov [ebp-0x28], edx
	mov ecx, [ebp+0x8]
	mov esi, [ecx]
	mov eax, [ecx+0x4]
_ZNSt6vectorI8CResInfoSaIS0_EEaSERKS2__40:
	mov ecx, eax
	sub eax, esi
	and eax, 0xfffffff0
	lea edx, [edi+eax]
	cmp [ebp-0x28], edx
	jz _ZNSt6vectorI8CResInfoSaIS0_EEaSERKS2__60
	mov ebx, edx
	jmp _ZNSt6vectorI8CResInfoSaIS0_EEaSERKS2__70
_ZNSt6vectorI8CResInfoSaIS0_EEaSERKS2__90:
	mov edx, ebx
_ZNSt6vectorI8CResInfoSaIS0_EEaSERKS2__70:
	test ecx, ecx
	jz _ZNSt6vectorI8CResInfoSaIS0_EEaSERKS2__80
	mov eax, [edx]
	mov [ecx], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	mov eax, [edx+0xc]
	mov [ecx+0xc], eax
_ZNSt6vectorI8CResInfoSaIS0_EEaSERKS2__80:
	add ebx, 0x10
	add ecx, 0x10
	cmp [ebp-0x28], ebx
	jnz _ZNSt6vectorI8CResInfoSaIS0_EEaSERKS2__90
	mov edx, [ebp-0x20]
	shl edx, 0x4
	mov eax, [ebp+0x8]
	mov esi, [eax]
_ZNSt6vectorI8CResInfoSaIS0_EEaSERKS2__130:
	lea eax, [edx+esi]
	mov edx, [ebp+0x8]
	mov [edx+0x4], eax
	mov eax, [ebp+0x8]
_ZNSt6vectorI8CResInfoSaIS0_EEaSERKS2__10:
	add esp, 0x2c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZNSt6vectorI8CResInfoSaIS0_EEaSERKS2__30:
	mov ecx, edi
	mov edx, esi
	mov ebx, [ebp-0x20]
	test ebx, ebx
	jle _ZNSt6vectorI8CResInfoSaIS0_EEaSERKS2__100
	xor ebx, ebx
_ZNSt6vectorI8CResInfoSaIS0_EEaSERKS2__110:
	mov eax, [ecx]
	mov [edx], eax
	mov eax, [ecx+0x4]
	mov [edx+0x4], eax
	mov eax, [ecx+0x8]
	mov [edx+0x8], eax
	mov eax, [ecx+0xc]
	mov [edx+0xc], eax
	add ecx, 0x10
	add edx, 0x10
	add ebx, 0x1
	cmp ebx, [ebp-0x20]
	jnz _ZNSt6vectorI8CResInfoSaIS0_EEaSERKS2__110
	mov ecx, [ebp+0x8]
	mov esi, [ecx]
	mov eax, [ecx+0x4]
_ZNSt6vectorI8CResInfoSaIS0_EEaSERKS2__100:
	cmp eax, edx
	jz _ZNSt6vectorI8CResInfoSaIS0_EEaSERKS2__60
_ZNSt6vectorI8CResInfoSaIS0_EEaSERKS2__120:
	add edx, 0x10
	cmp eax, edx
	jnz _ZNSt6vectorI8CResInfoSaIS0_EEaSERKS2__120
_ZNSt6vectorI8CResInfoSaIS0_EEaSERKS2__60:
	mov edx, [ebp-0x20]
	shl edx, 0x4
	jmp _ZNSt6vectorI8CResInfoSaIS0_EEaSERKS2__130
_ZNSt6vectorI8CResInfoSaIS0_EEaSERKS2__20:
	cmp ecx, 0xfffffff
	ja _ZNSt6vectorI8CResInfoSaIS0_EEaSERKS2__140
	mov ecx, [ebp-0x20]
	shl ecx, 0x4
	mov [ebp-0x1c], ecx
	mov [esp], ecx
	call _Znwm
	mov esi, eax
	mov ecx, edi
	cmp [ebp-0x28], edi
	jz _ZNSt6vectorI8CResInfoSaIS0_EEaSERKS2__150
	mov edx, eax
	mov ebx, edi
	jmp _ZNSt6vectorI8CResInfoSaIS0_EEaSERKS2__160
_ZNSt6vectorI8CResInfoSaIS0_EEaSERKS2__180:
	mov ecx, ebx
_ZNSt6vectorI8CResInfoSaIS0_EEaSERKS2__160:
	test edx, edx
	jz _ZNSt6vectorI8CResInfoSaIS0_EEaSERKS2__170
	mov eax, [ecx]
	mov [edx], eax
	mov eax, [ecx+0x4]
	mov [edx+0x4], eax
	mov eax, [ecx+0x8]
	mov [edx+0x8], eax
	mov eax, [ecx+0xc]
	mov [edx+0xc], eax
_ZNSt6vectorI8CResInfoSaIS0_EEaSERKS2__170:
	add ebx, 0x10
	add edx, 0x10
	cmp [ebp-0x28], ebx
	jnz _ZNSt6vectorI8CResInfoSaIS0_EEaSERKS2__180
_ZNSt6vectorI8CResInfoSaIS0_EEaSERKS2__150:
	mov eax, [ebp+0x8]
	mov edx, [eax+0x4]
	mov ecx, [eax]
	cmp edx, ecx
	jz _ZNSt6vectorI8CResInfoSaIS0_EEaSERKS2__190
	mov eax, ecx
_ZNSt6vectorI8CResInfoSaIS0_EEaSERKS2__200:
	add eax, 0x10
	cmp edx, eax
	jnz _ZNSt6vectorI8CResInfoSaIS0_EEaSERKS2__200
_ZNSt6vectorI8CResInfoSaIS0_EEaSERKS2__190:
	test ecx, ecx
	jz _ZNSt6vectorI8CResInfoSaIS0_EEaSERKS2__210
	mov [esp], ecx
	call _ZdlPv
_ZNSt6vectorI8CResInfoSaIS0_EEaSERKS2__210:
	mov edx, [ebp+0x8]
	mov [edx], esi
	mov edx, [ebp-0x1c]
	lea eax, [esi+edx]
	mov ecx, [ebp+0x8]
	mov [ecx+0x8], eax
	jmp _ZNSt6vectorI8CResInfoSaIS0_EEaSERKS2__130
_ZNSt6vectorI8CResInfoSaIS0_EEaSERKS2__140:
	call _ZSt17__throw_bad_allocv


;void std::__push_heap<__gnu_cxx::__normal_iterator<CResInfo*, std::vector<CResInfo, std::allocator<CResInfo> > >, int, CResInfo>(__gnu_cxx::__normal_iterator<CResInfo*, std::vector<CResInfo, std::allocator<CResInfo> > >, int, int, CResInfo)
_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiS2_EvT_T0_S9_T1_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x10
	mov edi, [ebp+0x8]
	mov ebx, [ebp+0xc]
	mov eax, [ebp+0x20]
	mov [ebp-0x1c], eax
	mov edx, [ebp+0x1c]
	mov [ebp-0x18], edx
	mov eax, [ebp+0x18]
	mov [ebp-0x14], eax
	mov edx, [ebp+0x14]
	mov [ebp-0x10], edx
	lea edx, [ebx-0x1]
	mov eax, edx
	shr eax, 0x1f
	lea esi, [eax+edx]
	sar esi, 1
	cmp ebx, [ebp+0x10]
	jle _ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiS2_EvT_T0_S9_T1__10
_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiS2_EvT_T0_S9_T1__50:
	mov eax, esi
	shl eax, 0x4
	lea ecx, [edi+eax]
	mov eax, [ecx]
	cmp [ebp-0x10], eax
	jg _ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiS2_EvT_T0_S9_T1__20
	jz _ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiS2_EvT_T0_S9_T1__30
_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiS2_EvT_T0_S9_T1__10:
	shl ebx, 0x4
	lea ecx, [edi+ebx]
_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiS2_EvT_T0_S9_T1__40:
	mov eax, [ebp-0x1c]
	mov [ecx+0xc], eax
	mov edx, [ebp-0x18]
	mov [ecx+0x8], edx
	mov eax, [ebp-0x14]
	mov [ecx+0x4], eax
	mov edx, [ebp-0x10]
	mov [ecx], edx
	add esp, 0x10
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiS2_EvT_T0_S9_T1__30:
	mov edx, [ebp-0x14]
	cmp edx, [ecx+0x4]
	jg _ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiS2_EvT_T0_S9_T1__20
	jnz _ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiS2_EvT_T0_S9_T1__10
	mov edx, [ebp-0x18]
	cmp edx, [ecx+0x8]
	jg _ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiS2_EvT_T0_S9_T1__20
	jnz _ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiS2_EvT_T0_S9_T1__10
	mov edx, [ebp-0x1c]
	cmp edx, [ecx+0xc]
	jle _ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiS2_EvT_T0_S9_T1__10
_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiS2_EvT_T0_S9_T1__20:
	shl ebx, 0x4
	lea edx, [edi+ebx]
	mov [edx], eax
	mov eax, [ecx+0x4]
	mov [edx+0x4], eax
	mov eax, [ecx+0x8]
	mov [edx+0x8], eax
	mov eax, [ecx+0xc]
	mov [edx+0xc], eax
	lea edx, [esi-0x1]
	mov eax, edx
	shr eax, 0x1f
	add eax, edx
	sar eax, 1
	cmp esi, [ebp+0x10]
	jle _ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiS2_EvT_T0_S9_T1__40
	mov ebx, esi
	mov esi, eax
	jmp _ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiS2_EvT_T0_S9_T1__50
	nop


;void std::partial_sort<__gnu_cxx::__normal_iterator<CResInfo*, std::vector<CResInfo, std::allocator<CResInfo> > > >(__gnu_cxx::__normal_iterator<CResInfo*, std::vector<CResInfo, std::allocator<CResInfo> > >, __gnu_cxx::__normal_iterator<CResInfo*, std::vector<CResInfo, std::allocator<CResInfo> > >, __gnu_cxx::__normal_iterator<CResInfo*, std::vector<CResInfo, std::allocator<CResInfo> > >)
_ZSt12partial_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8_S8_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x7c
	mov eax, [ebp+0x8]
	mov [ebp-0x48], eax
	mov ecx, [ebp+0xc]
	mov [esp+0x4], ecx
	mov [esp], eax
	call _ZSt9make_heapIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8_
	mov edi, [ebp+0xc]
	mov esi, edi
	cmp [ebp+0x10], edi
	jbe _ZSt12partial_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8_S8__10
	sub esi, [ebp-0x48]
	sar esi, 0x4
	mov [ebp-0x4c], esi
	jmp _ZSt12partial_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8_S8__20
_ZSt12partial_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8_S8__50:
	jz _ZSt12partial_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8_S8__30
_ZSt12partial_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8_S8__120:
	add edi, 0x10
	cmp edi, [ebp+0x10]
	jae _ZSt12partial_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8_S8__40
_ZSt12partial_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8_S8__20:
	mov edx, [edi]
	mov eax, [ebp-0x48]
	mov eax, [eax]
	mov [ebp-0x50], eax
	cmp edx, eax
	jge _ZSt12partial_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8_S8__50
	mov esi, [edi+0xc]
_ZSt12partial_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8_S8__80:
	mov [ebp-0x44], esi
	mov ebx, [edi+0x8]
	mov ecx, [edi+0x4]
	mov [edi], eax
	mov esi, [ebp-0x48]
	mov eax, [esi+0x4]
	mov [edi+0x4], eax
	mov eax, [esi+0x8]
	mov [edi+0x8], eax
	mov eax, [esi+0xc]
	mov [edi+0xc], eax
	mov eax, [ebp-0x44]
	mov [ebp-0x2c], eax
	mov [ebp-0x30], ebx
	mov [ebp-0x34], ecx
	mov [ebp-0x38], edx
	mov [esp+0xc], edx
	mov [esp+0x10], ecx
	mov [esp+0x14], ebx
	mov [esp+0x18], eax
	mov ecx, [ebp-0x4c]
	mov [esp+0x8], ecx
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call _ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiS2_EvT_T0_S9_T1_
	add edi, 0x10
	cmp edi, [ebp+0x10]
	jb _ZSt12partial_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8_S8__20
_ZSt12partial_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8_S8__40:
	mov esi, [ebp+0xc]
	mov edx, esi
	sub edx, [ebp-0x48]
	mov eax, edx
	sar eax, 0x4
	sub eax, 0x1
	jg _ZSt12partial_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8_S8__60
_ZSt12partial_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8_S8__90:
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZSt12partial_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8_S8__30:
	mov ecx, [ebp-0x48]
	mov eax, [ecx+0x4]
	cmp [edi+0x4], eax
	jge _ZSt12partial_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8_S8__70
_ZSt12partial_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8_S8__130:
	mov esi, [edi+0xc]
	mov eax, [ebp-0x50]
	jmp _ZSt12partial_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8_S8__80
_ZSt12partial_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8_S8__10:
	mov esi, edi
	mov edx, esi
	sub edx, [ebp-0x48]
	mov eax, edx
	sar eax, 0x4
	sub eax, 0x1
	jle _ZSt12partial_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8_S8__90
_ZSt12partial_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8_S8__60:
	sub edx, 0x10
	mov [ebp-0x3c], edx
	jmp _ZSt12partial_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8_S8__100
_ZSt12partial_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8_S8__110:
	mov esi, edi
_ZSt12partial_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8_S8__100:
	lea edi, [esi-0x10]
	mov eax, [edi+0xc]
	mov [ebp-0x40], eax
	mov ebx, [edi+0x8]
	mov ecx, [edi+0x4]
	mov edx, [esi-0x10]
	mov eax, [ebp-0x48]
	mov eax, [eax]
	mov [esi-0x10], eax
	mov esi, [ebp-0x48]
	mov eax, [esi+0x4]
	mov [edi+0x4], eax
	mov eax, [esi+0x8]
	mov [edi+0x8], eax
	mov eax, [esi+0xc]
	mov [edi+0xc], eax
	mov eax, [ebp-0x40]
	mov [ebp-0x1c], eax
	mov [ebp-0x20], ebx
	mov [ebp-0x24], ecx
	mov [ebp-0x28], edx
	mov [esp+0xc], edx
	mov [esp+0x10], ecx
	mov [esp+0x14], ebx
	mov [esp+0x18], eax
	mov eax, edi
	sub eax, esi
	sar eax, 0x4
	mov [esp+0x8], eax
	mov dword [esp+0x4], 0x0
	mov [esp], esi
	call _ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiS2_EvT_T0_S9_T1_
	mov eax, [ebp-0x3c]
	sar eax, 0x4
	sub dword [ebp-0x3c], 0x10
	sub eax, 0x1
	jg _ZSt12partial_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8_S8__110
	add esp, 0x7c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZSt12partial_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8_S8__70:
	jnz _ZSt12partial_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8_S8__120
	mov eax, [ecx+0x8]
	cmp [edi+0x8], eax
	jl _ZSt12partial_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8_S8__130
	jnz _ZSt12partial_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8_S8__120
	mov eax, [edi+0xc]
	cmp eax, [ecx+0xc]
	jge _ZSt12partial_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8_S8__120
	mov esi, eax
	mov eax, [ebp-0x50]
	jmp _ZSt12partial_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8_S8__80
	nop


;void std::__adjust_heap<__gnu_cxx::__normal_iterator<CResInfo*, std::vector<CResInfo, std::allocator<CResInfo> > >, int, CResInfo>(__gnu_cxx::__normal_iterator<CResInfo*, std::vector<CResInfo, std::allocator<CResInfo> > >, int, int, CResInfo)
_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiS2_EvT_T0_S9_T1_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x30
	mov eax, [ebp+0x8]
	mov [ebp-0x30], eax
	mov edx, [ebp+0xc]
	mov [ebp-0x34], edx
	mov ecx, [ebp+0x10]
	mov [ebp-0x38], ecx
	mov ebx, [ebp+0x20]
	mov [ebp-0x20], ebx
	mov edi, [ebp+0x1c]
	mov [ebp-0x24], edi
	mov eax, [ebp+0x18]
	mov [ebp-0x28], eax
	mov edx, [ebp+0x14]
	mov [ebp-0x2c], edx
	mov ecx, [ebp-0x34]
	lea ebx, [ecx+ecx+0x2]
	cmp ebx, [ebp-0x38]
	jl _ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiS2_EvT_T0_S9_T1__10
	mov eax, ecx
_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiS2_EvT_T0_S9_T1__80:
	cmp [ebp-0x38], ebx
	jnz _ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiS2_EvT_T0_S9_T1__20
	shl eax, 0x4
	mov edi, [ebp-0x30]
	lea ecx, [eax+edi]
	sub ebx, 0x1
	mov edx, ebx
	shl edx, 0x4
	add edx, edi
	mov eax, [edx]
	mov [ecx], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	mov eax, [edx+0xc]
	mov [ecx+0xc], eax
	mov eax, ebx
_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiS2_EvT_T0_S9_T1__20:
	mov edx, [ebp-0x20]
	mov [ebp-0x10], edx
	mov ecx, [ebp-0x24]
	mov [ebp-0x14], ecx
	mov ebx, [ebp-0x28]
	mov [ebp-0x18], ebx
	mov edi, [ebp-0x2c]
	mov [ebp-0x1c], edi
	mov [ebp+0x14], edi
	mov [ebp+0x18], ebx
	mov [ebp+0x1c], ecx
	mov [ebp+0x20], edx
	mov edx, [ebp-0x34]
	mov [ebp+0x10], edx
	mov [ebp+0xc], eax
	mov ecx, [ebp-0x30]
	mov [ebp+0x8], ecx
	add esp, 0x30
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiS2_EvT_T0_S9_T1_
_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiS2_EvT_T0_S9_T1__10:
	mov edx, ecx
	lea edi, [ebx-0x1]
	mov [ebp-0x3c], edi
	mov eax, edi
	shl eax, 0x4
	mov ecx, [ebp-0x30]
	lea esi, [eax+ecx]
	mov eax, ebx
	shl eax, 0x4
	lea ecx, [eax+ecx]
	mov edi, [ecx]
	cmp edi, [esi]
	jl _ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiS2_EvT_T0_S9_T1__30
_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiS2_EvT_T0_S9_T1__60:
	jz _ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiS2_EvT_T0_S9_T1__40
_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiS2_EvT_T0_S9_T1__90:
	mov esi, ebx
	shl edx, 0x4
	add edx, [ebp-0x30]
	mov [edx], edi
	mov eax, [ecx+0x4]
	mov [edx+0x4], eax
	mov eax, [ecx+0x8]
	mov [edx+0x8], eax
	mov eax, [ecx+0xc]
	mov [edx+0xc], eax
	lea ebx, [esi+esi+0x2]
	cmp [ebp-0x38], ebx
	jle _ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiS2_EvT_T0_S9_T1__50
_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiS2_EvT_T0_S9_T1__70:
	mov edx, esi
	lea edi, [ebx-0x1]
	mov [ebp-0x3c], edi
	mov eax, edi
	shl eax, 0x4
	mov ecx, [ebp-0x30]
	lea esi, [eax+ecx]
	mov eax, ebx
	shl eax, 0x4
	lea ecx, [eax+ecx]
	mov edi, [ecx]
	cmp edi, [esi]
	jge _ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiS2_EvT_T0_S9_T1__60
_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiS2_EvT_T0_S9_T1__30:
	mov esi, [ebp-0x3c]
	mov eax, esi
	shl eax, 0x4
	mov ebx, [ebp-0x30]
	lea ecx, [eax+ebx]
	mov edi, [ecx]
	shl edx, 0x4
	add edx, [ebp-0x30]
	mov [edx], edi
	mov eax, [ecx+0x4]
	mov [edx+0x4], eax
	mov eax, [ecx+0x8]
	mov [edx+0x8], eax
	mov eax, [ecx+0xc]
	mov [edx+0xc], eax
	lea ebx, [esi+esi+0x2]
	cmp [ebp-0x38], ebx
	jg _ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiS2_EvT_T0_S9_T1__70
_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiS2_EvT_T0_S9_T1__50:
	mov eax, esi
	jmp _ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiS2_EvT_T0_S9_T1__80
_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiS2_EvT_T0_S9_T1__40:
	mov eax, [esi+0x4]
	cmp [ecx+0x4], eax
	jl _ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiS2_EvT_T0_S9_T1__30
	jnz _ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiS2_EvT_T0_S9_T1__90
	mov eax, [esi+0x8]
	cmp [ecx+0x8], eax
	jl _ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiS2_EvT_T0_S9_T1__30
	jnz _ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiS2_EvT_T0_S9_T1__90
	mov eax, [ecx+0xc]
	cmp eax, [esi+0xc]
	jl _ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiS2_EvT_T0_S9_T1__30
	jmp _ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiS2_EvT_T0_S9_T1__90


;void std::__insertion_sort<__gnu_cxx::__normal_iterator<CResInfo*, std::vector<CResInfo, std::allocator<CResInfo> > > >(__gnu_cxx::__normal_iterator<CResInfo*, std::vector<CResInfo, std::allocator<CResInfo> > >, __gnu_cxx::__normal_iterator<CResInfo*, std::vector<CResInfo, std::allocator<CResInfo> > >)
_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x5c
	mov eax, [ebp+0x8]
	mov [ebp-0x3c], eax
	mov edx, [ebp+0xc]
	cmp eax, edx
	jz _ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8__10
	mov ebx, eax
	add ebx, 0x10
	cmp edx, ebx
	jz _ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8__10
	mov edi, ebx
	mov eax, [edi+0xc]
	mov [ebp-0x38], eax
	mov edx, [edi+0x8]
	mov [ebp-0x34], edx
	mov eax, [edi+0x4]
	mov [ebp-0x30], eax
	mov edi, [edi]
	mov [ebp-0x2c], edi
	mov edx, [ebp-0x3c]
	cmp edi, [edx]
	jl _ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8__20
_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8__40:
	jz _ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8__30
_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8__80:
	mov edx, [ebp-0x38]
_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8__90:
	mov [ebp-0x1c], edx
	mov eax, [ebp-0x34]
	mov [ebp-0x20], eax
	mov edx, [ebp-0x30]
	mov [ebp-0x24], edx
	mov eax, [ebp-0x2c]
	mov [ebp-0x28], eax
	mov [esp+0x4], eax
	mov [esp+0x8], edx
	mov edx, [ebp-0x34]
	mov [esp+0xc], edx
	mov eax, [ebp-0x38]
	mov [esp+0x10], eax
	mov [esp], ebx
	call _ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEES2_EvT_T0_
	lea edi, [ebx+0x10]
	cmp [ebp+0xc], edi
	jz _ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8__10
_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8__70:
	mov ebx, edi
	mov eax, [edi+0xc]
	mov [ebp-0x38], eax
	mov edx, [edi+0x8]
	mov [ebp-0x34], edx
	mov eax, [edi+0x4]
	mov [ebp-0x30], eax
	mov edi, [edi]
	mov [ebp-0x2c], edi
	mov edx, [ebp-0x3c]
	cmp edi, [edx]
	jge _ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8__40
_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8__20:
	lea edi, [ebx+0x10]
	mov esi, ebx
	sub esi, [ebp-0x3c]
	sar esi, 0x4
	test esi, esi
	jle _ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8__50
	mov ecx, ebx
	mov edx, edi
	xor ebx, ebx
_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8__60:
	mov eax, [ecx-0x10]
	mov [edx-0x10], eax
	mov eax, [ecx-0xc]
	mov [edx-0xc], eax
	mov eax, [ecx-0x8]
	mov [edx-0x8], eax
	mov eax, [ecx-0x4]
	mov [edx-0x4], eax
	add ebx, 0x1
	sub ecx, 0x10
	sub edx, 0x10
	cmp esi, ebx
	jnz _ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8__60
_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8__50:
	mov eax, [ebp-0x38]
	mov edx, [ebp-0x3c]
	mov [edx+0xc], eax
	mov eax, [ebp-0x34]
	mov [edx+0x8], eax
	mov eax, [ebp-0x30]
	mov [edx+0x4], eax
	mov eax, [ebp-0x2c]
	mov [edx], eax
	cmp [ebp+0xc], edi
	jnz _ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8__70
_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8__10:
	add esp, 0x5c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8__30:
	mov eax, [ebp-0x30]
	cmp eax, [edx+0x4]
	jl _ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8__20
	jnz _ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8__80
	mov eax, [ebp-0x34]
	cmp eax, [edx+0x8]
	jl _ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8__20
	jnz _ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8__80
	mov eax, [ebp-0x38]
	cmp eax, [edx+0xc]
	jl _ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8__20
	mov edx, eax
	jmp _ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8__90
	nop


;void std::__introsort_loop<__gnu_cxx::__normal_iterator<CResInfo*, std::vector<CResInfo, std::allocator<CResInfo> > >, int>(__gnu_cxx::__normal_iterator<CResInfo*, std::vector<CResInfo, std::allocator<CResInfo> > >, __gnu_cxx::__normal_iterator<CResInfo*, std::vector<CResInfo, std::allocator<CResInfo> > >, int)
_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0_:
_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__90:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x6c
	mov edi, [ebp+0x8]
	mov eax, [ebp+0x10]
	mov [ebp-0x40], eax
	mov edx, [ebp+0xc]
	mov [ebp-0x34], edx
	mov eax, edx
	sub eax, edi
	sar eax, 0x4
	cmp eax, 0x10
	jle _ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__10
	mov esi, [ebp-0x40]
	test esi, esi
	jz _ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__20
	mov eax, [ebp-0x40]
	mov [ebp-0x2c], eax
	mov dword [ebp-0x30], 0x0
_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__100:
	sub dword [ebp-0x2c], 0x1
	mov edx, [ebp-0x34]
	sub edx, 0x10
	mov [ebp-0x4c], edx
	mov edx, [ebp-0x34]
	sub edx, edi
	sar edx, 0x4
	mov eax, edx
	shr eax, 0x1f
	add eax, edx
	sar eax, 1
	shl eax, 0x4
	add eax, edi
	mov [ebp-0x44], eax
	mov esi, eax
	mov ecx, [edi]
	mov edx, [eax]
	cmp ecx, edx
	jl _ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__30
	jz _ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__40
_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__110:
	mov ebx, [ebp-0x4c]
	mov ebx, [ebx]
	mov [ebp-0x38], ebx
	cmp ecx, ebx
	jl _ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__50
	jz _ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__60
_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__180:
	cmp edx, [ebp-0x38]
	jl _ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__70
	jz _ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__80
_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__120:
	mov ebx, [esi]
	mov [ebp-0x28], ebx
	mov ecx, [esi+0x4]
	mov [ebp-0x24], ecx
	mov edx, [esi+0x8]
	mov [ebp-0x20], edx
	mov eax, [esi+0xc]
	mov [ebp-0x1c], eax
	mov [esp+0x8], ebx
	mov [esp+0xc], ecx
	mov [esp+0x10], edx
	mov [esp+0x14], eax
	mov ecx, [ebp-0x34]
	mov [esp+0x4], ecx
	mov [esp], edi
	call _ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_T0_
	mov ebx, eax
	mov eax, [ebp-0x2c]
	mov [esp+0x8], eax
	mov edx, [ebp-0x34]
	mov [esp+0x4], edx
	mov [esp], ebx
	call _ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__90
	mov [ebp-0x34], ebx
	mov eax, ebx
	sub eax, edi
	sar eax, 0x4
	cmp eax, 0x10
	jle _ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__10
	add dword [ebp-0x30], 0x1
	mov ecx, [ebp-0x30]
	cmp [ebp-0x40], ecx
	jnz _ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__100
_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__20:
	mov ebx, [ebp-0x34]
	mov [ebp+0x10], ebx
	mov [ebp+0xc], ebx
	mov [ebp+0x8], edi
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _ZSt12partial_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8_S8_
_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__40:
	mov eax, [eax+0x4]
	cmp [edi+0x4], eax
	jl _ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__30
	jnz _ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__110
	mov eax, [esi+0x8]
	cmp [edi+0x8], eax
	jl _ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__30
	jnz _ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__110
	mov eax, [edi+0xc]
	cmp eax, [esi+0xc]
	jge _ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__110
_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__30:
	mov ebx, [ebp-0x4c]
	mov ebx, [ebx]
	mov [ebp-0x3c], ebx
	cmp edx, ebx
	jl _ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__120
	jz _ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__130
_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__160:
	cmp ecx, [ebp-0x3c]
	jl _ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__70
	jz _ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__140
_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__50:
	mov esi, edi
	jmp _ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__120
_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__80:
	mov ebx, [ebp-0x4c]
	mov eax, [ebx+0x4]
	mov edx, [ebp-0x44]
	cmp [edx+0x4], eax
	jl _ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__150
	jnz _ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__120
	mov eax, [ebx+0x8]
	cmp [edx+0x8], eax
	jl _ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__70
	jnz _ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__120
	mov eax, [edx+0xc]
	cmp eax, [ebx+0xc]
	jge _ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__120
_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__70:
	mov esi, [ebp-0x4c]
	jmp _ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__120
_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__10:
	add esp, 0x6c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__130:
	mov edx, [ebp-0x4c]
	mov eax, [edx+0x4]
	mov ebx, [ebp-0x44]
	cmp [ebx+0x4], eax
	jl _ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__120
	jnz _ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__160
	mov eax, [edx+0x8]
	cmp [ebx+0x8], eax
	jl _ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__120
	jnz _ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__160
	mov eax, [ebx+0xc]
	cmp eax, [edx+0xc]
	jl _ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__120
	jmp _ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__160
_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__140:
	mov edx, [ebp-0x4c]
	mov eax, [edx+0x4]
	cmp [edi+0x4], eax
	jl _ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__170
	jnz _ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__50
	mov eax, [edx+0x8]
	cmp [edi+0x8], eax
	jl _ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__70
	jnz _ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__50
	mov eax, [edi+0xc]
	cmp eax, [edx+0xc]
	jge _ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__50
	mov esi, [ebp-0x4c]
	jmp _ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__120
_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__60:
	mov ecx, [ebp-0x4c]
	mov eax, [ecx+0x4]
	cmp [edi+0x4], eax
	jl _ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__50
	jnz _ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__180
	mov eax, [ecx+0x8]
	cmp [edi+0x8], eax
	jl _ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__50
	jnz _ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__180
	mov eax, [edi+0xc]
	cmp eax, [ecx+0xc]
	jge _ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__180
	mov esi, edi
	jmp _ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__120
_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__170:
	mov esi, edx
	jmp _ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__120
_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__150:
	mov esi, ebx
	jmp _ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiEvT_S8_T0__120
	nop


;__gnu_cxx::__normal_iterator<CResInfo*, std::vector<CResInfo, std::allocator<CResInfo> > > std::__unguarded_partition<__gnu_cxx::__normal_iterator<CResInfo*, std::vector<CResInfo, std::allocator<CResInfo> > >, CResInfo>(__gnu_cxx::__normal_iterator<CResInfo*, std::vector<CResInfo, std::allocator<CResInfo> > >, __gnu_cxx::__normal_iterator<CResInfo*, std::vector<CResInfo, std::allocator<CResInfo> > >, CResInfo)
_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_T0_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x14
	mov edi, [ebp+0x8]
	mov eax, [ebp+0x1c]
	mov [ebp-0x1c], eax
	mov edx, [ebp+0x18]
	mov [ebp-0x18], edx
	mov eax, [ebp+0x14]
	mov [ebp-0x14], eax
	mov edx, [ebp+0x10]
	mov [ebp-0x10], edx
	mov esi, [ebp+0xc]
_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_T0__70:
	mov eax, [edi]
	mov [ebp-0x20], eax
	cmp [ebp-0x10], eax
	jg _ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_T0__10
_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_T0__60:
	jz _ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_T0__20
_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_T0__30:
	sub esi, 0x10
	mov eax, [esi]
	cmp [ebp-0x10], eax
	jl _ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_T0__30
	jz _ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_T0__40
_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_T0__80:
	cmp esi, edi
	jbe _ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_T0__50
	mov edx, [edi+0xc]
	mov ecx, [edi+0x8]
	mov ebx, [edi+0x4]
	mov [edi], eax
	mov eax, [esi+0x4]
	mov [edi+0x4], eax
	mov eax, [esi+0x8]
	mov [edi+0x8], eax
	mov eax, [esi+0xc]
	mov [edi+0xc], eax
	mov [esi+0xc], edx
	mov [esi+0x8], ecx
	mov [esi+0x4], ebx
	mov eax, [ebp-0x20]
	mov [esi], eax
	add edi, 0x10
	mov eax, [edi]
	mov [ebp-0x20], eax
	cmp [ebp-0x10], eax
	jle _ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_T0__60
_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_T0__10:
	add edi, 0x10
	jmp _ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_T0__70
_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_T0__40:
	mov edx, [ebp-0x14]
	cmp edx, [esi+0x4]
	jl _ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_T0__30
	jnz _ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_T0__80
	mov edx, [ebp-0x18]
	cmp edx, [esi+0x8]
	jl _ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_T0__30
	jnz _ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_T0__80
	mov edx, [ebp-0x1c]
	cmp edx, [esi+0xc]
	jl _ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_T0__30
	jmp _ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_T0__80
_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_T0__20:
	mov edx, [ebp-0x14]
	cmp edx, [edi+0x4]
	jg _ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_T0__10
	jnz _ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_T0__30
	mov eax, [ebp-0x18]
	cmp eax, [edi+0x8]
	jg _ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_T0__10
	jnz _ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_T0__30
	mov edx, [ebp-0x1c]
	cmp edx, [edi+0xc]
	jle _ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_T0__30
	add edi, 0x10
	jmp _ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_T0__70
_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_T0__50:
	mov eax, edi
	add esp, 0x14
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret


;void std::__final_insertion_sort<__gnu_cxx::__normal_iterator<CResInfo*, std::vector<CResInfo, std::allocator<CResInfo> > > >(__gnu_cxx::__normal_iterator<CResInfo*, std::vector<CResInfo, std::allocator<CResInfo> > >, __gnu_cxx::__normal_iterator<CResInfo*, std::vector<CResInfo, std::allocator<CResInfo> > >)
_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edx, [ebp+0x8]
	mov edi, [ebp+0xc]
	mov eax, edi
	sub eax, edx
	sar eax, 0x4
	cmp eax, 0x10
	jle _ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8__10
	lea ebx, [edx+0x100]
	mov [esp+0x4], ebx
	mov [esp], edx
	call _ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8_
	mov esi, ebx
	cmp ebx, edi
	jz _ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8__20
_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8__30:
	mov ebx, [esi]
	mov [ebp-0x28], ebx
	mov ecx, [esi+0x4]
	mov [ebp-0x24], ecx
	mov edx, [esi+0x8]
	mov [ebp-0x20], edx
	mov eax, [esi+0xc]
	mov [ebp-0x1c], eax
	mov [esp+0x4], ebx
	mov [esp+0x8], ecx
	mov [esp+0xc], edx
	mov [esp+0x10], eax
	mov [esp], esi
	call _ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEES2_EvT_T0_
	add esi, 0x10
	cmp edi, esi
	jnz _ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8__30
_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8__20:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8__10:
	mov [ebp+0xc], edi
	mov [ebp+0x8], edx
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	jmp _ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8_
	nop


;void std::__unguarded_linear_insert<__gnu_cxx::__normal_iterator<CResInfo*, std::vector<CResInfo, std::allocator<CResInfo> > >, CResInfo>(__gnu_cxx::__normal_iterator<CResInfo*, std::vector<CResInfo, std::allocator<CResInfo> > >, CResInfo)
_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEES2_EvT_T0_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x8
	mov ecx, [ebp+0x8]
	mov eax, [ebp+0x18]
	mov [ebp-0x10], eax
	mov edi, [ebp+0x14]
	mov [ebp-0x14], edi
	mov esi, [ebp+0x10]
	mov ebx, [ebp+0xc]
	lea edx, [ecx-0x10]
_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEES2_EvT_T0__50:
	mov eax, [edx]
	cmp eax, ebx
	jg _ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEES2_EvT_T0__10
	jz _ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEES2_EvT_T0__20
_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEES2_EvT_T0__30:
	mov eax, [ebp-0x10]
_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEES2_EvT_T0__60:
	mov [ecx+0xc], eax
	mov edi, [ebp-0x14]
	mov [ecx+0x8], edi
	mov [ecx+0x4], esi
	mov [ecx], ebx
	add esp, 0x8
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEES2_EvT_T0__20:
	cmp esi, [edx+0x4]
	jl _ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEES2_EvT_T0__10
	jnz _ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEES2_EvT_T0__30
	mov edi, [ebp-0x14]
	cmp [edx+0x8], edi
	jle _ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEES2_EvT_T0__40
_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEES2_EvT_T0__10:
	mov [ecx], eax
	mov eax, [edx+0x4]
	mov [ecx+0x4], eax
	mov eax, [edx+0x8]
	mov [ecx+0x8], eax
	mov eax, [edx+0xc]
	mov [ecx+0xc], eax
	mov ecx, edx
	sub edx, 0x10
	jmp _ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEES2_EvT_T0__50
_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEES2_EvT_T0__40:
	jnz _ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEES2_EvT_T0__30
	mov edi, [ebp-0x10]
	cmp edi, [edx+0xc]
	jl _ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEES2_EvT_T0__10
	mov eax, edi
	jmp _ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEES2_EvT_T0__60


;void std::make_heap<__gnu_cxx::__normal_iterator<CResInfo*, std::vector<CResInfo, std::allocator<CResInfo> > > >(__gnu_cxx::__normal_iterator<CResInfo*, std::vector<CResInfo, std::allocator<CResInfo> > >, __gnu_cxx::__normal_iterator<CResInfo*, std::vector<CResInfo, std::allocator<CResInfo> > >)
_ZSt9make_heapIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8_:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x4c
	mov eax, [ebp+0x8]
	sub [ebp+0xc], eax
	sar dword [ebp+0xc], 0x4
	cmp dword [ebp+0xc], 0x1
	jle _ZSt9make_heapIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8__10
	mov eax, [ebp+0xc]
	sub eax, 0x2
	mov edx, eax
	shr edx, 0x1f
	lea edi, [edx+eax]
	sar edi, 1
	mov eax, edi
	shl eax, 0x4
	mov edx, [ebp+0x8]
	lea esi, [eax+edx]
	mov dword [ebp-0x2c], 0x0
	jmp _ZSt9make_heapIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8__20
_ZSt9make_heapIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8__30:
	add dword [ebp-0x2c], 0x1
_ZSt9make_heapIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8__20:
	mov ebx, [esi]
	mov [ebp-0x28], ebx
	mov ecx, [esi+0x4]
	mov [ebp-0x24], ecx
	mov edx, [esi+0x8]
	mov [ebp-0x20], edx
	mov eax, [esi+0xc]
	mov [ebp-0x1c], eax
	mov [esp+0xc], ebx
	mov [esp+0x10], ecx
	mov [esp+0x14], edx
	mov [esp+0x18], eax
	mov eax, [ebp+0xc]
	mov [esp+0x8], eax
	mov eax, edi
	sub eax, [ebp-0x2c]
	mov [esp+0x4], eax
	mov edx, [ebp+0x8]
	mov [esp], edx
	call _ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEiS2_EvT_T0_S9_T1_
	sub esi, 0x10
	cmp edi, [ebp-0x2c]
	jnz _ZSt9make_heapIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8__30
_ZSt9make_heapIN9__gnu_cxx17__normal_iteratorIP8CResInfoSt6vectorIS2_SaIS2_EEEEEvT_S8__10:
	add esp, 0x4c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
	nop


;Initialized global or static variables of MacDisplay:
SECTION .data
sEnableSwap: dd 0x1
kInWindowModeKey: dd _cstring_macdisplaywindow
kDisplayRectKey: dd _cstring_macdisplayrect
kDisplayIndexKey: dd _cstring_macdisplayindex
kFirstTimeKey: dd _cstring_macdisplayfirst, 0x0, 0x0, 0x0


;Initialized constant data of MacDisplay:
SECTION .rdata


;Zero initialized global or static variables of MacDisplay:
SECTION .bss
sRectList: resb 0xc
sDisplayList: resb 0xc
sSharedContext: resb 0x18
sScreenContext: resb 0x18
sPreviousDisplayMode: resb 0x4
sFullscreenPort: resb 0x4
sSwapCount: resb 0x4
sCaptureMedia: resb 0x8
sMainWindow: resb 0x4
sCaptureMovie: resb 0x20
sCaptureName: resb 0x100
sCaptureTrack: resb 0x4
sCaptureRefNum: resb 0x4
sDisplayID: resb 0x4
sSystemGammaGreen: resb 0x4
sSystemGammaBlue: resb 0x4
sSystemGammaRed: resb 0x4
sInWindowMode: resb 0x4
sCustomGammaGreen: resb 0x4
sCustomGammaBlue: resb 0x4
sCustomGammaRed: resb 0x4
sIsSuspended: resb 0x1
sIsAntialiased: resb 0x3
sDisplayRefreshRate: resb 0x4
sDisplayDepth: resb 0x4
sDisplayIndex: resb 0x4
sFadeToken: resb 0x4
sInitialized: resb 0x4
sDisplayRect: resb 0x10
sMainDisplayID: resb 0x4
sMainRect: resb 0x2c


;All CFStrings:

STRUC CFString
.isa: RESD 1
.flags: RESD 1
.str: RESD 1
.length: RESD 1
ENDSTRUC

SECTION .rdata
_cfstring_kcgdisplaymodeis:		ISTRUCT CFString
AT CFString.isa, dd 0
AT CFString.flags, dd 0x7c8
AT CFString.str dd _cstring_kcgdisplaymodeis
AT CFString.length dd 25
IEND

_cfstring_displayconfig:		ISTRUCT CFString
AT CFString.isa, dd 0
AT CFString.flags, dd 0x7c8
AT CFString.str dd _cstring_displayconfig
AT CFString.length dd 13
IEND

_cfstring_refreshrate:		ISTRUCT CFString
AT CFString.isa, dd 0
AT CFString.flags, dd 0x7c8
AT CFString.str dd _cstring_refreshrate
AT CFString.length dd 11
IEND

_cfstring_width:		ISTRUCT CFString
AT CFString.isa, dd 0
AT CFString.flags, dd 0x7c8
AT CFString.str dd _cstring_width
AT CFString.length dd 5
IEND

_cfstring_height:		ISTRUCT CFString
AT CFString.isa, dd 0
AT CFString.flags, dd 0x7c8
AT CFString.str dd _cstring_height
AT CFString.length dd 6
IEND

_cfstring_bitsperpixel:		ISTRUCT CFString
AT CFString.isa, dd 0
AT CFString.flags, dd 0x7c8
AT CFString.str dd _cstring_bitsperpixel
AT CFString.length dd 12
IEND

_cfstring_model:		ISTRUCT CFString
AT CFString.isa, dd 0
AT CFString.flags, dd 0x7c8
AT CFString.str dd _cstring_model
AT CFString.length dd 5
IEND

_cfstring_vendorid:		ISTRUCT CFString
AT CFString.isa, dd 0
AT CFString.flags, dd 0x7c8
AT CFString.str dd _cstring_vendorid
AT CFString.length dd 9
IEND

_cfstring_deviceid:		ISTRUCT CFString
AT CFString.isa, dd 0
AT CFString.flags, dd 0x7c8
AT CFString.str dd _cstring_deviceid
AT CFString.length dd 9
IEND




;All cstrings:
SECTION .rdata
_cstring_display_no_valid:		db "Display: no valid displays",0
_cstring_enabling_multisa:		db "Enabling multisampling %d.",0ah,0
_cstring_gl_nv_multisampl:		db "GL_NV_multisample_filter_hint",0
_cstring_display_turn_off:		db "Display: turn off fsaa",0
_cstring_multisampling_di:		db "Multisampling disabled.",0ah,0
_cstring_2600:		db "2600",0
_cstring_display_disable_:		db "Display: disable aux-buffer",0
_cstring_display_no_devic:		db "Display: no device",0
_cstring_display_all_rend:		db "Display: all renderers",0
_cstring_display_downgrad:		db "Display: downgrade z-buffer",0
_cstring_gl_arb_fragment_:		db "GL_ARB_fragment_program",0
_cstring_gl_ext_texture_f:		db "GL_EXT_texture_filter_anisotropic",0
_cstring_nvidia:		db "nvidia",0
_cstring_gl_ext_framebuff:		db "GL_EXT_framebuffer_object",0
_cstring_gl_ext_blend_fun:		db "GL_EXT_blend_func_separate",0
_cstring_x1900:		db "x1900",0
_cstring_x1600:		db "x1600",0
_cstring_ioframebuffer:		db "IOFramebuffer",0
_cstring_ioservice:		db "IOService",0
_cstring_iopcidevice:		db "IOPCIDevice",0
_cstring_gl_nv_texture_sh:		db "GL_NV_texture_shader",0
_cstring_gl_nv_register_c:		db "GL_NV_register_combiners2",0
_cstring_gl_ati_text_frag:		db "GL_ATI_text_fragment_shader",0
_cstring_intel:		db "intel",0
_cstring_ioagpdevice:		db "IOAGPDevice",0
_cstring_iondrvdevice:		db "IONDRVDevice",0
_cstring_iodevicetree:		db "IODeviceTree",0
_cstring_vector_m_insert_:		db "vector::_M_insert_aux",0
_cstring_macdisplaywindow:		db "mac.display.window",0
_cstring_macdisplayrect:		db "mac.display.rect",0
_cstring_macdisplayindex:		db "mac.display.index",0
_cstring_macdisplayfirst:		db "mac.display.first",0
_cstring_kcgdisplaymodeis:		db "kCGDisplayModeIsStretched",0
_cstring_displayconfig:		db "DisplayConfig",0
_cstring_refreshrate:		db "RefreshRate",0
_cstring_width:		db "Width",0
_cstring_height:		db "Height",0
_cstring_bitsperpixel:		db "BitsPerPixel",0
_cstring_model:		db "model",0
_cstring_vendorid:		db "vendor-id",0
_cstring_deviceid:		db "device-id",0



;All constant floats and doubles:
SECTION .rdata
_float_0_00390625:		dd 0x3b800000	; 0.00390625

