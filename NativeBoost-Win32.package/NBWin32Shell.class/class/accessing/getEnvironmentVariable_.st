getEnvironmentVariable: variableName
	"Return the value of the given environment variable"
	
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode >
	 ^ self nbCall: #( String getenv (String variableName) ) module: NativeBoost CLibrary