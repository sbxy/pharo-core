parseKeywordPragma
	| keywords arguments |
	keywords := OrderedCollection new: 2.
	arguments := OrderedCollection new: 2.
	[ currentToken isKeyword ] whileTrue: [
		keywords addLast: currentToken.
		self step.
		arguments addLast: self parsePragmaLiteral ].
	^ self pragmaNodeClass selectorParts: keywords arguments: arguments