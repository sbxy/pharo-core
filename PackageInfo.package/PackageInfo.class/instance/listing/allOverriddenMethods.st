allOverriddenMethods
	"search classes and meta classes"
	^ Array streamContents: [:stream |
		self allOverriddenMethodsDo: [:each | stream nextPut: each]]
