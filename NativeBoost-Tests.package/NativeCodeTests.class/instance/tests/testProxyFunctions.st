testProxyFunctions

	| functions |
	
	functions := NBInterpreterProxy functions.
	functions valuesDo: [:fn |
		self assert: (NBInterpreterProxy canUnderstand: fn selector ).
	]