match: aNode inContext: aDictionary 
	aNode class == self matchingClass ifFalse: [^false].
	(receiver match: aNode receiver inContext: aDictionary) ifFalse: [^false].
	self isSelectorList 
		ifTrue: 
			[^(aDictionary at: selectorParts first value ifAbsentPut: [aNode selector]) 
				== aNode selector and: 
						[(aDictionary at: arguments first ifAbsentPut: [aNode arguments]) 
							= aNode arguments]].
	^self matchArgumentsAgainst: aNode inContext: aDictionary