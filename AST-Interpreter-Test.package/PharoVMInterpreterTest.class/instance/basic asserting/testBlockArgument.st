testBlockArgument

	self assert: ([ :a| a ] value: 1) = 1.
	self assert: ([ :a| a + 3 ] value: 3) = 6.
	
	