openEnvironment: anEnvironment for: aRefactoring
	
	anEnvironment isEmpty
		ifTrue: [ ^ self inform: 'Empty scope' ].
	
	Smalltalk tools browser fullOnEnvironment: anEnvironment