isIconic
	"Determines whether the specified window is minimized (iconic). "
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^self nbCall: #(BOOL IsIconic(HWND self)) module: #user32
