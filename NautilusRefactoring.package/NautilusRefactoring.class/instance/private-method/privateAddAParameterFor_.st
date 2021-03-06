privateAddAParameterFor: aMethod
	| initializer newSelector initialAnswer oldSelector |
	
	oldSelector := aMethod selector.
	
	initialAnswer := oldSelector numArgs = 0
		ifTrue: [ oldSelector , ':' ]
		ifFalse: [ oldSelector ].
		
	newSelector := self request: 'Enter new selector:' initialAnswer: initialAnswer.
	newSelector isEmptyOrNil ifTrue: [ ^ nil ].
	
	initializer := self request: 'Enter default value for parameter:' initialAnswer: 'nil'.
	initializer isEmpty ifTrue: [ ^ nil ].

	^ RBAddParameterRefactoring
		model: environment
		addParameterToMethod: aMethod selector
		in: aMethod origin
		newSelector: newSelector asSymbol
		initializer: initializer
