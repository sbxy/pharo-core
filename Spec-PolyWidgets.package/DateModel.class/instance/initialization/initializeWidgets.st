initializeWidgets

	| typeItems |
	self instantiateModels: #(
		dateLabel LabelModel
		dateModel TextInputFieldModel
		chooseDateButton ButtonModel).
	
	dateLabel
		text: 'Date'.
		
	dateModel
		text: Date today asString;
		isCodeCompletionAllowed: false.
	
	chooseDateButton
		label: self iconMorph;
		action: [ self chooseDate ];
		extent: self iconMorph extent.