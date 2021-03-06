importFromPackageInfoPass1: info package: package
	"My problem here: If a package appear here after one of its subcategories, all classes and methods would be re-affected 
	 to this package instead of the subcatagory. That's why I focus only on classes and methods that are not defined in subcategories, 
	to avoid to override information set before"
		
	info classesNotDefinedInSubCategories  
		do: [ :each | package addClassDefinition: each ].
	info coreMethodsNotDefinedInSubCategories 
		do: [ :each |
			"it seems that PackageInfo does not count methods from a trait inside the class package. We should do the same, as 
			monticello expect this behavior"
			(each isValid and: [ each isLocalSelector ])
				ifTrue: [ package addMethod: each compiledMethod ] ].

	^ package