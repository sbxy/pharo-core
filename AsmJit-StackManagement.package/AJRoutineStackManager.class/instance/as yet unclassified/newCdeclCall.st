newCdeclCall 
	self stackFrameCheck.
	^ calls add: (AJCdeclCallInfo new)