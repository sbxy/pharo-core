parsePrimitiveLiteral
	| node |
	(currentToken isIdentifier and: [currentToken isPatternVariable]) 
		ifTrue: 
			[node := self variableNodeClass identifierToken: currentToken.
			node isLiteralNode 
				ifTrue: 
					[self step.
					^node].
			currentToken := RBLiteralToken 
						value: currentToken value asSymbol
						start: currentToken start
						stop: currentToken stop].
	^super parsePrimitiveLiteral