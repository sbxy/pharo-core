initializeActionToPerformOnTextModel
	
	| selectedItem |
	sourceCodeModel acceptBlock:  [ :text | 	
		selectedItem := criticsModel selectedItem.
		(selectedItem isCompiledMethod and: [ rule isTransformationRule not ])
			ifTrue: [ selectedItem methodClass compile: text ] 
			ifFalse: [ Smalltalk evaluate:  text ]]
	
