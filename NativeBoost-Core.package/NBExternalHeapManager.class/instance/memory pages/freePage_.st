freePage: aMemoryPage
	pages removeKey: aMemoryPage address.
	freeBlocks remove: aMemoryPage firstBlock ifAbsent: [].
	
	^ self primFreePage: aMemoryPage
 