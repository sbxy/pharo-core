pushDouble: aFloat

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^ self nbCallout 
		function: #( double (double aFloat))
		emit: [:gen |
			| asm |
			asm := gen asm.
			asm fld: asm ESP ptr64		
		]