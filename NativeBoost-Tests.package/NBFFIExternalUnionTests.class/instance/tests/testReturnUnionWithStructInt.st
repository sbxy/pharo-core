testReturnUnionWithStructInt
	|s|
	NBNativeCodeGen removeNativeCodeFrom: self class >> #returnUnionWithStructInt:.
	s := self returnUnionWithStructInt: 300.
	self assert: s z = 300