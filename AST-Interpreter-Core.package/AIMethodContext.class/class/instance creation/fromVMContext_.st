fromVMContext: aMethodContext 
	^self new
		initializeContext: aMethodContext;
		closure: aMethodContext method;
		receiver: aMethodContext receiver;
		yourself