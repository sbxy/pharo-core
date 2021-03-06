receiver: aValueNode selectorParts: keywordTokens arguments: valueNodes 
	| message |
	super 
		receiver: aValueNode
		selectorParts: keywordTokens
		arguments: valueNodes.
	isCascadeList := isList := false.
	message := keywordTokens first value.
	2 to: message size
		do: 
			[:i | 
			| character |
			character := message at: i.
			character == self listCharacter 
				ifTrue: [isList := true]
				ifFalse: 
					[character == self cascadeListCharacter 
						ifTrue: [isCascadeList := true]
						ifFalse: [^self]]]