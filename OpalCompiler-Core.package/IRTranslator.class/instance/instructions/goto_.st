goto: seqNum

	self doPending.
	gen goto: seqNum.
	gen mapBytesTo: currentInstr. 
