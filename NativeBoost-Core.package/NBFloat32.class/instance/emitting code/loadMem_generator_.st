loadMem: memoryOperand generator: gen.
	"floats get loaded into FP stack"
	
	gen asm fld: memoryOperand.
