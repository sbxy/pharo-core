protocol-events
whenSelectionChanged: aBlock
	"Set a block to value when the selection of the list has changed"

	selectionHolder whenChangedDo: aBlock.
	multiSelectionHolder whenChangedDo: aBlock.