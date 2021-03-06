openOnPackage: selectedPackage class: selectedClass category: selectedCategory method: selectedMethod group: selectedGroup showGroups: showGroups showHierarchy: showHierarchy showPackages: showPackages showComment: showComment  showInstance: showInstance showCategories: showCategories inEnvironment: anEnvironment

	| instance |
	instance := self new.
	instance browsedEnvironment: anEnvironment.
	
	instance package: selectedPackage class: selectedClass category: selectedCategory method: selectedMethod.
	instance selectedGroup: selectedGroup.	
	instance
		showGroups: showGroups;
		showHierarchy: showHierarchy;
		showComment: showComment;
		showInstance: showInstance;
		showCategories: showCategories.
	
	instance open.
	instance ui showPackages: showPackages.
	instance ui forceSelection: selectedCategory.
	instance ui forceSelection: selectedMethod.

	^ instance