testInterpretBasic
	|ctx result block |
	
	<expectedFailure>
	
	block := [ctx := thisContext copy.self fooAdd2: 4 ].
	block value.
	result := ASTInterpreter interpretVMContext: ctx.
	"self assert: (result isKindOf: ASTBlockClosure).
	self assert: (result homeContext tempNamed: #tmp) equals: block value."
	self assert: result equals: 6.