pullUpClassVarFrom: aClass
	| refactoring |
	
	aClass ifNil: [ ^ self ].
	refactoring := self privatePullUpClassVarFrom: aClass.
	
	refactoring ifNil: [ ^ self ].
	refactoring model environment: self model browsedEnvironment.
	self performRefactoring: refactoring