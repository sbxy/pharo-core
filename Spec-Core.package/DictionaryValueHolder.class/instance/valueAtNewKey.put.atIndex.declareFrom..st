protocol
valueAtNewKey: aKey put: anObject atIndex: index declareFrom: aDictionary 
	
	contents valueAtNewKey: aKey put: anObject atIndex: index declareFrom: aDictionary.
	self contentsChanged.