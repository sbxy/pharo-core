newStdCall
	self stackFrameCheck.
	^ calls add: (AJStdCallCallInfo new)
