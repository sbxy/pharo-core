testNegativeZero
	self assert: (Compiler evaluate: '-0.0') hex = Float negativeZero hex.