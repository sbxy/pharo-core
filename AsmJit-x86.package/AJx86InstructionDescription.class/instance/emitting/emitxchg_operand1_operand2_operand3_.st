emitxchg: emitter operand1: dst operand2: src operand3: op3

	dst isRegMem & src isReg ifFalse: [ self invalidInstruction ].
	
	emitter emitSizePrefix: src segment: dst.
	
	"Special opcode for index 0 registers (AX, EAX, RAX vs register)"
	dst isReg & (dst size > 1) & (dst index =0 or: [ src index = 0 ] ) ifTrue: [
			| index |
			index := dst index + src index.
			^ emitter emitByte: 16r90 + index.
		].
	
	emitter emitByte: 16r86 + src isRegTypeGPB not asBit.
	dst emitModRM: emitter code: src code immSize: 0