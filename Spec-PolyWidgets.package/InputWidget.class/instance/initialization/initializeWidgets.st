initializeWidgets

	self instantiateModels: #(
		input 	TextInputFieldModel
		label	LabelModel ).
			
	input
		ghostText: 'input';
		acceptBlock: [ self triggerOkAction ];
		entryCompletion: nil;
		acceptOnCR: true.
		
	label text: 'label'