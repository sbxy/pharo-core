testMissingPeriodSeparatorBetweenStatements

	self setUpForErrorsIn: '1 + 2 ` End of statement list encounted ->`^nil'.
	self enumerateAllSelections.