browseCritic

	criticsModel selectedItem
		ifNotNil: [ :elem | 
			elem isBehavior 
				ifTrue: [ elem theNonMetaClass browse ]
				ifFalse: [ elem browse ] ] 