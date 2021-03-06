cmp: aRegisterOrMemoryOperand with: aSource
	"Compare Two Operands
	Pseudo Code
-----------
temp = SRC1 - SignExtend(SRC2);
ModifyStatusFlags; (* Modify status flags in the same manner as the SUB instruction *)

Description
-----------
Compares the first source operand with the second source operand and
sets the status flags in the EFLAGS register according to the results.
The comparison is performed by subtracting the second operand from the
first operand and then setting the status flags in the same manner as
the SUB instruction. When an immediate value is used as an operand, it
is sign-extended to the length of the first operand.

The condition codes used by the Jcc, CMOVcc, and SETcc instructions are
based on the results of a CMP instruction. Appendix B, 'EFLAGS Condition
Codes,' in theIntel� 64 and IA-32 Architectures Software Developer's
Manual, Volume 1, shows the relationship of the status flags and the
condition codes.

In 64-bit mode, the instruction's default operation size is 32 bits. Use
of the REX.R prefix permits access to additional registers (R8-R15). Use
of the REX.W prefix promotes operation to 64 bits. See the summary chart
at the beginning of this section for encoding data and limits.

"
	^ self 
		addInstruction: #cmp
		operands: { aRegisterOrMemoryOperand . aSource }