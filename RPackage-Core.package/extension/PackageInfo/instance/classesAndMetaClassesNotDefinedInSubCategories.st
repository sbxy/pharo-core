classesAndMetaClassesNotDefinedInSubCategories

	|subCategoriesClasses|
	subCategoriesClasses := OrderedCollection new.
	self systemCategories do: [:aSymbol |
		aSymbol = self packageName asSymbol
			ifFalse: [
				subCategoriesClasses addAll: (PackageOrganizer default packageNamed: aSymbol ifAbsent: [PackageInfo new]) classesAndMetaClasses
				]
		].
	^ self classesAndMetaClasses difference: subCategoriesClasses