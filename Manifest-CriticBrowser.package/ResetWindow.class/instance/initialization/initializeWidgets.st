initializeWidgets

	self instantiateModels: #(
		resetModel ButtonModel
		currentConfigurationModel ButtonModel 
		 ).
	self setFocusOrder.
	self setResetModel. 
	self setCurrentConfigurationModel. 
	