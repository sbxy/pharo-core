testNotInteractiveShadowingOfTemp

	"This test is not completely correct in the sense that it is still interactive. I have to introduce self ( then is interactive) in order to be able to test it"
	self initializeErrorMessage.

	interactive := false.
	(Compiler new 
		compile: 'temp |temp1 temp1| '
		in: MockForCompilation
		classified: nil
		notifying: self
		ifFail: [
				self assert: (errorMessage = 'Name is already defined ->').
				self assert: (errorLocation = 13).
				self assert: (errorSource contents = 'temp |temp1 temp1| ').
				^nil]).

	