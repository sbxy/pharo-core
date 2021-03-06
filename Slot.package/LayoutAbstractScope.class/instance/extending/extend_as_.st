extend: someSlots as: type
	| scope fieldIndex currentParentScope nextParentScope |
	scope := type new: someSlots size.
	fieldIndex := self firstFieldIndex.
	currentParentScope := self.
	
	someSlots withIndexDo: [ :slot :slotIndex | |realSlot|
		realSlot := slot asSlot.
		nextParentScope := realSlot parentScopeFor: currentParentScope.
		nextParentScope == currentParentScope
			ifFalse: [
				currentParentScope := nextParentScope.
				fieldIndex := fieldIndex + currentParentScope ownFieldSize].
		realSlot index: fieldIndex.
		fieldIndex := fieldIndex + realSlot size.
		scope at: slotIndex put: realSlot ].
	
	scope parentScope: currentParentScope.
	^ scope