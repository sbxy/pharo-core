testIntCase3ExternalAddress 

	self should: [self readIntPtrCase3: (self intExternalAddress: 12345)] raise: NBFFICalloutError.