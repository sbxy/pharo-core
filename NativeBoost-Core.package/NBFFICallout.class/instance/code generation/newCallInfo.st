newCallInfo 

	self optCdecl ifTrue: [ ^ asm newCdeclCall ].
	self optStdcall ifTrue: [ ^ asm newStdCall ].
	
