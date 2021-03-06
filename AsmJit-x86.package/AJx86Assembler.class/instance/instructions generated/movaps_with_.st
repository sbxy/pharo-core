movaps: aRegisterOrMemory1 with: aRegisterOrMemory2
	"Move Aligned Packed Single-FP Values
	Pseudo Code
-----------
DEST = SRC;
(* #GP if SRC or DEST unaligned memory operand *)

Description
-----------
Moves a double quadword containing four packed single-precision
floating-point values from the source operand (second operand) to the
destination operand (first operand). This instruction can be used to
load an XMM register from a 128-bit memory location, to store the
contents of an XMM register into a 128-bit memory location, or to move
data between two XMM registers. When the source or destination operand
is a memory operand, the operand must be aligned on a 16-byte boundary
or a general-protection exception (\#GP) is generated.

To move packed single-precision floating-point values to or from
unaligned memory locations, use the MOVUPS instruction.

In 64-bit mode, use of the REX.R prefix permits this instruction to
access additional registers (XMM8-XMM15).

"
	^ self 
		addInstruction: #movaps
		operands: { aRegisterOrMemory1 . aRegisterOrMemory2 }