testIntCase4ByteArray 
	|value|
	value := 12345.
	self assert:  (self readIntPtrCase4: (self intByteArray: value)) = value.