abstractInstVarFrom: aClass
	| refactoring |
	
	aClass ifNil: [ ^ self ].
	refactoring := self privateAbstractInstVarFrom: aClass.
	
	refactoring ifNil: [ ^ self ].
	refactoring model environment: self model browsedEnvironment.
	self performRefactoring: refactoring