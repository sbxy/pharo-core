tempNamed: aName
	self temporaries 
		at: aName 
		ifPresent: [ :value| ^ value].
	
	self homeContext 
		ifNil: [ (VariableNotDefined signalForVariable: aName context: self) == true ifTrue: [ ^ self tempNamed: aName]].
		
	^ self homeContext tempNamed: aName.