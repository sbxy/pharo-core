functionAtOffset: offset
	| index |
	index := offset / 4.
	^ self functions detect: [:fn | fn index = index ]
