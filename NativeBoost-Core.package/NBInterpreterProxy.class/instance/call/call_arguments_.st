call: aFunction arguments: args
	
	| align |
	
	asm decorateWith: 'InterpreterProxy >> ' , aFunction name during: [ 
	

	align := gen stackAlignment.
	aFunction requiresAlignment ifFalse: [ align := 1 ].
	
	asm cdeclCall: [ :call |

		args reverseDo: [:arg | call push: arg value ].
		self callFn: aFunction.

	] alignment: align ].
	
	^ EAX