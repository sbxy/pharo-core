diffItem

	^ DropListItem
		named: self diffLabel
		do: [ wrapper := DiffMethodReferenceConverter methodReference: wrapper method referencesList: self originalList ]