testExceptionResume
	
	self assert: (self interpret: '[ 1 + Exception signal ] on: Exception do: [ :err| err resume: 5 ].') = 6.
	self assert: (self interpret: '[ 1 + Exception signal ] on: Exception do: [ :err| err resume: 5 ]. true') = true.