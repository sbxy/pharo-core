visitVariableNode: aVariableNode

	aVariableNode name first isUppercase 
		ifTrue: [environment ifNil: [ ^ self visitClassReferenceNode: aVariableNode ]].

	self 
		addStyle: (self resolveStyleFor: aVariableNode) 
		attribute: (TextVariableLink variableName: aVariableNode name)
		forNode: aVariableNode.
	
	