methodApicall
	^'methodApicall: aHWND
		<apicall: Win32HDC ''GetDC'' (Win32Window bool bool*) module: ''user32.dll''>
		^self externalCallFailed'