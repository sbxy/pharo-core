testStructCase3Struct 
	|value|
	value := 12345678.
	self assert:  (self readStructPtrCase3: (self structValue: value)) = value.