visitBlockNode: aBlockNode
	^ ASTBlockClosure new
		homeContext: self context;
		code: aBlockNode