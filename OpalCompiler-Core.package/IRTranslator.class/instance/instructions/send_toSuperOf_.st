send: selector toSuperOf: behavior

	self doPending.
	gen send: selector toSuperOf: behavior.
	gen mapBytesTo: currentInstr. 

