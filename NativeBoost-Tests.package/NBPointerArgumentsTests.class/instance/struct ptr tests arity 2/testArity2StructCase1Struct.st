testArity2StructCase1Struct

	"normally this test should fail, but it crashes the VM, because NBExternalStructure is variable byte class that gets captured by +optAllowByteArraysPtr"
	

	self should: [(self arity2StructPtrCase1: (self structValue: 12345678)).] raise: NBFFICalloutError.

