getClassHierarchy

	self hierarchyClass
		ifNil: [^self getClassesList].

	^ cachedHierarchy sortedElements