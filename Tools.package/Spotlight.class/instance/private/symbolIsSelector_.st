symbolIsSelector: symbol
	self flag: #todo. "I would like to have a better way to detect selectors..."
	^symbol first isLowercase