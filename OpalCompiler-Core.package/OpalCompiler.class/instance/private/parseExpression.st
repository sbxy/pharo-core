parseExpression
	| parseClass |
	
	parseClass := self compilationContext parserClass.

	^self useFaultyForParsing 
		ifTrue: [parseClass parseFaultyExpression: source contents]
		ifFalse: [parseClass parseExpression: source contents]