createTempVectorNamed: name withVars: vars

	self doPending.
	tempVectorStack push: currentInstr.
	self pushNewArray: vars size. 
	self storeTemp: name.
	self popTop.
	gen mapBytesTo: currentInstr. 
