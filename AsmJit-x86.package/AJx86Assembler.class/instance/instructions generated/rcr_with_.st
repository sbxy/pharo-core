rcr: aDestinationRegisterOrMemory with: aRegisterOrImmediate
	"Rotate
	"
	^ self 
		addInstruction: #rcr
		operands: { aDestinationRegisterOrMemory . aRegisterOrImmediate }