emitincdec: emitter operand1: dst operand2: op2 operand3: op3

	dst isRegMem ifFalse: [ ^ self invalidInstruction ].

	"INC [r16|r32] in 64 bit mode is not encodable."
	emitter is32BitMode ifTrue: [
		(dst isReg & dst isRegTypeGPW & dst isRegTypeGPD) ifTrue: [ 
		^ emitter emitX86Inl: opCode1	reg: dst
	]].

	emitter emitX86RM:  opCode2 + (dst size ~= 1) asBit
		size: dst size
		regOrCode:  opCodeR
		rm:  dst
