testTraitTempShadowing

	self initializeErrorMessage.

	Compiler new 
	compile: 'testReplaceFromToWithStartingAt
	| result  repStart collection replacementCollection firstIndex secondIndex |
		replacementCollection := 1.'
	in: ArrayTest
	classified: nil
	notifying: nil
	ifFail: [self fail.].
	self assert: ( newTranscript contents = '').