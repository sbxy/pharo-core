send: selector toSuperOf: behavior

	| index nArgs |
	nArgs := selector numArgs.
	stack pop: nArgs.

	self addLastLiteral: behavior binding.  
	index := self addLiteral: selector.
	(index <= 32 and: [nArgs <= 7]) ifTrue: [
		"extended (2-byte) send"
		self nextPut: (Bytecodes at: #singleExtendedSuperBytecode).
		^ self nextPut: nArgs * 32 + index - 1
	].
	"long (3-byte) send"
	self nextPut: (Bytecodes at: #doubleExtendedDoAnythingBytecode).
	self nextPut: 1 << 5 "super" + nArgs.
	self nextPut: index - 1.
