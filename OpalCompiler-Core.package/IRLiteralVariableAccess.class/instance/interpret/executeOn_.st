executeOn: interpreter
	store 
		ifFalse: [interpreter pushLiteralVariable: association]
		ifTrue: [interpreter storeIntoLiteralVariable: association]
