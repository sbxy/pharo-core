selectedGroup: anObject

	selectedGroup := anObject.
	self announcer announce: ( NautilusGroupSelected group: anObject ).