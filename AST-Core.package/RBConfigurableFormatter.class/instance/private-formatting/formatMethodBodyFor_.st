formatMethodBodyFor: aMethodNode 
	self
		indentAround: 
			[self newLines: NewLinesAfterMethodPattern.
			self formatMethodCommentFor: aMethodNode.
			self formatPragmasFor: aMethodNode.
			self visitNode: aMethodNode body]