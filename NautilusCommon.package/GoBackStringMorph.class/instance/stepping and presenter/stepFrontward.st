stepFrontward
	index := index + 1.
	self currentContentsLargeEnough
		ifTrue: [ 
			frontward := false.
			wait := 5 ]