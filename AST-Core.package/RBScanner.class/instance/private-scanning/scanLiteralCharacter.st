scanLiteralCharacter
	| token |
	self step.	"$"
	token := RBLiteralToken 
				value: currentCharacter
				start: tokenStart
				stop: stream position.
	self step.	"char"
	^token