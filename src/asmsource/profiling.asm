;Imports of util:
	extern Profile_BeginInternal
	extern Profile_EndInternal

;Exports of util:
	global Profile_End
	global Profile_Begin


SECTION .text


Profile_Begin:
	pushad
	call Profile_BeginInternal
	popad
	ret

Profile_End:
	pushad
	call Profile_EndInternal
	popad
	ret
