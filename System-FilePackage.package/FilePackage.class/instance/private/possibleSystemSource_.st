possibleSystemSource: chgRec
	| tokens |
	sourceSystem isEmpty ifTrue:[
		tokens := chgRec string parseLiterals.
		(tokens size = 1 and:[tokens first isString]) ifTrue:[
			sourceSystem := tokens first.
			^self]].
	doIts add: chgRec.