includesElementNamed: elementName
	| aSymbol |
	
	aSymbol:= elementName asSymbol.
	elements do:[ :collection| 		
		(self includesElementNamed: aSymbol in: collection) ifTrue:[ ^true ] ].
	^false