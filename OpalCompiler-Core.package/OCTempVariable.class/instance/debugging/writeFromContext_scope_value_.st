writeFromContext: aContext scope: contextScope value: aValue
	|  offset contextForRead |
	
	offset := contextScope outerOffsetTo: scope.
	contextForRead := aContext.
	offset timesRepeat: [contextForRead := contextForRead outerContext].
	^contextForRead tempAt: self indexFromIR put: aValue