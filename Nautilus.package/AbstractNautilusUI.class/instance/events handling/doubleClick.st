doubleClick

	self 
		ifGroups: [ self doubleClickOnGroup ]
		ifNot: [ self doubleClickOnPackage ]