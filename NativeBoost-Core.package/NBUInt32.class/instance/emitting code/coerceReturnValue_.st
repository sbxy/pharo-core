coerceReturnValue: gen
	| asm |
	
	"convert signed byte to ST integer"
	asm := gen asm.
	
	gen proxy positive32BitIntegerFor: asm EAX.