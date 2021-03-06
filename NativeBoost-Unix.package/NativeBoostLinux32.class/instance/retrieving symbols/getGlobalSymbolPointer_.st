getGlobalSymbolPointer: symbolName 

	| bytes addr |
	bytes := ByteArray new: 8.
	self bootstrapGetGlobalSymbolPointer: symbolName into: bytes.
	addr := bytes unsignedLongAt: 1 bigEndian: false.
	
	addr = 0 ifTrue: [ self error: 'failed to get a symbol address: ', symbolName ].
	^ NBExternalAddress value: addr
	