testReturnUnionUnionDouble
	| s |
	NBNativeCodeGen removeNativeCodeFrom: self class >> #returnUnionUnionDouble:.
	s := self returnUnionUnionDouble: 2.3.

	self assert: (s z closeTo: 2.3)