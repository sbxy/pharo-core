jnz: targetLabel
	"Jump short if not zero/not equal (ZF=1)
	"
	^ self 
		addInstruction: #jnz
		operands: { targetLabel }