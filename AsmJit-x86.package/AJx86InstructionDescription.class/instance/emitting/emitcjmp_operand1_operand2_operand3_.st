emitcjmp: emitter operand1: target operand2: hint operand3: op3
	"Conditional jump.
	Use only symbols as labels"

	
	target isString ifTrue: [
		"jump on label"
		^ emitter addJump: target condition: opCode1 hint: hint
	].
	
	"we could check if label is bound , and emit short jump, 
	instead of 32-bit relative jump address"
	self invalidInstruction.
	emitter emitByte: 16r0F;
		emitByte: (16r80 bitOr: opCode1);
		emitDisplacement: target inlinedDisp: -4
