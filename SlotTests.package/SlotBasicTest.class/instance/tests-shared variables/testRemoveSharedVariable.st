testRemoveSharedVariable

	self make: [ :builder | 
		builder sharedVariables: 'Var' ].

	aClass := self make: [ :builder | 
		builder sharedVariables: '' ].
	
	self assert: aClass classVarNames isEmpty