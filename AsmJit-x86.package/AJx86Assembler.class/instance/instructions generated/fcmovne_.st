fcmovne: aX87Register
	"FP Conditional Move - not equal (ZF=0)
	"
	^ self 
		addInstruction: #fcmovne
		operands: { aX87Register }