messageBox: hWnd text: lpText title: lpCaption flags: uType

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>

	^ self nbCallout stdcall function: #(int MessageBoxA(
  			HWND hWnd,
    			LPCTSTR  lpText,
    			LPCTSTR  lpCaption,
      		UINT uType
		)) module: #user32