pushTemp: aSymbol

	self doPending.
	gen pushTemp: (self currentScope indexForVarNamed: aSymbol).
	gen mapBytesTo: currentInstr. 

