removeEmptyUnnamedChangeSets
	"Remove all change sets that are empty, whose names start with Unnamed."
	"ChangeSet removeEmptyUnnamedChangeSets"
	
	| toGo |
	(toGo := (self changeSetsNamedSuchThat: [:csName | csName beginsWith: 'Unnamed'])
		select: [:cs | cs isEmpty and: [cs okayToRemoveInforming: false]])
		do: [:cs | self removeChangeSet: cs].
	self inform: toGo size printString, ' change set(s) removed.'