jb: targetLabel
	"Jump short if below/not above or equal/carry (CF=1)
	"
	^ self 
		addInstruction: #jb
		operands: { targetLabel }