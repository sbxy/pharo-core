testStructCase2ExternalAddress 
	| value | 
	value := 12345678.
	self should: [ self readStructPtrCase2: (self structExternalAddress: value) ] raise: NBFFICalloutError .
