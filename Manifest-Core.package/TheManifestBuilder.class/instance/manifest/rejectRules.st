rejectRules
	
	^ (manifestClass respondsTo: #rejectRules)
		ifTrue:  [manifestClass rejectRules ]
		ifFalse: [ #() ]
	
