colorForItem: item at: index

	^ (self isSelectedIndex: index)
		ifTrue: [ self theme currentSettings selectionTextColor ]
		ifFalse: [ self defaultItemColor ]