fcmovbe: aX87Register
	"FP Conditional Move - below or equal (CF=1 or ZF=1)
	"
	^ self 
		addInstruction: #fcmovbe
		operands: { aX87Register }