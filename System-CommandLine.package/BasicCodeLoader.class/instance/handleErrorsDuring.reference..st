installing
handleErrorsDuring: aBlock reference: aReference 
	
	aBlock
		on: Error, ParserNotification
		do: [ :e| 	self handleError: e reference: aReference ].
	