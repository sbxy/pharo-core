jne: targetLabel
	"
	"
	^ self 
		addInstruction: #jne
		operands: { targetLabel }