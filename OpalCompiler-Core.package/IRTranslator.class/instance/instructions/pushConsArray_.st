pushConsArray: aSize

	self doPending.
	gen pushConsArray: aSize.
	gen mapBytesTo: currentInstr. 

