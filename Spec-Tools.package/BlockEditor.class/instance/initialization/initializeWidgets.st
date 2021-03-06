initializeWidgets 

	self  instantiateModels: #( 
		pre 	LabelModel 
		post 	LabelModel 
		text 	TextInputFieldModel
		ok 		ButtonModel ).
			
	pre text: '['.
	post text: ']'.
	text
		autoAccept: false;
		entryCompletion: nil;
		acceptBlock: [ self okAction ];
		ghostText: 'body'.
		
	ok 
		label: 'ok';
		state: false;
		enabled: true;
		action: [ self okAction ].
		
	self focusOrder 
		add: text;
		add: ok