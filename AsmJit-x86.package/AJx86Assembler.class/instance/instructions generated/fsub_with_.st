fsub: aX87Register1 with: aX87Register2
	"
	see #fsub"
	^ self 
		addInstruction: #fsub
		operands: { aX87Register1 . aX87Register2 }