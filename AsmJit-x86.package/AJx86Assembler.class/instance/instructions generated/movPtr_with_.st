movPtr: aRegisterOrImmedate1 with: aRegisterOrImmedate2
	"
	"
	^ self 
		addInstruction: #movPtr
		operands: { aRegisterOrImmedate1 . aRegisterOrImmedate2 }