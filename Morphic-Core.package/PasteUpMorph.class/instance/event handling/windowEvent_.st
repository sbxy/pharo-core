windowEvent: anEvent
	self windowEventHandler
		ifNotNil: [^self windowEventHandler windowEvent: anEvent].

	anEvent type == #windowClose
		ifTrue: [WorldState quitSession].
