initializeWithCode: code fnSpec: aFnSpec
	
	| bytes |
	super initialize.
	
	fnSpec := aFnSpec.
	bytes := code bytes.
	handle := NativeBoost allocate: bytes size.
	NativeBoost 
		memCopy: bytes 
		to: handle 
		size: bytes size.