testStructCase4Struct 
	|value|
	value := 12345678.
	self assert:  (self readStructPtrCase4: (self structValue: value)) = value.