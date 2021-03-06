testWeakSet


	self assert: (self interpret: '
		| index start |
		index := start := 4 hash \\ 7 + 1.
		index
		') equals: 4 hash \\ 7 + 1.
	self assert: (self interpret: '
		| index start |
		index := start := 4 hash \\ 7 + 1.
		start
		') equals: 4 hash \\ 7 + 1.
		
	self assert: (self interpret: 'WeakSet new add: 1') equals: (WeakSet new add: 1).
	self assert: (self interpret: 'WeakSet new add: 1; scanFor: 1') equals: (WeakSet new add: 1; scanFor: 1)
	