testNotInteractiveSiblingBlocksTempShadowing

	self initializeErrorMessage.

	(Compiler new
		compile: 'temp [:temp | ]. [:temp | ]'
		in: MockForCompilation
		classified: nil
		notifying: nil
		ifFail: [self fail.
						^nil]).
	self assert: ( newTranscript contents = '').



	
					

