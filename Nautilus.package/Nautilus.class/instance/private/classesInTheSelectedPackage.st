classesInTheSelectedPackage

	^ self selectedPackage
		ifNil: [{}]
		ifNotNil: [:package | 
			(package definedClasses asArray sort: [:a :b | a name <= b name]), (package extendedClasses asArray sort: [:a :b | a name <= b name])]