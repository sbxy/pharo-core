testAddingClasses
	| newSlice newClass newTrait newClass2 |
	
	newSlice:= RGFactory current createSliceNamed: 'Foo'.
	newClass:= RGFactory current createClassNamed: #OrderedCollection.
	newTrait:= RGFactory current createTraitNamed: #TSortable.
	
	newSlice addClassNamed: #SortedCollection;
			 addClass: newClass;
			 addTrait: newTrait.
	
	self assert: (newSlice classes size = 3).
	self assert: (newSlice traits size = 1).
	self assert: (newSlice includesClassNamed: #OrderedCollection).
	self assert: ((newSlice classNamed: #OrderedCollection) == newClass).
	self assert: ((newSlice traitNamed: #TSortable) == newTrait).
	self assert: (newClass isIncludedInContainer: newSlice).
	self assert: (newTrait isIncludedInContainer: newSlice).
	self assert: (newSlice allClasses size = 3).
	self assert: (newSlice allTraits size = 1).
	self assert: (newClass parent = newSlice).
	self assert: (newClass rootEnvironment = newSlice environment)