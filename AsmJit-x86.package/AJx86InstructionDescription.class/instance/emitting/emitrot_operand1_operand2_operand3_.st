emitrot: emitter operand1: op1 operand2: op2 operand3: op3
	| useImm8 opCode |
	op1 isRegMem & ((op2 isRegTypeGPB and: [ op2 index =  1 "cl" ]) | op2 isImm) ifFalse: [ self invalidInstruction ].
	
	useImm8 := op2 isImm and: [ (op2 value ~= 1) | (op2 relocMode ~~ #RelocNone) ].
	opCode := useImm8 ifTrue: [ 16rC0 ] ifFalse: [ 16rD0 ].

	op1 size ~= 1 ifTrue: [ opCode := opCode bitOr: 1 ].
	op2 isReg ifTrue: [ opCode := opCode bitOr: 2 ].
	
	emitter emitX86RM: opCode
		size: op1 size
		regOrCode: opCodeR
		rm: 	op1
		immSize: useImm8 asBit.
	
	useImm8 ifTrue: [
		emitter emitImmediate: op2 size: 1
		]
