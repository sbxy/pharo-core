selectedCategory: anObject

	selectedCategory := anObject.
	self selectedMethod: nil.
	self announcer announce: ( NautilusProtocolSelected category: anObject )