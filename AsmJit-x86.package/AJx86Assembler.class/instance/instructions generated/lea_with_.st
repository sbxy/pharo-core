lea: aDestinationRegister with: aSourceMemory
	"Load Effective Address
	"
	^ self 
		addInstruction: #lea
		operands: { aDestinationRegister . aSourceMemory }