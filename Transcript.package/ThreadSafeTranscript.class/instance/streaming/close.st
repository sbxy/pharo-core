close
	self flush.
	accessSemaphore critical: [ stream close ]
	