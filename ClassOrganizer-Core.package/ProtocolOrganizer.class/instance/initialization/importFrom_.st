importFrom: aClassOrganizer 
	
	aClassOrganizer categories do: [:cat || protocol methods |
		cat = Protocol nullCategory
			ifFalse: [
				methods := aClassOrganizer listAtCategoryNamed: cat. 
				protocol := self addProtocolNamed: cat asString.
				methods do: [:m |
					protocol  addMethod: m ]]].