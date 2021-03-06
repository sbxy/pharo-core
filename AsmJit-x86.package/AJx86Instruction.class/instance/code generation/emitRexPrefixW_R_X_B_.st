emitRexPrefixW: w R: r X: x B: b
	"
	field  bit   def
	-      7-4   2r0100 REX prefix identifier
	W      3     0 = Operand size determined by CS.D
	             1 = 64 Bit Operand Size
	R      2     Extension of the ModR/M reg field
	X      1     Extension of the SIB index field
	B      0     Extension of the ModR/M r/m field. SIB base field, or Opcode reg field
	"

	self requiresRex
		ifTrue: [ 
			self is32BitMode
				ifTrue: [ self error: 'Attempt to use a 64-bit-specific instruction or operand in 32-bit mode' ]
				ifFalse: [ self emitByte: 2r0100 << 4 | (w asBit << 3) | (r asBit << 2) | (x asBit << 1) | b asBit ] ]