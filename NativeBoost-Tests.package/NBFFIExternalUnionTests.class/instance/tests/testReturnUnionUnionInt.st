testReturnUnionUnionInt
	| s |
	NBNativeCodeGen removeNativeCodeFrom: self class >> #returnUnionUnionInt:.
	s := self returnUnionUnionInt: 2344.
	self assert: s union x = 2344