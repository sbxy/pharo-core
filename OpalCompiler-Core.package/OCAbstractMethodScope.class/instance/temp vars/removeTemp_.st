removeTemp: tempVar

	tempVars remove: tempVar.
	tempVars do: [:var |
		var index > tempVar index ifTrue: [
			var index: var index - 1]].
