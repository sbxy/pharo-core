registerIndexesOn: aDictionary

	substitutions keysAndValuesDo: [ :anObject :theSubstitution | 
		| substitutionIndex |
		substitutionIndex := aDictionary at: theSubstitution.
		aDictionary at: anObject put: substitutionIndex. ].