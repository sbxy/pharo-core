isZoomed
	"Determines whether a window is maximized. "
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^self nbCall: #(BOOL IsZoomed(HWND self)) module: #user32
