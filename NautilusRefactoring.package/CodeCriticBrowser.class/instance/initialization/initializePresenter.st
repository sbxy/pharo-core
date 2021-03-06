initializePresenter
	
	listModel1 whenSelectedItemChanged: [:selection |
		listModel2 resetSelection.
		listModel2 items: (selection 
								ifNil: [ {} ]
								ifNotNil: [ selection rules ])].
	
	listModel2 whenSelectedItemChanged: [:selection |
		listModel3 resetSelection.
		listModel3 items: (selection 
								ifNil: [ {} ]
								ifNotNil: [ selection rules ])].
	
	listModel3 whenSelectedItemChanged: [:selection |
		selection 
			ifNil: [ textModel text: '' ]
			ifNotNil: [ textModel text: selection result label ]]