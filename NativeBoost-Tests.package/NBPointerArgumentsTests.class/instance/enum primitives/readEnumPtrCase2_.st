readEnumPtrCase2: arg 
	"this is the default case where both optAllowByteArraysPtr optAllowExternalAddressPtr are enabled"
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	
	^self primitiveEnum: arg case: self case2.