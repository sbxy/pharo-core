callGated: aFunction arguments: args
	"Call an interpreter proxy function through special gate function,
	ensuring that if it triggers GC and native code could be relocated, 
	then gate will return to correct native code address after relocation"

	| align |

	asm decorateWith: 'InterpreterProxy >> ' , aFunction name during: [ 

	align := gen stackAlignment.
	aFunction requiresAlignment ifFalse: [ align := 1 ].
	
	asm cdeclCall: [ :call |

		args reverseDo: [:arg | call push: arg value ].
		self gatedCallFn: aFunction.

	] alignment: align ].
	
	^ EAX