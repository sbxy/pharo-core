blockClosureOnDo: aBlockClosure message: aMessage
	| block result |
	
	block := aBlockClosure code.
	
	self assert: aMessage numArgs = 2.

	self blockContextFor: aBlockClosure message: aMessage.
	context exceptionHandler: (ExceptionHandler forMessage: aMessage).
	
	result := self interpretBlock: block.
	
	self popContext.
	^ result