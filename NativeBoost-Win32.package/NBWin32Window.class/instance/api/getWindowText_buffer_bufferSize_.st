getWindowText: hWnd buffer: lpString bufferSize: nMaxCount
		<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
		^self nbCall: #(int GetWindowTextA(HWND hWnd, char* lpString, int nMaxCount)) 
			module: #user32
