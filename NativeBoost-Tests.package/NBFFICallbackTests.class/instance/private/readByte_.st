readByte: array

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^ self nbCallout
		function: #(byte (byte * array))
		emit: [:gen |
			gen asm pop: EAX;
				mov: EAX ptr8 to: AL
			] 