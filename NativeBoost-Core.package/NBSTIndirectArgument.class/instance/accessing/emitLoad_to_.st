emitLoad: gen to: operand
	self emitLoad: gen.
	operand = gen asm EAX ifFalse:[gen asm mov: gen asm EAX to: operand]