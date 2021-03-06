badMessage
	| detector badMessages |
	detector := self new.
	detector name: 'Sends "questionable" message'.
	badMessages := self badSelectors.
	detector classBlock: 
			[:context :result | 
			| selectors |
			selectors := badMessages inject: Set new
						into: 
							[:set :each | 
							set addAll: (context selectedClass whichSelectorsReferTo: each);
								yourself].
			selectors do: [:each | result addClass: context selectedClass selector: each].
			selectors isEmpty ifFalse: [result searchStrings: badMessages]].
	^detector