runCase: aTestCase
	[
	aTestCase announce: TestCaseStarted withResult: self.
	aTestCase runCase.
	aTestCase announce: TestCaseEnded  withResult: self.
	self addPass: aTestCase]
		on: self class failure , self class skip, Warning, self class error
		do: [:ex | ex sunitAnnounce: aTestCase toResult: self]