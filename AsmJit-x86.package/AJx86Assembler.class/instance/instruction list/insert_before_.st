insert: newInstruction before: anInstruction

	"insert one or more instructions before an instruction"
	
	^ instructions := instructions insert: newInstruction before: anInstruction