testifTrueBlockWithArgument
	self setUpForErrorsIn: 'true ifTrue: [:x` <- argument of ifTrue: has too many arguments ->` | 1 + 1 ]'.
	self enumerateAllSelections.
	self setUpForErrorsIn: 'true ifTrue: [:x` <- argument of ifTrue: has too many arguments ->` :y | 1 + 1 ]'.
	self enumerateAllSelections.