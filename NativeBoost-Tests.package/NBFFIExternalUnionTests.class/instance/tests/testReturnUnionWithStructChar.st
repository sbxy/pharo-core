testReturnUnionWithStructChar
	| s |
	NBNativeCodeGen removeNativeCodeFrom: self class >> #returnUnionWithStructChar:.
	s := self returnUnionWithStructChar: $,.
	self assert: s x = $,