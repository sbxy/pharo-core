testIndirectArgumentArrayOk
	| array |
	array := {1.
	2.
	3.
	4.
	5}.
	self assert: (self returnOop1Of: array) == 1.
	self assert: (self returnOop2Of: array) == 2.
	self assert: (self returnOop5Of: array) == 5