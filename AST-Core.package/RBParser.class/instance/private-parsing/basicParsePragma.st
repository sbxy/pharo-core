basicParsePragma
	^ currentToken isIdentifier
		ifTrue: [ self parseUnaryPragma ]
		ifFalse: [
			currentToken isKeyword
				ifTrue: [ self parseKeywordPragma ]
				ifFalse: [ self parseBinaryPragma ] ]