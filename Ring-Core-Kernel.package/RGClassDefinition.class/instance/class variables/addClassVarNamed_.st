addClassVarNamed: aString
	| var |
	var:= self factory createClassVariableNamed: aString parent: self.
	self addVariable: var in: classVariables.
	^var