testClassWithClassTrait

	self assert: TOne users isEmpty.
	self assert: TOne classTrait users isEmpty.
	
	aClass := self make: [ :builder | 
		builder classTraitComposition: TOne ].
	
	self assert: TOne users asArray equals: { aClass class }.
	self assert: TOne classTrait users isEmpty.
	
	self assert: (aClass class canUnderstand: #one).
	self assert: aClass one equals: 1.