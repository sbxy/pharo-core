pushDownInstVarFrom: aClass
	| refactoring |
	
	aClass ifNil: [ ^ self ].
	refactoring := self privatePushDownInstVarFrom: aClass.
	
	refactoring ifNil: [ ^ self ].
	refactoring model environment: self model browsedEnvironment.
	self performRefactoring: refactoring