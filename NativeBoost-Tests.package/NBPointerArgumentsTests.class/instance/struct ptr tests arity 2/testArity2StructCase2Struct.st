testArity2StructCase2Struct

	self should: [self arity2StructPtrCase2: (self structValue: 12345678)] raise: NBFFICalloutError.

