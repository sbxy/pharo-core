testPerform
	self should: [self interpret: '#de perform: #negated'] raise: InterpretationError.
	self assert: (self interpret: '1 perform: #negated') equals: 1 negated.
	self assert: (self interpret: '1 perform: #+ with: 2') equals: 3.
	self assert: (self interpret: '1 perform: #+ withArguments: #(2)') equals: 3.