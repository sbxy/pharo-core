fnstenv: aMemoryOperand
	"Store x87 FPU Environment
	"
	^ self 
		addInstruction: #fnstenv
		operands: { aMemoryOperand }