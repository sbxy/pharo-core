primIntToEnum: anInteger
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	^ NBFFICallout 
		cdecl: {self enumClass. {#NBInt32. #anInteger}}
		emitCall: [ :gen :proxy :asm | 
			asm pop: asm EAX. 
		]