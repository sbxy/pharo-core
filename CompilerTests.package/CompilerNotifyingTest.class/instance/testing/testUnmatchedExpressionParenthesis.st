testUnmatchedExpressionParenthesis
	self setUpForErrorsIn: '1+(2 ` right parenthesis expected ->`. '.
	self enumerateAllSelections.