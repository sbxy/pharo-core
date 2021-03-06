spawnHierarchy
	"Create and schedule a new hierarchy browser on the currently selected
	class or meta."
	| aSymbol  selectedClassOrMetaClass browser  |
	(selectedClassOrMetaClass := self selectedClassOrMetaClass)
		ifNil: [^ self].
	selectedClassOrMetaClass isTrait
		ifTrue: [^ self].
	((aSymbol := self selectedMessageName) notNil
			and: [(Smalltalk tools messageList isPseudoSelector: aSymbol) not])
		ifTrue: [browser := Smalltalk tools browser newOnClass: selectedClassOrMetaClass selector: aSymbol ]
		ifFalse: [ browser := Smalltalk tools browser  newOnClass: selectedClassOrMetaClass ].
		
	browser spawnHierarchy  