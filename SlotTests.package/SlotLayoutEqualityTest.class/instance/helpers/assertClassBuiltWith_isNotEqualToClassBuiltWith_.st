assertClassBuiltWith: blockToBuildAClass isNotEqualToClassBuiltWith: blockToBuildAnotherClass
		
	aClass := self make: [ :builder | 
		builder 
			name: self aClassName;
			in: blockToBuildAClass ].
		
	anotherClass := self make: [ :builder | 
		builder 
			name: self anotherClassName;
			in: blockToBuildAnotherClass ].
	
	self assert: aClass layout ~= anotherClass layout.
	self assert: aClass layout hash ~= anotherClass layout hash.