testLoop

	self assert: (self interpret: '
		|index|
		index := 1.
		[index := index + 1.
		index = 10 ] whileFalse.
		index
		') equals: 10.
		
	self assert: (self interpret: '
		ASTInterpreterTest new returningBlockInsideLoop
		') equals: ASTInterpreterTest new returningBlockInsideLoop.
		
	self assert: (self interpret: '
		ASTInterpreterTest new returningLoop
		') equals: ASTInterpreterTest new returningLoop.
	
	