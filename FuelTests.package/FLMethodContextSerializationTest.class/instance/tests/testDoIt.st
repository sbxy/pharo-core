testDoIt
	"Serialization of DoIt methods should be possible by default."
	
	| context |
	[ Smalltalk evaluate: 'self error' ]
		on: Error 
		do: [:error | context:= error signalerContext copyStack ].
	
	self serialize: context