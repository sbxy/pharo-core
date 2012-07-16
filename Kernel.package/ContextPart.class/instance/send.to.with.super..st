controlling
send: selector to: rcvr with: args super: superFlag 
	"Simulate the action of sending a message with selector, selector, and 
	arguments, args, to receiver. The argument, superFlag, tells whether the 
	receiver of the message was specified with 'super' in the source method."

	| class meth val ctx |
	class := superFlag
			ifTrue: [(self method literalAt: self method numLiterals) value superclass]
			ifFalse: [rcvr class].
	meth := class lookupSelector: selector.
	meth == nil ifTrue: [ ^ self send: #doesNotUnderstand:
					to: rcvr
					with: (Array with: (Message selector: selector arguments: args))
					super: superFlag].
	
	val := self tryPrimitiveFor: meth receiver: rcvr args: args.

	"primitive runs without failure?"
	(self isFailToken: val) ifFalse: [^ val].
	
	(selector == #doesNotUnderstand: and: [ (class canUnderstand: #doesNotUnderstand: ) not ]) ifTrue:
		[^self error: 'Simulated message ' , (args at: 1) selector, ' not understood'].
	
	"failure.. lets activate the method"
	ctx := self activateMethod: meth withArgs: args receiver: rcvr class: class.
	
	"check if activated method handles the error code (a first bytecode will be store into temp)"
	 (ctx method at: ctx pc ) = 129 "long store temp" 
		ifTrue: [ ctx at: ctx stackPtr put: val last ].
	^ ctx