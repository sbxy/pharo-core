testBlock
	self assert: ((self interpret: '[ 1 ]') isKindOf: ASTBlockClosure).
	
	self assert: (self interpret: '[ 1 ] value') = 1.
	self assert: (self interpret: '[^1] value') = 1.
	self assert: (self interpret: '[ 1 + 2 ] value') = 3.
	
	self assert: (self interpret: 'true ifTrue: [ 1 ] ifFalse: [ 0 ]') = 1.
	self assert: (self interpret: 'false ifTrue: [ 1 ] ifFalse: [ 0 ]') = 0.
	
	
	