structExternalAddress: aValue 
	^(toBeFreed := self class structArrayType externalNew: 1)
		at: 1 put: (self structValue: aValue);
		address.
	