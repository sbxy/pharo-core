ifSkip: aReturnBlock
	gotoContext == false ifTrue: [ ^ self ].
	aReturnBlock value.