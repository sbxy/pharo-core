addMethodReferenceSilently: aMethodReference at: index

	self useAsASet
		ifTrue: [ self methodReferenceList removeAllSuchThat: [:each | each fullName = aMethodReference fullName]].
	self checkCurrentHighestUpdate: aMethodReference.
	self methodReferenceList at: index put:  aMethodReference.
	lastEntry := aMethodReference.