fsave: aMemoryOperand
	"Store x87 FPU State
	"
	^ self 
		addInstruction: #fsave
		operands: { aMemoryOperand }