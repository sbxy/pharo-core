emitEpilogue: popExtraBytes assembler: asm

	asm leave.
	
	popExtraBytes > 0 ifTrue: [
		asm ret: popExtraBytes asUImm
		]
	ifFalse: [
		asm ret.
		].