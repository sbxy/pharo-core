privatePullUpMethodsFor: aCollection
	| selectors class |
	selectors := aCollection collect: #selector.
	class := aCollection first methodClass.
	(aCollection allSatisfy: [:e | e methodClass == class ]) ifFalse: [ ^ nil ].
	
	^ RBPullUpMethodRefactoring
		model: environment
		pullUp: selectors
		from: class