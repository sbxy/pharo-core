testMethodContextWithClosureContextWithOutPointerTesting
	"This test should be improved"
	| methodContext1  materializedMethodContext1  |
	methodContext1 := self class blockClosureContextWithOutPointerTesting.
	self assert: (methodContext1 tempNamed: 'string') = 'test'. 
	materializedMethodContext1 := self resultOfSerializeAndMaterialize: methodContext1.
	self assert: (materializedMethodContext1 tempNamed: 'string') = 'test'. 
	methodContext1 assertWellMaterializedInto: materializedMethodContext1 in: self.
	
