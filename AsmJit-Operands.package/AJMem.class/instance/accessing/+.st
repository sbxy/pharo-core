+ displacementOrIndex

	displacementOrIndex isInteger 
		ifTrue: [ 
			self displacement: (AJImmediate new ivalue: displacementOrIndex).
			^ self ].
	
	displacementOrIndex isGeneralPurpose 
		ifTrue: [ 
			index := displacementOrIndex. 
			^ self ].
	
	 self error: 'Expected integer or general purpose register for memory displacement but got ', displacementOrIndex class name, '.'.