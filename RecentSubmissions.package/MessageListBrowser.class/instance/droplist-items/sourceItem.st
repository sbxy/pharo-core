sourceItem

	^ DropListItem
		named: self sourceLabel
		do: [ wrapper := SourceMethodConverter method: wrapper method ]