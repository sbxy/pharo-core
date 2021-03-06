testClassWithTrait2

	self assert: TOne users isEmpty.
	self assert: TOne classTrait users isEmpty.
	
	aClass := self make: [ :builder | 
		builder traitComposition: TOne classTrait ].
	
	self assert: TOne users isEmpty.
	self assert: TOne classTrait users asArray equals: { aClass }.
	
	self deny: (aClass canUnderstand: #one).
	self assert: (aClass canUnderstand: #classOne).
	self assert: aClass new classOne equals: 1.