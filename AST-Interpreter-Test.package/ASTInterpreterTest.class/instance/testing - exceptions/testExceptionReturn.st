testExceptionReturn
	
	self assert: (self interpret: '[ Error signal ] on: Error do: [ :err| err return: 5 + 1 ].') = 6.
	self assert: (self interpret: '[ Error signal ] on: Error do: [ :err| err return: 5 + 1 ]. true') = true.