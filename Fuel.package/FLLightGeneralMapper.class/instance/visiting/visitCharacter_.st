visitCharacter: aCharacter

	self flag: #todo.	"confusing"
	self mapAndTraceByObjectClass: aCharacter to: (self clusterClassForCharacter: aCharacter)