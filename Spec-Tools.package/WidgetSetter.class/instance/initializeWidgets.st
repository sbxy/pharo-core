initialization
initializeWidgets 
	
	self instantiateModels: #( apiSetters ListComposableModel ).
	
	apiSetters 
		allowToSelect: false;
		displayBlock: [:e | e ];
		items: self retrieveItems.