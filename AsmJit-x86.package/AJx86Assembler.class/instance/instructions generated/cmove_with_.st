cmove: aRegister with: aSourceRegisterOrMemory
	"
	"
	^ self 
		addInstruction: #cmove
		operands: { aRegister . aSourceRegisterOrMemory }