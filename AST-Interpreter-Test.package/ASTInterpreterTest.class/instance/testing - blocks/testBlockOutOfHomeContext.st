testBlockOutOfHomeContext
	
	self should:  [ self interpret: 'ASTInterpreterTest new errorBlock value' ]
		raise: InterpretationError.
	self assert: (self interpret: 'ASTInterpreterTest new block value') equals: 2.
	self assert: (self interpret: 'ASTInterpreterTest new blockTemp value') equals: 5.
	self assert: (self interpret: 'ASTInterpreterTest new blockTempWrite value') equals: 5.