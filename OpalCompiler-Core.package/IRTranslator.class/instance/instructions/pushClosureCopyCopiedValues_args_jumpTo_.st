pushClosureCopyCopiedValues: copiedValues args: args jumpTo: labelSymbol
	self doPending.
	copiedValues do: [:name | self pushTemp: name].

	gen pushClosureCopyNumCopiedValues: copiedValues size 
			numArgs: args size 
			to: currentInstr destination orderNumber.
	self pushScope: currentInstr.
	currentInstr definedTemps do: [ :each | gen pushLiteral: nil ].
	gen mapBytesTo: currentInstr. 
