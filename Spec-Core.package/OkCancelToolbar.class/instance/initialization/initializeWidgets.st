initializeWidgets

	super initializeWidgets.
	self instantiateModels: #( cancelButton ButtonModel ).

	self registerCancelButtonEvents.
	self focusOrder
		add: cancelButton