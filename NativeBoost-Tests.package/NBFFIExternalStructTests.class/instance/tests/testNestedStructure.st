testNestedStructure

	| s1 s2 |
	
	s1 := NBTestNestedStructure new.
	s2 := NBTestStructure1byte new.
	s2 field: 42.
	
	self assert: s1 oneByte field = 0.
	
	s1 oneByte: s2.
	
	self assert: s1 oneByte field = 42.
	