temporaries: aNameCollection
	aNameCollection do: [ :aVarName|
		self temporaries at: aVarName put: nil ].