byDateDescendingOn: aMessageList

	^self 
		on: aMessageList 
		groupedUsing: aMessageList byDateDescendingSelector.