initializeWidgets

	self instantiateModels: #(
		browseButton  ButtonModel
		configButton  ButtonModel
		packageButton ButtonModel ).
		
	self setBrowseButton.
	self setConfigButton.
	self setPackageButton.
	self setSliceButton.