pushValue: gen

	"argument in ST(0) "

	| asm |
	asm := gen asm.
	
	asm sub: (asm ESP) with: 8.
	asm fstp: asm ESP ptr64
	
	