cmovz: aRegister with: aSourceRegisterOrMemory
	"Conditional Move - zero/equal (ZF=0)
	"
	^ self 
		addInstruction: #cmovz
		operands: { aRegister . aSourceRegisterOrMemory }