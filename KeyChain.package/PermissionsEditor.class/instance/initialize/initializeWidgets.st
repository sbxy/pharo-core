initializeWidgets

	isRoot := self instantiate: CheckBoxModel.
	canBrowse := self instantiate: CheckBoxModel.
	canDebug := self instantiate: CheckBoxModel.
	canDropOSFile := self instantiate: CheckBoxModel.
	canEditCode := self instantiate: CheckBoxModel.
	canEditUser := self instantiate: CheckBoxModel.
	canEvaluateCode := self instantiate: CheckBoxModel.
	canInspect := self instantiate: CheckBoxModel.
	canRunStartupScript := self instantiate: CheckBoxModel.
	canShowMorphHalo := self instantiate: CheckBoxModel.
	self initializeCheckBoxes.
	