emitUsing: emitter operand1: op1 operand2: op2 operand3: op3

	(self is64BitOnly and: [ emitter is64BitMode not ]) ifTrue: [ 
		self error: 'instruction is only for 64 bit mode' ].

	(self is32BitOnly and: [ emitter is32BitMode not ]) ifTrue: [ 
		self error: 'instruction is only for 32 bit mode' ].

	
	^ self perform: groupEmitSelector withArguments: 	{ emitter. op1. op2. op3 }