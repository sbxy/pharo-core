parseUnaryMessageWith: aNode 
	| selector |
	selector := currentToken.
	self step.
	^self messageNodeClass 
		receiver: aNode
		selectorParts: (Array with: selector)
		arguments: #()