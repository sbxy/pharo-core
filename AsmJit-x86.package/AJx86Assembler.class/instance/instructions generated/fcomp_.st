fcomp: aMemoryOperand
	"Compare Real and Pop
	"
	^ self 
		addInstruction: #fcomp
		operands: { aMemoryOperand }