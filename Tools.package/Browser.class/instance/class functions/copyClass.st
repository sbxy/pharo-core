copyClass
	| copysName nameOk |
	classListIndex = 0
		ifTrue: [^ self].
	self okToChange 
		ifFalse: [^ self].
	copysName := self request: 'Please type new class name' initialAnswer: self selectedClass name.
	copysName isEmptyOrNil
		ifTrue: [^ self].
	nameOk := [self selectedClass classBuilder validateClassName: copysName asSymbol] 
		on: Error 
		do: [ :ex | ^ self inform: ex printString].
	nameOk
		ifTrue: [
		"Cancel returns ''"
		self selectedClass duplicateClassWithNewName: copysName.
		self classListIndex: 0.
		self changed: #classList]