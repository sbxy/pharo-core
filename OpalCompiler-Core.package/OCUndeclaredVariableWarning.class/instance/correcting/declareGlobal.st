declareGlobal

	Smalltalk at: node name asSymbol put: nil.
	^ (node owningScope lookupVar: node name)
		ifNil: [self error: 'should be not happen']