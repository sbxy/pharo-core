jo: targetLabel
	"Jump short if overflow (OF=1)
	"
	^ self 
		addInstruction: #jo
		operands: { targetLabel }