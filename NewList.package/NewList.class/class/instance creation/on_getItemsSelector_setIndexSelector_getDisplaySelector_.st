on: aModel getItemsSelector: getItems setIndexSelector: setIndex getDisplaySelector: getDisplay
	
	| listModel instance |
	listModel := self adapterOn: aModel.
	
	listModel
		on: aModel 
		getItemsSelector: getItems 
		setIndexSelector: setIndex 
		getDisplaySelector: getDisplay.
	
	instance := self on: listModel.
	listModel list: instance.
	
	^ instance