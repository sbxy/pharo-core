testReferencedClasses
	"self debug: #testReferencedClasses"
	| refs |
	refs := Metaclass referencedClasses.
	self assert: (refs includes: SystemAnnouncer).
	
	refs := self class referencedClasses.
	self assert: (refs includesAllOf: {SystemAnnouncer . Metaclass})