foo: anArg
	|a|
	a := anArg.
	^thisContext copy asASTInterpreterContext.