selectedGroup: anObject

	self okToChange
		ifTrue: [
			groupsSelection removeAll.
			anObject ifNotNil: [ self giveFocusTo: list ].
			groupsSelection at: anObject put: true.
			self selectedGroupWithoutChangingSelection: anObject ]