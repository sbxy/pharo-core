testNonLocalReturnExternal

	self assert: (self interpret: 'ASTInterpreterTest new returningBlockValue') 
		equals: ASTInterpreterTest new returningBlockValue
	
	
	