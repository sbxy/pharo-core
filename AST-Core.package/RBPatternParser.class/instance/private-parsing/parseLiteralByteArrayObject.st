parseLiteralByteArrayObject
	| node |
	(currentToken isIdentifier and: [currentToken isPatternVariable]) 
		ifTrue: 
			[node := self variableNodeClass identifierToken: currentToken.
			node isLiteralNode 
				ifTrue: 
					[self step.
					^node]].
	^super parseLiteralByteArrayObject