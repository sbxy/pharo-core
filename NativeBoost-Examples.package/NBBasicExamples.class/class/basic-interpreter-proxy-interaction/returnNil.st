returnNil
	
	<primitive: 'primitiveNativeCall' module: 'NativeBoostPlugin'>

	^ self nbCallout 
		function: #( oop ( void ) )  
		emit: [:gen :proxy :asm |
			"nilObject -> EAX"
			proxy nilObject.
		]