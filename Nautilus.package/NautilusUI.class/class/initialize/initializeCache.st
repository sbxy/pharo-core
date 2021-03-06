initializeCache
	"self initializeCache"
	| collection instance |
	collection := Smalltalk allClassesAndTraits.
	instance := self new model: Nautilus new.
	
	collection
		do: [:cls | 
			instance classIconFor: cls.
			cls methodDict 
				do: [:m | instance methodWidget methodIconFor: m ]
				displayingProgress: [:m | 'Filing up cache for ', m dragAndDropPrint ]]
		displayingProgress: [:cls | 'Filing up cache for ', cls name ]