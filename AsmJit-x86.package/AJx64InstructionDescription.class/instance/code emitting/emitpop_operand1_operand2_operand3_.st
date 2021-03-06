emitpop: emitter operand1: op1 operand2: op2 operand3: op3
	op1 isReg ifTrue: [
		self assert: op1 isGeneralPurpose.
		(op1 is32 or: [ op1 is8 ]) 
			ifTrue: [ Error signal: 'invalid register ', op1 name, '. push/pop requires 64bit/16bit reg in 64bit mode'].
		^ emitter emitX86Inl: opCode1 reg: op1 withRex: op1 isUpperBank.
		].
	
	op1 isMem ifFalse: [ self invalidInstruction ].
	emitter emitX86RM: opCode2 size: op1 size regOrCode: opCodeR rm: op1
