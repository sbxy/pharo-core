returnUnionUnionChar: aChar
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^ self nbCallout 
		function: #(NBTestUnionWithUnion (char  aChar) ) 
		emit: [:gen :proxy :asm |
			self return4Bytes: asm.
		]
	