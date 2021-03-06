testMethodArgs
	|methodCtx|
	
	"foo: anArg
	|a|
	a := anArg.
	^thisContext copy asASTInterpreterContext."
	methodCtx := self foo: 'bar'.
	
	self assert: (methodCtx arguments includes: 'bar').
	self assert: (methodCtx temporaries at: 'a') =  'bar'.
	self assert: (methodCtx temporaries at: 'anArg') =  'bar'.