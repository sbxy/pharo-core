testInstanceVariableShadowing
	interactive := true.
	self initializeErrorMessage.

	Compiler new 
			compile: 'var1 |var1|'
			in: MockForCompilation
			classified: nil
			notifying: self
			ifFail: [
					self assert: (errorMessage = 'Name is already defined ->').
					self assert: (errorLocation = 7).
					self assert: (errorSource contents = 'var1 |var1|').
					^nil].
	self fail.

