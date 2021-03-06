invokeReflectiveMethod: aClosure on: receiver message: aMessage
	| annotation selector result |
	
	annotation := aClosure pragmaAt: #reflective:.
	selector := annotation arguments first.
	
	result := self 
		perform: selector 
		withArguments: (Array with: receiver with: aMessage).
	
	(self classOf: result) = ByteSymbol ifFalse: [ ^result ].
	 result = self reflectiveFailedToken ifFalse: [ ^ result ].

	"primitive failed"
	^self 
		invokeMethod: aClosure 
		on: receiver 
		message: aMessage