returnSelf
	
	<primitive: 'primitiveNativeCall' module: 'NativeBoostPlugin'>

	^ self nbCallout 
		function: #( oop ( void) )  
		emit: [:gen :proxy :asm |
			"this is equivalent to: 
				proxy receiverInto: asm EAX."
			proxy receiver.
		]