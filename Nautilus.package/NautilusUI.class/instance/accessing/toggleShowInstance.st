toggleShowInstance

	self showInstance: self showInstance not.
	self changed: #instanceButtonState.
	categoryWidget label: self categoriesLabel.
	methodWidget label: self methodsLabel.