widget - category
loadCategories
	
	^ self model selectedClass
		ifNil: [ {} ]
		ifNotNil: [:class | class protocols asOrderedCollection sort addFirst: self allLabel; yourself ]