div: aDestination
	"Unsigned Divide
	Description
-----------
Divides unsigned the value in the AX, DX:AX, EDX:EAX, or RDX:RAX
registers (dividend) by the source operand (divisor) and stores the
result in the AX (AH:AL), DX:AX, EDX:EAX, or RDX:RAX registers. The
source operand can be a general-purpose register or a memory location.
The action of this instruction depends on the operand size
(dividend/divisor). Division using 64-bit operand is available only in
64-bit mode.

Non-integral results are truncated (chopped) towards 0. The remainder is
always less than the divisor in magnitude. Overflow is indicated with
the \#DE (divide error) exception rather than with the CF flag.

In 64-bit mode, the instruction's default operation size is 32 bits. Use
of the REX.R prefix permits access to additional registers (R8-R15). Use
of the REX.W prefix promotes operation to 64 bits. In 64-bit mode when
REX.W is applied, the instruction divides the unsigned value in RDX:RAX
by the source operand and stores the quotient in RAX, the remainder in
RDX.

See the summary chart at the beginning of this section for encoding data
and limits. See the following table.

DIV Action

Maximum

Operand Size

Dividend

Divisor

Quotient

Remainder

Quotient

Word/byte

AX

r/m8

AL

AH

255

Doubleword/word

DX:AX

r/m16

AX

DX

65,535

Quadword/doubleword

EDX:EAX

r/m32

EAX

EDX

2^32^ - 1

Doublequadword/quadword

RDX:RAX

r/m64

RAX

RDX

2^64^ - 1

"
	^ self 
		addInstruction: #div
		operands: { aDestination }