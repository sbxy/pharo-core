runCase: aTestCase
	self increaseTestCount.
	self printTestCase: aTestCase.
	
	[[ aTestCase runCase ] 
		on: Halt , Error, TestFailure
		do: [ :err | self handleFailure: err of: aTestCase ]]
		on: TestSkip do: [ :skip| self handleSkip: skip of: aTestCase ]