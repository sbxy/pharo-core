as yet unclassified
testAttachKeymapAndExecuteExecutes
	| executed morphToTest |
	executed := false.
	
	KMFactory keymapContainer
		initializeKeymap: #test
		executingOn: $a asShortcut, $a asShortcut, $a asShortcut
		doing: [ :receiver | executed := true ]
		inCategory: #Testing
		platform: #all.

	KMFactory keymapContainer attachCategoryName: #Testing to: KMMockMorph.
	
	morphToTest := KMMockMorph new.
	
	{self eventKey: $a. self eventKey: $a. self eventKey: $a}
		do: [:e | morphToTest dispatchKeystrokeForEvent: e].
		
	self assert: executed.