acceptReturnNode: aReturnNode
	| returnValue |
	
	returnValue := self interpret: aReturnNode value.
	
	self ifSkip: [ ^ returnValue ].
	
	self assert: gotoContext == false.
	gotoContext := context returnContext.
	
	^ returnValue