interpretInstruction: irInstruction

	indent timesRepeat: [stream tab].
	super interpretInstruction: irInstruction.
	stream cr.
