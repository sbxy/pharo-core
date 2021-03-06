visitVariableNode: aVariableNode
	| var |
	var := (self lookupVariableForRead: aVariableNode) ifNil: [(self undeclaredVariable: aVariableNode)].
	 "written variables in loops need special care... needs to be checked"
	(var isTemp and: [var isEscaping and: [scope outerScope isInsideOptimizedLoop]])
		ifTrue: [
			var isWrite ifTrue: [var markEscapingWrite].
			var isRead ifTrue: [var markEscapingRead]].
	aVariableNode binding: var.
	var isUninitialized ifTrue: [self uninitializedVariable: aVariableNode].