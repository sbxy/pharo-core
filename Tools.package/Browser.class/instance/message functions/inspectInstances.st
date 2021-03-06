inspectInstances
	"Inspect all instances of the selected class."

	| myClass |
	((myClass := self selectedClassOrMetaClass) isNil or: [myClass isTrait])
		ifFalse: [myClass theNonMetaClass inspectAllInstances]
