partialMatch

	KMLog log: 'Partial match: ', currentEvent printString.
	currentEvent ifNotNil:[ currentEvent wasHandled: true ].