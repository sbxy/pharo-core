arg: aName
	| arg |
	
	arg := fnSpec arguments detect: [:argx | argx name = aName ]
		ifNone: [ self error: 'invalid argument name' ].
	
	self assert: (arg type typeSize <= 8).
	
	^ (asm EBP ptr + arg offset) size: arg type typeSize