testFromIntegerOk

	self assert: (self enumClass fromInteger:  1) value = 1 .
	self assert: (self enumClass fromInteger: 2) value = 2.
	self assert: (self enumClass fromInteger: 3) value = 3.
	self assert: (self enumClass fromInteger: 2400) value = 2400.