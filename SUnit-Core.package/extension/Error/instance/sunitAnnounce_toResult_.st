sunitAnnounce: aTestCase toResult: aTestResult
	aTestResult addError: aTestCase.
	self sunitExitWith: false.