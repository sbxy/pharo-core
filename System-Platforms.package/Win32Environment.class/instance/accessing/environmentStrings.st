environmentStrings
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode >
	 ^ self nbCall: #( void * GetEnvironmentStrings () ) module: #Kernel32