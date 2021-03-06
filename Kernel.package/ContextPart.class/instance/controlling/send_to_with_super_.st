send: selector to: receiver with: arguments super: superFlag 
	"Simulate the action of sending a message with selector, selector, and 
	arguments, args, to receiver. The argument, superFlag, tells whether the 
	receiver of the message was specified with 'super' in the source method."

	| class method value context |
	class := superFlag
			ifTrue: [(self method literalAt: self method numLiterals) value superclass]
			ifFalse: [receiver class].
	method := class lookupSelector: selector.
	method == nil ifTrue: [ 
		^ self 
			send: #doesNotUnderstand:
			to: receiver
			with: (Array with: (Message selector: selector arguments: arguments))
			super: superFlag ].
	
	value := self tryPrimitiveFor: method receiver: receiver args: arguments.

	"primitive runs without failure?"
	(self isFailToken: value) ifFalse: [^ value].
	
	(selector == #doesNotUnderstand: and: [ (class canUnderstand: #doesNotUnderstand: ) not ]) 
		ifTrue: [
			^self error: 'Simulated message ', (arguments at: 1) selector, ' not understood'].
	
	"failure.. lets activate the method"
	context := self activateMethod: method withArgs: arguments receiver: receiver class: class.
	
	"check if activated method handles the error code (a first bytecode will be store into temp)"
	"long store temp" 
	 (context method at: context pc ) = 129 
		ifTrue: [ context at: context stackPtr put: value last ].
	^ context