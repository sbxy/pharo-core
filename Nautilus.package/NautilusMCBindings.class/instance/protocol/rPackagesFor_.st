rPackagesFor: aMCPackage

	^ bindingsMCtoR 
		at: aMCPackage 
		ifAbsentPut: [ self retrieveRPackagesFor: aMCPackage ]