testEnumToInt

	self assert: (self enumToInt:  self enumClass AAA) = 1.
	self assert: (self enumToInt: self enumClass BBB) = 2.
	self assert: (self enumToInt: self enumClass CCC) = 3.
	self assert: (self enumToInt: self enumClass DDD) = 2400.