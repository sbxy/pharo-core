referencesTo: aLiteral in: anEnvironment 
	| classDict literalPrintString specialFlag specialByte |
	literalPrintString := aLiteral isVariableBinding
		ifTrue: [ aLiteral key asString ]
		ifFalse: [
			aLiteral isString
				ifTrue: [ aLiteral ]
				ifFalse: [ aLiteral printString ] ].
	classDict := IdentityDictionary new.
	specialFlag := Smalltalk
		hasSpecialSelector: aLiteral
		ifTrueSetByte: [ :byte | specialByte := byte ].
	anEnvironment classesDo: [ :class | 
		| selectors |
		selectors := (class thoroughWhichSelectorsReferTo: aLiteral special: specialFlag byte: specialByte)
			select: [ :selector | anEnvironment includesSelector: selector in: class ].
		selectors isEmpty 
			ifFalse: [ classDict at: class put: selectors asIdentitySet ] ].
	^ (self onEnvironment: anEnvironment)
		on: classDict;
		label: 'References to: ' , literalPrintString;
		searchStrings: (Array with: literalPrintString);
		yourself