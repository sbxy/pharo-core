find: selector inSuperclassesOf: selectedClass do: aBlock
	selectedClass allSuperclassesDo: [ :superclass | 
		(superclass includesSelector: selector)
			ifTrue: [ ^ aBlock value: superclass ]]