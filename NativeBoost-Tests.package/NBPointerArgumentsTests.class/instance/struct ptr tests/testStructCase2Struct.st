testStructCase2Struct 
	|value|
	value := 12345678.
	self assert:  (self readStructPtrCase2: (self structValue: value)) = value.