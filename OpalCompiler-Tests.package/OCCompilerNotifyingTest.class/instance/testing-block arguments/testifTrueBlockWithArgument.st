testifTrueBlockWithArgument

	self setUpForErrorsIn: '` ifTrue:ifFalse: takes zero-arg blocks ->`true ifTrue: [:x | 1 + 1 ]'.
	self enumerateAllSelections.
	self setUpForErrorsIn: '` ifTrue:ifFalse: takes zero-arg blocks ->`true ifTrue: [:x :y | 1 + 1 ]'.
	self enumerateAllSelections.