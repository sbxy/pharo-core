fnsave: aMemoryOperand
	"Store x87 FPU State
	"
	^ self 
		addInstruction: #fnsave
		operands: { aMemoryOperand }