initializeWidgets 
	
	self instantiateModels: #(
		selector 	LabelModel 
		choice 		IntegerEditor ).
				
	self selector text: ''.
	self choice whenIntegerChangedDo: [:b | self setValueTo: b ]