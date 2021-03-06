emitmovSxZx: emitter operand1: dst operand2: src operand3: op3

	dst isReg & src isRegMem ifFalse: [ self invalidInstruction ].
	
	dst isRegTypeGPB ifTrue: [ self invalidInstruction ].
	
	(src size ~= 2 and: [src size ~= 1 ]) ifTrue: [ self invalidInstruction ].
	(src size = 2 and: [dst isRegTypeGPW ]) ifTrue: [ self invalidInstruction ].
	
	src size = 2 ifTrue: [
		^ emitter emitX86RM: opCode1 + 1 size: dst size regOrCode: dst rm: src
		].
	
	emitter emitX86RM: opCode1 size: dst size regOrCode: dst rm: src
