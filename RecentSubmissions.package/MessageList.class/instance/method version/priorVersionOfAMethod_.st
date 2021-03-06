priorVersionOfAMethod: aMethodReference

	| tempList |
	tempList := self methodReferenceList select:[:each | 
		(each className = aMethodReference className) & 
		(each name = aMethodReference name)].
	^ tempList detect: [:each | (self versionOfAMethod: each) = ((self versionOfAMethod: aMethodReference) -1)] ifNone: [aMethodReference].