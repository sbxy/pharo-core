testLookUp

	self assert: (self interpret: '(ASTInterpreterTest selector: #foo) superSendInNestedBlock') equals: #foo.
	