freeItemsDo: aBlock

	| free index |
	sema critical: [
		index := nextFreeIndex.
		
		[ index notNil ] whileTrue: [  |next item|
			item := items at: index.
			next := item nextFreeIndex.
			aBlock value: item.
			index := next
		]]