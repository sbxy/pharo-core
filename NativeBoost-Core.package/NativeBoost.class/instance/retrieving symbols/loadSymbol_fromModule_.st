loadSymbol: aSymbolName fromModule: moduleName
	"module could be a string (name) or handle "

	| bytes module handle |
	
	bytes := ByteArray new: 8.
	moduleName isString ifTrue: [
		
		self 
			bootstrapLoadModule: moduleName asByteArray
			ofLength: moduleName size 
			into: bytes.
	
		module := bytes unsignedLongAt: 1 bigEndian: false.
		module = 0 ifTrue: [ ^ nil ].
	] ifFalse: [
		"if value is negative, use 32-bit complement"
		module := moduleName bitAnd: 16rFFFFFFFF.
	].
	self bootstrapLoadSymbol: aSymbolName asByteArray
		ofLength: aSymbolName size fromModule: module into: bytes.

	handle := bytes unsignedLongAt: 1 bigEndian: false.
	handle = 0 ifTrue: [ ^ nil ].

	^ NBExternalAddress value: handle
