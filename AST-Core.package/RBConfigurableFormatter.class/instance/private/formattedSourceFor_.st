formattedSourceFor: aNode 
	^lookaheadCode at: aNode
		ifAbsentPut: [self class format: aNode withIndents: indent]