cmovpe: aRegister with: aSourceRegisterOrMemory
	"
	"
	^ self 
		addInstruction: #cmovpe
		operands: { aRegister . aSourceRegisterOrMemory }