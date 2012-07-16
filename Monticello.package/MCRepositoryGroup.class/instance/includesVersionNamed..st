as yet unclassified
includesVersionNamed: aString
	" check for existing version name in parallel over all repositories "
	| resultSemaphore results |
	resultSemaphore := Semaphore new.
	results := Array new: self repositories size.
	
	self repositories doWithIndex: [:repository :index | 
		" fork of test for each repository "
		[[ results 
			at: index 
			put: (repository includesVersionNamed: aString)
		] ensure: [ resultSemaphore signal ]] fork ].

	" wait for all requests to finish "
	self repositories size timesRepeat: [ resultSemaphore wait ].
	" check if any repository included the given versionName already"
	^ results anySatisfy: [:result| result = true ]	