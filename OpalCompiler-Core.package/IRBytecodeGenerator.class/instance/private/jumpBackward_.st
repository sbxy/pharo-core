jumpBackward: distance

	| dist |
	dist := 1024 - distance - 2.
	dist < 0 ifTrue: [self error: 'back jump too big'].
	self nextPut: (Bytecodes at: #longUnconditionalJump) first + (dist // 256).
	self nextPut: dist \\ 256.
