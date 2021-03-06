emitX86RM: opCode size: aSize regOrCode: regOrCode rm: regOrMem immSize: immSize
	"Emit instruction with reg/memory operand."
	
	| byte code |
	code := regOrCode isInteger ifTrue: [ regOrCode ] ifFalse: [ regOrCode code ].

	"16 bit prefix"
	aSize == 2 ifTrue: [ self emitByte: 16r66 ].
	
	"segment prefix"
	self emitSegmentPrefix: regOrMem.
	"instruction prefix"
	(byte := (opCode bitAnd: 16rFF000000)) = 0 ifFalse: [
		self emitByte: byte >> 24 ].
	
	self emitRexForOp1: regOrCode op2: regOrMem.
	
	(byte := (opCode bitAnd: 16r00FF0000)) = 0 ifFalse: [
		self emitByte: byte >> 16 ].

	(byte := (opCode bitAnd: 16r0000FF00)) = 0 ifFalse: [
		self emitByte: byte >> 8 ].

	self emitByte: (opCode bitAnd: 16rFF).

	"ModR/M"
	^ regOrMem emitModRM: self code: code immSize: immSize
