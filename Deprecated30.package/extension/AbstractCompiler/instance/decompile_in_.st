decompile: aSelector in: aClass 
	self deprecated: 'use #decompileMethod:' on: '09 May 2013' in: 'Pharo 3.0'.
	^self decompileMethod: (aClass compiledMethodAt: aSelector)