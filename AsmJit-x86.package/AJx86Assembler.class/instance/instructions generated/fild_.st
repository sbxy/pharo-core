fild: aMemoryOperand
	"Load Integer
	Pseudo Code
-----------
TOP = TOP - 1;
ST(0) = ConvertToDoubleExtendedPrecisionFP(SRC);

Description
-----------
Converts the signed-integer source operand into double
extended-precision floating-point format and pushes the value onto the
FPU register stack. The source operand can be a word, doubleword, or
quadword integer. It is loaded without rounding errors. The sign of the
source operand is preserved.

This instruction's operation is the same in non-64-bit modes and 64-bit
mode.

"
	^ self 
		addInstruction: #fild
		operands: { aMemoryOperand }