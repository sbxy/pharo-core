comparing
= aDefinition
	^(super = aDefinition)
		and: [aDefinition category = self category
		and: [aDefinition timeStamp = self timeStamp
		and: [aDefinition source = self source]]]