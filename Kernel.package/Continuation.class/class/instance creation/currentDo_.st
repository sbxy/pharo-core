currentDo: aBlock
	^ aBlock value: (self fromContext: thisContext sender)