outputValueArg: x value: value 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^ self nbCallout 
		function: #(void (NBTestExternalValue * x, int value) ) 
		emit: [:gen :proxy :asm |
			asm pop: asm EAX.
			asm pop: asm ECX.
			asm mov: asm ECX to: asm EAX ptr32.
		]
	