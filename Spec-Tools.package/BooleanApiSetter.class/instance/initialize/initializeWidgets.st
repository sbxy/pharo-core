initializeWidgets 
	
	self instantiateModels: #(
		selector 	LabelModel 
		choice 		CheckBoxModel ).
				
	self selector text: ''.
	self choice 
		label: 'true/false';
		labelClickable: true;
		whenChangedDo: [:b | self setValueTo: b ];
		state: false.