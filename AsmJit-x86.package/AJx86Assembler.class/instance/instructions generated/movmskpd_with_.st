movmskpd: aRegisterOrMemory1 with: aRegisterOrMemory2
	"Extract Packed Double-FP Sign Mask
	Pseudo Code
-----------
DEST[0] = SRC[63];
DEST[1] = SRC[127];
IF DEST = r32
    DEST[31:2] = ZeroExtend;
ELSE
    DEST[63:2] = ZeroExtend;
FI;

Description
-----------
Extracts the sign bits from the packed double-precision floating-point
values in the source operand (second operand), formats them into a 2-bit
mask, and stores the mask in the destination operand (first operand).
The source operand is an XMM register, and the destination operand is a
general-purpose register. The mask is stored in the 2 low-order bits of
the destination operand. Zero-extend the upper bits of the destination.

In 64-bit mode, the instruction can access additional registers
(XMM8-XMM15, R8-R15) when used with a REX.R prefix. The default operand
size is 64-bit in 64-bit mode.

"
	^ self 
		addInstruction: #movmskpd
		operands: { aRegisterOrMemory1 . aRegisterOrMemory2 }