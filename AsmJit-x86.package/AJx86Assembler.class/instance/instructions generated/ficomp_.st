ficomp: aMemoryOperand
	"Compare Integer and Pop
	"
	^ self 
		addInstruction: #ficomp
		operands: { aMemoryOperand }