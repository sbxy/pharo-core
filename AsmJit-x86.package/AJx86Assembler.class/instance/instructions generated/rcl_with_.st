rcl: aDestinationRegisterOrMemory with: aRegisterOrImmediate
	"Rotate
	"
	^ self 
		addInstruction: #rcl
		operands: { aDestinationRegisterOrMemory . aRegisterOrImmediate }