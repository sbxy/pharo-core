methodReference: aMessage referencesList: aListOfReferences

	^ (super 
		method: aMessage)
			referencesList: aListOfReferences;
			yourself