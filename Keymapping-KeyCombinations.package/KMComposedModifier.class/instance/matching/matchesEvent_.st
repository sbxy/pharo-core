matchesEvent: aKeyboardEvent
	^ modifiers allSatisfy: [:modifier|
		modifier matchesEvent: aKeyboardEvent]