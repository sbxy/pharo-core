storeRemoteTemp: aName inVectorAt: nameOfVector
	^ IRRemoteTempAccess new
		name: aName;
		tempVectorName: nameOfVector;
		store: true;
		yourself.