testValue
	|x value|
	NBTestExternalValue initialize.
	
	value := 12345678.
	
	x := NBTestExternalValue new.
	x value: value.
	
	self assert: x value = value.