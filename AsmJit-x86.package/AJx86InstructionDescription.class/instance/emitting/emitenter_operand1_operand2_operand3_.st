emitenter: emitter operand1: op1 operand2: op2 operand3: op3

	(op1 isImm and: [ op2 isImm ]) ifFalse: [ self invalidInstruction ].
	
	emitter emitByte: 16rC8.
	emitter emitImmediate: op1 size: 2.
	emitter emitImmediate: op2 size: 1.
