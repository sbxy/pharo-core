fnstcw: aMemoryOperand
	"Store x87 FPU Control Word
	"
	^ self 
		addInstruction: #fnstcw
		operands: { aMemoryOperand }