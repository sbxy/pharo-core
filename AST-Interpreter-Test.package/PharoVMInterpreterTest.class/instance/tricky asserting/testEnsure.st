testEnsure
	self assert: ([ ] ensure: [ 2 ]) = nil.
	self assert: ([ 1 ] ensure: [ 2 ]) = 1.
	self assert: [[ 1 ] ensure: [ 2 ]. 3] value = 3.
	self assert: [[ 1 ] ensure: [ ^ 2 ]. 3] value = 2.
	self assert: [[ ^ 1 ] ensure: [ ^ 2 ]. 3] value = 2.
	self should: [ [ Error signal ] ensure: [ ^ 2 ]. 3 ] raise: InterpretationError.
	self should: [ [ [Error signal] value ] ensure: [ ^ 2 ]. 3 ] raise: InterpretationError