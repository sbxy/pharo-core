evaluateSelection
	^Compiler new
		evaluate: morph editor selectionAsStream
		in: nil
		to: nil
		notifying: morph editor
		ifFail: [^failure]
		logged: false
	