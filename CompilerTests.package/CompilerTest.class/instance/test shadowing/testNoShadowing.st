testNoShadowing

	interactive := true.
	self initializeErrorMessage.

	(Compiler new
		compile: 'temp |var2|'
		in: MockForCompilation
		classified: nil
		notifying: nil
		ifFail: [self fail.
				^nil]).


