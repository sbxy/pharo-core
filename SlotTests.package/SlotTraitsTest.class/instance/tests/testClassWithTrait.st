testClassWithTrait

	self assert: TOne users isEmpty.
	self assert: TOne classTrait users isEmpty.
	
	aClass := self make: [ :builder | 
		builder traitComposition: TOne ].
	
	self assert: TOne users asArray equals: { aClass }.
	self assert: TOne classTrait users isEmpty.
	
	self assert: (aClass canUnderstand: #one).
	self assert: aClass new one equals: 1.