testReturnStruct9Bytes

	| s |
	
	NBNativeCodeGen removeNativeCodeFrom: self class >> #returnStruct9Bytes.

	s := self returnStruct9Bytes.
	
	self assert: s x = 1.
	self assert: s y = 2.
	self assert: s field asciiValue = 3.