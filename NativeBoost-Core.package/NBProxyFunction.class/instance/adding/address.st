address
	self assert: (index < NBInterpreterProxy functions size).
	
	self checkVersion.
	^ NBInterpreterProxy fnAddressAt: index